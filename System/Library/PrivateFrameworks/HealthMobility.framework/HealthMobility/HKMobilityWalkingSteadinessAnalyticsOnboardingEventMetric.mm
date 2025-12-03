@interface HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric
- (HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric)initWithImproveHealthAndActivityAllowed:(BOOL)allowed;
- (id)eventPayload;
@end

@implementation HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric

- (HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric)initWithImproveHealthAndActivityAllowed:(BOOL)allowed
{
  v5.receiver = self;
  v5.super_class = HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric;
  result = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)&v5 init];
  if (result)
  {
    result->_improveHealthAndActivityAllowed = allowed;
  }

  return result;
}

- (id)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric isImproveHealthAndActivityAllowed](self, "isImproveHealthAndActivityAllowed")}];
  [v3 setObject:v4 forKeyedSubscript:@"isImproveHealthAndActivityAllowed"];

  step = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self step];
  [v3 setObject:step forKeyedSubscript:@"step"];

  featureVersion = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self featureVersion];
  [v3 setObject:featureVersion forKeyedSubscript:@"featureVersion"];

  provenance = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self provenance];
  [v3 setObject:provenance forKeyedSubscript:@"provenance"];

  v8 = +[HKMobilityAnalyticsUtilities activeWatchProductType];
  [v3 setObject:v8 forKeyedSubscript:@"activeWatchProductType"];

  hasDefaultHeight = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self hasDefaultHeight];
  [v3 setObject:hasDefaultHeight forKeyedSubscript:@"hasDefaultHeight"];

  hasDefaultWeight = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self hasDefaultWeight];
  [v3 setObject:hasDefaultWeight forKeyedSubscript:@"hasDefaultWeight"];

  acceptDefaultHeight = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self acceptDefaultHeight];
  [v3 setObject:acceptDefaultHeight forKeyedSubscript:@"acceptDefaultHeight"];

  acceptDefaultWeight = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self acceptDefaultWeight];
  [v3 setObject:acceptDefaultWeight forKeyedSubscript:@"acceptDefaultWeight"];

  acceptDefaultNotifications = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self acceptDefaultNotifications];
  [v3 setObject:acceptDefaultNotifications forKeyedSubscript:@"acceptDefaultNotifications"];

  v14 = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self age];
  v15 = [HKMobilityAnalyticsUtilities payloadValueForAge:v14];
  [v3 setObject:v15 forKeyedSubscript:@"age"];

  biologicalSex = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self biologicalSex];
  v17 = [HKMobilityAnalyticsUtilities payloadStringForBiologicalSex:biologicalSex];
  [v3 setObject:v17 forKeyedSubscript:@"sex"];

  v18 = [v3 copy];

  return v18;
}

@end