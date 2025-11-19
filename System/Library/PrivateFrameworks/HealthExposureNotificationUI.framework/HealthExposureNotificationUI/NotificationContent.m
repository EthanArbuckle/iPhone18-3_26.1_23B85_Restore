@interface NotificationContent
- (CGSize)intrinsicContentSize;
- (_TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F719NotificationContent)initWithCoder:(id)a3;
- (_TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F719NotificationContent)initWithFrame:(CGRect)a3;
@end

@implementation NotificationContent

- (_TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F719NotificationContent)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F719NotificationContent_notificationContainer;
  type metadata accessor for NotificationCapsuleView();
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(NotificationContent *)&v12 initWithFrame:x, y, width, height];
  sub_2516FC678();

  return v10;
}

- (_TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F719NotificationContent)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F719NotificationContent_notificationContainer;
  type metadata accessor for NotificationCapsuleView();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_251703584();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  type metadata accessor for NotificationCapsuleView();

  v2 = *MEMORY[0x277D77260];
  v3 = 85.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end