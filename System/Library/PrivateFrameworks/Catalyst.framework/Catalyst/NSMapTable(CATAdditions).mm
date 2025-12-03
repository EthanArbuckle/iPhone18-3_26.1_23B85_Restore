@interface NSMapTable(CATAdditions)
- (BOOL)cat_containsKey:()CATAdditions;
@end

@implementation NSMapTable(CATAdditions)

- (BOOL)cat_containsKey:()CATAdditions
{
  v1 = [self objectForKey:?];
  v2 = v1 != 0;

  return v2;
}

@end