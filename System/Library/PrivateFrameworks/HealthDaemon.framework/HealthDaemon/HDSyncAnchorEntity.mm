@interface HDSyncAnchorEntity
+ (BOOL)enumerateSyncAnchorsForStoreID:(int64_t)a3 database:(id)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)getMinimumSyncAnchorsOfType:(int64_t)a3 anchorMap:(id)a4 updatedSince:(id)a5 profile:(id)a6 error:(id *)a7;
+ (BOOL)getRequestedVersion:(id *)a3 entityIdentifier:(id)a4 store:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (BOOL)getSyncAnchorsOfType:(int64_t)a3 anchorMap:(id)a4 store:(id)a5 profile:(id)a6 error:(id *)a7;
+ (BOOL)prepareSyncAnchorsForEntityIdentifiers:(id)a3 store:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)resetAllSyncAnchorsOfType:(int64_t)a3 syncProvenances:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)resetNextAnchorsIfNeededForStore:(id)a3 profile:(id)a4 minimumElapsedTime:(double)a5 error:(id *)a6;
+ (BOOL)resetSyncAnchorsOfType:(int64_t)a3 store:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)resetSyncStore:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)setAcknowledgedAnchorsWithMap:(id)a3 store:(id)a4 resetNext:(BOOL)a5 resetInvalid:(BOOL)a6 profile:(id)a7 error:(id *)a8;
+ (BOOL)updateLocalVersion:(int)a3 entityIdentifier:(id)a4 store:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (BOOL)updateReceivedVersion:(int)a3 entityIdentifier:(id)a4 store:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (BOOL)updateRequestedVersion:(int)a3 entityIdentifier:(id)a4 store:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (BOOL)updateSyncAnchor:(int64_t)a3 type:(int64_t)a4 entityIdentifier:(id)a5 store:(id)a6 updatePolicy:(int64_t)a7 profile:(id)a8 error:(id *)a9;
+ (BOOL)updateSyncAnchor:(int64_t)a3 type:(int64_t)a4 updateDate:(id)a5 entityIdentifier:(id)a6 store:(id)a7 updatePolicy:(int64_t)a8 profile:(id)a9 error:(id *)a10;
+ (BOOL)updateSyncAnchorsWithMap:(id)a3 type:(int64_t)a4 store:(id)a5 updatePolicy:(int64_t)a6 resetInvalid:(BOOL)a7 profile:(id)a8 error:(id *)a9;
+ (BOOL)updateSyncAnchorsWithMap:(id)a3 type:(int64_t)a4 updateDate:(id)a5 store:(id)a6 updatePolicy:(int64_t)a7 resetInvalid:(BOOL)a8 profile:(id)a9 error:(id *)a10;
+ (id)_predicateForSyncEntityIdentifier:(void *)a3 syncStore:;
+ (id)_predicateForSyncStore:(uint64_t)a1;
+ (id)frozenAnchorMapPerStoreInProfile:(id)a3 error:(id *)a4;
+ (id)latestFrozenAnchorUpdatePerStoreInProfile:(id)a3 error:(id *)a4;
+ (id)uniquedColumns;
+ (id)unitTest_predicateForReceived:(int64_t)a3;
+ (id)unitTest_predicateForStoreType:(int64_t)a3;
+ (id)unitTest_predicateForType:(int64_t)a3;
+ (id)unitTest_predicateForValidated:(int64_t)a3;
+ (int64_t)minimumFrozenAnchorInEpochs:(id)a3 store:(id)a4 entityIdentifier:(id)a5 profile:(id)a6 error:(id *)a7;
+ (int64_t)syncAnchorOfType:(int64_t)a3 entityIdentifier:(id)a4 store:(id)a5 profile:(id)a6 error:(id *)a7;
+ (uint64_t)_getAnchorsForProperty:(void *)a3 anchorMap:(void *)a4 store:(void *)a5 profile:(uint64_t)a6 error:;
+ (uint64_t)_setAnchorsWithMap:(void *)a3 updateDate:(void *)a4 store:(uint64_t)a5 updateOptions:(uint64_t)a6 updatePolicy:(char)a7 resetInvalid:(void *)a8 profile:(uint64_t)a9 error:;
+ (uint64_t)_setSyncAnchor:(uint64_t)a3 updateDate:(uint64_t)a4 options:(uint64_t)a5 updatePolicy:(void *)a6 entityIdentifier:(void *)a7 store:(void *)a8 profile:(uint64_t)a9 error:;
+ (uint64_t)_setSyncAnchor:(uint64_t)a3 updateDate:(uint64_t)a4 options:(uint64_t)a5 updatePolicy:(void *)a6 entityIdentifier:(void *)a7 store:(void *)a8 transaction:(uint64_t)a9 error:;
@end

@implementation HDSyncAnchorEntity

+ (BOOL)prepareSyncAnchorsForEntityIdentifiers:(id)a3 store:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __81__HDSyncAnchorEntity_prepareSyncAnchorsForEntityIdentifiers_store_profile_error___block_invoke;
  v18[3] = &unk_278613550;
  v19 = v11;
  v20 = v12;
  v21 = v10;
  v22 = a1;
  v14 = v10;
  v15 = v12;
  v16 = v11;
  LOBYTE(a6) = [a1 performWriteTransactionWithHealthDatabase:v13 error:a6 block:v18];

  return a6;
}

uint64_t __81__HDSyncAnchorEntity_prepareSyncAnchorsForEntityIdentifiers_store_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_alloc_init(HDSyncAnchorMap);
  if ([(HDSyncAnchorEntity *)*(a1 + 56) _getAnchorsForProperty:v6 anchorMap:*(a1 + 32) store:*(a1 + 40) profile:a3 error:?])
  {
    v32 = v5;
    v7 = [v5 databaseForEntityClass:*(a1 + 56)];
    v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:*(a1 + 48)];
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __81__HDSyncAnchorEntity_prepareSyncAnchorsForEntityIdentifiers_store_profile_error___block_invoke_2;
    v41[3] = &unk_2786264B0;
    v31 = v8;
    v42 = v31;
    v10 = v9;
    v43 = v10;
    [(HDSyncAnchorMap *)v6 enumerateAnchorsAndEntityIdentifiersWithBlock:v41];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(HDSyncAnchorEntity *)*(a1 + 56) _predicateForSyncEntityIdentifier:*(a1 + 32) syncStore:?];
          v17 = [*(a1 + 56) deleteEntitiesInDatabase:v7 predicate:v16 error:a3];

          if (!v17)
          {
            v26 = v11;
            v25 = 0;
            v18 = v26;
            v27 = v31;
            v5 = v32;
            goto LABEL_25;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v30 = v11;

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = *(a1 + 48);
    v19 = [v18 countByEnumeratingWithState:&v33 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      while (2)
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v33 + 1) + 8 * j);
          v24 = [(HDSyncAnchorMap *)v6 anchorIfPresentForSyncEntityIdentifier:v23];
          if (!v24 && ![*(a1 + 56) updateSyncAnchor:0 type:0 entityIdentifier:v23 store:*(a1 + 32) updatePolicy:1 profile:*(a1 + 40) error:a3])
          {
            v25 = 0;
            goto LABEL_24;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v33 objects:v44 count:16];
        v25 = 1;
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v25 = 1;
    }

LABEL_24:
    v27 = v31;
    v5 = v32;
    v26 = v30;
LABEL_25:
  }

  else
  {
    v25 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v25;
}

+ (uint64_t)_getAnchorsForProperty:(void *)a3 anchorMap:(void *)a4 store:(void *)a5 profile:(uint64_t)a6 error:
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = objc_opt_self();
  if (!v12)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:sel__getAnchorsForProperty_anchorMap_store_profile_error_ object:v14 file:@"HDSyncAnchorEntity.m" lineNumber:391 description:{@"Invalid parameter not satisfying: %@", @"store != nil"}];
  }

  v15 = [v13 database];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __75__HDSyncAnchorEntity__getAnchorsForProperty_anchorMap_store_profile_error___block_invoke;
  v22[3] = &unk_27862C6D8;
  v26 = v11;
  v27 = v14;
  v23 = v12;
  v24 = v10;
  v25 = v13;
  v16 = v11;
  v17 = v13;
  v18 = v12;
  v19 = [v14 performReadTransactionWithHealthDatabase:v15 error:a6 block:v22];

  return v19;
}

void __81__HDSyncAnchorEntity_prepareSyncAnchorsForEntityIdentifiers_store_profile_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) containsObject:?];
  if (!a3 && (v5 & 1) == 0)
  {
    [*(a1 + 40) addObject:v6];
  }
}

