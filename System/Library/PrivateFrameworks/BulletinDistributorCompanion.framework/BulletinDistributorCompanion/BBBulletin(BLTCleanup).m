@interface BBBulletin(BLTCleanup)
- (void)bltContext;
@end

@implementation BBBulletin(BLTCleanup)

- (void)bltContext
{
  v1 = [a1 context];
  v2 = [v1 objectForKeyedSubscript:@"BLTWatchLegacyMap"];
  if (v2)
  {
    v3 = [v1 mutableCopy];

    [v3 removeObjectForKey:@"BLTWatchLegacyMap"];
    v1 = v3;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1;

  return v1;
}

@end