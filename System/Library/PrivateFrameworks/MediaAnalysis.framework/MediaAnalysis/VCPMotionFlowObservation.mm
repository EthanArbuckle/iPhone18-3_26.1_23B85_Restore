@interface VCPMotionFlowObservation
- (void)dealloc;
@end

@implementation VCPMotionFlowObservation

- (void)dealloc
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  v4.receiver = self;
  v4.super_class = VCPMotionFlowObservation;
  [(VCPMotionFlowObservation *)&v4 dealloc];
}

@end