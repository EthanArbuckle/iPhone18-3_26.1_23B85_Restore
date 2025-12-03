@interface BWStereoDisparityRequest
- (BOOL)readyForProcessing;
@end

@implementation BWStereoDisparityRequest

- (BOOL)readyForProcessing
{
  referenceSbuf = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)self input] referenceSbuf];
  if (referenceSbuf)
  {
    LOBYTE(referenceSbuf) = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)self input] auxiliarySbuf]!= 0;
  }

  return referenceSbuf;
}

@end