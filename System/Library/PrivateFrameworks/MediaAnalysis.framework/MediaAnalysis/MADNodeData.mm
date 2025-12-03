@interface MADNodeData
- (MADNodeData)initWithCurrentFrameResource:(id)resource nextSampleBuffer:(opaqueCMSampleBuffer *)buffer;
@end

@implementation MADNodeData

- (MADNodeData)initWithCurrentFrameResource:(id)resource nextSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  resourceCopy = resource;
  v11.receiver = self;
  v11.super_class = MADNodeData;
  v8 = [(MADNodeData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_currentFrame, resource);
    v9->_nextSample = buffer;
  }

  return v9;
}

@end