@interface LSPropertyList(Helpers)
- (uint64_t)BOOLForKey:()Helpers;
@end

@implementation LSPropertyList(Helpers)

- (uint64_t)BOOLForKey:()Helpers
{
  v4 = a3;
  v5 = [a1 objectForKey:v4 ofClass:objc_opt_class()];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end