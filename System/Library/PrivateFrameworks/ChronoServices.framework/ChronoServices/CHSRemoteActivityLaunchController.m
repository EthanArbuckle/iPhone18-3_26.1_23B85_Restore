@interface CHSRemoteActivityLaunchController
- (_TtC14ChronoServices33CHSRemoteActivityLaunchController)init;
@end

@implementation CHSRemoteActivityLaunchController

- (_TtC14ChronoServices33CHSRemoteActivityLaunchController)init
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = type metadata accessor for CHSRemoteActivityLaunchController();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC14ChronoServices33CHSRemoteActivityLaunchController_connection] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = [(CHSRemoteActivityLaunchController *)&v7 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

@end