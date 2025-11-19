@interface HDCloudSyncSeizeAbandonedStoresOperation
+ (id)operationTagDependencies;
- (id)anchorMapForTakeoverForTarget:(void *)a1;
- (void)main;
@end

@implementation HDCloudSyncSeizeAbandonedStoresOperation

+ (id)operationTagDependencies
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"compute-push-targets";
  v5[1] = @"compute-pull-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)main
{
  v227 = *MEMORY[0x277D85DE8];
  v2 = [(HDCloudSyncOperation *)self configuration];
  if ([v2 rebaseProhibited])
  {

LABEL_33:
    v57 = *MEMORY[0x277D85DE8];

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
    return;
  }

  v3 = [(HDCloudSyncOperation *)self profile];
  v4 = [v3 daemon];
  v5 = [v4 behavior];
  v6 = [v5 canPerformOwnershipTakeover];

  if ((v6 & 1) == 0)
  {
    goto LABEL_33;
  }

  v7 = objc_alloc_init(MEMORY[0x277D10BB0]);
  taskGroup = self->_taskGroup;
  self->_taskGroup = v7;

  [(HDSynchronousTaskGroup *)self->_taskGroup setDelegate:self];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [v9 objectForKey:*MEMORY[0x277CCB770]];
  v11 = v10;
  v12 = *MEMORY[0x277CCB750];
  if (v10)
  {
    [v10 doubleValue];
    if (v12 >= v13)
    {
      v12 = v13;
    }
  }

  v14 = [(HDCloudSyncOperation *)self configuration];
  v15 = [v14 computedState];
  v16 = [v15 targets];
  *v223 = MEMORY[0x277D85DD0];
  *&v223[8] = 3221225472;
  *&v223[16] = __69__HDCloudSyncSeizeAbandonedStoresOperation__computeTargetsForSeizure__block_invoke;
  v224 = &unk_278630098;
  v225 = self;
  v226 = v12;
  v17 = [v16 hk_map:v223];

  v193 = 0;
  v18 = v17;
  v184 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v19 = v18;
  v20 = [(HDCloudSyncOperation *)self configuration];
  v21 = [v20 computedState];
  v22 = [v21 targets];
  *&v204 = MEMORY[0x277D85DD0];
  *(&v204 + 1) = 3221225472;
  *&v205 = __76__HDCloudSyncSeizeAbandonedStoresOperation__computeAllActiveTargetsByChild___block_invoke;
  *(&v205 + 1) = &unk_278614BF0;
  v175 = v19;
  *&v206 = v175;
  v23 = [v22 hk_filter:&v204];

  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  obj = v23;
  v182 = [obj countByEnumeratingWithState:&v212 objects:v223 count:16];
  if (v182)
  {
    v181 = *v213;
    do
    {
      v25 = 0;
      do
      {
        if (*v213 != v181)
        {
          v26 = v25;
          objc_enumerationMutation(obj);
          v25 = v26;
        }

        v186 = v25;
        v27 = *(*(&v212 + 1) + 8 * v25);
        v28 = [v27 storeRecord];
        if (([v28 isChild] & 1) == 0)
        {
          v29 = [v27 storeRecord];
          v30 = [v29 sequenceRecord];
          v31 = [v30 includedChildSyncIdentities];
          v32 = [v31 count] == 0;

          if (v32)
          {
            goto LABEL_29;
          }

          v210 = 0u;
          v211 = 0u;
          v208 = 0u;
          v209 = 0u;
          v33 = [v27 storeRecord];
          v34 = [v33 sequenceRecord];
          v28 = [v34 includedChildSyncIdentities];

          v35 = [v28 countByEnumeratingWithState:&v208 objects:&v219 count:16];
          if (v35)
          {
            v36 = *v209;
            do
            {
              for (i = 0; i != v35; ++i)
              {
                if (*v209 != v36)
                {
                  objc_enumerationMutation(v28);
                }

                v38 = *(*(&v208 + 1) + 8 * i);
                v39 = [v24 objectForKeyedSubscript:v38];
                v40 = v39;
                if (v39)
                {
                  v41 = v39;
                }

                else
                {
                  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
                }

                v42 = v41;

                v43 = [v27 storeRecord];
                v44 = [v43 syncIdentity];
                v45 = v44 == 0;

                if (v45)
                {
                  _HKInitializeLogging();
                  v48 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                  {
                    v49 = v48;
                    v50 = [v27 storeRecord];
                    *buf = 138543618;
                    *&buf[4] = self;
                    *&buf[12] = 2114;
                    *&buf[14] = v50;
                    _os_log_error_impl(&dword_228986000, v49, OS_LOG_TYPE_ERROR, "%{public}@: StoreRecord has a nil sync identity %{public}@", buf, 0x16u);
                  }
                }

                else
                {
                  v46 = [v27 storeRecord];
                  v47 = [v46 syncIdentity];
                  [v42 addObject:v47];

                  [v24 setObject:v42 forKeyedSubscript:v38];
                }
              }

              v35 = [v28 countByEnumeratingWithState:&v208 objects:&v219 count:16];
            }

            while (v35);
          }
        }

LABEL_29:
        v25 = v186 + 1;
      }

      while (v186 + 1 != v182);
      v182 = [obj countByEnumeratingWithState:&v212 objects:v223 count:16];
    }

    while (v182);
  }

  *v223 = 0;
  *&v223[8] = v223;
  *&v223[16] = 0x3032000000;
  v224 = __Block_byref_object_copy__210;
  v225 = __Block_byref_object_dispose__210;
  v226 = 0.0;
  v51 = +[HDMutableDatabaseTransactionContext contextForReading];
  v52 = [(HDCloudSyncOperation *)self configuration];
  v53 = [v52 accessibilityAssertion];
  v54 = [v51 contextWithAccessibilityAssertion:v53];

  v55 = [(HDCloudSyncOperation *)self profile];
  v56 = [v55 database];
  *&v219 = MEMORY[0x277D85DD0];
  *(&v219 + 1) = 3221225472;
  *&v220 = __74__HDCloudSyncSeizeAbandonedStoresOperation__childSyncIdentitiesWithError___block_invoke;
  *(&v220 + 1) = &unk_278619398;
  *(&v221 + 1) = v223;
  *&v221 = self;
  LOBYTE(v53) = [v56 performTransactionWithContext:v54 error:&v193 block:&v219 inaccessibilityHandler:0];

  if (v53)
  {
    v177 = *(*&v223[8] + 40);
  }

  else
  {
    v177 = 0;
  }

  _Block_object_dispose(v223, 8);
  if (!v177)
  {
    goto LABEL_97;
  }

  v217 = 0u;
  v218 = 0u;
  memset(buf, 0, sizeof(buf));
  v187 = v175;
  v178 = [v187 countByEnumeratingWithState:buf objects:&v219 count:16];
  if (!v178)
  {
    goto LABEL_80;
  }

  v176 = **&buf[16];
  do
  {
    v58 = 0;
    do
    {
      if (**&buf[16] != v176)
      {
        v59 = v58;
        objc_enumerationMutation(v187);
        v58 = v59;
      }

      obja = v58;
      v60 = *(*&buf[8] + 8 * v58);
      v61 = [v60 storeRecord];
      v62 = [v61 isChild];

      v63 = [v60 storeRecord];
      v64 = [v63 syncIdentity];
      v65 = [v177 containsObject:v64];

      v66 = [v60 storeRecord];
      v67 = [v66 sequenceRecord];
      v68 = [v67 includedChildSyncIdentities];
      v69 = [v68 count];

      if (!v62)
      {
        if (!v69)
        {
          goto LABEL_78;
        }

        v76 = v60;
        v77 = [(HDCloudSyncOperation *)self configuration];
        v78 = [v77 computedState];
        v79 = [v78 targets];
        *v223 = MEMORY[0x277D85DD0];
        *&v223[8] = 3221225472;
        *&v223[16] = __80__HDCloudSyncSeizeAbandonedStoresOperation__childTargetBySyncIdentityForParent___block_invoke;
        v224 = &unk_2786300C0;
        v189 = v76;
        v225 = v189;
        v70 = [v79 hk_mapToDictionary:v223];

        v198 = 0u;
        v199 = 0u;
        v200 = 0u;
        v201 = 0u;
        v80 = [(HDCloudSyncSeizeAbandonedStoresOperation *)v189 storeRecord];
        v81 = [v80 sequenceRecord];
        v71 = [v81 includedChildSyncIdentities];

        v82 = [v71 countByEnumeratingWithState:&v198 objects:&v212 count:16];
        if (v82)
        {
          v83 = *v199;
          while (2)
          {
            for (j = 0; j != v82; ++j)
            {
              if (*v199 != v83)
              {
                objc_enumerationMutation(v71);
              }

              v85 = *(*(&v198 + 1) + 8 * j);
              v86 = [v24 objectForKeyedSubscript:v85];
              if (!v86 || ([v24 objectForKeyedSubscript:v85], v87 = objc_claimAutoreleasedReturnValue(), v88 = v87 == 0, v87, v86, v88))
              {
                v93 = [v70 objectForKeyedSubscript:v85];
                v94 = v93 == 0;

                if (v94)
                {
                  _HKInitializeLogging();
                  v103 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                  {
                    v104 = v103;
                    v105 = [(HDCloudSyncSeizeAbandonedStoresOperation *)v189 store];
                    v106 = [v105 syncIdentity];
                    *v223 = 138543874;
                    *&v223[4] = self;
                    *&v223[12] = 2114;
                    *&v223[14] = v106;
                    *&v223[22] = 2114;
                    v224 = v85;
                    _os_log_impl(&dword_228986000, v104, OS_LOG_TYPE_DEFAULT, "%{public}@: TargetHasChildren: Child does not exist as store, seize both candidate target (%{public}@) & child (%{public}@) ", v223, 0x20u);
                  }
                }

                else
                {
                  v95 = [v70 objectForKeyedSubscript:v85];
                  v96 = [v187 containsObject:v95];

                  _HKInitializeLogging();
                  v97 = *MEMORY[0x277CCC328];
                  v98 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
                  if (!v96)
                  {
                    if (v98)
                    {
                      v116 = v97;
                      v117 = [(HDCloudSyncSeizeAbandonedStoresOperation *)v189 store];
                      v118 = [v117 syncIdentity];
                      *v223 = 138543874;
                      *&v223[4] = self;
                      *&v223[12] = 2114;
                      *&v223[14] = v85;
                      *&v223[22] = 2114;
                      v224 = v118;
                      _os_log_impl(&dword_228986000, v116, OS_LOG_TYPE_DEFAULT, "%{public}@: TargetHasChildren: Child (%{public}@) is not ready to be seized and not owned by another active target, cannot seize candidate target (%{public}@) or any if itschildren.", v223, 0x20u);
                    }

                    v119 = [v70 allValues];
                    [v184 addObjectsFromArray:v119];

                    [v184 addObject:v189];
                    goto LABEL_77;
                  }

                  if (v98)
                  {
                    v99 = v97;
                    v100 = [(HDCloudSyncSeizeAbandonedStoresOperation *)v189 store];
                    v101 = [v100 syncIdentity];
                    *v223 = 138543874;
                    *&v223[4] = self;
                    *&v223[12] = 2114;
                    *&v223[14] = v101;
                    *&v223[22] = 2114;
                    v224 = v85;
                    _os_log_impl(&dword_228986000, v99, OS_LOG_TYPE_DEFAULT, "%{public}@: TargetHasChildren: Child is also in seized targets, seize both candidate target (%{public}@) & child (%{public}@)", v223, 0x20u);
                  }

                  v102 = [v70 objectForKeyedSubscript:v85];
                  [v184 removeObject:v102];
                }
              }

              else
              {
                _HKInitializeLogging();
                v89 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                {
                  v90 = v89;
                  v91 = [(HDCloudSyncSeizeAbandonedStoresOperation *)v189 store];
                  v92 = [v91 syncIdentity];
                  *v223 = 138543618;
                  *&v223[4] = self;
                  *&v223[12] = 2114;
                  *&v223[14] = v92;
                  _os_log_impl(&dword_228986000, v90, OS_LOG_TYPE_DEFAULT, "%{public}@: TargetHasChildren: An active target also owns this child, candidate target (%{public}@) can continue being seized", v223, 0x16u);
                }
              }
            }

            v82 = [v71 countByEnumeratingWithState:&v198 objects:&v212 count:16];
            if (v82)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_77;
      }

      v70 = v60;
      v71 = v24;
      if (v65)
      {
        _HKInitializeLogging();
        v72 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v73 = v72;
          v74 = [v70 store];
          v75 = [v74 syncIdentity];
          *v223 = 138543618;
          *&v223[4] = self;
          *&v223[12] = 2114;
          *&v223[14] = v75;
          _os_log_impl(&dword_228986000, v73, OS_LOG_TYPE_DEFAULT, "%{public}@: targetIsAChild: Candidate target is ownChild (%{public}@), continue seizing", v223, 0x16u);
        }

LABEL_77:

        goto LABEL_78;
      }

      v107 = [v70 storeRecord];
      v108 = [v107 syncIdentity];
      v109 = [v71 objectForKeyedSubscript:v108];
      v110 = [v109 count] == 0;

      _HKInitializeLogging();
      v111 = *MEMORY[0x277CCC328];
      v112 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
      if (v110)
      {
        if (v112)
        {
          v120 = v111;
          v121 = [v70 store];
          v122 = [v121 syncIdentity];
          *v223 = 138543618;
          *&v223[4] = self;
          *&v223[12] = 2114;
          *&v223[14] = v122;
          _os_log_impl(&dword_228986000, v120, OS_LOG_TYPE_DEFAULT, "%{public}@: targetIsAChild: Candidate target is not ownChild nor another active target's child, continue seizing (%{public}@)", v223, 0x16u);
        }

        goto LABEL_77;
      }

      if (v112)
      {
        v113 = v111;
        v114 = [v70 store];
        v115 = [v114 syncIdentity];
        *v223 = 138543618;
        *&v223[4] = self;
        *&v223[12] = 2114;
        *&v223[14] = v115;
        _os_log_impl(&dword_228986000, v113, OS_LOG_TYPE_DEFAULT, "%{public}@: targetIsAChild: Candidate target is another active target's child, do not seize target (%{public}@)", v223, 0x16u);
      }

      [v184 addObject:v70];
LABEL_78:
      v58 = obja + 1;
    }

    while (obja + 1 != v178);
    v178 = [v187 countByEnumeratingWithState:buf objects:&v219 count:16];
  }

  while (v178);
LABEL_80:

  v123 = [v187 mutableCopy];
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v124 = v184;
  v125 = [v124 countByEnumeratingWithState:&v194 objects:&v208 count:16];
  if (v125)
  {
    v126 = *v195;
    do
    {
      for (k = 0; k != v125; ++k)
      {
        if (*v195 != v126)
        {
          objc_enumerationMutation(v124);
        }

        [v123 removeObject:*(*(&v194 + 1) + 8 * k)];
      }

      v125 = [v124 countByEnumeratingWithState:&v194 objects:&v208 count:16];
    }

    while (v125);
  }

  v128 = v123;
  v129 = MEMORY[0x277CBEB98];
  v130 = [(HDCloudSyncOperation *)self configuration];
  v131 = [v130 computedState];
  v132 = [v131 targets];
  v190 = [v129 setWithArray:v132];

  v133 = [MEMORY[0x277CBEB98] setWithArray:v128];
  v134 = [v190 hk_minus:v133];

  v135 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v136 = v134;
  v137 = [v136 countByEnumeratingWithState:&v204 objects:v223 count:16];
  if (v137)
  {
    v138 = *v205;
    do
    {
      for (m = 0; m != v137; ++m)
      {
        if (*v205 != v138)
        {
          objc_enumerationMutation(v136);
        }

        v140 = *(*(&v204 + 1) + 8 * m);
        v141 = [v140 storeRecord];
        v142 = [v141 syncIdentity];
        v143 = v142 == 0;

        if (!v143)
        {
          v144 = [v140 storeRecord];
          v145 = [v144 syncIdentity];
          [v135 addObject:v145];
        }
      }

      v137 = [v136 countByEnumeratingWithState:&v204 objects:v223 count:16];
    }

    while (v137);
  }

  v202[0] = MEMORY[0x277D85DD0];
  v202[1] = 3221225472;
  v202[2] = __88__HDCloudSyncSeizeAbandonedStoresOperation__removeTargetsBasedOnUnseizedSyncIdentities___block_invoke;
  v202[3] = &unk_278614BF0;
  v203 = v135;
  v146 = v135;
  v147 = [v128 hk_filter:v202];

  v148 = [(HDCloudSyncOperation *)self configuration];
  v149 = [v148 computedState];
  [v149 replaceTargets:v147];

LABEL_97:
  v150 = v193;
  v183 = v150;
  if (v177)
  {
    v219 = 0u;
    v220 = 0u;
    v221 = 0u;
    v222 = 0u;
    v151 = [(HDCloudSyncOperation *)self configuration];
    v152 = [v151 repository];
    v185 = [v152 allCKContainers];

    v191 = [v185 countByEnumeratingWithState:&v219 objects:v223 count:16];
    if (v191)
    {
      v188 = *v220;
      do
      {
        for (n = 0; n != v191; ++n)
        {
          if (*v220 != v188)
          {
            objc_enumerationMutation(v185);
          }

          v154 = *(*(&v219 + 1) + 8 * n);
          v155 = [(HDCloudSyncOperation *)self configuration];
          v156 = [v155 repository];
          v157 = [v156 cachedOwnerIdentifierForContainer:v154];
          v158 = [v157 string];

          v159 = [(HDCloudSyncOperation *)self configuration];
          v160 = [v159 repository];
          v161 = [v160 syncIdentityManager];
          v162 = [v161 currentSyncIdentity];
          v163 = [v162 identity];

          v164 = [(HDCloudSyncOperation *)self configuration];
          v165 = [v164 computedState];
          v166 = [v165 targets];
          *&v212 = MEMORY[0x277D85DD0];
          *(&v212 + 1) = 3221225472;
          *&v213 = __77__HDCloudSyncSeizeAbandonedStoresOperation__updatedStoreRecordsForContainer___block_invoke;
          *(&v213 + 1) = &unk_2786300E8;
          v167 = v154;
          *&v214 = v167;
          *(&v214 + 1) = v158;
          *&v215 = v163;
          v168 = v163;
          v169 = v158;
          v170 = [v166 hk_map:&v212];

          if ([v170 count])
          {
            [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
            v171 = [HDCloudSyncModifyRecordsOperation alloc];
            v172 = [(HDCloudSyncOperation *)self configuration];
            v173 = [(HDCloudSyncModifyRecordsOperation *)v171 initWithConfiguration:v172 container:v167 recordsToSave:v170 recordIDsToDelete:0];

            *&v204 = MEMORY[0x277D85DD0];
            *(&v204 + 1) = 3221225472;
            *&v205 = __78__HDCloudSyncSeizeAbandonedStoresOperation__markPendingOwnerForSeizureTargets__block_invoke;
            *(&v205 + 1) = &unk_278613088;
            *&v206 = self;
            [(HDCloudSyncOperation *)v173 setOnError:&v204];
            *&v208 = MEMORY[0x277D85DD0];
            *(&v208 + 1) = 3221225472;
            *&v209 = __78__HDCloudSyncSeizeAbandonedStoresOperation__markPendingOwnerForSeizureTargets__block_invoke_314;
            *(&v209 + 1) = &unk_278614BA8;
            *&v210 = self;
            *(&v210 + 1) = v170;
            [(HDCloudSyncOperation *)v173 setOnSuccess:&v208];
            [(HDCloudSyncOperation *)v173 start];
          }
        }

        v191 = [v185 countByEnumeratingWithState:&v219 objects:v223 count:16];
      }

      while (v191);
    }

    [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
  }

  else
  {
    [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:v150];
  }

  v174 = *MEMORY[0x277D85DE8];
}

id __69__HDCloudSyncSeizeAbandonedStoresOperation__computeTargetsForSeizure__block_invoke(uint64_t a1, void *a2)
{
  v124 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 storeRecord];
  if (!v4 || [v3 purpose] != 1)
  {
    v17 = 0;
    goto LABEL_10;
  }

  v5 = [*(a1 + 32) configuration];
  v6 = [v5 repository];
  v7 = [v3 container];
  v8 = [v6 cachedOwnerIdentifierForContainer:v7];

  v9 = [*(a1 + 32) configuration];
  v10 = [v9 repository];
  v11 = [v10 syncIdentityManager];
  v12 = [v11 currentSyncIdentity];
  v13 = [v12 identity];

  v14 = [v3 storeRecord];
  v15 = [v14 pendingOwner];
  v16 = [v8 string];
  v112 = v13;
  if (![v15 isEqualToString:v16])
  {
    v18 = [v3 storeRecord];
    v19 = [v18 pendingSyncIdentity];
    v20 = [v19 isEqual:v13];

    if (v20)
    {
      goto LABEL_7;
    }

    v24 = [v4 record];
    v25 = [v24 modificationDate];
    v26 = [*(a1 + 32) configuration];
    v27 = [v26 syncDate];
    [v25 timeIntervalSinceDate:v27];
    v29 = fabs(v28);

    if (v29 < *(a1 + 40))
    {
      v17 = 0;
      goto LABEL_8;
    }

    v30 = [*(a1 + 32) configuration];
    v31 = [v30 syncDate];
    v32 = [v31 dateByAddingTimeInterval:-*(a1 + 40)];

    _HKInitializeLogging();
    v33 = MEMORY[0x277CCC328];
    v34 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 32);
      v36 = v34;
      v37 = [v4 storeIdentifier];
      v38 = [v4 record];
      v39 = [v38 modificationDate];
      *buf = 138544130;
      v117 = v35;
      v33 = MEMORY[0x277CCC328];
      v118 = 2114;
      v119 = v37;
      v120 = 2114;
      v121 = v39;
      v122 = 2114;
      v123 = v32;
      _os_log_impl(&dword_228986000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ was abandoned. lastModifiedDate:(%{public}@), timeoutDateForOwnershipTransfer:(%{public}@)", buf, 0x2Au);
    }

    if ([v4 hasSequenceWithFutureProtocolVersion])
    {
      _HKInitializeLogging();
      v40 = *v33;
      v21 = v112;
      if (os_log_type_enabled(*v33, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(a1 + 32);
        *buf = 138543618;
        v117 = v41;
        v118 = 2114;
        v119 = v4;
        _os_log_impl(&dword_228986000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: store record: %{public}@ is abandoned, but is from the future and cannot be seized by this device.", buf, 0x16u);
      }

      v42 = 0;
      v17 = 0;
      goto LABEL_58;
    }

    if (_os_feature_enabled_impl())
    {
      v43 = [*(a1 + 32) profile];
      v44 = [v43 syncEngine];
      v45 = [v44 allSyncEntityVersionsByIdentifier];
      v46 = [v4 hasSequenceWithFutureSyncEntityVersions:v45];

      if (v46)
      {
        _HKInitializeLogging();
        v47 = *v33;
        if (os_log_type_enabled(*v33, OS_LOG_TYPE_DEFAULT))
        {
          v48 = *(a1 + 32);
          *buf = 138543618;
          v117 = v48;
          v118 = 2114;
          v119 = v4;
          v49 = "%{public}@: store record: %{public}@ is abandoned, but has entities from the future and cannot be seized by this device.";
LABEL_30:
          _os_log_impl(&dword_228986000, v47, OS_LOG_TYPE_DEFAULT, v49, buf, 0x16u);
          goto LABEL_31;
        }

        goto LABEL_31;
      }
    }

    v50 = [v4 currentSequenceHeaderRecord];
    if (v50)
    {
    }

    else
    {
      v51 = [v4 record];
      v52 = [v51 modificationDate];
      v53 = [*(a1 + 32) configuration];
      v54 = [v53 syncDate];
      [v52 timeIntervalSinceDate:v54];
      v56 = fabs(v55);
      v57 = *MEMORY[0x277CCB778];

      if (v56 < v57)
      {
        _HKInitializeLogging();
        v47 = *v33;
        if (os_log_type_enabled(*v33, OS_LOG_TYPE_DEFAULT))
        {
          v58 = *(a1 + 32);
          *buf = 138543618;
          v117 = v58;
          v118 = 2114;
          v119 = v4;
          v49 = "%{public}@: store record: %{public}@ is abandoned, but it has no sequence records, so we don't know if we can safely seize it";
          goto LABEL_30;
        }

LABEL_31:
        v42 = 0;
        v17 = 0;
        v21 = v112;
LABEL_58:

        goto LABEL_9;
      }
    }

    v111 = v32;
    v106 = [*(a1 + 32) configuration];
    v105 = [v106 repository];
    v103 = [v105 profile];
    v101 = [v103 legacyRepositoryProfile];
    v59 = [v4 storeIdentifier];
    v60 = [v4 ownerIdentifier];
    v61 = [v4 syncIdentity];
    v62 = [v3 zoneIdentifier];
    v63 = [v62 containerIdentifier];
    v115 = 0;
    v64 = [HDCloudSyncStore syncStoreForProfile:v101 storeIdentifier:v59 ownerIdentifier:v60 syncIdentity:v61 containerIdentifier:v63 error:&v115];
    log = v115;

    if (v64)
    {
      v114 = log;
      v65 = [v64 receivedSyncAnchorMapWithError:&v114];
      v42 = v114;

      v66 = [(HDCloudSyncSeizeAbandonedStoresOperation *)*(a1 + 32) anchorMapForTakeoverForTarget:v3];
      v67 = [v64 _syncAnchorMapByStrippingBlockedEntities:v66];

      if (v67 && (HDSyncAnchorMapIsSuperset(v67, v65) & 1) == 0)
      {
        v108 = v65;
        _HKInitializeLogging();
        v78 = MEMORY[0x277CCC328];
        v79 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v80 = v42;
          v81 = *(a1 + 32);
          loga = v79;
          v82 = [v4 storeIdentifier];
          *buf = 138543874;
          v117 = v81;
          v42 = v80;
          v118 = 2114;
          v119 = v82;
          v120 = 2114;
          v121 = v64;
          _os_log_impl(&dword_228986000, loga, OS_LOG_TYPE_DEFAULT, "%{public}@: store record: %{public}@ has been abandoned, but the local anchor map in the local store: %{public}@ is less than the received anchor map.", buf, 0x20u);
        }

        _HKInitializeLogging();
        v83 = *v78;
        if (os_log_type_enabled(*v78, OS_LOG_TYPE_DEFAULT))
        {
          v84 = *(a1 + 32);
          *buf = 138543618;
          v117 = v84;
          v118 = 2114;
          v119 = v108;
          _os_log_impl(&dword_228986000, v83, OS_LOG_TYPE_DEFAULT, "%{public}@: Local anchor map: %{public}@", buf, 0x16u);
        }

        _HKInitializeLogging();
        v85 = *v78;
        if (os_log_type_enabled(*v78, OS_LOG_TYPE_DEFAULT))
        {
          v86 = *(a1 + 32);
          *buf = 138543618;
          v117 = v86;
          v118 = 2114;
          v119 = v67;
          _os_log_impl(&dword_228986000, v85, OS_LOG_TYPE_DEFAULT, "%{public}@: Received anchor map: %{public}@", buf, 0x16u);
        }

        v17 = 0;
        v32 = v111;
        v21 = v112;
        goto LABEL_57;
      }

      v32 = v111;
      v21 = v112;
      v68 = MEMORY[0x277CCC328];
LABEL_54:

      _HKInitializeLogging();
      v99 = *v68;
      if (os_log_type_enabled(*v68, OS_LOG_TYPE_DEFAULT))
      {
        v100 = *(a1 + 32);
        *buf = 138543618;
        v117 = v100;
        v118 = 2114;
        v119 = v4;
        _os_log_impl(&dword_228986000, v99, OS_LOG_TYPE_DEFAULT, "%{public}@: store record: %{public}@ has been abandoned, and will be seized.", buf, 0x16u);
      }

      v17 = [v3 targetByAddingOptions:2];
LABEL_57:

      goto LABEL_58;
    }

    v102 = [v4 storeIdentifier];
    v69 = [*(a1 + 32) configuration];
    v70 = [v69 repository];
    v71 = [v70 profile];
    v72 = [v71 legacyRepositoryProfile];
    v113 = log;
    v73 = [HDCloudSyncStoreEntity persistedStateForStoreUUID:v102 profile:v72 error:&v113];
    v104 = v113;

    if (!v73)
    {
      _HKInitializeLogging();
      v87 = *MEMORY[0x277CCC328];
      v32 = v111;
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v88 = *(a1 + 32);
        v89 = v87;
        v90 = [v4 storeIdentifier];
        *buf = 138543618;
        v117 = v88;
        v118 = 2114;
        v119 = v90;
        _os_log_impl(&dword_228986000, v89, OS_LOG_TYPE_DEFAULT, "%{public}@: store record: %{public}@ was not found locally", buf, 0x16u);
      }

      v17 = 0;
      v21 = v112;
      v42 = v104;
      v64 = 0;
      goto LABEL_57;
    }

    [v73 ownerIdentifier];
    v75 = v74 = v73;
    v76 = [v4 ownerIdentifier];
    v77 = v76;
    v32 = v111;
    v21 = v112;
    v68 = MEMORY[0x277CCC328];
    v107 = v74;
    if (v75 == v76)
    {
      v91 = [v74 containerIdentifier];
      v92 = [v3 zoneIdentifier];
      v93 = [v92 containerIdentifier];

      v94 = v91 == v93;
      v68 = MEMORY[0x277CCC328];
      v21 = v112;
      if (v94)
      {
        v64 = 0;
LABEL_53:
        v42 = v104;
        v65 = v107;
        goto LABEL_54;
      }
    }

    else
    {
    }

    _HKInitializeLogging();
    v95 = *v68;
    v64 = 0;
    if (os_log_type_enabled(*v68, OS_LOG_TYPE_DEFAULT))
    {
      v96 = *(a1 + 32);
      v97 = v95;
      v98 = [v4 storeIdentifier];
      *buf = 138543618;
      v117 = v96;
      v118 = 2114;
      v119 = v98;
      _os_log_impl(&dword_228986000, v97, OS_LOG_TYPE_DEFAULT, "%{public}@: store record: %{public}@ is also present in another container. Seize this.", buf, 0x16u);

      v21 = v112;
    }

    goto LABEL_53;
  }

LABEL_7:
  v17 = [v3 targetByAddingOptions:2];
LABEL_8:
  v21 = v112;
LABEL_9:

LABEL_10:
  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)anchorMapForTakeoverForTarget:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 storeRecord];
    v6 = [v5 shardPredicate];
    v7 = [v6 type];

    if (v7 == 2)
    {
      v8 = [HDCloudSyncCachedZone alloc];
      v9 = [v4 zoneIdentifier];
      v10 = [a1 configuration];
      v11 = [v10 repository];
      v12 = [a1 configuration];
      v13 = [v12 accessibilityAssertion];
      v14 = [(HDCloudSyncCachedZone *)v8 initForZoneIdentifier:v9 repository:v11 accessibilityAssertion:v13];

      v24 = 0;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__210;
      v28 = __Block_byref_object_dispose__210;
      v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v15 = objc_opt_class();
      v23 = 0;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __74__HDCloudSyncSeizeAbandonedStoresOperation_anchorMapForTakeoverForTarget___block_invoke;
      v20[3] = &unk_278615E08;
      v21 = v4;
      v22 = &v24;
      [v14 recordsForClass:v15 epoch:0 error:&v23 enumerationHandler:v20];
      v16 = v23;
      v17 = [HDSyncAnchorMap syncAnchorMapWithDictionary:v25[5]];

      _Block_object_dispose(&v24, 8);
    }

    else
    {
      v14 = [v4 storeRecord];
      v18 = [v14 sequenceRecord];
      v17 = [v18 syncAnchorMap];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __74__HDCloudSyncSeizeAbandonedStoresOperation_anchorMapForTakeoverForTarget___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 record];
  v5 = [*(a1 + 32) storeRecord];
  v6 = [v5 sequenceRecord];
  v7 = [HDCloudSyncChangeRecord isChangeRecord:v4 inSequence:v6];

  if (v7)
  {
    v8 = [v3 decodedSyncAnchorRangeMap];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__HDCloudSyncSeizeAbandonedStoresOperation_anchorMapForTakeoverForTarget___block_invoke_2;
    v10[3] = &unk_27862B7F8;
    v10[4] = *(a1 + 40);
    [v8 enumerateAnchorRangesAndEntityIdentifiersWithBlock:v10];
  }

  return 1;
}