+ (id)_predicateForSyncEntityIdentifier:(void *)a3 syncStore:
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = v5;
  objc_opt_self();
  if (v7)
  {
    v8 = MEMORY[0x277D10B18];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "entityIdentifier")}];
    v10 = [v8 predicateWithProperty:@"type" equalToValue:v9];

    v11 = MEMORY[0x277D10B18];
    v12 = [v7 schemaIdentifier];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = @"main";
    }

    v15 = [v11 predicateWithProperty:@"schema" equalToValue:v14];

    v16 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v10 otherPredicate:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = [(HDSyncAnchorEntity *)v6 _predicateForSyncStore:v4];

  v18 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v16 otherPredicate:v17];

  return v18;
}

+ (int64_t)syncAnchorOfType:(int64_t)a3 entityIdentifier:(id)a4 store:(id)a5 profile:(id)a6 error:(id *)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = _HDSyncAnchorPropertyForType(a3);
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = objc_opt_self();
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:sel__syncAnchorForProperty_entityIdentifier_store_profile_error_ object:v18 file:@"HDSyncAnchorEntity.m" lineNumber:1090 description:{@"Invalid parameter not satisfying: %@", @"entityIdentifier != nil"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v27 = [MEMORY[0x277CCA890] currentHandler];
  [v27 handleFailureInMethod:sel__syncAnchorForProperty_entityIdentifier_store_profile_error_ object:v18 file:@"HDSyncAnchorEntity.m" lineNumber:1091 description:{@"Invalid parameter not satisfying: %@", @"store != nil"}];

LABEL_3:
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__183;
  v38 = __Block_byref_object_dispose__183;
  v39 = 0;
  v19 = [v17 database];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __82__HDSyncAnchorEntity__syncAnchorForProperty_entityIdentifier_store_profile_error___block_invoke;
  v28[3] = &unk_27862C880;
  v33 = v18;
  v20 = v15;
  v29 = v20;
  v21 = v16;
  v30 = v21;
  v32 = &v34;
  v22 = v14;
  v31 = v22;
  v23 = [v18 performReadTransactionWithHealthDatabase:v19 error:a7 block:v28];

  if (v23)
  {
    v24 = [v35[5] longLongValue];
  }

  else
  {
    v24 = -1;
  }

  _Block_object_dispose(&v34, 8);
  return v24;
}

+ (BOOL)updateSyncAnchor:(int64_t)a3 type:(int64_t)a4 entityIdentifier:(id)a5 store:(id)a6 updatePolicy:(int64_t)a7 profile:(id)a8 error:(id *)a9
{
  v15 = a8;
  v16 = a6;
  v17 = a5;
  Current = CFAbsoluteTimeGetCurrent();
  _HDSyncAnchorUpdateOptionsForType(a4);
  LOBYTE(a7) = [(HDSyncAnchorEntity *)Current _setSyncAnchor:a1 updateDate:a3 options:v19 updatePolicy:a7 entityIdentifier:v17 store:v16 profile:v15 error:a9];

  return a7;
}

+ (uint64_t)_setSyncAnchor:(uint64_t)a3 updateDate:(uint64_t)a4 options:(uint64_t)a5 updatePolicy:(void *)a6 entityIdentifier:(void *)a7 store:(void *)a8 profile:(uint64_t)a9 error:
{
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = objc_opt_self();
  v20 = [v18 database];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __106__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_profile_error___block_invoke;
  v25[3] = &unk_27862C700;
  v28 = v19;
  v29 = a3;
  v30 = a1;
  v31 = a4;
  v32 = a5;
  v26 = v16;
  v27 = v17;
  v21 = v17;
  v22 = v16;
  v23 = [v19 performWriteTransactionWithHealthDatabase:v20 error:a9 block:v25];

  return v23;
}

+ (BOOL)updateSyncAnchorsWithMap:(id)a3 type:(int64_t)a4 store:(id)a5 updatePolicy:(int64_t)a6 resetInvalid:(BOOL)a7 profile:(id)a8 error:(id *)a9
{
  v15 = a8;
  v16 = a5;
  v17 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  _HDSyncAnchorUpdateOptionsForType(a4);
  v20 = [(HDSyncAnchorEntity *)Current _setAnchorsWithMap:a1 updateDate:v17 store:v16 updateOptions:v19 updatePolicy:a6 resetInvalid:a7 profile:v15 error:a9];

  return v20;
}

+ (uint64_t)_setAnchorsWithMap:(void *)a3 updateDate:(void *)a4 store:(uint64_t)a5 updateOptions:(uint64_t)a6 updatePolicy:(char)a7 resetInvalid:(void *)a8 profile:(uint64_t)a9 error:
{
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v19 = objc_opt_self();
  v20 = [v18 database];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __112__HDSyncAnchorEntity__setAnchorsWithMap_updateDate_store_updateOptions_updatePolicy_resetInvalid_profile_error___block_invoke;
  v25[3] = &unk_27862C808;
  v26 = v17;
  v27 = v16;
  v32 = a7;
  v28 = v19;
  v29 = a1;
  v30 = a5;
  v31 = a6;
  v21 = v16;
  v22 = v17;
  v23 = [v19 performWriteTransactionWithHealthDatabase:v20 error:a9 block:v25];

  return v23;
}

+ (BOOL)updateSyncAnchor:(int64_t)a3 type:(int64_t)a4 updateDate:(id)a5 entityIdentifier:(id)a6 store:(id)a7 updatePolicy:(int64_t)a8 profile:(id)a9 error:(id *)a10
{
  v17 = a9;
  v18 = a7;
  v19 = a6;
  [a5 timeIntervalSinceReferenceDate];
  v21 = v20;
  _HDSyncAnchorUpdateOptionsForType(a4);
  LOBYTE(a8) = [(HDSyncAnchorEntity *)v21 _setSyncAnchor:a1 updateDate:a3 options:v22 updatePolicy:a8 entityIdentifier:v19 store:v18 profile:v17 error:a10];

  return a8;
}

+ (BOOL)updateSyncAnchorsWithMap:(id)a3 type:(int64_t)a4 updateDate:(id)a5 store:(id)a6 updatePolicy:(int64_t)a7 resetInvalid:(BOOL)a8 profile:(id)a9 error:(id *)a10
{
  v17 = a9;
  v18 = a6;
  v19 = a3;
  [a5 timeIntervalSinceReferenceDate];
  v21 = v20;
  _HDSyncAnchorUpdateOptionsForType(a4);
  v23 = [(HDSyncAnchorEntity *)v21 _setAnchorsWithMap:a1 updateDate:v19 store:v18 updateOptions:v22 updatePolicy:a7 resetInvalid:a8 profile:v17 error:a10];

  return v23;
}

+ (BOOL)getSyncAnchorsOfType:(int64_t)a3 anchorMap:(id)a4 store:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = _HDSyncAnchorPropertyForType(a3);
  LOBYTE(a7) = [(HDSyncAnchorEntity *)a1 _getAnchorsForProperty:v15 anchorMap:v14 store:v13 profile:v12 error:a7];

  return a7;
}

+ (BOOL)getMinimumSyncAnchorsOfType:(int64_t)a3 anchorMap:(id)a4 updatedSince:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v14 database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__HDSyncAnchorEntity_getMinimumSyncAnchorsOfType_anchorMap_updatedSince_profile_error___block_invoke;
  v20[3] = &unk_2786145F8;
  v24 = a3;
  v25 = a1;
  v21 = v13;
  v22 = v14;
  v23 = v12;
  v16 = v12;
  v17 = v14;
  v18 = v13;
  LOBYTE(a7) = [a1 performReadTransactionWithHealthDatabase:v15 error:a7 block:v20];

  return a7;
}

uint64_t __87__HDSyncAnchorEntity_getMinimumSyncAnchorsOfType_anchorMap_updatedSince_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  v6 = a2;
  v7 = _HDSyncAnchorPropertyForType(v5);
  v8 = _HDSyncAnchorUpdateDatePropertyForType(*(a1 + 56));
  v9 = MEMORY[0x277CCACA8];
  v10 = [*(a1 + 64) disambiguatedDatabaseTable];
  v11 = [*(a1 + 64) disambiguatedDatabaseTable];
  v12 = [v9 stringWithFormat:@"SELECT %@, %@, MIN(%@) FROM %@ sa1 WHERE EXISTS (SELECT * FROM %@ sa2 WHERE (sa1.%@ = sa2.%@) AND (sa1.%@ = sa2.%@) AND (sa2.%@ >= ?)) GROUP BY %@, %@", @"schema", @"type", v7, v10, v11, @"store", @"store", @"epoch", @"epoch", v8, @"schema", @"type"];

  v13 = [v6 databaseForEntityClass:*(a1 + 64)];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __87__HDSyncAnchorEntity_getMinimumSyncAnchorsOfType_anchorMap_updatedSince_profile_error___block_invoke_2;
  v19[3] = &unk_278614860;
  v20 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__HDSyncAnchorEntity_getMinimumSyncAnchorsOfType_anchorMap_updatedSince_profile_error___block_invoke_3;
  v16[3] = &unk_2786140C0;
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v14 = [v13 executeUncachedSQL:v12 error:a3 bindingHandler:v19 enumerationHandler:v16];

  return v14;
}

