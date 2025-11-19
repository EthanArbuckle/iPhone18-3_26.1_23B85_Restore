@interface DNDModeAssertionUserRequestedLifetime
- (BOOL)isEqual:(id)a3;
@end

@implementation DNDModeAssertionUserRequestedLifetime

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    isKindOfClass = 1;
  }

  else
  {
    v3 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end