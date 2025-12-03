@interface HMDAudioAnalysisNotificationReceivedLogEvent
- (HMDAudioAnalysisNotificationReceivedLogEvent)initWithReason:(unint64_t)reason state:(unint64_t)state notificationSentDate:(id)date;
- (NSDate)endDate;
- (NSDictionary)coreAnalyticsEventDictionary;
- (double)latency;
- (void)markEndTime;
@end

@implementation HMDAudioAnalysisNotificationReceivedLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"latency";
  v3 = MEMORY[0x277CCABB0];
  [(HMDAudioAnalysisNotificationReceivedLogEvent *)self latency];
  v5 = [v3 numberWithInteger:(v4 * 1000.0)];
  v12[0] = v5;
  v11[1] = @"reason";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAudioAnalysisNotificationReceivedLogEvent reason](self, "reason")}];
  v12[1] = v6;
  v11[2] = @"state";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAudioAnalysisNotificationReceivedLogEvent state](self, "state")}];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (double)latency
{
  if (![(HMMLogEvent *)self isSubmitted])
  {
    return 0.0;
  }

  endDate = [(HMDAudioAnalysisNotificationReceivedLogEvent *)self endDate];
  notificationSentDate = [(HMDAudioAnalysisNotificationReceivedLogEvent *)self notificationSentDate];
  [endDate timeIntervalSinceDate:notificationSentDate];
  v6 = v5;

  return v6;
}

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
  v5.super_class = HMDAudioAnalysisNotificationReceivedLogEvent;
  [(HMMLogEvent *)&v5 markEndTime];
  os_unfair_lock_lock_with_options();
  if (!self->_endDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    endDate = self->_endDate;
    self->_endDate = date;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDAudioAnalysisNotificationReceivedLogEvent)initWithReason:(unint64_t)reason state:(unint64_t)state notificationSentDate:(id)date
{
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = HMDAudioAnalysisNotificationReceivedLogEvent;
  v10 = [(HMMLogEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_state = state;
    v10->_reason = reason;
    objc_storeStrong(&v10->_notificationSentDate, date);
  }

  return v11;
}

@end