@interface BWPhotoEncoderControllerRequest
- (BOOL)readyForProcessing;
@end

@implementation BWPhotoEncoderControllerRequest

- (BOOL)readyForProcessing
{
  input = [(BWStillImageProcessorControllerRequest *)self input];

  return [(BWStillImageProcessorControllerInput *)input receivedAllFramesInSingleContainer];
}

@end