@interface NSObject(ICAccessibility)
- (id)icaxValueForKey:()ICAccessibility;
- (id)icaxValueForKeyPath:()ICAccessibility;
- (uint64_t)icaxRespondsToSelector:()ICAccessibility fromExtrasProtocol:;
@end

@implementation NSObject(ICAccessibility)

- (uint64_t)icaxRespondsToSelector:()ICAccessibility fromExtrasProtocol:
{
  v4 = [self conformsToProtocol:a4];
  if (v4)
  {
    LOBYTE(v4) = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)icaxValueForKey:()ICAccessibility
{
  v4 = a3;
  v5 = [self valueForKey:v4];

  return v5;
}

- (id)icaxValueForKeyPath:()ICAccessibility
{
  v4 = a3;
  v5 = [self valueForKeyPath:v4];

  return v5;
}

@end