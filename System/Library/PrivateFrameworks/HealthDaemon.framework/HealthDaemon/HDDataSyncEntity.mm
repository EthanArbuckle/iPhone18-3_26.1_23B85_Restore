@interface HDDataSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)_predicateForDateIntervalStartDate:(void *)a3 endDate:;
+ (id)_predicateForSyncSession:(id)a3;
+ (id)_pruneSyncedObjectsUsingPredicate:(uint64_t)a3 limit:(void *)a4 profile:(uint64_t)a5 error:;
+ (id)_pruningPredicateWithDate:(void *)a3 profile:(void *)a4 anchor:;
+ (id)_pruningPredicateWithRestrictionPredicates:(char)a3 matchOnlyNilDatesWithoutShardInterval:;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (id)objectsFromCodableObjectsInCollection:(id)a3;
+ (id)pruneSyncedObjectsThroughAnchor:(id)a3 limit:(unint64_t)a4 nowDate:(id)a5 profile:(id)a6 error:(id *)a7;
+ (id)pruneSyncedObjectsWithRestrictionPredicates:(id)a3 limit:(unint64_t)a4 nowDate:(id)a5 profile:(id)a6 error:(id *)a7;
+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
@end

@implementation HDDataSyncEntity

+ (id)_predicateForSyncSession:(id)a3
{
  v4 = MEMORY[0x277D10B28];
  v5 = [a3 syncPredicate];
  v6 = [v5 excludedSyncProvenances];
  v7 = [v4 doesNotContainPredicateWithProperty:@"data_provenances.sync_provenance" values:v6];

  v8 = [objc_msgSend(a1 "healthEntityClass")];
  v9 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v7 otherPredicate:v8];

  return v9;
}

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  end = a4.end;
  start = a4.start;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [a1 healthEntityClass];
  v17 = [a1 _predicateForSyncSession:v15];
  LOBYTE(a7) = [v16 generateSyncObjectsForSession:v15 syncEntityClass:a1 predicate:v17 syncAnchorRange:start profile:end messageHandler:v14 error:{v13, a7}];

  return a7;
}

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [a1 healthEntityClass];
  v13 = [a1 _predicateForSyncSession:v11];
  v14 = [v10 database];

  v15 = [v12 nextSyncAnchorWithStartAnchor:a4 predicate:v13 session:v11 healthDatabase:v14 error:a6];
  return v15;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableObjectCollection alloc] initWithData:v3];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v27 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    v18 = 1;
LABEL_3:
    v19 = 0;
    while (1)
    {
      if (*v23 != v17)
      {
        objc_enumerationMutation(v14);
      }

      if (![a1 _insertObjectsFromCodableObjectCollection:*(*(&v22 + 1) + 8 * v19) syncStore:v12 profile:v13 error:{a7, v22}])
      {
        break;
      }

      if (v16 == ++v19)
      {
        v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v16)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v18 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)objectsFromCodableObjectsInCollection:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v4 = [objc_msgSend(a1 "healthEntityClass")];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  HKDefaultObjectValidationConfigurationIgnoringAllOptions();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v19 + 1) + 8 * v10);
        v17 = v15;
        v18 = v5;
        HKWithAutoreleasePool();
        v8 = v11;

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __58__HDDataSyncEntity_objectsFromCodableObjectsInCollection___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 56) _objectWithCodable:*(a1 + 32) collection:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 _validateWithConfiguration:{*(a1 + 64), *(a1 + 72)}];
    if (v4)
    {
      _HKInitializeLogging();
      v5 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        v9 = 138412546;
        v10 = v6;
        v11 = 2114;
        v12 = v4;
        _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Codable object %@ failed validation: %{public}@", &v9, 0x16u);
      }
    }

    else
    {
      [*(a1 + 48) addObject:v3];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  if (a3 < 12)
  {
    v13 = v5;
    v14 = objc_opt_class();
    v6 = MEMORY[0x277CBEA60];
    v7 = &v13;
    v8 = 2;
  }

  else
  {
    v15 = v5;
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v6 = MEMORY[0x277CBEA60];
    v7 = &v15;
    v8 = 3;
  }

  v9 = [v6 arrayWithObjects:v7 count:{v8, v13, v14, v15, v16, v17, v18}];
  v10 = [v4 setWithArray:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)pruneSyncedObjectsThroughAnchor:(id)a3 limit:(unint64_t)a4 nowDate:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = [(HDDataSyncEntity *)a1 _pruningPredicateWithDate:a5 profile:v12 anchor:a3];
  if (v13)
  {
    v14 = [(HDDataSyncEntity *)a1 _pruneSyncedObjectsUsingPredicate:v13 limit:a4 profile:v12 error:a7];
  }

  else
  {
    v14 = &unk_283CB40E0;
  }

  return v14;
}

