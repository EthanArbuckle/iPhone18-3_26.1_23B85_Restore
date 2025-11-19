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

  v4 = [(BWStillImageProcessorControllerRequest *)self input];

  return [(BWStillImageProcessorControllerInput *)v4 addFrameFailed];
}

@end