uint64_t __87__HDSyncAnchorEntity_getMinimumSyncAnchorsOfType_anchorMap_updatedSince_profile_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 32) timeIntervalSinceReferenceDate];

  return sqlite3_bind_double(a2, 1, v3);
}

uint64_t __87__HDSyncAnchorEntity_getMinimumSyncAnchorsOfType_anchorMap_updatedSince_profile_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C90](a2, 0);
  if ([v3 isEqualToString:@"main"])
  {

    v3 = 0;
  }

  v4 = [HDSyncEntityIdentifier identifierWithSchema:v3 entity:HDSQLiteColumnAsInt64()];
  v5 = [*(a1 + 32) syncEngine];
  v6 = [v5 allSyncEntitiesByIdentifier];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    [*(a1 + 40) setAnchor:HDSQLiteColumnAsInt64() forSyncEntity:v7];
  }

  return 1;
}

+ (BOOL)resetSyncAnchorsOfType:(int64_t)a3 store:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = [a5 database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HDSyncAnchorEntity_resetSyncAnchorsOfType_store_profile_error___block_invoke;
  v14[3] = &unk_27861E450;
  v16 = a1;
  v17 = a3;
  v15 = v10;
  v12 = v10;
  LOBYTE(a6) = [a1 performWriteTransactionWithHealthDatabase:v11 error:a6 block:v14];

  return a6;
}

BOOL __65__HDSyncAnchorEntity_resetSyncAnchorsOfType_store_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v6 = _HDSyncAnchorPropertyForType(*(a1 + 48));
  v15[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v8 = [(HDSyncAnchorEntity *)*(a1 + 40) _predicateForSyncStore:?];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HDSyncAnchorEntity_resetSyncAnchorsOfType_store_profile_error___block_invoke_2;
  v13[3] = &unk_278614508;
  v14 = v6;
  v9 = v6;
  v10 = [(HDSQLiteEntity *)HDSyncAnchorEntity updateProperties:v7 predicate:v8 database:v5 error:a3 bindingHandler:v13];

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)_predicateForSyncStore:(uint64_t)a1
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = MEMORY[0x277D10B18];
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v2, "syncProvenance")}];
    v5 = [v3 predicateWithProperty:@"store" equalToValue:v4];

    v6 = MEMORY[0x277D10B18];
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v2, "syncEpoch")}];
    v8 = [v6 predicateWithProperty:@"epoch" equalToValue:v7];

    v9 = MEMORY[0x277D10B20];
    v14[0] = v5;
    v14[1] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v11 = [v9 predicateMatchingAllPredicates:v10];
  }

  else
  {
    v11 = [MEMORY[0x277D10B48] falsePredicate];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (BOOL)resetAllSyncAnchorsOfType:(int64_t)a3 syncProvenances:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v20[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = [a5 databaseForEntityClass:a1];
  v12 = _HDSyncAnchorPropertyForType(a3);
  v20[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v14 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"store" values:v10];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__HDSyncAnchorEntity_resetAllSyncAnchorsOfType_syncProvenances_transaction_error___block_invoke;
  v18[3] = &unk_278614508;
  v19 = v12;
  v15 = v12;
  LOBYTE(a6) = [(HDSQLiteEntity *)HDSyncAnchorEntity updateProperties:v13 predicate:v14 database:v11 error:a6 bindingHandler:v18];

  v16 = *MEMORY[0x277D85DE8];
  return a6;
}

+ (BOOL)setAcknowledgedAnchorsWithMap:(id)a3 store:(id)a4 resetNext:(BOOL)a5 resetInvalid:(BOOL)a6 profile:(id)a7 error:(id *)a8
{
  if (a5)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  if (a5)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15 = a7;
  v16 = a4;
  v17 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v19 = [(HDSyncAnchorEntity *)Current _setAnchorsWithMap:a1 updateDate:v17 store:v16 updateOptions:v13 updatePolicy:v14 resetInvalid:a6 profile:v15 error:a8];

  return v19;
}

uint64_t __75__HDSyncAnchorEntity__getAnchorsForProperty_anchorMap_store_profile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v5 = [(HDSyncAnchorEntity *)*(a1 + 64) _predicateForSyncStore:?];
  v15[0] = @"schema";
  v15[1] = @"type";
  v15[2] = *(a1 + 40);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v7 = *(a1 + 64);
  v8 = [*(a1 + 48) database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__HDSyncAnchorEntity__getAnchorsForProperty_anchorMap_store_profile_error___block_invoke_2;
  v12[3] = &unk_27861E428;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v9 = [v7 enumerateProperties:v6 withPredicate:v5 healthDatabase:v8 error:a3 enumerationHandler:v12];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __75__HDSyncAnchorEntity__getAnchorsForProperty_anchorMap_store_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x22AAC6C90](a4, 0);
  if ([v5 isEqualToString:@"main"])
  {

    v5 = 0;
  }

  v6 = [HDSyncEntityIdentifier identifierWithSchema:v5 entity:HDSQLiteColumnAsInt64()];
  v7 = [*(a1 + 32) syncEngine];
  v8 = [v7 allSyncEntitiesByIdentifier];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    [*(a1 + 40) setAnchor:HDSQLiteColumnAsInt64() forSyncEntity:v9];
  }

  return 1;
}

+ (BOOL)resetSyncStore:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__HDSyncAnchorEntity_resetSyncStore_profile_error___block_invoke;
  v12[3] = &unk_278619348;
  v13 = v8;
  v14 = a1;
  v10 = v8;
  LOBYTE(a5) = [a1 performWriteTransactionWithHealthDatabase:v9 error:a5 block:v12];

  return a5;
}

uint64_t __51__HDSyncAnchorEntity_resetSyncStore_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v6 = [(HDSyncAnchorEntity *)*(a1 + 40) _predicateForSyncStore:?];
  v7 = [*(a1 + 40) queryWithDatabase:v5 predicate:v6];
  [v7 deleteAllEntitiesWithError:a3];

  return 1;
}

+ (BOOL)enumerateSyncAnchorsForStoreID:(int64_t)a3 database:(id)a4 error:(id *)a5 handler:(id)a6
{
  v10 = a6;
  v11 = MEMORY[0x277CCACA8];
  v12 = a4;
  v13 = [a1 disambiguatedDatabaseTable];
  v14 = [v11 stringWithFormat:@"SELECT %@, %@, %@, %@, %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ? ORDER BY %@ ASC", @"epoch", @"schema", @"type", @"next", @"acked", @"frozen", @"received", @"validated", @"expected", v13, @"store", @"epoch"];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__HDSyncAnchorEntity_enumerateSyncAnchorsForStoreID_database_error_handler___block_invoke;
  v19[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v19[4] = a3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__HDSyncAnchorEntity_enumerateSyncAnchorsForStoreID_database_error_handler___block_invoke_2;
  v17[3] = &unk_278613B30;
  v18 = v10;
  v15 = v10;
  LOBYTE(a5) = [v12 executeSQL:v14 error:a5 bindingHandler:v19 enumerationHandler:v17];

  return a5;
}

uint64_t __76__HDSyncAnchorEntity_enumerateSyncAnchorsForStoreID_database_error_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C90](a2, 1);
  if ([v3 isEqualToString:@"main"])
  {

    v3 = 0;
  }

  v4 = *(a1 + 32);
  v5 = HDSQLiteColumnAsInt64();
  v6 = HDSQLiteColumnAsInt64();
  v7 = HDSQLiteColumnAsInt64();
  v8 = HDSQLiteColumnAsInt64();
  v9 = HDSQLiteColumnAsInt64();
  v10 = HDSQLiteColumnAsInt64();
  v11 = HDSQLiteColumnAsInt64();
  v12 = HDSQLiteColumnAsInt64();
  (*(v4 + 16))(v4, v5, v3, v6, v7, v8, v9, v10, v11, v12);

  return 1;
}

