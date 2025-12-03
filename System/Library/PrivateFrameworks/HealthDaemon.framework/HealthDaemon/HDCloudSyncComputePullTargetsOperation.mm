@interface HDCloudSyncComputePullTargetsOperation
+ (id)finishedOperationTags;
+ (id)operationTagDependencies;
- (BOOL)performWithError:(id *)error;
@end

@implementation HDCloudSyncComputePullTargetsOperation

+ (id)operationTagDependencies
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"compute-push-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)finishedOperationTags
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"compute-pull-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)performWithError:(id *)error
{
  selfCopy = self;
  v126 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  profile = [repository profile];
  cloudSyncManager = [profile cloudSyncManager];
  isChild = [cloudSyncManager isChild];

  if ((isChild & 1) == 0)
  {
    configuration2 = [(HDCloudSyncOperation *)selfCopy configuration];
    repository2 = [configuration2 repository];
    primaryCKContainer = [repository2 primaryCKContainer];

    configuration3 = [(HDCloudSyncOperation *)selfCopy configuration];
    repository3 = [configuration3 repository];
    v16 = [repository3 cachedOwnerIdentifierForContainer:primaryCKContainer];
    string = [v16 string];

    if (!selfCopy)
    {
      goto LABEL_61;
    }

    configuration4 = [(HDCloudSyncOperation *)selfCopy configuration];
    computedState = [configuration4 computedState];
    pushTargets = [computedState pushTargets];
    v81 = [pushTargets hk_mapToSet:&__block_literal_global_162];

    v21 = selfCopy;
    configuration5 = [(HDCloudSyncOperation *)selfCopy configuration];
    cachedCloudState = [configuration5 cachedCloudState];
    v112 = 0;
    v24 = [cachedCloudState zonesByIdentifierWithError:&v112];
    v25 = v112;

    if (v24 || !v25)
    {
      if (v24)
      {
        v76 = v25;
        v88 = selfCopy;
        v78 = string;
        v79 = primaryCKContainer;
        v80 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v77 = v24;
        obj = [v24 allValues];
        v28 = [obj countByEnumeratingWithState:&v108 objects:v123 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v109;
          while (2)
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v109 != v30)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v108 + 1) + 8 * i);
              v33 = objc_opt_class();
              v107 = 0;
              v103[0] = MEMORY[0x277D85DD0];
              v103[1] = 3221225472;
              v103[2] = __64__HDCloudSyncComputePullTargetsOperation__pullTargetsWithError___block_invoke_301;
              v103[3] = &unk_27861D8D0;
              v104 = v81;
              v105 = v80;
              v106 = v32;
              v34 = [v32 recordsForClass:v33 epoch:0 error:&v107 enumerationHandler:v103];
              v35 = v107;
              if ((v34 & 1) == 0)
              {
                _HKInitializeLogging();
                v59 = *MEMORY[0x277CCC328];
                v21 = selfCopy;
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                {
                  v74 = v59;
                  zoneIdentifier = [v32 zoneIdentifier];
                  *buf = 138543874;
                  v114 = selfCopy;
                  v115 = 2114;
                  v116 = zoneIdentifier;
                  v117 = 2114;
                  v118 = v35;
                  _os_log_error_impl(&dword_228986000, v74, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get store records for %{public}@, %{public}@", buf, 0x20u);
                }

                v25 = v76;
                v24 = v77;
                if (v35)
                {
                  if (error)
                  {
                    v60 = v35;
                    *error = v35;
                  }

                  else
                  {
                    _HKLogDroppedError();
                  }
                }

                selfCopy = 0;
                goto LABEL_50;
              }
            }

            v29 = [obj countByEnumeratingWithState:&v108 objects:v123 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        selfCopy = objc_alloc_init(MEMORY[0x277CBEB18]);
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        obj = v80;
        v83 = [obj countByEnumeratingWithState:&v99 objects:v122 count:16];
        if (v83)
        {
          v87 = selfCopy;
          v82 = *v100;
          v36 = v88;
          do
          {
            v37 = 0;
            do
            {
              if (*v100 != v82)
              {
                objc_enumerationMutation(obj);
              }

              v85 = v37;
              v38 = *(*(&v99 + 1) + 8 * v37);
              v39 = [obj objectForKeyedSubscript:v38];
              v95 = 0u;
              v96 = 0u;
              v97 = 0u;
              v98 = 0u;
              v86 = v39;
              v91 = [v39 countByEnumeratingWithState:&v95 objects:v121 count:16];
              if (v91)
              {
                v89 = v38;
                v90 = *v96;
                do
                {
                  for (j = 0; j != v91; ++j)
                  {
                    if (*v96 != v90)
                    {
                      objc_enumerationMutation(v86);
                    }

                    v41 = *(*(&v95 + 1) + 8 * j);
                    configuration6 = [(HDCloudSyncOperation *)v36 configuration];
                    repository4 = [configuration6 repository];
                    profile2 = [repository4 profile];
                    legacyRepositoryProfile = [profile2 legacyRepositoryProfile];
                    storeIdentifier = [v41 storeIdentifier];
                    ownerIdentifier = [v41 ownerIdentifier];
                    syncIdentity = [v41 syncIdentity];
                    containerIdentifier = [v38 containerIdentifier];
                    v94 = 0;
                    v49 = [HDCloudSyncStore syncStoreForProfile:legacyRepositoryProfile storeIdentifier:storeIdentifier ownerIdentifier:ownerIdentifier syncIdentity:syncIdentity containerIdentifier:containerIdentifier error:&v94];
                    v93 = v94;

                    v50 = v49;
                    if (v49)
                    {
                      v51 = [HDCloudSyncTarget alloc];
                      configuration7 = [(HDCloudSyncOperation *)v88 configuration];
                      repository5 = [configuration7 repository];
                      containerIdentifier2 = [v89 containerIdentifier];
                      v55 = [repository5 containerForContainerIdentifier:containerIdentifier2];
                      v56 = [(HDCloudSyncTarget *)v51 initWithPurpose:1 container:v55 zoneIdentifier:v89 storeRecord:v41 store:v50 options:0];

                      [(HDCloudSyncComputePullTargetsOperation *)v87 addObject:v56];
                      v36 = v88;
                      v38 = v89;
                      v57 = v93;
                    }

                    else
                    {
                      _HKInitializeLogging();
                      v58 = *MEMORY[0x277CCC328];
                      v36 = v88;
                      v38 = v89;
                      v57 = v93;
                      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138544130;
                        v114 = v88;
                        v115 = 2114;
                        v116 = v41;
                        v117 = 2114;
                        v118 = v89;
                        v119 = 2114;
                        v120 = v93;
                        _os_log_error_impl(&dword_228986000, v58, OS_LOG_TYPE_ERROR, "%{public}@: Failed to lookup store for store record: %{public}@ zone: %{public}@ error: %{public}@", buf, 0x2Au);
                      }
                    }
                  }

                  v91 = [v86 countByEnumeratingWithState:&v95 objects:v121 count:16];
                }

                while (v91);
              }

              v37 = v85 + 1;
            }

            while (v85 + 1 != v83);
            v83 = [obj countByEnumeratingWithState:&v99 objects:v122 count:16];
          }

          while (v83);
          v21 = v36;
          string = v78;
          primaryCKContainer = v79;
          v25 = v76;
          v24 = v77;
          selfCopy = v87;
        }

        else
        {
          v21 = v88;
          v25 = v76;
          v24 = v77;
        }

LABEL_50:
      }

      else
      {
        _HKInitializeLogging();
        v61 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v114 = selfCopy;
          _os_log_debug_impl(&dword_228986000, v61, OS_LOG_TYPE_DEBUG, "%{public}@ No cached zones found while generating pull targets.", buf, 0xCu);
        }

        selfCopy = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v114 = selfCopy;
        v115 = 2114;
        v116 = v25;
        _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached zone identifiers while generating pull targets, %{public}@", buf, 0x16u);
      }

      if (error)
      {
        v27 = v25;
        selfCopy = 0;
        *error = v25;
      }

      else
      {
        _HKLogDroppedError();
        selfCopy = 0;
      }
    }

    if (!selfCopy)
    {
LABEL_61:
      v10 = 0;
LABEL_65:

      goto LABEL_66;
    }

    configuration8 = [(HDCloudSyncOperation *)v21 configuration];
    computedState2 = [configuration8 computedState];
    [computedState2 addTargets:selfCopy];

    _HKInitializeLogging();
    v64 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v65 = v64;
      v66 = [(HDCloudSyncComputePullTargetsOperation *)selfCopy count];
      *v123 = 138543874;
      *&v123[4] = v21;
      *&v123[12] = 2048;
      *&v123[14] = v66;
      *&v123[22] = 2114;
      v124 = string;
      _os_log_impl(&dword_228986000, v65, OS_LOG_TYPE_DEFAULT, "%{public}@: Found %ld pull targets for owner %{public}@", v123, 0x20u);
    }

    if (!+[HDCloudSyncTapToRadar isTapToRadarAllowed])
    {
LABEL_64:
      v10 = 1;
      goto LABEL_65;
    }

    v67 = [(HDCloudSyncComputePullTargetsOperation *)selfCopy count];
    if (v67 <= *MEMORY[0x277CCE480])
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults removeObjectForKey:*MEMORY[0x277CCE488]];
      goto LABEL_63;
    }

    standardUserDefaults = [MEMORY[0x277CCACA8] stringWithFormat:@"Found %lu pull stores for the current device.\nPlease answer the following questions to the best of your knowledge.\nIs this a test device? If yes, is it associated with a test iCloud account?\nHow many devices are signed into this account?\nHave you recently erase installed any devices associated with this device's iCloud account?", -[HDCloudSyncComputePullTargetsOperation count](selfCopy, "count")];
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if (([standardUserDefaults2 BOOLForKey:*MEMORY[0x277CCE490]] & 1) == 0)
    {
      standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v71 = [standardUserDefaults3 BOOLForKey:*MEMORY[0x277CCE488]];

      if (v71)
      {
LABEL_60:

LABEL_63:
        goto LABEL_64;
      }

      *v123 = MEMORY[0x277D85DD0];
      *&v123[8] = 3221225472;
      *&v123[16] = __76__HDCloudSyncComputePullTargetsOperation__requestTapToRadarWithDescription___block_invoke;
      v124 = &unk_278613968;
      v125 = standardUserDefaults;
      [HDCloudSyncTapToRadar showTapToRadarRequestWithTitle:@"Health Cloud Sync Encountered too many pull stores" message:@"Please file a radar." proceed:v123 disable:&__block_literal_global_317_4 completion:&__block_literal_global_320];
      standardUserDefaults2 = v125;
    }

    goto LABEL_60;
  }

  v10 = 1;
LABEL_66:
  v72 = *MEMORY[0x277D85DE8];
  return v10;
}

id __64__HDCloudSyncComputePullTargetsOperation__pullTargetsWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 storeRecord];
  v3 = [v2 storeIdentifier];

  return v3;
}

uint64_t __64__HDCloudSyncComputePullTargetsOperation__pullTargetsWithError___block_invoke_301(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 storeIdentifier];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) zoneIdentifier];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      [v8 addObject:v3];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v3, 0}];
      v10 = *(a1 + 40);
      v11 = [*(a1 + 48) zoneIdentifier];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }
  }

  return 1;
}

void __76__HDCloudSyncComputePullTargetsOperation__requestTapToRadarWithDescription___block_invoke(uint64_t a1)
{
  [HDCloudSyncTapToRadar openTapToRadarWithTitle:@"[Cloud Sync] Changes Sync: Encountered too many pull stores" description:*(a1 + 32)];
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v1 setBool:1 forKey:*MEMORY[0x277CCE488]];
}

void __76__HDCloudSyncComputePullTargetsOperation__requestTapToRadarWithDescription___block_invoke_2()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v0 setBool:1 forKey:*MEMORY[0x277CCE490]];
}

@end