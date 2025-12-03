@interface HDSampleEntity(HKMenstrualCycles)
+ (id)hdmc_daySummaryAnchorWithHealthDatabase:()HKMenstrualCycles error:;
+ (uint64_t)hdmc_analysisSampleInfo:()HKMenstrualCycles forProfile:error:;
@end

@implementation HDSampleEntity(HKMenstrualCycles)

+ (id)hdmc_daySummaryAnchorWithHealthDatabase:()HKMenstrualCycles error:
{
  v5 = MEMORY[0x277D10848];
  v6 = a3;
  v7 = HKMCDaySummarySampleTypes();
  v8 = HDSampleEntityPredicateForDataTypes();
  v9 = [v5 maxRowIDForPredicate:v8 healthDatabase:v6 error:a4];

  return v9;
}

+ (uint64_t)hdmc_analysisSampleInfo:()HKMenstrualCycles forProfile:error:
{
  v5 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  database = [v5 database];
  contextForReadingProtectedData = [MEMORY[0x277D106B8] contextForReadingProtectedData];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__HDSampleEntity_HKMenstrualCycles__hdmc_analysisSampleInfo_forProfile_error___block_invoke;
  v12[3] = &unk_27865ACA8;
  v12[4] = &v14;
  v13 = 0;
  v8 = [database performTransactionWithContext:contextForReadingProtectedData error:&v13 block:v12 inaccessibilityHandler:0];
  v9 = v13;

  v10 = v8 ^ 1;
  if (!a3)
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    *a3 = v15[5];
  }

  _Block_object_dispose(&v14, 8);
  return v8;
}

@end