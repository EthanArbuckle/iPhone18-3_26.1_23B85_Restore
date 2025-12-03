@interface SportsFavoritesViewController
- (_TtC7NewsUI229SportsFavoritesViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI229SportsFavoritesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)startTraversingWithDirection:(int64_t)direction;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation SportsFavoritesViewController

- (_TtC7NewsUI229SportsFavoritesViewController)initWithCoder:(id)coder
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

- (_TtC7NewsUI229SportsFavoritesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_218A77178();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_218A77564(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_218A77790();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(SportsFavoritesViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_218A79294();
}

- (void)startTraversingWithDirection:(int64_t)direction
{
  selfCopy = self;
  sub_219BE8684();
}

@end