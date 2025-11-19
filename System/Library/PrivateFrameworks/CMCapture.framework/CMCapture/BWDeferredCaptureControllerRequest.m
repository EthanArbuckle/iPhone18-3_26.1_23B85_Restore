@interface BWDeferredCaptureControllerRequest
- (BOOL)readyForProcessing;
@end

@implementation BWDeferredCaptureControllerRequest

- (BOOL)readyForProcessing
{
  v2 = [(BWStillImageProcessorControllerRequest *)self input];

  return [(BWDeferredCaptureControllerInput *)&v2->super.isa readyForProcessing];
}

@end