void __74__HDCloudSyncSeizeAbandonedStoresOperation_anchorMapForTakeoverForTarget___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*(a1 + 32) + 8) + 40);
  v7 = a2;
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 integerValue];

  if (a4 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a4;
  }

  v11 = *(*(*(a1 + 32) + 8) + 40);
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v10];
  [v11 setObject:v12 forKey:v7];
}

uint64_t __88__HDCloudSyncSeizeAbandonedStoresOperation__removeTargetsBasedOnUnseizedSyncIdentities___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 storeRecord];
  v4 = [v3 syncIdentity];
  LODWORD(v2) = [v2 containsObject:v4];

  return v2 ^ 1;
}

BOOL __74__HDCloudSyncSeizeAbandonedStoresOperation__childSyncIdentitiesWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 profile];
  v8 = [v7 syncIdentityManager];
  v20 = 0;
  v9 = [v8 childIdentitiesForCurrentSyncIdentityWithTransaction:v6 error:&v20];

  v10 = v20;
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;

  v13 = *(*(*(a1 + 40) + 8) + 40);
  if (!v13)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      *buf = 138543618;
      v22 = v19;
      v23 = 2114;
      v24 = v10;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read child sync identities: %{public}@", buf, 0x16u);
    }

    v15 = v10;
    if (v15)
    {
      if (a3)
      {
        v16 = v15;
        *a3 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

void __80__HDCloudSyncSeizeAbandonedStoresOperation__childTargetBySyncIdentityForParent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) storeRecord];
  v7 = [v6 sequenceRecord];
  v8 = [v7 includedChildSyncIdentities];
  v9 = [v14 storeRecord];
  v10 = [v9 syncIdentity];
  v11 = [v8 containsObject:v10];

  if (v11)
  {
    v12 = [v14 storeRecord];
    v13 = [v12 syncIdentity];
    v5[2](v5, v13, v14);
  }
}

