@interface HDDataEntity
+ (BOOL)_removeObjectWithPersistentID:(int64_t)a3 database:(id)a4 error:(id *)a5;
+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4;
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncEntityClass:(Class)a4 predicate:(id)a5 syncAnchorRange:(HDSyncAnchorRange)a6 profile:(id)a7 messageHandler:(id)a8 error:(id *)a9;
+ (BOOL)journalObjects:(id)a3 insertionContext:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)replaceExistingObject:(id)a3 existingObjectID:(id)a4 replacementObject:(id)a5 replacementObjectID:(id)a6 profile:(id)a7 transaction:(id)a8 error:(id *)a9;
+ (id)_insertDataObject:(id)a3 withProvenanceID:(id)a4 inDatabase:(id)a5 error:(id *)a6;
+ (id)_objectWithPredicate:(void *)a3 encodingOptions:(void *)a4 profile:(uint64_t)a5 error:;
+ (id)_primitiveInsertDataObject:(void *)a3 insertionContext:(void *)a4 entityClass:(uint64_t)a5 provenanceEntityID:(void *)a6 profile:(void *)a7 transaction:(uint64_t)a8 error:;
+ (id)anyInDatabase:(id)a3 predicate:(id)a4 error:(id *)a5;
+ (id)columnNamesForTimeOffset;
+ (id)dataEntityForObject:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)dataEntityForObject:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)defaultForeignKey;
+ (id)deleteStatementsForRelatedEntitiesWithTransaction:(id)a3;
+ (id)disambiguatedSQLForProperty:(id)a3;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)entityEnumeratorWithProfile:(id)a3;
+ (id)foreignKeys;
+ (id)hk_timeZoneEncodingOptions;
+ (id)indices;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
+ (id)joinClausesForProperty:(id)a3;
+ (id)mergeDataObject:(id)a3 provenance:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7 insertHandler:(id)a8;
+ (id)objectWithID:(id)a3 encodingOptions:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)objectWithUUID:(id)a3 encodingOptions:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)orderingTermForSortDescriptor:(id)a3;
+ (id)predicateForObjectsFromLocalSourceWithBundleIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)predicateMatchingPreferredEntityTypeIfRequiredWithPredicate:(id)a3;
+ (id)sourceIDForObjectID:(id)a3 type:(int64_t)a4 profile:(id)a5 errorOut:(id *)a6;
+ (id)sourceIDsForObjectsOfType:(int64_t)a3 profile:(id)a4 predicate:(id)a5 error:(id *)a6;
+ (int64_t)countOfObjectsWithPredicate:(id)a3 healthDatabase:(id)a4 error:(id *)a5;
+ (int64_t)shouldInsertObject:(id)a3 sourceID:(id)a4 profile:(id)a5 transaction:(id)a6 objectToReplace:(id *)a7 objectID:(id *)a8 error:(id *)a9;
+ (void)deleteDataObjects:(id)a3 restrictedSourceEntities:(id)a4 failIfNotFound:(BOOL)a5 profile:(id)a6 recursiveDeleteAuthorizationBlock:(id)a7 completionHandler:(id)a8;
+ (void)insertDataObjects:(id)a3 insertionContext:(id)a4 profile:(id)a5 completionHandler:(id)a6;
@end

@implementation HDDataEntity

+ (id)_primitiveInsertDataObject:(void *)a3 insertionContext:(void *)a4 entityClass:(uint64_t)a5 provenanceEntityID:(void *)a6 profile:(void *)a7 transaction:(uint64_t)a8 error:
{
  v14 = a2;
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = [v17 databaseForEntityClass:objc_opt_self()];
  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
  v20 = [a4 _insertDataObject:v14 withProvenanceID:v19 inDatabase:v18 error:a8];

  if (v20 && [v14 hd_insertRelatedDataWithPersistentID:v20 insertionContext:v15 profile:v16 transaction:v17 error:a8])
  {
    v21 = [a4 conformsToProtocol:&unk_283D712B8];
    v22 = v20;
    if (v21)
    {
      if ([a4 hd_insertRelatedDataWithPersistentID:v20 insertionContext:v15 dataObject:v14 profile:v16 transaction:v17 error:a8])
      {
        v22 = v20;
      }

      else
      {
        v22 = 0;
      }
    }

    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (int64_t)shouldInsertObject:(id)a3 sourceID:(id)a4 profile:(id)a5 transaction:(id)a6 objectToReplace:(id *)a7 objectID:(id *)a8 error:(id *)a9
{
  v76 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v60 = a4;
  v15 = a5;
  v59 = a6;
  v16 = [v14 metadata];
  v17 = *MEMORY[0x277CCC520];
  v18 = [v16 objectForKeyedSubscript:*MEMORY[0x277CCC520]];

  if (v18)
  {
    v19 = [v15 sourceManager];
    v58 = [v19 localSourceForSourceID:v60 copyIfNecessary:1 error:a9];

    if (!v58)
    {
      v41 = 2;
LABEL_41:

      goto LABEL_42;
    }

    v57 = [v59 databaseForEntityClass:objc_opt_class()];
    v69 = 0;
    v20 = +[HDDataExternalSyncIdentifierEntity populateSyncInfoForLocalSourceID:externalSyncObjectCode:syncIdentifier:deleted:database:objectIDOut:errorOut:](HDDataExternalSyncIdentifierEntity, "populateSyncInfoForLocalSourceID:externalSyncObjectCode:syncIdentifier:deleted:database:objectIDOut:errorOut:", [v58 persistentID], objc_msgSend(v14, "_externalSyncObjectCode"), v18, 0, v57, &v69, a9);
    v21 = v69;
    if (v20)
    {
      v22 = v21;
      if (v21)
      {
        v54 = [v14 hd_dataEntityClass];
        v63 = 0;
        v64 = &v63;
        v65 = 0x3032000000;
        v66 = __Block_byref_object_copy__69;
        v67 = __Block_byref_object_dispose__69;
        v68 = 0;
        v56 = [v54 entityEnumeratorWithProfile:v15];
        v23 = [MEMORY[0x277D10B18] predicateWithProperty:@"data_id" value:v22 comparisonType:1];
        [v56 setPredicate:v23];

        [v56 setIgnoreEntityClassAdditionalPredicateForEnumeration:1];
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __95__HDDataEntity_shouldInsertObject_sourceID_profile_transaction_objectToReplace_objectID_error___block_invoke;
        v61[3] = &unk_278613718;
        v61[4] = &v63;
        v62 = 0;
        [v56 enumerateWithError:&v62 handler:v61];
        v24 = v62;
        v25 = v64[5];
        if (!v25)
        {
          if (v24)
          {
            v28 = v24;
          }

          else
          {
            v28 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Could not find existing object of class %@ to delete with external sync identifier '%@' (object ID %@)", v54, v18, v22}];
            if (!v28)
            {
              v53 = 0;
              v41 = 2;
              goto LABEL_39;
            }
          }

          if (a9)
          {
            v45 = v28;
            *a9 = v28;
          }

          else
          {
            _HKLogDroppedError();
          }

          v41 = 2;
          v53 = v28;
          goto LABEL_39;
        }

        v53 = v24;
        if (a7)
        {
          *a7 = v25;
        }

        if (a8)
        {
          v26 = v22;
          *a8 = v22;
        }

        v27 = [v64[5] metadata];
        v28 = [v27 objectForKeyedSubscript:v17];

        if ([v28 isEqualToString:v18])
        {
          v51 = v64[5];
          v52 = v14;
          v29 = objc_opt_self();
          if (!v52)
          {
            v48 = [MEMORY[0x277CCA890] currentHandler];
            [v48 handleFailureInMethod:sel__shouldReplaceExistingObject_withObject_dataEntityClass_ object:v29 file:@"HDDataEntity.m" lineNumber:204 description:{@"Invalid parameter not satisfying: %@", @"dataObject != nil"}];
          }

          v30 = v51;
          if (!v51)
          {
            v49 = [MEMORY[0x277CCA890] currentHandler];
            [v49 handleFailureInMethod:sel__shouldReplaceExistingObject_withObject_dataEntityClass_ object:v29 file:@"HDDataEntity.m" lineNumber:205 description:{@"Invalid parameter not satisfying: %@", @"existingObject != nil"}];

            v30 = 0;
          }

          v31 = [v30 metadata];
          v32 = *MEMORY[0x277CCC528];
          v33 = [v31 objectForKeyedSubscript:*MEMORY[0x277CCC528]];

          if (v33)
          {
            v34 = [v52 metadata];
            v35 = [v34 objectForKeyedSubscript:v32];

            if (!v35)
            {

LABEL_44:
              v41 = 1;
              goto LABEL_39;
            }

            v36 = [v35 compare:v33];
            if (!v36)
            {
              v37 = [v52 _creationDate];
              v38 = [v51 _creationDate];
              v36 = [v37 compare:v38];

              if (!v36)
              {
                v36 = [v54 compareForReplacmentWithObject:v52 existingObject:v51];
                if (!v36)
                {
                  v55 = [v52 UUID];
                  v50 = [v55 UUIDString];
                  v39 = [v51 UUID];
                  v40 = [v39 UUIDString];
                  v36 = [v50 compare:v40];
                }
              }
            }

            if (v36 == -1)
            {
              goto LABEL_44;
            }

LABEL_38:
            v41 = 0;
LABEL_39:

            _Block_object_dispose(&v63, 8);
            goto LABEL_40;
          }

          v42 = v51;
        }

        else
        {
          _HKInitializeLogging();
          v42 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v43 = [v64[5] UUID];
            v44 = [v43 UUIDString];
            *buf = 138412802;
            v71 = v28;
            v72 = 2112;
            v73 = v18;
            v74 = 2114;
            v75 = v44;
            _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "Unexpected sync identifier %@ (expected %@) for existing object %{public}@", buf, 0x20u);
          }
        }

        goto LABEL_38;
      }

      v41 = 0;
    }

    else
    {
      v22 = v21;
      v41 = 2;
    }

LABEL_40:

    goto LABEL_41;
  }

  v41 = 0;
LABEL_42:

  v46 = *MEMORY[0x277D85DE8];
  return v41;
}

