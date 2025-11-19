@interface HDCloudSyncValidatePushTargetOperation
+ (id)operationTagDependencies;
- (HDCloudSyncValidatePushTargetOperation)initWithConfiguration:(id)a3;
- (uint64_t)_validateAnchorRangesForSequenceRecord:(void *)a3 target:(void *)a4 errorOut:;
- (uint64_t)_validateCurrentSequenceForTarget:(void *)a3 errorOut:;
- (uint64_t)_validateTargets:(void *)a3 errorOut:;
- (void)_requireRebaseForTarget:(void *)a1;
- (void)_rollOwnershipIdentiferAndFinish;
- (void)main;
@end

@implementation HDCloudSyncValidatePushTargetOperation

+ (id)operationTagDependencies
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"compute-push-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (HDCloudSyncValidatePushTargetOperation)initWithConfiguration:(id)a3
{
  v7.receiver = self;
  v7.super_class = HDCloudSyncValidatePushTargetOperation;
  v3 = [(HDCloudSyncOperation *)&v7 initWithConfiguration:a3 cloudState:0];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    targetsBySequenceToDelete = v3->_targetsBySequenceToDelete;
    v3->_targetsBySequenceToDelete = v4;
  }

  return v3;
}

- (void)main
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 computedState];
  v5 = [v4 pushTargets];
  targets = self->_targets;
  self->_targets = v5;

  if ([(NSArray *)self->_targets count])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = self->_targets;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v39 objects:&buf count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v39 + 1) + 8 * i);
          v14 = [v13 store];

          if (!v14)
          {
            v20 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Target's %@ push store not set when beginning push target validation.", v13}];
            v19 = v20;
            if (v20)
            {
              v21 = v20;
            }

            v18 = 0;
            goto LABEL_16;
          }

          v15 = [v13 store];
          v16 = [v15 shardPredicate];
          v17 = [v16 type];

          if (v17 != 2)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v39 objects:&buf count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v18 = v7;
    v19 = 0;
LABEL_16:

    v22 = v19;
    if (v18)
    {
      if ([v18 count])
      {
        v38 = v22;
        v23 = [(HDCloudSyncValidatePushTargetOperation *)self _validateTargets:v18 errorOut:&v38];
        v24 = v38;

        if (v23)
        {
          if (self->_requiresOwnershipRoll)
          {
            [(HDCloudSyncValidatePushTargetOperation *)self _rollOwnershipIdentiferAndFinish];
LABEL_33:
            v22 = v24;
            goto LABEL_34;
          }

          if ([(NSMutableDictionary *)self->_targetsBySequenceToDelete count])
          {
            v33 = [HDCloudSyncDeleteSequenceOperation alloc];
            v34 = [(HDCloudSyncOperation *)self configuration];
            v35 = [(NSMutableDictionary *)self->_targetsBySequenceToDelete copy];
            v36 = [(HDCloudSyncDeleteSequenceOperation *)v33 initWithConfiguration:v34 targetsBySequence:v35];

            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v44 = __76__HDCloudSyncValidatePushTargetOperation__deleteOldSequenceRecordsAndFinish__block_invoke;
            v45 = &unk_278613088;
            v46 = self;
            [(HDCloudSyncOperation *)v36 setOnError:&buf];
            *&v39 = MEMORY[0x277D85DD0];
            *(&v39 + 1) = 3221225472;
            *&v40 = __76__HDCloudSyncValidatePushTargetOperation__deleteOldSequenceRecordsAndFinish__block_invoke_2;
            *(&v40 + 1) = &unk_278613060;
            *&v41 = self;
            [(HDCloudSyncOperation *)v36 setOnSuccess:&v39];
            [(HDCloudSyncOperation *)v36 start];

            goto LABEL_33;
          }

          v30 = self;
          v31 = 1;
          v32 = 0;
        }

        else
        {
          v30 = self;
          v31 = 0;
          v32 = v24;
        }

        [(HDCloudSyncOperation *)v30 finishWithSuccess:v31 error:v32];
        goto LABEL_33;
      }

      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = self;
        _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: No filtered targets to validate.", &buf, 0xCu);
      }

      v26 = self;
      v27 = 1;
      v28 = 0;
    }

    else
    {
      v26 = self;
      v27 = 0;
      v28 = v22;
    }

    [(HDCloudSyncOperation *)v26 finishWithSuccess:v27 error:v28];
