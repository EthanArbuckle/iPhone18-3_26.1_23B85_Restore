@interface WDAppleWalkingSteadinessListDataProvider
- (id)textForObject:(id)object;
- (id)titleForSection:(unint64_t)section;
@end

@implementation WDAppleWalkingSteadinessListDataProvider

- (id)textForObject:(id)object
{
  v3 = MEMORY[0x277D12968];
  quantity = [object quantity];
  v5 = [v3 classificationForAppleWalkingSteadinessQuantity:quantity];

  v6 = MEMORY[0x277D12968];

  return [v6 localizedTitleForClassification:v5];
}

- (id)titleForSection:(unint64_t)section
{
  samples = [(WDSampleListDataProvider *)self samples];
  v5 = [samples count];

  if (v5 < 1)
  {
    localizedUppercaseString = 0;
  }

  else
  {
    displayType = [(WDSampleListDataProvider *)self displayType];
    localization = [displayType localization];
    displayName = [localization displayName];
    localizedUppercaseString = [displayName localizedUppercaseString];
  }

  return localizedUppercaseString;
}

@end