@interface HMMDatedHomeLogEvent
- (HMMDatedHomeLogEvent)initWithHomeUUID:(id)a3;
- (HMMDatedHomeLogEvent)initWithStartTime:(double)a3 homeUUID:(id)a4;
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

- (HMMDatedHomeLogEvent)initWithStartTime:(double)a3 homeUUID:(id)a4
{
  v8.receiver = self;
  v8.super_class = HMMDatedHomeLogEvent;
  v4 = [(HMMHomeLogEvent *)&v8 initWithStartTime:a4 homeUUID:a3];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    startDate = v4->_startDate;
    v4->_startDate = v5;
  }

  return v4;
}

- (HMMDatedHomeLogEvent)initWithHomeUUID:(id)a3
{
  v7.receiver = self;
  v7.super_class = HMMDatedHomeLogEvent;
  v3 = [(HMMHomeLogEvent *)&v7 initWithHomeUUID:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    startDate = v3->_startDate;
    v3->_startDate = v4;
  }

  return v3;
}

@end