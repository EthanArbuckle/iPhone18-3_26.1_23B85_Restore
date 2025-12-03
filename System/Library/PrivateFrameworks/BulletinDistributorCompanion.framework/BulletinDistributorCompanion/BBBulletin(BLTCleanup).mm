@interface BBBulletin(BLTCleanup)
- (void)bltContext;
@end

@implementation BBBulletin(BLTCleanup)

- (void)bltContext
{
  context = [self context];
  v2 = [context objectForKeyedSubscript:@"BLTWatchLegacyMap"];
  if (v2)
  {
    v3 = [context mutableCopy];

    [v3 removeObjectForKey:@"BLTWatchLegacyMap"];
    context = v3;
  }

  else
  {
    v3 = 0;
  }

  v4 = context;

  return context;
}

@end