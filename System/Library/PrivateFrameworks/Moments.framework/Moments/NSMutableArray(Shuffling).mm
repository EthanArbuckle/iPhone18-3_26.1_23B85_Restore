@interface NSMutableArray(Shuffling)
- (uint64_t)shuffleWithSeed:()Shuffling;
- (unint64_t)shuffle;
@end

@implementation NSMutableArray(Shuffling)

- (unint64_t)shuffle
{
  result = [self count];
  v3 = result - 2;
  if (result >= 2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    do
    {
      result = [self exchangeObjectAtIndex:v5 withObjectAtIndex:arc4random_uniform(v4--) + v6];
      v5 = ++v6;
    }

    while (v3 >= v6);
  }

  return result;
}

- (uint64_t)shuffleWithSeed:()Shuffling
{
  result = [self count];
  v6 = result;
  if (result >= 2)
  {
    srand(a3);
    v7 = v6 - 1;
    do
    {
      result = [self exchangeObjectAtIndex:v7-- withObjectAtIndex:rand() % v6--];
    }

    while (v7);
  }

  return result;
}

@end