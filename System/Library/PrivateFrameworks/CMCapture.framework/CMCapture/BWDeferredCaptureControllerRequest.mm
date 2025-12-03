@interface BWDeferredCaptureControllerRequest
- (BOOL)readyForProcessing;
@end

@implementation BWDeferredCaptureControllerRequest

- (BOOL)readyForProcessing
{
  input = [(BWStillImageProcessorControllerRequest *)self input];

  return [(BWDeferredCaptureControllerInput *)&input->super.isa readyForProcessing];
}

@end