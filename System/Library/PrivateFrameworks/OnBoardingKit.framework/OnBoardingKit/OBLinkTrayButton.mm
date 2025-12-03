@interface OBLinkTrayButton
+ (id)glassLinkButtonConfiguration;
+ (id)linkButton;
- (void)updateConfiguration;
@end

@implementation OBLinkTrayButton

+ (id)linkButton
{
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___OBLinkTrayButton;
  v3 = objc_msgSendSuper2(&v11, sel_buttonWithType_, 1);
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    glassLinkButtonConfiguration = [self glassLinkButtonConfiguration];
  }

  else
  {
    glassLinkButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [glassLinkButtonConfiguration setBaseBackgroundColor:clearColor];
  }

  [glassLinkButtonConfiguration setButtonSize:3];
  [glassLinkButtonConfiguration setTitleAlignment:2];
  [glassLinkButtonConfiguration contentInsets];
  v7 = v6;
  [glassLinkButtonConfiguration contentInsets];
  [glassLinkButtonConfiguration setContentInsets:{v7, 0.0}];
  [v3 setConfiguration:glassLinkButtonConfiguration];
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    [v3 _obk_applyGlassWithProminence:0];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    heightAnchor = [v3 heightAnchor];
    +[OBTrayButton standardHeight];
    v9 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];
    [v9 setActive:1];
  }

  return v3;
}

+ (id)glassLinkButtonConfiguration
{
  filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  systemGray6Color = [MEMORY[0x1E69DC888] systemGray6Color];
  [filledButtonConfiguration setBaseBackgroundColor:systemGray6Color];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [filledButtonConfiguration setBaseForegroundColor:labelColor];

  return filledButtonConfiguration;
}

- (void)updateConfiguration
{
  v18.receiver = self;
  v18.super_class = OBLinkTrayButton;
  [(OBLinkTrayButton *)&v18 updateConfiguration];
  configuration = [(OBLinkTrayButton *)self configuration];
  configuration2 = [(OBLinkTrayButton *)self configuration];
  showsActivityIndicator = [configuration2 showsActivityIndicator];

  if (showsActivityIndicator)
  {
    [configuration setTitle:0];
  }

  buttonFont = [(OBTrayButton *)self buttonFont];
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v8 = [defaultParagraphStyle mutableCopy];

  [v8 setAlignment:1];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __39__OBLinkTrayButton_updateConfiguration__block_invoke;
  v15 = &unk_1E7C15680;
  v16 = buttonFont;
  v17 = v8;
  v9 = v8;
  v10 = buttonFont;
  [configuration setTitleTextAttributesTransformer:&v12];
  background = [configuration background];
  [background setCornerRadius:14.0];

  [(OBLinkTrayButton *)self setConfiguration:configuration];
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