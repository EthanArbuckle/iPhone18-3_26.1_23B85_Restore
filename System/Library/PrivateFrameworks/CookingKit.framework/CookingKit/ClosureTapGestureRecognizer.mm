@interface ClosureTapGestureRecognizer
- (_TtC10CookingKitP33_371E4750EAD71236DF383F3B5E5C07E127ClosureTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)handleTap;
@end

@implementation ClosureTapGestureRecognizer

- (void)handleTap
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10CookingKitP33_371E4750EAD71236DF383F3B5E5C07E127ClosureTapGestureRecognizer_action);
  selfCopy = self;
  v2();
}

- (_TtC10CookingKitP33_371E4750EAD71236DF383F3B5E5C07E127ClosureTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_21A2F7F14();
    swift_unknownObjectRelease();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end