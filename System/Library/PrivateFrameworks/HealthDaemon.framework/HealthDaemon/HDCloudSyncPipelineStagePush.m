@interface HDCloudSyncPipelineStagePush
+ (id)operationTagDependencies;
- (HDCloudSyncCompoundOperation)_computePushAndCleanupOperationForPushStores:(uint64_t)a3 error:;
- (HDCloudSyncPipelineStagePush)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (void)_analytics_operationFinishedWithSuccess:(void *)a1;
- (void)main;
@end

@implementation HDCloudSyncPipelineStagePush

+ (id)operationTagDependencies
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"compute-push-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (HDCloudSyncPipelineStagePush)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v8.receiver = self;
  v8.super_class = HDCloudSyncPipelineStagePush;
  v4 = [(HDCloudSyncPipelineStage *)&v8 initWithConfiguration:a3 cloudState:a4];
  v5 = v4;
  if (v4)
  {
    [(HDCloudSyncPipelineStage *)v4 setExpectedSendSize:2];
    v6 = objc_alloc_init(HDHDCloudSyncPipelineStagePushFullSyncMetricUserDefaultsStorage);
    [(HDCloudSyncPipelineStagePush *)v5 setFullSyncMetricsStorage:v6];
  }

  return v5;
}

- (void)main
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 context];
  v5 = [v4 options];

  if ((v5 & 4) == 0)
  {
    v6 = [(HDCloudSyncOperation *)self configuration];
    v7 = [v6 repository];
    v8 = [v7 profile];
    v9 = [v8 legacyRepositoryProfile];
    v78 = 0;
    v10 = HDUpgradedToSyncIdentity(v9, &v78);
    v11 = v78;

    if (v11)
    {
      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v11];
LABEL_35:

      goto LABEL_36;
    }

    if (v10)
    {
      v13 = [(HDCloudSyncOperation *)self profile];
      v14 = [v13 syncIdentityManager];
      v15 = [v14 currentSyncIdentity];
      v16 = [v15 identity];
      currentSyncIdentity = self->_currentSyncIdentity;
      self->_currentSyncIdentity = v16;
    }

    else if (!self)
    {
      v42 = 0;
LABEL_31:
      v77 = 0;
      v61 = [(HDCloudSyncPipelineStagePush *)self _computePushAndCleanupOperationForPushStores:v42 error:&v77];
      v11 = v77;
      if (v61)
      {
        v62 = [(HDCloudSyncOperation *)self configuration];
        v63 = [v62 repository];
        v64 = [v63 profile];
        v65 = [v64 legacyRepositoryProfile];
        HDUpdateOldestSampleStartDateForProfile(v65);

        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __36__HDCloudSyncPipelineStagePush_main__block_invoke;
        v74[3] = &unk_278614BA8;
        v75 = v42;
        v76 = self;
        [v61 setOnSuccess:v74];
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __36__HDCloudSyncPipelineStagePush_main__block_invoke_304;
        v73[3] = &unk_278613088;
        v73[4] = self;
        [v61 setOnError:v73];
        v66 = [v61 progress];
        v67 = [v66 totalUnitCount];

        v68 = [(HDCloudSyncOperation *)self progress];
        [v68 setTotalUnitCount:{objc_msgSend(v68, "totalUnitCount") + v67}];

        v69 = [(HDCloudSyncOperation *)self progress];
        v70 = [v61 progress];
        [v69 addChild:v70 withPendingUnitCount:v67];

        [v61 start];
      }

      else
      {
        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v11];
      }

      goto LABEL_35;
    }

    v18 = [(HDCloudSyncOperation *)self configuration];
    v19 = [v18 computedState];
    v20 = [v19 pushTargets];
    v21 = [v20 hk_map:&__block_literal_global_354];

    v22 = v21;
    v23 = [(HDCloudSyncOperation *)self configuration];
    v24 = [v23 repository];
    v25 = [v24 primaryCKContainer];

    v26 = [(HDCloudSyncOperation *)self configuration];
    v27 = [v26 repository];
    v28 = [v27 cachedOwnerIdentifierForContainer:v25];
    v29 = [v28 string];

    v30 = [(HDCloudSyncOperation *)self profile];
    v31 = [(HDCloudSyncOperation *)self configuration];
    v32 = [v31 syncDate];
    v33 = [v25 containerIdentifier];
    v34 = self->_currentSyncIdentity;
    v80 = 0;
    v35 = [HDCloudSyncStore createOrUpdateShardStoresForProfile:v30 throughDate:v32 ownerIdentifier:v29 containerIdentifier:v33 syncIdentity:v34 error:&v80];
    v36 = v80;

    if (v35)
    {
      if ([v35 count])
      {
        v37 = [v22 hk_mapToSet:&__block_literal_global_352];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __66__HDCloudSyncPipelineStagePush__pushStoresByAddingShardsToStores___block_invoke_2;
        v83 = &unk_278614CA8;
        v84 = v37;
        v38 = v37;
        v39 = [v35 hk_filter:buf];
        v40 = [v22 arrayByAddingObjectsFromArray:v39];

LABEL_16:
        if ([v40 count])
        {
          v42 = v40;
        }

        else
        {
          v72 = v22;
          v43 = [(HDCloudSyncOperation *)self configuration];
          v44 = [(HDCloudSyncOperation *)self configuration];
          v45 = [v44 repository];
          v46 = [v45 primaryCKContainer];
          v80 = 0;
          v47 = [v43 pushStoresForContainer:v46 error:&v80];
          v48 = v80;
          v49 = [v47 firstObject];
          v50 = [v49 storeIdentifier];

          if (v50)
          {
            v51 = v50;
          }

          else
          {
            if (v48)
            {
              _HKInitializeLogging();
              v52 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v48;
                _os_log_error_impl(&dword_228986000, v52, OS_LOG_TYPE_ERROR, "Failed to compute sync store identifier: %{public}@", buf, 0xCu);
              }
            }

            v51 = [MEMORY[0x277CCAD78] UUID];
          }

          v53 = v51;

          v54 = [(HDCloudSyncOperation *)self configuration];
          v55 = [(HDCloudSyncOperation *)self configuration];
          v56 = [v55 repository];
          v57 = [v56 primaryCKContainer];
          v79 = 0;
          v58 = [v54 pushStoreWithIdentifier:v53 container:v57 error:&v79];
          v59 = v79;

          if (v58)
          {
            v81 = v58;
            v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
            v22 = v72;
          }

          else
          {
            _HKInitializeLogging();
            v60 = *MEMORY[0x277CCC328];
            v22 = v72;
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *&buf[4] = v53;
              *&buf[12] = 2114;
              *&buf[14] = v59;
              _os_log_error_impl(&dword_228986000, v60, OS_LOG_TYPE_ERROR, "Failed to create sync store with ID: %{public}@ error:%{public}@", buf, 0x16u);
            }

            v42 = MEMORY[0x277CBEBF8];
          }
        }

        goto LABEL_31;
      }
    }

    else
    {
      _HKInitializeLogging();
      v41 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v36;
        _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "Failed to lookup look up shards during push store computation: %{public}@", buf, 0xCu);
      }
    }

    v40 = v22;
    goto LABEL_16;
  }

  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = self;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping due to pipeline options.", buf, 0xCu);
  }

  [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
LABEL_36:
  v71 = *MEMORY[0x277D85DE8];
}

