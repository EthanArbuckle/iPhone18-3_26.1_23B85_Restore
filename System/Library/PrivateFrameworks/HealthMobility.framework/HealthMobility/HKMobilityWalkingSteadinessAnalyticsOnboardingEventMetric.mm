@interface HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric
- (HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric)initWithImproveHealthAndActivityAllowed:(BOOL)a3;
- (id)eventPayload;
@end

@implementation HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric

- (HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric)initWithImproveHealthAndActivityAllowed:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric;
  result = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)&v5 init];
  if (result)
  {
    result->_improveHealthAndActivityAllowed = a3;
  }

  return result;
}

- (id)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric isImproveHealthAndActivityAllowed](self, "isImproveHealthAndActivityAllowed")}];
  [v3 setObject:v4 forKeyedSubscript:@"isImproveHealthAndActivityAllowed"];

  v5 = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self step];
  [v3 setObject:v5 forKeyedSubscript:@"step"];

  v6 = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self featureVersion];
  [v3 setObject:v6 forKeyedSubscript:@"featureVersion"];

  v7 = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self provenance];
  [v3 setObject:v7 forKeyedSubscript:@"provenance"];

  v8 = +[HKMobilityAnalyticsUtilities activeWatchProductType];
  [v3 setObject:v8 forKeyedSubscript:@"activeWatchProductType"];

  v9 = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self hasDefaultHeight];
  [v3 setObject:v9 forKeyedSubscript:@"hasDefaultHeight"];

  v10 = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self hasDefaultWeight];
  [v3 setObject:v10 forKeyedSubscript:@"hasDefaultWeight"];

  v11 = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self acceptDefaultHeight];
  [v3 setObject:v11 forKeyedSubscript:@"acceptDefaultHeight"];

  v12 = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self acceptDefaultWeight];
  [v3 setObject:v12 forKeyedSubscript:@"acceptDefaultWeight"];

  v13 = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self acceptDefaultNotifications];
  [v3 setObject:v13 forKeyedSubscript:@"acceptDefaultNotifications"];

  v14 = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self age];
  v15 = [HKMobilityAnalyticsUtilities payloadValueForAge:v14];
  [v3 setObject:v15 forKeyedSubscript:@"age"];

  v16 = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)self biologicalSex];
  v17 = [HKMobilityAnalyticsUtilities payloadStringForBiologicalSex:v16];
  [v3 setObject:v17 forKeyedSubscript:@"sex"];

  v18 = [v3 copy];

  return v18;
}

@end