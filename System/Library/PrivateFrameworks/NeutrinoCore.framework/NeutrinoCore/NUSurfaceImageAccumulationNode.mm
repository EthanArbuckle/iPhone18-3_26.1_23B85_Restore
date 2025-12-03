@interface NUSurfaceImageAccumulationNode
- (id)_newImage;
@end

@implementation NUSurfaceImageAccumulationNode

- (id)_newImage
{
  layout = [(NUImageAccumulationNode *)self layout];
  pixelFormat = [(NUImageAccumulationNode *)self pixelFormat];
  colorSpace = [(NUImageAccumulationNode *)self colorSpace];
  [(NUImageAccumulationNode *)self contentHeadroom];
  v6 = [NUImageFactory surfaceImageWithLayout:layout format:pixelFormat colorSpace:colorSpace headroom:?];

  return v6;
}

@end