@interface HDCloudSyncComputePushTargetsOperation
+ (id)finishedOperationTags;
- (void)main;
@end

@implementation HDCloudSyncComputePushTargetsOperation

+ (id)finishedOperationTags
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"compute-push-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)main
{
  v182 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D10BB0]);
  taskGroup = self->_taskGroup;
  self->_taskGroup = v3;

  [(HDSynchronousTaskGroup *)self->_taskGroup setDelegate:self];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v5 = [(HDCloudSyncOperation *)self configuration];
  v6 = [v5 repository];
  v7 = [v6 profile];
  v8 = [v7 legacyRepositoryProfile];
  v151 = 0;
  v9 = HDUpgradedToSyncIdentity(v8, &v151);
  v10 = v151;
  self->_hasUpgradedToSyncIdentity = v9;

  if (v10)
  {
    v11 = self->_taskGroup;
    goto LABEL_3;
  }

  if (self->_hasUpgradedToSyncIdentity)
  {
    v12 = [(HDCloudSyncOperation *)self profile];
    v13 = [v12 syncIdentityManager];
    v14 = [v13 currentSyncIdentity];
    v15 = [v14 identity];
    currentSyncIdentity = self->_currentSyncIdentity;
    self->_currentSyncIdentity = v15;
  }

  v150 = 0;
  v17 = [(HDCloudSyncOperation *)self configuration];
  v18 = [v17 repository];
  v19 = [v18 primaryCKContainer];

  v20 = [(HDCloudSyncOperation *)self configuration];
  v21 = [v20 repository];
  v22 = [v21 cachedOwnerIdentifierForContainer:v19];
  v23 = [v22 string];

  v24 = v19;
  v149 = v23;
  v25 = [(HDCloudSyncOperation *)self configuration];
  v26 = [v25 repository];
  v27 = [v26 profileIdentifier];
  v148 = v24;
  v28 = HDDatabaseForContainer(v24, v27);
  v144 = [v28 databaseScope];

  v29 = [(HDCloudSyncOperation *)self configuration];
  v30 = [v29 cachedCloudState];
  v166 = 0;
  v31 = [v30 zonesByIdentifierWithError:&v166];
  v32 = v166;

  if (!v31 && v32)
  {
    _HKInitializeLogging();
    v33 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v174 = self;
      v175 = 2114;
      v176 = v32;
      _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached zone identifiers while generating push targets, %{public}@", buf, 0x16u);
    }

    v34 = v32;
    v35 = v32;
    v36 = 0;
    v150 = v35;