+ (BOOL)replaceExistingObject:(id)a3 existingObjectID:(id)a4 replacementObject:(id)a5 replacementObjectID:(id)a6 profile:(id)a7 transaction:(id)a8 error:(id *)a9
{
  v19[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  if ([HDAssociationEntity copyAssociationsFromChildID:a4 toObjectID:a6 profile:v13 error:a9])
  {
    v14 = [v13 dataManager];
    v19[0] = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v16 = [v14 deleteDataObjects:v15 restrictedSourceEntities:0 failIfNotFound:1 recursiveDeleteAuthorizationBlock:0 error:a9];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (void)insertDataObjects:(id)a3 insertionContext:(id)a4 profile:(id)a5 completionHandler:(id)a6
{
  v82 = *MEMORY[0x277D85DE8];
  v50 = a3;
  v9 = a4;
  v49 = a5;
  v51 = v9;
  v52 = a6;
  v10 = [v9 provenance];
  LOBYTE(a5) = [v10 isValid];

  if (a5)
  {
    v68 = 0;
    v11 = v50;
    v12 = v9;
    v48 = v49;
    v53 = objc_opt_self();
    v45 = v12;
    v13 = [v12 skipInsertionFilter];
    v14 = 0;
    if ((v13 & 1) == 0)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v11;
    v15 = [obj countByEnumeratingWithState:&v69 objects:v78 count:16];
    if (v15)
    {
      v16 = *v70;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v70 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v69 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MEMORY[0x277CCA9B8] hk_assignError:&v68 code:3 format:{@"Invalid data object %@", v18}];
            goto LABEL_31;
          }

          if ((v13 & 1) == 0)
          {
            v19 = [v18 hd_dataEntityClass];
            if (v19)
            {
              v20 = v19;
            }

            else
            {
              v20 = v53;
            }

            v21 = NSStringFromClass(v20);
            v22 = [v14 objectForKeyedSubscript:v21];
            if (!v22)
            {
              v22 = [(objc_class *)v20 objectInsertionFilterForProfile:v48];
              v23 = _Block_copy(v22);
              [v14 setObject:v23 forKeyedSubscript:v21];
            }

            *buf = 0;
            v24 = (v22)[2](v22, v18, buf);
            v25 = *buf;
            if ((v24 & 1) == 0)
            {
              if (v25)
              {
                v30 = v25;
                goto LABEL_29;
              }

              v30 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Internal error occurred for %@ insertionFilter.", objc_opt_class()}];
              if (v30)
              {
LABEL_29:
                v31 = v30;
                v68 = v30;
              }

LABEL_31:
              v26 = 0;
              goto LABEL_32;
            }
          }
        }

        v15 = [obj countByEnumeratingWithState:&v69 objects:v78 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v26 = 1;
LABEL_32:

    v32 = v68;
    v29 = v32;
    if (v26)
    {
      *v78 = 0;
      *&v78[8] = v78;
      *&v78[16] = 0x3032000000;
      v79 = __Block_byref_object_copy__69;
      v80 = __Block_byref_object_dispose__69;
      v81 = 0;
      *&v69 = 0;
      *(&v69 + 1) = &v69;
      *&v70 = 0x2020000000;
      BYTE8(v70) = 0;
      v33 = [v48 database];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __77__HDDataEntity_insertDataObjects_insertionContext_profile_completionHandler___block_invoke;
      v61[3] = &unk_27861DAA8;
      v66 = a1;
      v67 = v29;
      v62 = v45;
      v63 = v48;
      v64 = obj;
      v65 = v78;
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __77__HDDataEntity_insertDataObjects_insertionContext_profile_completionHandler___block_invoke_2;
      v55[3] = &unk_27861DAD0;
      v59 = &v69;
      v60 = a1;
      v56 = v64;
      v57 = v62;
      v58 = v63;
      v34 = [a1 performWriteTransactionWithHealthDatabase:v33 error:&v67 block:v61 inaccessibilityHandler:v55];
      v35 = v67;

      if ((v34 & 1) == 0)
      {
        _HKInitializeLogging();
        v36 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
        {
          v37 = v36;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = objc_opt_class();
            if (*(*(&v69 + 1) + 24))
            {
              v39 = @"journaling";
            }

            else
            {
              v39 = @"insertion";
            }

            *buf = 138543874;
            *&buf[4] = v38;
            v74 = 2114;
            v75 = v39;
            v76 = 2114;
            v77 = v35;
            v40 = v38;
            _os_log_impl(&dword_228986000, v37, OS_LOG_TYPE_INFO, "%{public}@: object %{public}@ failed with error: %{public}@", buf, 0x20u);
          }
        }
      }

      if (v52)
      {
        v52[2](v52, v34, *(*&v78[8] + 40) != 0);
      }

      _Block_object_dispose(&v69, 8);
      _Block_object_dispose(v78, 8);

      v29 = v35;
    }

    else
    {
      if (!v32)
      {
        v29 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Internal error attempting to validate objects for insertion."];
      }

      if (v52)
      {
        (v52[2])();
      }
    }

    goto LABEL_48;
  }

  _HKInitializeLogging();
  v27 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v42 = v27;
    v43 = [v50 count];
    v44 = [v51 provenance];
    *v78 = 134218242;
    *&v78[4] = v43;
    *&v78[12] = 2114;
    *&v78[14] = v44;
    _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "Failed to insert %lu objects, invalid provenance %{public}@", v78, 0x16u);
  }

  v28 = v52;
  if (v52)
  {
    v29 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Invalid provenance."];
    (v52[2])(v52, 0, 0, 0, v29);
LABEL_48:

    v28 = v52;
  }

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t __77__HDDataEntity_insertDataObjects_insertionContext_profile_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 64)];
  v7 = [*(a1 + 32) provenance];
  v8 = [*(a1 + 40) dataProvenanceManager];
  v51 = 0;
  v39 = v5;
  v9 = [v8 provenanceEntityForProvenance:v7 transaction:v5 error:&v51];
  v10 = v51;

  if (!v9)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v54 = v7;
      v55 = 2114;
      v56 = v10;
      _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "Failed to lookup data provenance for %@: %{public}@", buf, 0x16u);
      if (v10)
      {
        goto LABEL_12;
      }
    }

    else if (v10)
    {
LABEL_12:
      v10 = v10;
      goto LABEL_37;
    }

    v10 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Internal error occurred fetching provenance %@", v7}];
    if (!v10)
    {
LABEL_41:
      v27 = 0;
      goto LABEL_42;
    }

