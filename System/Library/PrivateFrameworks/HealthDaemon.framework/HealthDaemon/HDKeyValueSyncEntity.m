@interface HDKeyValueSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
@end

@implementation HDKeyValueSyncEntity

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  end = a4.end;
  start = a4.start;
  v12 = a3;
  v13 = a5;
  v27 = a6;
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = [a1 category];
  v16 = +[HDKeyValueEntity _predicateForCategory:](HDKeyValueEntity, [a1 category]);
  v17 = [HDKeyValueEntity _entityClassForKeyValueCategory:v15];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = -1;
  v18 = [v13 database];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __99__HDKeyValueSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v28[3] = &unk_27862AEE8;
  v34 = v17;
  v19 = v13;
  v29 = v19;
  v20 = v16;
  v30 = v20;
  v21 = v12;
  v35 = start;
  v36 = end;
  v31 = v21;
  v33 = &v38;
  v22 = v14;
  v32 = v22;
  v37 = v15;
  LODWORD(start) = [(objc_class *)v17 performReadTransactionWithHealthDatabase:v18 error:a7 block:v28];

  if (start)
  {
    v23 = [v22 allValues];
    v24 = [v27 sendCodableChange:v23 resultAnchor:v39[3] sequence:0 done:1 error:a7];
  }

  else
  {
    v24 = 0;
  }

  _Block_object_dispose(&v38, 8);
  return v24;
}

uint64_t __99__HDKeyValueSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [*(a1 + 72) entityEncoderForProfile:*(a1 + 32) transaction:v4 purpose:0 encodingOptions:0 authorizationFilter:0];
  v6 = [v5 orderedProperties];
  v30[0] = @"domain";
  v30[1] = @"sync_identity";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v22 = [v6 arrayByAddingObjectsFromArray:v7];

  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *(a1 + 72);
  v11 = *(*(a1 + 64) + 8) + 24;
  v12 = [*(a1 + 32) database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __99__HDKeyValueSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v24[3] = &unk_27862AEC0;
  v25 = v5;
  v13 = *(a1 + 56);
  v14 = *(a1 + 96);
  v26 = v13;
  v29 = v14;
  v27 = *(a1 + 32);
  v28 = v4;
  v16 = *(a1 + 80);
  v15 = *(a1 + 88);
  v17 = v4;
  v18 = v5;
  v19 = [v10 enumerateEntitiesForSyncWithProperties:v22 predicate:v9 session:v8 syncAnchorRange:v16 limit:v15 lastSyncAnchor:0 healthDatabase:v11 error:v12 block:{a3, v24}];

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

BOOL __99__HDKeyValueSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = [*(a1 + 32) codableRepresentationForPersistentID:objc_msgSend(a2 row:"persistentID") error:{a4, a8}];
  v11 = HDSQLiteColumnWithNameAsString();
  if ([v11 isEqualToString:&stru_283BF39C8])
  {
  }

  else if (v11)
  {
    v12 = v11;
    v13 = v12;
    goto LABEL_6;
  }

  v12 = [MEMORY[0x277CBEB68] null];
  v13 = 0;
LABEL_6:
  v14 = [*(a1 + 40) objectForKeyedSubscript:v12];
  if (!v14)
  {
    v14 = [[HDCodableCategoryDomainDictionary alloc] initWithCategory:*(a1 + 64) domain:v13];
    [*(a1 + 40) setObject:v14 forKeyedSubscript:v12];
  }

  v15 = HDSQLiteColumnWithNameAsInt64();
  v16 = [*(a1 + 48) syncIdentityManager];
  v17 = [v16 identityForEntityID:v15 transaction:*(a1 + 56) error:a8];

  if (v17)
  {
    [(HDCodableCategoryDomainDictionary *)v14 addKeyValuePairs:v10];
    v18 = [v17 identity];
    v19 = [v18 codableSyncIdentity];
    [(HDCodableCategoryDomainDictionary *)v14 setSyncIdentity:v19];
  }

  return v17 != 0;
}

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [a1 category];
  v13 = [HDKeyValueEntity _entityClassForKeyValueCategory:v12];
  v14 = [HDKeyValueEntity _predicateForCategory:v12];
  v15 = [v10 database];

  v16 = [(objc_class *)v13 nextSyncAnchorWithStartAnchor:a4 predicate:v14 session:v11 healthDatabase:v15 error:a6];
  return v16;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableCategoryDomainDictionary alloc] initWithData:v3];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v68 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v52 = a5;
  v11 = a6;
  v12 = [a1 category];
  v47 = [HDKeyValueEntity _entityClassForKeyValueCategory:v12];
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v15 = v10;
  v55 = [v15 countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (!v55)
  {

    v16 = v52;
    goto LABEL_37;
  }

  v51 = v14;
  v54 = *v61;
  v53 = 1;
  v16 = v52;
  v49 = v11;
  v50 = v15;
  do
  {
    v17 = 0;
    do
    {
      if (*v61 != v54)
      {
        objc_enumerationMutation(v15);
      }

      v18 = *(*(&v60 + 1) + 8 * v17);
      if (([v18 hasCategory] & 1) == 0)
      {
        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "ignoring synced dictionary with missing category", buf, 2u);
        }

        v21 = MEMORY[0x277CCA9B8];
        v22 = @"Missing Category";
        goto LABEL_16;
      }

      if ([v18 category] != v12)
      {
        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v38 = v23;
          v39 = [v18 category];
          *buf = 134217984;
          v66 = v39;
          _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "ignoring synced dictionary with incorrect category %ld", buf, 0xCu);
        }

        v24 = MEMORY[0x277CCA9B8];
        v46 = [v18 category];
        v21 = v24;
        v22 = @"Incorrect Category %ld";
