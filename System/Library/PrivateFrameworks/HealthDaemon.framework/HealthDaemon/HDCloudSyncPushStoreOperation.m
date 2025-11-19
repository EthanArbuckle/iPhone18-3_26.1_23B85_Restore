@interface HDCloudSyncPushStoreOperation
+ (id)operationTagDependencies;
- (HDCloudSyncCompoundOperation)_operationForNewSequenceRecord:(void *)a3 replacingSequence:(uint64_t)a4 isRebaseline:;
- (HDCloudSyncPushSequenceOperation)_operationForExistingSequenceRecord:(void *)a3 includedChildSyncIdentites:;
- (HDCloudSyncPushStoreOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncPushStoreOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 target:(id)a5;
- (HDCloudSyncTarget)target;
- (id)_validatedSequenceRecordOperationsForPushWithError:(uint64_t)a1;
- (id)analyticsDictionary;
- (void)_recordCurrentSequenceEpochs;
- (void)_recordExcludedSyncIdentitiesFromPushSequenceOperations:(void *)a1;
- (void)main;
- (void)setTarget:(id)a3;
@end

@implementation HDCloudSyncPushStoreOperation

+ (id)operationTagDependencies
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"compute-push-targets";
  v5[1] = @"compute-pull-targets";
  v5[2] = @"update-anchors";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (HDCloudSyncPushStoreOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncPushStoreOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 target:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HDCloudSyncPushStoreOperation;
  v10 = [(HDCloudSyncOperation *)&v13 initWithConfiguration:a3 cloudState:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_target, a5);
    v11->_lock._os_unfair_lock_opaque = 0;
  }

  return v11;
}

- (HDCloudSyncTarget)target
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_target;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setTarget:(id)a3
{
  v5 = a3;
  if ([(HDCloudSyncOperation *)self status])
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HDCloudSyncPushStoreOperation.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = [v5 copy];

  target = self->_target;
  self->_target = v6;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)main
{
  v40 = *MEMORY[0x277D85DE8];
  target = self->_target;
  if (target)
  {
    v4 = [(HDCloudSyncTarget *)target store];
    v38 = 0;
    v5 = [v4 persistedStateWithError:&v38];
    v6 = v38;
    storeState = self->_storeState;
    self->_storeState = v5;

    if (self->_storeState)
    {
      self->_rebaseReason = -1;
      v8 = [HDCloudSyncCompoundOperation alloc];
      v9 = [(HDCloudSyncOperation *)self configuration];
      v10 = [(HDCloudSyncOperation *)self cloudState];
      v11 = [(HDCloudSyncCompoundOperation *)v8 initWithConfiguration:v9 cloudState:v10 name:@"Push Sequences" continueOnSubOperationError:1];

      v37 = 0;
      v12 = [(HDCloudSyncPushStoreOperation *)self _validatedSequenceRecordOperationsForPushWithError:?];
      v13 = v37;
      if (v12)
      {
        [(HDCloudSyncPushStoreOperation *)self _recordCurrentSequenceEpochs];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v34;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v34 != v17)
              {
                objc_enumerationMutation(v14);
              }

              [(HDCloudSyncCompoundOperation *)v11 addOperation:*(*(&v33 + 1) + 8 * i) transitionHandler:0];
            }

            v16 = [v14 countByEnumeratingWithState:&v33 objects:v39 count:16];
          }

          while (v16);
        }

        v19 = [(HDCloudSyncCompoundOperation *)v11 operationsOfType:objc_opt_class()];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __37__HDCloudSyncPushStoreOperation_main__block_invoke;
        v32[3] = &unk_278613088;
        v32[4] = self;
        [(HDCloudSyncOperation *)v11 setOnError:v32];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __37__HDCloudSyncPushStoreOperation_main__block_invoke_2;
        v30[3] = &unk_278614BA8;
        v30[4] = self;
        v31 = v19;
        v20 = v19;
        [(HDCloudSyncOperation *)v11 setOnSuccess:v30];
        v21 = [(HDCloudSyncOperation *)v11 progress];
        v22 = [v21 totalUnitCount];
        v23 = [(HDCloudSyncOperation *)self progress];
        [v23 setTotalUnitCount:v22];

        v24 = [(HDCloudSyncOperation *)self progress];
        v25 = [(HDCloudSyncOperation *)v11 progress];
        v26 = [(HDCloudSyncOperation *)v11 progress];
        [v24 addChild:v25 withPendingUnitCount:{objc_msgSend(v26, "totalUnitCount")}];

        [(HDCloudSyncCompoundOperation *)v11 start];
      }

      else
      {
        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v13];
      }
    }

    else
    {
      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v6];
    }

    v28 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v29 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"No target set when beginning push."];
    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:?];
    v27 = *MEMORY[0x277D85DE8];
  }
}