LABEL_41:
    v85 = v149;
    goto LABEL_73;
  }

  if (!v31)
  {
    v35 = v32;
    _HKInitializeLogging();
    v86 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v174 = self;
      _os_log_debug_impl(&dword_228986000, v86, OS_LOG_TYPE_DEBUG, "%{public}@ No cached zones found while generating push targets.", buf, 0xCu);
    }

    v36 = MEMORY[0x277CBEBF8];
    goto LABEL_41;
  }

  v134 = v32;
  v146 = self;
  v147 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v133 = v31;
  obj = [v31 allValues];
  v37 = [obj countByEnumeratingWithState:&v162 objects:buf count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v163;
    while (2)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v163 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v162 + 1) + 8 * i);
        v42 = objc_opt_class();
        v161 = 0;
        v158[0] = MEMORY[0x277D85DD0];
        v158[1] = 3221225472;
        v158[2] = __89__HDCloudSyncComputePushTargetsOperation__pushTargetsForContainer_ownerIdentifier_error___block_invoke;
        v158[3] = &unk_278623B68;
        v158[4] = self;
        v158[5] = v41;
        v159 = v149;
        v160 = v147;
        v43 = [v41 recordsForClass:v42 epoch:0 error:&v161 enumerationHandler:v158];
        v44 = v161;
        if ((v43 & 1) == 0)
        {
          _HKInitializeLogging();
          v81 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v130 = v81;
            v131 = [v41 zoneIdentifier];
            *v167 = 138543874;
            v168 = self;
            v169 = 2114;
            v170 = v131;
            v171 = 2114;
            v172 = v44;
            _os_log_error_impl(&dword_228986000, v130, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve records for zone identifier: %{public}@, %{public}@", v167, 0x20u);
          }

          v82 = v44;
          v83 = v82;
          v31 = v133;
          if (v82)
          {
            v84 = v82;
            v150 = v83;
          }

          v36 = 0;
          v85 = v149;
          goto LABEL_72;
        }
      }

      v38 = [obj countByEnumeratingWithState:&v162 objects:buf count:16];
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  v45 = [(HDCloudSyncOperation *)self configuration];
  v46 = [v45 syncDate];
  v47 = [v147 hk_foldRightFrom:v46 with:&__block_literal_global_132];

  v48 = [(HDCloudSyncOperation *)self profile];
  v49 = [v148 containerIdentifier];
  obj = v47;
  v50 = [HDCloudSyncStore createOrUpdateShardStoresForProfile:v48 throughDate:v47 ownerIdentifier:v149 containerIdentifier:v49 syncIdentity:self->_currentSyncIdentity error:&v150];

  if (v50)
  {
    v132 = v50;
    v145 = [v50 hk_mapToDictionary:&__block_literal_global_314];
    v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v52 = v51;
    v136 = v147;
    v142 = [v136 countByEnumeratingWithState:&v154 objects:v167 count:16];
    if (v142)
    {
      v141 = *v155;
      v135 = v51;
LABEL_23:
      v53 = 0;
      while (1)
      {
        if (*v155 != v141)
        {
          objc_enumerationMutation(v136);
        }

        v54 = *(*(&v154 + 1) + 8 * v53);
        v55 = [v54 recordID];
        v56 = [v55 zoneID];
        v57 = [v148 containerIdentifier];
        v58 = [HDCloudSyncZoneIdentifier identifierForZone:v56 container:v57 scope:v144];

        v59 = [v54 storeIdentifier];
        v60 = [v145 objectForKeyedSubscript:v59];

        if (v60)
        {
          v61 = [HDCloudSyncTarget alloc];
          v62 = [(HDCloudSyncOperation *)self configuration];
          v63 = [v62 repository];
          v64 = [v63 primaryCKContainer];
          v65 = [(HDCloudSyncTarget *)v61 initWithPurpose:0 container:v64 zoneIdentifier:v58 storeRecord:v54 store:v60 options:0];

          [v52 addObject:v65];
        }

        else
        {
          v138 = [(HDCloudSyncOperation *)self configuration];
          v137 = [v138 repository];
          v66 = [v137 profile];
          v67 = [v66 legacyRepositoryProfile];
          v68 = [v54 storeIdentifier];
          v69 = [v54 ownerIdentifier];
          v70 = [v54 syncIdentity];
          v71 = v58;
          v72 = self;
          v73 = v70;
          v139 = v71;
          v74 = [v71 containerIdentifier];
          v153 = 0;
          v65 = [HDCloudSyncStore syncStoreForProfile:v67 storeIdentifier:v68 ownerIdentifier:v69 syncIdentity:v73 containerIdentifier:v74 error:&v153];
          v140 = v153;

          if (!v65)
          {
            v152 = 0;
            v88 = v54;
            v89 = v139;
            v90 = [v88 storeIdentifier];
            v91 = v72;
            v92 = [(HDCloudSyncOperation *)v72 configuration];
            v93 = [v92 repository];
            v94 = [v93 profile];
            v95 = [v94 legacyRepositoryProfile];
            v96 = [HDCloudSyncStoreEntity persistedStateForStoreUUID:v90 profile:v95 error:&v152];

            if (v96)
            {
              v97 = [v96 ownerIdentifier];
              v98 = [v88 ownerIdentifier];
              v99 = [v97 isEqualToString:v98];

              v100 = [v96 containerIdentifier];
              v101 = [v89 containerIdentifier];
              v102 = [v100 isEqualToString:v101];

              hasUpgradedToSyncIdentity = v91->_hasUpgradedToSyncIdentity;
              self = v91;
              v104 = v140;
              if (hasUpgradedToSyncIdentity)
              {
                v105 = [v96 syncIdentity];
                v106 = [v88 syncIdentity];
                v107 = [v105 isEqual:v106];

                self = v146;
              }

              else
              {
                v107 = 1;
              }

              if (v99 & v102) == 1 && (v107)
              {

                v113 = v152;
                _HKInitializeLogging();
                v114 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                {
                  v115 = v114;
                  v116 = [v88 storeIdentifier];
                  *v179 = 138543874;
                  *&v179[4] = self;
                  *&v179[12] = 2114;
                  *&v179[14] = v116;
                  *&v179[22] = 2114;
                  v180 = v140;
                  _os_log_impl(&dword_228986000, v115, OS_LOG_TYPE_DEFAULT, "%{public}@: Could not create local push store: %{public}@ error: %{public}@", v179, 0x20u);
                }

                v112 = v140;
                v31 = v133;
                if (v112)
                {
                  v112 = v112;
                  v150 = v112;
                }

                goto LABEL_60;
              }

              v117 = @"no";
              if (v99)
              {
                v118 = @"YES";
              }

              else
              {
                v118 = @"no";
              }

              if (v102)
              {
                v119 = @"YES";
              }

              else
              {
                v119 = @"no";
              }

              if (v107)
              {
                v117 = @"YES";
              }

              v120 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid push store found: sameOwnerID=%@, sameContainerID=%@, sameSyncIdentity=%@", v118, v119, v117];
              [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
              v121 = [(HDCloudSyncOperation *)self profile];
              v122 = [v121 cloudSyncManager];
              v123 = [v122 ownerIdentifierManager];
              *v179 = MEMORY[0x277D85DD0];
              *&v179[8] = 3221225472;
              *&v179[16] = __103__HDCloudSyncComputePushTargetsOperation__hasStateMismatchForStoreForStoreRecord_zoneIdentifier_error___block_invoke;
              v180 = &unk_2786130B0;
              v181 = self;
              [v123 rollOwnerDifferentiatorForReason:v120 completion:v179];

              v113 = v152;
              v36 = MEMORY[0x277CBEBF8];
              v31 = v133;
            }

            else
            {

              v108 = v152;
              _HKInitializeLogging();
              v109 = *MEMORY[0x277CCC328];
              self = v91;
              v104 = v140;
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
              {
                v110 = v109;
                v111 = [v88 storeIdentifier];
                *v179 = 138543874;
                *&v179[4] = self;
                *&v179[12] = 2114;
                *&v179[14] = v111;
                *&v179[22] = 2114;
                v180 = v108;
                _os_log_impl(&dword_228986000, v110, OS_LOG_TYPE_DEFAULT, "%{public}@: Could not validate state mismatch error when looking up local push store: %{public}@ error: %{public}@", v179, 0x20u);
              }

              v112 = v108;
              v113 = v112;
              if (v112)
              {
                v112 = v112;
                v150 = v113;
              }

              v31 = v133;
LABEL_60:

              v36 = 0;
            }

            v80 = v135;
            goto LABEL_71;
          }

          v75 = [HDCloudSyncTarget alloc];
          self = v72;
          v76 = [(HDCloudSyncOperation *)v72 configuration];
          v77 = [v76 repository];
          v78 = [v77 primaryCKContainer];
          v58 = v139;
          v79 = -[HDCloudSyncTarget initWithPurpose:container:zoneIdentifier:storeRecord:store:options:](v75, "initWithPurpose:container:zoneIdentifier:storeRecord:store:options:", 0, v78, v139, v54, v65, 4 * ([v145 count] != 0));

          [v135 addObject:v79];
          v52 = v135;
          v60 = v140;
        }

        if (v142 == ++v53)
        {
          v142 = [v136 countByEnumeratingWithState:&v154 objects:v167 count:16];
          if (v142)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }

    v36 = v52;
    v80 = v52;
    v31 = v133;
LABEL_71:

    v85 = v149;
    v83 = v132;
  }

  else
  {
    _HKInitializeLogging();
    v87 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *v167 = 138543362;
      v168 = self;
      _os_log_error_impl(&dword_228986000, v87, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create or update push shards.", v167, 0xCu);
    }

    v83 = 0;
    v36 = 0;
    v85 = v149;
    v31 = v133;
  }

LABEL_72:

  v35 = v134;
LABEL_73:

  if (v36)
  {
    v124 = [(HDCloudSyncOperation *)self configuration];
    v125 = [v124 computedState];
    [v125 addTargets:v36];

    _HKInitializeLogging();
    v126 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v127 = v126;
      v128 = [v36 count];
      *buf = 138543874;
      v174 = self;
      v175 = 2048;
      v176 = v128;
      v177 = 2114;
      v178 = v85;
      _os_log_impl(&dword_228986000, v127, OS_LOG_TYPE_DEFAULT, "%{public}@: Found %ld push targets for owner %{public}@", buf, 0x20u);
    }
  }

  v10 = v150;
  v11 = self->_taskGroup;
  if (v36)
  {
    [(HDSynchronousTaskGroup *)v11 finishTask];
    goto LABEL_78;
  }

LABEL_3:
  [(HDSynchronousTaskGroup *)v11 failTaskWithError:v10];
LABEL_78:

  v129 = *MEMORY[0x277D85DE8];
}

uint64_t __103__HDCloudSyncComputePushTargetsOperation__hasStateMismatchForStoreForStoreRecord_zoneIdentifier_error___block_invoke(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 32) + 104);
  if (a2)
  {
    return [v2 finishTask];
  }

  else
  {
    return [v2 failTaskWithError:?];
  }
}

