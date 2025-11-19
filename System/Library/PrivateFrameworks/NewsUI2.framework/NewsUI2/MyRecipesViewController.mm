@interface MyRecipesViewController
- (_TtC7NewsUI223MyRecipesViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI223MyRecipesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation MyRecipesViewController

- (_TtC7NewsUI223MyRecipesViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_isBeingUsedAsPlugin) = 0;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_pluggableDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_blueprintHorizontalShimView) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI223MyRecipesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_21955B358();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_21955B5A8();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(MyRecipesViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_21955DDB4();
}

@end