LABEL_34:

    goto LABEL_35;
  }

  _HKInitializeLogging();
  v25 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: No targets to validate.", &buf, 0xCu);
  }

  [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
LABEL_35:
  v37 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_validateTargets:(void *)a3 errorOut:
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v22 = v5;
      v9 = *v25;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 120);
        if (v11)
        {
LABEL_21:
          v5 = v22;
          goto LABEL_23;
        }

        v12 = *(*(&v24 + 1) + 8 * v10);
        v13 = [v12 storeRecord];
        v14 = [v13 currentSequenceHeaderRecord];

        if (v14)
        {
          v15 = [v12 storeRecord];
          v16 = [v15 oldSequenceHeaderRecord];

          if (!v16)
          {
            v19 = [(HDCloudSyncValidatePushTargetOperation *)a1 _validateCurrentSequenceForTarget:v12 errorOut:a3];

            if ((v19 & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_18;
          }

          v17 = [v14 isActive];
          if (v17 != [v16 isActive] && (!objc_msgSend(v14, "isActive") || (objc_msgSend(v16, "isActive") & 1) != 0))
          {
            v18 = [(HDCloudSyncValidatePushTargetOperation *)a1 _validateCurrentSequenceForTarget:v12 errorOut:a3];

            if ((v18 & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_18;
          }

          [*(a1 + 112) setObject:v12 forKeyedSubscript:{v16, v22}];
        }

LABEL_18:
        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          v11 = 1;
          goto LABEL_21;
        }
      }
    }

    v11 = 1;
LABEL_23:
  }

  else
  {
    v11 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_rollOwnershipIdentiferAndFinish
{
  if (a1)
  {
    v2 = [a1 profile];
    v3 = [v2 cloudSyncManager];
    v4 = [v3 ownerIdentifierManager];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __74__HDCloudSyncValidatePushTargetOperation__rollOwnershipIdentiferAndFinish__block_invoke;
    v5[3] = &unk_2786130B0;
    v5[4] = a1;
    [v4 rollOwnerDifferentiatorForReason:@"Found anchors from the future" completion:v5];
  }
}

- (uint64_t)_validateCurrentSequenceForTarget:(void *)a3 errorOut:
{
  v159 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [v4 storeRecord];
  v6 = [v5 currentSequenceHeaderRecord];

  if ([v6 childRecordCount] >= 501)
  {
    v7 = [a1 configuration];
    v8 = [v7 rebaseProhibited];

    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    v10 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = v9;
        v12 = HDCloudSyncRebaseReasonToString(0);
        *buf = 138543874;
        *&buf[4] = a1;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2114;
        v146 = v6;
        _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: rebase required but prohibited (%{public}@) for sequence record %{public}@", buf, 0x20u);
      }
    }

    else
    {
      if (v10)
      {
        v13 = v9;
        v14 = HDCloudSyncRebaseReasonToString(0);
        *buf = 138543874;
        *&buf[4] = a1;
        *&buf[12] = 2114;
        *&buf[14] = v14;
        *&buf[22] = 2114;
        v146 = v6;
        _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: rebase required (%{public}@) for sequence record %{public}@", buf, 0x20u);
      }

      v15 = kHDEventNameCloudSync;
      v140 = @"operation";
      v141 = @"rebase-reason";
      *buf = &unk_283CB0BE8;
      *&buf[8] = &unk_283CB0BE8;
      v142 = @"record-count";
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "childRecordCount")}];
      *&buf[16] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v140 count:3];
      HDPowerLog(v15, v17, 2);

      [(HDCloudSyncValidatePushTargetOperation *)a1 _requireRebaseForTarget:v4];
    }
  }

  v123 = v4;
  v18 = [v123 storeRecord];
  v19 = [v18 currentSequenceHeaderRecord];

  v20 = v123;
  if (v19 && ([(HDCloudSyncValidatePushTargetOperation *)a1 _validateAnchorRangesForSequenceRecord:v19 target:v123 errorOut:a3]& 1) == 0)
  {
    goto LABEL_16;
  }

  v21 = [v123 storeRecord];
  v22 = [v21 oldSequenceHeaderRecord];

  v20 = v123;
  if (v22 && ([(HDCloudSyncValidatePushTargetOperation *)a1 _validateAnchorRangesForSequenceRecord:v22 target:v123 errorOut:a3]& 1) == 0)
  {

LABEL_16:
    v28 = 0;
    goto LABEL_71;
  }

  v23 = v123;
  v24 = [v23 store];
  v135[0] = 0;
  v25 = [v24 persistedStateWithError:v135];
  v26 = v135[0];

  if (v25)
  {
    v27 = [a1 configuration];
    if ([v27 rebaseProhibited])
    {
    }

    else
    {
      v32 = [v25 rebaseDeadline];
      v33 = v32 == 0;

      if (!v33)
      {
        v34 = [v25 rebaseDeadline];
        v35 = [a1 configuration];
        v36 = [v35 syncDate];
        [v34 timeIntervalSinceDate:v36];
        v38 = v37;

        v39 = MEMORY[0x277CCE2B8];
        if (v38 < *MEMORY[0x277CCE2B8])
        {
          _HKInitializeLogging();
          v40 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v41 = v40;
            v42 = [v23 store];
            v43 = HDCloudSyncRebaseReasonToString(1);
            v44 = [v25 rebaseDeadline];
            v45 = *v39;
            *buf = 138544642;
            *&buf[4] = a1;
            *&buf[12] = 2114;
            *&buf[14] = v42;
            *&buf[22] = 2114;
            v146 = v43;
            v147 = 2114;
            v148 = v44;
            v149 = 2048;
            v150 = v45;
            v151 = 2048;
            v152 = v38;
            _os_log_impl(&dword_228986000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] rebase required (%{public}@), rebase deadline of %{public}@ (trigger threshold is %0.1lfs, remaining interval is %0.1lfs)", buf, 0x3Eu);
          }

          v46 = kHDEventNameCloudSync;
          *&v153 = @"operation";
          *(&v153 + 1) = @"rebase-reason";
          v140 = &unk_283CB0BE8;
          v141 = &unk_283CB0C00;
          *&v154 = @"deadline";
          v47 = MEMORY[0x277CCABB0];
          v48 = [v25 rebaseDeadline];
          [v48 timeIntervalSinceReferenceDate];
          v49 = [v47 numberWithDouble:?];
          v142 = v49;
          v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v140 forKeys:&v153 count:3];
          HDPowerLog(v46, v50, 2);

          [(HDCloudSyncValidatePushTargetOperation *)a1 _requireRebaseForTarget:v23];
        }
      }
    }