LABEL_37:
    if (a3)
    {
      v30 = v10;
      *a3 = v10;
LABEL_40:

      goto LABEL_41;
    }

LABEL_39:
    _HKLogDroppedError();
    goto LABEL_40;
  }

  if (([*(a1 + 32) resolveAssociations] & 1) != 0 || objc_msgSend(v7, "syncProvenance"))
  {
    v11 = *(a1 + 64);
    v50 = 0;
    v12 = [v11 maxPersistentIDWithPredicate:0 database:v6 error:&v50];
    v13 = v50;
    v14 = v13;
    if (!v12 && v13)
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v54 = v14;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "Failed to find current max persistent ID to prepare for pending association realization: %{public}@", buf, 0xCu);
      }

      if (a3)
      {
        v16 = v14;
        *a3 = v14;
      }

      else
      {
        _HKLogDroppedError();
      }

      goto LABEL_41;
    }

    v35 = a3;
    v37 = v7;
    v38 = v6;
    v33 = [v12 longLongValue];

    v34 = 1;
  }

  else
  {
    v35 = a3;
    v37 = v7;
    v38 = v6;
    v34 = 0;
    v33 = 0;
  }

  v36 = v9;
  [v9 persistentID];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v18 = *(a1 + 48);
  v19 = [v18 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v47;
LABEL_17:
    v22 = 0;
    v23 = v10;
    while (1)
    {
      if (*v47 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v45 = *(a1 + 64);
      v40 = *(*(&v46 + 1) + 8 * v22);
      v41 = *(a1 + 32);
      v42 = *(a1 + 40);
      v43 = v39;
      v44 = *(a1 + 56);
      v24 = HKWithAutoreleasePool();
      v10 = v23;

      if (!v24)
      {
        break;
      }

      ++v22;
      v23 = v10;
      if (v20 == v22)
      {
        v20 = [v18 countByEnumeratingWithState:&v46 objects:v52 count:16];
        if (v20)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }
    }

    if (v10)
    {
      v10 = v10;
      v7 = v37;
      v6 = v38;
      v28 = v35;
      v9 = v36;
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Internal error reporting failure."];
      v7 = v37;
      v6 = v38;
      v28 = v35;
      v9 = v36;
      if (!v10)
      {
        goto LABEL_41;
      }
    }

    if (v28)
    {
      v29 = v10;
      *v28 = v10;
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_23:

  v25 = *(*(*(a1 + 56) + 8) + 40);
  if (v25)
  {
    v26 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity setNumber:v25 forKey:@"HDMaxObjectPersistentID" domain:&stru_283BF39C8 category:0 profile:*(a1 + 40) error:v35];
    v7 = v37;
    v6 = v38;
    v9 = v36;
    if (v34 & v26)
    {
      v26 = [HDAssociationEntity realizePendingAssociationsWithTransaction:v39 startingAnchor:v33 error:v35];
    }

    v27 = v26;
  }

  else
  {
    v27 = 1;
    v7 = v37;
    v6 = v38;
    v9 = v36;
  }

LABEL_42:

  v31 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t __77__HDDataEntity_insertDataObjects_insertionContext_profile_completionHandler___block_invoke_455(uint64_t a1, void *a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = *(a1 + 72);
  log = *(a1 + 80);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = v4;
  v10 = v6;
  v11 = v7;
  v12 = objc_opt_self();
  [v9 prepareObjectForInsertion:v8];
  v13 = [v8 hd_dataEntityClass];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v55 = [v9 provenance];
  v15 = [v9 provenance];
  v16 = [v15 sourceID];
  v60 = 0;
  v61 = 0;
  v50 = a2;
  v46 = a2;
  v17 = v10;
  v57 = v11;
  v18 = [v14 shouldInsertObject:v8 sourceID:v16 profile:v10 transaction:v11 objectToReplace:&v61 objectID:&v60 error:v46];
  v19 = v61;
  v56 = v60;

  if (v18 == 2)
  {
    v20 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  if (v18 == 1)
  {
    v20 = 0;
    v21 = 1;
LABEL_8:
    v22 = v17;
    v23 = v57;
    goto LABEL_32;
  }

  v59 = 0;
  v22 = v17;
  v23 = v57;
  v20 = [(HDDataEntity *)v12 _primitiveInsertDataObject:v8 insertionContext:v9 entityClass:v14 provenanceEntityID:log profile:v17 transaction:v57 error:&v59];
  v24 = v59;
  v49 = v24;
  if (!v20)
  {
    v29 = v24;
    if (([v24 hk_isHealthKitErrorWithCode:115] & 1) == 0)
    {
      v34 = v29;
      v35 = v34;
      if (v34)
      {
        if (v50)
        {
          v36 = v34;
          *v50 = v35;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v20 = 0;
      goto LABEL_30;
    }

    if ([v14 supportsObjectMerging])
    {
      v58 = 0;
      *v66 = MEMORY[0x277D85DD0];
      *&v66[8] = 3221225472;
      *&v66[16] = __113__HDDataEntity__insertDataObject_insertionContext_provenanceEntityID_profile_transaction_insertedEntityID_error___block_invoke;
      v67 = &unk_27861DA58;
      v71 = v12;
      v68 = v9;
      v72 = v14;
      v73 = log;
      v30 = v17;
      v69 = v30;
      v70 = v57;
      v20 = [v14 mergeDataObject:v8 provenance:v55 profile:v30 transaction:v70 error:&v58 insertHandler:v66];
      v31 = v58;
      v32 = v31;
      if (v20)
      {
        v33 = v20;
        v21 = 1;
      }

      else if (v31)
      {
        if (v50)
        {
          v44 = v31;
          v21 = 0;
          *v50 = v32;
        }

        else
        {
          _HKLogDroppedError();
          v21 = 0;
        }
      }

      else
      {
        _HKInitializeLogging();
        v21 = 1;
        logb = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
        {
          logc = logb;
          v45 = [v8 UUID];
          *buf = 138543618;
          v63 = v12;
          v64 = 2114;
          v65 = v45;
          _os_log_impl(&dword_228986000, logc, OS_LOG_TYPE_INFO, "%{public}@ failed to find existing object with UUID (%{public}@) during object merge", buf, 0x16u);

          v22 = v17;
        }
      }

      goto LABEL_20;
    }

    _HKInitializeLogging();
    v37 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
    {
      *v66 = 138543618;
      *&v66[4] = v8;
      *&v66[12] = 2114;
      *&v66[14] = v49;
      _os_log_debug_impl(&dword_228986000, v37, OS_LOG_TYPE_DEBUG, "Ignoring duplicate object error while inserting %{public}@: %{public}@", v66, 0x16u);
    }

    v20 = 0;
LABEL_27:
    v21 = 1;
    goto LABEL_31;
  }

  v25 = v20;
  if (!v19)
  {
    goto LABEL_27;
  }

  v48 = [v17 attachmentManager];
  [v19 attachmentObjectIdentifier];
  v26 = loga = v17;
  v27 = [v8 attachmentObjectIdentifier];
  v28 = +[HDObjectAttachmentSchemaProvider schemaIdentifier];
  v47 = [v48 replaceReferencesWithObjectIdentifier:v26 replacementIdentifier:v27 schemaIdentifier:v28 error:v50];

  if (v47)
  {
    v23 = v57;
    v22 = loga;
    if (![v14 replaceExistingObject:v19 existingObjectID:v56 replacementObject:v8 replacementObjectID:v20 profile:loga transaction:v57 error:v50])
    {
LABEL_30:
      v21 = 0;
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v21 = 0;
  v22 = loga;
LABEL_20:
  v23 = v57;
LABEL_31:

LABEL_32:
  v38 = v20;
  v39 = v38;
  if (v38)
  {
    v40 = *(*(a1 + 64) + 8);
    if (!*(v40 + 40))
    {
LABEL_36:
      objc_storeStrong((v40 + 40), v20);
      goto LABEL_37;
    }

    v41 = [v38 longLongValue];
    if (v41 > [*(*(*(a1 + 64) + 8) + 40) longLongValue])
    {
      v40 = *(*(a1 + 64) + 8);
      goto LABEL_36;
    }
  }

LABEL_37:

  v42 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (BOOL)journalObjects:(id)a3 insertionContext:(id)a4 profile:(id)a5 error:(id *)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v44 = v10;
  v12 = [v10 provenance];
  v45 = v11;
  v13 = [v11 sourceManager];
  v14 = [v12 sourceID];
  v51 = 0;
  v15 = [v13 clientSourceForPersistentID:v14 error:&v51];
  v16 = v51;

  v17 = [v15 bundleIdentifier];
  if (v17)
  {
    v40 = v16;
    v41 = v15;
    v38 = a6;
    v18 = v12;
    v19 = objc_alloc_init(HDCodableObjectCollection);
    v43 = v17;
    [(HDCodableObjectCollection *)v19 setSourceBundleIdentifier:v17];
    context = objc_autoreleasePoolPush();
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v42 = v9;
    v22 = v9;
    v23 = [v22 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v48;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v48 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v47 + 1) + 8 * i);
          [v44 prepareObjectForInsertion:v27];
          v28 = [v27 hd_relatedJournalEntriesWithProfile:v45];
          [v21 addObjectsFromArray:v28];

          [v27 _setSourceBundleIdentifier:0];
          [v27 _setSourceRevision:0];
          if (([v27 addCodableRepresentationToCollectionForJournal:v19] & 1) == 0)
          {
            [v27 _setSourceBundleIdentifier:v43];
            v29 = [[_HDDataInsertionJournalEntry alloc] initWithDataObject:v27 provenance:v18];
            [v20 addObject:v29];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v24);
    }

    v12 = v18;
    if ([(HDCodableObjectCollection *)v19 count])
    {
      v30 = [[_HDDataBatchInsertionJournalEntry alloc] initWithCodableObjectCollection:v19 provenance:v18];
      [v20 addObject:v30];
    }

    [v20 addObjectsFromArray:v21];
    v31 = [v45 database];
    v46 = v40;
    v32 = [v31 addJournalEntries:v20 error:&v46];
    v33 = v46;

    objc_autoreleasePoolPop(context);
    if (v32)
    {
      v34 = 1;
      v15 = v41;
      v9 = v42;
      v17 = v43;
      goto LABEL_22;
    }

    v15 = v41;
    v9 = v42;
    a6 = v38;
    v17 = v43;
  }

  else
  {
    v33 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Batch journal failed on nil identifier, %@", v12}];
  }

  v33 = v33;
  if (v33)
  {
    if (a6)
    {
      v35 = v33;
      *a6 = v33;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v34 = 0;
LABEL_22:

  v36 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t __71__HDDataEntity__sourceBundleIdentifierForSourceEntities_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * v11) sourceBundleIdentifierInDatabase:v6 error:{a3, v17}];
        if (!v12)
        {
          v14 = 0;
          goto LABEL_11;
        }

        v13 = v12;
        [*(a1 + 40) addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (void)deleteDataObjects:(id)a3 restrictedSourceEntities:(id)a4 failIfNotFound:(BOOL)a5 profile:(id)a6 recursiveDeleteAuthorizationBlock:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__69;
  v52 = __Block_byref_object_dispose__69;
  v53 = 0;
  v19 = objc_alloc_init(MEMORY[0x277CCD2D8]);
  v20 = [v16 database];
  v47 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __134__HDDataEntity_deleteDataObjects_restrictedSourceEntities_failIfNotFound_profile_recursiveDeleteAuthorizationBlock_completionHandler___block_invoke;
  v38[3] = &unk_27861DAF8;
  v39 = v15;
  v40 = v16;
  v43 = v17;
  v41 = v14;
  v21 = v19;
  v46 = a5;
  v42 = v21;
  v44 = &v54;
  v45 = &v48;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __134__HDDataEntity_deleteDataObjects_restrictedSourceEntities_failIfNotFound_profile_recursiveDeleteAuthorizationBlock_completionHandler___block_invoke_2;
  v32[3] = &unk_27861DB20;
  v22 = v43;
  v36 = v22;
  v23 = v39;
  v33 = v23;
  v37 = a1;
  v24 = v40;
  v34 = v24;
  v25 = v41;
  v35 = v25;
  v26 = [a1 performWriteTransactionWithHealthDatabase:v20 error:&v47 block:v38 inaccessibilityHandler:v32];
  v27 = v47;

  if (v18)
  {
    if (v26)
    {
      if (*(v55 + 24) == 1)
      {
        v28 = 0;
        v29 = v49[5];
        v30 = 1;
        v31 = v21;
      }

      else
      {
        v30 = 0;
        v29 = 0;
        v31 = 0;
        v28 = 0;
      }
    }

    else
    {
      v30 = 0;
      v29 = 0;
      v31 = 0;
      v28 = v27;
    }

    v18[2](v18, v26, v30, v29, v31, v28);
  }

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);
}

uint64_t __134__HDDataEntity_deleteDataObjects_restrictedSourceEntities_failIfNotFound_profile_recursiveDeleteAuthorizationBlock_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v44 = a1;
  v42 = [*(a1 + 32) count];
  if (v42)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v57;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v57 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v56 + 1) + 8 * i), "persistentID")}];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = [[HDDataEntityDeletionContext alloc] initWithProfile:*(v44 + 40) transaction:v5];
  v14 = 1;
  [(HDDataEntityDeletionContext *)v13 setInsertDeletedObjects:1];
  [(HDDataEntityDeletionContext *)v13 setRecursiveDeleteAuthorizationBlock:*(v44 + 64)];
  v41 = [MEMORY[0x277CBEAA8] date];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v15 = *(v44 + 48);
  v46 = [v15 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (!v46)
  {
    v27 = 0;
    goto LABEL_35;
  }

  v38 = a3;
  v39 = v5;
  v45 = *v53;
  v16 = v44;
  v40 = v15;
LABEL_13:
  v17 = 0;
  while (1)
  {
    if (*v53 != v45)
    {
      objc_enumerationMutation(v15);
    }

    v18 = *(*(&v52 + 1) + 8 * v17);
    v19 = [v18 hd_dataEntityClass];
    v20 = [v18 UUID];
    v21 = [v18 hd_sampleType];
    v50 = 0u;
    v51 = 0u;
    v49 = 0;
    if (!v13)
    {
      v22 = 0;
LABEL_23:
      v22 = v22;
      v27 = v22;
      goto LABEL_24;
    }

    [(HDDataEntityDeletionContext *)v13 deleteInfoForObjectWithUUID:v20 error:&v49];
    v22 = v49;
    if ((v50 & 1) == 0)
    {
      goto LABEL_23;
    }

    if (v42)
    {
      v23 = [MEMORY[0x277CCABB0] numberWithLongLong:v51];
      v24 = [v6 containsObject:v23];

      if (!v24)
      {
        break;
      }
    }

    v43 = *(&v50 + 1);
    v25 = [MEMORY[0x277CCABB0] numberWithLongLong:*(&v51 + 1)];
    v26 = *(v44 + 56);
    v47 = 0;
    LOBYTE(v43) = [(HDDataEntityDeletionContext *)v13 deleteObjectWithPersistentID:v43 objectUUID:v20 entityClass:v19 objectType:v21 provenanceIdentifier:v25 deletionDate:v41 deletedSampleIntervals:v26 error:&v47];
    v27 = v47;

    v16 = v44;
    v15 = v40;
    if ((v43 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:

    if (v46 == ++v17)
    {
      v28 = [v15 countByEnumeratingWithState:&v52 objects:v60 count:16];
      v46 = v28;
      if (!v28)
      {
        v27 = 0;
        v14 = 1;
        goto LABEL_33;
      }

      goto LABEL_13;
    }
  }

  v48 = 0;
  [MEMORY[0x277CCA9B8] hk_assignError:&v48 code:3 description:@"object not found"];
  v27 = v48;
  v16 = v44;
  v15 = v40;
LABEL_24:
  if ((*(v16 + 88) & 1) == 0 && (!v27 || [v27 code] == 3))
  {
    goto LABEL_27;
  }

  v14 = 0;
LABEL_33:
  a3 = v38;
  v5 = v39;
LABEL_35:

  [(HDDataEntityDeletionContext *)v13 finish];
  *(*(*(v44 + 72) + 8) + 24) = [(HDDataEntityDeletionContext *)v13 deletedObjectCount]!= 0;
  v29 = [(HDDataEntityDeletionContext *)v13 lastInsertedDeletedObjectPersistentID];
  v30 = *(*(v44 + 80) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v29;

  if (v14 && ((v32 = *(*(*(v44 + 80) + 8) + 40)) == 0 || [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity setNumber:v32 forKey:@"HDMaxObjectPersistentID" domain:&stru_283BF39C8 category:0 profile:*(v44 + 40) error:a3]))
  {
    v33 = 1;
  }

  else
  {
    v34 = v27;
    if (v34)
    {
      if (a3)
      {
        v35 = v34;
        *a3 = v34;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v33 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t __134__HDDataEntity_deleteDataObjects_restrictedSourceEntities_failIfNotFound_profile_recursiveDeleteAuthorizationBlock_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v35 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56))
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 description:@"No support for deleting objects with options when database is not available"];
LABEL_3:
    v4 = 0;
    goto LABEL_25;
  }

  if (![*(a1 + 32) count])
  {
    v14 = 0;
    goto LABEL_12;
  }

  v6 = *(a1 + 64);
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v7;
  objc_opt_self();
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = [v9 database];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __71__HDDataEntity__sourceBundleIdentifierForSourceEntities_profile_error___block_invoke;
  v31[3] = &unk_278613218;
  v12 = v8;
  v32 = v12;
  v13 = v10;
  v33 = v13;
  LODWORD(v10) = [(HDHealthEntity *)HDSourceEntity performReadTransactionWithHealthDatabase:v11 error:v3 block:v31];

  if (!v10)
  {
    goto LABEL_8;
  }

  if ([v13 count] >= 2)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:v3 code:100 format:{@"Multiple bundle identifiers (%@) found for source entities (%@)", v13, v12}];
LABEL_8:
    v14 = 0;
    goto LABEL_11;
  }

  v14 = [v13 anyObject];
LABEL_11:

  if (!v14)
  {
    goto LABEL_3;
  }

LABEL_12:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = *(a1 + 48);
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    while (2)
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * v19);
        if (v14)
        {
          [*(*(&v27 + 1) + 8 * v19) _setSourceBundleIdentifier:v14];
        }

        v21 = [[_HDDataDeletionJournalEntry alloc] initWithDataObject:v20 restrictSource:v14 != 0];
        v22 = [*(a1 + 40) database];
        v23 = v3;
        v24 = [v22 addJournalEntry:v21 error:v3];

        if (!v24)
        {
          v4 = 0;
          goto LABEL_24;
        }

        ++v19;
        v3 = v23;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v4 = 1;
