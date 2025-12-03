@interface HMMLogEvent
- (BOOL)confirmSubmission;
- (BOOL)isSubmitted;
- (HMMLogEvent)init;
- (HMMLogEvent)initWithStartTime:(double)time;
- (double)duration;
- (double)endTime;
- (void)markEndTime;
@end

@implementation HMMLogEvent

- (HMMLogEvent)init
{
  v6.receiver = self;
  v6.super_class = HMMLogEvent;
  v2 = [(HMMLogEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_submitted = 0;
    +[HMMLogEvent currentTime];
    v3->_startTime = v4;
  }

  return v3;
}

- (void)markEndTime
{
  os_unfair_lock_lock_with_options();
  if (self->_endTime == 0.0)
  {
    +[HMMLogEvent currentTime];
    self->_endTime = v3;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)confirmSubmission
{
  os_unfair_lock_lock_with_options();
  submitted = self->_submitted;
  self->_submitted = 1;
  os_unfair_lock_unlock(&self->_lock);
  return !submitted;
}

- (double)duration
{
  [(HMMLogEvent *)self endTime];
  v4 = v3;
  [(HMMLogEvent *)self startTime];
  return v4 - v5;
}

- (double)endTime
{
  os_unfair_lock_lock_with_options();
  endTime = self->_endTime;
  os_unfair_lock_unlock(&self->_lock);
  return endTime;
}

- (BOOL)isSubmitted
{
  os_unfair_lock_lock_with_options();
  submitted = self->_submitted;
  os_unfair_lock_unlock(&self->_lock);
  return submitted;
}

- (HMMLogEvent)initWithStartTime:(double)time
{
  v5.receiver = self;
  v5.super_class = HMMLogEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_submitted = 0;
    result->_startTime = time;
  }

  return result;
}

@end