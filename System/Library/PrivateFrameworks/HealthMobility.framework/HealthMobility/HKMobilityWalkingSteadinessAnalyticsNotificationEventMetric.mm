@interface HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric
- (HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric)initWithImproveHealthAndActivityAllowed:(BOOL)allowed;
- (id)eventPayload;
@end

@implementation HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric

- (HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric)initWithImproveHealthAndActivityAllowed:(BOOL)allowed
{
  v5.receiver = self;
  v5.super_class = HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric;
  result = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)&v5 init];
  if (result)
  {
    result->_improveHealthAndActivityAllowed = allowed;
  }

  return result;
}

- (id)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  notificationClassification = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)self notificationClassification];
  [v3 setObject:notificationClassification forKeyedSubscript:@"notificationClassification"];

  notificationType = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)self notificationType];
  [v3 setObject:notificationType forKeyedSubscript:@"notificationType"];

  v6 = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)self age];
  v7 = [HKMobilityAnalyticsUtilities payloadValueForAge:v6];
  [v3 setObject:v7 forKeyedSubscript:@"age"];

  biologicalSex = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)self biologicalSex];
  v9 = [HKMobilityAnalyticsUtilities payloadStringForBiologicalSex:biologicalSex];
  [v3 setObject:v9 forKeyedSubscript:@"sex"];

  daysSinceLastNotification = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)self daysSinceLastNotification];
  [v3 setObject:daysSinceLastNotification forKeyedSubscript:@"daysSinceLastNotification"];

  areHealthNotificationsAuthorized = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)self areHealthNotificationsAuthorized];
  [v3 setObject:areHealthNotificationsAuthorized forKeyedSubscript:@"areHealthNotificationsAuthorized"];

  isShowingPregnancyContent = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)self isShowingPregnancyContent];
  [v3 setObject:isShowingPregnancyContent forKeyedSubscript:@"isPregnancyModeEnabled"];

  v13 = [v3 copy];

  return v13;
}

@end