LABEL_24:

LABEL_25:
  v25 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)dataEntityForObject:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__69;
    v24 = __Block_byref_object_dispose__69;
    v25 = 0;
    v11 = [v9 database];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __50__HDDataEntity_dataEntityForObject_profile_error___block_invoke;
    v16[3] = &unk_2786169D8;
    v18 = &v20;
    v19 = a1;
    v17 = v8;
    v12 = [a1 performReadTransactionWithHealthDatabase:v11 error:a5 block:v16];

    if (v12)
    {
      v13 = v21[5];
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __50__HDDataEntity_dataEntityForObject_profile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 48) dataEntityForObject:*(a1 + 32) transaction:a2 error:a3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

+ (id)dataEntityForObject:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__69;
  v22 = __Block_byref_object_dispose__69;
  v23 = 0;
  v10 = [v9 databaseForEntityClass:a1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__HDDataEntity_dataEntityForObject_transaction_error___block_invoke_2;
  v16[3] = &unk_278614860;
  v11 = v8;
  v17 = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__HDDataEntity_dataEntityForObject_transaction_error___block_invoke_3;
  v15[3] = &unk_2786135E0;
  v15[4] = &v18;
  v15[5] = a1;
  if ([v10 executeCachedStatementForKey:&dataEntityForObject_transaction_error__lookupKey error:a5 SQLGenerator:&__block_literal_global_76 bindingHandler:v16 enumerationHandler:v15])
  {
    v12 = v19[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v18, 8);

  return v13;
}

uint64_t __54__HDDataEntity_dataEntityForObject_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) UUID];
  HDSQLiteBindFoundationValueToStatement();

  return sqlite3_bind_int64(a2, 2, 1);
}