- (id)_validatedSequenceRecordOperationsForPushWithError:(uint64_t)a1
{
  v225 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v203 = 0;
    goto LABEL_142;
  }

  v2 = [*(a1 + 104) storeRecord];
  v3 = [v2 syncIdentity];

  if (!v3)
  {
    obj = [MEMORY[0x277CBEB58] set];
    goto LABEL_56;
  }

  v4 = [*(a1 + 104) storeRecord];
  v5 = [v4 isChild];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB58]);
    v7 = [*(a1 + 104) storeRecord];
    v8 = [v7 syncIdentity];
    obj = [v6 initWithObjects:{v8, 0}];

    goto LABEL_56;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = [*(a1 + 104) storeRecord];
  v11 = [v10 syncIdentity];

  if (v11)
  {
    v12 = [*(a1 + 104) storeRecord];
    v13 = [v12 syncIdentity];
    [v9 addObject:v13];
  }

  v14 = [*(a1 + 104) storeRecord];
  v15 = [v14 currentSequenceHeaderRecord];
  v16 = [v15 includedSyncIdentities];

  if (v16)
  {
    v17 = [*(a1 + 104) storeRecord];
    v18 = [v17 currentSequenceHeaderRecord];
    v19 = [v18 includedSyncIdentities];
    [v9 unionSet:v19];
  }

  v20 = [a1 profile];
  v21 = [v20 syncIdentityManager];
  v204[0] = MEMORY[0x277D85DD0];
  v204[1] = 3221225472;
  v204[2] = __77__HDCloudSyncPushStoreOperation__currentOwnedSyncIdentitiesForPushWithError___block_invoke;
  v204[3] = &unk_27861EC18;
  v202 = v9;
  v205 = v202;
  v22 = [v21 enumerateConcreteIdentitiesError:a2 enumerationHandler:v204];

  if (!v22)
  {
    obj = 0;
    goto LABEL_55;
  }

  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v23 = [a1 configuration];
  v24 = [v23 computedState];
  obja = [v24 targets];

  v25 = [obja countByEnumeratingWithState:&v210 objects:v218 count:16];
  if (!v25)
  {
    goto LABEL_39;
  }

  v26 = *v211;
  do
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v211 != v26)
      {
        objc_enumerationMutation(obja);
      }

      v28 = *(*(&v210 + 1) + 8 * i);
      if ([v28 purpose])
      {
        v29 = 1;
      }

      else
      {
        v29 = ([v28 options] & 4) == 0;
      }

      if (([v28 options] & 2) != 0 || !v29)
      {
        v31 = [*(a1 + 104) storeRecord];
        v32 = [v31 sequenceRecord];
        v33 = [v32 includedChildSyncIdentities];
        v34 = [v28 storeRecord];
        v35 = [v34 syncIdentity];
        v36 = [v33 containsObject:v35];

        if (v36)
        {
          _HKInitializeLogging();
          v37 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v38 = v37;
            v39 = [v28 storeRecord];
            v40 = [v39 syncIdentity];
            *buf = 138543618;
            *&buf[4] = a1;
            *&buf[12] = 2114;
            *&buf[14] = v40;
            _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding seized target that is your own child %{public}@", buf, 0x16u);
          }

          v41 = [v28 storeRecord];
          v42 = [v41 syncIdentity];
          [v202 removeObject:v42];
          goto LABEL_35;
        }

        v43 = [v28 storeRecord];
        v41 = [v43 sequenceRecord];

        if (v41)
        {
          v44 = [v41 includedSyncIdentities];
          v45 = [v44 count] == 0;

          if (!v45)
          {
            _HKInitializeLogging();
            v46 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v47 = v46;
              v48 = [v41 includedSyncIdentities];
              *buf = 138543618;
              *&buf[4] = a1;
              *&buf[12] = 2114;
              *&buf[14] = v48;
              _os_log_impl(&dword_228986000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding includedSyncIdentities of seized target %{public}@", buf, 0x16u);
            }
          }

          v49 = [v41 includedSyncIdentities];
          [v202 unionSet:v49];

          v50 = [v41 includedChildSyncIdentities];
          v51 = [v50 count] == 0;

          if (!v51)
          {
            _HKInitializeLogging();
            v52 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v53 = v52;
              v54 = [v41 includedChildSyncIdentities];
              *buf = 138543618;
              *&buf[4] = a1;
              *&buf[12] = 2114;
              *&buf[14] = v54;
              _os_log_impl(&dword_228986000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding includedChildSyncIdentities of seized target %{public}@", buf, 0x16u);
            }
          }

          v42 = [v41 includedChildSyncIdentities];
          [v202 unionSet:v42];
LABEL_35:
        }

        continue;
      }
    }

    v25 = [obja countByEnumeratingWithState:&v210 objects:v218 count:16];
  }

  while (v25);
