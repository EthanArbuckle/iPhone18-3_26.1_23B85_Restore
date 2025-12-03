@interface NSMutableDictionary(Utilities)
- (void)mt_removeNaNValues;
@end

@implementation NSMutableDictionary(Utilities)

- (void)mt_removeNaNValues
{
  v3 = [self keysOfEntriesPassingTest:&__block_literal_global_22];
  allObjects = [v3 allObjects];
  [self removeObjectsForKeys:allObjects];
}

@end