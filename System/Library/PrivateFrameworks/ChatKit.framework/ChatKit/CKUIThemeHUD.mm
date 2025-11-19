@interface CKUIThemeHUD
- (id)blue_sendButtonColor;
- (id)entryFieldAudioRecordingBalloonColor;
- (id)entryFieldButtonColor;
- (id)entryFieldCoverBorderColor;
- (id)entryFieldCoverFillColor;
- (id)entryFieldTextColor;
- (id)green_sendButtonColor;
- (id)siri_sendButtonColor;
- (int64_t)keyboardAppearance;
@end

@implementation CKUIThemeHUD

- (int64_t)keyboardAppearance
{
  v2 = [(CKUITheme *)self HUDStyle];
  if (keyboardAppearance_sHUDStyle == v2)
  {
    return keyboardAppearance_sBehavior_2123;
  }

  else
  {
    v3 = v2 != 2;
    keyboardAppearance_sBehavior_2123 = v2 != 2;
    keyboardAppearance_sHUDStyle = v2;
  }

  return v3;
}

- (id)green_sendButtonColor
{
  v3 = [(CKUITheme *)self HUDStyle];
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  if (green_sendButtonColor_sHUDStyle != v3 || green_sendButtonColor_sIsIncreaseContrastEnabled != v4)
  {
    v6 = v4;
    if (v3 == 2)
    {
      v11.receiver = self;
      v11.super_class = CKUIThemeHUD;
      v7 = [(CKUITheme *)&v11 green_sendButtonColor];
    }

    else
    {
      v7 = [MEMORY[0x1E69DC888] whiteColor];
    }

    v8 = green_sendButtonColor_sBehavior_2124;
    green_sendButtonColor_sBehavior_2124 = v7;

    green_sendButtonColor_sHUDStyle = v3;
    green_sendButtonColor_sIsIncreaseContrastEnabled = v6;
  }

  v9 = green_sendButtonColor_sBehavior_2124;

  return v9;
}

- (id)blue_sendButtonColor
{
  v3 = [(CKUITheme *)self HUDStyle];
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  if (blue_sendButtonColor_sHUDStyle != v3 || blue_sendButtonColor_sIsIncreaseContrastEnabled != v4)
  {
    v6 = v4;
    if (v3 == 2)
    {
      v11.receiver = self;
      v11.super_class = CKUIThemeHUD;
      v7 = [(CKUITheme *)&v11 blue_sendButtonColor];
    }

    else
    {
      v7 = [MEMORY[0x1E69DC888] whiteColor];
    }

    v8 = blue_sendButtonColor_sBehavior_2125;
    blue_sendButtonColor_sBehavior_2125 = v7;

    blue_sendButtonColor_sHUDStyle = v3;
    blue_sendButtonColor_sIsIncreaseContrastEnabled = v6;
  }

  v9 = blue_sendButtonColor_sBehavior_2125;

  return v9;
}

- (id)siri_sendButtonColor
{
  v3 = [(CKUITheme *)self HUDStyle];
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  if (siri_sendButtonColor_sHUDStyle != v3 || siri_sendButtonColor_sIsIncreaseContrastEnabled != v4)
  {
    v6 = v4;
    if (v3 == 2)
    {
      v11.receiver = self;
      v11.super_class = CKUIThemeHUD;
      v7 = [(CKUITheme *)&v11 siri_sendButtonColor];
    }

    else
    {
      v7 = [MEMORY[0x1E69DC888] whiteColor];
    }

    v8 = siri_sendButtonColor_sBehavior_2127;
    siri_sendButtonColor_sBehavior_2127 = v7;

    siri_sendButtonColor_sHUDStyle = v3;
    siri_sendButtonColor_sIsIncreaseContrastEnabled = v6;
  }

  v9 = siri_sendButtonColor_sBehavior_2127;

  return v9;
}

- (id)entryFieldButtonColor
{
  v3 = [(CKUITheme *)self HUDStyle];
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  if (entryFieldButtonColor_sHUDStyle != v3 || entryFieldButtonColor_sIsIncreaseContrastEnabled != v4)
  {
    v6 = v4;
    if (v3 == 2)
    {
      v11.receiver = self;
      v11.super_class = CKUIThemeHUD;
      v7 = [(CKUITheme *)&v11 entryFieldButtonColor];
    }

    else
    {
      v7 = [MEMORY[0x1E69DC888] whiteColor];
    }

    v8 = entryFieldButtonColor_sBehavior_2129;
    entryFieldButtonColor_sBehavior_2129 = v7;

    entryFieldButtonColor_sHUDStyle = v3;
    entryFieldButtonColor_sIsIncreaseContrastEnabled = v6;
  }

  v9 = entryFieldButtonColor_sBehavior_2129;

  return v9;
}

