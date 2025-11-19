@interface OBLinkTrayButton
+ (id)glassLinkButtonConfiguration;
+ (id)linkButton;
- (void)updateConfiguration;
@end

@implementation OBLinkTrayButton

+ (id)linkButton
{
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___OBLinkTrayButton;
  v3 = objc_msgSendSuper2(&v11, sel_buttonWithType_, 1);
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    v4 = [a1 glassLinkButtonConfiguration];
  }

  else
  {
    v4 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [v4 setBaseBackgroundColor:v5];
  }

  [v4 setButtonSize:3];
  [v4 setTitleAlignment:2];
  [v4 contentInsets];
  v7 = v6;
  [v4 contentInsets];
  [v4 setContentInsets:{v7, 0.0}];
  [v3 setConfiguration:v4];
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    [v3 _obk_applyGlassWithProminence:0];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v3 heightAnchor];
    +[OBTrayButton standardHeight];
    v9 = [v8 constraintGreaterThanOrEqualToConstant:?];
    [v9 setActive:1];
  }

  return v3;
}

+ (id)glassLinkButtonConfiguration
{
  v2 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  v3 = [MEMORY[0x1E69DC888] systemGray6Color];
  [v2 setBaseBackgroundColor:v3];

  v4 = [MEMORY[0x1E69DC888] labelColor];
  [v2 setBaseForegroundColor:v4];

  return v2;
}

- (void)updateConfiguration
{
  v18.receiver = self;
  v18.super_class = OBLinkTrayButton;
  [(OBLinkTrayButton *)&v18 updateConfiguration];
  v3 = [(OBLinkTrayButton *)self configuration];
  v4 = [(OBLinkTrayButton *)self configuration];
  v5 = [v4 showsActivityIndicator];

  if (v5)
  {
    [v3 setTitle:0];
  }

  v6 = [(OBTrayButton *)self buttonFont];
  v7 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v8 = [v7 mutableCopy];

  [v8 setAlignment:1];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __39__OBLinkTrayButton_updateConfiguration__block_invoke;
  v15 = &unk_1E7C15680;
  v16 = v6;
  v17 = v8;
  v9 = v8;
  v10 = v6;
  [v3 setTitleTextAttributesTransformer:&v12];
  v11 = [v3 background];
  [v11 setCornerRadius:14.0];

  [(OBLinkTrayButton *)self setConfiguration:v3];
}

id __39__OBLinkTrayButton_updateConfiguration__block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69DB688];
  v8[0] = *MEMORY[0x1E69DB648];
  v8[1] = v1;
  v2 = *(a1 + 40);
  v9[0] = *(a1 + 32);
  v9[1] = v2;
  v8[2] = *MEMORY[0x1E69DB758];
  v3 = UIAccessibilityButtonShapesEnabled();
  v4 = &unk_1F2CF8540;
  if (v3)
  {
    v4 = &unk_1F2CF8528;
  }

  v9[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end