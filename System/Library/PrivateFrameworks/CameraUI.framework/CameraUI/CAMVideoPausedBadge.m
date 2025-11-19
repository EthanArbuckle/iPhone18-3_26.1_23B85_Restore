@interface CAMVideoPausedBadge
- (CAMVideoPausedBadge)initWithFrame:(CGRect)a3;
@end

@implementation CAMVideoPausedBadge

- (CAMVideoPausedBadge)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CAMVideoPausedBadge;
  v3 = [(CEKBadgeTextView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] systemRedColor];
    [(CEKBadgeView *)v3 _setFillColor:v4];

    v5 = [MEMORY[0x1E69DC888] whiteColor];
    [(CEKBadgeView *)v3 _setContentColor:v5];

    v6 = CAMLocalizedString(@"CAM_VIDEO_PAUSED_BADGE", @"CameraUI-PauseVideo");
    [(CEKBadgeTextView *)v3 _setText:v6];

    v7 = v3;
  }

  return v3;
}

@end