@interface NSArray(Brook)
- (id)brk_shuffledArray;
@end

@implementation NSArray(Brook)

- (id)brk_shuffledArray
{
  v2 = [a1 count];
  if (v2 > 1)
  {
    v4 = v2;
    v5 = [a1 mutableCopy];
    v6 = 0;
    do
    {
      [v5 exchangeObjectAtIndex:v6 withObjectAtIndex:v6 + arc4random_uniform(v4)];
      ++v6;
      --v4;
    }

    while (v4 != 1);
    v3 = [v5 copy];
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

@end