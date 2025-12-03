@interface INPlayMediaIntent(PrewarmAppAdditions)
- (uint64_t)ins_shouldPrewarmApp;
@end

@implementation INPlayMediaIntent(PrewarmAppAdditions)

- (uint64_t)ins_shouldPrewarmApp
{
  privatePlayMediaIntentData = [self privatePlayMediaIntentData];
  internalSignals = [privatePlayMediaIntentData internalSignals];
  v3 = [internalSignals containsObject:@"PrewarmApp"];

  return v3;
}

@end