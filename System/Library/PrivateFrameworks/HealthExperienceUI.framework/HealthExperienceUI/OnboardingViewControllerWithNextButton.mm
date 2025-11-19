@interface OnboardingViewControllerWithNextButton
- (_TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)cancelButtonTapped:(id)a3;
- (void)hxui_cancelButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
- (void)nextButtonTapped:(id)a3;
@end

@implementation OnboardingViewControllerWithNextButton

- (void)hxui_primaryFooterButtonTapped
{
  v2 = self;
  sub_1BA25CD78();
}

- (void)hxui_cancelButtonTapped
{
  v5[3] = type metadata accessor for OnboardingViewControllerWithNextButton();
  v5[0] = self;
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0xC8);
  v4 = self;
  v3(v5);

  __swift_destroy_boxed_opaque_existential_1(v5);
}

- (void)nextButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v3);
}

- (void)cancelButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  [(OnboardingViewControllerWithNextButton *)v4 dismissViewControllerAnimated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end