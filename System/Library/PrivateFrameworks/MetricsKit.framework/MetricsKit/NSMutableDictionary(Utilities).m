@interface NSMutableDictionary(Utilities)
- (void)mt_removeNaNValues;
@end

@implementation NSMutableDictionary(Utilities)

- (void)mt_removeNaNValues
{
  v3 = [a1 keysOfEntriesPassingTest:&__block_literal_global_22];
  v2 = [v3 allObjects];
  [a1 removeObjectsForKeys:v2];
}

@end