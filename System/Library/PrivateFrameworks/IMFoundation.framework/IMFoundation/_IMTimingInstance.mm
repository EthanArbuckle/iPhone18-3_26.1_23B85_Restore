@interface _IMTimingInstance
+ (id)createTimingInstanceWithStartTime:(float)time;
- (_IMTimingInstance)init;
- (void)startUsingTime:(double)time;
- (void)stopUsingTime:(double)time;
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

+ (id)createTimingInstanceWithStartTime:(float)time
{
  v4 = objc_alloc_init(_IMTimingInstance);
  if (v4)
  {
    v4->_startTiming = time;
    v4->_stopTiming = time;
    v4->_totalTime = 0.0;
    v4->_isRunning = 0;
  }

  return v4;
}

- (void)startUsingTime:(double)time
{
  self->_startTiming = time;
  self->_stopTiming = time;
  self->_isRunning = 1;
}

- (void)stopUsingTime:(double)time
{
  if (self->_isRunning)
  {
    v3 = self->_totalTime + time - self->_startTiming;
    self->_stopTiming = time;
    self->_totalTime = v3;
  }

  self->_isRunning = 0;
}

@end