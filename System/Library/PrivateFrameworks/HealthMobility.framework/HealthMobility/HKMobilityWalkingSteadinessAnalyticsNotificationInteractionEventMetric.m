@interface HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric
- (HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric)initWithImproveHealthAndActivityAllowed:(BOOL)a3;
- (id)eventPayload;
@end

@implementation HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric

- (HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric)initWithImproveHealthAndActivityAllowed:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric;
  result = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric *)&v5 init];
  if (result)
  {
    result->_improveHealthAndActivityAllowed = a3;
  }

  return result;
}

- (id)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric *)self notificationClassification];
  [v3 setObject:v4 forKeyedSubscript:@"notificationClassification"];

  v5 = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric *)self notificationType];
  [v3 setObject:v5 forKeyedSubscript:@"notificationType"];

  v6 = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric *)self age];
  v7 = [HKMobilityAnalyticsUtilities payloadValueForAge:v6];
  [v3 setObject:v7 forKeyedSubscript:@"age"];

  v8 = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric *)self biologicalSex];
  v9 = [HKMobilityAnalyticsUtilities payloadStringForBiologicalSex:v8];
  [v3 setObject:v9 forKeyedSubscript:@"sex"];

  v10 = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric *)self notificationInteractionType];
  [v3 setObject:v10 forKeyedSubscript:@"notificationInteractionType"];

  v11 = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric *)self isShowingPregnancyContent];
  [v3 setObject:v11 forKeyedSubscript:@"isPregnancyModeEnabled"];

  v12 = [v3 copy];

  return v12;
}

@end