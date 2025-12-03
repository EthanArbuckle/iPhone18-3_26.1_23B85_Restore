@interface NUVideoAttributesRequest
- (id)newRenderJob;
- (int64_t)mediaComponentType;
@end

@implementation NUVideoAttributesRequest

- (int64_t)mediaComponentType
{
  composition = [(NURenderRequest *)self composition];
  mediaType = [composition mediaType];

  if ((mediaType - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1C03C2EA8[mediaType - 1];
  }
}

- (id)newRenderJob
{
  v3 = [NUVideoAttributesJob alloc];

  return [(NURenderJob *)v3 initWithRequest:self];
}

@end