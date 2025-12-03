@interface NTPBTodayWidgetConfig(NTAdditions)
- (id)externalAnalyticsConfigurations;
- (void)setExternalAnalyticsConfigurations:()NTAdditions;
@end

@implementation NTPBTodayWidgetConfig(NTAdditions)

- (void)setExternalAnalyticsConfigurations:()NTAdditions
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [self setExternalAnalyticsConfigurationsData:v4];
}

- (id)externalAnalyticsConfigurations
{
  externalAnalyticsConfigurationsData = [self externalAnalyticsConfigurationsData];
  if (externalAnalyticsConfigurationsData)
  {
    v2 = MEMORY[0x277CCAAC8];
    v3 = MEMORY[0x277CBEB98];
    v4 = objc_opt_class();
    v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
    v6 = [v2 nf_securelyUnarchiveObjectOfClasses:v5 withData:externalAnalyticsConfigurationsData];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end