+ (uint64_t)_setSyncAnchor:(uint64_t)a3 updateDate:(uint64_t)a4 options:(uint64_t)a5 updatePolicy:(void *)a6 entityIdentifier:(void *)a7 store:(void *)a8 transaction:(uint64_t)a9 error:
{
  v96[19] = *MEMORY[0x277D85DE8];
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = objc_opt_self();
  if (a3 < 0)
  {
    v39 = [MEMORY[0x277CCA890] currentHandler];
    [v39 handleFailureInMethod:sel__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error_ object:v19 file:@"HDSyncAnchorEntity.m" lineNumber:514 description:{@"Invalid parameter not satisfying: %@", @"HDSyncAnchorIsValid(anchor)"}];
  }

  if ((a4 & 0x3F) != 0)
  {
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_16:
    v41 = [MEMORY[0x277CCA890] currentHandler];
    [v41 handleFailureInMethod:sel__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error_ object:v19 file:@"HDSyncAnchorEntity.m" lineNumber:516 description:{@"Invalid parameter not satisfying: %@", @"entityIdentifier != nil"}];

    if (v17)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

  v40 = [MEMORY[0x277CCA890] currentHandler];
  [v40 handleFailureInMethod:sel__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error_ object:v19 file:@"HDSyncAnchorEntity.m" lineNumber:515 description:{@"Invalid parameter not satisfying: %@", @"(options & HDSyncAnchorUpdateOptionsNext) || (options & HDSyncAnchorUpdateOptionsAcked) || (options & HDSyncAnchorUpdateOptionsReceived) || (options & HDSyncAnchorUpdateOptionsFrozen) || (options & HDSyncAnchorUpdateOptionsExpected) || (options & HDSyncAnchorUpdateOptionsValidated)"}];

  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v17)
  {
    goto LABEL_6;
  }

LABEL_17:
  v42 = [MEMORY[0x277CCA890] currentHandler];
  [v42 handleFailureInMethod:sel__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error_ object:v19 file:@"HDSyncAnchorEntity.m" lineNumber:517 description:{@"Invalid parameter not satisfying: %@", @"store != nil"}];

LABEL_6:
  v45 = v16;
  v20 = [v16 schemaIdentifier];
  v21 = v20;
  v22 = @"main";
  if (v20)
  {
    v22 = v20;
  }

  v23 = v22;

  [v18 databaseForEntityClass:objc_opt_class()];
  v43 = a5;
  v44 = a4;
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__183;
  v94 = __Block_byref_object_dispose__183;
  v95 = 0;
  v89[0] = 0;
  v89[1] = v89;
  v89[2] = 0x2020000000;
  v89[3] = 0;
  v88[0] = 0;
  v88[1] = v88;
  v88[2] = 0x2020000000;
  v88[3] = 0;
  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x2020000000;
  v87[3] = 0;
  v86[0] = 0;
  v86[1] = v86;
  v86[2] = 0x2020000000;
  v86[3] = 0;
  v85[0] = 0;
  v85[1] = v85;
  v85[2] = 0x2020000000;
  v85[3] = 0;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x2020000000;
  v24 = v84[3] = 0;
  v83[0] = 0;
  v83[1] = v83;
  v83[2] = 0x2020000000;
  v83[3] = 0;
  v82[0] = 0;
  v82[1] = v82;
  v82[2] = 0x2020000000;
  v82[3] = 0;
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x2020000000;
  v81[3] = 0;
  v80[0] = 0;
  v80[1] = v80;
  v80[2] = 0x2020000000;
  v80[3] = 0;
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x2020000000;
  v79[3] = 0;
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x2020000000;
  v78[3] = 0;
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke;
  v77[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v77[4] = v19;
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke_2;
  v73[3] = &unk_278613528;
  v25 = v23;
  v74 = v25;
  v26 = v45;
  v75 = v26;
  v27 = v17;
  v76 = v27;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke_3;
  v72[3] = &unk_27862C728;
  v72[4] = &v90;
  v72[5] = v89;
  v72[6] = v88;
  v72[7] = v87;
  v72[8] = v86;
  v72[9] = v85;
  v72[10] = v84;
  v72[11] = v83;
  v72[12] = v82;
  v72[13] = v81;
  v72[14] = v80;
  v72[15] = v79;
  v72[16] = v78;
  if ([v24 executeCachedStatementForKey:&_setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error__lookupKey error:a9 SQLGenerator:v77 bindingHandler:v73 enumerationHandler:v72])
  {
    v28 = v18;
    if (v91[5])
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke_6;
      aBlock[3] = &__block_descriptor_48_e8_q16__0q8l;
      aBlock[4] = v43;
      aBlock[5] = a3;
      v29 = _Block_copy(aBlock);
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke_7;
      v62[3] = &unk_27862C7B8;
      v63[1] = v44;
      v30 = v29;
      v63[0] = v30;
      *&v63[2] = a1;
      v31 = _Block_copy(v62);
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke_8;
      v61[3] = &__block_descriptor_40_e15___NSString_8__0l;
      v61[4] = v19;
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke_9;
      v46[3] = &unk_27862C7E0;
      v32 = v31;
      v47 = v32;
      v48 = v89;
      v49 = v88;
      v50 = v87;
      v51 = v86;
      v52 = v85;
      v53 = v84;
      v54 = v83;
      v55 = v82;
      v56 = v81;
      v57 = v80;
      v58 = v79;
      v59 = v78;
      v60 = &v90;
      v33 = [v24 executeCachedStatementForKey:&_setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error__updateKey error:a9 SQLGenerator:v61 bindingHandler:v46 enumerationHandler:0];

      v34 = v63;
    }

    else
    {
      v96[0] = @"next";
      v96[1] = @"next_updated_date";
      v96[2] = @"acked";
      v96[3] = @"acked_updated_date";
      v96[4] = @"frozen";
      v96[5] = @"frozen_updated_date";
      v96[6] = @"received";
      v96[7] = @"received_updated_date";
      v96[8] = @"expected";
      v96[9] = @"expected_updated_date";
      v96[10] = @"validated";
      v96[11] = @"validated_updated_date";
      v96[12] = @"schema";
      v96[13] = @"type";
      v96[14] = @"store";
      v96[15] = @"epoch";
      v96[16] = @"local_version";
      v96[17] = @"received_version";
      v96[18] = @"requested_version";
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:19];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke_4;
      v65[3] = &unk_27862C770;
      v69 = v44;
      v70 = a3;
      v71 = a1;
      v66 = v25;
      v67 = v26;
      v68 = v27;
      v35 = [v19 insertOrReplaceEntity:0 database:v24 properties:v30 error:a9 bindingHandler:v65];
      v36 = v91[5];
      v91[5] = v35;

      v33 = v91[5] != 0;
      v34 = &v66;
      v32 = v67;
    }
  }

  else
  {
    v33 = 0;
    v28 = v18;
  }

  _Block_object_dispose(v78, 8);
  _Block_object_dispose(v79, 8);
  _Block_object_dispose(v80, 8);
  _Block_object_dispose(v81, 8);
  _Block_object_dispose(v82, 8);
  _Block_object_dispose(v83, 8);
  _Block_object_dispose(v84, 8);
  _Block_object_dispose(v85, 8);
  _Block_object_dispose(v86, 8);
  _Block_object_dispose(v87, 8);
  _Block_object_dispose(v88, 8);
  _Block_object_dispose(v89, 8);
  _Block_object_dispose(&v90, 8);

  v37 = *MEMORY[0x277D85DE8];
  return v33;
}

id __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT ROWID, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ? AND %@ = ? AND %@ = ? AND %@ = ?", @"next", @"next_updated_date", @"acked", @"acked_updated_date", @"frozen", @"frozen_updated_date", @"received", @"received_updated_date", @"expected", @"expected_updated_date", @"validated", @"validated_updated_date", v2, @"schema", @"type", @"store", @"epoch", 0];

  return v3;
}

uint64_t __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindStringToStatement();
  sqlite3_bind_int64(a2, 2, [*(a1 + 40) entityIdentifier]);
  sqlite3_bind_int64(a2, 3, [*(a1 + 48) syncProvenance]);
  v5 = [*(a1 + 48) syncEpoch];

  return sqlite3_bind_int64(a2, 4, v5);
}

