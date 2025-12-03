@interface WDCategorySampleUndeterminedDurationListDataProvider
- (id)secondaryTextForObject:(id)object;
@end

@implementation WDCategorySampleUndeterminedDurationListDataProvider

- (id)secondaryTextForObject:(id)object
{
  objectCopy = object;
  if ([objectCopy hasUndeterminedDuration])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = [v5 localizedStringForKey:@"ONGOING_DATE" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WDCategorySampleUndeterminedDurationListDataProvider;
    v6 = [(WDSampleListDataProvider *)&v8 secondaryTextForObject:objectCopy];
  }

  return v6;
}

@end