@interface HDDataSyncUtilities
+ (BOOL)insertDeletedObjectsFromCodableObjectCollection:(id)a3 syncEntityClass:(Class)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
+ (BOOL)insertObjectsFromCodableObjectCollection:(id)a3 syncEntityClass:(Class)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
+ (id)generateCodableObjectCollectionsForEntityClass:(Class)a3 predicate:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)provenanceFromCollection:(id)a3 syncStore:(id)a4 profile:(id)a5 error:(id *)a6;
@end

@implementation HDDataSyncUtilities

+ (BOOL)insertObjectsFromCodableObjectCollection:(id)a3 syncEntityClass:(Class)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = [objc_opt_class() objectsFromCodableObjectsInCollection:v11];
  if (![v15 count])
  {

    objc_autoreleasePoolPop(v14);
LABEL_10:
    v24 = 1;
    goto LABEL_11;
  }

  v36 = 0;
  v16 = [HDDataSyncUtilities provenanceFromCollection:v11 syncStore:v12 profile:v13 error:&v36];
  v17 = v36;
  if (!v16)
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v38 = v12;
      v39 = 2114;
      v40 = v17;
      _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "Failed to create provenance for codable object collection from store %{public}@: %{public}@", buf, 0x16u);
    }

    v22 = [v13 daemon];
    v23 = [v22 autoBugCaptureReporter];
    [v23 reportApplyDataFailure:a4 duringSyncFromStore:v12 error:v17];

    goto LABEL_9;
  }

  v33 = a7;
  context = v14;
  v18 = [v13 dataManager];
  v35 = v17;
  v19 = [v18 insertDataObjects:v15 withProvenance:v16 creationDate:1 skipInsertionFilter:0 updateSourceOrder:0 resolveAssociations:&v35 error:2.22507386e-308];
  v20 = v35;

  if (v19)
  {
    v17 = v20;
    v14 = context;
LABEL_9:

    objc_autoreleasePoolPop(v14);
    goto LABEL_10;
  }

  _HKInitializeLogging();
  v27 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v38 = v12;
    v39 = 2114;
    v40 = v20;
    _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "failed to insert objects synced from store %{public}@: %{public}@", buf, 0x16u);
  }

  v28 = [v13 daemon];
  v29 = [v28 autoBugCaptureReporter];
  [v29 reportApplyDataFailure:a4 duringSyncFromStore:v12 error:v20];

  objc_autoreleasePoolPop(context);
  v30 = v20;
  v31 = v30;
  if (v30)
  {
    if (v33)
    {
      v32 = v30;
      *v33 = v31;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v24 = 0;
LABEL_11:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)provenanceFromCollection:(id)a3 syncStore:(id)a4 profile:(id)a5 error:(id *)a6
{
  v98 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v82 = a4;
  v81 = a5;
  v79 = v8;
  v9 = [v8 provenance];
  if (v9)
  {
    v78 = [v8 source];
    if (v82)
    {
      v10 = [v82 syncProvenance];
    }

    else
    {
      v10 = 0;
    }

    v71 = [v9 decodedSourceUUID];
    v75 = [v9 decodedDeviceUUID];
    v13 = MEMORY[0x277CCAD78];
    v14 = [v9 contributorUUID];
    v72 = [v13 hk_UUIDWithData:v14];

    if (v72)
    {
      [HDContributorReference contributorReferenceForOtherUserWithUUID:?];
    }

    else
    {
      +[HDContributorReference contributorReferenceForNoContributor];
    }
    v15 = ;
    if (!v78)
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v82;
        _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "missing source for object collection received from %{public}@", buf, 0xCu);
      }

      v80 = 0;
      v20 = 0;
LABEL_29:
      if (v75)
      {
        v29 = [v81 database];
        v90 = v20;
        v76 = [HDDeviceEntity deviceEntityWithUUID:v75 healthDatabase:v29 error:&v90];
        v74 = v90;

        if (v76)
        {
LABEL_35:
          v77 = [v9 originProductType];
          if (!v77)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v77 = [v82 remoteProductType];
            }

            else
            {
              v77 = @"UnknownDevice";
            }
          }

          if (v80 && v76)
          {
            if ([v9 hasOriginMajorVersion])
            {
              v35 = [v9 originMajorVersion];
              v68 = [v9 originMinorVersion];
              v69 = v35;
              v67 = [v9 originPatchVersion];
            }

            else
            {
              v40 = [v9 originBuild];
              HDVersionFromBuildStringForProductType(v40, v77, buf);
              v68 = *&buf[8];
              v69 = *buf;
              v67 = *&buf[16];
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v95 = __Block_byref_object_copy__6;
            v96 = __Block_byref_object_dispose__6;
            v41 = [v81 syncIdentityManager];
            v97 = [v41 legacySyncIdentity];

            v66 = v10;
            v70 = v15;
            if ([v79 hasSyncIdentity])
            {
              v42 = [v79 syncIdentity];
              v88 = 0;
              v43 = [HDSyncIdentity syncIdentityWithCodable:v42 error:&v88];
              v44 = v88;

              if (v43)
              {
                v45 = [v81 database];
                v83[0] = MEMORY[0x277D85DD0];
                v83[1] = 3221225472;
                v83[2] = __72__HDDataSyncUtilities_provenanceFromCollection_syncStore_profile_error___block_invoke;
                v83[3] = &unk_278614288;
                v86 = buf;
                v87 = v44;
                v84 = v81;
                v85 = v43;
                v46 = [(HDHealthEntity *)HDSyncIdentityEntity performWriteTransactionWithHealthDatabase:v45 error:&v87 block:v83];
                v47 = v87;

                if (!v46)
                {
                  _HKInitializeLogging();
                  v48 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
                  {
                    LODWORD(v92) = 138543362;
                    *(&v92 + 4) = v47;
                    _os_log_fault_impl(&dword_228986000, v48, OS_LOG_TYPE_FAULT, "HDDataSyncEntity ConcreteSyncIdentity from received codable is nil %{public}@", &v92, 0xCu);
                  }
                }

                v44 = v47;
              }

              else
              {
                _HKInitializeLogging();
                v49 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
                {
                  LODWORD(v92) = 138543362;
                  *(&v92 + 4) = v44;
                  _os_log_fault_impl(&dword_228986000, v49, OS_LOG_TYPE_FAULT, "HDDataSyncEntity SyncIdentity from received codable is nil %{public}@", &v92, 0xCu);
                }
              }
            }

            v50 = [*(*&buf[8] + 40) entity];
            v51 = [v50 persistentID];
            v52 = [v9 originBuild];
            v53 = [v9 sourceVersion];
            v54 = v53;
            if (v53)
            {
              v55 = v53;
            }

            else
            {
              v55 = &stru_283BF39C8;
            }

            v56 = [v9 timeZoneName];
            v57 = v56;
            if (v56)
            {
              v58 = v56;
            }

            else
            {
              v58 = &stru_283BF39C8;
            }

            v59 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v80, "persistentID")}];
            v60 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v76, "persistentID")}];
            *&v92 = v69;
            *(&v92 + 1) = v68;
            v93 = v67;
            v12 = [HDDataOriginProvenance dataProvenanceWithSyncProvenance:v66 syncIdentity:v51 productType:v77 systemBuild:v52 operatingSystemVersion:&v92 sourceVersion:v55 timeZoneName:v58 sourceID:v59 deviceID:v60 contributorReference:v70];

            v15 = v70;
            _Block_object_dispose(buf, 8);
          }

          else
          {
            _HKInitializeLogging();
            v36 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
            {
              v37 = v36;
              v38 = [v71 UUIDString];
              v39 = [v75 UUIDString];
              *buf = 138543874;
              *&buf[4] = v82;
              *&buf[12] = 2114;
              *&buf[14] = v38;
              *&buf[22] = 2114;
              v95 = v39;
              _os_log_impl(&dword_228986000, v37, OS_LOG_TYPE_INFO, "missing source/device provenance for object collection received from %{public}@, %{public}@/%{public}@.", buf, 0x20u);
            }

            v12 = 0;
          }

          v61 = v74;
          v62 = v61;
          if (v61)
          {
            if (a6)
            {
              v63 = v61;
              *a6 = v62;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          goto LABEL_68;
        }

        _HKInitializeLogging();
        v30 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
        {
          v31 = v30;
          v32 = [v75 UUIDString];
          *buf = 138543618;
          *&buf[4] = v32;
          *&buf[12] = 2114;
          *&buf[14] = v74;
          _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_INFO, "failed to find expected device %{public}@: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v74 = v20;
      }

      v33 = [v81 deviceManager];
      v89 = v74;
      v76 = [v33 deviceEntityForNoDeviceWithError:&v89];
      v34 = v89;

      v74 = v34;
      goto LABEL_35;
    }

    v16 = [v78 bundleIdentifier];
    if (v82)
    {
      v17 = [v82 syncStoreDefaultSourceBundleIdentifier];
      v18 = [v16 isEqualToString:v17];
    }

    else
    {
      v18 = 1;
    }

    LOBYTE(v92) = 0;
    v21 = [v81 sourceManager];
    v91 = 0;
    v80 = [v21 sourceForCodableSource:v78 provenance:v10 createIfNecessary:v18 isDeleted:&v92 error:&v91];
    v20 = v91;

    if (v80)
    {
      if (v92 != 1)
      {
LABEL_28:

        goto LABEL_29;
      }

      v22 = MEMORY[0x277CCA9B8];
      v23 = [v78 decodedUUID];
      [v22 hk_error:100 format:{@"Source %@ is deleted", v23}];
      v20 = v24 = v20;
    }

    else
    {
      _HKInitializeLogging();
      v25 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        if (v18)
        {
          v26 = " or create";
        }

        else
        {
          v26 = "";
        }

        v27 = v25;
        v28 = [v78 decodedUUID];
        *buf = 136315650;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = v28;
        *&buf[22] = 2114;
        v95 = v20;
        _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "failed to look-up%s source %{public}@: %{public}@", buf, 0x20u);
      }

      v80 = [v81 daemon];
      v23 = [v80 autoBugCaptureReporter];
      v24 = [v78 bundleIdentifier];
      [v23 reportMissingSource:v24 duringSyncFromStore:v82];
    }

    v80 = 0;
    goto LABEL_28;
  }

  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    *&buf[4] = v82;
    _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "No provenance information on codable object collection received from %{public}@", buf, 0xCu);
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a6 code:3 format:{@"No provenance information on codable object collection received from %@", v82}];
  v12 = 0;
