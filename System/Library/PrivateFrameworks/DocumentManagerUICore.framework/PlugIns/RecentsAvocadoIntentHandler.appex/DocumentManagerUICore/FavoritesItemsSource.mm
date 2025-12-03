@interface FavoritesItemsSource
- (void)collection:(id)collection didPerformBatchUpdateWithReplayBlock:(id)block;
- (void)dataForCollectionShouldBeReloaded:(id)reloaded;
@end

@implementation FavoritesItemsSource

- (void)dataForCollectionShouldBeReloaded:(id)reloaded
{
  selfCopy = self;
  sub_1000033C0(1);
}

- (void)collection:(id)collection didPerformBatchUpdateWithReplayBlock:(id)block
{
  selfCopy = self;
  sub_1000033C0(1);
}

@end