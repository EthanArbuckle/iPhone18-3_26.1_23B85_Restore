@interface HDCategorySampleEntity(HKMenstrualCycles)
+ (id)hdmc_ongoingFactorsOnDayIndex:()HKMenstrualCycles factorTypes:profile:calendarCache:error:;
+ (id)hdmc_ongoingFactorsOnDayIndex:()HKMenstrualCycles profile:calendarCache:error:;
@end

@implementation HDCategorySampleEntity(HKMenstrualCycles)

+ (id)hdmc_ongoingFactorsOnDayIndex:()HKMenstrualCycles profile:calendarCache:error:
{
  v10 = a5;
  v11 = a4;
  v12 = HKMCCycleFactorsTypes();
  v13 = [a1 hdmc_ongoingFactorsOnDayIndex:a3 factorTypes:v12 profile:v11 calendarCache:v10 error:a6];

  return v13;
}

+ (id)hdmc_ongoingFactorsOnDayIndex:()HKMenstrualCycles factorTypes:profile:calendarCache:error:
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x277D105E8];
  v15 = [MEMORY[0x277CBEB98] setWithArray:v11];
  v16 = [v14 entityEnumeratorWithTypes:v15 profile:v12 error:a7];

  if (v16)
  {
    v17 = [MEMORY[0x277D10B70] hdmc_predicateForPossibleOngoingSamplesOnDayIndex:a3];
    [v16 setPredicate:v17];

    [v16 setLimitCount:*MEMORY[0x277D10C08]];
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy_;
    v35 = __Block_byref_object_dispose_;
    v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __115__HDCategorySampleEntity_HKMenstrualCycles__hdmc_ongoingFactorsOnDayIndex_factorTypes_profile_calendarCache_error___block_invoke;
    v27[3] = &unk_27865A688;
    v18 = v13;
    v29 = &v31;
    v30 = a3;
    v28 = v18;
    if ([v16 enumerateWithError:a7 handler:v27])
    {
      v19 = v32[5];
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __115__HDCategorySampleEntity_HKMenstrualCycles__hdmc_ongoingFactorsOnDayIndex_factorTypes_profile_calendarCache_error___block_invoke_2;
      v25 = &unk_27865A6B0;
      v26 = v18;
      [v19 sortUsingComparator:&v22];
      v20 = [MEMORY[0x277CBEA60] arrayWithArray:{v32[5], v22, v23, v24, v25}];
    }

    else
    {
      v20 = 0;
    }

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end