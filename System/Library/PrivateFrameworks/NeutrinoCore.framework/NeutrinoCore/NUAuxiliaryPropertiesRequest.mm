@interface NUAuxiliaryPropertiesRequest
- (id)newRenderJob;
@end

@implementation NUAuxiliaryPropertiesRequest

- (id)newRenderJob
{
  v3 = [NUAuxiliaryPropertiesRenderJob alloc];

  return [(NURenderJob *)v3 initWithRequest:self];
}

@end