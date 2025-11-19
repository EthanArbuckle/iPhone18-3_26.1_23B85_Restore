@interface DOCProgressCollectionListViewController.ProgressListingView
- (CGSize)intrinsicContentSize;
- (_TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView)initWithCoder:(id)a3;
- (_TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (double)fittingHeight;
- (void)layoutSubviews;
- (void)setFittingHeight:(double)a3;
@end

@implementation DOCProgressCollectionListViewController.ProgressListingView

- (CGSize)intrinsicContentSize
{
  [(DOCProgressCollectionListViewController.ProgressListingView *)self contentSize];
  v3 = fmax(v2, 300.0);
  v5 = fmax(v4, 1.0);
  result.height = v5;
  result.width = v3;
  return result;
}

- (double)fittingHeight
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeight;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setFittingHeight:(double)a3
{
  v5 = OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeight;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = a3;
  if (v6 != a3)
  {
    [(DOCProgressCollectionListViewController.ProgressListingView *)self invalidateIntrinsicContentSize];
  }
}

- (void)layoutSubviews
{
  v2 = self;
  DOCProgressCollectionListViewController.ProgressListingView.layoutSubviews()();
}

- (_TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeight;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v10) = static DOCProgressCollectionListViewController.ProgressListingView.minimumFittingHeight;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeightUpdateDisabledCount) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for DOCProgressCollectionListViewController.ProgressListingView();
  return [(DOCProgressCollectionListViewController.ProgressListingView *)&v12 initWithFrame:a4 collectionViewLayout:x, y, width, height];
}

- (_TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeight;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = static DOCProgressCollectionListViewController.ProgressListingView.minimumFittingHeight;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView_fittingHeightUpdateDisabledCount) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCProgressCollectionListViewController.ProgressListingView();
  v6 = a3;
  v7 = [(DOCProgressCollectionListViewController.ProgressListingView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end