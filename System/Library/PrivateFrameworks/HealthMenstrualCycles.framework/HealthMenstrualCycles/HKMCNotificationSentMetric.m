@interface HKMCNotificationSentMetric
- (HKMCNotificationSentMetric)initWithCategory:(id)a3 areHealthNotificationsAuthorized:(id)a4;
- (NSDictionary)eventPayload;
- (id)description;
@end

@implementation HKMCNotificationSentMetric

- (HKMCNotificationSentMetric)initWithCategory:(id)a3 areHealthNotificationsAuthorized:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKMCNotificationSentMetric;
  v9 = [(HKMCNotificationSentMetric *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_category, a3);
    objc_storeStrong(&v10->_areHealthNotificationsAuthorized, a4);
  }

  return v10;
}

- (NSDictionary)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(HKMCNotificationSentMetric *)self category];
  [v3 setObject:v4 forKeyedSubscript:@"category"];

  v5 = [(HKMCNotificationSentMetric *)self areHealthNotificationsAuthorized];
  [v3 setObject:v5 forKeyedSubscript:@"areHealthNotificationsAuthorized"];

  v6 = [(HKMCNotificationSentMetric *)self numberOfDaysShiftedForFertileWindow];
  [v3 setObject:v6 forKeyedSubscript:@"numberOfDaysShiftedForFertileWindow"];

  v7 = [(HKMCNotificationSentMetric *)self numberOfDaysOffsetFromFertileWindowEnd];
  [v3 setObject:v7 forKeyedSubscript:@"numberOfDaysOffsetFromFertileWindowEnd"];

  v8 = [(HKMCNotificationSentMetric *)self numberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification];
  [v3 setObject:v8 forKeyedSubscript:@"numberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification"];

  v9 = [(HKMCNotificationSentMetric *)self internalLiveOnCycleFactorOverrideEnabled];
  [v3 setObject:v9 forKeyedSubscript:@"internalLiveOnCycleFactorOverride"];

  v10 = [v3 copy];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HKMCNotificationSentMetric *)self category];
  v6 = [(HKMCNotificationSentMetric *)self areHealthNotificationsAuthorized];
  v7 = [(HKMCNotificationSentMetric *)self numberOfDaysShiftedForFertileWindow];
  v8 = [(HKMCNotificationSentMetric *)self numberOfDaysOffsetFromFertileWindowEnd];
  v9 = [(HKMCNotificationSentMetric *)self numberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification];
  v10 = [(HKMCNotificationSentMetric *)self internalLiveOnCycleFactorOverrideEnabled];
  v11 = [v3 stringWithFormat:@"<%@:%p category:%@ areHealthNotificationsAuthorized:%@ numberOfDaysShiftedForFertileWindow:%@ numberOfDaysOffsetFromFertileWindowEnd:%@ numberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification:%@ internalLiveOnCycleFactorOverrideEnabled:%@>", v4, self, v5, v6, v7, v8, v9, v10];

  return v11;
}

@end