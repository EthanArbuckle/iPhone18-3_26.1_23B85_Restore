@interface HKCategorySample(HKMenstrualCycles)
+ (id)hkmc_categorySampleWithBleedingFlow:()HKMenstrualCycles forBleedingType:date:startOfCycle:;
+ (id)hkmc_categorySampleWithCervicalMucusQuality:()HKMenstrualCycles date:;
+ (id)hkmc_categorySampleWithCycleFactor:()HKMenstrualCycles startDate:endDate:;
+ (id)hkmc_categorySampleWithMenstrualFlow:()HKMenstrualCycles date:startOfCycle:;
+ (id)hkmc_categorySampleWithMenstrualSymptom:()HKMenstrualCycles date:;
+ (id)hkmc_categorySampleWithOvulationTestResult:()HKMenstrualCycles date:;
+ (id)hkmc_categorySampleWithPregnancyTestResult:()HKMenstrualCycles date:;
+ (id)hkmc_categorySampleWithProgesteroneTestResult:()HKMenstrualCycles date:;
+ (id)hkmc_categorySampleWithSexualActivity:()HKMenstrualCycles date:;
+ (id)hkmc_intermenstrualBleedingCategorySampleWithDate:()HKMenstrualCycles;
+ (id)hkmc_pregnancyCategorySampleWithStartDate:()HKMenstrualCycles startTimeZoneID:endDate:startDateSource:embryoAgeInDays:detailsRecordedOnDate:;
- (uint64_t)hkmc_cycleFactor;
- (uint64_t)hkmc_daySummaryBleedingAfterPregnancyFlow;
- (uint64_t)hkmc_daySummaryBleedingInPregnancyFlow;
- (uint64_t)hkmc_daySummaryCervicalMucusQuality;
- (uint64_t)hkmc_daySummaryMenstrualFlow;
- (uint64_t)hkmc_daySummaryOvulationTestResult;
- (uint64_t)hkmc_daySummaryPregnancyTestResult;
- (uint64_t)hkmc_daySummaryProgesteroneTestResult;
- (uint64_t)hkmc_daySummarySexualActivity;
- (uint64_t)hkmc_daySummarySymptom;
- (uint64_t)hkmc_deviationType;
@end

@implementation HKCategorySample(HKMenstrualCycles)

