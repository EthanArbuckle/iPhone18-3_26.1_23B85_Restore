@interface MyMagazinesViewController
- (_TtC7NewsUI225MyMagazinesViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI225MyMagazinesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)deselect;
- (void)startTraversingWithDirection:(int64_t)direction;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation MyMagazinesViewController

- (_TtC7NewsUI225MyMagazinesViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_isBeingUsedAsPlugin) = 0;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_pluggableDelegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_lastComputedSize);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_eventManager;
  sub_2194CF550();
  swift_allocObject();
  *(&self->super.super.super.isa + v5) = sub_219BE1D34();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_blueprintHorizontalShimView) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI225MyMagazinesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2194CD79C();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_2194CDC7C();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(MyMagazinesViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_2194CF3B4();
}

- (void)startTraversingWithDirection:(int64_t)direction
{
  selfCopy = self;
  sub_219BE8684();
}

- (void)deselect
{
  selfCopy = self;
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  [v2 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
}

@end