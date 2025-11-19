@interface CAMVideoStabilizationBadge
- (CAMVideoStabilizationBadge)initWithFrame:(CGRect)a3;
- (void)_updateTextAndColors;
- (void)setVideoStabilizationMode:(int64_t)a3;
@end

@implementation CAMVideoStabilizationBadge

- (CAMVideoStabilizationBadge)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CAMVideoStabilizationBadge;
  v3 = [(CEKBadgeTextView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMVideoStabilizationBadge *)v3 _updateTextAndColors];
    v5 = v4;
  }

  return v4;
}

- (void)setVideoStabilizationMode:(int64_t)a3
{
  if (self->_videoStabilizationMode != a3)
  {
    self->_videoStabilizationMode = a3;
    [(CAMVideoStabilizationBadge *)self _updateTextAndColors];
  }
}

- (void)_updateTextAndColors
{
  v3 = [(CAMVideoStabilizationBadge *)self videoStabilizationMode];
  if (v3 == 1)
  {
    v6 = CAMLocalizedFrameworkString(@"VIDEO_STABILIZATION_BADGE_ULTRA", 0);
    v4 = [MEMORY[0x1E69DC888] systemYellowColor];
    goto LABEL_5;
  }

  if (!v3)
  {
    v6 = CAMLocalizedFrameworkString(@"VIDEO_STABILIZATION_BADGE_OFF", 0);
    v4 = [MEMORY[0x1E69DC888] whiteColor];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  v6 = 0;
  v5 = 0;
LABEL_7:
  [(CEKBadgeTextView *)self _setText:v6];
  [(CEKBadgeView *)self _setFillColor:v5];
  [(CAMVideoStabilizationBadge *)self setNeedsLayout];
}

@end