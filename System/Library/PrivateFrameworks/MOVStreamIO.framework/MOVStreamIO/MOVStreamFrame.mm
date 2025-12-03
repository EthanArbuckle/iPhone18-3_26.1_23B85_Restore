@interface MOVStreamFrame
- (MOVStreamFrame)initWithPixelBuffer:(__CVBuffer *)buffer timeStamp:(double)stamp context:(id)context;
- (void)dealloc;
@end

@implementation MOVStreamFrame

- (MOVStreamFrame)initWithPixelBuffer:(__CVBuffer *)buffer timeStamp:(double)stamp context:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = MOVStreamFrame;
  v10 = [(MOVStreamFrame *)&v13 init];
  if (v10)
  {
    CVPixelBufferRetain(buffer);
    *(v10 + 1) = buffer;
    *(v10 + 2) = stamp;
    CMTimeMakeWithSeconds(&v12, stamp, 1000000);
    *(v10 + 32) = v12;
    objc_storeStrong(v10 + 3, context);
  }

  return v10;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  v3.receiver = self;
  v3.super_class = MOVStreamFrame;
  [(MOVStreamFrame *)&v3 dealloc];
}

@end