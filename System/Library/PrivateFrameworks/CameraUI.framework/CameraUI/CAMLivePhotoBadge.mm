@interface CAMLivePhotoBadge
- (CAMLivePhotoBadge)initWithFrame:(CGRect)a3;
- (void)_updateTextAndColors;
- (void)setIrisMode:(int64_t)a3;
@end

@implementation CAMLivePhotoBadge

- (CAMLivePhotoBadge)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CAMLivePhotoBadge;
  v3 = [(CEKBadgeTextView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMLivePhotoBadge *)v3 _updateTextAndColors];
    v5 = v4;
  }

  return v4;
}

- (void)setIrisMode:(int64_t)a3
{
  if (self->_irisMode != a3)
  {
    self->_irisMode = a3;
    [(CAMLivePhotoBadge *)self _updateTextAndColors];
  }
}

- (void)_updateTextAndColors
{
  v3 = [(CAMLivePhotoBadge *)self irisMode];
  if ((v3 - 1) < 2)
  {
    v6 = CAMLocalizedFrameworkString(@"LIVE", @"Text shown to the user when a Live Photo is being captured or has been enabled");
    v4 = [MEMORY[0x1E69DC888] systemYellowColor];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if (!v3)
  {
    v6 = CAMLocalizedFrameworkString(@"LIVE_OFF", @"Text shown to the user when Live Photo recording has been disabled");
    v4 = [MEMORY[0x1E69DC888] whiteColor];
    goto LABEL_5;
  }

  v6 = 0;
  v5 = 0;
LABEL_7:
  [(CEKBadgeTextView *)self _setText:v6];
  [(CEKBadgeView *)self _setFillColor:v5];
}

@end