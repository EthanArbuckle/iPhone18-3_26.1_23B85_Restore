@interface NUImageBufferRenderRequest
- (id)newRenderJob;
@end

@implementation NUImageBufferRenderRequest

- (id)newRenderJob
{
  v3 = [NUImageBufferRenderJob alloc];

  return [(NUImageRenderJob *)v3 initWithImageRequest:self];
}

@end