@interface NotificationCapsuleView
- (CGSize)intrinsicContentSize;
- (_TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F723NotificationCapsuleView)initWithCoder:(id)a3;
- (_TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F723NotificationCapsuleView)initWithFrame:(CGRect)a3;
@end

@implementation NotificationCapsuleView

- (_TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F723NotificationCapsuleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v7 = [(NotificationCapsuleView *)&v9 initWithFrame:x, y, width, height];
  sub_2516FC3C4();

  return v7;
}

- (_TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F723NotificationCapsuleView)initWithCoder:(id)a3
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