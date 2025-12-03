@interface CAMSmartStyleNameBadge
- (CAMSmartStyleNameBadge)initWithFrame:(CGRect)frame;
- (void)_updateText;
- (void)setSmartStyle:(id)style;
@end

@implementation CAMSmartStyleNameBadge

- (CAMSmartStyleNameBadge)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CAMSmartStyleNameBadge;
  v3 = [(CEKBadgeTextView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.6];
    [(CEKBadgeView *)v3 _setFillColor:v4];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(CEKBadgeView *)v3 _setContentColor:whiteColor];

    [(CAMSmartStyleNameBadge *)v3 _updateText];
    v6 = v3;
  }

  return v3;
}

- (void)setSmartStyle:(id)style
{
  styleCopy = style;
  smartStyle = self->_smartStyle;
  if (smartStyle != styleCopy)
  {
    v7 = styleCopy;
    smartStyle = [smartStyle isEqualToSmartStyle:styleCopy];
    styleCopy = v7;
    if ((smartStyle & 1) == 0)
    {
      objc_storeStrong(&self->_smartStyle, style);
      smartStyle = [(CAMSmartStyleNameBadge *)self _updateText];
      styleCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](smartStyle, styleCopy);
}

- (void)_updateText
{
  smartStyle = [(CAMSmartStyleNameBadge *)self smartStyle];
  presetDisplayName = [smartStyle presetDisplayName];

  v4 = CAMPreferredLocale();
  v5 = [presetDisplayName uppercaseStringWithLocale:v4];

  [(CEKBadgeTextView *)self _setText:v5];
}

@end