LABEL_39:

  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v55 = [a1 configuration];
  v56 = [v55 computedState];
  v57 = [v56 targets];

  v58 = [v57 countByEnumeratingWithState:&v206 objects:buf count:16];
  if (v58)
  {
    v59 = *v207;
    do
    {
      for (j = 0; j != v58; ++j)
      {
        if (*v207 != v59)
        {
          objc_enumerationMutation(v57);
        }

        v61 = *(*(&v206 + 1) + 8 * j);
        if ([v61 purpose] == 1 && (objc_msgSend(v61, "options") & 2) == 0)
        {
          v62 = [v61 storeRecord];
          v63 = [v62 sequenceRecord];

          if (v63)
          {
            v64 = [v63 includedSyncIdentities];
            [v202 minusSet:v64];

            v65 = [v63 includedChildSyncIdentities];
            [v202 minusSet:v65];
          }
        }
      }

      v58 = [v57 countByEnumeratingWithState:&v206 objects:buf count:16];
    }

    while (v58);
  }

  v66 = [a1 profile];
  v67 = [v66 daemon];
  v68 = [v67 behavior];
  v69 = [v68 isAppleWatch];

  if (v69)
  {
    v70 = [a1 profile];
    v71 = [v70 syncIdentityManager];
    v72 = [v71 legacySyncIdentity];
    v73 = [v72 identity];

    [v202 removeObject:v73];
  }

  v74 = [a1 profile];
  v75 = [v74 syncIdentityManager];
  v76 = [v75 currentSyncIdentity];
  v77 = [v76 identity];
  [v202 addObject:v77];

  obj = v202;
LABEL_55:

LABEL_56:
  if (obj)
  {
    *v218 = 0;
    *&v218[8] = v218;
    *&v218[16] = 0x3032000000;
    v219 = __Block_byref_object_copy__91;
    *v220 = __Block_byref_object_dispose__91;
    *&v220[8] = objc_alloc_init(MEMORY[0x277CBEB98]);
    v78 = [*(a1 + 104) storeRecord];
    v79 = [v78 isChild];

    if (v79)
    {
      goto LABEL_59;
    }

    v80 = [a1 profile];
    v81 = [v80 database];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __82__HDCloudSyncPushStoreOperation__currentOwnedChildSyncIdentitiesForPushWithError___block_invoke;
    v215 = &unk_278614110;
    v216 = a1;
    v217 = v218;
    v82 = [(HDHealthEntity *)HDSyncIdentityEntity performReadTransactionWithHealthDatabase:v81 error:a2 block:buf];

    if (v82)
    {
LABEL_59:
      v83 = *(*&v218[8] + 40);
    }

    else
    {
      v83 = 0;
    }

    v198 = v83;
    _Block_object_dispose(v218, 8);

    v84 = v198;
    if (v198)
    {
      [obj minusSet:?];
      v85 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v86 = [*(a1 + 104) store];
      v87 = [v86 storeIdentifier];
      [v85 addObject:v87];

      v88 = [*(a1 + 104) storeRecord];
      v89 = [v88 currentSequenceHeaderRecord];
      v90 = [v89 includedIdentifiers];
      [v85 unionSet:v90];

      v91 = [*(a1 + 104) storeRecord];
      LOBYTE(v88) = [v91 isChild];

      if ((v88 & 1) == 0)
      {
        v212 = 0u;
        v213 = 0u;
        v210 = 0u;
        v211 = 0u;
        v92 = [a1 configuration];
        v93 = [v92 computedState];
        v94 = [v93 targets];

        v95 = [v94 countByEnumeratingWithState:&v210 objects:v218 count:16];
        if (v95)
        {
          v96 = *v211;
          do
          {
            for (k = 0; k != v95; ++k)
            {
              if (*v211 != v96)
              {
                objc_enumerationMutation(v94);
              }

              v98 = *(*(&v210 + 1) + 8 * k);
              if ([v98 purpose])
              {
                v99 = 1;
              }

              else
              {
                v99 = ([v98 options] & 4) == 0;
              }

              if (([v98 options] & 2) != 0 || !v99)
              {
                v101 = [v98 storeRecord];
                v102 = [v101 sequenceRecord];

                if (v102)
                {
                  v103 = [v102 includedIdentifiers];
                  [v85 unionSet:v103];
                }
              }
            }

            v95 = [v94 countByEnumeratingWithState:&v210 objects:v218 count:16];
          }

          while (v95);
        }

        v208 = 0u;
        v209 = 0u;
        v206 = 0u;
        v207 = 0u;
        v104 = [a1 configuration];
        v105 = [v104 computedState];
        v106 = [v105 targets];

        v107 = [v106 countByEnumeratingWithState:&v206 objects:buf count:16];
        if (v107)
        {
          v108 = *v207;
          do
          {
            for (m = 0; m != v107; ++m)
            {
              if (*v207 != v108)
              {
                objc_enumerationMutation(v106);
              }

              v110 = *(*(&v206 + 1) + 8 * m);
              if ([v110 purpose] == 1 && (objc_msgSend(v110, "options") & 2) == 0)
              {
                v111 = [v110 storeRecord];
                v112 = [v111 sequenceRecord];

                if (v112)
                {
                  v113 = [v112 includedIdentifiers];
                  [v85 minusSet:v113];
                }
              }
            }

            v107 = [v106 countByEnumeratingWithState:&v206 objects:buf count:16];
          }

          while (v107);
        }
      }

      v203 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v195 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v114 = [a1 configuration];
      v115 = [v114 context];
      v116 = [v115 options];

      if ((v116 & 0x100) != 0)
      {
        v117 = [*(a1 + 104) storeRecord];
        v118 = [v117 tombstoneSequenceRecord];

        if (v118)
        {
          v119 = [(HDCloudSyncPushStoreOperation *)a1 _operationForExistingSequenceRecord:v118 includedChildSyncIdentites:v198];
          [v203 addObject:v119];
        }

        else
        {
          _HKInitializeLogging();
          v120 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            *v218 = 138543362;
            *&v218[4] = a1;
            _os_log_impl(&dword_228986000, v120, OS_LOG_TYPE_DEFAULT, "%{public}@: Sync options require separate tombstones but no tombstone sequence record exists. Creating it now.", v218, 0xCu);
          }

          v121 = [*(a1 + 104) storeRecord];
          v118 = [v121 addNewTombstoneSequenceHeaderRecordWithIncludedIdentifiers:v85 includedSyncIdentities:obj includedChildSyncIdentities:v198];

          v122 = [(HDCloudSyncPushStoreOperation *)a1 _operationForNewSequenceRecord:v118 replacingSequence:0 isRebaseline:0];
          [v203 addObject:v122];
        }

        [v195 addObject:@"tombstone"];
      }

      v123 = [*(a1 + 104) storeRecord];
      v192 = [v123 activeSequenceHeaderRecord];

      if (v192)
      {
        v124 = [(HDCloudSyncPushStoreOperation *)a1 _operationForExistingSequenceRecord:v192 includedChildSyncIdentites:v198];
        [v203 addObject:v124];

        [v195 addObject:@"active"];
      }

      v197 = v85;
      v193 = obj;
      v194 = v198;
      v125 = [*(a1 + 104) storeRecord];
      v126 = [v125 activeSequenceHeaderRecord];

      v127 = [*(a1 + 104) storeRecord];
      v128 = [v127 pendingSequenceHeaderRecord];

      v129 = [*(a1 + 104) storeRecord];
      v130 = [v129 currentSequenceHeaderRecord];

      if (!(v126 | v128))
      {
        _HKInitializeLogging();
        v131 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *v218 = 138543362;
          *&v218[4] = a1;
          _os_log_impl(&dword_228986000, v131, OS_LOG_TYPE_DEFAULT, "%{public}@: No current or active sequence; creating a new one and syncing.", v218, 0xCu);
        }

        v132 = [*(a1 + 104) storeRecord];
        v133 = objc_alloc_init(HDSyncAnchorMap);
        v134 = [v132 addNewSequenceHeaderRecordWithSyncAnchorMap:v133 includedIdentifiers:v197 includedSyncIdentities:v193 includedChildSyncIdentities:v194];

        v190 = [(HDCloudSyncPushStoreOperation *)a1 _operationForNewSequenceRecord:v134 replacingSequence:0 isRebaseline:1];

        goto LABEL_130;
      }

      v135 = [a1 configuration];
      if ([v135 rebaseProhibited])
      {

        v136 = a1;
LABEL_119:
        if (v128)
        {
          *(v136 + 128) = 9;
          _HKInitializeLogging();
          v150 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            *v218 = 138543362;
            *&v218[4] = a1;
            _os_log_impl(&dword_228986000, v150, OS_LOG_TYPE_DEFAULT, "%{public}@: Pushing to existing incomplete sequence.", v218, 0xCu);
          }

          v151 = [a1 configuration];
          v152 = [v151 computedState];
          [v152 setCountOfRebaselineOperations:{objc_msgSend(v152, "countOfRebaselineOperations") + 1}];

          v190 = [(HDCloudSyncPushStoreOperation *)a1 _operationForExistingSequenceRecord:v128 includedChildSyncIdentites:v194];
        }

        else
        {
          v190 = 0;
        }
      }

      else
      {
        v137 = [*(a1 + 104) store];
        v138 = [v137 supportsRebase];

        v136 = a1;
        if (!v138)
        {
          goto LABEL_119;
        }

        v139 = [a1 configuration];
        v140 = [v139 context];
        v141 = [v140 options];

        v142 = [*(a1 + 104) options];
        v143 = [v130 includedIdentifiers];
        v144 = [v143 isEqualToSet:v197];

        v145 = [v130 includedSyncIdentities];
        v146 = [v145 isEqualToSet:v193];

        v147 = v142 & 1;
        v136 = a1;
        if ((v141 >> 3))
        {
          *(a1 + 128) = 8;
        }

        if (v142)
        {
          *(a1 + 128) = 10;
        }

        v148 = v144 ^ 1;
        if ((v144 & 1) == 0)
        {
          *(a1 + 128) = 6;
        }

        v149 = v141 & 8;
        if (v146)
        {
          if (!(((v149 | v147) != 0) | v148 & 1 | (v146 ^ 1) & 1))
          {
            goto LABEL_119;
          }
        }

        else
        {
          *(a1 + 128) = 7;
        }

        _HKInitializeLogging();
        v153 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *v218 = 138544386;
          *&v218[4] = a1;
          *&v218[12] = 1024;
          *&v218[14] = v149 >> 3;
          *&v218[18] = 1024;
          *&v218[20] = v147;
          LOWORD(v219) = 1024;
          *(&v219 + 2) = v146 ^ 1;
          HIWORD(v219) = 1024;
          *v220 = v148;
          _os_log_impl(&dword_228986000, v153, OS_LOG_TYPE_DEFAULT, "%{public}@: Rebasing and pushing to new sequence record (requested: %{BOOL}d, target: %{BOOL}d, mismatch identities: %{BOOL}d, mismatch identifiers: %{BOOL}d).", v218, 0x24u);
        }

        v154 = *(a1 + 104);
        v155 = v194;
        v156 = v193;
        v157 = v197;
        v158 = [v154 storeRecord];
        v191 = [v158 pendingSequenceHeaderRecord];

        if (v191)
        {
          v159 = [*(a1 + 104) storeRecord];
          v160 = [v159 clearPendingSequenceHeaderRecord];
        }

        v161 = [*(a1 + 104) storeRecord];
        v162 = objc_alloc_init(HDSyncAnchorMap);
        v163 = [v161 addNewSequenceHeaderRecordWithSyncAnchorMap:v162 includedIdentifiers:v157 includedSyncIdentities:v156 includedChildSyncIdentities:v155];

        v190 = [(HDCloudSyncPushStoreOperation *)a1 _operationForNewSequenceRecord:v163 replacingSequence:v128 isRebaseline:1];
      }

