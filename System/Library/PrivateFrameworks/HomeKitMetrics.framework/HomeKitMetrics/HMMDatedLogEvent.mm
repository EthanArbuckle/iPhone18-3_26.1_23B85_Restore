@interface HMMDatedLogEvent
- (HMMDatedLogEvent)init;
- (NSDate)endDate;
- (void)markEndTime;
@end

@implementation HMMDatedLogEvent

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
  v5.super_class = HMMDatedLogEvent;
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

- (HMMDatedLogEvent)init
{
  v6.receiver = self;
  v6.super_class = HMMDatedLogEvent;
  v2 = [(HMMLogEvent *)&v6 init];
  if (v2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    startDate = v2->_startDate;
    v2->_startDate = date;
  }

  return v2;
}

@end