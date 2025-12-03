@interface MagazineSectionBarViewController
- (_TtC7NewsUI232MagazineSectionBarViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI232MagazineSectionBarViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)deselect;
- (void)startTraversingWithDirection:(int64_t)direction;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation MagazineSectionBarViewController

- (_TtC7NewsUI232MagazineSectionBarViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_isBeingUsedAsPlugin) = 0;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_pluggableDelegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_previousSelectedIndexPath;
  v5 = sub_219BDC104();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_blueprintHorizontalShimView) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI232MagazineSectionBarViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2197D2B44();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_2197D2F44();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(MagazineSectionBarViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_2197D4690();
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