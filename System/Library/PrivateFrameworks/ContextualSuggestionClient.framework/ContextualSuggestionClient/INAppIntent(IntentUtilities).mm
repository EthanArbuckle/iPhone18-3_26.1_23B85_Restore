@interface INAppIntent(IntentUtilities)
- (id)atx_comparableParameters;
@end

@implementation INAppIntent(IntentUtilities)

- (id)atx_comparableParameters
{
  serializedParameters = [self serializedParameters];
  v2 = [serializedParameters mutableCopy];

  [v2 setObject:0 forKeyedSubscript:@"AppIntentDescriptor"];

  return v2;
}

@end