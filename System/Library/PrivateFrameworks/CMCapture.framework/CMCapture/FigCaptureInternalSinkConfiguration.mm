@interface FigCaptureInternalSinkConfiguration
- (FigCaptureInternalSinkConfiguration)initWithSinkSubType:(int)a3;
@end

@implementation FigCaptureInternalSinkConfiguration

- (FigCaptureInternalSinkConfiguration)initWithSinkSubType:(int)a3
{
  v5.receiver = self;
  v5.super_class = FigCaptureInternalSinkConfiguration;
  result = [(FigCaptureInternalSinkConfiguration *)&v5 init];
  if (result)
  {
    *(&result->super._deferredStartEnabled + 1) = a3;
  }

  return result;
}

@end