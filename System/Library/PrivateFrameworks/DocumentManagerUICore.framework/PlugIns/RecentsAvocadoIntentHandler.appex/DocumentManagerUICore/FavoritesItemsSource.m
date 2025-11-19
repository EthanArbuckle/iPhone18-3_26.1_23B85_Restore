@interface FavoritesItemsSource
- (void)collection:(id)a3 didPerformBatchUpdateWithReplayBlock:(id)a4;
- (void)dataForCollectionShouldBeReloaded:(id)a3;
@end

@implementation FavoritesItemsSource

- (void)dataForCollectionShouldBeReloaded:(id)a3
{
  v3 = self;
  sub_1000033C0(1);
}

- (void)collection:(id)a3 didPerformBatchUpdateWithReplayBlock:(id)a4
{
  v4 = self;
  sub_1000033C0(1);
}

@end