uint64_t __54__HDDataEntity_dataEntityForObject_transaction_error___block_invoke_3(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 40)) initWithPersistentID:HDSQLiteColumnAsInt64()];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 0;
}

+ (id)entityEnumeratorWithProfile:(id)a3
{
  v5 = a3;
  if (([a1 isConcreteEntity] & 1) == 0)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = NSStringFromSelector(a2);
    v10 = NSStringFromClass(a1);
    [v8 handleFailureInMethod:a2 object:a1 file:@"HDDataEntity.m" lineNumber:917 description:{@"%@ should not be used for abstract class %@", v9, v10}];
  }

  v6 = [[HDDataEntityEnumerator alloc] _initWithEntityClass:a1 profile:v5];

  return v6;
}

+ (id)sourceIDsForObjectsOfType:(int64_t)a3 profile:(id)a4 predicate:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  if ([a1 requiresSampleTypePredicate])
  {
    v12 = MEMORY[0x277D10B20];
    v13 = HDDataEntityPredicateForType(a3);
    v14 = [v12 compoundPredicateWithPredicate:v11 otherPredicate:v13];

    v11 = v14;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__69;
  v29 = __Block_byref_object_dispose__69;
  v30 = 0;
  v15 = [v10 database];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__HDDataEntity_sourceIDsForObjectsOfType_profile_predicate_error___block_invoke;
  v21[3] = &unk_2786169D8;
  v23 = &v25;
  v24 = a1;
  v16 = v11;
  v22 = v16;
  v17 = [a1 performReadTransactionWithHealthDatabase:v15 error:a6 block:v21];

  if (v17)
  {
    v18 = v26[5];
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  _Block_object_dispose(&v25, 8);

  return v19;
}

uint64_t __66__HDDataEntity_sourceIDsForObjectsOfType_profile_predicate_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [*(a1 + 48) distinctProperty:@"data_provenances.source_id" predicate:*(a1 + 32) database:v5 error:a3];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return 1;
}