LABEL_130:

      if (v190)
      {
        [v203 addObject:v190];
        [v195 addObject:@"current"];
      }

      _HKInitializeLogging();
      v164 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v165 = *(a1 + 104);
        v166 = v164;
        v167 = [v165 store];
        v168 = [*(a1 + 104) storeRecord];
        *v218 = 138543874;
        *&v218[4] = a1;
        *&v218[12] = 2114;
        *&v218[14] = v167;
        *&v218[22] = 2114;
        v219 = v168;
        _os_log_impl(&dword_228986000, v166, OS_LOG_TYPE_DEFAULT, "%{public}@: Pushing to store: %{public}@ with storeRecord: %{public}@", v218, 0x20u);
      }

      _HKInitializeLogging();
      v169 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v170 = *(a1 + 104);
        v171 = v169;
        v172 = [v170 store];
        v173 = [v195 componentsJoinedByString:{@", "}];
        v174 = [v197 count];
        v175 = [v197 allObjects];
        v176 = [v175 componentsJoinedByString:{@", "}];
        v177 = [v193 count];
        v178 = [v193 allObjects];
        v179 = [v178 componentsJoinedByString:{@", "}];
        *v218 = 138544898;
        *&v218[4] = a1;
        *&v218[12] = 2114;
        *&v218[14] = v172;
        *&v218[22] = 2114;
        v219 = v173;
        *v220 = 2048;
        *&v220[2] = v174;
        *&v220[10] = 2114;
        *&v220[12] = v176;
        v221 = 2048;
        v222 = v177;
        v223 = 2114;
        v224 = v179;
        _os_log_impl(&dword_228986000, v171, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Pushing to sequences (%{public}@) with %ld included sync identifiers: %{public}@ and %ld included sync identities: %{public}@", v218, 0x48u);
      }

      if ([v194 count])
      {
        _HKInitializeLogging();
        v180 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v181 = *(a1 + 104);
          v182 = v180;
          v183 = [v181 store];
          v184 = [v195 componentsJoinedByString:{@", "}];
          v185 = [v194 count];
          v186 = [v194 allObjects];
          v187 = [v186 componentsJoinedByString:{@", "}];
          *v218 = 138544386;
          *&v218[4] = a1;
          *&v218[12] = 2114;
          *&v218[14] = v183;
          *&v218[22] = 2114;
          v219 = v184;
          *v220 = 2048;
          *&v220[2] = v185;
          *&v220[10] = 2114;
          *&v220[12] = v187;
          _os_log_impl(&dword_228986000, v182, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Pushing to sequences (%{public}@) with %ld included child sync identities: %{public}@", v218, 0x34u);
        }
      }

      v84 = v198;
    }

    else
    {
      v203 = 0;
    }
  }

  else
  {
    v203 = 0;
  }