uint64_t __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke_3(void *a1, uint64_t a2)
{
  v4 = [(HDSQLiteEntity *)[HDSyncAnchorEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(a1[5] + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(a1[6] + 8) + 24) = MEMORY[0x22AAC6C50](a2, 2);
  *(*(a1[7] + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(a1[8] + 8) + 24) = MEMORY[0x22AAC6C50](a2, 4);
  *(*(a1[9] + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(a1[10] + 8) + 24) = MEMORY[0x22AAC6C50](a2, 6);
  *(*(a1[11] + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(a1[12] + 8) + 24) = MEMORY[0x22AAC6C50](a2, 8);
  *(*(a1[13] + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(a1[14] + 8) + 24) = MEMORY[0x22AAC6C50](a2, 10);
  *(*(a1[15] + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(a1[16] + 8) + 24) = MEMORY[0x22AAC6C50](a2, 12);
  return 0;
}

void __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke_5;
  v6[3] = &__block_descriptor_64_e8_v16__0q8l;
  v4 = *(a1 + 64);
  v6[4] = *(a1 + 56);
  v6[5] = a2;
  v6[6] = v4;
  v6[7] = *(a1 + 72);
  v5 = _Block_copy(v6);
  v5[2](v5, 0);
  v5[2](v5, 1);
  v5[2](v5, 2);
  v5[2](v5, 3);
  v5[2](v5, 4);
  v5[2](v5, 5);
  MEMORY[0x22AAC6BD0](a2, @"schema", *(a1 + 32));
  MEMORY[0x22AAC6B90](a2, @"type", [*(a1 + 40) entityIdentifier]);
  MEMORY[0x22AAC6B90](a2, @"store", [*(a1 + 48) syncProvenance]);
  MEMORY[0x22AAC6B90](a2, @"epoch", [*(a1 + 48) syncEpoch]);
  MEMORY[0x22AAC6B90](a2, @"local_version", 0);
  MEMORY[0x22AAC6B90](a2, @"received_version", 0);
  MEMORY[0x22AAC6BA0](a2, @"requested_version");
}

void __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke_5(void *a1, unint64_t a2)
{
  v11 = _HDSyncAnchorPropertyForType(a2);
  v4 = _HDSyncAnchorUpdateDatePropertyForType(a2);
  v5 = a1[4];
  _HDSyncAnchorUpdateOptionsForType(a2);
  v7 = v6;
  v8 = a1[5];
  if ((v7 & v5) != 0)
  {
    MEMORY[0x22AAC6B90](v8, v11, a1[6]);
    v9 = a1[5];
    v10.n128_u64[0] = a1[7];
  }

  else
  {
    MEMORY[0x22AAC6B90](v8, v11, 0);
    v9 = a1[5];
    v10.n128_u64[0] = 0;
  }

  MEMORY[0x22AAC6B60](v9, v4, v10);
}

uint64_t __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (v2 == 2)
    {
      return *(a1 + 40);
    }

    if (v2 == 1)
    {
      if (*(a1 + 40) <= a2)
      {
        return a2;
      }

      else
      {
        return *(a1 + 40);
      }
    }

    return a2;
  }

  if (*(a1 + 40) >= a2)
  {
    return a2;
  }

  else
  {
    return *(a1 + 40);
  }
}

uint64_t __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke_7(double *a1, sqlite3_stmt *a2, int a3, unint64_t a4, sqlite3_int64 a5, double a6)
{
  v11 = *(a1 + 5);
  _HDSyncAnchorUpdateOptionsForType(a4);
  if ((v12 & v11) != 0)
  {
    v13 = (*(*(a1 + 4) + 16))();
    sqlite3_bind_int64(a2, a3, v13);
    v14 = a1[6];
    v15 = a3 + 1;
    v16 = a2;
  }

  else
  {
    sqlite3_bind_int64(a2, a3, a5);
    v15 = a3 + 1;
    v16 = a2;
    v14 = a6;
  }

  return sqlite3_bind_double(v16, v15, v14);
}

id __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke_8(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ?, %@ = ?, %@ = ?, %@ = ?, %@ = ?, %@ = ?, %@ = ?, %@ = ?, %@ = ?, %@ = ?, %@ = ?, %@ = ? WHERE ROWID = ?", v2, @"next", @"next_updated_date", @"acked", @"acked_updated_date", @"frozen", @"frozen_updated_date", @"received", @"received_updated_date", @"expected", @"expected_updated_date", @"validated", @"validated_updated_date", 0];

  return v3;
}

uint64_t __110__HDSyncAnchorEntity__setSyncAnchor_updateDate_options_updatePolicy_entityIdentifier_store_transaction_error___block_invoke_9(void *a1, sqlite3_stmt *a2)
{
  v4 = *(*(a1[5] + 8) + 24);
  (*(a1[4] + 16))(*(*(a1[6] + 8) + 24));
  v5 = *(*(a1[7] + 8) + 24);
  (*(a1[4] + 16))(*(*(a1[8] + 8) + 24));
  v6 = *(*(a1[9] + 8) + 24);
  (*(a1[4] + 16))(*(*(a1[10] + 8) + 24));
  v7 = *(*(a1[11] + 8) + 24);
  (*(a1[4] + 16))(*(*(a1[12] + 8) + 24));
  v8 = *(*(a1[13] + 8) + 24);
  (*(a1[4] + 16))(*(*(a1[14] + 8) + 24));
  v9 = *(*(a1[15] + 8) + 24);
  (*(a1[4] + 16))(*(*(a1[16] + 8) + 24));
  v10 = [*(*(a1[17] + 8) + 40) persistentID];

  return sqlite3_bind_int64(a2, 13, v10);
}

uint64_t __112__HDSyncAnchorEntity__setAnchorsWithMap_updateDate_store_updateOptions_updatePolicy_resetInvalid_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [*(a1 + 32) orderedSyncEntities];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  v9 = *v21;
  do
  {
    v10 = 0;
    do
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v20 + 1) + 8 * v10);
      v12 = [v11 syncEntityIdentifier];
      v13 = [*(a1 + 40) anchorForSyncEntityClass:v11];
      v14 = v13;
      if (*(a1 + 80) == 1)
      {
        v14 = v13 & ~(v13 >> 63);
      }

      else if (v13 < 0)
      {

        goto LABEL_10;
      }

      v15 = [(HDSyncAnchorEntity *)*(a1 + 56) _setSyncAnchor:v14 updateDate:*(a1 + 64) options:*(a1 + 72) updatePolicy:v12 entityIdentifier:*(a1 + 32) store:v5 transaction:a3 error:?];

      if (!v15)
      {
        v17 = 0;
        goto LABEL_16;
      }

LABEL_10:
      ++v10;
    }

    while (v8 != v10);
    v16 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    v8 = v16;
  }

  while (v16);
LABEL_14:
  v17 = 1;
LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (BOOL)resetNextAnchorsIfNeededForStore:(id)a3 profile:(id)a4 minimumElapsedTime:(double)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [a4 database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__HDSyncAnchorEntity_resetNextAnchorsIfNeededForStore_profile_minimumElapsedTime_error___block_invoke;
  v14[3] = &unk_27861E450;
  v15 = v10;
  v16 = a1;
  v17 = a5;
  v12 = v10;
  LOBYTE(a6) = [a1 performWriteTransactionWithHealthDatabase:v11 error:a6 block:v14];

  return a6;
}

uint64_t __88__HDSyncAnchorEntity_resetNextAnchorsIfNeededForStore_profile_minimumElapsedTime_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v5;
  v11 = objc_opt_self();
  if (!v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:sel__resetNextAnchorsForStore_updateDate_minimumElapsedTime_transaction_error_ object:v11 file:@"HDSyncAnchorEntity.m" lineNumber:754 description:{@"Invalid parameter not satisfying: %@", @"store != nil"}];
  }

  v12 = [v10 databaseForEntityClass:objc_opt_class()];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __96__HDSyncAnchorEntity__resetNextAnchorsForStore_updateDate_minimumElapsedTime_transaction_error___block_invoke;
  v21[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v21[4] = v11;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __96__HDSyncAnchorEntity__resetNextAnchorsForStore_updateDate_minimumElapsedTime_transaction_error___block_invoke_2;
  v17[3] = &unk_278619A20;
  v19 = Current;
  v20 = v8;
  v18 = v9;
  v13 = v9;
  v14 = [v12 executeCachedStatementForKey:&_resetNextAnchorsForStore_updateDate_minimumElapsedTime_transaction_error__updateKey error:a3 SQLGenerator:v21 bindingHandler:v17 enumerationHandler:0];

  return v14;
}

id __96__HDSyncAnchorEntity__resetNextAnchorsForStore_updateDate_minimumElapsedTime_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = %@ WHERE %@ < %@ AND %@ < ? AND %@ < ? AND %@ = ? AND %@ = ?", v2, @"next", @"acked", @"acked", @"next", @"acked_updated_date", @"next_updated_date", @"store", @"epoch", 0];

  return v3;
}

uint64_t __96__HDSyncAnchorEntity__resetNextAnchorsForStore_updateDate_minimumElapsedTime_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, (*(a1 + 40) - *(a1 + 48)));
  sqlite3_bind_int64(a2, 2, (*(a1 + 40) - *(a1 + 48)));
  sqlite3_bind_int64(a2, 3, [*(a1 + 32) syncProvenance]);
  v4 = [*(a1 + 32) syncEpoch];

  return sqlite3_bind_int64(a2, 4, v4);
}