LABEL_68:

  v64 = *MEMORY[0x277D85DE8];

  return v12;
}

BOOL __72__HDDataSyncUtilities_provenanceFromCollection_syncStore_profile_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 syncIdentityManager];
  v8 = [v7 concreteIdentityForIdentity:a1[5] shouldCreate:1 transaction:v6 error:a3];

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return *(*(a1[6] + 8) + 40) != 0;
}

+ (BOOL)insertDeletedObjectsFromCodableObjectCollection:(id)a3 syncEntityClass:(Class)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [v11 deletedSamples];
  v15 = [v14 count];

  if (v15)
  {
    v36 = 0;
    v16 = [HDDataSyncUtilities provenanceFromCollection:v11 syncStore:v12 profile:v13 error:&v36];
    v17 = v36;
    if (v16)
    {
      v34 = a4;
      v18 = [v11 deletedSamples];
      v19 = [v13 daemon];
      v20 = [v19 behavior];
      v21 = [v20 shouldReceiveECGSamples];

      if (v21)
      {
        v22 = v18;
      }

      else
      {
        v27 = [v11 deletedSamples];
        v22 = [v27 hk_filter:&__block_literal_global_7];

        if (![v22 count])
        {
          v23 = 1;
LABEL_26:

          goto LABEL_27;
        }
      }

      v35 = v17;
      v28 = [HDDeletedSampleEntity insertCodableDeletedSamples:v22 provenance:v16 profile:v13 error:&v35];
      v26 = v35;

      if (v28)
      {
        v23 = 1;
LABEL_25:
        v17 = v26;
        goto LABEL_26;
      }

      if ([v26 hk_isHealthKitErrorWithCode:123])
      {
        v25 = v26;
        if (v25)
        {
          if (a7)
          {
            v29 = v25;
            v23 = 0;
            *a7 = v25;
          }

          else
          {
            _HKLogDroppedError();
            v23 = 0;
          }

          v26 = v25;
        }

        else
        {
          v26 = 0;
          v23 = 0;
        }
      }

      else
      {
        _HKInitializeLogging();
        v30 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v38 = v12;
          v39 = 2114;
          v40 = v26;
          _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "Failed to insert deleted samples during sync for store %{public}@: %{public}@", buf, 0x16u);
        }

        v25 = [v13 daemon];
        v31 = [v25 autoBugCaptureReporter];
        [v31 reportApplyDataFailure:v34 duringSyncFromStore:v12 error:v26];

        v23 = 1;
      }