LABEL_26:
    v122 = v23;
    v51 = [a1 configuration];
    v52 = [v51 repository];
    v53 = [v122 zoneIdentifier];
    v54 = [v53 containerIdentifier];
    *&v121[4] = [v52 containerForContainerIdentifier:v54];

    if (!*&v121[4])
    {
      v86 = MEMORY[0x277CCA9B8];
      v87 = [v122 zoneIdentifier];
      v88 = [v87 containerIdentifier];
      v89 = [v86 hk_error:723 format:{@"Unable to find container for identifier %@", v88}];
      *v121 = v89 == 0;
      if (v89)
      {
        if (a3)
        {
          v90 = v89;
          *a3 = v89;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_70;
    }

    v55 = [v122 storeRecord];
    v56 = [v55 currentSequenceHeaderRecord];

    if (!v56)
    {
      *v121 = 1;
LABEL_70:

      v20 = v123;
      v28 = *v121;
      goto LABEL_71;
    }

    v57 = [v122 storeRecord];
    v58 = [HDCloudSyncCachedZone alloc];
    v59 = [v122 zoneIdentifier];
    v60 = [a1 configuration];
    v61 = [v60 repository];
    v62 = [a1 configuration];
    v63 = [v62 accessibilityAssertion];
    v64 = [(HDCloudSyncCachedZone *)v58 initForZoneIdentifier:v59 repository:v61 accessibilityAssertion:v63];

    v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v66 = objc_opt_class();
    v130 = 0;
    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 3221225472;
    v127[2] = __92__HDCloudSyncValidatePushTargetOperation__validateCurrentSequenceChangesForTarget_errorOut___block_invoke;
    v127[3] = &unk_27861D8D0;
    v127[4] = a1;
    v117 = v57;
    v128 = v117;
    v120 = v65;
    v129 = v120;
    v118 = v64;
    *v121 = [v64 recordsForClass:v66 epoch:0 error:&v130 enumerationHandler:v127];
    v119 = v130;
    if ((v121[0] & 1) == 0)
    {
      _HKInitializeLogging();
      v91 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v109 = v91;
        v110 = [v64 zoneIdentifier];
        *buf = 138543618;
        *&buf[4] = a1;
        *&buf[12] = 2114;
        *&buf[14] = v110;
        _os_log_error_impl(&dword_228986000, v109, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached change records from zone %{public}@", buf, 0x16u);
      }

      v92 = v119;
      v93 = v92;
      if (v92)
      {
        if (a3)
        {
          v94 = v92;
          *a3 = v93;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_69;
    }

    [v120 sortUsingSelector:sel_compare_];
    v67 = v120;
    v68 = [v67 lastObject];
    v116 = v68;
    if (v68)
    {
      v69 = [v68 finalForSequence];
      _HKInitializeLogging();
      v70 = *MEMORY[0x277CCC328];
      v71 = *MEMORY[0x277CCC328];
      if (v69)
      {
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          v72 = v70;
          v73 = [v67 count];
          *v157 = 138543618;
          *&v157[4] = a1;
          *&v157[12] = 2048;
          *&v157[14] = v73;
          _os_log_impl(&dword_228986000, v72, OS_LOG_TYPE_INFO, "%{public}@: Checking for hole in %ld fetched records", v157, 0x16u);
        }

        *v157 = 0;
        *&v157[8] = v157;
        *&v157[16] = 0x2020000000;
        v158 = 0;
        v115 = objc_opt_new();
        v155 = 0u;
        v156 = 0u;
        v153 = 0u;
        v154 = 0u;
        obj = v67;
        v74 = 0;
        v75 = [obj countByEnumeratingWithState:&v153 objects:buf count:16];
        if (v75)
        {
          v76 = *v154;
          while (2)
          {
            for (i = 0; i != v75; ++i)
            {
              if (*v154 != v76)
              {
                objc_enumerationMutation(obj);
              }

              v78 = *(*(&v153 + 1) + 8 * i);
              v79 = [v78 decodedSyncAnchorRangeMap];
              _HKInitializeLogging();
              v80 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
              {
                v81 = v80;
                if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
                {
                  v82 = [v78 record];
                  v83 = [v82 recordID];
                  v84 = [v83 recordName];
                  *v143 = 67109634;
                  *v144 = v74;
                  *&v144[4] = 2114;
                  *&v144[6] = v84;
                  *&v144[14] = 2114;
                  *&v144[16] = v79;
                  _os_log_impl(&dword_228986000, v81, OS_LOG_TYPE_INFO, "\t%02d: [Record: %{public}@] %{public}@", v143, 0x1Cu);

                  ++v74;
                }
              }

              if (!v79 || ![v79 anchorRangeCount])
              {
                _HKInitializeLogging();
                v97 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                {
                  v112 = [v78 record];
                  v113 = [v112 recordID];
                  v114 = [v113 recordName];
                  *v143 = 138543618;
                  *v144 = a1;
                  *&v144[8] = 2114;
                  *&v144[10] = v114;
                  _os_log_error_impl(&dword_228986000, v97, OS_LOG_TYPE_ERROR, "%{public}@: [Record: %{public}@]: ordered change record with nil or empty anchor range map found, this may indicate a hole in the sequence", v143, 0x16u);
                }

                *(*&v157[8] + 24) = 1;
LABEL_75:

                goto LABEL_76;
              }

              v135[0] = MEMORY[0x277D85DD0];
              v135[1] = 3221225472;
              v135[2] = __85__HDCloudSyncValidatePushTargetOperation__orderedChangeRecordSequenceRequiresRebase___block_invoke;
              v135[3] = &unk_27861D8F8;
              v136 = v115;
              v137 = a1;
              v138 = v78;
              v139 = v157;
              [v79 enumerateAnchorRangesAndEntityIdentifiersWithBlock:v135];
              v85 = *(*&v157[8] + 24);

              if (v85)
              {
                goto LABEL_75;
              }
            }

            v75 = [obj countByEnumeratingWithState:&v153 objects:buf count:16];
            if (v75)
            {
              continue;
            }

            break;
          }
        }

LABEL_76:

        if (*(*&v157[8] + 24) != 1)
        {

          _Block_object_dispose(v157, 8);
          goto LABEL_69;
        }

        _HKInitializeLogging();
        v98 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          v111 = [obj count];
          *v143 = 138543618;
          *v144 = a1;
          *&v144[8] = 2048;
          *&v144[10] = v111;
          _os_log_error_impl(&dword_228986000, v98, OS_LOG_TYPE_ERROR, "%{public}@: Found hole in %ld fetched records", v143, 0x16u);
        }

        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v125 = obj;
        v99 = [v125 countByEnumeratingWithState:&v131 objects:&v140 count:16];
        if (v99)
        {
          v100 = *v132;
          do
          {
            for (j = 0; j != v99; ++j)
            {
              if (*v132 != v100)
              {
                objc_enumerationMutation(v125);
              }

              v102 = *(*(&v131 + 1) + 8 * j);
              v103 = [v102 decodedSyncAnchorRangeMap];
              _HKInitializeLogging();
              v104 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
              {
                v105 = [v102 record];
                v106 = [v105 recordID];
                v107 = [v106 recordName];
                *v143 = 67109634;
                *v144 = v74;
                *&v144[4] = 2114;
                *&v144[6] = v107;
                *&v144[14] = 2114;
                *&v144[16] = v103;
                _os_log_impl(&dword_228986000, v104, OS_LOG_TYPE_DEFAULT, "\t%02d: [Record: %{public}@] %{public}@", v143, 0x1Cu);

                ++v74;
              }
            }

            v99 = [v125 countByEnumeratingWithState:&v131 objects:&v140 count:16];
          }

          while (v99);
        }

        v108 = *(*&v157[8] + 24);
        _Block_object_dispose(v157, 8);

        if ((v108 & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          *v157 = 138543618;
          *&v157[4] = a1;
          *&v157[12] = 2114;
          *&v157[14] = v116;
          _os_log_error_impl(&dword_228986000, v70, OS_LOG_TYPE_ERROR, "%{public}@: Final ordered change record (%{public}@) is not final for sequence; rebase required to repair damage.", v157, 0x16u);
        }
      }

      [(HDCloudSyncValidatePushTargetOperation *)a1 _requireRebaseForTarget:v122];
    }

    else
    {
    }

LABEL_69:

    goto LABEL_70;
  }

  v29 = v26;
  if (!v29)
  {

    goto LABEL_26;
  }

  v30 = v29;
  if (a3)
  {
    v31 = v29;
    *a3 = v30;
  }

  else
  {
    _HKLogDroppedError();
  }

  v28 = 0;
  v20 = v123;
LABEL_71:

  v95 = *MEMORY[0x277D85DE8];
  return v28;
}

void __76__HDCloudSyncValidatePushTargetOperation__deleteOldSequenceRecordsAndFinish__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(v2 + 112) allValues];
  v9 = 0;
  v4 = [(HDCloudSyncValidatePushTargetOperation *)v2 _validateTargets:v3 errorOut:&v9];
  v5 = v9;

  v6 = *(a1 + 32);
  if ((v4 & 1) == 0)
  {
    v7 = 0;
    v8 = v5;
LABEL_6:
    [v6 finishWithSuccess:v7 error:v8];
    goto LABEL_7;
  }

  if (v6[120] != 1)
  {
    v7 = 1;
    v8 = 0;
    goto LABEL_6;
  }

  [(HDCloudSyncValidatePushTargetOperation *)v6 _rollOwnershipIdentiferAndFinish];
