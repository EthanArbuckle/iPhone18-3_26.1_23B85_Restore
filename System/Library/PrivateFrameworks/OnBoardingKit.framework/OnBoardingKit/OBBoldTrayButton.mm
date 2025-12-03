@interface OBBoldTrayButton
+ (id)boldButton;
- (BOOL)usesWhiteTintColor;
- (CGSize)intrinsicContentSize;
- (id)boldConfiguration;
- (void)hidesBusyIndicator;
- (void)showsBusyIndicator;
- (void)tintColorDidChange;
- (void)updateConfiguration;
@end

@implementation OBBoldTrayButton

+ (id)boldButton
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___OBBoldTrayButton;
  v2 = objc_msgSendSuper2(&v7, sel_buttonWithType_, 0);
  boldConfiguration = [v2 boldConfiguration];
  [v2 setConfiguration:boldConfiguration];

  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    [v2 _obk_applyGlassWithProminence:1];
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    heightAnchor = [v2 heightAnchor];
    +[OBTrayButton standardHeight];
    v5 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];
    [v5 setActive:1];
  }

  return v2;
}

- (id)boldConfiguration
{
  filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  [filledButtonConfiguration setButtonSize:3];

  return filledButtonConfiguration;
}

- (void)showsBusyIndicator
{
  configuration = [(OBBoldTrayButton *)self configuration];
  showsActivityIndicator = [configuration showsActivityIndicator];

  if ((showsActivityIndicator & 1) == 0)
  {
    buttonStateRequiredHeight = [(OBBoldTrayButton *)self buttonStateRequiredHeight];

    if (!buttonStateRequiredHeight)
    {
      v6 = MEMORY[0x1E696AD98];
      [(OBBoldTrayButton *)self bounds];
      *&v8 = v7;
      v9 = [v6 numberWithFloat:v8];
      [(OBBoldTrayButton *)self setButtonStateRequiredHeight:v9];
    }

    v10.receiver = self;
    v10.super_class = OBBoldTrayButton;
    [(OBTrayButton *)&v10 showsBusyIndicator];
  }
}

- (void)hidesBusyIndicator
{
  configuration = [(OBBoldTrayButton *)self configuration];
  showsActivityIndicator = [configuration showsActivityIndicator];

  if (showsActivityIndicator)
  {
    v6.receiver = self;
    v6.super_class = OBBoldTrayButton;
    [(OBTrayButton *)&v6 hidesBusyIndicator];
    buttonStateRequiredHeight = [(OBBoldTrayButton *)self buttonStateRequiredHeight];

    if (buttonStateRequiredHeight)
    {
      [(OBBoldTrayButton *)self setButtonStateRequiredHeight:0];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  buttonStateRequiredHeight = [(OBBoldTrayButton *)self buttonStateRequiredHeight];

  if (buttonStateRequiredHeight)
  {
    [(OBBoldTrayButton *)self bounds];
    v5 = v4;
    buttonStateRequiredHeight2 = [(OBBoldTrayButton *)self buttonStateRequiredHeight];
    [buttonStateRequiredHeight2 floatValue];
    v8 = v7;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = OBBoldTrayButton;
    [(OBBoldTrayButton *)&v13 intrinsicContentSize];
    v5 = v9;
    v8 = v10;
  }

  v11 = v5;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)updateConfiguration
{
  v22.receiver = self;
  v22.super_class = OBBoldTrayButton;
  [(OBBoldTrayButton *)&v22 updateConfiguration];
  configuration = [(OBBoldTrayButton *)self configuration];
  traitCollection = [(OBBoldTrayButton *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    tintColor = [(OBBoldTrayButton *)self tintColor];
    [configuration setBaseBackgroundColor:tintColor];

    if ([(OBBoldTrayButton *)self usesWhiteTintColor])
    {
      darkTextColor = [MEMORY[0x1E69DC888] darkTextColor];
      [configuration setBaseForegroundColor:darkTextColor];
    }

    else
    {
      [configuration setBaseForegroundColor:0];
    }
  }

  configuration2 = [(OBBoldTrayButton *)self configuration];
  showsActivityIndicator = [configuration2 showsActivityIndicator];

  if (showsActivityIndicator)
  {
    [configuration setTitle:0];
  }

  v21.receiver = self;
  v21.super_class = OBBoldTrayButton;
  buttonFont = [(OBTrayButton *)&v21 buttonFont];
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v12 = [defaultParagraphStyle mutableCopy];

  [v12 setAlignment:1];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __39__OBBoldTrayButton_updateConfiguration__block_invoke;
  v18 = &unk_1E7C15680;
  v19 = buttonFont;
  v20 = v12;
  v13 = v12;
  v14 = buttonFont;
  [configuration setTitleTextAttributesTransformer:&v15];
  [(OBBoldTrayButton *)self setConfiguration:configuration, v15, v16, v17, v18];
}

id __39__OBBoldTrayButton_updateConfiguration__block_invoke(uint64_t a1)
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
  v4 = &unk_1F2CF8588;
  if (v3)
  {
    v4 = &unk_1F2CF8570;
  }

  v9[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = OBBoldTrayButton;
  [(OBBoldTrayButton *)&v3 tintColorDidChange];
  [(OBBoldTrayButton *)self setNeedsUpdateConfiguration];
}

- (BOOL)usesWhiteTintColor
{
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0.0;
  tintColor = [(OBBoldTrayButton *)self tintColor];
  v3 = [tintColor getRed:&v7 green:&v6 blue:&v5 alpha:0];

  return v3 && fabs(v7 + -1.0) < 0.01 && fabs(v6 + -1.0) < 0.01 && fabs(v5 + -1.0) < 0.01;
}

@end