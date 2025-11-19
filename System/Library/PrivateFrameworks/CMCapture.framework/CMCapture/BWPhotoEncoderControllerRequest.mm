@interface BWPhotoEncoderControllerRequest
- (BOOL)readyForProcessing;
@end

@implementation BWPhotoEncoderControllerRequest

- (BOOL)readyForProcessing
{
  v2 = [(BWStillImageProcessorControllerRequest *)self input];

  return [(BWStillImageProcessorControllerInput *)v2 receivedAllFramesInSingleContainer];
}

@end