LABEL_7:
}

void __74__HDCloudSyncValidatePushTargetOperation__rollOwnershipIdentiferAndFinish__block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v7 = [v4[13] hk_map:&__block_literal_global_75];
    v5 = [*(a1 + 32) configuration];
    v6 = [v5 computedState];
    [v6 replaceTargets:v7];

    [*(a1 + 32) finishWithSuccess:1 error:0];
  }

  else
  {

    [v4 finishWithSuccess:0 error:a3];
  }
}

- (uint64_t)_validateAnchorRangesForSequenceRecord:(void *)a3 target:(void *)a4 errorOut:
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [a1 configuration];
  v10 = [v9 rebaseProhibited];

  if ((v10 & 1) == 0)
  {
    v12 = [v8 store];
    v13 = [v12 syncStoreForEpoch:{objc_msgSend(v7, "baselineEpoch")}];

    v41 = 0;
    v14 = [v13 getPersistedAnchorMapWithError:&v41];
    v15 = v41;
    v16 = v15;
    if (v14)
    {
      v17 = [a1 configuration];
      v18 = [HDCloudSyncPushSequenceOperation unfrozenChangeRecordsForPushTarget:v8 sequenceRecord:v7 configuration:v17 error:a4];

      if (v18)
      {
        v19 = [a1 configuration];
        v20 = [HDCloudSyncPushSequenceOperation shouldPerformRecentRecordRollingForUnfrozenRecords:v18 configuration:v19];

        if (v20)
        {
          [v7 frozenSyncAnchorMap];
        }

        else
        {
          [v7 syncAnchorMap];
        }
        v23 = ;
        if (([v14 isEqual:v23] & 1) == 0)
        {
          v24 = @"pushed";
          if (v20)
          {
            v24 = @"frozen";
          }

          v25 = v24;
          v37 = 0;
          v38 = &v37;
          v39 = 0x2020000000;
          v40 = 0;
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __97__HDCloudSyncValidatePushTargetOperation__validateAnchorRangesForSequenceRecord_target_errorOut___block_invoke;
          v30[3] = &unk_27861D8A8;
          v36 = v20;
          v31 = v14;
          v32 = a1;
          v26 = v25;
          v33 = v26;
          v34 = v13;
          v35 = &v37;
          [v23 enumerateAnchorsAndEntityIdentifiersWithBlock:v30];
          if (*(v38 + 24) == 1)
          {
            a1[120] = 1;
            _HKInitializeLogging();
            v27 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v43 = a1;
              v44 = 2112;
              v45 = v26;
              _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "%{public}@: Found %@ anchors from the future", buf, 0x16u);
            }
          }

          _Block_object_dispose(&v37, 8);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v21 = v15;
      v18 = v21;
      if (!v21)
      {
LABEL_19:
        v11 = 1;
        goto LABEL_22;
      }

      if (a4)
      {
        v22 = v21;
        v11 = 0;
        *a4 = v18;
LABEL_22:

        goto LABEL_23;
      }

      _HKLogDroppedError();
    }

    v11 = 0;
    goto LABEL_22;
  }

  v11 = 1;
