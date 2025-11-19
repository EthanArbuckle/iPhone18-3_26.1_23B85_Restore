@interface BWTiledInferenceAdapter
- (id)inferenceProviderForType:(int)a3 version:(id)a4 configuration:(id)a5 resourceProvider:(id)a6 status:(int *)a7;
@end

@implementation BWTiledInferenceAdapter

- (id)inferenceProviderForType:(int)a3 version:(id)a4 configuration:(id)a5 resourceProvider:(id)a6 status:(int *)a7
{
  if (a7)
  {
    *a7 = 0;
  }

  return 0;
}

@end