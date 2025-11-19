@interface HKSample(WDCategorySampleDurationListDataProvider)
- (id)displayString;
@end

@implementation HKSample(WDCategorySampleDurationListDataProvider)

- (id)displayString
{
  v2 = objc_alloc(MEMORY[0x277CCA970]);
  v3 = [a1 startDate];
  v4 = [a1 endDate];
  v5 = [v2 initWithStartDate:v3 endDate:v4];

  [v5 duration];
  v7 = v6;
  v8 = [MEMORY[0x277D12840] sharedInstance];
  v9 = [a1 sampleType];
  v10 = [v8 displayTypeForObjectType:v9];

  v11 = [v10 presentation];
  LODWORD(v9) = [v11 useSecondsWhenDisplayingDuration];

  v12 = 0x277D12B00;
  if (!v9)
  {
    v12 = 0x277D12AF8;
  }

  v13 = *v12;
  v14 = objc_opt_new();
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v16 = [v14 stringFromNumber:v15 displayType:0 unitController:0];

  return v16;
}

@end