LABEL_24:

      goto LABEL_25;
    }

    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v38 = v12;
      v39 = 2114;
      v40 = v17;
      _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "Failed to look up provenance for deleted samples from store %{public}@: %{public}@", buf, 0x16u);
      if (v17)
      {
        goto LABEL_9;
      }
    }

    else if (v17)
    {
LABEL_9:
      v22 = [v13 daemon];
      v25 = [v22 autoBugCaptureReporter];
      [v25 reportApplyDataFailure:a4 duringSyncFromStore:v12 error:v17];
      v23 = 1;
      v26 = v17;
      goto LABEL_24;
    }

    v17 = [MEMORY[0x277CCA9B8] hk_error:11 description:@"Failed to look up provenance for deleted samples from store"];
    goto LABEL_9;
  }

  v23 = 1;
LABEL_27:

  v32 = *MEMORY[0x277D85DE8];
  return v23;
}

BOOL __111__HDDataSyncUtilities_insertDeletedObjectsFromCodableObjectCollection_syncEntityClass_syncStore_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasSample])
  {
    v3 = [v2 sample];
    v4 = [v3 dataType] != 144;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)generateCodableObjectCollectionsForEntityClass:(Class)a3 predicate:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [v11 database];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__6;
  v28 = __Block_byref_object_dispose__6;
  v29 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __94__HDDataSyncUtilities_generateCodableObjectCollectionsForEntityClass_predicate_profile_error___block_invoke;
  v18[3] = &unk_278614320;
  v13 = v11;
  v19 = v13;
  v22 = a3;
  v14 = v10;
  v23 = a1;
  v20 = v14;
  v21 = &v24;
  if ([(objc_class *)a3 performReadTransactionWithHealthDatabase:v12 error:a6 block:v18])
  {
    v15 = v25[5];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  _Block_object_dispose(&v24, 8);

  return v16;
}

