local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")

pcall(function()
    game.CoreGui.SWAGA_INFO:Destroy()
end)

local LANG = "RU"

local TEXTS = {
    RU = {
        TITLE = "SWAGA SCRIPT",
        INFO = [[Бесплатная версия SWAGA SCRIPT больше не поддерживается.

Теперь доступна эксклюзивная платная версия с расширенными функциями, регулярными обновлениями и приоритетной поддержкой.

Для приобретения свяжитесь со мной в Telegram или оформите заказ на FunPay:]],
        TELEGRAM = "@talisov",
        FUNPAY = "https://funpay.com/users/11785091/",
        COPY_TG = "Копировать Telegram",
        COPY_FP = "Копировать FunPay",
        OK = "ОК",
        LANG = "RU",
        COPIED = "Скопировано!"
    },
    EN = {
        TITLE = "SWAGA SCRIPT",
        INFO = [[The free version of SWAGA SCRIPT is no longer supported.

Now available is the exclusive paid version with extended features, regular updates, and priority support.

To purchase, contact me on Telegram or place an order on FunPay:]],
        TELEGRAM = "@talisov",
        FUNPAY = "https://funpay.com/users/11785091/",
        COPY_TG = "Copy Telegram",
        COPY_FP = "Copy FunPay",
        OK = "OK",
        LANG = "EN",
        COPIED = "Copied!"
    }
}

local function T(key)
    return TEXTS[LANG][key]
end

local Gui = Instance.new("ScreenGui")
Gui.Name = "SWAGA_INFO"
Gui.Parent = game.CoreGui
Gui.ResetOnSpawn = false

local Blur = Instance.new("BlurEffect")
Blur.Parent = game.Lighting
Blur.Size = 0
TweenService:Create(Blur, TweenInfo.new(0.4), {Size = 12}):Play()

local Main = Instance.new("Frame")
Main.Parent = Gui
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 0, 0, 0)
Main.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
Main.BorderSizePixel = 0
Main.ClipsDescendants = true
Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 20)

local Stroke = Instance.new("UIStroke")
Stroke.Parent = Main
Stroke.Color = Color3.fromRGB(0, 170, 255)
Stroke.Transparency = 0.4
Stroke.Thickness = 1.5

local Glow = Instance.new("ImageLabel")
Glow.Parent = Main
Glow.BackgroundTransparency = 1
Glow.Image = "rbxassetid://5028857084"
Glow.ImageTransparency = 0.5
Glow.ImageColor3 = Color3.fromRGB(0, 170, 255)
Glow.Size = UDim2.new(1, 250, 1, 250)
Glow.Position = UDim2.new(0, -125, 0, -125)

local Gradient = Instance.new("UIGradient")
Gradient.Parent = Main
Gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 28)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 8, 14))
}

local Title = Instance.new("TextLabel")
Title.Parent = Main
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0, 20)
Title.Size = UDim2.new(1, 0, 0, 36)
Title.Font = Enum.Font.GothamBlack
Title.Text = T("TITLE")
Title.TextSize = 32
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextXAlignment = Enum.TextXAlignment.Center

local LangBtn = Instance.new("TextButton")
LangBtn.Parent = Main
LangBtn.Size = UDim2.new(0, 55, 0, 26)
LangBtn.Position = UDim2.new(1, -70, 0, 18)
LangBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 28)
LangBtn.Text = LANG
LangBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
LangBtn.Font = Enum.Font.GothamBold
LangBtn.TextSize = 13
LangBtn.BorderSizePixel = 0
Instance.new("UICorner", LangBtn).CornerRadius = UDim.new(1, 0)

local InfoText = Instance.new("TextLabel")
InfoText.Parent = Main
InfoText.BackgroundTransparency = 1
InfoText.Position = UDim2.new(0.06, 0, 0.12, 0)
InfoText.Size = UDim2.new(0.88, 0, 0.40, 0)
InfoText.Font = Enum.Font.GothamMedium
InfoText.Text = T("INFO")
InfoText.TextSize = 15
InfoText.TextColor3 = Color3.fromRGB(200, 200, 210)
InfoText.TextXAlignment = Enum.TextXAlignment.Left
InfoText.TextYAlignment = Enum.TextYAlignment.Top
InfoText.TextWrapped = true

local ContactsFrame = Instance.new("Frame")
ContactsFrame.Parent = Main
ContactsFrame.BackgroundTransparency = 1
ContactsFrame.Position = UDim2.new(0.06, 0, 0.54, 0)
ContactsFrame.Size = UDim2.new(0.88, 0, 0, 50)

local TgLabel = Instance.new("TextLabel")
TgLabel.Parent = ContactsFrame
TgLabel.BackgroundTransparency = 1
TgLabel.Position = UDim2.new(0, 0, 0, 0)
TgLabel.Size = UDim2.new(1, 0, 0, 24)
TgLabel.Font = Enum.Font.GothamMedium
TgLabel.Text = T("TELEGRAM")
TgLabel.TextSize = 15
TgLabel.TextColor3 = Color3.fromRGB(130, 200, 255)
TgLabel.TextXAlignment = Enum.TextXAlignment.Left

