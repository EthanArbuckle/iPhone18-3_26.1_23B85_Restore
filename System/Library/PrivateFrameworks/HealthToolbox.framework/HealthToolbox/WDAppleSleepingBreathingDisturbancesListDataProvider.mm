@interface WDAppleSleepingBreathingDisturbancesListDataProvider
- (id)secondaryTextForObject:(id)a3;
- (id)textForObject:(id)a3;
@end

@implementation WDAppleSleepingBreathingDisturbancesListDataProvider

- (id)textForObject:(id)a3
{
  v3 = MEMORY[0x277D12A80];
  v4 = [a3 quantity];
  v5 = [v3 localizedTitleForBreathingDisturbances:v4];

  return v5;
}

- (id)secondaryTextForObject:(id)a3
{
  v3 = a3;
  v4 = HKDateFormatterFromTemplate();
  v5 = [v3 endDate];

  v6 = [v4 stringFromDate:v5];

  return v6;
}

@end