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

  input = [(BWStillImageProcessorControllerRequest *)self input];

  return [(BWStillImageProcessorControllerInput *)input addFrameFailed];
}

@end