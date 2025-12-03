@interface _LocationAuthorizationMonitorImpl
- (_TtC10ChronoCore33_LocationAuthorizationMonitorImpl)init;
- (void)dealloc;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation _LocationAuthorizationMonitorImpl

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_manager))
  {
    __break(1u);
  }

  else
  {
    v3.receiver = self;
    v3.super_class = swift_getObjectType();
    v2 = v3.receiver;
    [(_LocationAuthorizationMonitorImpl *)&v3 dealloc];
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  selfCopy = self;
  sub_224DA7A08();
}

- (_TtC10ChronoCore33_LocationAuthorizationMonitorImpl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end