+ (id)sourceIDForObjectID:(id)a3 type:(int64_t)a4 profile:(id)a5 errorOut:(id *)a6
{
  v10 = a3;
  v11 = MEMORY[0x277D10B18];
  v12 = a5;
  v13 = [v11 predicateWithProperty:@"data_id" equalToValue:v10];
  v19 = 0;
  v14 = [a1 sourceIDsForObjectsOfType:a4 profile:v12 predicate:v13 error:&v19];

  v15 = v19;
  v16 = [v14 firstObject];
  if (!v16)
  {
    if (v15)
    {
      v15 = v15;
LABEL_5:
      if (a6)
      {
        v17 = v15;
        *a6 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }

      goto LABEL_9;
    }

    v15 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Could not find expected sourceID for object with ID %@", v10}];
    if (v15)
    {
      goto LABEL_5;
    }
  }

LABEL_9:

  return v16;
}

+ (id)predicateForObjectsFromLocalSourceWithBundleIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [a4 sourceManager];
  v14 = 0;
  v9 = [v8 localSourceForBundleIdentifier:v7 error:&v14];
  v10 = v14;

  if (v9)
  {
    v11 = HDDataEntityPredicateForSourceEntity(v9);
    goto LABEL_9;
  }

  if (v10)
  {
    if (a5)
    {
      v12 = v10;
      v11 = 0;
      *a5 = v10;
      goto LABEL_9;
    }

    _HKLogDroppedError();
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:100 format:{@"No source found with bundle identifier %@", v7}];
  }

  v11 = 0;
LABEL_9:

  return v11;
}

+ (id)objectWithUUID:(id)a3 encodingOptions:(id)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a4;
  v11 = HDDataEntityPredicateForDataUUID();
  v12 = [(HDDataEntity *)a1 _objectWithPredicate:v11 encodingOptions:v10 profile:v9 error:a6];

  return v12;
}

+ (id)_objectWithPredicate:(void *)a3 encodingOptions:(void *)a4 profile:(uint64_t)a5 error:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__69;
  v19 = __Block_byref_object_dispose__69;
  v20 = 0;
  v11 = [objc_opt_self() entityEnumeratorWithProfile:v10];
  [v11 setPredicate:v8];
  [v11 addEncodingOptionsFromDictionary:v9];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__HDDataEntity__objectWithPredicate_encodingOptions_profile_error___block_invoke;
  v14[3] = &unk_278613718;
  v14[4] = &v15;
  [v11 enumerateWithError:a5 handler:v14];
  v12 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v12;
}

