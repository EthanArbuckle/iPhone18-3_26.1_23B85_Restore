@interface NSMutableArray(CATAdditions)
- (id)cat_popFirstObject;
- (void)cat_removeFirstObjectMatching:()CATAdditions;
@end

@implementation NSMutableArray(CATAdditions)

- (void)cat_removeFirstObjectMatching:()CATAdditions
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__NSMutableArray_CATAdditions__cat_removeFirstObjectMatching___block_invoke;
  v7[3] = &unk_278DA71B8;
  v5 = v4;
  v8 = v5;
  v6 = [a1 indexOfObjectPassingTest:v7];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a1 removeObjectAtIndex:v6];
  }
}

- (id)cat_popFirstObject
{
  v2 = [a1 firstObject];
  if (v2)
  {
    [a1 removeObjectAtIndex:0];
  }

  return v2;
}

@end