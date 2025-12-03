@interface WebOptinFlowManager
- (_TtC16NewsSubscription19WebOptinFlowManager)init;
- (void)handledAction:(id)action state:(unint64_t)state;
@end

@implementation WebOptinFlowManager

- (_TtC16NewsSubscription19WebOptinFlowManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handledAction:(id)action state:(unint64_t)state
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction);
  if (v4)
  {
    selfCopy = self;
    v6 = sub_1D776AC18(v4);
    v4(v6);

    sub_1D7744A7C(v4);
  }
}

@end