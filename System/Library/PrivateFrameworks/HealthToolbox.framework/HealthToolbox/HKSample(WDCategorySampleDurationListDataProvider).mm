@interface HKSample(WDCategorySampleDurationListDataProvider)
- (id)displayString;
@end

@implementation HKSample(WDCategorySampleDurationListDataProvider)

- (id)displayString
{
  v2 = objc_alloc(MEMORY[0x277CCA970]);
  startDate = [self startDate];
  endDate = [self endDate];
  v5 = [v2 initWithStartDate:startDate endDate:endDate];

  [v5 duration];
  v7 = v6;
  mEMORY[0x277D12840] = [MEMORY[0x277D12840] sharedInstance];
  sampleType = [self sampleType];
  v10 = [mEMORY[0x277D12840] displayTypeForObjectType:sampleType];

  presentation = [v10 presentation];
  LODWORD(sampleType) = [presentation useSecondsWhenDisplayingDuration];

  v12 = 0x277D12B00;
  if (!sampleType)
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