id __87__HDSyncAnchorEntity__initializeLocalVersion_entityIdentifier_store_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ? WHERE %@ = ? AND %@ = ? AND %@ = ? AND %@ = ?", v2, @"local_version", @"schema", @"type", @"store", @"epoch"];

  return v3;
}

uint64_t __87__HDSyncAnchorEntity__initializeLocalVersion_entityIdentifier_store_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int(a2, 1, *(a1 + 56));
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 3, [*(a1 + 40) entityIdentifier]);
  sqlite3_bind_int64(a2, 4, [*(a1 + 48) syncProvenance]);
  v5 = [*(a1 + 48) syncEpoch];

  return sqlite3_bind_int64(a2, 5, v5);
}

id __108__HDSyncAnchorEntity__resetAnchorsToValidateAndUpdateLocalVersion_entityIdentifier_store_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ?, %@ = %@, %@ = ?, %@ = %@, %@ = ? WHERE %@ = ? AND %@ = ? AND %@ = ? AND %@ = ?", v2, @"local_version", @"received", @"validated", @"received_updated_date", @"expected", @"validated", @"expected_updated_date", @"schema", @"type", @"store", @"epoch", 0];

  return v3;
}

uint64_t __108__HDSyncAnchorEntity__resetAnchorsToValidateAndUpdateLocalVersion_entityIdentifier_store_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 64));
  sqlite3_bind_double(a2, 2, *(a1 + 56));
  sqlite3_bind_double(a2, 3, *(a1 + 56));
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 5, [*(a1 + 40) entityIdentifier]);
  sqlite3_bind_int64(a2, 6, [*(a1 + 48) syncProvenance]);
  v5 = [*(a1 + 48) syncEpoch];

  return sqlite3_bind_int64(a2, 7, v5);
}

id __92__HDSyncAnchorEntity__primitiveUpdateLocalVersion_entityIdentifier_store_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ? WHERE %@ = ? AND %@ = ? AND %@ = ? AND %@ = ?", v2, @"local_version", @"schema", @"type", @"store", @"epoch", 0];

  return v3;
}

uint64_t __92__HDSyncAnchorEntity__primitiveUpdateLocalVersion_entityIdentifier_store_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 56));
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 3, [*(a1 + 40) entityIdentifier]);
  sqlite3_bind_int64(a2, 4, [*(a1 + 48) syncProvenance]);
  v5 = [*(a1 + 48) syncEpoch];

  return sqlite3_bind_int64(a2, 5, v5);
}

+ (BOOL)updateLocalVersion:(int)a3 entityIdentifier:(id)a4 store:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v96 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v59 = [MEMORY[0x277CCA890] currentHandler];
    [v59 handleFailureInMethod:a2 object:a1 file:@"HDSyncAnchorEntity.m" lineNumber:908 description:{@"Invalid parameter not satisfying: %@", @"store != nil"}];
  }

  v14 = [v11 schemaIdentifier];
  v15 = v14;
  v16 = @"main";
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v18 = [v13 databaseForEntityClass:objc_opt_class()];
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = -1;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = -1;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __82__HDSyncAnchorEntity_updateLocalVersion_entityIdentifier_store_transaction_error___block_invoke;
  v73[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v73[4] = a1;
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __82__HDSyncAnchorEntity_updateLocalVersion_entityIdentifier_store_transaction_error___block_invoke_2;
  v69[3] = &unk_278613528;
  v19 = v17;
  v70 = v19;
  v20 = v11;
  v71 = v20;
  v21 = v12;
  v72 = v21;
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __82__HDSyncAnchorEntity_updateLocalVersion_entityIdentifier_store_transaction_error___block_invoke_3;
  v68[3] = &unk_278627FD0;
  v68[4] = &v82;
  v68[5] = &v78;
  v68[6] = &v74;
  if ([v18 executeCachedStatementForKey:&updateLocalVersion_entityIdentifier_store_transaction_error__lookupKey error:a7 SQLGenerator:v73 bindingHandler:v69 enumerationHandler:v68])
  {
    v22 = *(v83 + 6);
    if (v22 < 0)
    {
      v38 = v20;
      v64 = v21;
      v39 = v13;
      v40 = objc_opt_self();
      v41 = [v38 schemaIdentifier];
      v31 = v41;
      v42 = @"main";
      if (v41)
      {
        v42 = v41;
      }

      v61 = v42;

      v43 = [v39 databaseForEntityClass:objc_opt_class()];
      LODWORD(v31) = [(HDSyncAnchorEntity *)0.0 _setSyncAnchor:v40 updateDate:0 options:4 updatePolicy:1 entityIdentifier:v38 store:v64 transaction:v39 error:a7];

      if (v31)
      {
        v86 = MEMORY[0x277D85DD0];
        v87 = 3221225472;
        v88 = __87__HDSyncAnchorEntity__initializeLocalVersion_entityIdentifier_store_transaction_error___block_invoke;
        v89 = &__block_descriptor_40_e15___NSString_8__0l;
        v90 = v40;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __87__HDSyncAnchorEntity__initializeLocalVersion_entityIdentifier_store_transaction_error___block_invoke_2;
        *v92 = &unk_27862C830;
        LODWORD(v94) = a3;
        *&v92[8] = v61;
        *&v92[16] = v38;
        v93 = v64;
        LOBYTE(v31) = [v43 executeCachedStatementForKey:&_initializeLocalVersion_entityIdentifier_store_transaction_error__setInitialKey error:a7 SQLGenerator:&v86 bindingHandler:buf enumerationHandler:0];
      }
    }

    else if (v22 >= a3)
    {
      LOBYTE(v31) = 1;
    }

    else if (v22 >= *(v79 + 6))
    {
      _HKInitializeLogging();
      v44 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = *(v83 + 6);
        v46 = [v20 description];
        v47 = *(v79 + 6);
        *buf = 138544386;
        *&buf[4] = a1;
        *&buf[12] = 1026;
        *&buf[14] = v45;
        *&buf[18] = 1026;
        *&buf[20] = a3;
        *v92 = 2114;
        *&v92[2] = v46;
        *&v92[10] = 1026;
        *&v92[12] = v47;
        _os_log_impl(&dword_228986000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@: Local entity sync version change (%{public}d -> %{public}d) for %{public}@; no anchor reset needed (highest received version: %{public}d)", buf, 0x28u);
      }

      v48 = v20;
      v62 = v21;
      v49 = v13;
      v50 = objc_opt_self();
      v51 = [v48 schemaIdentifier];
      v31 = v51;
      v52 = @"main";
      if (v51)
      {
        v52 = v51;
      }

      v53 = v52;

      v65 = [v49 databaseForEntityClass:objc_opt_class()];

      v86 = MEMORY[0x277D85DD0];
      v87 = 3221225472;
      v88 = __92__HDSyncAnchorEntity__primitiveUpdateLocalVersion_entityIdentifier_store_transaction_error___block_invoke;
      v89 = &__block_descriptor_40_e15___NSString_8__0l;
      v90 = v50;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __92__HDSyncAnchorEntity__primitiveUpdateLocalVersion_entityIdentifier_store_transaction_error___block_invoke_2;
      *v92 = &unk_27862C830;
      LODWORD(v94) = a3;
      *&v92[8] = v53;
      *&v92[16] = v48;
      v93 = v62;
      v54 = v62;
      v55 = v48;
      v56 = v53;
      LOBYTE(v31) = [v65 executeCachedStatementForKey:&_primitiveUpdateLocalVersion_entityIdentifier_store_transaction_error__updateKey error:a7 SQLGenerator:&v86 bindingHandler:buf enumerationHandler:0];
    }

    else
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(v83 + 6);
        v25 = [v20 description];
        v26 = v75[3];
        *buf = 138544386;
        *&buf[4] = a1;
        *&buf[12] = 1026;
        *&buf[14] = v24;
        *&buf[18] = 1026;
        *&buf[20] = a3;
        *v92 = 2114;
        *&v92[2] = v25;
        *&v92[10] = 2050;
        *&v92[12] = v26;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: Local entity sync version change (%{public}d -> %{public}d) for %{public}@; resetting received and expected anchors to %{public}lld", buf, 0x2Cu);
      }

      v27 = v20;
      v60 = v21;
      v28 = v13;
      v29 = objc_opt_self();
      v30 = [v27 schemaIdentifier];
      v31 = v30;
      v32 = @"main";
      if (v30)
      {
        v32 = v30;
      }

      v33 = v32;

      v63 = [v28 databaseForEntityClass:objc_opt_class()];

      Current = CFAbsoluteTimeGetCurrent();
      v86 = MEMORY[0x277D85DD0];
      v87 = 3221225472;
      v88 = __108__HDSyncAnchorEntity__resetAnchorsToValidateAndUpdateLocalVersion_entityIdentifier_store_transaction_error___block_invoke;
      v89 = &__block_descriptor_40_e15___NSString_8__0l;
      v90 = v29;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __108__HDSyncAnchorEntity__resetAnchorsToValidateAndUpdateLocalVersion_entityIdentifier_store_transaction_error___block_invoke_2;
      *v92 = &unk_27862C858;
      v95 = a3;
      v94 = Current;
      *&v92[8] = v33;
      *&v92[16] = v27;
      v93 = v60;
      v35 = v60;
      v36 = v27;
      v37 = v33;
      LOBYTE(v31) = [v63 executeCachedStatementForKey:&_resetAnchorsToValidateAndUpdateLocalVersion_entityIdentifier_store_transaction_error__updateKey error:a7 SQLGenerator:&v86 bindingHandler:buf enumerationHandler:0];
    }
  }

  else
  {
    LOBYTE(v31) = 0;
  }

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);

  v57 = *MEMORY[0x277D85DE8];
  return v31;
}

