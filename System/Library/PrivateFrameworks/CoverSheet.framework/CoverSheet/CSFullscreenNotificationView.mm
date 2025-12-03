@interface CSFullscreenNotificationView
- (CSFullscreenNotificationView)initWithFrame:(CGRect)frame;
@end

@implementation CSFullscreenNotificationView

- (CSFullscreenNotificationView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CSFullscreenNotificationView;
  return [(CSModalView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

@end