- (HDCloudSyncCompoundOperation)_computePushAndCleanupOperationForPushStores:(uint64_t)a3 error:
{
  v245 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v205 = a1;
  v197 = v4;
  if (a1)
  {
    v5 = [v4 hk_firstObjectPassingTest:&__block_literal_global_333];
    v6 = [a1 configuration];
    v7 = [v6 computedState];
    v8 = [v7 pushTargets];
    v214[0] = MEMORY[0x277D85DD0];
    v214[1] = 3221225472;
    v214[2] = __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_2;
    v214[3] = &unk_278614BF0;
    v9 = v5;
    v215 = v9;
    v196 = [v8 hk_firstObjectPassingTest:v214];

    v199 = v9;
    v200 = v197;
    v10 = [v205 configuration];
    v11 = [v10 computedState];
    v12 = [v11 pushTargets];
    v13 = [v12 count] == 0;

    if (v13)
    {
      _HKInitializeLogging();
      v66 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *v241 = 138543362;
        *&v241[4] = v205;
        _os_log_impl(&dword_228986000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@: Full sync required; no push targets found", v241, 0xCu);
      }

      v67 = 0;
      v198 = 1;
      v68 = 2;
    }

    else
    {
      v14 = [v205 configuration];
      v15 = [v14 context];
      v16 = ([v15 options] & 8) == 0;

      if (v16)
      {
        v224 = 0u;
        v225 = 0u;
        v222 = 0u;
        v223 = 0u;
        v17 = v200;
        v18 = [v17 countByEnumeratingWithState:&v222 objects:v241 count:16];
        if (v18)
        {
          v19 = *v223;
          v20 = MEMORY[0x277CCE2B8];
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v223 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v222 + 1) + 8 * i);
              v23 = [v22 persistedStateWithError:a3];
              if (!v23)
              {
                v193 = 0;
                v67 = 0;
                v198 = 0;
LABEL_42:

                goto LABEL_65;
              }

              v24 = [v22 storeIdentifier];
              v25 = [v199 storeIdentifier];
              v26 = [v24 isEqual:v25];

              if ((v26 & 1) == 0)
              {
                v27 = [v23 rebaseDeadline];
                v28 = v27 == 0;

                if (!v28)
                {
                  v29 = [v23 rebaseDeadline];
                  v30 = [v205 configuration];
                  v31 = [v30 syncDate];
                  [v29 timeIntervalSinceDate:v31];
                  v33 = v32;

                  if (v33 < *v20)
                  {
                    v69 = [v22 shardPredicate];
                    v67 = [v69 description];
                    v70 = v67;

                    v198 = 1;
                    v193 = 4;
                    goto LABEL_42;
                  }
                }
              }
            }

            v18 = [v17 countByEnumeratingWithState:&v222 objects:v241 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v220 = 0u;
        v221 = 0u;
        v218 = 0u;
        v219 = 0u;
        obj = v17;
        v34 = [obj countByEnumeratingWithState:&v218 objects:&v237 count:16];
        if (v34)
        {
          v35 = *v219;
          while (2)
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v219 != v35)
              {
                objc_enumerationMutation(obj);
              }

              v37 = *(*(&v218 + 1) + 8 * j);
              v38 = [v37 persistedStateWithError:a3];
              if (!v38)
              {
                v193 = 0;
                v67 = 0;
                v198 = 0;
LABEL_53:

                goto LABEL_65;
              }

              v39 = [v37 storeIdentifier];
              v40 = [v199 storeIdentifier];
              v41 = [v39 isEqual:v40];

              if ((v41 & 1) == 0)
              {
                v42 = [v38 lastSyncDate];
                if (!v42)
                {
                  goto LABEL_44;
                }

                v43 = [v38 lastSyncDate];
                v44 = [v205 configuration];
                v45 = [v44 syncDate];
                [v43 timeIntervalSinceDate:v45];
                v47 = v46 < -1814400.0;

                if (v47)
                {
LABEL_44:
                  _HKInitializeLogging();
                  v71 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                  {
                    v72 = v71;
                    v73 = [v38 lastSyncDate];
                    *v231 = 138544130;
                    *&v231[4] = v205;
                    *&v231[12] = 2114;
                    *&v231[14] = v37;
                    *&v231[22] = 2114;
                    v232 = v73;
                    LOWORD(v233) = 2114;
                    *(&v233 + 2) = v37;
                    _os_log_impl(&dword_228986000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@: Full sync required; %{public}@ last sync date (%{public}@) is too old for %{public}@", v231, 0x2Au);
                  }

                  v74 = [v37 shardPredicate];
                  v67 = [v74 description];
                  v75 = v67;

                  v198 = 1;
                  v193 = 5;
                  goto LABEL_53;
                }

                if ([v38 pendingFullSync])
                {
                  _HKInitializeLogging();
                  v77 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                  {
                    *v231 = 138543362;
                    *&v231[4] = v205;
                    _os_log_impl(&dword_228986000, v77, OS_LOG_TYPE_DEFAULT, "%{public}@: Full sync required; continuing interrupted full sync", v231, 0xCu);
                  }

                  v193 = 0;
                  v67 = 0;
                  v198 = 1;
                  goto LABEL_53;
                }
              }
            }

            v34 = [obj countByEnumeratingWithState:&v218 objects:&v237 count:16];
            if (v34)
            {
              continue;
            }

            break;
          }
        }

        if (!v199)
        {
          _HKInitializeLogging();
          v76 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            *v231 = 138543362;
            *&v231[4] = v205;
            _os_log_impl(&dword_228986000, v76, OS_LOG_TYPE_DEFAULT, "%{public}@: Full sync required; no staging store found", v231, 0xCu);
          }

          v67 = 0;
          v193 = 1;
          v198 = 1;
LABEL_65:

          v82 = v67;
          v83 = v198;
          if (!v198)
          {
            v204 = 0;
LABEL_120:

            goto LABEL_121;
          }

          v192 = v82;
          if (v198 == 1)
          {
            v84 = v200;
            v85 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
            v86 = [v205 configuration];
            v87 = [v86 accessibilityAssertion];
            v88 = [v85 contextWithAccessibilityAssertion:v87];

            v89 = [v205 configuration];
            v90 = [v89 repository];
            v91 = [v90 profile];
            v92 = [v91 database];
            *v241 = MEMORY[0x277D85DD0];
            *&v241[8] = 3221225472;
            *&v241[16] = __82__HDCloudSyncPipelineStagePush__performPrerequisitesForFullSync_withReason_error___block_invoke;
            v242 = &unk_278614698;
            v244 = v193;
            *&v243 = v205;
            v93 = v84;
            *(&v243 + 1) = v93;
            v94 = [v92 performTransactionWithContext:v88 error:a3 block:v241 inaccessibilityHandler:0];

            v83 = 1;
            if (!v94)
            {
              v204 = 0;
LABEL_119:
              v82 = v192;
              goto LABEL_120;
            }
          }

          v95 = v83 == 1;
          v213[0] = MEMORY[0x277D85DD0];
          v213[1] = 3221225472;
          v213[2] = __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_3;
          v213[3] = &unk_278614CA8;
          v213[4] = v205;
          v191 = [v200 hk_filter:v213];
          if (v95)
          {
            v96 = v191;
          }

          else
          {
            v226 = v199;
            v96 = [MEMORY[0x277CBEA60] arrayWithObjects:&v226 count:1];
          }

          obja = v96;
          v97 = [HDCloudSyncCompoundOperation alloc];
          v98 = [v205 configuration];
          v204 = [(HDCloudSyncCompoundOperation *)v97 initWithConfiguration:v98 cloudState:0 name:@"Push Stores" continueOnSubOperationError:1];

          v99 = [v205 configuration];
          v100 = [v99 context];
          v101 = ([v100 options] & 0x80) == 0;

          if (v101)
          {
            [(HDCloudSyncCompoundOperation *)v204 addOperationOfClass:objc_opt_class() transitionHandler:0];
          }

          v201 = [obja sortedArrayUsingComparator:&__block_literal_global_11];
          v239 = 0u;
          v240 = 0u;
          v237 = 0u;
          v238 = 0u;
          v102 = [v201 countByEnumeratingWithState:&v237 objects:v241 count:16];
          if (v102)
          {
            v103 = *v238;
            do
            {
              for (k = 0; k != v102; ++k)
              {
                if (*v238 != v103)
                {
                  objc_enumerationMutation(v201);
                }

                v105 = *(*(&v237 + 1) + 8 * k);
                v106 = [HDCloudSyncCompoundOperation alloc];
                v107 = [v205 configuration];
                v108 = [(HDCloudSyncCompoundOperation *)v106 initWithConfiguration:v107 cloudState:0 name:@"Prepare & Push" continueOnSubOperationError:0];

                v109 = [HDCloudSyncPreparePushZoneForStoreOperation alloc];
                v110 = [v205 configuration];
                v111 = [(HDCloudSyncPreparePushZoneForStoreOperation *)v109 initWithConfiguration:v110 cloudState:0 store:v105];

                [(HDCloudSyncCompoundOperation *)v108 addOperation:v111 transitionHandler:0];
                v112 = [HDCloudSyncPushStoreOperation alloc];
                v113 = [v205 configuration];
                v114 = [v205 cloudState];
                v115 = [(HDCloudSyncPushStoreOperation *)v112 initWithConfiguration:v113 cloudState:v114 target:0];

                *&v222 = MEMORY[0x277D85DD0];
                *(&v222 + 1) = 3221225472;
                *&v223 = __56__HDCloudSyncPipelineStagePush__pushOperationWithStore___block_invoke;
                *(&v223 + 1) = &unk_278614D48;
                v116 = v115;
                *&v224 = v116;
                v117 = v111;
                *(&v224 + 1) = v117;
                [(HDCloudSyncCompoundOperation *)v108 addOperation:v116 transitionHandler:&v222];
                v118 = [v105 shardPredicate];
                LOBYTE(v114) = [v118 type] == 2;

                if ((v114 & 1) == 0)
                {
                  v119 = [HDCloudSyncBlockOperation alloc];
                  v120 = [v205 configuration];
                  v121 = [v205 cloudState];
                  *&v218 = MEMORY[0x277D85DD0];
                  *(&v218 + 1) = 3221225472;
                  *&v219 = __56__HDCloudSyncPipelineStagePush__pushOperationWithStore___block_invoke_2;
                  *(&v219 + 1) = &unk_278614D20;
                  *&v220 = v205;
                  *(&v220 + 1) = v105;
                  v122 = [(HDCloudSyncBlockOperation *)v119 initWithConfiguration:v120 cloudState:v121 synchronousBlock:&v218];

                  [(HDCloudSyncCompoundOperation *)v108 addOperation:v122 transitionHandler:0];
                }

                [(HDCloudSyncCompoundOperation *)v204 addOperation:v108 transitionHandler:0];
              }

              v102 = [v201 countByEnumeratingWithState:&v237 objects:v241 count:16];
            }

            while (v102);
          }

          v123 = [v205 configuration];
          v124 = [v123 repository];
          v125 = [v124 profile];
          v126 = [v125 cloudSyncManager];
          if ([v126 supportsRebase])
          {
            v127 = [v205 configuration];
            v128 = [v127 context];
            v129 = ([v128 options] & 0x40) == 0;

            if (!v129)
            {
              v202 = MEMORY[0x277CBEBF8];
LABEL_90:
              if (v198 == 1)
              {
                _HKInitializeLogging();
                v130 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                {
                  v131 = v130;
                  v132 = [v191 count];
                  *v241 = 138543618;
                  *&v241[4] = v205;
                  *&v241[12] = 2050;
                  *&v241[14] = v132;
                  _os_log_impl(&dword_228986000, v131, OS_LOG_TYPE_DEFAULT, "%{public}@: Stores pending full sync %{public}lu", v241, 0x16u);
                }

                v212[0] = MEMORY[0x277D85DD0];
                v212[1] = 3221225472;
                v212[2] = __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_334;
                v212[3] = &unk_278614CD0;
                v212[4] = v205;
                [v191 enumerateObjectsUsingBlock:v212];
                v133 = [v196 storeRecord];
                v134 = v133 == 0;

                if (!v134)
                {
                  v135 = [v196 storeRecord];
                  v136 = [v202 arrayByAddingObject:v135];

                  v202 = v136;
                }
              }

              if ([v202 count])
              {
                v137 = [HDCloudSyncDeleteStoresOperation alloc];
                v138 = [v205 configuration];
                v139 = [v205 cloudState];
                v140 = [(HDCloudSyncDeleteStoresOperation *)v137 initWithConfiguration:v138 cloudState:v139 storeRecordsToDelete:v202];
                v210[0] = MEMORY[0x277D85DD0];
                v210[1] = 3221225472;
                v210[2] = __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_337;
                v210[3] = &unk_278614CF8;
                v141 = v204;
                v211 = v141;
                v142 = [(HDCloudSyncOperation *)v140 operationWithRunCondition:v210];

                [(HDCloudSyncCompoundOperation *)v141 addOperation:v142 transitionHandler:0];
              }

              if (v199 && v198 == 1)
              {
                v143 = [HDCloudSyncBlockOperation alloc];
                v144 = [v205 configuration];
                v145 = [v205 cloudState];
                v208[0] = MEMORY[0x277D85DD0];
                v208[1] = 3221225472;
                v208[2] = __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_2_340;
                v208[3] = &unk_278614D20;
                v208[4] = v205;
                v209 = v199;
                v146 = [(HDCloudSyncBlockOperation *)v143 initWithConfiguration:v144 cloudState:v145 synchronousBlock:v208];
                v206[0] = MEMORY[0x277D85DD0];
                v206[1] = 3221225472;
                v206[2] = __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_3_342;
                v206[3] = &unk_278614CF8;
                v147 = v204;
                v207 = v147;
                v148 = [(HDCloudSyncOperation *)v146 operationWithRunCondition:v206];

                [(HDCloudSyncCompoundOperation *)v147 addOperation:v148 transitionHandler:0];
              }

              v149 = v192;
              Current = CFAbsoluteTimeGetCurrent();
              v151 = [v205 fullSyncMetricsStorage];
              [v151 setCurrentRunStartTime:Current];

              v152 = [v205 fullSyncMetricsStorage];
              v153 = [v152 ongoingSyncMetrics];

              v154 = [v205 fullSyncMetricsStorage];
              [v154 startTime];
              v156 = v155;

              v157 = [v205 fullSyncMetricsStorage];
              [v157 activeDuration];
              v159 = v158;

              v160 = [v205 fullSyncMetricsStorage];
              v161 = [v160 numberOfRuns];

              if (v153)
              {
                _HKInitializeLogging();
                v162 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                {
                  v163 = v162;
                  v164 = [v153 objectForKeyedSubscript:@"fullSyncReason"];
                  v165 = [MEMORY[0x277CCABB0] numberWithDouble:v156];
                  v166 = [MEMORY[0x277CCABB0] numberWithDouble:v159];
                  v167 = [MEMORY[0x277CCABB0] numberWithLongLong:v161];
                  *v241 = 138413058;
                  *&v241[4] = v164;
                  *&v241[12] = 2112;
                  *&v241[14] = v165;
                  *&v241[22] = 2112;
                  v242 = v166;
                  LOWORD(v243) = 2112;
                  *(&v243 + 2) = v167;
                  _os_log_impl(&dword_228986000, v163, OS_LOG_TYPE_DEFAULT, "Ongoing Full Sync started with reason: %@, startTime: %@, actively spent time: %@, number of runs completed %@  ", v241, 0x2Au);
                }
              }

              if (!v193)
              {
                v171 = v153;
LABEL_118:

                goto LABEL_119;
              }

              v168 = HKCloudSyncFullSyncReasonToString();
              if (v153)
              {
                v169 = [v153 objectForKeyedSubscript:@"fullSyncReason"];
                v170 = [v168 isEqualToString:v169];

                if (v170)
                {
                  v171 = v153;
LABEL_117:

                  goto LABEL_118;
                }

                _HKInitializeLogging();
                v172 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                {
                  *v241 = 138412290;
                  *&v241[4] = v168;
                  _os_log_impl(&dword_228986000, v172, OS_LOG_TYPE_DEFAULT, "Full Sync was ongoing, but restarted with new reason: %@", v241, 0xCu);
                }

                v173 = [v205 configuration];
                v174 = [v173 repository];
                v175 = [v174 profile];
                v176 = [v175 daemon];
                v177 = [v176 analyticsSubmissionCoordinator];

                v178 = [v153 objectForKeyedSubscript:@"fullSyncReason"];
                v179 = [v153 objectForKeyedSubscript:@"shardResponsible"];
                v180 = [v153 objectForKeyedSubscript:@"daysSincePreviousFullSync"];
                v181 = [MEMORY[0x277CCABB0] numberWithLongLong:v161];
                [v177 cloudSync_reportFullSyncMetricsWithReason:v178 shard:v179 daysSincePreviousFullSync:v180 totalDuration:v181 activeDuration:1 numberOfRuns:Current - v156 incomplete:v159];
              }

              if (v156 <= 0.0)
              {
                v182 = -1;
              }

              else
              {
                v182 = llround((Current - v156) / 86400.0);
              }

              *&v237 = @"fullSyncReason";
              *(&v237 + 1) = @"shardResponsible";
              v183 = @"none";
              if (v149)
              {
                v183 = v149;
              }

              *v241 = v168;
              *&v241[8] = v183;
              *&v238 = @"daysSincePreviousFullSync";
              v184 = [MEMORY[0x277CCABB0] numberWithInteger:v182];
              *&v241[16] = v184;
              v171 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v241 forKeys:&v237 count:3];

              v185 = [v205 fullSyncMetricsStorage];
              [v185 setStartTime:Current];

              v186 = [v205 fullSyncMetricsStorage];
              [v186 setOngoingSyncMetrics:v171];

              v187 = [v205 fullSyncMetricsStorage];
              [v187 setActiveDuration:0.0];

              v188 = [v205 fullSyncMetricsStorage];
              [v188 setNumberOfRuns:0];

              goto LABEL_117;
            }

            v123 = [v205 configuration];
            v124 = [v123 computedState];
            v125 = [v124 pushTargets];
            v202 = [v125 hk_map:&__block_literal_global_317_0];
          }

          else
          {

            v202 = MEMORY[0x277CBEBF8];
          }

          goto LABEL_90;
        }

        v48 = [v205 configuration];
        v49 = [v48 computedState];
        v50 = [v49 pushTargets];
        v216[0] = MEMORY[0x277D85DD0];
        v216[1] = 3221225472;
        v216[2] = __107__HDCloudSyncPipelineStagePush__requiresFullSyncWithStagingStore_pushStores_reason_shardResponsible_error___block_invoke;
        v216[3] = &unk_278614BF0;
        v51 = v199;
        v217 = v51;
        v52 = [v50 hk_firstObjectPassingTest:v216];

        if (v52)
        {
          v198 = [v205 configuration];
          v53 = [v198 cachedCloudState];
          v54 = [v52 storeRecord];
          v55 = [v54 recordID];
          v56 = [v205 configuration];
          v57 = [v56 repository];
          v58 = [v57 primaryCKContainer];
          v59 = [v58 containerIdentifier];
          v60 = [v53 zoneForRecordID:v55 containerIdentifier:v59 error:a3];

          if (!v60)
          {
            v193 = 0;
            v198 = 0;
LABEL_64:

            v67 = 0;
            goto LABEL_65;
          }

          *&v234 = 0;
          *(&v234 + 1) = &v234;
          v235 = 0x2020000000;
          v236 = 0;
          v61 = objc_opt_class();
          *v231 = MEMORY[0x277D85DD0];
          *&v231[8] = 3221225472;
          *&v231[16] = __107__HDCloudSyncPipelineStagePush__requiresFullSyncWithStagingStore_pushStores_reason_shardResponsible_error___block_invoke_2;
          v232 = &unk_278614C18;
          *&v233 = v51;
          *(&v233 + 1) = &v234;
          v62 = [v60 recordsForClass:v61 error:a3 filter:v231];
          if (v62)
          {
            if (*(*(&v234 + 1) + 24) < 400)
            {
              v193 = 0;
              v65 = 1;
            }

            else
            {
              _HKInitializeLogging();
              v63 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
              {
                v64 = *(*(&v234 + 1) + 24);
                *buf = 138543618;
                v228 = v205;
                v229 = 2048;
                v230 = v64;
                _os_log_impl(&dword_228986000, v63, OS_LOG_TYPE_DEFAULT, "%{public}@: Full sync required; staging store has too many change records (%ld)", buf, 0x16u);
              }

              v65 = 0;
              v198 = 1;
              v193 = 6;
            }
          }

          else
          {
            v193 = 0;
            v65 = 0;
            v198 = 0;
          }

          _Block_object_dispose(&v234, 8);
          if (!v65)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v193 = 0;
        }

        v78 = [v205 configuration];
        v79 = [v78 context];
        v80 = ([v79 options] & 0x2000) == 0;

        if (v80)
        {
          v198 = 2;
        }

        else
        {
          _HKInitializeLogging();
          v81 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v234) = 138543362;
            *(&v234 + 4) = v205;
            _os_log_impl(&dword_228986000, v81, OS_LOG_TYPE_DEFAULT, "%{public}@: Full sync requested", &v234, 0xCu);
          }

          v198 = 1;
          v193 = 7;
        }

        goto LABEL_64;
      }

      v67 = 0;
      v198 = 1;
      v68 = 3;
    }

    v193 = v68;
    goto LABEL_65;
  }

  v204 = 0;
