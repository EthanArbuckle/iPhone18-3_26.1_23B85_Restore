@interface DKEventStatsCollection
@end

@implementation DKEventStatsCollection

uint64_t __46___DKEventStatsCollection_collectionWithName___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _DKEventStatsCollections;
  _DKEventStatsCollections = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end