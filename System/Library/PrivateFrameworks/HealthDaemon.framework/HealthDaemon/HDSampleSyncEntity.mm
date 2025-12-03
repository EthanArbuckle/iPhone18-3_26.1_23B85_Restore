@interface HDSampleSyncEntity
+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile;
+ (id)_predicateForSampleAgeInSyncSession:(id)session sampleTypeClass:(Class)class;
+ (id)_predicateForSampleAgeWithMaximumObjectAgeByType:(void *)type defaultMaxAge:(void *)age sessionStartDate:;
+ (id)_predicateForSyncSession:(id)session;
@end

@implementation HDSampleSyncEntity

+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile
{
  dateCopy = date;
  daemon = [profile daemon];
  behavior = [daemon behavior];
  supportsSampleExpiration = [behavior supportsSampleExpiration];

  if (supportsSampleExpiration)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [currentCalendar hd_predicateForSamplesWithTypes:0 endingBeforeDate:dateCopy minusDays:*MEMORY[0x277CCCEE8]];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_predicateForSyncSession:(id)session
{
  sessionCopy = session;
  v21.receiver = self;
  v21.super_class = &OBJC_METACLASS___HDSampleSyncEntity;
  v6 = objc_msgSendSuper2(&v21, sel__predicateForSyncSession_, sessionCopy);
  v7 = sessionCopy;
  v8 = objc_opt_self();
  syncPredicate = [v7 syncPredicate];

  dateInterval = [syncPredicate dateInterval];

  if (dateInterval)
  {
    startDate = [dateInterval startDate];
    endDate = [dateInterval endDate];
    v13 = [(HDDataSyncEntity *)v8 _predicateForDateIntervalStartDate:startDate endDate:endDate];
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v6 otherPredicate:v13];
  _syncedSampleTypeClass = [self _syncedSampleTypeClass];
  if (_syncedSampleTypeClass)
  {
    v16 = _syncedSampleTypeClass;
    if (([_syncedSampleTypeClass isSubclassOfClass:objc_opt_class()] & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataSyncEntity.m" lineNumber:488 description:{@"%@ isn't an object type class", v16}];
    }

    v17 = [self _predicateForSampleAgeInSyncSession:v7 sampleTypeClass:v16];
    v18 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v14 otherPredicate:v17];
  }

  else
  {
    v18 = v14;
  }

  return v18;
}

+ (id)_predicateForSampleAgeInSyncSession:(id)session sampleTypeClass:(Class)class
{
  sessionCopy = session;
  syncPredicate = [sessionCopy syncPredicate];
  maximumObjectAgeByType = [syncPredicate maximumObjectAgeByType];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__HDSampleSyncEntity__predicateForSampleAgeInSyncSession_sampleTypeClass___block_invoke;
  v15[3] = &__block_descriptor_40_e35_B24__0__HKObjectType_8__NSNumber_16lu32l8;
  v15[4] = class;
  v9 = [maximumObjectAgeByType hk_filter:v15];

  syncPredicate2 = [sessionCopy syncPredicate];
  defaultMaximumObjectAge = [syncPredicate2 defaultMaximumObjectAge];
  startDate = [sessionCopy startDate];

  v13 = [(HDSampleSyncEntity *)self _predicateForSampleAgeWithMaximumObjectAgeByType:v9 defaultMaxAge:defaultMaximumObjectAge sessionStartDate:startDate];

  return v13;
}

+ (id)_predicateForSampleAgeWithMaximumObjectAgeByType:(void *)type defaultMaxAge:(void *)age sessionStartDate:
{
  v6 = a2;
  typeCopy = type;
  ageCopy = age;
  objc_opt_self();
  v9 = [v6 count];
  if (typeCopy || v9)
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
    v14 = ageCopy;
    v25 = v14;
    v15 = v13;
    v26 = v15;
    [v12 enumerateKeysAndObjectsUsingBlock:v24];
    if (typeCopy)
    {
      allKeys = [v6 allKeys];
      v17 = HDSampleEntityPredicateForDataTypes(allKeys);

      v18 = [MEMORY[0x277D10B20] negatedPredicate:v17];
      [typeCopy doubleValue];
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