LABEL_142:
  v188 = *MEMORY[0x277D85DE8];

  return v203;
}

- (void)_recordCurrentSequenceEpochs
{
  v35 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [a1 target];
    v3 = [v2 storeRecord];

    if (v3)
    {
      v4 = [a1 target];
      v5 = [v4 storeRecord];
      v6 = [v5 activeSequenceHeaderRecord];

      v29 = v6;
      if (v6)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "baselineEpoch")}];
      }

      else
      {
        v7 = 0;
      }

      v9 = [a1 target];
      v10 = [v9 storeRecord];
      v11 = [v10 pendingSequenceHeaderRecord];

      if (v11)
      {
        v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "baselineEpoch")}];
      }

      else
      {
        v12 = 0;
      }

      v13 = [a1 target];
      v14 = [v13 storeRecord];
      v15 = [v14 tombstoneSequenceRecord];

      v27 = v11;
      if (v15)
      {
        v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v15, "baselineEpoch")}];
      }

      else
      {
        v16 = 0;
      }

      v28 = v7;
      v26 = v12;
      v17 = [[HDCloudSyncCachedStoreEpochs alloc] initWithActiveEpoch:v7 pendingEpoch:v12 tombstoneEpoch:v16];
      v18 = [a1 target];
      v19 = [v18 storeRecord];
      v20 = [v19 storeIdentifier];
      v21 = [a1 profile];
      v30 = 0;
      v22 = [HDCloudSyncStoreEntity cacheEpochs:v17 storeIdentifier:v20 profile:v21 error:&v30];
      v23 = v30;

      if (!v22)
      {
        _HKInitializeLogging();
        v24 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v32 = a1;
          v33 = 2114;
          v34 = v23;
          _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "%{public}@: Failed to cache sequence epochs with error: %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v32 = a1;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to cache sequence epochs because store record is not set.", buf, 0xCu);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __37__HDCloudSyncPushStoreOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [(HDCloudSyncPushStoreOperation *)v4 _recordCurrentSequenceEpochs];
  [(HDCloudSyncPushStoreOperation *)*(a1 + 32) _recordExcludedSyncIdentitiesFromPushSequenceOperations:?];
  [*(a1 + 32) finishWithSuccess:0 error:v5];
}

