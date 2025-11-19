@interface NSMutableArray(HearingCore)
- (void)hcSafeAddObject:()HearingCore;
@end

@implementation NSMutableArray(HearingCore)

- (void)hcSafeAddObject:()HearingCore
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

@end