LABEL_121:

  v189 = *MEMORY[0x277D85DE8];

  return v204;
}

void __36__HDCloudSyncPipelineStagePush_main__block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) configuration];
  v4 = [v3 repository];
  v5 = [v4 profile];
  v6 = [v5 legacyRepositoryProfile];
  v52 = 0;
  v7 = [HDCloudSyncStoreEntity resetLastSyncDateExcludingStores:v2 profile:v6 error:&v52];
  v8 = v52;

  v9 = MEMORY[0x277CCC328];
  if (!v7)
  {
    _HKInitializeLogging();
    v10 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v47 = *(a1 + 40);
      *buf = 138543618;
      v58 = v47;
      v59 = 2114;
      v60 = v8;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to reset last sync dates, %{public}@", buf, 0x16u);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = [*(a1 + 40) configuration];
    v13 = [v12 syncDate];

    v14 = [v11 configuration];
    v15 = [v14 repository];

    v16 = [v15 profile];
    v17 = [v16 legacyRepositoryProfile];

    v51 = HDCloudSyncKeyValueDomainWithProfile(v17);
    v18 = [v15 primaryCKContainer];
    v19 = [v18 containerIdentifier];
    v50 = HDCloudSyncLastSuccessfulPushKeyForContainerIdentifier(v19);

    v20 = [v15 primaryCKContainer];
    v21 = [v20 containerIdentifier];
    v48 = HDCloudSyncLastSuccessfulLitePushKeyForContainerIdentifier(v21);

    v22 = [v11 configuration];
    v23 = [v22 context];
    v24 = [v23 options];

    _HKInitializeLogging();
    v25 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v26 = @"lite ";
      if ((v24 & 0x80) == 0)
      {
        v26 = &stru_283BF39C8;
      }

      *buf = 138543618;
      v58 = v11;
      v59 = 2114;
      v60 = v26;
      _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Recording successful cloud sync %{public}@push", buf, 0x16u);
    }

    if (v24 < 0)
    {
      v27 = v48;
    }

    else
    {
      v27 = v50;
    }

    v56 = 0;
    v28 = [v51 setDate:v13 forKey:v27 error:{&v56, v48}];
    v29 = v56;
    v30 = v8;
    if (v28)
    {
      v31 = [v11 profile];
      v32 = [v31 cloudSyncManager];
      v33 = v32;
      if (v24 < 0)
      {
        [v32 didCompleteSuccessfulLitePushWithDate:v13];
      }

      else
      {
        [v32 didCompleteSuccessfulPushWithDate:v13];
      }
    }

    else
    {
      _HKInitializeLogging();
      v34 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v35 = @"Lite ";
        if ((v24 & 0x80) == 0)
        {
          v35 = &stru_283BF39C8;
        }

        *buf = 138543618;
        v58 = v29;
        v59 = 2114;
        v60 = v35;
        _os_log_error_impl(&dword_228986000, v34, OS_LOG_TYPE_ERROR, "Failed to record successful %{public}@push: %{public}@.", buf, 0x16u);
      }
    }

    v55 = v29;
    v36 = HDUpgradedToSyncIdentity(v17, &v55);
    v37 = v55;

    if (v36)
    {
      v54 = v37;
      v38 = HDSetCompletedTransitionToSyncIdentity(1, v17, &v54);
      v39 = v54;

      if ((v38 & 1) == 0)
      {
        _HKInitializeLogging();
        v40 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v58 = v39;
          _os_log_error_impl(&dword_228986000, v40, OS_LOG_TYPE_ERROR, "Failed to record completion of transition to sync identity: %{public}@.", buf, 0xCu);
        }
      }
    }

    else
    {
      v39 = v37;
    }

    v8 = v30;
    v53 = v39;
    v41 = HDSetUpgradedToSyncIdentity(1, v17, &v53);
    v42 = v53;

    v43 = MEMORY[0x277CCC328];
    if ((v41 & 1) == 0)
    {
      _HKInitializeLogging();
      v44 = *v43;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v58 = v42;
        _os_log_error_impl(&dword_228986000, v44, OS_LOG_TYPE_ERROR, "Failed to record has upgraded to sync identity based stores: %{public}@.", buf, 0xCu);
      }
    }

    HDSetCloudSyncLastSuccessfulPushDateForCoordinatedSync(v13, v17);
    [(HDCloudSyncPipelineStagePush *)v11 _analytics_operationFinishedWithSuccess:?];

    v45 = *(a1 + 40);
  }

  else
  {
    v45 = 0;
  }

  [v45 finishWithSuccess:1 error:0];

  v46 = *MEMORY[0x277D85DE8];
}

