@interface HDCloudSyncDetectSyncDisabledOperation
- (void)_disableSyncLocally;
- (void)main;
@end

@implementation HDCloudSyncDetectSyncDisabledOperation

- (void)main
{
  v79 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];

  profile = [repository profile];
  cloudSyncManager = [profile cloudSyncManager];
  ownerIdentifierManager = [cloudSyncManager ownerIdentifierManager];

  allCKContainers = [repository allCKContainers];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __46__HDCloudSyncDetectSyncDisabledOperation_main__block_invoke;
  v70[3] = &unk_27862B110;
  v9 = ownerIdentifierManager;
  v71 = v9;
  v62 = [allCKContainers hk_map:v70];

  configuration2 = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration2 cachedCloudState];
  v69 = 0;
  v12 = [cachedCloudState zonesByIdentifierWithError:&v69];
  v13 = v69;

  if (!v12 && v13)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v74 = 2114;
      v75 = v13;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve cached zones, %{public}@", buf, 0x16u);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v13];
    goto LABEL_45;
  }

  v57 = v13;
  v58 = v12;
  v59 = v9;
  v60 = repository;
  selfCopy2 = self;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  allValues = [v12 allValues];
  v16 = [allValues countByEnumeratingWithState:&v65 objects:v78 count:16];
  if (v16)
  {
    v18 = v16;
    v19 = *v66;
    v20 = MEMORY[0x277CCC328];
    *&v17 = 138543618;
    v56 = v17;
LABEL_8:
    v21 = 0;
    while (1)
    {
      if (*v66 != v19)
      {
        objc_enumerationMutation(allValues);
      }

      v22 = *(*(&v65 + 1) + 8 * v21);
      zoneIdentifier = [v22 zoneIdentifier];
      scope = [zoneIdentifier scope];

      if (scope == 3)
      {
        goto LABEL_33;
      }

      if ([v22 zoneType] == 2)
      {
        v25 = objc_opt_class();
        v64 = 0;
        firstObject2 = [v22 recordsForClass:v25 error:&v64];
        v27 = v64;
        if (v27)
        {
          v28 = v27;
          _HKInitializeLogging();
          v29 = *v20;
          if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
          {
            v30 = v29;
            zoneIdentifier2 = [v22 zoneIdentifier];
            *buf = 138543874;
            selfCopy = selfCopy2;
            v74 = 2114;
            v75 = zoneIdentifier2;
            v76 = 2114;
            v77 = v28;
            _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve registry record from zone %{public}@, %{public}@", buf, 0x20u);
          }

LABEL_32:

          goto LABEL_33;
        }

        if ([firstObject2 count] >= 2)
        {
          _HKInitializeLogging();
          v32 = *v20;
          if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
          {
            v46 = v32;
            zoneIdentifier3 = [v22 zoneIdentifier];
            *buf = v56;
            selfCopy = selfCopy2;
            v74 = 2114;
            v75 = zoneIdentifier3;
            _os_log_error_impl(&dword_228986000, v46, OS_LOG_TYPE_ERROR, "%{public}@: Retrieved multiple registry records from zone %{public}@, This is unexpected.", buf, 0x16u);
          }
        }

        firstObject = [firstObject2 firstObject];
        v34 = firstObject;
        if (firstObject)
        {
          disabledOwnerIdentifiers = [firstObject disabledOwnerIdentifiers];
          v36 = [disabledOwnerIdentifiers intersectsSet:v62];

          if (v36)
          {
            _HKInitializeLogging();
            v50 = *v20;
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v51 = selfCopy2;
              selfCopy = selfCopy2;
              v74 = 2114;
              v75 = v34;
              v76 = 1024;
              LODWORD(v77) = 1;
              _os_log_impl(&dword_228986000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@: Registry record %{public}@ contains our info (ownerIdentifier:%d); sync is disabled.", buf, 0x1Cu);
              goto LABEL_40;
            }

LABEL_42:
            repository = v60;
            v51 = selfCopy2;
            goto LABEL_43;
          }
        }
      }

      if (![v22 zoneType])
      {
        v37 = objc_opt_class();
        v63 = 0;
        v38 = [v22 recordsForClass:v37 error:&v63];
        v39 = v63;
        if (v39)
        {
          v28 = v39;
          _HKInitializeLogging();
          v40 = *v20;
          if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
          {
            v44 = v40;
            zoneIdentifier4 = [v22 zoneIdentifier];
            *buf = 138543874;
            selfCopy = selfCopy2;
            v74 = 2114;
            v75 = zoneIdentifier4;
            v76 = 2114;
            v77 = v28;
            _os_log_error_impl(&dword_228986000, v44, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve master record from zone %{public}@, %{public}@", buf, 0x20u);
          }

          firstObject2 = v38;
        }

        else
        {
          if ([v38 count] >= 2)
          {
            _HKInitializeLogging();
            v41 = *v20;
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
            {
              v48 = v41;
              zoneIdentifier5 = [v22 zoneIdentifier];
              *buf = v56;
              selfCopy = selfCopy2;
              v74 = 2114;
              v75 = zoneIdentifier5;
              _os_log_error_impl(&dword_228986000, v48, OS_LOG_TYPE_ERROR, "%{public}@: Retrieved multiple master records from zone %{public}@, This is unexpected.", buf, 0x16u);
            }
          }

          firstObject2 = [v38 firstObject];
          disabledOwnerIdentifiers2 = [firstObject2 disabledOwnerIdentifiers];
          v43 = [disabledOwnerIdentifiers2 intersectsSet:v62];

          if (v43)
          {
            _HKInitializeLogging();
            v52 = *v20;
            if (!os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
            {
              v34 = firstObject2;
              firstObject2 = v38;
              goto LABEL_42;
            }

            v53 = v52;
            firstObject3 = [v38 firstObject];
            *buf = v56;
            v51 = selfCopy2;
            selfCopy = selfCopy2;
            v74 = 2114;
            v75 = firstObject3;
            _os_log_impl(&dword_228986000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@: Master record %{public}@ contains one of our owner identifier; sync is disabled.", buf, 0x16u);

            v34 = firstObject2;
            firstObject2 = v38;
LABEL_40:
            repository = v60;
LABEL_43:
            v12 = v58;
            v9 = v59;
            [(HDCloudSyncDetectSyncDisabledOperation *)v51 _disableSyncLocally];

            goto LABEL_44;
          }

          v28 = v38;
        }

        goto LABEL_32;
      }

LABEL_33:
      if (v18 == ++v21)
      {
        v18 = [allValues countByEnumeratingWithState:&v65 objects:v78 count:16];
        if (v18)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  [(HDCloudSyncOperation *)selfCopy2 finishWithSuccess:1 error:0];
  v9 = v59;
  repository = v60;
  v12 = v58;
LABEL_44:
  v13 = v57;
LABEL_45:

  v55 = *MEMORY[0x277D85DE8];
}

id __46__HDCloudSyncDetectSyncDisabledOperation_main__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) cachedOwnerIdentifierForContainer:a2];
  v3 = [v2 string];

  return v3;
}

- (void)_disableSyncLocally
{
  if (self)
  {
    v2 = [HDCloudSyncDisableSyncLocallyOperation alloc];
    configuration = [self configuration];
    cloudState = [self cloudState];
    v5 = [(HDCloudSyncOperation *)v2 initWithConfiguration:configuration cloudState:cloudState];

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__HDCloudSyncDetectSyncDisabledOperation__disableSyncLocally__block_invoke;
    v7[3] = &unk_278613088;
    v7[4] = self;
    [(HDCloudSyncOperation *)v5 setOnError:v7];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__HDCloudSyncDetectSyncDisabledOperation__disableSyncLocally__block_invoke_300;
    v6[3] = &unk_278613060;
    v6[4] = self;
    [(HDCloudSyncOperation *)v5 setOnSuccess:v6];
    [(HDCloudSyncOperation *)v5 start];
  }
}

void __61__HDCloudSyncDetectSyncDisabledOperation__disableSyncLocally__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to disable sync locally after detecting sync disablement for this owner identifier: %{public}@", &v10, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA9B8] hk_error:701 format:@"Cloud sync has been disabled for this device."];
  [v7 finishWithSuccess:0 error:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __61__HDCloudSyncDetectSyncDisabledOperation__disableSyncLocally__block_invoke_300(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Disabled sync locally after detecting sync disablement for this owner identifier.", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCA9B8] hk_error:701 format:@"Cloud sync has been disabled for this device."];
  [v4 finishWithSuccess:0 error:v5];

  v6 = *MEMORY[0x277D85DE8];
}

@end