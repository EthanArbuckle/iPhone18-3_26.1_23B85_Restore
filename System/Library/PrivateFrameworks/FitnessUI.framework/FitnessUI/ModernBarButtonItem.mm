@interface ModernBarButtonItem
- (_TtC9FitnessUI19ModernBarButtonItem)init;
- (_TtC9FitnessUI19ModernBarButtonItem)initWithCoder:(id)coder;
- (void)handleTappedButton;
@end

@implementation ModernBarButtonItem

- (_TtC9FitnessUI19ModernBarButtonItem)initWithCoder:(id)coder
{
  result = sub_1E5DA951C();
  __break(1u);
  return result;
}

- (void)handleTappedButton
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9FitnessUI19ModernBarButtonItem_callback);
  selfCopy = self;
  v2();
}

- (_TtC9FitnessUI19ModernBarButtonItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end