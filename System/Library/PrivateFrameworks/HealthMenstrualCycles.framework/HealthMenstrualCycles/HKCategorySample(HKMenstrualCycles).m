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
    v12 = [a1 hkmc_defaultMetadata];
    v19 = *MEMORY[0x277CCC4F0];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:a5];
    v20[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v15 = [v12 hk_dictionaryByAddingEntriesFromDictionary:v14];

    v16 = [MEMORY[0x277CCD0C0] menstrualFlowType];
    v10 = [a1 categorySampleWithType:v16 value:v11 startDate:v8 endDate:v8 metadata:v15];
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
      v11 = [v12 categoryTypeForIdentifier:*v13];
      goto LABEL_8;
    case 0:
      v11 = [MEMORY[0x277CCD0C0] menstrualFlowType];
LABEL_8:
      v14 = v11;
      goto LABEL_10;
  }

  v14 = 0;
LABEL_10:
  v15 = HKMCCategoryValueVaginalBleedingFromBleedingFlow(a3);
  if (v15)
  {
    v17 = v15;
    v18 = [a1 hkmc_defaultMetadata];
    v24 = *MEMORY[0x277CCC4F0];
    v19 = [MEMORY[0x277CCABB0] numberWithBool:a6];
    v25[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v21 = [v18 hk_dictionaryByAddingEntriesFromDictionary:v20];

    v16 = [a1 categorySampleWithType:v14 value:v17 startDate:v10 endDate:v10 metadata:v21];
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
    v11 = [a1 hkmc_defaultMetadata];
    v8 = [a1 categorySampleWithType:v10 value:v9 startDate:v6 endDate:v6 metadata:v11];
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
    v11 = [a1 hkmc_defaultMetadata];
    v8 = [a1 categorySampleWithType:v10 value:v9 startDate:v6 endDate:v6 metadata:v11];
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
    v11 = [a1 hkmc_defaultMetadata];
    v8 = [a1 categorySampleWithType:v10 value:v9 startDate:v6 endDate:v6 metadata:v11];
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
    v11 = [a1 hkmc_defaultMetadata];
    v8 = [a1 categorySampleWithType:v10 value:v9 startDate:v6 endDate:v6 metadata:v11];
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
  v7 = [a1 hkmc_defaultMetadata];
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
    v13 = [v7 hk_dictionaryByAddingEntriesFromDictionary:v12];

    v7 = v13;
  }

  v14 = [MEMORY[0x277CCD0C0] _categoryTypeWithCode:97];
  v11 = [a1 categorySampleWithType:v14 value:0 startDate:v6 endDate:v6 metadata:v7];

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
    v10 = [a1 hkmc_defaultMetadata];
    v8 = [a1 categorySampleWithType:v9 value:0 startDate:v6 endDate:v6 metadata:v10];
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
  v7 = [a1 hkmc_defaultMetadata];
  v8 = [a1 categorySampleWithType:v6 value:0 startDate:v5 endDate:v5 metadata:v7];

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
  v13 = [a1 hkmc_defaultMetadata];
  v14 = [a1 categorySampleWithType:v12 value:v11 startDate:v9 endDate:v8 metadata:v13];

  return v14;
}

+ (id)hkmc_pregnancyCategorySampleWithStartDate:()HKMenstrualCycles startTimeZoneID:endDate:startDateSource:embryoAgeInDays:detailsRecordedOnDate:
{
  v14 = a7;
  v15 = a8;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [a1 hkmc_defaultMetadata];
  v20 = [v19 mutableCopy];

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
  v23 = [a1 categorySampleWithType:v22 value:0 startDate:v18 endDate:v16 metadata:v20];

  return v23;
}

- (uint64_t)hkmc_daySummaryMenstrualFlow
{
  v4 = [a1 categoryType];
  v5 = [v4 code];

  if (v5 != 95)
  {
    [(HKCategorySample(HKMenstrualCycles) *)a1 hkmc_daySummaryMenstrualFlow];
  }

  v6 = [a1 value];

  return HKMCBleedingFlowFromCategoryValueVaginalBleeding(v6);
}