void __36__HDCloudSyncPipelineStagePush_main__block_invoke_304(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [(HDCloudSyncPipelineStagePush *)v4 _analytics_operationFinishedWithSuccess:?];
  [*(a1 + 32) finishWithSuccess:0 error:v5];
}

- (void)_analytics_operationFinishedWithSuccess:(void *)a1
{
  v46 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = [a1 fullSyncMetricsStorage];
    v5 = [v4 ongoingSyncMetrics];

    if (v5)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v7 = [a1 fullSyncMetricsStorage];
      [v7 activeDuration];
      v9 = v8;

      v10 = [a1 fullSyncMetricsStorage];
      [v10 currentRunStartTime];
      v12 = v9 + Current - v11;

      v13 = [a1 fullSyncMetricsStorage];
      v14 = [v13 numberOfRuns];

      v15 = [a1 fullSyncMetricsStorage];
      v16 = v15;
      if (a2)
      {
        [v15 startTime];
        v18 = v17;

        v19 = Current - v18;
        v20 = [a1 configuration];
        v21 = [v20 repository];
        v22 = [v21 profile];
        v23 = [v22 daemon];
        v24 = [v23 analyticsSubmissionCoordinator];

        _HKInitializeLogging();
        v25 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v26 = v25;
          v27 = [v5 objectForKeyedSubscript:@"fullSyncReason"];
          v28 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
          v29 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
          v30 = [MEMORY[0x277CCABB0] numberWithInteger:v14 + 1];
          v38 = 138413058;
          v39 = v27;
          v40 = 2112;
          v41 = v28;
          v42 = 2112;
          v43 = v29;
          v44 = 2112;
          v45 = v30;
          _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "Full Sync Completed with following stats: reason: %@, startTime: %@, actively spent time: %@, number of runs completed %@  ", &v38, 0x2Au);
        }

        v31 = [v5 objectForKeyedSubscript:@"fullSyncReason"];
        v32 = [v5 objectForKeyedSubscript:@"shardResponsible"];
        v33 = [v5 objectForKeyedSubscript:@"daysSincePreviousFullSync"];
        v34 = [MEMORY[0x277CCABB0] numberWithInteger:v14 + 1];
        [v24 cloudSync_reportFullSyncMetricsWithReason:v31 shard:v32 daysSincePreviousFullSync:v33 totalDuration:v34 activeDuration:0 numberOfRuns:v19 incomplete:v12];

        v35 = [a1 fullSyncMetricsStorage];
        [v35 reset];
      }

      else
      {
        [v15 setActiveDuration:v12];

        v36 = [a1 fullSyncMetricsStorage];
        [v36 setNumberOfRuns:v14 + 1];
      }
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __64__HDCloudSyncPipelineStagePush__combinedPushOperationForStores___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 shardPredicate];
  v7 = [v5 shardPredicate];
  v8 = v7;
  if (!v6)
  {
    goto LABEL_4;
  }

  if (!v7)
  {
    v9 = -1;
    goto LABEL_6;
  }

  v9 = [v6 compare:v7];
  if (!v9)
  {
LABEL_4:
    v10 = [v4 storeIdentifier];
    v11 = [v5 storeIdentifier];
    v9 = [v10 compare:v11];
  }

