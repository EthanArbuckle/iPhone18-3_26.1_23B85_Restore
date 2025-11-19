@interface HMDHomeActivityStateVacationTransitionDailyCountLogEvent
- (HMDHomeActivityStateVacationTransitionDailyCountLogEvent)initWithDetectorInitiatedCount:(id)a3 timerFiredCount:(id)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)totalCount;
@end

@implementation HMDHomeActivityStateVacationTransitionDailyCountLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"detectorInitiatedCount";
  v3 = [(HMDHomeActivityStateVacationTransitionDailyCountLogEvent *)self detectorInitiatedCount];
  v10[0] = v3;
  v9[1] = @"timerFiredCount";
  v4 = [(HMDHomeActivityStateVacationTransitionDailyCountLogEvent *)self timerFiredCount];
  v10[1] = v4;
  v9[2] = @"totalCount";
  v5 = [(HMDHomeActivityStateVacationTransitionDailyCountLogEvent *)self totalCount];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)totalCount
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(HMDHomeActivityStateVacationTransitionDailyCountLogEvent *)self detectorInitiatedCount];
  v5 = [v4 intValue];
  v6 = [(HMDHomeActivityStateVacationTransitionDailyCountLogEvent *)self timerFiredCount];
  v7 = [v3 numberWithInt:{objc_msgSend(v6, "intValue") + v5}];

  return v7;
}

- (HMDHomeActivityStateVacationTransitionDailyCountLogEvent)initWithDetectorInitiatedCount:(id)a3 timerFiredCount:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDHomeActivityStateVacationTransitionDailyCountLogEvent;
  v9 = [(HMMLogEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_detectorInitiatedCount, a3);
    objc_storeStrong(&v10->_timerFiredCount, a4);
  }

  return v10;
}

@end