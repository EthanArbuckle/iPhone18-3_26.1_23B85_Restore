@interface BBBulletin(VOIPCall)
- (uint64_t)blt_isVOIPCall;
@end

@implementation BBBulletin(VOIPCall)

- (uint64_t)blt_isVOIPCall
{
  v2 = [a1 sound];
  v3 = [v2 alertConfiguration];
  if ([v3 type] == 1)
  {
    v4 = [a1 sectionID];
    v5 = [v4 hasPrefix:@"com.apple."] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end