id __82__HDSyncAnchorEntity_updateLocalVersion_entityIdentifier_store_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@, %@, %@ FROM %@ WHERE %@ = ? AND %@ = ? AND %@ = ? AND %@ = ?", @"local_version", @"received_version", @"validated", v2, @"schema", @"type", @"store", @"epoch"];

  return v3;
}

uint64_t __82__HDSyncAnchorEntity_updateLocalVersion_entityIdentifier_store_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 2, [*(a1 + 40) entityIdentifier]);
  sqlite3_bind_int64(a2, 3, [*(a1 + 48) syncProvenance]);
  v5 = [*(a1 + 48) syncEpoch];

  return sqlite3_bind_int64(a2, 4, v5);
}

uint64_t __82__HDSyncAnchorEntity_updateLocalVersion_entityIdentifier_store_transaction_error___block_invoke_3(void *a1)
{
  *(*(a1[4] + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(a1[5] + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(a1[6] + 8) + 24) = HDSQLiteColumnAsInt64();
  return 1;
}

+ (BOOL)updateReceivedVersion:(int)a3 entityIdentifier:(id)a4 store:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v14)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"HDSyncAnchorEntity.m" lineNumber:987 description:{@"Invalid parameter not satisfying: %@", @"store != nil"}];
  }

  v16 = [v13 schemaIdentifier];
  v17 = v16;
  v18 = @"main";
  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  v20 = [v15 databaseForEntityClass:objc_opt_class()];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __85__HDSyncAnchorEntity_updateReceivedVersion_entityIdentifier_store_transaction_error___block_invoke;
  v32[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v32[4] = a1;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __85__HDSyncAnchorEntity_updateReceivedVersion_entityIdentifier_store_transaction_error___block_invoke_2;
  v27[3] = &unk_27862C830;
  v31 = a3;
  v28 = v19;
  v29 = v13;
  v30 = v14;
  v21 = v14;
  v22 = v13;
  v23 = v19;
  v24 = [v20 executeCachedStatementForKey:&updateReceivedVersion_entityIdentifier_store_transaction_error__updateKey error:a7 SQLGenerator:v32 bindingHandler:v27 enumerationHandler:0];

  return v24;
}

id __85__HDSyncAnchorEntity_updateReceivedVersion_entityIdentifier_store_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ? WHERE %@ < ? AND %@ = ? AND %@ = ? AND %@ = ? AND %@ = ?", v2, @"received_version", @"received_version", @"schema", @"type", @"store", @"epoch", 0];

  return v3;
}

uint64_t __85__HDSyncAnchorEntity_updateReceivedVersion_entityIdentifier_store_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 56));
  sqlite3_bind_int64(a2, 2, *(a1 + 56));
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 4, [*(a1 + 40) entityIdentifier]);
  sqlite3_bind_int64(a2, 5, [*(a1 + 48) syncProvenance]);
  v5 = [*(a1 + 48) syncEpoch];

  return sqlite3_bind_int64(a2, 6, v5);
}

+ (BOOL)getRequestedVersion:(id *)a3 entityIdentifier:(id)a4 store:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v14)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"HDSyncAnchorEntity.m" lineNumber:1019 description:{@"Invalid parameter not satisfying: %@", @"store != nil"}];
  }

  v16 = [v13 schemaIdentifier];
  v17 = v16;
  v18 = @"main";
  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__183;
  v38 = __Block_byref_object_dispose__183;
  v39 = 0;
  v20 = [v15 databaseForEntityClass:objc_opt_class()];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __83__HDSyncAnchorEntity_getRequestedVersion_entityIdentifier_store_transaction_error___block_invoke;
  v33[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v33[4] = a1;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __83__HDSyncAnchorEntity_getRequestedVersion_entityIdentifier_store_transaction_error___block_invoke_2;
  v29[3] = &unk_278613528;
  v21 = v19;
  v30 = v21;
  v22 = v13;
  v31 = v22;
  v23 = v14;
  v32 = v23;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __83__HDSyncAnchorEntity_getRequestedVersion_entityIdentifier_store_transaction_error___block_invoke_3;
  v28[3] = &unk_278614620;
  v28[4] = &v34;
  v24 = [v20 executeCachedStatementForKey:&getRequestedVersion_entityIdentifier_store_transaction_error__lookupKey error:a7 SQLGenerator:v33 bindingHandler:v29 enumerationHandler:v28];
  v25 = v24 ^ 1;
  if (!a3)
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    *a3 = v35[5];
  }

  _Block_object_dispose(&v34, 8);
  return v24;
}

id __83__HDSyncAnchorEntity_getRequestedVersion_entityIdentifier_store_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ? AND %@ = ? AND %@ = ? AND %@ = ?", @"requested_version", v2, @"schema", @"type", @"store", @"epoch", 0];

  return v3;
}

uint64_t __83__HDSyncAnchorEntity_getRequestedVersion_entityIdentifier_store_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 2, [*(a1 + 40) entityIdentifier]);
  sqlite3_bind_int64(a2, 3, [*(a1 + 48) syncProvenance]);
  v5 = [*(a1 + 48) syncEpoch];

  return sqlite3_bind_int64(a2, 4, v5);
}

uint64_t __83__HDSyncAnchorEntity_getRequestedVersion_entityIdentifier_store_transaction_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C80](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

+ (BOOL)updateRequestedVersion:(int)a3 entityIdentifier:(id)a4 store:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v14)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"HDSyncAnchorEntity.m" lineNumber:1059 description:{@"Invalid parameter not satisfying: %@", @"store != nil"}];
  }

  v16 = [v13 schemaIdentifier];
  v17 = v16;
  v18 = @"main";
  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  v20 = [v15 databaseForEntityClass:objc_opt_class()];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __86__HDSyncAnchorEntity_updateRequestedVersion_entityIdentifier_store_transaction_error___block_invoke;
  v32[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v32[4] = a1;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __86__HDSyncAnchorEntity_updateRequestedVersion_entityIdentifier_store_transaction_error___block_invoke_2;
  v27[3] = &unk_27862C830;
  v31 = a3;
  v28 = v19;
  v29 = v13;
  v30 = v14;
  v21 = v14;
  v22 = v13;
  v23 = v19;
  v24 = [v20 executeCachedStatementForKey:&updateRequestedVersion_entityIdentifier_store_transaction_error__updateKey error:a7 SQLGenerator:v32 bindingHandler:v27 enumerationHandler:0];

  return v24;
}

id __86__HDSyncAnchorEntity_updateRequestedVersion_entityIdentifier_store_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"UPDATE %@ SET %@ = ? WHERE %@ = ? AND %@ = ? AND %@ = ? AND %@ = ?", v2, @"requested_version", @"schema", @"type", @"store", @"epoch", 0];

  return v3;
}

uint64_t __86__HDSyncAnchorEntity_updateRequestedVersion_entityIdentifier_store_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 56));
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 3, [*(a1 + 40) entityIdentifier]);
  sqlite3_bind_int64(a2, 4, [*(a1 + 48) syncProvenance]);
  v5 = [*(a1 + 48) syncEpoch];

  return sqlite3_bind_int64(a2, 5, v5);
}

