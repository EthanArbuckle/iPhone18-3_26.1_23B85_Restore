@interface DDRFakeTask
- (DDRFakeTask)init;
- (DDRFakeTask)initWithDuration:(double)duration;
- (void)run;
@end

@implementation DDRFakeTask

- (DDRFakeTask)init
{
  v3.receiver = self;
  v3.super_class = DDRFakeTask;
  result = [(DDRFakeTask *)&v3 init];
  if (result)
  {
    result->_duration = 6.0;
  }

  return result;
}

- (DDRFakeTask)initWithDuration:(double)duration
{
  v5.receiver = self;
  v5.super_class = DDRFakeTask;
  result = [(DDRFakeTask *)&v5 init];
  if (result)
  {
    result->_duration = duration;
  }

  return result;
}

- (void)run
{
  duration = self->_duration;
  if (duration != 0.0)
  {
    sleep(duration);
  }
}

@end