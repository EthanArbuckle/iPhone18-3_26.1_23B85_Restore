@interface NUVideoAttributesRequest
- (id)newRenderJob;
- (int64_t)mediaComponentType;
@end

@implementation NUVideoAttributesRequest

- (int64_t)mediaComponentType
{
  v2 = [(NURenderRequest *)self composition];
  v3 = [v2 mediaType];

  if ((v3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1C03C2EA8[v3 - 1];
  }
}

- (id)newRenderJob
{
  v3 = [NUVideoAttributesJob alloc];

  return [(NURenderJob *)v3 initWithRequest:self];
}

@end