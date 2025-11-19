@interface HDObjectAuthorizationSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
@end

@implementation HDObjectAuthorizationSyncEntity

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  end = a4.end;
  start = a4.start;
  v40[6] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CBEB38] dictionary];
  v40[0] = @"object";
  v40[1] = @"source";
  v40[2] = @"status";
  v40[3] = @"session";
  v40[4] = @"sync_identity";
  v40[5] = @"modification_date";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:6];
  v16 = [v12 database];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = -1;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __110__HDObjectAuthorizationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v27[3] = &unk_278625FA0;
  v17 = v15;
  v28 = v17;
  v18 = v11;
  v34 = start;
  v35 = end;
  v29 = v18;
  v33 = &v36;
  v19 = v16;
  v30 = v19;
  v20 = v14;
  v31 = v20;
  v21 = v12;
  v32 = v21;
  if ([(HDHealthEntity *)HDObjectAuthorizationEntity performReadTransactionWithHealthDatabase:v19 error:a7 block:v27])
  {
    v22 = [v20 allValues];
    v23 = [v13 sendCodableChange:v22 resultAnchor:v37[3] sequence:0 done:1 error:a7];
  }

  else
  {
    v23 = 0;
  }

  _Block_object_dispose(&v36, 8);
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

BOOL __110__HDObjectAuthorizationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 72) + 8) + 24;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __110__HDObjectAuthorizationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v15[3] = &unk_2786172E8;
  v9 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = v5;
  v11 = *(a1 + 80);
  v10 = *(a1 + 88);
  v12 = v5;
  v13 = [(HDHealthEntity *)HDObjectAuthorizationEntity enumerateEntitiesForSyncWithProperties:v6 predicate:0 session:v7 syncAnchorRange:v11 limit:v10 lastSyncAnchor:0 healthDatabase:v8 error:v9 block:a3, v15];

  return v13;
}

BOOL __110__HDObjectAuthorizationSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = HDSQLiteColumnWithNameAsUUID();
  v11 = [*(a1 + 32) objectForKeyedSubscript:v10];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = objc_alloc_init(HDCodableObjectAuthorization);
    v13 = [v10 hk_dataForUUIDBytes];
    [(HDCodableObjectAuthorization *)v12 setObjectUUID:v13];

    [*(a1 + 32) setObject:v12 forKeyedSubscript:v10];
    if (!v12)
    {
      v22 = 1;
      goto LABEL_7;
    }
  }

  v14 = objc_alloc_init(HDCodableObjectSourceAuthorization);
  v15 = HDSQLiteColumnWithNameAsUUID();
  v16 = [v15 hk_dataForUUIDBytes];
  [(HDCodableObjectSourceAuthorization *)v14 setSourceUUID:v16];

  [(HDCodableObjectSourceAuthorization *)v14 setAuthorizationStatus:HDSQLiteColumnWithNameAsInt64()];
  HDSQLiteColumnWithNameAsDouble();
  [(HDCodableObjectSourceAuthorization *)v14 setModificationDate:?];
  v17 = HDSQLiteColumnWithNameAsUUID();
  v18 = [v17 hk_dataForUUIDBytes];
  [(HDCodableObjectSourceAuthorization *)v14 setSessionUUID:v18];

  v19 = HDSQLiteColumnWithNameAsInt64();
  v20 = [*(a1 + 40) syncIdentityManager];
  v21 = [v20 identityForEntityID:v19 transaction:*(a1 + 48) error:a8];

  v22 = v21 != 0;
  if (v21)
  {
    v23 = [v21 identity];
    v24 = [v23 codableSyncIdentity];
    [(HDCodableObjectSourceAuthorization *)v14 setSyncIdentity:v24];

    [(HDCodableObjectAuthorization *)v12 addAuthorizations:v14];
  }

