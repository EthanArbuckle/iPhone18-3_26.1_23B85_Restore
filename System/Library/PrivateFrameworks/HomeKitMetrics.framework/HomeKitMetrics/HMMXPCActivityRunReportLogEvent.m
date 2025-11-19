@interface HMMXPCActivityRunReportLogEvent
- (HMMXPCActivityRunReportLogEvent)initWithActivityName:(id)a3 definedInterval:(double)a4 activityShouldWake:(BOOL)a5 timeSinceLastRun:(double)a6;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMMXPCActivityRunReportLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"activityName";
  v3 = [(HMMXPCActivityRunReportLogEvent *)self activityName];
  v12[0] = v3;
  v11[1] = @"activityShouldWake";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMMXPCActivityRunReportLogEvent activityShouldWake](self, "activityShouldWake")}];
  v12[1] = v4;
  v11[2] = @"activityDefinedIntervalInMinutes";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMXPCActivityRunReportLogEvent activityDefinedIntervalInMinutes](self, "activityDefinedIntervalInMinutes")}];
  v12[2] = v5;
  v11[3] = @"activityRunHourOfDay";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMXPCActivityRunReportLogEvent activityRunHourOfDay](self, "activityRunHourOfDay")}];
  v12[3] = v6;
  v11[4] = @"activityTimeSinceLastRunInMinutes";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMXPCActivityRunReportLogEvent activityTimeSinceLastRunInMinutes](self, "activityTimeSinceLastRunInMinutes")}];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HMMXPCActivityRunReportLogEvent)initWithActivityName:(id)a3 definedInterval:(double)a4 activityShouldWake:(BOOL)a5 timeSinceLastRun:(double)a6
{
  v11 = a3;
  v17.receiver = self;
  v17.super_class = HMMXPCActivityRunReportLogEvent;
  v12 = [(HMMLogEvent *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activityName, a3);
    v13->_activityDefinedIntervalInMinutes = (a4 / 3600.0);
    v13->_activityShouldWake = a5;
    v14 = [MEMORY[0x277CBEAA8] now];
    v15 = [v14 hmf_dateComponents];
    v13->_activityRunHourOfDay = [v15 hour];

    v13->_activityTimeSinceLastRunInMinutes = (a6 / 60.0);
  }

  return v13;
}

@end