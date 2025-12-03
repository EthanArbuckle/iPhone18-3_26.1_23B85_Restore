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
  hUDStyle = [(CKUITheme *)self HUDStyle];
  if (keyboardAppearance_sHUDStyle == hUDStyle)
  {
    return keyboardAppearance_sBehavior_2123;
  }

  else
  {
    v3 = hUDStyle != 2;
    keyboardAppearance_sBehavior_2123 = hUDStyle != 2;
    keyboardAppearance_sHUDStyle = hUDStyle;
  }

  return v3;
}

- (id)green_sendButtonColor
{
  hUDStyle = [(CKUITheme *)self HUDStyle];
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  if (green_sendButtonColor_sHUDStyle != hUDStyle || green_sendButtonColor_sIsIncreaseContrastEnabled != v4)
  {
    v6 = v4;
    if (hUDStyle == 2)
    {
      v11.receiver = self;
      v11.super_class = CKUIThemeHUD;
      green_sendButtonColor = [(CKUITheme *)&v11 green_sendButtonColor];
    }

    else
    {
      green_sendButtonColor = [MEMORY[0x1E69DC888] whiteColor];
    }

    v8 = green_sendButtonColor_sBehavior_2124;
    green_sendButtonColor_sBehavior_2124 = green_sendButtonColor;

    green_sendButtonColor_sHUDStyle = hUDStyle;
    green_sendButtonColor_sIsIncreaseContrastEnabled = v6;
  }

  v9 = green_sendButtonColor_sBehavior_2124;

  return v9;
}

- (id)blue_sendButtonColor
{
  hUDStyle = [(CKUITheme *)self HUDStyle];
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  if (blue_sendButtonColor_sHUDStyle != hUDStyle || blue_sendButtonColor_sIsIncreaseContrastEnabled != v4)
  {
    v6 = v4;
    if (hUDStyle == 2)
    {
      v11.receiver = self;
      v11.super_class = CKUIThemeHUD;
      blue_sendButtonColor = [(CKUITheme *)&v11 blue_sendButtonColor];
    }

    else
    {
      blue_sendButtonColor = [MEMORY[0x1E69DC888] whiteColor];
    }

    v8 = blue_sendButtonColor_sBehavior_2125;
    blue_sendButtonColor_sBehavior_2125 = blue_sendButtonColor;

    blue_sendButtonColor_sHUDStyle = hUDStyle;
    blue_sendButtonColor_sIsIncreaseContrastEnabled = v6;
  }

  v9 = blue_sendButtonColor_sBehavior_2125;

  return v9;
}

- (id)siri_sendButtonColor
{
  hUDStyle = [(CKUITheme *)self HUDStyle];
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  if (siri_sendButtonColor_sHUDStyle != hUDStyle || siri_sendButtonColor_sIsIncreaseContrastEnabled != v4)
  {
    v6 = v4;
    if (hUDStyle == 2)
    {
      v11.receiver = self;
      v11.super_class = CKUIThemeHUD;
      siri_sendButtonColor = [(CKUITheme *)&v11 siri_sendButtonColor];
    }

    else
    {
      siri_sendButtonColor = [MEMORY[0x1E69DC888] whiteColor];
    }

    v8 = siri_sendButtonColor_sBehavior_2127;
    siri_sendButtonColor_sBehavior_2127 = siri_sendButtonColor;

    siri_sendButtonColor_sHUDStyle = hUDStyle;
    siri_sendButtonColor_sIsIncreaseContrastEnabled = v6;
  }

  v9 = siri_sendButtonColor_sBehavior_2127;

  return v9;
}

- (id)entryFieldButtonColor
{
  hUDStyle = [(CKUITheme *)self HUDStyle];
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  if (entryFieldButtonColor_sHUDStyle != hUDStyle || entryFieldButtonColor_sIsIncreaseContrastEnabled != v4)
  {
    v6 = v4;
    if (hUDStyle == 2)
    {
      v11.receiver = self;
      v11.super_class = CKUIThemeHUD;
      entryFieldButtonColor = [(CKUITheme *)&v11 entryFieldButtonColor];
    }

    else
    {
      entryFieldButtonColor = [MEMORY[0x1E69DC888] whiteColor];
    }

    v8 = entryFieldButtonColor_sBehavior_2129;
    entryFieldButtonColor_sBehavior_2129 = entryFieldButtonColor;

    entryFieldButtonColor_sHUDStyle = hUDStyle;
    entryFieldButtonColor_sIsIncreaseContrastEnabled = v6;
  }

  v9 = entryFieldButtonColor_sBehavior_2129;

  return v9;
}

