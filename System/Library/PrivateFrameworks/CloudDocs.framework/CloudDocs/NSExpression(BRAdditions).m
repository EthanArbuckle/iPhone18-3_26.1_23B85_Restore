@interface NSExpression(BRAdditions)
- (uint64_t)br_isConstantValueExpression:()BRAdditions;
- (uint64_t)br_isKeyPathExpression:()BRAdditions;
@end

@implementation NSExpression(BRAdditions)

- (uint64_t)br_isKeyPathExpression:()BRAdditions
{
  v4 = a3;
  if ([a1 expressionType] == 3)
  {
    v5 = [a1 keyPath];
    v6 = [v5 isEqualToString:v4];
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
  if ([a1 expressionType])
  {
    v5 = 0;
  }

  else
  {
    v6 = [a1 constantValue];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v6 isEqualToString:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end