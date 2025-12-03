@interface StoreMappingCoordinator
- (void)startSync:(id)sync;
@end

@implementation StoreMappingCoordinator

- (void)startSync:(id)sync
{
  syncCopy = sync;

  sub_226B5E300(syncCopy);
}

@end