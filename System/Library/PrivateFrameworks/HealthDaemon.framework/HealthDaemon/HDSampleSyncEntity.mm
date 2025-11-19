@interface HDSampleSyncEntity
+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4;
+ (id)_predicateForSampleAgeInSyncSession:(id)a3 sampleTypeClass:(Class)a4;
+ (id)_predicateForSampleAgeWithMaximumObjectAgeByType:(void *)a3 defaultMaxAge:(void *)a4 sessionStartDate:;
+ (id)_predicateForSyncSession:(id)a3;
@end

@implementation HDSampleSyncEntity

+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4
{
  v5 = a3;
  v6 = [a4 daemon];
  v7 = [v6 behavior];
  v8 = [v7 supportsSampleExpiration];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [v9 hd_predicateForSamplesWithTypes:0 endingBeforeDate:v5 minusDays:*MEMORY[0x277CCCEE8]];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_predicateForSyncSession:(id)a3
{
  v5 = a3;
  v21.receiver = a1;
  v21.super_class = &OBJC_METACLASS___HDSampleSyncEntity;
  v6 = objc_msgSendSuper2(&v21, sel__predicateForSyncSession_, v5);
  v7 = v5;
  v8 = objc_opt_self();
  v9 = [v7 syncPredicate];

  v10 = [v9 dateInterval];

  if (v10)
  {
    v11 = [v10 startDate];
    v12 = [v10 endDate];
    v13 = [(HDDataSyncEntity *)v8 _predicateForDateIntervalStartDate:v11 endDate:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v6 otherPredicate:v13];
  v15 = [a1 _syncedSampleTypeClass];
  if (v15)
  {
    v16 = v15;
    if (([v15 isSubclassOfClass:objc_opt_class()] & 1) == 0)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:a2 object:a1 file:@"HDDataSyncEntity.m" lineNumber:488 description:{@"%@ isn't an object type class", v16}];
    }

    v17 = [a1 _predicateForSampleAgeInSyncSession:v7 sampleTypeClass:v16];
    v18 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v14 otherPredicate:v17];
  }

  else
  {
    v18 = v14;
  }

  return v18;
}

+ (id)_predicateForSampleAgeInSyncSession:(id)a3 sampleTypeClass:(Class)a4
{
  v6 = a3;
  v7 = [v6 syncPredicate];
  v8 = [v7 maximumObjectAgeByType];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__HDSampleSyncEntity__predicateForSampleAgeInSyncSession_sampleTypeClass___block_invoke;
  v15[3] = &__block_descriptor_40_e35_B24__0__HKObjectType_8__NSNumber_16lu32l8;
  v15[4] = a4;
  v9 = [v8 hk_filter:v15];

  v10 = [v6 syncPredicate];
  v11 = [v10 defaultMaximumObjectAge];
  v12 = [v6 startDate];

  v13 = [(HDSampleSyncEntity *)a1 _predicateForSampleAgeWithMaximumObjectAgeByType:v9 defaultMaxAge:v11 sessionStartDate:v12];

  return v13;
}

+ (id)_predicateForSampleAgeWithMaximumObjectAgeByType:(void *)a3 defaultMaxAge:(void *)a4 sessionStartDate:
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v9 = [v6 count];
  if (v7 || v9)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __102__HDSampleSyncEntity__predicateForSampleAgeWithMaximumObjectAgeByType_defaultMaxAge_sessionStartDate___block_invoke;
    v27[3] = &unk_27862F0A0;
    v12 = v11;
    v28 = v12;
    [v6 enumerateKeysAndObjectsUsingBlock:v27];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __102__HDSampleSyncEntity__predicateForSampleAgeWithMaximumObjectAgeByType_defaultMaxAge_sessionStartDate___block_invoke_2;
    v24[3] = &unk_27862F0C8;
    v14 = v8;
    v25 = v14;
    v15 = v13;
    v26 = v15;
    [v12 enumerateKeysAndObjectsUsingBlock:v24];
    if (v7)
    {
      v16 = [v6 allKeys];
      v17 = HDSampleEntityPredicateForDataTypes(v16);

      v18 = [MEMORY[0x277D10B20] negatedPredicate:v17];
      [v7 doubleValue];
      v20 = [v14 dateByAddingTimeInterval:-v19];
      v21 = HDSampleEntityPredicateForEndDate(5);

      v22 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v18 otherPredicate:v21];
      [v15 addObject:v22];
    }

    v10 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v15];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __102__HDSampleSyncEntity__predicateForSampleAgeWithMaximumObjectAgeByType_defaultMaxAge_sessionStartDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  [v6 addObject:v7];
}

void __102__HDSampleSyncEntity__predicateForSampleAgeWithMaximumObjectAgeByType_defaultMaxAge_sessionStartDate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  if ([v5 count] == 1)
  {
    v7 = [v5 anyObject];

    v15 = HDSampleEntityPredicateForDataType(v7);
    v5 = v7;
  }

  else
  {
    v15 = HDSampleEntityPredicateForDataTypes(v5);
  }

  v8 = *(a1 + 32);
  [v6 doubleValue];
  v10 = v9;

  v11 = [v8 dateByAddingTimeInterval:-v10];
  v12 = HDSampleEntityPredicateForEndDate(5);

  v13 = *(a1 + 40);
  v14 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v15 otherPredicate:v12];
  [v13 addObject:v14];
}

@end