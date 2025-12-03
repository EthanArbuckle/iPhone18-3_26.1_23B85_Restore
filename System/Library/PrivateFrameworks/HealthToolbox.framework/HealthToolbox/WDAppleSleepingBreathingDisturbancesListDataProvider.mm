@interface WDAppleSleepingBreathingDisturbancesListDataProvider
- (id)secondaryTextForObject:(id)object;
- (id)textForObject:(id)object;
@end

@implementation WDAppleSleepingBreathingDisturbancesListDataProvider

- (id)textForObject:(id)object
{
  v3 = MEMORY[0x277D12A80];
  quantity = [object quantity];
  v5 = [v3 localizedTitleForBreathingDisturbances:quantity];

  return v5;
}

- (id)secondaryTextForObject:(id)object
{
  objectCopy = object;
  v4 = HKDateFormatterFromTemplate();
  endDate = [objectCopy endDate];

  v6 = [v4 stringFromDate:endDate];

  return v6;
}

@end