LABEL_23:

  v28 = *MEMORY[0x277D85DE8];
  return v11;
}

void __97__HDCloudSyncValidatePushTargetOperation__validateAnchorRangesForSequenceRecord_target_errorOut___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) anchorForSyncEntityIdentifier:v5];
  v7 = v6;
  if (v6 <= a3)
  {
    if (v6 < a3)
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 40);
        v15 = *(a1 + 48);
        v16 = 138544386;
        v17 = v14;
        v18 = 2114;
        v19 = v15;
        v20 = 2048;
        v21 = a3;
        v22 = 2048;
        v23 = v7;
        v24 = 2114;
        v25 = v5;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Sequence Record %{public}@ sync anchor (%lld) greater than local sync anchor (%lld) for sync entity %{public}@. Invalid state can be fixed with a forced ownership change", &v16, 0x34u);
      }
    }
  }

  else if ((*(a1 + 72) & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v16 = 138544642;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2048;
      v21 = a3;
      v22 = 2048;
      v23 = v7;
      v24 = 2114;
      v25 = v5;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Sequence Record %{public}@ sync anchor (%lld) less than local sync anchor (%lld) for sync entity %{public}@. Last upload to store %{public}@ must have failed", &v16, 0x3Eu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_requireRebaseForTarget:(void *)a1
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 targetByAddingOptions:1];

  v5 = [a1 configuration];
  v6 = [v5 computedState];
  v9[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v6 replaceTargets:v7];

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __92__HDCloudSyncValidatePushTargetOperation__validateCurrentSequenceChangesForTarget_errorOut___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 record];
  v6 = *(a1 + 40);
  v7 = v5;
  v8 = v6;
  if (v4 && [HDCloudSyncChangeRecord isChangeRecord:v7])
  {
    v9 = [v8 currentSequenceHeaderRecord];
    v10 = [HDCloudSyncChangeRecord isChangeRecord:v7 inSequence:v9];

    if (v10)
    {
      [*(a1 + 48) addObject:v3];
    }
  }

  else
  {
  }

  return 1;
}

void __85__HDCloudSyncValidatePushTargetOperation__orderedChangeRecordSequenceRequiresRebase___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = [*(a1 + 32) anchorForSyncEntityIdentifier:v9];
  if (a3 <= v10)
  {
    [*(a1 + 32) setAnchor:a4 forSyncEntityIdentifier:v9];
  }

  else
  {
    v11 = v10;
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      v16 = v12;
      v17 = [v14 record];
      v18 = [v17 recordID];
      v19 = [v18 recordName];
      v20 = 138544386;
      v21 = v15;
      v22 = 2114;
      v23 = v19;
      v24 = 2114;
      v25 = v9;
      v26 = 2048;
      v27 = a3;
      v28 = 2048;
      v29 = v11;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [Record: %{public}@]: hole found for %{public}@: %lld != %lld", &v20, 0x34u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a5 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end