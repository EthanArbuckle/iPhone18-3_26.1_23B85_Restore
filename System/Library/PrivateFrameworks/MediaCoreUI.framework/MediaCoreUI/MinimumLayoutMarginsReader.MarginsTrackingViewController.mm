@interface MinimumLayoutMarginsReader.MarginsTrackingViewController
- (_TtCV11MediaCoreUI26MinimumLayoutMarginsReader29MarginsTrackingViewController)init;
- (_TtCV11MediaCoreUI26MinimumLayoutMarginsReader29MarginsTrackingViewController)initWithCoder:(id)a3;
- (_TtCV11MediaCoreUI26MinimumLayoutMarginsReader29MarginsTrackingViewController)initWithNibName:(id)a3 bundle:(id)a4;
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

- (_TtCV11MediaCoreUI26MinimumLayoutMarginsReader29MarginsTrackingViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV11MediaCoreUI26MinimumLayoutMarginsReader29MarginsTrackingViewController_minimumLayoutMargins) = 0;
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

- (void)viewLayoutMarginsDidChange
{
  v2 = self;
  sub_1C5B90D20();
}

- (_TtCV11MediaCoreUI26MinimumLayoutMarginsReader29MarginsTrackingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end