uint64_t __89__HDCloudSyncComputePushTargetsOperation__pushTargetsForContainer_ownerIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) zoneIdentifier];
  v6 = *(a1 + 48);
  v7 = v3;
  v8 = v5;
  v9 = v6;
  v10 = v9;
  if (!v4)
  {
    goto LABEL_11;
  }

  v11 = v7;
  v12 = v9;
  v13 = v8;
  v14 = [v8 containerIdentifier];
  v33 = v4;
  v15 = [v4 configuration];
  v16 = [v15 repository];
  v17 = [v16 primaryCKContainer];
  v18 = [v17 containerIdentifier];
  v19 = [v14 isEqualToString:v18];

  if (v19)
  {
    v7 = v11;
    v20 = [v11 ownerIdentifier];
    v10 = v12;
    v21 = [v20 isEqualToString:v12];

    v8 = v13;
    if (v21)
    {
      if ((v33[120] & 1) == 0)
      {
        _HKInitializeLogging();
        v24 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v35 = v33;
          v36 = 2114;
          v37 = v13;
          v26 = "%{public}@: %{public}@: Valid push candidate. Upgrade to Sync Identity unavailable.";
          goto LABEL_15;
        }

LABEL_16:

        [*(a1 + 56) addObject:v11];
        goto LABEL_12;
      }

      v22 = [v11 syncIdentity];
      v23 = [v22 isEqual:*(v33 + 14)];

      _HKInitializeLogging();
      v24 = *MEMORY[0x277CCC328];
      v25 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
      if (v23)
      {
        if (v25)
        {
          *buf = 138543618;
          v35 = v33;
          v36 = 2114;
          v37 = v13;
          v26 = "%{public}@: %{public}@: Valid push candidate.";
LABEL_15:
          _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);
          goto LABEL_16;
        }

        goto LABEL_16;
      }

      if (v25)
      {
        v28 = v24;
        v29 = [v11 syncIdentity];
        *buf = 138543874;
        v35 = v33;
        v36 = 2114;
        v37 = v13;
        v38 = 2114;
        v39 = v29;
        v30 = "%{public}@: %{public}@: Not a push candidate, wrong sync identity '%{public}@'";
        goto LABEL_10;
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v27 = *MEMORY[0x277CCC328];
    v10 = v12;
    v7 = v11;
    v8 = v13;
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
      v29 = [v13 containerIdentifier];
      *buf = 138543874;
      v35 = v33;
      v36 = 2114;
      v37 = v13;
      v38 = 2114;
      v39 = v29;
      v30 = "%{public}@: %{public}@: Not a push candidate, wrong container '%{public}@'";
LABEL_10:
      _os_log_impl(&dword_228986000, v28, OS_LOG_TYPE_DEFAULT, v30, buf, 0x20u);
    }
  }

LABEL_11:

LABEL_12:
  v31 = *MEMORY[0x277D85DE8];
  return 1;
}

id __89__HDCloudSyncComputePushTargetsOperation__pushTargetsForContainer_ownerIdentifier_error___block_invoke_308(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 shardPredicate];
  v6 = [v5 endDate];

  if (v6)
  {
    v7 = [v5 endDate];
    if ([v4 hk_isBeforeDate:v7])
    {
      v8 = [v5 endDate];
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

void __89__HDCloudSyncComputePushTargetsOperation__pushTargetsForContainer_ownerIdentifier_error___block_invoke_311(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 storeIdentifier];
  (a3)[2](v5, v7, v6);
}

@end