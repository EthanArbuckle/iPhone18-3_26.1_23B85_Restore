@interface HeadphoneSpecifier
- (_TtC13HearingModeUI18HeadphoneSpecifier)init;
- (_TtC13HearingModeUI18HeadphoneSpecifier)initWithName:(id)name target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit;
- (id)specifierEnabled;
- (void)buttonTappedWithSender:(id)sender;
- (void)setSepcifierEnabledWithEnabled:(id)enabled;
@end

@implementation HeadphoneSpecifier

- (void)buttonTappedWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2520649D4();
  v5 = swift_unknownObjectRelease();
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_buttonTapAction);
  if (v6)
  {
    v7 = *(&selfCopy->super.target + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_buttonTapAction);
    v6(v5);
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
}

- (id)specifierEnabled
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_getAction);
  if (v2)
  {
    v3 = *(&self->super.target + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_getAction);
    selfCopy = self;
    v2 = v2();
  }

  return v2;
}

- (void)setSepcifierEnabledWithEnabled:(id)enabled
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_setAction);
  if (v3)
  {
    v6 = *(&self->super.target + OBJC_IVAR____TtC13HearingModeUI18HeadphoneSpecifier_setAction);
    swift_unknownObjectRetain();
    selfCopy = self;
    v3(enabled);

    swift_unknownObjectRelease();
  }
}

- (_TtC13HearingModeUI18HeadphoneSpecifier)initWithName:(id)name target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_2520649D4();
    swift_unknownObjectRelease();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HearingModeUI18HeadphoneSpecifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end