@interface NSExpression(BRAdditions)
- (uint64_t)br_isConstantValueExpression:()BRAdditions;
- (uint64_t)br_isKeyPathExpression:()BRAdditions;
@end

@implementation NSExpression(BRAdditions)

- (uint64_t)br_isKeyPathExpression:()BRAdditions
{
  v4 = a3;
  if ([self expressionType] == 3)
  {
    keyPath = [self keyPath];
    v6 = [keyPath isEqualToString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)br_isConstantValueExpression:()BRAdditions
{
  v4 = a3;
  if ([self expressionType])
  {
    v5 = 0;
  }

  else
  {
    constantValue = [self constantValue];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [constantValue isEqualToString:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end