+ (id)objectWithID:(id)a3 encodingOptions:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = MEMORY[0x277D10B18];
  v11 = a5;
  v12 = a4;
  v13 = [v10 predicateWithProperty:@"data_id" value:a3 comparisonType:1];
  v14 = [(HDDataEntity *)a1 _objectWithPredicate:v13 encodingOptions:v12 profile:v11 error:a6];

  return v14;
}

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncEntityClass:(Class)a4 predicate:(id)a5 syncAnchorRange:(HDSyncAnchorRange)a6 profile:(id)a7 messageHandler:(id)a8 error:(id *)a9
{
  end = a6.end;
  start = a6.start;
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = [v17 database];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __117__HDDataEntity_generateSyncObjectsForSession_syncEntityClass_predicate_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v26[3] = &unk_27861DB70;
  v27 = v17;
  v28 = v15;
  v31 = a4;
  v32 = a1;
  v29 = v18;
  v30 = v16;
  v33 = start;
  v34 = end;
  v20 = v16;
  v21 = v18;
  v22 = v15;
  v23 = v17;
  v24 = [a1 performReadTransactionWithHealthDatabase:v19 error:a9 block:v26];

  return v24;
}

uint64_t __117__HDDataEntity_generateSyncObjectsForSession_syncEntityClass_predicate_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [[HDDataProvenanceCache alloc] initWithProfile:*(a1 + 32) transaction:v5 purpose:0];
  v7 = [*(a1 + 40) maxEncodedBytesPerChangeSetForSyncEntityClass:*(a1 + 64)];
  v8 = [*(a1 + 40) maxEncodedBytesPerCodableChangeForSyncEntityClass:*(a1 + 64)];
  v9 = 0;
  if ([*(a1 + 40) shouldOverrideCycleTrackingSymptomsForBackwardsCompatibilty])
  {
    v26 = @"OverrideMCCategorySampleValue";
    v27[0] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  }

  v10 = *(a1 + 64);
  if (objc_opt_respondsToSelector())
  {
    v11 = [*(a1 + 64) syncVersionRangeForSession:*(a1 + 40)];
  }

  else
  {
    v11 = 0;
  }

  v22 = v6;
  v12 = [[_HDDataEntitySyncMessageBuilder alloc] initWithProfile:*(a1 + 32) transaction:v5 entityClass:*(a1 + 72) version:v11 provenanceCache:v6 encodingOptions:v9 messageHandler:*(a1 + 48) bytesPerChangeSet:v7 bytesPerChange:v8];
  v25 = -1;
  v13 = *(a1 + 72);
  v14 = [(_HDDataEntitySyncMessageBuilder *)v12 orderedProperties];
  v15 = *(a1 + 56);
  v16 = *(a1 + 40);
  v17 = [*(a1 + 32) database];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __117__HDDataEntity_generateSyncObjectsForSession_syncEntityClass_predicate_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v23[3] = &unk_27861DB48;
  v18 = v12;
  v24 = v18;
  v19 = [v13 enumerateEntitiesForSyncWithProperties:v14 predicate:v15 session:v16 syncAnchorRange:*(a1 + 80) limit:*(a1 + 88) lastSyncAnchor:0 healthDatabase:&v25 error:v17 block:{a3, v23}];

  if (v19 && v25 != -1)
  {
    v19 = [(_HDDataEntitySyncMessageBuilder *)v18 finishAndFlushWithError:a3];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t __117__HDDataEntity_generateSyncObjectsForSession_syncEntityClass_predicate_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = *(a1 + 32);
  v18 = 0;
  v13 = [v12 addEntity:v11 row:a4 anchor:a5 error:&v18];
  v14 = v18;
  if (v13 == 2)
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = v11;
      v21 = 2114;
      v22 = v14;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "Failed to include entity %{public}@ when constructing messages for sync: %{public}@.", buf, 0x16u);
    }
  }

  else if (v13 == 1)
  {
    *a7 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (id)joinClausesForProperty:(id)a3
{
  v4 = a3;
  v5 = [a1 entityForProperty:v4];
  if (v5)
  {
    v6 = v5;
    if (v5 != a1)
    {
      v7 = MEMORY[0x277D10B50];
      v8 = [a1 disambiguatedDatabaseTable];
      v9 = [v7 innerJoinClauseFromTable:v8 toTargetEntity:v6 as:0 localReference:@"data_id" targetKey:@"data_id"];

      v10 = [MEMORY[0x277CBEB98] setWithObject:v9];
      v11 = [v6 joinClausesForProperty:v4];
      if (v11)
      {
        v12 = [v10 setByAddingObjectsFromSet:v11];

        v10 = v12;
      }

      goto LABEL_28;
    }
  }

  if (qword_280D67BC8 != -1)
  {
    dispatch_once(&qword_280D67BC8, &__block_literal_global_520);
  }

  if ([v4 isEqualToString:@"data_provenances.sync_provenance"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"data_provenances.origin_build") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"data_provenances.origin_product_type") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"data_provenances.local_build") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"data_provenances.local_product_type") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"data_provenances.source_version") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"data_provenances.tz_name") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"data_provenances.source_id") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"data_provenances.device_id") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"data_provenances.origin_major_version") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"data_provenances.origin_minor_version") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"data_provenances.origin_patch_version") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"data_provenances.derived_flags") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"data_provenances.contributor_id") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"data_provenances.sync_identity"))
  {
    v13 = &_MergedGlobals_5;
  }

  else
  {
    if (([v4 isEqualToString:@"external_sync_ids.sid"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"external_sync_ids.version") & 1) == 0 && !objc_msgSend(v4, "isEqualToString:", @"external_sync_ids.object_code"))
    {
      goto LABEL_36;
    }

    v13 = &qword_280D67BC0;
  }

  v14 = *v13;
  if (v14)
  {
    v9 = v14;
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = MEMORY[0x277CBEB98];
    if (v15 == v16)
    {
      v10 = [MEMORY[0x277CBEB98] setWithObject:v9];
    }

    else
    {
      v18 = MEMORY[0x277D10B50];
      v19 = [a1 disambiguatedDatabaseTable];
      v20 = [v18 innerJoinClauseFromTable:v19 toTargetEntity:objc_opt_class() as:0 localReference:@"data_id" targetKey:@"data_id"];
      v10 = [v17 setWithObjects:{v9, v20, 0}];
    }

LABEL_28:

    goto LABEL_29;
  }

LABEL_36:
  v22.receiver = a1;
  v22.super_class = &OBJC_METACLASS___HDDataEntity;
  v10 = objc_msgSendSuper2(&v22, sel_joinClausesForProperty_, v4);
LABEL_29:

  return v10;
}

void __39__HDDataEntity_joinClausesForProperty___block_invoke()
{
  v4 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v0 = [MEMORY[0x277D10B50] innerJoinClauseFromTable:v4 toTargetEntity:objc_opt_class() as:0 localReference:@"provenance" targetKey:*MEMORY[0x277D10A40]];
  v1 = _MergedGlobals_5;
  _MergedGlobals_5 = v0;

  v2 = [MEMORY[0x277D10B50] leftJoinClauseFromTable:v4 toTargetEntity:objc_opt_class() as:0 localReference:@"data_id" targetKey:@"object_id"];
  v3 = qword_280D67BC0;
  qword_280D67BC0 = v2;
}