LABEL_6:

  return v9;
}

uint64_t __107__HDCloudSyncPipelineStagePush__requiresFullSyncWithStagingStore_pushStores_reason_shardResponsible_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 store];
  v4 = [v3 storeIdentifier];
  v5 = [*(a1 + 32) storeIdentifier];
  v6 = [v4 isEqual:v5];

  return v6;
}

uint64_t __107__HDCloudSyncPipelineStagePush__requiresFullSyncWithStagingStore_pushStores_reason_shardResponsible_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 storeIdentifier];
  v5 = [*(a1 + 32) storeIdentifier];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = *(*(*(a1 + 40) + 8) + 24);
    v8 = [v3 childRecordCount];
    if (v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    *(*(*(a1 + 40) + 8) + 24) = v9;
  }

  return 0;
}

id __63__HDCloudSyncPipelineStagePush__obsoleteStoreRecordsForCleanup__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (![v2 purpose] && (objc_msgSend(v2, "options") & 4) != 0)
  {
    v3 = [v2 storeRecord];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __68__HDCloudSyncPipelineStagePush__anyPushStoreRequiresFullSync_error___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = [v3 persistedStateWithError:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v6 = [v5 pendingFullSync];
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v3;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Unable to get persistable state for store %@", buf, 0x16u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL __83__HDCloudSyncPipelineStagePush__unpredicatedSyncAnchorRangeMapForPushStores_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 shardPredicate];
  v3 = [v2 type] == 2;

  return v3;
}

uint64_t __82__HDCloudSyncPipelineStagePush__performPrerequisitesForFullSync_withReason_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v115 = *MEMORY[0x277D85DE8];
  v92 = a2;
  if (*(a1 + 48) != 3)
  {
    v32 = *(a1 + 32);
    v33 = a1;
    v34 = *(a1 + 40);
    v35 = v34;
    if (v32)
    {
      *v111 = 0;
      *&v111[8] = v111;
      *&v111[16] = 0x3032000000;
      v112 = __Block_byref_object_copy__10;
      v113 = __Block_byref_object_dispose__10;
      v114 = 0;
      *&v98 = MEMORY[0x277D85DD0];
      *(&v98 + 1) = 3221225472;
      *&v99 = __68__HDCloudSyncPipelineStagePush__anyPushStoreRequiresFullSync_error___block_invoke;
      *(&v99 + 1) = &unk_278614C60;
      *&v100 = v32;
      *(&v100 + 1) = v111;
      v36 = [v34 hk_containsObjectPassingTest:&v98];
      v37 = *(*&v111[8] + 40);
      if (v37)
      {

        LOBYTE(v32) = 0;
      }

      else
      {
        LOBYTE(v32) = v36;
      }

      _Block_object_dispose(v111, 8);
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;
    if (v38)
    {
      v39 = v38;
      if (a3)
      {
        v40 = v38;
        *a3 = v39;
      }

      else
      {
        _HKLogDroppedError();
      }

      goto LABEL_89;
    }

    a1 = v33;
    if (v32)
    {
      if (*(v33 + 48) != 4)
      {
        goto LABEL_85;
      }

      v41 = *(v33 + 32);
      v5 = *(a1 + 40);
      if (v41)
      {
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v42 = v5;
        v43 = [v42 countByEnumeratingWithState:&v98 objects:v111 count:16];
        if (!v43)
        {
LABEL_51:

          goto LABEL_85;
        }

        v44 = *v99;
LABEL_35:
        v45 = 0;
        while (1)
        {
          if (*v99 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v46 = *(*(&v98 + 1) + 8 * v45);
          v47 = [v46 persistedStateWithError:a3];
          v48 = v47;
          if (!v47)
          {
            goto LABEL_88;
          }

          v49 = [v47 rebaseDeadline];
          v50 = [v41 configuration];
          v51 = [v50 syncDate];
          [v49 timeIntervalSinceDate:v51];
          v53 = v52;

          v54 = [v48 rebaseDeadline];
          v55 = v53 >= *MEMORY[0x277CCE2B8] || v54 == 0;
          v56 = !v55;

          if (v56)
          {
            _HKInitializeLogging();
            v57 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v58 = v57;
              v59 = [v48 rebaseDeadline];
              v60 = *MEMORY[0x277CCE2B8];
              *buf = 138544386;
              *&buf[4] = v41;
              v103 = 2114;
              v104 = v46;
              v105 = 2114;
              v106 = v59;
              v107 = 2048;
              v108 = v60;
              v109 = 2048;
              v110 = v53;
              _os_log_impl(&dword_228986000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@: Full sync required; %{public}@ near rebase deadline of %{public}@ (trigger threshold is %0.1lfs, remaining interval is %0.1lfs)", buf, 0x34u);
            }

            v61 = [v48 stateWithPendingFullSync:1];
            v62 = [v46 persistState:v61 error:a3];

            if ((v62 & 1) == 0)
            {
              break;
            }
          }

          if (v43 == ++v45)
          {
            v43 = [v42 countByEnumeratingWithState:&v98 objects:v111 count:16];
            if (!v43)
            {
              goto LABEL_51;
            }

            goto LABEL_35;
          }
        }

        _HKInitializeLogging();
        v86 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v41;
          v103 = 2112;
          v104 = v46;
          _os_log_error_impl(&dword_228986000, v86, OS_LOG_TYPE_ERROR, "%{public}@: Unable to set pending full sync for %@", buf, 0x16u);
        }

LABEL_88:

LABEL_89:
        v85 = 0;
        goto LABEL_90;
      }

LABEL_91:

      goto LABEL_89;
    }
  }

  v4 = *(a1 + 32);
  obj = a1;
  v5 = *(a1 + 40);
  v90 = v4;
  if (!v4)
  {
    goto LABEL_91;
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v98 objects:v111 count:16];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = *v99;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v99 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v98 + 1) + 8 * i);
      v97 = 0;
      v11 = [v10 persistedStateWithError:&v97];
      v12 = v97;
      if (!v11)
      {
        _HKInitializeLogging();
        v63 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v90;
          v103 = 2112;
          v104 = v10;
          _os_log_error_impl(&dword_228986000, v63, OS_LOG_TYPE_ERROR, "%{public}@: Unable to get persistable state for store %@", buf, 0x16u);
        }

        v64 = v12;
        v11 = v64;
        if (v64)
        {
          if (a3)
          {
            v65 = v64;
            *a3 = v11;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v68 = v11;
        goto LABEL_81;
      }

      v13 = [v11 stateWithPendingFullSync:1];
      v96 = v12;
      v14 = [v10 persistState:v13 error:&v96];
      v15 = v96;

      if ((v14 & 1) == 0)
      {
        _HKInitializeLogging();
        v66 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v90;
          v103 = 2112;
          v104 = v10;
          _os_log_error_impl(&dword_228986000, v66, OS_LOG_TYPE_ERROR, "%{public}@: Unable to set pending full sync for %@", buf, 0x16u);
        }

        v67 = v15;
        v68 = v67;
        if (v67)
        {
          if (a3)
          {
            v69 = v67;
            *a3 = v68;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

LABEL_81:
        goto LABEL_89;
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v98 objects:v111 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_12:

  v16 = *(obj + 32);
  if (!v16)
  {
    goto LABEL_89;
  }

  v91 = *(obj + 40);
  v17 = [v16 profile];
  v89 = HDCloudSyncKeyValueDomainWithProfile(v17);

  *buf = 0;
  v18 = [v91 hk_firstObjectPassingTest:&__block_literal_global_324];
  v19 = objc_alloc_init(HDSyncAnchorRangeMap);
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obja = [v18 orderedSyncEntities];
  v20 = [obja countByEnumeratingWithState:&v98 objects:v111 count:16];
  if (v20)
  {
    v21 = *v99;
    while (2)
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v99 != v21)
        {
          objc_enumerationMutation(obja);
        }

        v23 = *(*(&v98 + 1) + 8 * j);
        v24 = [v23 syncEntityIdentifier];
        v25 = v18;
        v26 = [(HDSyncSession *)[HDCloudSyncSession alloc] initWithSyncStore:v25 reason:@"Unpredicated max anchor" delegate:v16];

        v27 = [v16 profile];
        v28 = [v23 nextSyncAnchorWithSession:v26 startSyncAnchor:0 profile:v27 error:buf];

        if (v28 < 0)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:buf code:1400 format:@"Final anchor is invalid."];

          v31 = 0;
          goto LABEL_63;
        }

        v29 = HDSyncAnchorRangeMake(0, v28);
        [(HDSyncAnchorRangeMap *)v19 setAnchorRange:v29 forSyncEntityIdentifier:v30, v24];
      }

      v20 = [obja countByEnumeratingWithState:&v98 objects:v111 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v31 = v19;
LABEL_63:

  v70 = *buf;
  if (![(HDSyncAnchorRangeMap *)v31 anchorRangeCount])
  {
    v80 = v70;
    goto LABEL_71;
  }

  v71 = [v16 profile];
  v72 = [v71 syncIdentityManager];
  v73 = [v72 currentSyncIdentity];
  v74 = [v73 identity];
  v75 = [v74 identityString];

  v76 = [(HDSyncAnchorRangeMap *)v31 codableSyncAnchorRangeMap];
  v77 = [v76 data];
  v78 = HDCloudSyncFullSyncAnchorMapLimitKey(v75);
  v97 = v70;
  v79 = [v89 setData:v77 forKey:v78 error:&v97];
  v80 = v97;

  _HKInitializeLogging();
  v81 = *MEMORY[0x277CCC328];
  v82 = *MEMORY[0x277CCC328];
  if (v79)
  {
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *v111 = 138543618;
      *&v111[4] = v16;
      *&v111[12] = 2112;
      *&v111[14] = v31;
      _os_log_impl(&dword_228986000, v81, OS_LOG_TYPE_DEFAULT, "%{public}@: Persisted unpredicated sync anchor map to set the anchor range limits for full sync %@", v111, 0x16u);
    }

LABEL_71:
    LOBYTE(v96) = 1;
  }

  else
  {
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      *v111 = 138543618;
      *&v111[4] = v16;
      *&v111[12] = 2114;
      *&v111[14] = v80;
      _os_log_error_impl(&dword_228986000, v81, OS_LOG_TYPE_ERROR, "%{public}@: Error persisting the anchor map for staging sync. Samples added during full sync might be missed. Error: %{public}@", v111, 0x16u);
    }

    v83 = v80;
    v80 = v83;
    if (v83)
    {
      if (a3)
      {
        v84 = v83;
        *a3 = v80;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    LOBYTE(v96) = 0;
  }

  if ((v96 & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_85:
  v85 = 1;
LABEL_90:

  v87 = *MEMORY[0x277D85DE8];
  return v85;
}

uint64_t __75__HDCloudSyncPipelineStagePush__performClearFullSyncForStagingStore_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v22 = 0;
  v3 = [v2 persistedStateWithError:&v22];
  v4 = v22;
  v5 = v4;
  if (v3)
  {
    v6 = *(a1 + 40);
    v21 = v4;
    if (v6)
    {
      v7 = [v6 profile];
      v8 = HDCloudSyncKeyValueDomainWithProfile(v7);

      v9 = [v6 profile];
      v10 = [v9 syncIdentityManager];
      v11 = [v10 currentSyncIdentity];
      v12 = [v11 identity];
      v13 = [v12 identityString];

      v14 = HDCloudSyncFullSyncAnchorMapLimitKey(v13);
      LODWORD(v10) = [v8 setData:0 forKey:v14 error:&v21];

      v15 = v21;
      if (!v10)
      {
        v18 = 0;
        v5 = v15;
        goto LABEL_8;
      }

      v16 = *(a1 + 32);
      v17 = [v3 stateWithPendingFullSync:0];
      v20 = v15;
      v18 = [v16 persistState:v17 error:&v20];
      v5 = v20;
    }

    else
    {
      v17 = v4;
      v18 = 0;
      v5 = v17;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_8:

  return v18;
}

BOOL __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 shardPredicate];
  v3 = [v2 type] == 2;

  return v3;
}

uint64_t __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 store];
  v4 = [v3 storeIdentifier];
  v5 = [*(a1 + 32) storeIdentifier];
  v6 = [v4 isEqual:v5];

  return v6;
}

