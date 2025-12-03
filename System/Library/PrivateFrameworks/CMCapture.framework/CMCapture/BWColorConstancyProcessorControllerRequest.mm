@interface BWColorConstancyProcessorControllerRequest
- (BOOL)readyForProcessing;
@end

@implementation BWColorConstancyProcessorControllerRequest

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