@interface NSMutableArray(MSArrayUtilities)
- (void)MSRemoveOneObject:()MSArrayUtilities;
- (void)MSRemoveOneObjectByPointerComparison:()MSArrayUtilities;
@end

@implementation NSMutableArray(MSArrayUtilities)

- (void)MSRemoveOneObjectByPointerComparison:()MSArrayUtilities
{
  v6 = a3;
  if ([self count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [self objectAtIndex:v4];

      if (v5 == v6)
      {
        break;
      }

      if (++v4 >= [self count])
      {
        goto LABEL_7;
      }
    }

    [self removeObjectAtIndex:v4];
  }

LABEL_7:
}

- (void)MSRemoveOneObject:()MSArrayUtilities
{
  v7 = a3;
  if ([self count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [self objectAtIndex:v4];
      v6 = [v5 isEqual:v7];

      if (v6)
      {
        break;
      }

      if (++v4 >= [self count])
      {
        goto LABEL_7;
      }
    }

    [self removeObjectAtIndex:v4];
  }

LABEL_7:
}

@end