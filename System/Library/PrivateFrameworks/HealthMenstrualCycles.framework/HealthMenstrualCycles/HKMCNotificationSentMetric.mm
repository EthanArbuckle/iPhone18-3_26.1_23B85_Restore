@interface HKMCNotificationSentMetric
- (HKMCNotificationSentMetric)initWithCategory:(id)category areHealthNotificationsAuthorized:(id)authorized;
- (NSDictionary)eventPayload;
- (id)description;
@end

@implementation HKMCNotificationSentMetric

- (HKMCNotificationSentMetric)initWithCategory:(id)category areHealthNotificationsAuthorized:(id)authorized
{
  categoryCopy = category;
  authorizedCopy = authorized;
  v12.receiver = self;
  v12.super_class = HKMCNotificationSentMetric;
  v9 = [(HKMCNotificationSentMetric *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_category, category);
    objc_storeStrong(&v10->_areHealthNotificationsAuthorized, authorized);
  }

  return v10;
}

- (NSDictionary)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  category = [(HKMCNotificationSentMetric *)self category];
  [v3 setObject:category forKeyedSubscript:@"category"];

  areHealthNotificationsAuthorized = [(HKMCNotificationSentMetric *)self areHealthNotificationsAuthorized];
  [v3 setObject:areHealthNotificationsAuthorized forKeyedSubscript:@"areHealthNotificationsAuthorized"];

  numberOfDaysShiftedForFertileWindow = [(HKMCNotificationSentMetric *)self numberOfDaysShiftedForFertileWindow];
  [v3 setObject:numberOfDaysShiftedForFertileWindow forKeyedSubscript:@"numberOfDaysShiftedForFertileWindow"];

  numberOfDaysOffsetFromFertileWindowEnd = [(HKMCNotificationSentMetric *)self numberOfDaysOffsetFromFertileWindowEnd];
  [v3 setObject:numberOfDaysOffsetFromFertileWindowEnd forKeyedSubscript:@"numberOfDaysOffsetFromFertileWindowEnd"];

  numberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification = [(HKMCNotificationSentMetric *)self numberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification];
  [v3 setObject:numberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification forKeyedSubscript:@"numberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification"];

  internalLiveOnCycleFactorOverrideEnabled = [(HKMCNotificationSentMetric *)self internalLiveOnCycleFactorOverrideEnabled];
  [v3 setObject:internalLiveOnCycleFactorOverrideEnabled forKeyedSubscript:@"internalLiveOnCycleFactorOverride"];

  v10 = [v3 copy];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  category = [(HKMCNotificationSentMetric *)self category];
  areHealthNotificationsAuthorized = [(HKMCNotificationSentMetric *)self areHealthNotificationsAuthorized];
  numberOfDaysShiftedForFertileWindow = [(HKMCNotificationSentMetric *)self numberOfDaysShiftedForFertileWindow];
  numberOfDaysOffsetFromFertileWindowEnd = [(HKMCNotificationSentMetric *)self numberOfDaysOffsetFromFertileWindowEnd];
  numberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification = [(HKMCNotificationSentMetric *)self numberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification];
  internalLiveOnCycleFactorOverrideEnabled = [(HKMCNotificationSentMetric *)self internalLiveOnCycleFactorOverrideEnabled];
  v11 = [v3 stringWithFormat:@"<%@:%p category:%@ areHealthNotificationsAuthorized:%@ numberOfDaysShiftedForFertileWindow:%@ numberOfDaysOffsetFromFertileWindowEnd:%@ numberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification:%@ internalLiveOnCycleFactorOverrideEnabled:%@>", v4, self, category, areHealthNotificationsAuthorized, numberOfDaysShiftedForFertileWindow, numberOfDaysOffsetFromFertileWindowEnd, numberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification, internalLiveOnCycleFactorOverrideEnabled];

  return v11;
}

@end