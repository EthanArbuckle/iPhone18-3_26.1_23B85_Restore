@interface OnboardingViewController
- (_TtC16MagnifierSupport24OnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC16MagnifierSupport24OnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC16MagnifierSupport24OnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapStart;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation OnboardingViewController

- (_TtC16MagnifierSupport24OnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  v7 = sub_257ECF500();
  v9 = v8;
  if (text)
  {
    text = sub_257ECF500();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  iconCopy = icon;
  return sub_257DCE050(v7, v9, text, v11, icon);
}

- (void)didTapStart
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_257E10374(0, sub_257DCF798, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    selfCopy2 = self;
  }

  [(OnboardingViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for OnboardingViewController();
  v4 = v5.receiver;
  [(OnboardingViewController *)&v5 viewWillAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_257DB1748();
    swift_unknownObjectRelease();
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for OnboardingViewController();
  v4 = v8.receiver;
  [(OnboardingViewController *)&v8 viewWillAppear:disappearCopy];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    swift_unknownObjectRetain();
    sub_257E10374(0, sub_257DCF790, v7);
    swift_unknownObjectRelease();
  }
}

- (_TtC16MagnifierSupport24OnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16MagnifierSupport24OnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end