id __77__HDCloudSyncSeizeAbandonedStoresOperation__updatedStoreRecordsForContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 container];
  v5 = [v4 containerIdentifier];
  v6 = [*(a1 + 32) containerIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (!v7)
  {
    goto LABEL_5;
  }

  if (([v3 options] & 2) == 0)
  {
    goto LABEL_5;
  }

  v8 = [v3 storeRecord];
  v9 = [v8 pendingOwner];
  v10 = [v9 isEqualToString:*(a1 + 40)];

  if (v10)
  {
    goto LABEL_5;
  }

  v11 = [v3 storeRecord];
  v12 = [v11 pendingSyncIdentity];
  v13 = [v12 isEqual:*(a1 + 48)];

  if ((v13 & 1) == 0)
  {
    v16 = *(a1 + 40);
    v17 = [v3 storeRecord];
    [v17 setPendingOwner:v16];

    v18 = *(a1 + 48);
    v19 = [v3 storeRecord];
    [v19 setPendingSyncIdentity:v18];

    v20 = [v3 storeRecord];
    v14 = [v20 record];
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

  return v14;
}

void __78__HDCloudSyncSeizeAbandonedStoresOperation__markPendingOwnerForSeizureTargets__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to mark pending owner for store records: %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __78__HDCloudSyncSeizeAbandonedStoresOperation__markPendingOwnerForSeizureTargets__block_invoke_314(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v8 = 138543618;
    v9 = v4;
    v10 = 2048;
    v11 = [v3 count];
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Marked pending owner in %ld store records.", &v8, 0x16u);
  }

  result = [*(*(a1 + 32) + 104) finishTask];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

@end