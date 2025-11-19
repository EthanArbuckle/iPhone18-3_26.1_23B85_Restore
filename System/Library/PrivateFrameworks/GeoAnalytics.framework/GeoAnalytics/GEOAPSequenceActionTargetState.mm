@interface GEOAPSequenceActionTargetState
- (BOOL)didTimeoutAt:(double)a3;
@end

@implementation GEOAPSequenceActionTargetState

- (BOOL)didTimeoutAt:(double)a3
{
  timeout = self->_timeout;
  result = timeout != 0.0 && (startTime = self->super._startTime, startTime != 0.0) && a3 - startTime >= timeout;
  return result;
}

@end