@interface CAMSmartStyleNameBadge
- (CAMSmartStyleNameBadge)initWithFrame:(CGRect)a3;
- (void)_updateText;
- (void)setSmartStyle:(id)a3;
@end

@implementation CAMSmartStyleNameBadge

- (CAMSmartStyleNameBadge)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CAMSmartStyleNameBadge;
  v3 = [(CEKBadgeTextView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.6];
    [(CEKBadgeView *)v3 _setFillColor:v4];

    v5 = [MEMORY[0x1E69DC888] whiteColor];
    [(CEKBadgeView *)v3 _setContentColor:v5];

    [(CAMSmartStyleNameBadge *)v3 _updateText];
    v6 = v3;
  }

  return v3;
}

- (void)setSmartStyle:(id)a3
{
  v5 = a3;
  smartStyle = self->_smartStyle;
  if (smartStyle != v5)
  {
    v7 = v5;
    smartStyle = [smartStyle isEqualToSmartStyle:v5];
    v5 = v7;
    if ((smartStyle & 1) == 0)
    {
      objc_storeStrong(&self->_smartStyle, a3);
      smartStyle = [(CAMSmartStyleNameBadge *)self _updateText];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](smartStyle, v5);
}

- (void)_updateText
{
  v3 = [(CAMSmartStyleNameBadge *)self smartStyle];
  v6 = [v3 presetDisplayName];

  v4 = CAMPreferredLocale();
  v5 = [v6 uppercaseStringWithLocale:v4];

  [(CEKBadgeTextView *)self _setText:v5];
}

@end