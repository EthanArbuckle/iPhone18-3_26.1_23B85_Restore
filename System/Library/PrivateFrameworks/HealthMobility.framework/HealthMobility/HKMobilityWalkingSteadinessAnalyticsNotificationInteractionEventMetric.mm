@interface HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric
- (HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric)initWithImproveHealthAndActivityAllowed:(BOOL)allowed;
- (id)eventPayload;
@end

@implementation HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric

- (HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric)initWithImproveHealthAndActivityAllowed:(BOOL)allowed
{
  v5.receiver = self;
  v5.super_class = HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric;
  result = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric *)&v5 init];
  if (result)
  {
    result->_improveHealthAndActivityAllowed = allowed;
  }

  return result;
}

- (id)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  notificationClassification = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric *)self notificationClassification];
  [v3 setObject:notificationClassification forKeyedSubscript:@"notificationClassification"];

  notificationType = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric *)self notificationType];
  [v3 setObject:notificationType forKeyedSubscript:@"notificationType"];

  v6 = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric *)self age];
  v7 = [HKMobilityAnalyticsUtilities payloadValueForAge:v6];
  [v3 setObject:v7 forKeyedSubscript:@"age"];

  biologicalSex = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric *)self biologicalSex];
  v9 = [HKMobilityAnalyticsUtilities payloadStringForBiologicalSex:biologicalSex];
  [v3 setObject:v9 forKeyedSubscript:@"sex"];

  notificationInteractionType = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric *)self notificationInteractionType];
  [v3 setObject:notificationInteractionType forKeyedSubscript:@"notificationInteractionType"];

  isShowingPregnancyContent = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric *)self isShowingPregnancyContent];
  [v3 setObject:isShowingPregnancyContent forKeyedSubscript:@"isPregnancyModeEnabled"];

  v12 = [v3 copy];

  return v12;
}

@end