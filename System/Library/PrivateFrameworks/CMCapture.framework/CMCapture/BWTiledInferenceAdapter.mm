@interface BWTiledInferenceAdapter
- (id)inferenceProviderForType:(int)type version:(id)version configuration:(id)configuration resourceProvider:(id)provider status:(int *)status;
@end

@implementation BWTiledInferenceAdapter

- (id)inferenceProviderForType:(int)type version:(id)version configuration:(id)configuration resourceProvider:(id)provider status:(int *)status
{
  if (status)
  {
    *status = 0;
  }

  return 0;
}

@end