@interface NSIndexSet(GKCollectionUtils)
- (id)_gkIndexSetByAddingIndex:()GKCollectionUtils;
- (id)_gkIndexSetByRemovingIndex:()GKCollectionUtils;
@end

@implementation NSIndexSet(GKCollectionUtils)

- (id)_gkIndexSetByRemovingIndex:()GKCollectionUtils
{
  v4 = [a1 mutableCopy];
  [v4 removeIndex:a3];

  return v4;
}

- (id)_gkIndexSetByAddingIndex:()GKCollectionUtils
{
  v4 = [a1 mutableCopy];
  [v4 addIndex:a3];

  return v4;
}

@end