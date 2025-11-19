@interface _IMTimingInstance
+ (id)createTimingInstanceWithStartTime:(float)a3;
- (_IMTimingInstance)init;
- (void)startUsingTime:(double)a3;
- (void)stopUsingTime:(double)a3;
@end

@implementation _IMTimingInstance

- (_IMTimingInstance)init
{
  v3.receiver = self;
  v3.super_class = _IMTimingInstance;
  result = [(_IMTimingInstance *)&v3 init];
  if (result)
  {
    result->_startTiming = 0.0;
    result->_stopTiming = 0.0;
    result->_isRunning = 0;
    result->_totalTime = 0.0;
  }

  return result;
}

+ (id)createTimingInstanceWithStartTime:(float)a3
{
  v4 = objc_alloc_init(_IMTimingInstance);
  if (v4)
  {
    v4->_startTiming = a3;
    v4->_stopTiming = a3;
    v4->_totalTime = 0.0;
    v4->_isRunning = 0;
  }

  return v4;
}

- (void)startUsingTime:(double)a3
{
  self->_startTiming = a3;
  self->_stopTiming = a3;
  self->_isRunning = 1;
}

- (void)stopUsingTime:(double)a3
{
  if (self->_isRunning)
  {
    v3 = self->_totalTime + a3 - self->_startTiming;
    self->_stopTiming = a3;
    self->_totalTime = v3;
  }

  self->_isRunning = 0;
}

@end