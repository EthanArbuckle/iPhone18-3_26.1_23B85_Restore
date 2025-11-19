@interface NSSet(BMUtilities)
- (id)bm_setBySubtractingSet:()BMUtilities;
@end

@implementation NSSet(BMUtilities)

- (id)bm_setBySubtractingSet:()BMUtilities
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 minusSet:v4];

  v6 = [v5 copy];

  return v6;
}

@end