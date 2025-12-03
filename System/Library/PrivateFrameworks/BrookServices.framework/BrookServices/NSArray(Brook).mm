@interface NSArray(Brook)
- (id)brk_shuffledArray;
@end

@implementation NSArray(Brook)

- (id)brk_shuffledArray
{
  v2 = [self count];
  if (v2 > 1)
  {
    v4 = v2;
    v5 = [self mutableCopy];
    v6 = 0;
    do
    {
      [v5 exchangeObjectAtIndex:v6 withObjectAtIndex:v6 + arc4random_uniform(v4)];
      ++v6;
      --v4;
    }

    while (v4 != 1);
    selfCopy = [v5 copy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end