uint64_t __82__HDSyncAnchorEntity__syncAnchorForProperty_entityIdentifier_store_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 64)];
  v6 = [(HDSyncAnchorEntity *)*(a1 + 64) _predicateForSyncEntityIdentifier:*(a1 + 40) syncStore:?];
  v7 = [*(a1 + 64) propertyValueForAnyInDatabase:v5 property:*(a1 + 48) predicate:v6 error:a3];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &unk_283CB3F90;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v9);

  return 1;
}

+ (id)uniquedColumns
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"store";
  v5[1] = @"epoch";
  v5[2] = @"type";
  v5[3] = @"schema";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)unitTest_predicateForType:(int64_t)a3
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [v3 predicateWithProperty:@"type" equalToValue:v4];

  return v5;
}

+ (id)unitTest_predicateForReceived:(int64_t)a3
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [v3 predicateWithProperty:@"received" equalToValue:v4];

  return v5;
}

+ (id)unitTest_predicateForValidated:(int64_t)a3
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [v3 predicateWithProperty:@"validated" equalToValue:v4];

  return v5;
}

+ (id)unitTest_predicateForStoreType:(int64_t)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v4 setEntityClass:objc_opt_class()];
  v5 = MEMORY[0x277D10B18];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [v5 predicateWithProperty:@"type" equalToValue:v6];
  [v4 setPredicate:v7];

  v8 = MEMORY[0x277D10B18];
  v13[0] = *MEMORY[0x277D10A40];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v10 = [v8 predicateWithProperty:@"store" comparisonType:7 subqueryDescriptor:v4 subqueryProperties:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)latestFrozenAnchorUpdatePerStoreInProfile:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = [a1 disambiguatedDatabaseTable];
  v9 = [v6 stringWithFormat:@"SELECT %@, MAX(%@) FROM %@ GROUP BY %@", @"store", @"frozen_updated_date", v8, @"store"];

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = [v7 database];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__HDSyncAnchorEntity_latestFrozenAnchorUpdatePerStoreInProfile_error___block_invoke;
  v16[3] = &unk_278614698;
  v19 = a1;
  v17 = v9;
  v12 = v10;
  v18 = v12;
  v13 = v9;
  LODWORD(a4) = [a1 performReadTransactionWithHealthDatabase:v11 error:a4 block:v16];

  if (a4)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __70__HDSyncAnchorEntity_latestFrozenAnchorUpdatePerStoreInProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HDSyncAnchorEntity_latestFrozenAnchorUpdatePerStoreInProfile_error___block_invoke_2;
  v9[3] = &unk_278614098;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = [v5 executeUncachedSQL:v6 error:a3 bindingHandler:0 enumerationHandler:v9];

  return v7;
}

uint64_t __70__HDSyncAnchorEntity_latestFrozenAnchorUpdatePerStoreInProfile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = HDSQLiteColumnAsInt64();
  v5 = MEMORY[0x22AAC6C40](a2, 1);
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
  [v6 setObject:v5 forKey:v7];

  return 1;
}

+ (id)frozenAnchorMapPerStoreInProfile:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = [a1 disambiguatedDatabaseTable];
  v9 = [v6 stringWithFormat:@"SELECT %@, %@, %@, %@, MIN(%@) FROM %@ GROUP BY %@, %@, %@, %@", @"store", @"schema", @"type", @"epoch", @"frozen", v8, @"store", @"schema", @"type", @"epoch"];

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = [v7 database];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__HDSyncAnchorEntity_frozenAnchorMapPerStoreInProfile_error___block_invoke;
  v16[3] = &unk_278614698;
  v19 = a1;
  v17 = v9;
  v12 = v10;
  v18 = v12;
  v13 = v9;
  LODWORD(a4) = [a1 performReadTransactionWithHealthDatabase:v11 error:a4 block:v16];

  if (a4)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __61__HDSyncAnchorEntity_frozenAnchorMapPerStoreInProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HDSyncAnchorEntity_frozenAnchorMapPerStoreInProfile_error___block_invoke_2;
  v9[3] = &unk_278614098;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = [v5 executeUncachedSQL:v6 error:a3 bindingHandler:0 enumerationHandler:v9];

  return v7;
}

uint64_t __61__HDSyncAnchorEntity_frozenAnchorMapPerStoreInProfile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = HDSQLiteColumnAsInt64();
  v5 = MEMORY[0x22AAC6C90](a2, 1);
  if ([v5 isEqualToString:@"main"])
  {

    v5 = 0;
  }

  v6 = HDSQLiteColumnAsInt64();
  v7 = HDSQLiteColumnAsInt64();
  v8 = HDSQLiteColumnAsInt64();
  v9 = [HDSyncEntityIdentifier identifierWithSchema:v5 entity:v6];
  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    v13 = [v12 objectForKeyedSubscript:v9];
    if (v13)
    {
      v14 = v13;
      v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
      [v14 setObject:v15 forKeyedSubscript:v16];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v21 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
      v22 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
      [v14 setObject:v21 forKeyedSubscript:v22];

      [v12 setObject:v14 forKeyedSubscript:v9];
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
    [v14 setObject:v17 forKeyedSubscript:v18];

    [v12 setObject:v14 forKeyedSubscript:v9];
    v19 = *(a1 + 32);
    v20 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
    [v19 setObject:v12 forKeyedSubscript:v20];
  }

  return 1;
}

+ (int64_t)minimumFrozenAnchorInEpochs:(id)a3 store:(id)a4 entityIdentifier:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v14)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:a1 file:@"HDSyncAnchorEntity.m" lineNumber:1319 description:{@"Invalid parameter not satisfying: %@", @"entityIdentifier != nil"}];

    if (v13)
    {
      goto LABEL_3;
    }

LABEL_12:
    v33 = [MEMORY[0x277CCA890] currentHandler];
    [v33 handleFailureInMethod:a2 object:a1 file:@"HDSyncAnchorEntity.m" lineNumber:1320 description:{@"Invalid parameter not satisfying: %@", @"store != nil"}];

    goto LABEL_3;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_3:
  v16 = MEMORY[0x277CCACA8];
  v17 = [a1 disambiguatedDatabaseTable];
  v18 = [v16 stringWithFormat:@"SELECT MIN(%@) FROM %@ WHERE %@ = ? AND %@ = ? AND %@ = ?", @"frozen", v17, @"type", @"schema", @"store"];

  if (v12 && [v12 count])
  {
    v19 = 1;
    v20 = [objc_alloc(MEMORY[0x277D10B28]) initWithProperty:@"epoch" values:v12 contains:1];
    v21 = MEMORY[0x277CCACA8];
    v22 = [v20 SQLForEntityClass:a1];
    v23 = [v21 stringWithFormat:@"%@ AND %@", v18, v22];

    v18 = v23;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v24 = [v15 database];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __87__HDSyncAnchorEntity_minimumFrozenAnchorInEpochs_store_entityIdentifier_profile_error___block_invoke;
  v35[3] = &unk_27862CA88;
  v41 = a1;
  v25 = v18;
  v36 = v25;
  v26 = v14;
  v37 = v26;
  v27 = v13;
  v38 = v27;
  v42 = v19;
  v28 = v20;
  v39 = v28;
  v40 = &v43;
  v29 = [a1 performReadTransactionWithHealthDatabase:v24 error:a7 block:v35];

  if (v29)
  {
    v30 = v44[3];
  }

  else
  {
    v30 = -1;
  }

  _Block_object_dispose(&v43, 8);
  return v30;
}

uint64_t __87__HDSyncAnchorEntity_minimumFrozenAnchorInEpochs_store_entityIdentifier_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 72)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__HDSyncAnchorEntity_minimumFrozenAnchorInEpochs_store_entityIdentifier_profile_error___block_invoke_2;
  v10[3] = &unk_278614648;
  v6 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v14 = *(a1 + 80);
  v13 = *(a1 + 56);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__HDSyncAnchorEntity_minimumFrozenAnchorInEpochs_store_entityIdentifier_profile_error___block_invoke_3;
  v9[3] = &unk_278614620;
  v9[4] = *(a1 + 64);
  v7 = [v5 executeUncachedSQL:v6 error:a3 bindingHandler:v10 enumerationHandler:v9];

  return v7;
}

uint64_t __87__HDSyncAnchorEntity_minimumFrozenAnchorInEpochs_store_entityIdentifier_profile_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) entityIdentifier]);
  v4 = [*(a1 + 32) schemaIdentifier];
  v5 = v4;
  if (!v4)
  {
    v4 = @"main";
  }

  sqlite3_bind_text(a2, 2, [(__CFString *)v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  result = sqlite3_bind_int64(a2, 3, [*(a1 + 40) syncProvenance]);
  if (*(a1 + 56) == 1)
  {
    v7 = 4;
    return [*(a1 + 48) bindToStatement:a2 bindingIndex:&v7];
  }

  return result;
}

@end