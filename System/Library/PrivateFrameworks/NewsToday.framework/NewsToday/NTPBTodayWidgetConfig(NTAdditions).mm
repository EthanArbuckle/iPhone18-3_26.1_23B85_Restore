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
  [a1 setExternalAnalyticsConfigurationsData:v4];
}

- (id)externalAnalyticsConfigurations
{
  v1 = [a1 externalAnalyticsConfigurationsData];
  if (v1)
  {
    v2 = MEMORY[0x277CCAAC8];
    v3 = MEMORY[0x277CBEB98];
    v4 = objc_opt_class();
    v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
    v6 = [v2 nf_securelyUnarchiveObjectOfClasses:v5 withData:v1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end