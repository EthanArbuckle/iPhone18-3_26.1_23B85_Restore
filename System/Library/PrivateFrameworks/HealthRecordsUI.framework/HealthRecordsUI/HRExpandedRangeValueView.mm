@interface HRExpandedRangeValueView
- (void)didMoveToSuperview;
- (void)updateWithData:(id)data;
@end

@implementation HRExpandedRangeValueView

- (void)updateWithData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  sub_1D113B094(data);
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