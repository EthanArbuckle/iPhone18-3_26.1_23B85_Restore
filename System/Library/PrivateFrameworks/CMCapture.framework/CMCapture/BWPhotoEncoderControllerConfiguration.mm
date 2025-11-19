@interface BWPhotoEncoderControllerConfiguration
- (void)dealloc;
@end

@implementation BWPhotoEncoderControllerConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWPhotoEncoderControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v3 dealloc];
}

@end