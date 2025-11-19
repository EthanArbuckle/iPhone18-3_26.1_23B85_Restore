@interface NSArray(BMUtilities)
+ (id)bm_shuffledArrayWithArray:()BMUtilities;
@end

@implementation NSArray(BMUtilities)

+ (id)bm_shuffledArrayWithArray:()BMUtilities
{
  v3 = a3;
  if ([v3 count] > 1)
  {
    v5 = [v3 mutableCopy];
    v6 = [v5 count];
    v7 = v6 - 1;
    if (v6 != 1)
    {
      do
      {
        [v5 exchangeObjectAtIndex:v7 withObjectAtIndex:arc4random_uniform(v7 + 1)];
        --v7;
      }

      while (v7);
    }

    v4 = [v5 copy];
  }

  else
  {
    v4 = [v3 copy];
  }

  return v4;
}

@end