- (void)_recordExcludedSyncIdentitiesFromPushSequenceOperations:(void *)a1
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (!a1)
  {
    goto LABEL_34;
  }

  v5 = [a1 target];
  v6 = [v5 store];

  if (v6)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v8)
    {
      v28 = v4;
      v9 = 0;
      v10 = *v31;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            v14 = [v13 excludedSyncIdentities];
            v15 = v14;
            if (v9)
            {
              v16 = v14;
              if (!v14)
              {
                v2 = [MEMORY[0x277CBEB98] set];
                v16 = v2;
              }

              v17 = [v9 hk_intersection:v16];

              if (!v15)
              {
              }
            }

            else
            {
              if (v14)
              {
                v18 = v14;
              }

              else
              {
                v18 = [MEMORY[0x277CBEB98] set];
              }

              v17 = v18;
            }

            v9 = v17;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v8);

      if (!v9)
      {
        v8 = 0;
        v4 = v28;
        goto LABEL_30;
      }

      v4 = v28;
      if ([v9 count])
      {
        v8 = [MEMORY[0x277CBEB98] setWithSet:v9];
      }

      else
      {
        v8 = 0;
      }

      v7 = v9;
    }

LABEL_30:
    v20 = [a1 target];
    v21 = [v20 store];
    v22 = [v21 storeIdentifier];
    v23 = [a1 profile];
    v29 = 0;
    v24 = [HDCloudSyncStoreEntity cacheExcludedSyncIdentities:v8 storeIdentifier:v22 profile:v23 error:&v29];
    v25 = v29;

    if (!v24)
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v35 = a1;
        v36 = 2114;
        v37 = v25;
        _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "%{public}@: Failed to cache excluded sync identities with error: %{public}@", buf, 0x16u);
      }
    }

    goto LABEL_34;
  }

  _HKInitializeLogging();
  v19 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v35 = a1;
    _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Failed to cache excluded sync identities because store is not set.", buf, 0xCu);
  }

LABEL_34:

  v27 = *MEMORY[0x277D85DE8];
}

void __37__HDCloudSyncPushStoreOperation_main__block_invoke_2(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  [(HDCloudSyncPushStoreOperation *)*(a1 + 32) _recordCurrentSequenceEpochs];
  [(HDCloudSyncPushStoreOperation *)*(a1 + 32) _recordExcludedSyncIdentitiesFromPushSequenceOperations:?];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2[13] storeRecord];
    v4 = [v3 oldSequenceHeaderRecord];

    v5 = [v2[13] storeRecord];
    v6 = [v5 currentSequenceHeaderRecord];
    v7 = [v6 isActive];

    if (v7)
    {
      v8 = v4 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      [v2 finishWithSuccess:1 error:0];
    }

    else
    {
      v9 = [HDCloudSyncDeleteSequenceOperation alloc];
      v10 = [v2 configuration];
      v16 = v4;
      v17[0] = v2[13];
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v12 = [(HDCloudSyncDeleteSequenceOperation *)v9 initWithConfiguration:v10 targetsBySequence:v11];

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __69__HDCloudSyncPushStoreOperation__sequencePushesDidFinishSuccessfully__block_invoke;
      v15[3] = &unk_278613088;
      v15[4] = v2;
      [(HDCloudSyncOperation *)v12 setOnError:v15];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __69__HDCloudSyncPushStoreOperation__sequencePushesDidFinishSuccessfully__block_invoke_2;
      v14[3] = &unk_278613060;
      v14[4] = v2;
      [(HDCloudSyncOperation *)v12 setOnSuccess:v14];
      [(HDCloudSyncOperation *)v12 start];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __77__HDCloudSyncPushStoreOperation__currentOwnedSyncIdentitiesForPushWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identity];
  [v2 addObject:v3];

  return 1;
}

uint64_t __82__HDCloudSyncPushStoreOperation__currentOwnedChildSyncIdentitiesForPushWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 profile];
  v8 = [v7 syncIdentityManager];
  v20 = 0;
  v9 = [v8 childIdentitiesForCurrentSyncIdentityWithTransaction:v6 error:&v20];

  v10 = v20;
  if (v9)
  {
    v11 = [MEMORY[0x277CBEB98] setWithArray:v9];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
LABEL_3:
    v14 = 1;
    goto LABEL_4;
  }

  _HKInitializeLogging();
  v17 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v19 = *(a1 + 32);
    *buf = 138543618;
    v22 = v19;
    v23 = 2114;
    v24 = v10;
    _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Unable to get child sync identities from local storage: %{public}@", buf, 0x16u);
  }

  v13 = v10;
  if (!v13)
  {
    goto LABEL_3;
  }

  if (a3)
  {
    v18 = v13;
    v14 = 0;
    *a3 = v13;
  }

  else
  {
    _HKLogDroppedError();
    v14 = 0;
  }

