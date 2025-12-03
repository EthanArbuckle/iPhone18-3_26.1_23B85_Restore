@interface HDDataSyncUtilities
+ (BOOL)insertDeletedObjectsFromCodableObjectCollection:(id)collection syncEntityClass:(Class)class syncStore:(id)store profile:(id)profile error:(id *)error;
+ (BOOL)insertObjectsFromCodableObjectCollection:(id)collection syncEntityClass:(Class)class syncStore:(id)store profile:(id)profile error:(id *)error;
+ (id)generateCodableObjectCollectionsForEntityClass:(Class)class predicate:(id)predicate profile:(id)profile error:(id *)error;
+ (id)provenanceFromCollection:(id)collection syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDDataSyncUtilities

+ (BOOL)insertObjectsFromCodableObjectCollection:(id)collection syncEntityClass:(Class)class syncStore:(id)store profile:(id)profile error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  storeCopy = store;
  profileCopy = profile;
  v14 = objc_autoreleasePoolPush();
  v15 = [objc_opt_class() objectsFromCodableObjectsInCollection:collectionCopy];
  if (![v15 count])
  {

    objc_autoreleasePoolPop(v14);
LABEL_10:
    v24 = 1;
    goto LABEL_11;
  }

  v36 = 0;
  v16 = [HDDataSyncUtilities provenanceFromCollection:collectionCopy syncStore:storeCopy profile:profileCopy error:&v36];
  v17 = v36;
  if (!v16)
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v38 = storeCopy;
      v39 = 2114;
      v40 = v17;
      _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "Failed to create provenance for codable object collection from store %{public}@: %{public}@", buf, 0x16u);
    }

    daemon = [profileCopy daemon];
    autoBugCaptureReporter = [daemon autoBugCaptureReporter];
    [autoBugCaptureReporter reportApplyDataFailure:class duringSyncFromStore:storeCopy error:v17];

    goto LABEL_9;
  }

  errorCopy = error;
  context = v14;
  dataManager = [profileCopy dataManager];
  v35 = v17;
  v19 = [dataManager insertDataObjects:v15 withProvenance:v16 creationDate:1 skipInsertionFilter:0 updateSourceOrder:0 resolveAssociations:&v35 error:2.22507386e-308];
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
    v38 = storeCopy;
    v39 = 2114;
    v40 = v20;
    _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "failed to insert objects synced from store %{public}@: %{public}@", buf, 0x16u);
  }

  daemon2 = [profileCopy daemon];
  autoBugCaptureReporter2 = [daemon2 autoBugCaptureReporter];
  [autoBugCaptureReporter2 reportApplyDataFailure:class duringSyncFromStore:storeCopy error:v20];

  objc_autoreleasePoolPop(context);
  v30 = v20;
  v31 = v30;
  if (v30)
  {
    if (errorCopy)
    {
      v32 = v30;
      *errorCopy = v31;
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

+ (id)provenanceFromCollection:(id)collection syncStore:(id)store profile:(id)profile error:(id *)error
{
  v98 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  storeCopy = store;
  profileCopy = profile;
  v79 = collectionCopy;
  provenance = [collectionCopy provenance];
  if (provenance)
  {
    source = [collectionCopy source];
    if (storeCopy)
    {
      syncProvenance = [storeCopy syncProvenance];
    }

    else
    {
      syncProvenance = 0;
    }

    decodedSourceUUID = [provenance decodedSourceUUID];
    decodedDeviceUUID = [provenance decodedDeviceUUID];
    v13 = MEMORY[0x277CCAD78];
    contributorUUID = [provenance contributorUUID];
    v72 = [v13 hk_UUIDWithData:contributorUUID];

    if (v72)
    {
      [HDContributorReference contributorReferenceForOtherUserWithUUID:?];
    }

    else
    {
      +[HDContributorReference contributorReferenceForNoContributor];
    }
    v15 = ;
    if (!source)
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = storeCopy;
        _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "missing source for object collection received from %{public}@", buf, 0xCu);
      }

      daemon = 0;
      v20 = 0;
LABEL_29:
      if (decodedDeviceUUID)
      {
        database = [profileCopy database];
        v90 = v20;
        v76 = [HDDeviceEntity deviceEntityWithUUID:decodedDeviceUUID healthDatabase:database error:&v90];
        v74 = v90;

        if (v76)
        {
LABEL_35:
          originProductType = [provenance originProductType];
          if (!originProductType)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              originProductType = [storeCopy remoteProductType];
            }

            else
            {
              originProductType = @"UnknownDevice";
            }
          }

          if (daemon && v76)
          {
            if ([provenance hasOriginMajorVersion])
            {
              originMajorVersion = [provenance originMajorVersion];
              originMinorVersion = [provenance originMinorVersion];
              v69 = originMajorVersion;
              originPatchVersion = [provenance originPatchVersion];
            }

            else
            {
              originBuild = [provenance originBuild];
              HDVersionFromBuildStringForProductType(originBuild, originProductType, buf);
              originMinorVersion = *&buf[8];
              v69 = *buf;
              originPatchVersion = *&buf[16];
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v95 = __Block_byref_object_copy__6;
            v96 = __Block_byref_object_dispose__6;
            syncIdentityManager = [profileCopy syncIdentityManager];
            legacySyncIdentity = [syncIdentityManager legacySyncIdentity];

            v66 = syncProvenance;
            v70 = v15;
            if ([v79 hasSyncIdentity])
            {
              syncIdentity = [v79 syncIdentity];
              v88 = 0;
              v43 = [HDSyncIdentity syncIdentityWithCodable:syncIdentity error:&v88];
              v44 = v88;

              if (v43)
              {
                database2 = [profileCopy database];
                v83[0] = MEMORY[0x277D85DD0];
                v83[1] = 3221225472;
                v83[2] = __72__HDDataSyncUtilities_provenanceFromCollection_syncStore_profile_error___block_invoke;
                v83[3] = &unk_278614288;
                v86 = buf;
                v87 = v44;
                v84 = profileCopy;
                v85 = v43;
                v46 = [(HDHealthEntity *)HDSyncIdentityEntity performWriteTransactionWithHealthDatabase:database2 error:&v87 block:v83];
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

            entity = [*(*&buf[8] + 40) entity];
            persistentID = [entity persistentID];
            originBuild2 = [provenance originBuild];
            sourceVersion = [provenance sourceVersion];
            v54 = sourceVersion;
            if (sourceVersion)
            {
              v55 = sourceVersion;
            }

            else
            {
              v55 = &stru_283BF39C8;
            }

            timeZoneName = [provenance timeZoneName];
            v57 = timeZoneName;
            if (timeZoneName)
            {
              v58 = timeZoneName;
            }

            else
            {
              v58 = &stru_283BF39C8;
            }

            v59 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(daemon, "persistentID")}];
            v60 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v76, "persistentID")}];
            *&v92 = v69;
            *(&v92 + 1) = originMinorVersion;
            v93 = originPatchVersion;
            v12 = [HDDataOriginProvenance dataProvenanceWithSyncProvenance:v66 syncIdentity:persistentID productType:originProductType systemBuild:originBuild2 operatingSystemVersion:&v92 sourceVersion:v55 timeZoneName:v58 sourceID:v59 deviceID:v60 contributorReference:v70];

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
              uUIDString = [decodedSourceUUID UUIDString];
              uUIDString2 = [decodedDeviceUUID UUIDString];
              *buf = 138543874;
              *&buf[4] = storeCopy;
              *&buf[12] = 2114;
              *&buf[14] = uUIDString;
              *&buf[22] = 2114;
              v95 = uUIDString2;
              _os_log_impl(&dword_228986000, v37, OS_LOG_TYPE_INFO, "missing source/device provenance for object collection received from %{public}@, %{public}@/%{public}@.", buf, 0x20u);
            }

            v12 = 0;
          }

          v61 = v74;
          v62 = v61;
          if (v61)
          {
            if (error)
            {
              v63 = v61;
              *error = v62;
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
          uUIDString3 = [decodedDeviceUUID UUIDString];
          *buf = 138543618;
          *&buf[4] = uUIDString3;
          *&buf[12] = 2114;
          *&buf[14] = v74;
          _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_INFO, "failed to find expected device %{public}@: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v74 = v20;
      }

      deviceManager = [profileCopy deviceManager];
      v89 = v74;
      v76 = [deviceManager deviceEntityForNoDeviceWithError:&v89];
      v34 = v89;

      v74 = v34;
      goto LABEL_35;
    }

    bundleIdentifier = [source bundleIdentifier];
    if (storeCopy)
    {
      syncStoreDefaultSourceBundleIdentifier = [storeCopy syncStoreDefaultSourceBundleIdentifier];
      v18 = [bundleIdentifier isEqualToString:syncStoreDefaultSourceBundleIdentifier];
    }

    else
    {
      v18 = 1;
    }

    LOBYTE(v92) = 0;
    sourceManager = [profileCopy sourceManager];
    v91 = 0;
    daemon = [sourceManager sourceForCodableSource:source provenance:syncProvenance createIfNecessary:v18 isDeleted:&v92 error:&v91];
    v20 = v91;

    if (daemon)
    {
      if (v92 != 1)
      {
LABEL_28:

        goto LABEL_29;
      }

      v22 = MEMORY[0x277CCA9B8];
      decodedUUID = [source decodedUUID];
      [v22 hk_error:100 format:{@"Source %@ is deleted", decodedUUID}];
      v20 = bundleIdentifier2 = v20;
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
        decodedUUID2 = [source decodedUUID];
        *buf = 136315650;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = decodedUUID2;
        *&buf[22] = 2114;
        v95 = v20;
        _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "failed to look-up%s source %{public}@: %{public}@", buf, 0x20u);
      }

      daemon = [profileCopy daemon];
      decodedUUID = [daemon autoBugCaptureReporter];
      bundleIdentifier2 = [source bundleIdentifier];
      [decodedUUID reportMissingSource:bundleIdentifier2 duringSyncFromStore:storeCopy];
    }

    daemon = 0;
    goto LABEL_28;
  }

  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    *&buf[4] = storeCopy;
    _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "No provenance information on codable object collection received from %{public}@", buf, 0xCu);
  }

  [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"No provenance information on codable object collection received from %@", storeCopy}];
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