- (id)entryFieldCoverFillColor
{
  hUDStyle = [(CKUITheme *)self HUDStyle];
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  if (entryFieldCoverFillColor_sHUDStyle != hUDStyle || entryFieldCoverFillColor_sIsIncreaseContrastEnabled != v4)
  {
    v6 = v4;
    if (hUDStyle == 2)
    {
      v11.receiver = self;
      v11.super_class = CKUIThemeHUD;
      entryFieldCoverFillColor = [(CKUITheme *)&v11 entryFieldCoverFillColor];
    }

    else
    {
      entryFieldCoverFillColor = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
    }

    v8 = entryFieldCoverFillColor_sBehavior_2131;
    entryFieldCoverFillColor_sBehavior_2131 = entryFieldCoverFillColor;

    entryFieldCoverFillColor_sHUDStyle = hUDStyle;
    entryFieldCoverFillColor_sIsIncreaseContrastEnabled = v6;
  }

  v9 = entryFieldCoverFillColor_sBehavior_2131;

  return v9;
}

- (id)entryFieldCoverBorderColor
{
  hUDStyle = [(CKUITheme *)self HUDStyle];
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  if (entryFieldCoverBorderColor_sHUDStyle != hUDStyle || entryFieldCoverBorderColor_sIsIncreaseContrastEnabled != v4)
  {
    v6 = v4;
    if (hUDStyle == 2)
    {
      v11.receiver = self;
      v11.super_class = CKUIThemeHUD;
      entryFieldCoverBorderColor = [(CKUITheme *)&v11 entryFieldCoverBorderColor];
      v8 = entryFieldCoverBorderColor_sBehavior_2133;
      entryFieldCoverBorderColor_sBehavior_2133 = entryFieldCoverBorderColor;
    }

    else
    {
      v8 = entryFieldCoverBorderColor_sBehavior_2133;
      entryFieldCoverBorderColor_sBehavior_2133 = 0;
    }

    entryFieldCoverBorderColor_sHUDStyle = hUDStyle;
    entryFieldCoverBorderColor_sIsIncreaseContrastEnabled = v6;
  }

  v9 = entryFieldCoverBorderColor_sBehavior_2133;

  return v9;
}

- (id)entryFieldTextColor
{
  hUDStyle = [(CKUITheme *)self HUDStyle];
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  if (entryFieldTextColor_sHUDStyle != hUDStyle || entryFieldTextColor_sIsIncreaseContrastEnabled != v4)
  {
    v6 = v4;
    if (hUDStyle == 2)
    {
      v11.receiver = self;
      v11.super_class = CKUIThemeHUD;
      entryFieldTextColor = [(CKUITheme *)&v11 entryFieldTextColor];
    }

    else
    {
      entryFieldTextColor = [MEMORY[0x1E69DC888] whiteColor];
    }

    v8 = entryFieldTextColor_sBehavior_2135;
    entryFieldTextColor_sBehavior_2135 = entryFieldTextColor;

    entryFieldTextColor_sHUDStyle = hUDStyle;
    entryFieldTextColor_sIsIncreaseContrastEnabled = v6;
  }

  v9 = entryFieldTextColor_sBehavior_2135;

  return v9;
}

- (id)entryFieldAudioRecordingBalloonColor
{
  hUDStyle = [(CKUITheme *)self HUDStyle];
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  if (entryFieldAudioRecordingBalloonColor_sHUDStyle != hUDStyle || entryFieldAudioRecordingBalloonColor_sIsIncreaseContrastEnabled != v4)
  {
    v6 = v4;
    if (hUDStyle == 2)
    {
      v11.receiver = self;
      v11.super_class = CKUIThemeHUD;
      entryFieldAudioRecordingBalloonColor = [(CKUITheme *)&v11 entryFieldAudioRecordingBalloonColor];
    }

    else
    {
      entryFieldAudioRecordingBalloonColor = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
    }

    v8 = entryFieldAudioRecordingBalloonColor_sBehavior_2137;
    entryFieldAudioRecordingBalloonColor_sBehavior_2137 = entryFieldAudioRecordingBalloonColor;

    entryFieldAudioRecordingBalloonColor_sHUDStyle = hUDStyle;
    entryFieldAudioRecordingBalloonColor_sIsIncreaseContrastEnabled = v6;
  }

  v9 = entryFieldAudioRecordingBalloonColor_sBehavior_2137;

  return v9;
}

@end