+ (id)disambiguatedSQLForProperty:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277D10A40]])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [a1 disambiguatedDatabaseTable];
    v7 = [v5 stringWithFormat:@"%@.%@", v6, v4];
  }

  else
  {
    v8 = [a1 entityForProperty:v4];
    if (v8)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [v8 disambiguatedDatabaseTable];
      v7 = [v9 stringWithFormat:@"%@.%@", v10, v4];
    }

    else
    {
      v7 = v4;
    }
  }

  return v7;
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"provenance";
  v2 = +[(HDHealthEntity *)HDDataProvenanceEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)defaultForeignKey
{
  v2 = [objc_alloc(MEMORY[0x277D10B38]) initWithEntityClass:a1 property:@"data_id" deletionAction:2];

  return v2;
}

+ (id)indices
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 disambiguatedSQLForProperty:@"type"];
  v4 = [v2 stringWithFormat:@"%@ = %ld", v3, 2];

  v5 = objc_alloc(MEMORY[0x277D10B40]);
  v6 = objc_opt_class();
  v12 = @"type";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v8 = [v5 initWithEntity:v6 name:@"deleted" columns:v7 unique:0 predicateString:v4];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)predicateMatchingPreferredEntityTypeIfRequiredWithPredicate:(id)a3
{
  v4 = a3;
  if ([a1 requiresSampleTypePredicate])
  {
    v5 = MEMORY[0x277D10B70];
    v6 = HDDataEntityPredicateForType([a1 preferredEntityType]);
    v7 = [v5 compoundPredicateWithPredicate:v4 otherPredicate:v6];
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

+ (id)orderingTermForSortDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 key];
  v6 = [v4 ascending];
  if ([v5 isEqualToString:*MEMORY[0x277CCC5B8]])
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v9 = @"data_id";
LABEL_5:
    v10 = [v7 orderingTermWithProperty:v9 entityClass:v8 ascending:v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CCDF38]])
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v9 = @"creation_date";
    goto LABEL_5;
  }

  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___HDDataEntity;
  v10 = objc_msgSendSuper2(&v13, sel_orderingTermForSortDescriptor_, v4);
LABEL_7:
  v11 = v10;

  return v11;
}

+ (id)_insertDataObject:(id)a3 withProvenanceID:(id)a4 inDatabase:(id)a5 error:(id *)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a1 superclass];
  if ([v13 isSubclassOfClass:objc_opt_class()])
  {
    v14 = [v13 _insertDataObject:v10 withProvenanceID:v11 inDatabase:v12 error:a6];
  }

  else
  {
    v14 = 0;
  }

  if ([a1 participatesInInsertion])
  {
    v15 = objc_opt_class();
    if (v15 == objc_opt_class())
    {
      v22 = v10;
      v32 = v11;
      v23 = v12;
      v24 = objc_opt_self();
      v25 = objc_opt_class();
      if (([v25 isEqual:objc_opt_class()] & 1) == 0)
      {
        v31 = [MEMORY[0x277CCA890] currentHandler];
        [v31 handleFailureInMethod:sel__insertBaseDataObject_withProvenance_inDatabase_error_ object:v24 file:@"HDDataEntity.m" lineNumber:1338 description:{@"Subclasses must not override %s", "+[HDDataEntity _insertBaseDataObject:withProvenance:inDatabase:error:]"}];
      }

      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __70__HDDataEntity__insertBaseDataObject_withProvenance_inDatabase_error___block_invoke;
      v35 = &unk_278613038;
      v26 = v22;
      v36 = v26;
      v27 = v32;
      v37 = v27;
      v28 = 0;
      if ([v23 executeSQL:@"INSERT OR IGNORE INTO objects (uuid error:provenance bindingHandler:type enumerationHandler:{creation_date) VALUES (?, ?, ?, ?)", a6, buf, 0}])
      {
        if ([v23 getChangesCount] < 1)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:a6 code:115 format:@"Duplicate HKObject"];
          v28 = 0;
        }

        else
        {
          v28 = [v23 lastInsertRowID];
        }
      }
    }

    else
    {
      if (!v14)
      {
        goto LABEL_26;
      }

      v16 = [a1 insertDataObject:v10 withProvenance:v11 inDatabase:v12 persistentID:v14 error:a6];
      if (!v16)
      {
        v33 = 0;
        v17 = [a1 _removeObjectWithPersistentID:objc_msgSend(v14 database:"longLongValue") error:{v12, &v33}];
        v18 = v33;
        if ((v17 & 1) == 0)
        {
          _HKInitializeLogging();
          v19 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            *&buf[4] = v14;
            *&buf[12] = 2114;
            *&buf[14] = v18;
            _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_INFO, "Failed to remove object with persistent id %{public}@ after failing subclasss insertion: %{public}@", buf, 0x16u);
          }

          v20 = v18;
          if (v20)
          {
            if (a6)
            {
              v21 = v20;
              *a6 = v20;
            }

            else
            {
              _HKLogDroppedError();
            }
          }
        }

        v14 = 0;
      }

      v14 = v14;

      v28 = v14;
    }

    v14 = v28;
  }

LABEL_26:

  v29 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

uint64_t __70__HDDataEntity__insertBaseDataObject_withProvenance_inDatabase_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) UUID];
  HDSQLiteBindFoundationValueToStatement();

  v5 = *(a1 + 40);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 3, [*(a1 + 32) entityType]);
  [*(a1 + 32) _creationTimestamp];

  return sqlite3_bind_double(a2, 4, v6);
}

+ (BOOL)_removeObjectWithPersistentID:(int64_t)a3 database:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 superclass];
  if ([v9 isSubclassOfClass:objc_opt_class()] && !objc_msgSend(v9, "_removeObjectWithPersistentID:database:error:", a3, v8, a5))
  {
    v11 = 0;
  }

  else
  {
    v10 = [[a1 alloc] initWithPersistentID:a3];
    v11 = [v10 deleteFromDatabase:v8 error:a5];
  }

  return v11;
}

+ (id)mergeDataObject:(id)a3 provenance:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7 insertHandler:(id)a8
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [[_HDDataEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

+ (id)deleteStatementsForRelatedEntitiesWithTransaction:(id)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [HDMetadataValueEntity deleteStatementForObjectMetadataWithTransaction:v3];
  v9[0] = v4;
  v5 = [HDAssociationEntity deleteStatementForChildIDsWithTransaction:v3];

  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)anyInDatabase:(id)a3 predicate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a1 predicateMatchingPreferredEntityTypeIfRequiredWithPredicate:a4];
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___HDDataEntity;
  v10 = objc_msgSendSuper2(&v12, sel_anyInDatabase_predicate_error_, v8, v9, a5);

  return v10;
}

+ (int64_t)countOfObjectsWithPredicate:(id)a3 healthDatabase:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 predicateMatchingPreferredEntityTypeIfRequiredWithPredicate:a3];
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___HDDataEntity;
  v10 = objc_msgSendSuper2(&v12, sel_countOfObjectsWithPredicate_healthDatabase_error_, v9, v8, a5);

  return v10;
}

+ (id)columnNamesForTimeOffset
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v5[0] = @"creation_date";
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)hk_timeZoneEncodingOptions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"IncludeAutomaticTimeZone";
  v6[0] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end