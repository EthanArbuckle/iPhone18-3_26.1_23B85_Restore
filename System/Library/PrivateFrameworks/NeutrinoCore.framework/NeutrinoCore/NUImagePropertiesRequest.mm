@interface NUImagePropertiesRequest
- (id)newRenderJob;
- (int64_t)mediaComponentType;
@end

@implementation NUImagePropertiesRequest

- (int64_t)mediaComponentType
{
  internalComposition = [(NURenderRequest *)self internalComposition];
  mediaType = [internalComposition mediaType];

  if (mediaType == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)newRenderJob
{
  v3 = [NUImagePropertiesJob alloc];

  return [(NURenderJob *)v3 initWithRequest:self];
}

@end