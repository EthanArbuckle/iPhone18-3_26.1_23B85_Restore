@interface NUSurfaceRenderRequest
- (id)newRenderJob;
@end

@implementation NUSurfaceRenderRequest

- (id)newRenderJob
{
  v3 = [NUSurfaceRenderJob alloc];

  return [(NUImageRenderJob *)v3 initWithImageRequest:self];
}

@end