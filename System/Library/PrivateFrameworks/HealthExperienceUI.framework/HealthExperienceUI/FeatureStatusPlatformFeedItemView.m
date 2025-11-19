@interface FeatureStatusPlatformFeedItemView
- (void)didSelectCell:(id)a3 in:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FeatureStatusPlatformFeedItemView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BA0BFD14(a3);
}

- (void)didSelectCell:(id)a3 in:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BA0C1E78();
}

@end