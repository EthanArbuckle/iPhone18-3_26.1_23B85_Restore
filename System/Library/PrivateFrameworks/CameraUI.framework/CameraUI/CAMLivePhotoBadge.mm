@interface CAMLivePhotoBadge
- (CAMLivePhotoBadge)initWithFrame:(CGRect)frame;
- (void)_updateTextAndColors;
- (void)setIrisMode:(int64_t)mode;
@end

@implementation CAMLivePhotoBadge

- (CAMLivePhotoBadge)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CAMLivePhotoBadge;
  v3 = [(CEKBadgeTextView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMLivePhotoBadge *)v3 _updateTextAndColors];
    v5 = v4;
  }

  return v4;
}

- (void)setIrisMode:(int64_t)mode
{
  if (self->_irisMode != mode)
  {
    self->_irisMode = mode;
    [(CAMLivePhotoBadge *)self _updateTextAndColors];
  }
}

- (void)_updateTextAndColors
{
  irisMode = [(CAMLivePhotoBadge *)self irisMode];
  if ((irisMode - 1) < 2)
  {
    v6 = CAMLocalizedFrameworkString(@"LIVE", @"Text shown to the user when a Live Photo is being captured or has been enabled");
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
LABEL_5:
    v5 = systemYellowColor;
    goto LABEL_7;
  }

  if (!irisMode)
  {
    v6 = CAMLocalizedFrameworkString(@"LIVE_OFF", @"Text shown to the user when Live Photo recording has been disabled");
    systemYellowColor = [MEMORY[0x1E69DC888] whiteColor];
    goto LABEL_5;
  }

  v6 = 0;
  v5 = 0;
LABEL_7:
  [(CEKBadgeTextView *)self _setText:v6];
  [(CEKBadgeView *)self _setFillColor:v5];
}

@end