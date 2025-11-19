@interface _HKObjectComparisonFilter
- (id)_OSBuildPredicate;
- (id)_appleWatchSourcePredicate;
- (id)_associationPredicateWithProfile:(uint64_t)a3 type:;
- (id)_contributorPredicateWithProfile:(id)a1;
- (id)_creationDatePredicate;
- (id)_devicePropertyPredicateWithProfile:(void *)a1;
- (id)_metadataKeyFromMetadataKeyPath;
- (id)_metadataPredicateWithProfile:(void *)a1;
- (id)_productTypePredicate;
- (id)_syncIdentityPredicateWithProfile:(void *)a1;
@end

@implementation _HKObjectComparisonFilter

- (id)_associationPredicateWithProfile:(uint64_t)a3 type:
{
  v27 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = a2;
    v6 = [a1 keyPath];
    v7 = [v6 isEqualToString:*MEMORY[0x277CCC7D0]];
    v8 = off_27860F890;
    if (!v7)
    {
      v8 = off_27860F338;
    }

    v9 = *v8;
    v10 = objc_opt_class();

    v11 = [a1 value];
    v12 = [v11 UUID];

    v13 = HDDataEntityPredicateForDataUUID();
    v14 = [v5 database];

    v22 = 0;
    v15 = [v10 anyWithPredicate:v13 healthDatabase:v14 error:&v22];
    v16 = v22;

    if (v15)
    {
      v17 = HDAssociationEntityPredicateForChildObjectsAssociatedWithParentObjectForType([v15 persistentID], a3);
    }

    else
    {
      _HKInitializeLogging();
      v18 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v24 = v12;
        v25 = 2114;
        v26 = v16;
        _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "Failed to find sample with UUID %{public}@, error: %{public}@", buf, 0x16u);
      }

      v17 = [MEMORY[0x277D10B70] falsePredicate];
    }

    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_appleWatchSourcePredicate
{
  if (a1)
  {
    v1 = [a1 value];
    v2 = HDDataEntityPredicateForObjectsFromAppleWatchSources([v1 BOOLValue]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_OSBuildPredicate
{
  v1 = a1;
  if (a1)
  {
    [a1 operatorType];
    v2 = HDSQLiteComparisonTypeForPredicateOperator();
    v3 = [v1 value];
    v1 = HDDataEntityPredicateForOriginBuild(v2, v3);
  }

  return v1;
}

- (id)_contributorPredicateWithProfile:(id)a1
{
  v2 = a1;
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a2;
    v4 = [v2 value];
    v11 = 0;
    v5 = [HDContributorEntity contributorEntityWithUUID:v4 profile:v3 includeDeleted:0 error:&v11];

    v6 = v11;
    if (v5)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v5, "persistentID")}];
      v2 = HDDataEntityPredicateForContributorIdentifier(v7);
    }

    else
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v13 = v2;
        v14 = 2114;
        v15 = v4;
        v16 = 2114;
        v17 = v6;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to find contributor with UUID %{public}@, error %{public}@", buf, 0x20u);
      }

      v2 = [MEMORY[0x277D10B70] falsePredicate];
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_creationDatePredicate
{
  v1 = a1;
  if (a1)
  {
    [a1 operatorType];
    v2 = HDSQLiteComparisonTypeForPredicateOperator();
    v3 = [v1 value];
    v1 = HDDataEntityPredicateForCreationDate(v2);
  }

  return v1;
}

- (id)_productTypePredicate
{
  v1 = a1;
  if (a1)
  {
    [a1 operatorType];
    v2 = HDSQLiteComparisonTypeForPredicateOperator();
    v3 = [v1 value];
    v1 = HDDataEntityPredicateForOriginProductType(v2, v3);
  }

  return v1;
}

- (id)_syncIdentityPredicateWithProfile:(void *)a1
{
  if (a1)
  {
    v3 = a1;
    v4 = a2;
    [v3 operatorType];
    v5 = HDSQLiteComparisonTypeForPredicateOperator();
    v6 = [v4 currentSyncIdentityPersistentID];

    a1 = HDDataEntityPredicateForSyncIdentity(v5, v6);
    v2 = vars8;
  }

  return a1;
}

- (id)_devicePropertyPredicateWithProfile:(void *)a1
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a2;
    v4 = [a1 keyPath];
    v5 = [v4 substringFromIndex:{objc_msgSend(*MEMORY[0x277CCC6B0], "length") + 1}];

    [a1 value];
    v6 = v18 = 0;
    v7 = v5;
    v8 = v3;
    objc_opt_self();
    v9 = [v8 deviceManager];

    v10 = [v9 deviceEntitiesWithProperty:v7 matchingValues:v6 error:&v18];

    if (v10)
    {
      v11 = [v10 hk_map:&__block_literal_global_216];
    }

    else
    {
      v11 = 0;
    }

    v12 = v18;
    if (v11)
    {
      v13 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"data_provenances.device_id" values:v11];
    }

    else
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v20 = v12;
        _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "Failed to find devices: %{public}@", buf, 0xCu);
      }

      v13 = [MEMORY[0x277D10B70] falsePredicate];
    }

    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_metadataPredicateWithProfile:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(_HKObjectComparisonFilter *)a1 _metadataKeyFromMetadataKeyPath];
    v5 = [a1 operatorType];
    v6 = [v3 metadataManager];
    v7 = [a1 value];
    if (v5 == 10)
    {
      [v6 predicateWithMetadataKey:v4 allowedValues:v7];
    }

    else
    {
      [v6 predicateWithMetadataKey:v4 value:v7 operatorType:{objc_msgSend(a1, "operatorType")}];
    }
    a1 = ;
  }

  return a1;
}

- (id)_metadataKeyFromMetadataKeyPath
{
  if (a1)
  {
    v1 = [a1 keyPath];
    v2 = [v1 substringFromIndex:{objc_msgSend(*MEMORY[0x277CCC718], "length") + 1}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end