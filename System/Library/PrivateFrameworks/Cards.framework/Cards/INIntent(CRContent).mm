@interface INIntent(CRContent)
- (id)underlyingInteraction;
@end

@implementation INIntent(CRContent)

- (id)underlyingInteraction
{
  v1 = [objc_alloc(MEMORY[0x277CD3D58]) initWithIntent:self response:0];

  return v1;
}

@end