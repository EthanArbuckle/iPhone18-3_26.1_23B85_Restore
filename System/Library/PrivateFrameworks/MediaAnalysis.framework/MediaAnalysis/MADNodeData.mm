@interface MADNodeData
- (MADNodeData)initWithCurrentFrameResource:(id)a3 nextSampleBuffer:(opaqueCMSampleBuffer *)a4;
@end

@implementation MADNodeData

- (MADNodeData)initWithCurrentFrameResource:(id)a3 nextSampleBuffer:(opaqueCMSampleBuffer *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MADNodeData;
  v8 = [(MADNodeData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_currentFrame, a3);
    v9->_nextSample = a4;
  }

  return v9;
}

@end