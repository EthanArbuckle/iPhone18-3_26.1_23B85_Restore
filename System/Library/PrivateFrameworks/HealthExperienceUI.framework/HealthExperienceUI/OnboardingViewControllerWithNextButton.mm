@interface OnboardingViewControllerWithNextButton
- (_TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)cancelButtonTapped:(id)tapped;
- (void)hxui_cancelButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
- (void)nextButtonTapped:(id)tapped;
@end

@implementation OnboardingViewControllerWithNextButton

- (void)hxui_primaryFooterButtonTapped
{
  selfCopy = self;
  sub_1BA25CD78();
}

- (void)hxui_cancelButtonTapped
{
  v5[3] = type metadata accessor for OnboardingViewControllerWithNextButton();
  v5[0] = self;
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0xC8);
  selfCopy = self;
  v3(v5);

  __swift_destroy_boxed_opaque_existential_1(v5);
}

- (void)nextButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v3);
}

- (void)cancelButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  [(OnboardingViewControllerWithNextButton *)selfCopy dismissViewControllerAnimated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end