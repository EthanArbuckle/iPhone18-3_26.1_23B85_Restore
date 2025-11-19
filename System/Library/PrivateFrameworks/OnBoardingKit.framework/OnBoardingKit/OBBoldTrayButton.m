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
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___OBBoldTrayButton;
  v2 = objc_msgSendSuper2(&v7, sel_buttonWithType_, 0);
  v3 = [v2 boldConfiguration];
  [v2 setConfiguration:v3];

  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    [v2 _obk_applyGlassWithProminence:1];
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [v2 heightAnchor];
    +[OBTrayButton standardHeight];
    v5 = [v4 constraintGreaterThanOrEqualToConstant:?];
    [v5 setActive:1];
  }

  return v2;
}

- (id)boldConfiguration
{
  v2 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  [v2 setButtonSize:3];

  return v2;
}

- (void)showsBusyIndicator
{
  v3 = [(OBBoldTrayButton *)self configuration];
  v4 = [v3 showsActivityIndicator];

  if ((v4 & 1) == 0)
  {
    v5 = [(OBBoldTrayButton *)self buttonStateRequiredHeight];

    if (!v5)
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
  v3 = [(OBBoldTrayButton *)self configuration];
  v4 = [v3 showsActivityIndicator];

  if (v4)
  {
    v6.receiver = self;
    v6.super_class = OBBoldTrayButton;
    [(OBTrayButton *)&v6 hidesBusyIndicator];
    v5 = [(OBBoldTrayButton *)self buttonStateRequiredHeight];

    if (v5)
    {
      [(OBBoldTrayButton *)self setButtonStateRequiredHeight:0];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(OBBoldTrayButton *)self buttonStateRequiredHeight];

  if (v3)
  {
    [(OBBoldTrayButton *)self bounds];
    v5 = v4;
    v6 = [(OBBoldTrayButton *)self buttonStateRequiredHeight];
    [v6 floatValue];
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
  v3 = [(OBBoldTrayButton *)self configuration];
  v4 = [(OBBoldTrayButton *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 6)
  {
    v6 = [(OBBoldTrayButton *)self tintColor];
    [v3 setBaseBackgroundColor:v6];

    if ([(OBBoldTrayButton *)self usesWhiteTintColor])
    {
      v7 = [MEMORY[0x1E69DC888] darkTextColor];
      [v3 setBaseForegroundColor:v7];
    }

    else
    {
      [v3 setBaseForegroundColor:0];
    }
  }

  v8 = [(OBBoldTrayButton *)self configuration];
  v9 = [v8 showsActivityIndicator];

  if (v9)
  {
    [v3 setTitle:0];
  }

  v21.receiver = self;
  v21.super_class = OBBoldTrayButton;
  v10 = [(OBTrayButton *)&v21 buttonFont];
  v11 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v12 = [v11 mutableCopy];

  [v12 setAlignment:1];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __39__OBBoldTrayButton_updateConfiguration__block_invoke;
  v18 = &unk_1E7C15680;
  v19 = v10;
  v20 = v12;
  v13 = v12;
  v14 = v10;
  [v3 setTitleTextAttributesTransformer:&v15];
  [(OBBoldTrayButton *)self setConfiguration:v3, v15, v16, v17, v18];
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
  v2 = [(OBBoldTrayButton *)self tintColor];
  v3 = [v2 getRed:&v7 green:&v6 blue:&v5 alpha:0];

  return v3 && fabs(v7 + -1.0) < 0.01 && fabs(v6 + -1.0) < 0.01 && fabs(v5 + -1.0) < 0.01;
}

@end