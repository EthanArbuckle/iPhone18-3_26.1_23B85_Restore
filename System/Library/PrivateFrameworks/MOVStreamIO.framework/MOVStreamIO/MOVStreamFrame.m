@interface MOVStreamFrame
- (MOVStreamFrame)initWithPixelBuffer:(__CVBuffer *)a3 timeStamp:(double)a4 context:(id)a5;
- (void)dealloc;
@end

@implementation MOVStreamFrame

- (MOVStreamFrame)initWithPixelBuffer:(__CVBuffer *)a3 timeStamp:(double)a4 context:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = MOVStreamFrame;
  v10 = [(MOVStreamFrame *)&v13 init];
  if (v10)
  {
    CVPixelBufferRetain(a3);
    *(v10 + 1) = a3;
    *(v10 + 2) = a4;
    CMTimeMakeWithSeconds(&v12, a4, 1000000);
    *(v10 + 32) = v12;
    objc_storeStrong(v10 + 3, a5);
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