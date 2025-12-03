@interface RoutesMoreMenuViewModel
- (_TtC16CommunicationsUI23RoutesMoreMenuViewModel)init;
- (void)dealloc;
@end

@implementation RoutesMoreMenuViewModel

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16CommunicationsUI23RoutesMoreMenuViewModel_conduit);
  selfCopy = self;
  [v4 removeDelegate_];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(RoutesMoreMenuViewModel *)&v6 dealloc];
}

- (_TtC16CommunicationsUI23RoutesMoreMenuViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end