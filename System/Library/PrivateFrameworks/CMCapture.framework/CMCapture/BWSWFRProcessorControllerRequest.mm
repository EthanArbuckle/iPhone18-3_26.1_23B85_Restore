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

  v4 = [(BWStillImageProcessorControllerRequest *)self input];

  return [(BWStillImageProcessorControllerInput *)v4 addFrameFailed];
}

@end