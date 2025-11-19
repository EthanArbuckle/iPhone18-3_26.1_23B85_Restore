@interface INPlayMediaIntent(PrewarmAppAdditions)
- (uint64_t)ins_shouldPrewarmApp;
@end

@implementation INPlayMediaIntent(PrewarmAppAdditions)

- (uint64_t)ins_shouldPrewarmApp
{
  v1 = [a1 privatePlayMediaIntentData];
  v2 = [v1 internalSignals];
  v3 = [v2 containsObject:@"PrewarmApp"];

  return v3;
}

@end