+ (BOOL)insertDeletedObjectsFromCodableObjectCollection:(id)collection syncEntityClass:(Class)class syncStore:(id)store profile:(id)profile error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  storeCopy = store;
  profileCopy = profile;
  deletedSamples = [collectionCopy deletedSamples];
  v15 = [deletedSamples count];

  if (v15)
  {
    v36 = 0;
    v16 = [HDDataSyncUtilities provenanceFromCollection:collectionCopy syncStore:storeCopy profile:profileCopy error:&v36];
    v17 = v36;
    if (v16)
    {
      classCopy = class;
      deletedSamples2 = [collectionCopy deletedSamples];
      daemon = [profileCopy daemon];
      behavior = [daemon behavior];
      shouldReceiveECGSamples = [behavior shouldReceiveECGSamples];

      if (shouldReceiveECGSamples)
      {
        daemon3 = deletedSamples2;
      }

      else
      {
        deletedSamples3 = [collectionCopy deletedSamples];
        daemon3 = [deletedSamples3 hk_filter:&__block_literal_global_7];

        if (![daemon3 count])
        {
          v23 = 1;
LABEL_26:

          goto LABEL_27;
        }
      }

      v35 = v17;
      v28 = [HDDeletedSampleEntity insertCodableDeletedSamples:daemon3 provenance:v16 profile:profileCopy error:&v35];
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
        daemon2 = v26;
        if (daemon2)
        {
          if (error)
          {
            v29 = daemon2;
            v23 = 0;
            *error = daemon2;
          }

          else
          {
            _HKLogDroppedError();
            v23 = 0;
          }

          v26 = daemon2;
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
          v38 = storeCopy;
          v39 = 2114;
          v40 = v26;
          _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "Failed to insert deleted samples during sync for store %{public}@: %{public}@", buf, 0x16u);
        }

        daemon2 = [profileCopy daemon];
        autoBugCaptureReporter = [daemon2 autoBugCaptureReporter];
        [autoBugCaptureReporter reportApplyDataFailure:classCopy duringSyncFromStore:storeCopy error:v26];

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
      v38 = storeCopy;
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
      daemon3 = [profileCopy daemon];
      daemon2 = [daemon3 autoBugCaptureReporter];
      [daemon2 reportApplyDataFailure:class duringSyncFromStore:storeCopy error:v17];
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

+ (id)generateCodableObjectCollectionsForEntityClass:(Class)class predicate:(id)predicate profile:(id)profile error:(id *)error
{
  predicateCopy = predicate;
  profileCopy = profile;
  database = [profileCopy database];
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
  v13 = profileCopy;
  v19 = v13;
  classCopy = class;
  v14 = predicateCopy;
  selfCopy = self;
  v20 = v14;
  v21 = &v24;
  if ([(objc_class *)class performReadTransactionWithHealthDatabase:database error:error block:v18])
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