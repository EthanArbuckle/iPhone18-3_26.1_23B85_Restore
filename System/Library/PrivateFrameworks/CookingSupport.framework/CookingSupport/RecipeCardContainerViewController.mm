@interface RecipeCardContainerViewController
- (_TtC14CookingSupport33RecipeCardContainerViewController)initWithCoder:(id)coder;
- (_TtC14CookingSupport33RecipeCardContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation RecipeCardContainerViewController

- (_TtC14CookingSupport33RecipeCardContainerViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC14CookingSupport33RecipeCardContainerViewController_observableHorizontalParallaxModel;
  v5 = sub_21A3B1F5C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = sub_21A3B1F4C();
  result = sub_21A3B266C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  RecipeCardContainerViewController.viewDidLoad()();
}

- (_TtC14CookingSupport33RecipeCardContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end