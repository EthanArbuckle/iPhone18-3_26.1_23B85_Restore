@interface NSMutableArray(HearingCore)
- (void)hcSafeAddObject:()HearingCore;
@end

@implementation NSMutableArray(HearingCore)

- (void)hcSafeAddObject:()HearingCore
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

@end