LABEL_7:
  return v22;
}

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [a5 database];
  v11 = [(HDHealthEntity *)HDObjectAuthorizationEntity nextSyncAnchorWithStartAnchor:a4 predicate:0 session:v9 healthDatabase:v10 error:a6];

  return v11;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableObjectAuthorization alloc] initWithData:v3];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v102 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v75 = a6;
  v71 = v10;
  v72 = objc_opt_self();
  v61 = [v10 syncProvenance];
  v69 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v9;
  v65 = [obj countByEnumeratingWithState:&v86 objects:v101 count:16];
  if (v65)
  {
    v64 = *v87;
    do
    {
      v11 = 0;
      do
      {
        if (*v87 != v64)
        {
          v12 = v11;
          objc_enumerationMutation(obj);
          v11 = v12;
        }

        v66 = v11;
        v13 = *(*(&v86 + 1) + 8 * v11);
        v67 = [v13 objectUUID];
        if (v67)
        {
          v68 = [MEMORY[0x277CCAD78] hk_UUIDWithData:?];
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v70 = [v13 authorizations];
          v74 = [v70 countByEnumeratingWithState:&v82 objects:v100 count:16];
          if (!v74)
          {
            goto LABEL_37;
          }

          v73 = *v83;
          while (1)
          {
            for (i = 0; i != v74; ++i)
            {
              if (*v83 != v73)
              {
                objc_enumerationMutation(v70);
              }

              v15 = *(*(&v82 + 1) + 8 * i);
              v16 = [v15 sourceUUID];
              if (v16)
              {
                if ([v15 hasAuthorizationStatus])
                {
                  v17 = [MEMORY[0x277CCAD78] hk_UUIDWithData:v16];
                  v18 = objc_alloc_init(MEMORY[0x277CCD710]);
                  [v18 setObjectUUID:v68];
                  [v18 setSourceUUID:v17];
                  [v18 setStatus:{objc_msgSend(v15, "authorizationStatus")}];
                  [v15 modificationDate];
                  [v18 setModificationDate:?];
                  v19 = MEMORY[0x277CCAD78];
                  v20 = [v15 sessionUUID];
                  v21 = [v19 hk_UUIDWithData:v20];
                  [v18 setSessionUUID:v21];

                  *&buf = 0;
                  *(&buf + 1) = &buf;
                  v91 = 0x3032000000;
                  v92 = __Block_byref_object_copy__136;
                  v93 = __Block_byref_object_dispose__136;
                  v22 = [v75 syncIdentityManager];
                  v94 = [v22 legacySyncIdentity];

                  if (![v15 hasSyncIdentity])
                  {
                    goto LABEL_17;
                  }

                  v23 = [v15 syncIdentity];
                  v81 = 0;
                  v24 = [HDSyncIdentity syncIdentityWithCodable:v23 error:&v81];
                  v25 = v81;

                  if (v24)
                  {
                    v26 = [v75 database];
                    p_buf = &buf;
                    v80 = v25;
                    v76[0] = MEMORY[0x277D85DD0];
                    v76[1] = 3221225472;
                    v76[2] = __90__HDObjectAuthorizationEntity__insertCodableObjectAuthorizations_syncStore_profile_error___block_invoke;
                    v76[3] = &unk_278614288;
                    v77 = v75;
                    v27 = v24;
                    v78 = v27;
                    v28 = [(HDHealthEntity *)HDSyncIdentityEntity performWriteTransactionWithHealthDatabase:v26 error:&v80 block:v76];
                    v29 = v80;

                    if (v28)
                    {
LABEL_17:
                      v30 = MEMORY[0x277CCABB0];
                      v31 = [*(*(&buf + 1) + 40) entity];
                      v25 = [v30 numberWithLongLong:{objc_msgSend(v31, "persistentID")}];

                      v32 = [v69 objectForKeyedSubscript:v25];
                      v33 = v32;
                      if (v32)
                      {
                        [v32 addObject:v18];
                      }

                      else
                      {
                        v38 = objc_alloc(MEMORY[0x277CBEB18]);
                        v99 = v18;
                        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
                        v33 = [v38 initWithArray:v39];
                      }

                      [v69 setObject:v33 forKeyedSubscript:v25];

                      goto LABEL_29;
                    }
                  }

                  else
                  {
                    _HKInitializeLogging();
                    v40 = *MEMORY[0x277CCC328];
                    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
                    {
                      LODWORD(v95) = 138543362;
                      *(&v95 + 4) = v25;
                      _os_log_fault_impl(&dword_228986000, v40, OS_LOG_TYPE_FAULT, "HDObjectAuthorizationSyncEntity SyncIdentity from received codable is nil %{public}@", &v95, 0xCu);
                    }

LABEL_29:
                  }

                  _Block_object_dispose(&buf, 8);

                  goto LABEL_31;
                }

                _HKInitializeLogging();
                v36 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                {
                  v44 = v36;
                  v45 = objc_opt_class();
                  LODWORD(buf) = 138543362;
                  *(&buf + 4) = v45;
                  v46 = v45;
                  _os_log_error_impl(&dword_228986000, v44, OS_LOG_TYPE_ERROR, "%{public}@ is missing authorization status and will be ignored.", &buf, 0xCu);
                }

                v17 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Missing authorization status"];
                v18 = [v75 daemon];
                v37 = [v18 autoBugCaptureReporter];
                [v37 reportApplyDataFailure:objc_opt_class() duringSyncFromStore:v71 error:v17];
              }

              else
              {
                _HKInitializeLogging();
                v34 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                {
                  v41 = v34;
                  v42 = objc_opt_class();
                  LODWORD(buf) = 138543362;
                  *(&buf + 4) = v42;
                  v43 = v42;
                  _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "%{public}@ is missing a source ID and will be ignored.", &buf, 0xCu);
                }

                v17 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Missing source ID"];
                v18 = [v75 daemon];
                v35 = [v18 autoBugCaptureReporter];
                [v35 reportApplyDataFailure:objc_opt_class() duringSyncFromStore:v71 error:v17];
              }

LABEL_31:
            }

            v74 = [v70 countByEnumeratingWithState:&v82 objects:v100 count:16];
            if (!v74)
            {
              goto LABEL_37;
            }
          }
        }

        _HKInitializeLogging();
        v47 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v49 = v47;
          v50 = objc_opt_class();
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v50;
          v51 = v50;
          _os_log_error_impl(&dword_228986000, v49, OS_LOG_TYPE_ERROR, "%{public}@ is missing an object ID and will be ignored.", &buf, 0xCu);
        }

        v68 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Missing Object ID"];
        v70 = [v75 daemon];
        v48 = [v70 autoBugCaptureReporter];
        [v48 reportApplyDataFailure:objc_opt_class() duringSyncFromStore:v71 error:v68];

LABEL_37:
        v11 = v66 + 1;
      }

      while (v66 + 1 != v65);
      v65 = [obj countByEnumeratingWithState:&v86 objects:v101 count:16];
    }

    while (v65);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v52 = v69;
  v53 = [v52 countByEnumeratingWithState:&v95 objects:&buf count:16];
  if (v53)
  {
    v54 = *v96;
    v55 = 1;
LABEL_41:
    v56 = 0;
    while (1)
    {
      if (*v96 != v54)
      {
        objc_enumerationMutation(v52);
      }

      v57 = *(*(&v95 + 1) + 8 * v56);
      v58 = [v52 objectForKeyedSubscript:v57];
      LOBYTE(v57) = [v72 setObjectAuthorizationRecords:v58 syncProvenance:v61 syncIdentity:objc_msgSend(v57 profile:"intValue") error:{v75, a7}];

      if ((v57 & 1) == 0)
      {
        break;
      }

      if (v53 == ++v56)
      {
        v53 = [v52 countByEnumeratingWithState:&v95 objects:&buf count:16];
        if (v53)
        {
          goto LABEL_41;
        }

        goto LABEL_47;
      }
    }
  }

  else
  {
LABEL_47:
    v55 = 0;
  }

  v59 = *MEMORY[0x277D85DE8];
  return v55;
}

+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [v3 setWithArray:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end