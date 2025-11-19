@interface SportsFavoritesViewController
- (_TtC7NewsUI229SportsFavoritesViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI229SportsFavoritesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)startTraversingWithDirection:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SportsFavoritesViewController

- (_TtC7NewsUI229SportsFavoritesViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_isBeingUsedAsPlugin) = 0;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_pluggableDelegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = self + OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_lastComputedSize;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_selectionProvider) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI229SportsFavoritesViewController_blueprintHorizontalShimView) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI229SportsFavoritesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_218A77178();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_218A77564(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_218A77790();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(SportsFavoritesViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_218A79294();
}

- (void)startTraversingWithDirection:(int64_t)a3
{
  v3 = self;
  sub_219BE8684();
}

@end