@interface MyMagazinesViewController
- (_TtC7NewsUI225MyMagazinesViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI225MyMagazinesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)deselect;
- (void)startTraversingWithDirection:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation MyMagazinesViewController

- (_TtC7NewsUI225MyMagazinesViewController)initWithCoder:(id)a3
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

- (_TtC7NewsUI225MyMagazinesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2194CD79C();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_2194CDC7C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(MyMagazinesViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_2194CF3B4();
}

- (void)startTraversingWithDirection:(int64_t)a3
{
  v3 = self;
  sub_219BE8684();
}

- (void)deselect
{
  v3 = self;
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  [v2 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
}

@end