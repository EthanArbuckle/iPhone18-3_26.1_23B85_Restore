@interface MTLCaptureDescriptorInternal
- (MTLCaptureDescriptorInternal)init;
@end

@implementation MTLCaptureDescriptorInternal

- (MTLCaptureDescriptorInternal)init
{
  v6.receiver = self;
  v6.super_class = MTLCaptureDescriptorInternal;
  v2 = [(MTLCaptureDescriptorInternal *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_apiTriggeredCapture = 1;
    v4 = v2;
  }

  return v3;
}

@end