- (uint64_t)hkmc_daySummaryBleedingInPregnancyFlow
{
  v4 = [a1 categoryType];
  v5 = [v4 code];

  if (v5 != 313)
  {
    [(HKCategorySample(HKMenstrualCycles) *)a1 hkmc_daySummaryBleedingInPregnancyFlow];
  }

  v6 = [a1 value];

  return HKMCBleedingFlowFromCategoryValueVaginalBleeding(v6);
}

- (uint64_t)hkmc_daySummaryBleedingAfterPregnancyFlow
{
  v4 = [a1 categoryType];
  v5 = [v4 code];

  if (v5 != 314)
  {
    [(HKCategorySample(HKMenstrualCycles) *)a1 hkmc_daySummaryBleedingAfterPregnancyFlow];
  }

  v6 = [a1 value];

  return HKMCBleedingFlowFromCategoryValueVaginalBleeding(v6);
}

- (uint64_t)hkmc_daySummaryCervicalMucusQuality
{
  v4 = [a1 categoryType];
  v5 = [v4 code];

  if (v5 != 91)
  {
    [(HKCategorySample(HKMenstrualCycles) *)a1 hkmc_daySummaryCervicalMucusQuality];
  }

  v6 = [a1 value];

  return HKMCCervicalMucusQualityFromCategoryValueCervicalMucusQuality(v6);
}

- (uint64_t)hkmc_daySummaryOvulationTestResult
{
  v4 = [a1 categoryType];
  v5 = [v4 code];

  if (v5 != 92)
  {
    [(HKCategorySample(HKMenstrualCycles) *)a1 hkmc_daySummaryOvulationTestResult];
  }

  v6 = [a1 value];

  return HKMCOvulationTestResultFromCategoryValueOvulationTestResult(v6);
}

- (uint64_t)hkmc_daySummaryPregnancyTestResult
{
  v4 = [a1 categoryType];
  v5 = [v4 code];

  if (v5 != 243)
  {
    [(HKCategorySample(HKMenstrualCycles) *)a1 hkmc_daySummaryPregnancyTestResult];
  }

  v6 = [a1 value];

  return HKMCPregnancyTestResultFromCategoryValuePregnancyTestResult(v6);
}

- (uint64_t)hkmc_daySummaryProgesteroneTestResult
{
  v4 = [a1 categoryType];
  v5 = [v4 code];

  if (v5 != 244)
  {
    [(HKCategorySample(HKMenstrualCycles) *)a1 hkmc_daySummaryProgesteroneTestResult];
  }

  v6 = [a1 value];

  return HKMCProgesteroneTestResultFromCategoryValueProgesteroneTestResult(v6);
}

- (uint64_t)hkmc_daySummarySexualActivity
{
  v4 = [a1 categoryType];
  v5 = [v4 code];

  if (v5 != 97)
  {
    [(HKCategorySample(HKMenstrualCycles) *)a1 hkmc_daySummarySexualActivity];
  }

  v6 = [a1 metadata];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCC508]];

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
  if ([a1 hkmc_isNotPresentSymptom])
  {
    return 0;
  }

  v3 = [a1 categoryType];
  v4 = HKMCMenstrualSymptomFromDataTypeCode([v3 code]);

  return v4;
}

- (uint64_t)hkmc_cycleFactor
{
  v4 = [a1 categoryType];
  v5 = [v4 code];

  switch(v5)
  {
    case 193:
      v7 = [a1 value];
      if ((v7 - 1) < 7)
      {
        return v7 + 2;
      }

      break;
    case 192:
      return 1;
    case 191:
      return 2;
  }

  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = objc_opt_class();
  v10 = [a1 categoryType];
  v11 = [v10 identifier];
  [v8 handleFailureInMethod:a2 object:a1 file:@"HKCategorySample+HKMenstrualCycles.m" lineNumber:276 description:{@"%@: Invalid data type: %@", v9, v11}];

  return 0;
}

- (uint64_t)hkmc_deviationType
{
  v4 = [a1 categoryType];
  v5 = [v4 code];

  if ((v5 - 262) < 4)
  {
    return qword_25192B3E0[v5 - 262];
  }

  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = objc_opt_class();
  v9 = [a1 categoryType];
  v10 = [v9 identifier];
  [v7 handleFailureInMethod:a2 object:a1 file:@"HKCategorySample+HKMenstrualCycles.m" lineNumber:292 description:{@"%@: Invalid data type: %@", v8, v10}];

  return 0;
}

@end