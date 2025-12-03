@interface LSPropertyList(Helpers)
- (uint64_t)BOOLForKey:()Helpers;
@end

@implementation LSPropertyList(Helpers)

- (uint64_t)BOOLForKey:()Helpers
{
  v4 = a3;
  v5 = [self objectForKey:v4 ofClass:objc_opt_class()];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end