- (id)entryFieldCoverFillColor
{
  v3 = [(CKUITheme *)self HUDStyle];
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  if (entryFieldCoverFillColor_sHUDStyle != v3 || entryFieldCoverFillColor_sIsIncreaseContrastEnabled != v4)
  {
    v6 = v4;
    if (v3 == 2)
    {
      v11.receiver = self;
      v11.super_class = CKUIThemeHUD;
      v7 = [(CKUITheme *)&v11 entryFieldCoverFillColor];
    }

    else
    {
      v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
    }

    v8 = entryFieldCoverFillColor_sBehavior_2131;
    entryFieldCoverFillColor_sBehavior_2131 = v7;

    entryFieldCoverFillColor_sHUDStyle = v3;
    entryFieldCoverFillColor_sIsIncreaseContrastEnabled = v6;
  }

  v9 = entryFieldCoverFillColor_sBehavior_2131;

  return v9;
}

- (id)entryFieldCoverBorderColor
{
  v3 = [(CKUITheme *)self HUDStyle];
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  if (entryFieldCoverBorderColor_sHUDStyle != v3 || entryFieldCoverBorderColor_sIsIncreaseContrastEnabled != v4)
  {
    v6 = v4;
    if (v3 == 2)
    {
      v11.receiver = self;
      v11.super_class = CKUIThemeHUD;
      v7 = [(CKUITheme *)&v11 entryFieldCoverBorderColor];
      v8 = entryFieldCoverBorderColor_sBehavior_2133;
      entryFieldCoverBorderColor_sBehavior_2133 = v7;
    }

    else
    {
      v8 = entryFieldCoverBorderColor_sBehavior_2133;
      entryFieldCoverBorderColor_sBehavior_2133 = 0;
    }

    entryFieldCoverBorderColor_sHUDStyle = v3;
    entryFieldCoverBorderColor_sIsIncreaseContrastEnabled = v6;
  }

  v9 = entryFieldCoverBorderColor_sBehavior_2133;

  return v9;
}

- (id)entryFieldTextColor
{
  v3 = [(CKUITheme *)self HUDStyle];
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  if (entryFieldTextColor_sHUDStyle != v3 || entryFieldTextColor_sIsIncreaseContrastEnabled != v4)
  {
    v6 = v4;
    if (v3 == 2)
    {
      v11.receiver = self;
      v11.super_class = CKUIThemeHUD;
      v7 = [(CKUITheme *)&v11 entryFieldTextColor];
    }

    else
    {
      v7 = [MEMORY[0x1E69DC888] whiteColor];
    }

    v8 = entryFieldTextColor_sBehavior_2135;
    entryFieldTextColor_sBehavior_2135 = v7;

    entryFieldTextColor_sHUDStyle = v3;
    entryFieldTextColor_sIsIncreaseContrastEnabled = v6;
  }

  v9 = entryFieldTextColor_sBehavior_2135;

  return v9;
}

- (id)entryFieldAudioRecordingBalloonColor
{
  v3 = [(CKUITheme *)self HUDStyle];
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  if (entryFieldAudioRecordingBalloonColor_sHUDStyle != v3 || entryFieldAudioRecordingBalloonColor_sIsIncreaseContrastEnabled != v4)
  {
    v6 = v4;
    if (v3 == 2)
    {
      v11.receiver = self;
      v11.super_class = CKUIThemeHUD;
      v7 = [(CKUITheme *)&v11 entryFieldAudioRecordingBalloonColor];
    }

    else
    {
      v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
    }

    v8 = entryFieldAudioRecordingBalloonColor_sBehavior_2137;
    entryFieldAudioRecordingBalloonColor_sBehavior_2137 = v7;

    entryFieldAudioRecordingBalloonColor_sHUDStyle = v3;
    entryFieldAudioRecordingBalloonColor_sIsIncreaseContrastEnabled = v6;
  }

  v9 = entryFieldAudioRecordingBalloonColor_sBehavior_2137;

  return v9;
}

@end