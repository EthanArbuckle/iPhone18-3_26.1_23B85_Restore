@interface FigCaptureInternalSinkConfiguration
- (FigCaptureInternalSinkConfiguration)initWithSinkSubType:(int)type;
@end

@implementation FigCaptureInternalSinkConfiguration

- (FigCaptureInternalSinkConfiguration)initWithSinkSubType:(int)type
{
  v5.receiver = self;
  v5.super_class = FigCaptureInternalSinkConfiguration;
  result = [(FigCaptureInternalSinkConfiguration *)&v5 init];
  if (result)
  {
    *(&result->super._deferredStartEnabled + 1) = type;
  }

  return result;
}

@end