LABEL_4:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (HDCloudSyncCompoundOperation)_operationForNewSequenceRecord:(void *)a3 replacingSequence:(uint64_t)a4 isRebaseline:
{
  v34[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [a1 configuration];
  v10 = [v9 computedState];
  [v10 setCountOfRebaselineOperations:{objc_msgSend(v10, "countOfRebaselineOperations") + a4}];

  v11 = [HDCloudSyncCompoundOperation alloc];
  v12 = [a1 configuration];
  v13 = [a1 cloudState];
  v14 = [(HDCloudSyncCompoundOperation *)v11 initWithConfiguration:v12 cloudState:v13 name:@"Setup & Push" continueOnSubOperationError:0];

  v15 = [v8 recordID];
  v16 = [v7 recordID];
  v17 = [v15 isEqual:v16];

  if (v17)
  {
    v18 = [HDCloudSyncModifyRecordsOperation alloc];
    v19 = [a1 configuration];
    v20 = [a1[13] container];
    v21 = [v8 recordID];
    v34[0] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    v23 = [(HDCloudSyncModifyRecordsOperation *)v18 initWithConfiguration:v19 container:v20 recordsToSave:0 recordIDsToDelete:v22];

    [(HDCloudSyncCompoundOperation *)v14 addOperation:v23 transitionHandler:0];
    v8 = 0;
  }

  v24 = [HDCloudSyncStartSequenceOperation alloc];
  v25 = [a1 configuration];
  v26 = [a1 cloudState];
  v27 = [(HDCloudSyncStartSequenceOperation *)v24 initWithConfiguration:v25 cloudState:v26 target:a1[13] sequence:v7 replacingSequence:v8 shouldClearRebaselineDeadline:a4];

  v28 = [HDCloudSyncPushSequenceOperation alloc];
  v29 = [a1 configuration];
  v30 = [a1 cloudState];
  v31 = [(HDCloudSyncPushSequenceOperation *)v28 initWithConfiguration:v29 cloudState:v30 target:a1[13] sequence:v7];

  [(HDCloudSyncCompoundOperation *)v14 addOperation:v27 transitionHandler:0];
  [(HDCloudSyncCompoundOperation *)v14 addOperation:v31 transitionHandler:&__block_literal_global_98];

  v32 = *MEMORY[0x277D85DE8];

  return v14;
}

void __95__HDCloudSyncPushStoreOperation__operationForNewSequenceRecord_replacingSequence_isRebaseline___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 sequenceState];
  [v4 setSequenceState:v5];
}

- (HDCloudSyncPushSequenceOperation)_operationForExistingSequenceRecord:(void *)a3 includedChildSyncIdentites:
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 includedChildSyncIdentities];
  v8 = [v7 isEqualToSet:v6];

  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v6 allObjects];
      v12 = [v11 componentsJoinedByString:{@", "}];
      v19 = 138543618;
      v20 = a1;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating sequence record to include child sync identities: %{public}@.", &v19, 0x16u);
    }

    [v5 setIncludedChildSyncIdentities:v6];
  }

  v13 = [HDCloudSyncPushSequenceOperation alloc];
  v14 = [a1 configuration];
  v15 = [a1 cloudState];
  v16 = [(HDCloudSyncPushSequenceOperation *)v13 initWithConfiguration:v14 cloudState:v15 target:a1[13] sequence:v5];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __69__HDCloudSyncPushStoreOperation__sequencePushesDidFinishSuccessfully__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 cloudState];
  [*(a1 + 32) setCloudState:v3];

  v4 = *(a1 + 32);

  return [v4 finishWithSuccess:1 error:0];
}

- (id)analyticsDictionary
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = HDCloudSyncPushStoreOperation;
  v3 = [(HDCloudSyncOperation *)&v9 analyticsDictionary];
  if (self->_rebaseReason != -1)
  {
    v10 = @"rebaseReason";
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v11[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = [v5 hk_dictionaryByAddingEntriesFromDictionary:v3];

    v3 = v6;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

@end