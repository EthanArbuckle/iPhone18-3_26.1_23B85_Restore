@interface BWSWFRProcessorControllerRequest
- (BOOL)readyForProcessing;
@end

@implementation BWSWFRProcessorControllerRequest

- (BOOL)readyForProcessing
{
  if ([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)self input] flashFrame]&& [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)self input] ambientFrame])
  {
    return 1;
  }

  input = [(BWStillImageProcessorControllerRequest *)self input];

  return [(BWStillImageProcessorControllerInput *)input addFrameFailed];
}

@end