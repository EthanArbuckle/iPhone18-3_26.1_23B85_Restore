@interface HMDHomeActivityStateVacationTransitionDailyCountLogEvent
- (HMDHomeActivityStateVacationTransitionDailyCountLogEvent)initWithDetectorInitiatedCount:(id)count timerFiredCount:(id)firedCount;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)totalCount;
@end

@implementation HMDHomeActivityStateVacationTransitionDailyCountLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"detectorInitiatedCount";
  detectorInitiatedCount = [(HMDHomeActivityStateVacationTransitionDailyCountLogEvent *)self detectorInitiatedCount];
  v10[0] = detectorInitiatedCount;
  v9[1] = @"timerFiredCount";
  timerFiredCount = [(HMDHomeActivityStateVacationTransitionDailyCountLogEvent *)self timerFiredCount];
  v10[1] = timerFiredCount;
  v9[2] = @"totalCount";
  totalCount = [(HMDHomeActivityStateVacationTransitionDailyCountLogEvent *)self totalCount];
  v10[2] = totalCount;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)totalCount
{
  v3 = MEMORY[0x277CCABB0];
  detectorInitiatedCount = [(HMDHomeActivityStateVacationTransitionDailyCountLogEvent *)self detectorInitiatedCount];
  intValue = [detectorInitiatedCount intValue];
  timerFiredCount = [(HMDHomeActivityStateVacationTransitionDailyCountLogEvent *)self timerFiredCount];
  v7 = [v3 numberWithInt:{objc_msgSend(timerFiredCount, "intValue") + intValue}];

  return v7;
}

- (HMDHomeActivityStateVacationTransitionDailyCountLogEvent)initWithDetectorInitiatedCount:(id)count timerFiredCount:(id)firedCount
{
  countCopy = count;
  firedCountCopy = firedCount;
  v12.receiver = self;
  v12.super_class = HMDHomeActivityStateVacationTransitionDailyCountLogEvent;
  v9 = [(HMMLogEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_detectorInitiatedCount, count);
    objc_storeStrong(&v10->_timerFiredCount, firedCount);
  }

  return v10;
}

@end