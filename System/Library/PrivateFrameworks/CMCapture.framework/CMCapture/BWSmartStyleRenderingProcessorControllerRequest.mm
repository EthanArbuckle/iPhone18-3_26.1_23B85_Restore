@interface BWSmartStyleRenderingProcessorControllerRequest
- (BOOL)readyForProcessing;
@end

@implementation BWSmartStyleRenderingProcessorControllerRequest

- (BOOL)readyForProcessing
{
  if ([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)self input] inputFrame])
  {
    return 1;
  }

  v4 = [(BWStillImageProcessorControllerRequest *)self input];

  return [(BWStillImageProcessorControllerInput *)v4 addFrameFailed];
}

@end