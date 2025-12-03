@interface BBBulletin(VOIPCall)
- (uint64_t)blt_isVOIPCall;
@end

@implementation BBBulletin(VOIPCall)

- (uint64_t)blt_isVOIPCall
{
  sound = [self sound];
  alertConfiguration = [sound alertConfiguration];
  if ([alertConfiguration type] == 1)
  {
    sectionID = [self sectionID];
    v5 = [sectionID hasPrefix:@"com.apple."] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end