uint64_t __94__HDDataSyncUtilities_generateCodableObjectCollectionsForEntityClass_predicate_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[HDDataProvenanceCache alloc] initWithProfile:*(a1 + 32) transaction:v5 purpose:0];
  v7 = [*(a1 + 56) entityEncoderForProfile:*(a1 + 32) transaction:v5 purpose:0 encodingOptions:0 authorizationFilter:0];

  v8 = *(a1 + 56);
  v9 = [v7 orderedProperties];
  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __94__HDDataSyncUtilities_generateCodableObjectCollectionsForEntityClass_predicate_profile_error___block_invoke_2;
  v19[3] = &unk_2786142F8;
  v12 = v6;
  v20 = v12;
  v21 = *(a1 + 32);
  v13 = v7;
  v22 = v13;
  v23 = *(a1 + 56);
  v14 = [v8 enumerateEntitiesForSyncWithProperties:v9 predicate:v10 healthDatabase:v11 error:a3 block:v19];

  if (v14)
  {
    v15 = [(HDDataProvenanceCache *)v12 allCodableObjectCollectionsByProvenance];
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  return v14;
}

uint64_t __94__HDDataSyncUtilities_generateCodableObjectCollectionsForEntityClass_predicate_profile_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v13 = [*(a1 + 32) provenanceWithID:v12];
  if (!v13)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a8 code:100 format:{@"Failed to retrieve provenance for id %@", v12}];
LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  v14 = [*(a1 + 32) codableObjectCollectionForProvenance:v13 profile:*(a1 + 40)];

  if (!v14)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a8 code:100 format:{@"Failed to find/create codable object collection for provenance %@", v13}];
    goto LABEL_9;
  }

  v15 = *(a1 + 48);
  v16 = [v11 persistentID];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __94__HDDataSyncUtilities_generateCodableObjectCollectionsForEntityClass_predicate_profile_error___block_invoke_3;
  v22[3] = &unk_2786142D0;
  v26 = *(a1 + 56);
  v23 = *(a1 + 32);
  v24 = v13;
  v25 = *(a1 + 40);
  if (([v15 generateCodableRepresentationsForPersistentID:v16 row:a4 maxBytesPerRepresentation:0x80000 error:a8 handler:v22] & 1) == 0)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 64);
      *buf = 138543362;
      v28 = v21;
      _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: failed to generate codable representation for sync", buf, 0xCu);
    }
  }

  v18 = 1;
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __94__HDDataSyncUtilities_generateCodableObjectCollectionsForEntityClass_predicate_profile_error___block_invoke_3(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v4 = a1[7];
  v6 = a2;
  v7 = [v2 codableObjectCollectionForProvenance:v3 profile:v5];
  LODWORD(v3) = [v4 addCodableObject:v6 toCollection:v7];

  if (v3)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

@end