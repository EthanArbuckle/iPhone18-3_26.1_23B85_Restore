@interface NSDictionary(LayeredIconAdditions)
- (id)_IS_layerObjectForKey:()LayeredIconAdditions;
@end

@implementation NSDictionary(LayeredIconAdditions)

- (id)_IS_layerObjectForKey:()LayeredIconAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v3 = [self objectForKey:v2];

  if (!v3)
  {
    v3 = [self objectForKey:&unk_1F1A652F8];
  }

  return v3;
}

@end