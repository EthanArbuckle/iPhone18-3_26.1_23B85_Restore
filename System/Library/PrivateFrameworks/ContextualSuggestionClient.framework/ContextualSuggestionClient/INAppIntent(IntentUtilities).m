@interface INAppIntent(IntentUtilities)
- (id)atx_comparableParameters;
@end

@implementation INAppIntent(IntentUtilities)

- (id)atx_comparableParameters
{
  v1 = [a1 serializedParameters];
  v2 = [v1 mutableCopy];

  [v2 setObject:0 forKeyedSubscript:@"AppIntentDescriptor"];

  return v2;
}

@end