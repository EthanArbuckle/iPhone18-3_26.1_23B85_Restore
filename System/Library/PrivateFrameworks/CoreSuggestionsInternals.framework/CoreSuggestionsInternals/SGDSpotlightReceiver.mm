@interface SGDSpotlightReceiver
- (BOOL)_isFullyInitialized;
@end

@implementation SGDSpotlightReceiver

- (BOOL)_isFullyInitialized
{
  suggestManager = [(SGDSpotlightReceiver *)self suggestManager];
  v3 = suggestManager != 0;

  return v3;
}

@end