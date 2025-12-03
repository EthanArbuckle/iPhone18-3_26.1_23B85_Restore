@interface SFFooterButton
- (SFFooterButton)initWithCoder:(id)coder;
- (SFFooterButton)initWithFrame:(CGRect)frame;
- (void)updateConfiguration;
@end

@implementation SFFooterButton

- (void)updateConfiguration
{
  configuration = [(SFFooterButton *)self configuration];
  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  traitCollection = [(SFFooterButton *)self traitCollection];
  if ([traitCollection sf_usesVibrantAppearance])
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [configuration setBaseBackgroundColor:clearColor];
  }

  else
  {
    [configuration setBaseBackgroundColor:secondarySystemGroupedBackgroundColor];
  }

  [(SFFooterButton *)self setConfiguration:configuration];
}

- (SFFooterButton)initWithFrame:(CGRect)frame
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = SFFooterButton;
  v3 = [(SFFooterButton *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFFooterButton *)v3 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    [(SFFooterButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFFooterButton *)v4 setRole:1];
    grayButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];
    [grayButtonConfiguration setButtonSize:0];
    [grayButtonConfiguration setCornerStyle:4];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [grayButtonConfiguration setBaseForegroundColor:labelColor];

    [grayButtonConfiguration contentInsets];
    [grayButtonConfiguration setContentInsets:?];
    [(SFFooterButton *)v4 setConfiguration:grayButtonConfiguration];

    v12[0] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v8 = [(SFFooterButton *)v4 registerForTraitChanges:v7 withTarget:v4 action:sel_setNeedsUpdateConfiguration];

    v9 = v4;
  }

  return v4;
}

- (SFFooterButton)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFFooterButton;
  return [(SFFooterButton *)&v4 initWithCoder:coder];
}

@end