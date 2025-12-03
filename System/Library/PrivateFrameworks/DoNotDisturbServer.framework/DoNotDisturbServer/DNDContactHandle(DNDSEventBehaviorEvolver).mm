@interface DNDContactHandle(DNDSEventBehaviorEvolver)
- (BOOL)isPopulated;
@end

@implementation DNDContactHandle(DNDSEventBehaviorEvolver)

- (BOOL)isPopulated
{
  contactIdentifier = [self contactIdentifier];
  if ([contactIdentifier length])
  {
    v3 = 1;
  }

  else
  {
    value = [self value];
    v3 = [value length] != 0;
  }

  return v3;
}

@end