uint64_t __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 shardPredicate];
  v5 = [v4 type];
  v6 = v5 != 2;

  v14 = 0;
  v7 = [v3 persistedStateWithError:&v14];
  v8 = v14;
  if (v7)
  {
    v9 = [v7 pendingFullSync];
    if (v5 == 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = v9;
    }
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v3;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Unable to get persistable state for store %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_334(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __83__HDCloudSyncPipelineStagePush__computePushAndCleanupOperationForPushStores_error___block_invoke_2_340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = +[HDMutableDatabaseTransactionContext contextForWriting];
    v7 = [v4 configuration];
    v8 = [v7 accessibilityAssertion];
    v9 = [v6 contextWithAccessibilityAssertion:v8];

    v10 = [v4 configuration];
    v11 = [v10 repository];
    v12 = [v11 profile];
    v13 = [v12 database];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__HDCloudSyncPipelineStagePush__performClearFullSyncForStagingStore_error___block_invoke;
    v16[3] = &unk_278613218;
    v17 = v5;
    v18 = v4;
    v14 = [v13 performTransactionWithContext:v9 error:a3 block:v16 inaccessibilityHandler:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __56__HDCloudSyncPipelineStagePush__pushOperationWithStore___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) pushTarget];
  [*(a1 + 32) setTarget:v2];
}

uint64_t __56__HDCloudSyncPipelineStagePush__pushOperationWithStore___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = v5;
  if (v4)
  {
    v7 = [v5 persistedStateWithError:a3];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 stateWithPendingFullSync:0];
      v10 = [v6 persistState:v9 error:a3];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __66__HDCloudSyncPipelineStagePush__pushStoresByAddingShardsToStores___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 storeIdentifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

id __43__HDCloudSyncPipelineStagePush__pushStores__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 options] & 4) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 store];
  }

  return v3;
}

@end