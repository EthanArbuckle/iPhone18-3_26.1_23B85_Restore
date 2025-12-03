@interface NotificationCapsuleView
- (CGSize)intrinsicContentSize;
- (_TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F723NotificationCapsuleView)initWithCoder:(id)coder;
- (_TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F723NotificationCapsuleView)initWithFrame:(CGRect)frame;
@end

@implementation NotificationCapsuleView

- (_TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F723NotificationCapsuleView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  height = [(NotificationCapsuleView *)&v9 initWithFrame:x, y, width, height];
  sub_2516FC3C4();

  return height;
}

- (_TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F723NotificationCapsuleView)initWithCoder:(id)coder
{
  result = sub_251703584();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  v3 = 9.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end