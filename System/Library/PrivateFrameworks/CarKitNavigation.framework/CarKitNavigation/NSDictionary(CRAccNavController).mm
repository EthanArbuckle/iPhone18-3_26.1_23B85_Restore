@interface NSDictionary(CRAccNavController)
- (id)firstKey;
- (id)keyAfter:()CRAccNavController;
@end

@implementation NSDictionary(CRAccNavController)

- (id)keyAfter:()CRAccNavController
{
  if (a3)
  {
    v4 = a3;
    allKeys = [self allKeys];
    v6 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v7 = [v6 indexOfObject:v4];
    if (v7 + 1 >= [v6 count])
    {
      v8 = 0;
    }

    else
    {
      v8 = [v6 objectAtIndexedSubscript:v7 + 1];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)firstKey
{
  allKeys = [self allKeys];
  v2 = [allKeys sortedArrayUsingSelector:sel_compare_];

  firstObject = [v2 firstObject];

  return firstObject;
}

@end