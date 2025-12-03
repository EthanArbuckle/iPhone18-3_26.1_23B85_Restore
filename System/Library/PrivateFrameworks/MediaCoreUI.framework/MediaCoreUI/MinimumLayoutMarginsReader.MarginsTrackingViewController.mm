@interface MinimumLayoutMarginsReader.MarginsTrackingViewController
- (_TtCV11MediaCoreUI26MinimumLayoutMarginsReader29MarginsTrackingViewController)init;
- (_TtCV11MediaCoreUI26MinimumLayoutMarginsReader29MarginsTrackingViewController)initWithCoder:(id)coder;
- (_TtCV11MediaCoreUI26MinimumLayoutMarginsReader29MarginsTrackingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewLayoutMarginsDidChange;
@end

@implementation MinimumLayoutMarginsReader.MarginsTrackingViewController

- (_TtCV11MediaCoreUI26MinimumLayoutMarginsReader29MarginsTrackingViewController)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV11MediaCoreUI26MinimumLayoutMarginsReader29MarginsTrackingViewController_minimumLayoutMargins) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for MinimumLayoutMarginsReader.MarginsTrackingViewController();
  return [(MinimumLayoutMarginsReader.MarginsTrackingViewController *)&v3 initWithNibName:0 bundle:0];
}

- (_TtCV11MediaCoreUI26MinimumLayoutMarginsReader29MarginsTrackingViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV11MediaCoreUI26MinimumLayoutMarginsReader29MarginsTrackingViewController_minimumLayoutMargins) = 0;
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

- (void)viewLayoutMarginsDidChange
{
  selfCopy = self;
  sub_1C5B90D20();
}

- (_TtCV11MediaCoreUI26MinimumLayoutMarginsReader29MarginsTrackingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end