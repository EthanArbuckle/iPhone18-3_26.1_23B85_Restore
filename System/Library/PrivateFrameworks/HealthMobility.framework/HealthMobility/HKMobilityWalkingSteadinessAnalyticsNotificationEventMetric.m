@interface HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric
- (HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric)initWithImproveHealthAndActivityAllowed:(BOOL)a3;
- (id)eventPayload;
@end

@implementation HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric

- (HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric)initWithImproveHealthAndActivityAllowed:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric;
  result = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)&v5 init];
  if (result)
  {
    result->_improveHealthAndActivityAllowed = a3;
  }

  return result;
}

- (id)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)self notificationClassification];
  [v3 setObject:v4 forKeyedSubscript:@"notificationClassification"];

  v5 = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)self notificationType];
  [v3 setObject:v5 forKeyedSubscript:@"notificationType"];

  v6 = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)self age];
  v7 = [HKMobilityAnalyticsUtilities payloadValueForAge:v6];
  [v3 setObject:v7 forKeyedSubscript:@"age"];

  v8 = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)self biologicalSex];
  v9 = [HKMobilityAnalyticsUtilities payloadStringForBiologicalSex:v8];
  [v3 setObject:v9 forKeyedSubscript:@"sex"];

  v10 = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)self daysSinceLastNotification];
  [v3 setObject:v10 forKeyedSubscript:@"daysSinceLastNotification"];

  v11 = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)self areHealthNotificationsAuthorized];
  [v3 setObject:v11 forKeyedSubscript:@"areHealthNotificationsAuthorized"];

  v12 = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)self isShowingPregnancyContent];
  [v3 setObject:v12 forKeyedSubscript:@"isPregnancyModeEnabled"];

  v13 = [v3 copy];

  return v13;
}

@end