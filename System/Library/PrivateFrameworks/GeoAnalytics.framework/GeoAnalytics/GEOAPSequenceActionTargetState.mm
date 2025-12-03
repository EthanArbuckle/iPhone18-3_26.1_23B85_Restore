@interface GEOAPSequenceActionTargetState
- (BOOL)didTimeoutAt:(double)at;
@end

@implementation GEOAPSequenceActionTargetState

- (BOOL)didTimeoutAt:(double)at
{
  timeout = self->_timeout;
  result = timeout != 0.0 && (startTime = self->super._startTime, startTime != 0.0) && at - startTime >= timeout;
  return result;
}

@end