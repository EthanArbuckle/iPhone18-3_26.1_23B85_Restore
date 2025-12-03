@interface CAMVideoStabilizationBadge
- (CAMVideoStabilizationBadge)initWithFrame:(CGRect)frame;
- (void)_updateTextAndColors;
- (void)setVideoStabilizationMode:(int64_t)mode;
@end

@implementation CAMVideoStabilizationBadge

- (CAMVideoStabilizationBadge)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CAMVideoStabilizationBadge;
  v3 = [(CEKBadgeTextView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMVideoStabilizationBadge *)v3 _updateTextAndColors];
    v5 = v4;
  }

  return v4;
}

- (void)setVideoStabilizationMode:(int64_t)mode
{
  if (self->_videoStabilizationMode != mode)
  {
    self->_videoStabilizationMode = mode;
    [(CAMVideoStabilizationBadge *)self _updateTextAndColors];
  }
}

- (void)_updateTextAndColors
{
  videoStabilizationMode = [(CAMVideoStabilizationBadge *)self videoStabilizationMode];
  if (videoStabilizationMode == 1)
  {
    v6 = CAMLocalizedFrameworkString(@"VIDEO_STABILIZATION_BADGE_ULTRA", 0);
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    goto LABEL_5;
  }

  if (!videoStabilizationMode)
  {
    v6 = CAMLocalizedFrameworkString(@"VIDEO_STABILIZATION_BADGE_OFF", 0);
    systemYellowColor = [MEMORY[0x1E69DC888] whiteColor];
LABEL_5:
    v5 = systemYellowColor;
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