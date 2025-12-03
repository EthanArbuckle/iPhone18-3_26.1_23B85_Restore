@interface CAMVideoPausedBadge
- (CAMVideoPausedBadge)initWithFrame:(CGRect)frame;
@end

@implementation CAMVideoPausedBadge

- (CAMVideoPausedBadge)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CAMVideoPausedBadge;
  v3 = [(CEKBadgeTextView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    [(CEKBadgeView *)v3 _setFillColor:systemRedColor];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(CEKBadgeView *)v3 _setContentColor:whiteColor];

    v6 = CAMLocalizedString(@"CAM_VIDEO_PAUSED_BADGE", @"CameraUI-PauseVideo");
    [(CEKBadgeTextView *)v3 _setText:v6];

    v7 = v3;
  }

  return v3;
}

@end