LABEL_16:
        v25 = [v21 hk_error:100 format:{v22, v46}];
        v26 = [v11 daemon];
        v27 = [v26 autoBugCaptureReporter];
        [v27 reportApplyDataFailure:objc_opt_class() duringSyncFromStore:v16 error:v25];

        goto LABEL_17;
      }

      v19 = v15;
      if (v53)
      {
        v53 = -[objc_class _insertCodableCategoryDomainDictionary:provenance:profile:error:](v47, "_insertCodableCategoryDomainDictionary:provenance:profile:error:", v18, [v16 syncProvenance], v11, a7);
      }

      else
      {
        v53 = 0;
      }

      v28 = v12;
      v29 = [v18 domain];

      if (v29)
      {
        v30 = [v18 domain];
        [v51 addObject:v30];
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v25 = [v18 keyValuePairs];
      v31 = [v25 countByEnumeratingWithState:&v56 objects:v64 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v57;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v57 != v33)
            {
              objc_enumerationMutation(v25);
            }

            v35 = *(*(&v56 + 1) + 8 * i);
            v36 = [v35 key];

            if (v36)
            {
              v37 = [v35 key];
              [v13 addObject:v37];
            }
          }

          v32 = [v25 countByEnumeratingWithState:&v56 objects:v64 count:16];
        }

        while (v32);
        v16 = v52;
        v11 = v49;
        v12 = v28;
        v15 = v50;
      }

      else
      {
        v15 = v19;
      }

LABEL_17:

      ++v17;
    }

    while (v17 != v55);
    v40 = [v15 countByEnumeratingWithState:&v60 objects:v67 count:16];
    v55 = v40;
  }

  while (v40);

  v14 = v51;
  if (v53)
  {
LABEL_37:
    v42 = [v14 allObjects];
    [a1 didReceiveValuesForDomainNames:v42 profile:v11];

    v43 = [v13 allObjects];
    [a1 didReceiveValuesForKeys:v43 profile:v11];

    v41 = 0;
    goto LABEL_38;
  }

  v41 = 1;
LABEL_38:

  v44 = *MEMORY[0x277D85DE8];
  return v41;
}

@end