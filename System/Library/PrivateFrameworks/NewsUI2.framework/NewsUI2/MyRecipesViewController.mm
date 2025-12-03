@interface MyRecipesViewController
- (_TtC7NewsUI223MyRecipesViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI223MyRecipesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation MyRecipesViewController

- (_TtC7NewsUI223MyRecipesViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_isBeingUsedAsPlugin) = 0;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_pluggableDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_blueprintHorizontalShimView) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI223MyRecipesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21955B358();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_21955B5A8();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(MyRecipesViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_21955DDB4();
}

@end