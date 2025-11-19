@interface NUSurfaceImageAccumulationNode
- (id)_newImage;
@end

@implementation NUSurfaceImageAccumulationNode

- (id)_newImage
{
  v3 = [(NUImageAccumulationNode *)self layout];
  v4 = [(NUImageAccumulationNode *)self pixelFormat];
  v5 = [(NUImageAccumulationNode *)self colorSpace];
  [(NUImageAccumulationNode *)self contentHeadroom];
  v6 = [NUImageFactory surfaceImageWithLayout:v3 format:v4 colorSpace:v5 headroom:?];

  return v6;
}

@end