local FpLabel = Instance.new("TextLabel")
FpLabel.Parent = ContactsFrame
FpLabel.BackgroundTransparency = 1
FpLabel.Position = UDim2.new(0, 0, 0, 26)
FpLabel.Size = UDim2.new(1, 0, 0, 24)
FpLabel.Font = Enum.Font.GothamMedium
FpLabel.Text = T("FUNPAY")
FpLabel.TextSize = 15
FpLabel.TextColor3 = Color3.fromRGB(130, 200, 255)
FpLabel.TextXAlignment = Enum.TextXAlignment.Left

local CopyFrame = Instance.new("Frame")
CopyFrame.Parent = Main
CopyFrame.BackgroundTransparency = 1
CopyFrame.Position = UDim2.new(0.06, 0, 0.68, 0)
CopyFrame.Size = UDim2.new(0.88, 0, 0, 40)

local CopyTgBtn = Instance.new("TextButton")
CopyTgBtn.Parent = CopyFrame
CopyTgBtn.Position = UDim2.new(0, 0, 0, 0)
CopyTgBtn.Size = UDim2.new(0.48, -5, 1, 0)
CopyTgBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
CopyTgBtn.Text = T("COPY_TG")
CopyTgBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyTgBtn.Font = Enum.Font.GothamBold
CopyTgBtn.TextSize = 13
CopyTgBtn.BorderSizePixel = 0
Instance.new("UICorner", CopyTgBtn).CornerRadius = UDim.new(0, 8)

local CopyFpBtn = Instance.new("TextButton")
CopyFpBtn.Parent = CopyFrame
CopyFpBtn.Position = UDim2.new(0.52, 5, 0, 0)
CopyFpBtn.Size = UDim2.new(0.48, -5, 1, 0)
CopyFpBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
CopyFpBtn.Text = T("COPY_FP")
CopyFpBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyFpBtn.Font = Enum.Font.GothamBold
CopyFpBtn.TextSize = 13
CopyFpBtn.BorderSizePixel = 0
Instance.new("UICorner", CopyFpBtn).CornerRadius = UDim.new(0, 8)

local OKButton = Instance.new("TextButton")
OKButton.Parent = Main
OKButton.Position = UDim2.new(0.3, 0, 0.86, 0)
OKButton.Size = UDim2.new(0.4, 0, 0, 44)
OKButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
OKButton.Text = T("OK")
OKButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OKButton.Font = Enum.Font.GothamBold
OKButton.TextSize = 17
OKButton.BorderSizePixel = 0
Instance.new("UICorner", OKButton).CornerRadius = UDim.new(0, 16)

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Parent = Main
StatusLabel.BackgroundTransparency = 1
StatusLabel.Position = UDim2.new(0, 0, 0.94, 0)
StatusLabel.Size = UDim2.new(1, 0, 0, 20)
StatusLabel.Font = Enum.Font.GothamMedium
StatusLabel.Text = ""
StatusLabel.TextSize = 13
StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 140)
StatusLabel.TextTransparency = 1

local function RefreshUI()
    Title.Text = T("TITLE")
    InfoText.Text = T("INFO")
    TgLabel.Text = T("TELEGRAM")
    FpLabel.Text = T("FUNPAY")
    CopyTgBtn.Text = T("COPY_TG")
    CopyFpBtn.Text = T("COPY_FP")
    OKButton.Text = T("OK")
    LangBtn.Text = LANG
end

local function ShowCopied(msg)
    StatusLabel.Text = msg
    StatusLabel.TextTransparency = 0
    TweenService:Create(StatusLabel, TweenInfo.new(1.5, Enum.EasingStyle.Quad), {TextTransparency = 1}):Play()
end

local function CopyToClipboard(text)
    if setclipboard then
        setclipboard(text)
        ShowCopied(T("COPIED"))
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = T("TITLE"),
            Text = T("COPIED"),
            Duration = 3
        })
    end
end

CopyTgBtn.MouseButton1Click:Connect(function()
    CopyToClipboard(T("TELEGRAM"))
end)

CopyFpBtn.MouseButton1Click:Connect(function()
    CopyToClipboard(T("FUNPAY"))
end)

LangBtn.MouseButton1Click:Connect(function()
    LANG = (LANG == "RU" and "EN" or "RU")
    RefreshUI()
end)

local FinalSize = UIS.TouchEnabled and UDim2.new(0, 340, 0, 460) or UDim2.new(0, 460, 0, 460)
TweenService:Create(Main, TweenInfo.new(0.45, Enum.EasingStyle.Quint), {Size = FinalSize}):Play()

OKButton.MouseButton1Click:Connect(function()
    TweenService:Create(Main, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {
        Size = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1
    }):Play()
    TweenService:Create(Blur, TweenInfo.new(0.4), {Size = 0}):Play()
    wait(0.5)
    Gui:Destroy()
    Blur:Destroy()
end)

OKButton.MouseEnter:Connect(function()
    TweenService:Create(OKButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(50, 190, 255)}):Play()
end)
OKButton.MouseLeave:Connect(function()
    TweenService:Create(OKButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(0, 170, 255)}):Play()
end)
