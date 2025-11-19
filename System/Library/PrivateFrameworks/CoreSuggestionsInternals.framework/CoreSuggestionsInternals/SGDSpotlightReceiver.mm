@interface SGDSpotlightReceiver
- (BOOL)_isFullyInitialized;
@end

@implementation SGDSpotlightReceiver

- (BOOL)_isFullyInitialized
{
  v2 = [(SGDSpotlightReceiver *)self suggestManager];
  v3 = v2 != 0;

  return v3;
}

@end