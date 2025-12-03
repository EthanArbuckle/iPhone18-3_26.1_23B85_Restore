@interface AlertConfiguration
- (_TtC24FaceTimeNotificationCore18AlertConfiguration)init;
- (_TtC24FaceTimeNotificationCore18AlertConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AlertConfiguration

- (_TtC24FaceTimeNotificationCore18AlertConfiguration)init
{
  ObjectType = swift_getObjectType();
  v3 = objc_allocWithZone(ObjectType);
  v3[OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_showDummyUIKitView] = 0;
  v3[OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_isAudio] = 0;
  v3[OBJC_IVAR____TtC24FaceTimeNotificationCore18AlertConfiguration_ignoresDND] = 1;
  v6.receiver = v3;
  v6.super_class = ObjectType;
  v4 = [(AlertConfiguration *)&v6 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AlertConfiguration.encode(with:)(coderCopy);
}

- (_TtC24FaceTimeNotificationCore18AlertConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_24A9CE158(coderCopy);

  return v4;
}

@end