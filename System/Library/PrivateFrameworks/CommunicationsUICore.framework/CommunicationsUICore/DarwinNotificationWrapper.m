@interface DarwinNotificationWrapper
- (_TtC20CommunicationsUICore25DarwinNotificationWrapper)init;
- (void)dealloc;
@end

@implementation DarwinNotificationWrapper

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_hasSubscribed;
  if (*(&self->super.isa + OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_hasSubscribed) == 1)
  {
    v5 = OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_token;
    swift_beginAccess();
    LODWORD(v5) = *(&self->super.isa + v5);
    v6 = self;
    notify_cancel(v5);
    *(&self->super.isa + v4) = 0;
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(DarwinNotificationWrapper *)&v8 dealloc];
}

- (_TtC20CommunicationsUICore25DarwinNotificationWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end