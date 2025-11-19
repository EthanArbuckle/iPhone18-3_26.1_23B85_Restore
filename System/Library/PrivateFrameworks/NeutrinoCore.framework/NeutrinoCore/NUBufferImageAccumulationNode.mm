@interface NUBufferImageAccumulationNode
- (id)_newImage;
@end

@implementation NUBufferImageAccumulationNode

- (id)_newImage
{
  v3 = [(NUImageAccumulationNode *)self layout];
  v4 = [(NUImageAccumulationNode *)self pixelFormat];
  v5 = [(NUImageAccumulationNode *)self colorSpace];
  [(NUImageAccumulationNode *)self contentHeadroom];
  v6 = [NUImageFactory bufferImageWithLayout:v3 format:v4 colorSpace:v5 headroom:?];

  return v6;
}

@end