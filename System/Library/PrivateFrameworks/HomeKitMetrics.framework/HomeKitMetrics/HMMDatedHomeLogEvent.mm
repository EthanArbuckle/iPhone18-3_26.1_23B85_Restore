@interface HMMDatedHomeLogEvent
- (HMMDatedHomeLogEvent)initWithHomeUUID:(id)d;
- (HMMDatedHomeLogEvent)initWithStartTime:(double)time homeUUID:(id)d;
- (NSDate)endDate;
- (void)markEndTime;
@end

@implementation HMMDatedHomeLogEvent

- (NSDate)endDate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_endDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)markEndTime
{
  v5.receiver = self;
  v5.super_class = HMMDatedHomeLogEvent;
  [(HMMLogEvent *)&v5 markEndTime];
  os_unfair_lock_lock_with_options();
  if (!self->_endDate)
  {
    v3 = HMMLogEventEndDateAfterStartDate(self->_startDate);
    endDate = self->_endDate;
    self->_endDate = v3;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (HMMDatedHomeLogEvent)initWithStartTime:(double)time homeUUID:(id)d
{
  v8.receiver = self;
  v8.super_class = HMMDatedHomeLogEvent;
  v4 = [(HMMHomeLogEvent *)&v8 initWithStartTime:d homeUUID:time];
  if (v4)
  {
    date = [MEMORY[0x277CBEAA8] date];
    startDate = v4->_startDate;
    v4->_startDate = date;
  }

  return v4;
}

- (HMMDatedHomeLogEvent)initWithHomeUUID:(id)d
{
  v7.receiver = self;
  v7.super_class = HMMDatedHomeLogEvent;
  v3 = [(HMMHomeLogEvent *)&v7 initWithHomeUUID:d];
  if (v3)
  {
    date = [MEMORY[0x277CBEAA8] date];
    startDate = v3->_startDate;
    v3->_startDate = date;
  }

  return v3;
}

@end