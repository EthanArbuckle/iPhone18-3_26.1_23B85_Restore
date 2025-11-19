@interface OnboardingViewController
- (_TtC16MagnifierSupport24OnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC16MagnifierSupport24OnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC16MagnifierSupport24OnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapStart;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation OnboardingViewController

- (_TtC16MagnifierSupport24OnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v7 = sub_257ECF500();
  v9 = v8;
  if (a4)
  {
    a4 = sub_257ECF500();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = a5;
  return sub_257DCE050(v7, v9, a4, v11, a5);
}

- (void)didTapStart
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = self;
    swift_unknownObjectRetain();
    sub_257E10374(0, sub_257DCF798, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = self;
  }

  [(OnboardingViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for OnboardingViewController();
  v4 = v5.receiver;
  [(OnboardingViewController *)&v5 viewWillAppear:v3];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_257DB1748();
    swift_unknownObjectRelease();
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for OnboardingViewController();
  v4 = v8.receiver;
  [(OnboardingViewController *)&v8 viewWillAppear:v3];
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

- (_TtC16MagnifierSupport24OnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16MagnifierSupport24OnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end