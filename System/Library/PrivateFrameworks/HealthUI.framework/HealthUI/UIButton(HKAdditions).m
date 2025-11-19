@interface UIButton(HKAdditions)
+ (id)hk_buttonTintedWithColor:()HKAdditions title:target:action:;
+ (id)hk_chartShowMoreDataButtonWithTitleOverride:()HKAdditions target:action:;
+ (id)hk_currentValueViewInfoButtonWithTarget:()HKAdditions action:;
+ (id)hk_multiLineRoundRectButtonTintedWithColor:()HKAdditions title:target:action:;
+ (id)hk_roundRectButtonTintedWithColor:()HKAdditions title:target:action:;
+ (id)hk_standardInfoButton;
+ (id)imageWithFillColor:()HKAdditions;
@end

@implementation UIButton(HKAdditions)

+ (id)hk_buttonTintedWithColor:()HKAdditions title:target:action:
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [HKDynamicButton buttonWithType:1];
  v13 = [v12 titleLabel];
  [v13 setNumberOfLines:0];

  v14 = [v12 titleLabel];
  [v14 setTextAlignment:1];

  v15 = [v12 titleLabel];
  [v15 setAllowsDefaultTighteningForTruncation:1];

  v16 = [v12 titleLabel];
  v17 = _HKMediumScaledPreferredBodyFontWithButton(v12);
  [v16 setFont:v17];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setTitle:v10 forState:0];

  [v12 setTitleColor:v11 forState:0];
  [v12 addTarget:v9 action:a6 forControlEvents:64];

  v18 = [v12 heightAnchor];
  v19 = [v12 titleLabel];
  [v19 sizeThatFits:{288.0, 0.0}];
  v21 = [v18 constraintEqualToConstant:v20 + 22.0];
  [v12 setHeightConstraint:v21];

  return v12;
}

+ (id)hk_roundRectButtonTintedWithColor:()HKAdditions title:target:action:
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [HKColoredButton buttonWithType:1];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setTitle:v10 forState:0];

  v13 = [MEMORY[0x1E69DC888] whiteColor];
  [v12 setTitleColor:v13 forState:0];

  v14 = [v12 titleLabel];
  [v14 setNumberOfLines:1];

  v15 = [v12 titleLabel];
  [v15 setTextAlignment:1];

  v16 = [v12 titleLabel];
  [v16 setAllowsDefaultTighteningForTruncation:1];

  v17 = [v12 titleLabel];
  v18 = _HKMediumScaledPreferredBodyFontWithValue(17.0);
  [v17 setFont:v18];

  [v12 setBackgroundColor:v11];
  if (v9 && a6)
  {
    [v12 addTarget:v9 action:a6 forControlEvents:64];
  }

  v19 = [v12 layer];
  [v19 setCornerRadius:24.0];

  v20 = [v12 heightAnchor];
  v21 = [v20 constraintEqualToConstant:50.0];
  [v12 setHeightConstraint:v21];

  v22 = [v12 widthAnchor];
  v23 = [v22 constraintEqualToConstant:288.0];

  LODWORD(v24) = 1144750080;
  [v23 setPriority:v24];
  [v23 setActive:1];

  return v12;
}

+ (id)hk_multiLineRoundRectButtonTintedWithColor:()HKAdditions title:target:action:
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [HKColoredButton buttonWithType:1];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setTitle:v10 forState:0];

  v13 = [MEMORY[0x1E69DC888] whiteColor];
  [v12 setTitleColor:v13 forState:0];

  v14 = [v12 titleLabel];
  v15 = _HKMediumScaledPreferredBodyFontWithValue(17.0);
  [v14 setFont:v15];

  v16 = [v12 titleLabel];
  [v16 setNumberOfLines:0];

  v17 = [v12 titleLabel];
  [v17 setTextAlignment:1];

  [v12 setBackgroundColor:v11];
  [v12 addTarget:v9 action:a6 forControlEvents:64];

  v18 = [v12 layer];
  [v18 setCornerCurve:*MEMORY[0x1E69796E8]];

  v19 = [v12 layer];
  [v19 setCornerRadius:24.0];

  [v12 setContentEdgeInsets:{11.0, 0.0, 11.0, 0.0}];
  v20 = [v12 heightAnchor];
  v21 = [v12 titleLabel];
  [v21 sizeThatFits:{288.0, 0.0}];
  v23 = v22 + 22.0;

  v24 = 50.0;
  if (v23 >= 50.0)
  {
    v24 = v23;
  }

  v25 = [v20 constraintEqualToConstant:v24];
  [v12 setHeightConstraint:v25];

  v26 = [v12 widthAnchor];
  v27 = [v26 constraintEqualToConstant:288.0];

  LODWORD(v28) = 1144750080;
  [v27 setPriority:v28];
  [v27 setActive:1];

  return v12;
}

+ (id)imageWithFillColor:()HKAdditions
{
  v3 = a3;
  v9.width = 1.0;
  v9.height = 1.0;
  UIGraphicsBeginImageContext(v9);
  CurrentContext = UIGraphicsGetCurrentContext();
  v5 = [v3 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v5);
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = 1.0;
  v10.size.height = 1.0;
  CGContextFillRect(CurrentContext, v10);
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v6;
}

+ (id)hk_standardInfoButton
{
  v11[2] = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E69DC738]) initWithFrame:{0.0, 0.0, 25.0, 25.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = MEMORY[0x1E69DCAD8];
  v2 = [MEMORY[0x1E69DC888] hk_chartInfoButtonPrimaryColor];
  v11[0] = v2;
  v3 = [MEMORY[0x1E69DC888] hk_chartInfoButtonQuaternaryColor];
  v11[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v5 = [v1 configurationWithPaletteColors:v4];

  v6 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:25.0];
  v7 = [v5 configurationByApplyingConfiguration:v6];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle.fill" withConfiguration:v7];
  [v0 setImage:v8 forState:0];
  v9 = [MEMORY[0x1E69DC888] hk_appTintColor];
  [v0 setTintColor:v9];

  [v0 setIsAccessibilityElement:1];

  return v0;
}

+ (id)hk_currentValueViewInfoButtonWithTarget:()HKAdditions action:
{
  v5 = MEMORY[0x1E69DC738];
  v6 = a3;
  v7 = [v5 hk_standardInfoButton];
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"CURRENT_VALUE_INFO_BUTTON_ACCESSIBILITY_LABEL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v7 setAccessibilityLabel:v9];

  [v7 addTarget:v6 action:a4 forControlEvents:64];
  LODWORD(v10) = 1144750080;
  [v7 setContentHuggingPriority:0 forAxis:v10];

  return v7;
}

+ (id)hk_chartShowMoreDataButtonWithTitleOverride:()HKAdditions target:action:
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v10 localizedStringForKey:@"SHOW_MORE_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  v11 = MEMORY[0x1E69DC738];
  v12 = [MEMORY[0x1E69DC888] hk_appTintColor];
  v13 = [v11 hk_buttonTintedWithColor:v12 title:v9 target:v8 action:a5];

  v14 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:@"ShowMoreData"];
  [v13 setAccessibilityIdentifier:v14];

  [v13 setContentEdgeInsets:{16.0, 16.0, 16.0, 16.0}];

  return v13;
}

@end