+ (id)hkmc_categorySampleWithMenstrualFlow:()HKMenstrualCycles date:startOfCycle:
{
  v20[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = HKMCCategoryValueVaginalBleedingFromBleedingFlow(a3);
  if (v9)
  {
    v11 = v9;
    hkmc_defaultMetadata = [self hkmc_defaultMetadata];
    v19 = *MEMORY[0x277CCC4F0];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:a5];
    v20[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v15 = [hkmc_defaultMetadata hk_dictionaryByAddingEntriesFromDictionary:v14];

    menstrualFlowType = [MEMORY[0x277CCD0C0] menstrualFlowType];
    v10 = [self categorySampleWithType:menstrualFlowType value:v11 startDate:v8 endDate:v8 metadata:v15];
  }

  else
  {
    v10 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)hkmc_categorySampleWithBleedingFlow:()HKMenstrualCycles forBleedingType:date:startOfCycle:
{
  v25[1] = *MEMORY[0x277D85DE8];
  v10 = a5;
  switch(a4)
  {
    case 2:
      v12 = MEMORY[0x277CCD0C0];
      v13 = MEMORY[0x277CCB8F8];
      goto LABEL_7;
    case 1:
      v12 = MEMORY[0x277CCD0C0];
      v13 = MEMORY[0x277CCB900];
LABEL_7:
      menstrualFlowType = [v12 categoryTypeForIdentifier:*v13];
      goto LABEL_8;
    case 0:
      menstrualFlowType = [MEMORY[0x277CCD0C0] menstrualFlowType];
LABEL_8:
      v14 = menstrualFlowType;
      goto LABEL_10;
  }

  v14 = 0;
LABEL_10:
  v15 = HKMCCategoryValueVaginalBleedingFromBleedingFlow(a3);
  if (v15)
  {
    v17 = v15;
    hkmc_defaultMetadata = [self hkmc_defaultMetadata];
    v24 = *MEMORY[0x277CCC4F0];
    v19 = [MEMORY[0x277CCABB0] numberWithBool:a6];
    v25[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v21 = [hkmc_defaultMetadata hk_dictionaryByAddingEntriesFromDictionary:v20];

    v16 = [self categorySampleWithType:v14 value:v17 startDate:v10 endDate:v10 metadata:v21];
  }

  else
  {
    v16 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)hkmc_categorySampleWithCervicalMucusQuality:()HKMenstrualCycles date:
{
  v6 = a4;
  v7 = HKMCCategoryValueCervicalMucusQualityFromCervicalMucusQuality(a3);
  if (v7)
  {
    v9 = v7;
    v10 = [MEMORY[0x277CCD0C0] _categoryTypeWithCode:91];
    hkmc_defaultMetadata = [self hkmc_defaultMetadata];
    v8 = [self categorySampleWithType:v10 value:v9 startDate:v6 endDate:v6 metadata:hkmc_defaultMetadata];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)hkmc_categorySampleWithOvulationTestResult:()HKMenstrualCycles date:
{
  v6 = a4;
  v7 = HKMCCategoryValueOvulationTestResultFromOvulationTestResult(a3);
  if (v7)
  {
    v9 = v7;
    v10 = [MEMORY[0x277CCD0C0] _categoryTypeWithCode:92];
    hkmc_defaultMetadata = [self hkmc_defaultMetadata];
    v8 = [self categorySampleWithType:v10 value:v9 startDate:v6 endDate:v6 metadata:hkmc_defaultMetadata];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)hkmc_categorySampleWithPregnancyTestResult:()HKMenstrualCycles date:
{
  v6 = a4;
  v7 = HKMCCategoryValuePregnancyTestResultFromPregnancyTestResult(a3);
  if (v7)
  {
    v9 = v7;
    v10 = [MEMORY[0x277CCD0C0] _categoryTypeWithCode:243];
    hkmc_defaultMetadata = [self hkmc_defaultMetadata];
    v8 = [self categorySampleWithType:v10 value:v9 startDate:v6 endDate:v6 metadata:hkmc_defaultMetadata];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)hkmc_categorySampleWithProgesteroneTestResult:()HKMenstrualCycles date:
{
  v6 = a4;
  v7 = HKMCCategoryValueProgesteroneTestResultFromProgesteroneTestResult(a3);
  if (v7)
  {
    v9 = v7;
    v10 = [MEMORY[0x277CCD0C0] _categoryTypeWithCode:244];
    hkmc_defaultMetadata = [self hkmc_defaultMetadata];
    v8 = [self categorySampleWithType:v10 value:v9 startDate:v6 endDate:v6 metadata:hkmc_defaultMetadata];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)hkmc_categorySampleWithSexualActivity:()HKMenstrualCycles date:
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v6 = a4;
  hkmc_defaultMetadata = [self hkmc_defaultMetadata];
  if (a3 == 3)
  {
    v17 = *MEMORY[0x277CCC508];
    v18 = MEMORY[0x277CBEC28];
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v18;
    v10 = &v17;
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v19 = *MEMORY[0x277CCC508];
    v20[0] = MEMORY[0x277CBEC38];
    v8 = MEMORY[0x277CBEAC0];
    v9 = v20;
    v10 = &v19;
LABEL_7:
    v12 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
    v13 = [hkmc_defaultMetadata hk_dictionaryByAddingEntriesFromDictionary:v12];

    hkmc_defaultMetadata = v13;
  }

  v14 = [MEMORY[0x277CCD0C0] _categoryTypeWithCode:97];
  v11 = [self categorySampleWithType:v14 value:0 startDate:v6 endDate:v6 metadata:hkmc_defaultMetadata];

LABEL_9:
  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)hkmc_categorySampleWithMenstrualSymptom:()HKMenstrualCycles date:
{
  v6 = a4;
  v7 = HKMCDataTypeCodeFromMenstrualSymptom(a3);
  if (v7)
  {
    v9 = [MEMORY[0x277CCD0C0] _categoryTypeWithCode:v7];
    hkmc_defaultMetadata = [self hkmc_defaultMetadata];
    v8 = [self categorySampleWithType:v9 value:0 startDate:v6 endDate:v6 metadata:hkmc_defaultMetadata];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)hkmc_intermenstrualBleedingCategorySampleWithDate:()HKMenstrualCycles
{
  v4 = MEMORY[0x277CCD0C0];
  v5 = a3;
  v6 = [v4 _categoryTypeWithCode:96];
  hkmc_defaultMetadata = [self hkmc_defaultMetadata];
  v8 = [self categorySampleWithType:v6 value:0 startDate:v5 endDate:v5 metadata:hkmc_defaultMetadata];

  return v8;
}

+ (id)hkmc_categorySampleWithCycleFactor:()HKMenstrualCycles startDate:endDate:
{
  v8 = a5;
  v9 = a4;
  v10 = HKMCDataTypeCodeFromCycleFactors(a3);
  if (v10 == 193)
  {
    v11 = HKMCCategoryValueContraceptiveFromCycleFactor(a3);
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x277CCD0C0] dataTypeWithCode:v10];
  hkmc_defaultMetadata = [self hkmc_defaultMetadata];
  v14 = [self categorySampleWithType:v12 value:v11 startDate:v9 endDate:v8 metadata:hkmc_defaultMetadata];

  return v14;
}

+ (id)hkmc_pregnancyCategorySampleWithStartDate:()HKMenstrualCycles startTimeZoneID:endDate:startDateSource:embryoAgeInDays:detailsRecordedOnDate:
{
  v14 = a7;
  v15 = a8;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  hkmc_defaultMetadata = [self hkmc_defaultMetadata];
  v20 = [hkmc_defaultMetadata mutableCopy];

  v21 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
  [v20 setObject:v21 forKey:*MEMORY[0x277CCE090]];

  [v20 setValue:v17 forKey:*MEMORY[0x277CCC530]];
  if (v14)
  {
    [v20 setObject:v14 forKey:*MEMORY[0x277CCE088]];
  }

  if (v15)
  {
    [v20 setObject:v15 forKey:*MEMORY[0x277CCE080]];
  }

  v22 = [MEMORY[0x277CCD0C0] dataTypeWithCode:191];
  v23 = [self categorySampleWithType:v22 value:0 startDate:v18 endDate:v16 metadata:v20];

  return v23;
}

- (uint64_t)hkmc_daySummaryMenstrualFlow
{
  categoryType = [self categoryType];
  code = [categoryType code];

  if (code != 95)
  {
    [(HKCategorySample(HKMenstrualCycles) *)self hkmc_daySummaryMenstrualFlow];
  }

  value = [self value];

  return HKMCBleedingFlowFromCategoryValueVaginalBleeding(value);
}

- (uint64_t)hkmc_daySummaryBleedingInPregnancyFlow
{
  categoryType = [self categoryType];
  code = [categoryType code];

  if (code != 313)
  {
    [(HKCategorySample(HKMenstrualCycles) *)self hkmc_daySummaryBleedingInPregnancyFlow];
  }

  value = [self value];

  return HKMCBleedingFlowFromCategoryValueVaginalBleeding(value);
}

- (uint64_t)hkmc_daySummaryBleedingAfterPregnancyFlow
{
  categoryType = [self categoryType];
  code = [categoryType code];

  if (code != 314)
  {
    [(HKCategorySample(HKMenstrualCycles) *)self hkmc_daySummaryBleedingAfterPregnancyFlow];
  }

  value = [self value];

  return HKMCBleedingFlowFromCategoryValueVaginalBleeding(value);
}

- (uint64_t)hkmc_daySummaryCervicalMucusQuality
{
  categoryType = [self categoryType];
  code = [categoryType code];

  if (code != 91)
  {
    [(HKCategorySample(HKMenstrualCycles) *)self hkmc_daySummaryCervicalMucusQuality];
  }

  value = [self value];

  return HKMCCervicalMucusQualityFromCategoryValueCervicalMucusQuality(value);
}

- (uint64_t)hkmc_daySummaryOvulationTestResult
{
  categoryType = [self categoryType];
  code = [categoryType code];

  if (code != 92)
  {
    [(HKCategorySample(HKMenstrualCycles) *)self hkmc_daySummaryOvulationTestResult];
  }

  value = [self value];

  return HKMCOvulationTestResultFromCategoryValueOvulationTestResult(value);
}

- (uint64_t)hkmc_daySummaryPregnancyTestResult
{
  categoryType = [self categoryType];
  code = [categoryType code];

  if (code != 243)
  {
    [(HKCategorySample(HKMenstrualCycles) *)self hkmc_daySummaryPregnancyTestResult];
  }

  value = [self value];

  return HKMCPregnancyTestResultFromCategoryValuePregnancyTestResult(value);
}

- (uint64_t)hkmc_daySummaryProgesteroneTestResult
{
  categoryType = [self categoryType];
  code = [categoryType code];

  if (code != 244)
  {
    [(HKCategorySample(HKMenstrualCycles) *)self hkmc_daySummaryProgesteroneTestResult];
  }

  value = [self value];

  return HKMCProgesteroneTestResultFromCategoryValueProgesteroneTestResult(value);
}

- (uint64_t)hkmc_daySummarySexualActivity
{
  categoryType = [self categoryType];
  code = [categoryType code];

  if (code != 97)
  {
    [(HKCategorySample(HKMenstrualCycles) *)self hkmc_daySummarySexualActivity];
  }

  metadata = [self metadata];
  v7 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCC508]];

  if (v7)
  {
    if ([v7 BOOLValue])
    {
      v8 = 1;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

- (uint64_t)hkmc_daySummarySymptom
{
  if ([self hkmc_isNotPresentSymptom])
  {
    return 0;
  }

  categoryType = [self categoryType];
  v4 = HKMCMenstrualSymptomFromDataTypeCode([categoryType code]);

  return v4;
}

- (uint64_t)hkmc_cycleFactor
{
  categoryType = [self categoryType];
  code = [categoryType code];

  switch(code)
  {
    case 193:
      value = [self value];
      if ((value - 1) < 7)
      {
        return value + 2;
      }

      break;
    case 192:
      return 1;
    case 191:
      return 2;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = objc_opt_class();
  categoryType2 = [self categoryType];
  identifier = [categoryType2 identifier];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKCategorySample+HKMenstrualCycles.m" lineNumber:276 description:{@"%@: Invalid data type: %@", v9, identifier}];

  return 0;
}

- (uint64_t)hkmc_deviationType
{
  categoryType = [self categoryType];
  code = [categoryType code];

  if ((code - 262) < 4)
  {
    return qword_25192B3E0[code - 262];
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = objc_opt_class();
  categoryType2 = [self categoryType];
  identifier = [categoryType2 identifier];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKCategorySample+HKMenstrualCycles.m" lineNumber:292 description:{@"%@: Invalid data type: %@", v8, identifier}];

  return 0;
}

@end