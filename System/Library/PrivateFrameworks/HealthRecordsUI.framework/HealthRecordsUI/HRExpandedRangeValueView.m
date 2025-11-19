@interface HRExpandedRangeValueView
- (void)didMoveToSuperview;
- (void)updateWithData:(id)a3;
@end

@implementation HRExpandedRangeValueView

- (void)updateWithData:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D113B094(a3);
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ExpandedRangeValueView();
  v2 = v3.receiver;
  [(HRExpandedRangeValueView *)&v3 didMoveToSuperview];
  sub_1D113B838();
}

@end