+ (id)_pruningPredicateWithDate:(void *)a3 profile:(void *)a4 anchor:
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = [v9 _basePruningPredicateForDate:v8 profile:v7];

  if (v10)
  {
    v11 = MEMORY[0x277D10B20];
    v12 = [v9 _predicateForSyncSession:0];
    v13 = [v11 compoundPredicateWithPredicate:v12 otherPredicate:v10];

    if (v6)
    {
      v14 = HDDataEntityPredicateForObjectsAfterAnchor(v6);
      v15 = MEMORY[0x277D10B70];
      v16 = [MEMORY[0x277D10B20] negatedPredicate:v14];
      v17 = [v15 compoundPredicateWithPredicate:v13 otherPredicate:v16];

      v13 = v17;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_pruneSyncedObjectsUsingPredicate:(uint64_t)a3 limit:(void *)a4 profile:(uint64_t)a5 error:
{
  v8 = a4;
  v9 = a2;
  v10 = objc_opt_self();
  v15 = 0;
  v11 = [v8 dataManager];

  LOBYTE(v14) = 0;
  LODWORD(a5) = [v11 deleteDataObjectsOfClass:objc_msgSend(v10 predicate:"healthEntityClass") limit:v9 deletedSampleCount:a3 notifyObservers:&v15 generateDeletedObjects:0 userRequested:0 recursiveDeleteAuthorizationBlock:v14 error:{0, a5}];

  v12 = 0;
  if (a5)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  }

  return v12;
}

+ (id)pruneSyncedObjectsWithRestrictionPredicates:(id)a3 limit:(unint64_t)a4 nowDate:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a6;
  v14 = [(HDDataSyncEntity *)a1 _pruningPredicateWithDate:a5 profile:v13 anchor:0];
  if (v14)
  {
    v15 = [a1 _pruningPredicateWithRestrictionPredicates:v12];
    v16 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v14 otherPredicate:v15];
    v17 = [(HDDataSyncEntity *)a1 _pruneSyncedObjectsUsingPredicate:v16 limit:a4 profile:v13 error:a7];
  }

  else
  {
    v17 = &unk_283CB40E0;
  }

  return v17;
}

+ (id)_predicateForDateIntervalStartDate:(void *)a3 endDate:
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = HDSampleEntityPredicateForStartDate(4);

  v7 = [v5 dateByAddingTimeInterval:-*MEMORY[0x277CCCD58]];
  v8 = HDSampleEntityPredicateForStartDate(6);

  v9 = HDSampleEntityPredicateForEndDate(6);

  v10 = MEMORY[0x277D10B20];
  v15[0] = v6;
  v15[1] = v8;
  v15[2] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v12 = [v10 predicateMatchingAllPredicates:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_pruningPredicateWithRestrictionPredicates:(char)a3 matchOnlyNilDatesWithoutShardInterval:
{
  v4 = a2;
  v5 = objc_opt_self();
  if (v4 && (v6 = v5, [v4 count]))
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __101__HDDataSyncEntity__pruningPredicateWithRestrictionPredicates_matchOnlyNilDatesWithoutShardInterval___block_invoke;
    v10[3] = &__block_descriptor_41_e45__16__0__HDSamplePruningRestrictionPredicate_8l;
    v10[4] = v6;
    v11 = a3;
    v7 = [v4 hk_map:v10];
    v8 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __101__HDDataSyncEntity__pruningPredicateWithRestrictionPredicates_matchOnlyNilDatesWithoutShardInterval___block_invoke(uint64_t a1, void *a2)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 maximumAnchor];
  v5 = HDDataEntityPredicateForObjectsAfterAnchor(v4);

  v6 = [v3 excludedSyncIdentities];
  if (v6)
  {
    v7 = [v3 excludedSyncIdentities];
    v8 = [v7 count];

    if (v8)
    {
      v9 = MEMORY[0x277D10B28];
      v10 = [v3 excludedSyncIdentities];
      v6 = [v9 doesNotContainPredicateWithProperty:@"data_provenances.sync_identity" values:v10];
    }

    else
    {
      v6 = 0;
    }
  }

  v11 = [v3 startDate];
  v12 = [v3 endDate];
  v13 = [HDCloudSyncStore shardIntervalWithStartDate:v11 endDate:v12];

  if (v13)
  {
    v14 = *(a1 + 32);
    v15 = [v13 startDate];
    v16 = [v13 endDate];
    v17 = [(HDDataSyncEntity *)v14 _predicateForDateIntervalStartDate:v15 endDate:v16];

    v18 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v5 otherPredicate:v17 otherPredicate:v6];
  }

  else
  {
    v19 = *(a1 + 40);
    v20 = MEMORY[0x277D10B20];
    if (v19 == 1)
    {
      v21 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"start_date"];
      v28[0] = v21;
      v22 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"end_date"];
      v28[1] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      v24 = [v20 predicateMatchingAnyPredicates:v23];

      v18 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v5 otherPredicate:v24 otherPredicate:v6];
    }

    else
    {
      v18 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v5 otherPredicate:v6];
    }
  }

  v25 = [MEMORY[0x277D10B20] negatedPredicate:v18];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

@end