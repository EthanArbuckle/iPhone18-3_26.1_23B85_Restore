@interface HeadphoneSpecifier
- (_TtC16HeadphoneConfigs18HeadphoneSpecifier)init;
- (_TtC16HeadphoneConfigs18HeadphoneSpecifier)initWithName:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9;
- (id)specifierEnabled;
- (void)buttonTappedWithSender:(id)a3;
- (void)setSepcifierEnabledWithEnabled:(id)a3;
@end

@implementation HeadphoneSpecifier

- (void)buttonTappedWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_251211B5C();
  v5 = swift_unknownObjectRelease();
  v6 = *(&v4->super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_buttonTapAction);
  if (v6)
  {
    v7 = *(&v4->super.target + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_buttonTapAction);
    v6(v5);
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
}

- (id)specifierEnabled
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_getAction);
  if (v2)
  {
    v3 = *(&self->super.target + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_getAction);
    v4 = self;
    v5 = v2();

    v6 = v5;
  }

  else
  {
    sub_2511D5484();
    v6 = sub_251211A4C();
  }

  return v6;
}

- (void)setSepcifierEnabledWithEnabled:(id)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_setAction);
  if (v3)
  {
    v5 = *(&self->super.target + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_setAction);
    v7 = a3;
    v6 = self;
    v3(v7);
  }
}

- (_TtC16HeadphoneConfigs18HeadphoneSpecifier)initWithName:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9
{
  if (a4)
  {
    swift_unknownObjectRetain();
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16HeadphoneConfigs18HeadphoneSpecifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end