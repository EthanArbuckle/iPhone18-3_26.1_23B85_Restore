@interface WDAppleWalkingSteadinessListDataProvider
- (id)textForObject:(id)a3;
- (id)titleForSection:(unint64_t)a3;
@end

@implementation WDAppleWalkingSteadinessListDataProvider

- (id)textForObject:(id)a3
{
  v3 = MEMORY[0x277D12968];
  v4 = [a3 quantity];
  v5 = [v3 classificationForAppleWalkingSteadinessQuantity:v4];

  v6 = MEMORY[0x277D12968];

  return [v6 localizedTitleForClassification:v5];
}

- (id)titleForSection:(unint64_t)a3
{
  v4 = [(WDSampleListDataProvider *)self samples];
  v5 = [v4 count];

  if (v5 < 1)
  {
    v9 = 0;
  }

  else
  {
    v6 = [(WDSampleListDataProvider *)self displayType];
    v7 = [v6 localization];
    v8 = [v7 displayName];
    v9 = [v8 localizedUppercaseString];
  }

  return v9;
}

@end