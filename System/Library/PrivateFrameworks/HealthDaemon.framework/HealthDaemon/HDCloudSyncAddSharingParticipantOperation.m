@interface HDCloudSyncAddSharingParticipantOperation
- (BOOL)requireExistingRelationship;
- (CKShareParticipant)participant;
- (HDCloudSyncAddSharingParticipantOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (NSArray)zoneIdentifiers;
- (void)_foundOwnerParticipant:(uint64_t)a1;
- (void)main;
- (void)setParticipant:(id)a3;
- (void)setRequireExistingRelationship:(BOOL)a3;
- (void)setZoneIdentifiers:(id)a3;
@end

@implementation HDCloudSyncAddSharingParticipantOperation

- (HDCloudSyncAddSharingParticipantOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v15.receiver = self;
  v15.super_class = HDCloudSyncAddSharingParticipantOperation;
  v4 = [(HDCloudSyncOperation *)&v15 initWithConfiguration:a3 cloudState:a4];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    clonedParticipants = v5->_clonedParticipants;
    v5->_clonedParticipants = v6;

    zoneIdentifiers = v5->_zoneIdentifiers;
    v9 = MEMORY[0x277CBEBF8];
    v5->_zoneIdentifiers = MEMORY[0x277CBEBF8];

    v10 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v5->_taskGroup;
    v5->_taskGroup = v10;

    [(HDSynchronousTaskGroup *)v5->_taskGroup setDelegate:v5];
    shareURLs = v5->_shareURLs;
    v5->_shareURLs = v9;

    invitationTokensByShareURL = v5->_invitationTokensByShareURL;
    v5->_invitationTokensByShareURL = MEMORY[0x277CBEC10];
  }

  return v5;
}

- (CKShareParticipant)participant
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_participant;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setParticipant:(id)a3
{
  v5 = a3;
  if ([(HDCloudSyncOperation *)self status])
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HDCloudSyncAddSharingParticipantOperation.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  os_unfair_lock_lock(&self->_lock);
  participant = self->_participant;
  self->_participant = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)zoneIdentifiers
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_zoneIdentifiers;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setZoneIdentifiers:(id)a3
{
  v5 = a3;
  if ([(HDCloudSyncOperation *)self status])
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HDCloudSyncAddSharingParticipantOperation.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = [v5 copy];

  zoneIdentifiers = self->_zoneIdentifiers;
  self->_zoneIdentifiers = v6;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)requireExistingRelationship
{
  os_unfair_lock_lock(&self->_lock);
  requireExistingRelationship = self->_requireExistingRelationship;
  os_unfair_lock_unlock(&self->_lock);
  return requireExistingRelationship;
}

- (void)setRequireExistingRelationship:(BOOL)a3
{
  if ([(HDCloudSyncOperation *)self status])
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HDCloudSyncAddSharingParticipantOperation.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusPending"}];
  }

  os_unfair_lock_lock(&self->_lock);
  self->_requireExistingRelationship = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)main
{
  v2 = self;
  v172 = *MEMORY[0x277D85DE8];
  participant = self->_participant;
  if (!participant)
  {
    v150 = [MEMORY[0x277CCA9B8] hk_errorForNilArgument:@"_participant" class:objc_opt_class() selector:a2];
    [(HDCloudSyncOperation *)v2 finishWithSuccess:0 error:?];
    v23 = *MEMORY[0x277D85DE8];

    return;
  }

  if (self->_requireExistingRelationship)
  {
    v146 = participant;
    memset(v161, 0, sizeof(v161));
    v162 = 0u;
    v163 = 0u;
    obj = v2->_zoneIdentifiers;
    v4 = [(NSArray *)obj countByEnumeratingWithState:v161 objects:v159 count:16];
    if (!v4)
    {
      goto LABEL_17;
    }

    v5 = v4;
    v6 = **&v161[16];
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (**&v161[16] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*&v161[8] + 8 * i);
        v9 = [HDCloudSyncCachedZone alloc];
        v10 = [(HDCloudSyncOperation *)v2 configuration];
        v11 = [v10 repository];
        v12 = [(HDCloudSyncOperation *)v2 configuration];
        v13 = [v12 accessibilityAssertion];
        v14 = [(HDCloudSyncCachedZone *)v9 initForZoneIdentifier:v8 repository:v11 accessibilityAssertion:v13];

        *buf = 0;
        v15 = [v14 zoneShareWithError:buf];
        v16 = *buf;
        v17 = v16;
        if (v15)
        {
          v18 = 1;
        }

        else
        {
          v18 = v16 == 0;
        }

        if (!v18)
        {
          _HKInitializeLogging();
          v24 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *v169 = 138543874;
            *&v169[4] = self;
            *&v169[12] = 2114;
            *&v169[14] = v8;
            *&v169[22] = 2114;
            v170 = v17;
            _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch CKShare for cached zone %{public}@, %{public}@", v169, 0x20u);
          }

          v26 = v17;

          v22 = v17;
          [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v22];
          goto LABEL_24;
        }

        if (v15)
        {
          v19 = [v15 participants];
          v20 = [v19 containsObject:v146];

          if (v20)
          {

            v2 = self;
            goto LABEL_26;
          }
        }

        v2 = self;
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:v161 objects:v159 count:16];
      if (!v5)
      {
LABEL_17:

        v21 = [MEMORY[0x277CCA9B8] hk_error:707 format:{@"Participant not found on any zones: %@", v2->_participant}];
        [(HDCloudSyncOperation *)v2 finishWithSuccess:0 error:v21];

        v22 = 0;
LABEL_24:

        goto LABEL_110;
      }
    }
  }

LABEL_26:
  [(HDSynchronousTaskGroup *)v2->_taskGroup beginTask];
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v27 = [(HDCloudSyncOperation *)v2 configuration];
  v28 = [v27 repository];
  v29 = [v28 allCKContainers];

  v131 = v29;
  v133 = [v29 countByEnumeratingWithState:&v153 objects:v158 count:16];
  if (!v133)
  {
    goto LABEL_109;
  }

  v132 = *v154;
  v30 = 0x27860D000uLL;
  do
  {
    v31 = 0;
    do
    {
      if (*v154 != v132)
      {
        objc_enumerationMutation(v131);
      }

      v134 = v31;
      v32 = *(*(&v153 + 1) + 8 * v31);
      [(HDSynchronousTaskGroup *)v2->_taskGroup beginTask];
      v137 = v2->_participant;
      v33 = v32;
      v135 = objc_alloc_init(MEMORY[0x277CBEB38]);
      memset(v161, 0, sizeof(v161));
      v162 = 0u;
      v163 = 0u;
      v147 = v2->_zoneIdentifiers;
      v34 = [(NSArray *)v147 countByEnumeratingWithState:v161 objects:v159 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = **&v161[16];
        v141 = v33;
        while (2)
        {
          v37 = 0;
          obja = v35;
          do
          {
            if (**&v161[16] != v36)
            {
              objc_enumerationMutation(v147);
            }

            v38 = *(*&v161[8] + 8 * v37);
            v39 = [v38 containerIdentifier];
            v40 = [v33 containerIdentifier];
            v41 = [v39 isEqualToString:v40];

            if (v41)
            {
              v42 = objc_alloc(*(v30 + 2856));
              v43 = [(HDCloudSyncOperation *)v2 configuration];
              v44 = [v43 repository];
              v45 = [(HDCloudSyncOperation *)v2 configuration];
              v46 = [v45 accessibilityAssertion];
              v47 = [v42 initForZoneIdentifier:v38 repository:v44 accessibilityAssertion:v46];

              v2 = self;
              if ([v47 zoneType] != 4)
              {
                v157 = 0;
                v48 = [v47 zoneShareWithError:&v157];
                v49 = v157;
                v50 = v49;
                if (!v48 && v49)
                {
                  _HKInitializeLogging();
                  v71 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                  {
                    *v169 = 138543874;
                    *&v169[4] = self;
                    *&v169[12] = 2114;
                    *&v169[14] = v38;
                    *&v169[22] = 2114;
                    v170 = v50;
                    _os_log_error_impl(&dword_228986000, v71, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch CKShare for cached zone %{public}@, %{public}@", v169, 0x20u);
                  }

                  v72 = v50;

                  v70 = 0;
                  v33 = v141;
                  v69 = v135;
                  goto LABEL_62;
                }

                v139 = v49;
                if (!v48)
                {
                  v51 = objc_alloc(MEMORY[0x277CBC680]);
                  v52 = [v38 zoneIdentifier];
                  v48 = [v51 initWithRecordZoneID:v52];
                }

                v53 = v137;
                v54 = v38;
                v55 = v48;
                v56 = [v55 participants];
                *v169 = MEMORY[0x277D85DD0];
                *&v169[8] = 3221225472;
                *&v169[16] = __90__HDCloudSyncAddSharingParticipantOperation__addParticipantIfNeeded_zoneIdentifier_share___block_invoke;
                v170 = &unk_27861A858;
                v57 = v53;
                v171 = v57;
                v58 = [v56 hk_firstObjectPassingTest:v169];

                if (v58 && (v59 = v58, v60 = [v59 acceptanceStatus], v61 = objc_msgSend(v59, "permission"), v59, v60 == 2) && v61 == 3)
                {
                  _HKInitializeLogging();
                  v62 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543874;
                    v2 = self;
                    *&buf[4] = self;
                    v165 = 2114;
                    v166 = v54;
                    v167 = 2114;
                    v168 = v59;
                    _os_log_impl(&dword_228986000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: Skipping, zone already contains this participant: %{public}@.", buf, 0x20u);
                    v63 = 0;
                  }

                  else
                  {
                    v63 = 0;
                    v2 = self;
                  }
                }

                else
                {
                  v63 = [(CKShareParticipant *)v57 copy];
                  v64 = [MEMORY[0x277CCAD78] UUID];
                  v65 = [v64 UUIDString];
                  [v63 setParticipantID:v65];

                  [v63 setPermission:3];
                  [v55 addParticipant:v63];
                  v2 = self;
                  os_unfair_lock_lock(&self->_lock);
                  [(NSMutableArray *)self->_clonedParticipants addObject:v63];
                  os_unfair_lock_unlock(&self->_lock);
                }

                if (v63)
                {
                  _HKInitializeLogging();
                  v66 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                  {
                    *v169 = 138543874;
                    *&v169[4] = v2;
                    *&v169[12] = 2114;
                    *&v169[14] = v54;
                    *&v169[22] = 2114;
                    v170 = v63;
                    _os_log_impl(&dword_228986000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: Added participant: %{public}@", v169, 0x20u);
                  }

                  [v135 setObject:v55 forKeyedSubscript:v54];
                }

                v67 = [v55 owner];
                [(HDCloudSyncAddSharingParticipantOperation *)v2 _foundOwnerParticipant:v67];

                v30 = 0x27860D000;
              }

              v33 = v141;
              v35 = obja;
            }

            v37 = v37 + 1;
          }

          while (v35 != v37);
          v68 = [(NSArray *)v147 countByEnumeratingWithState:v161 objects:v159 count:16];
          v35 = v68;
          if (v68)
          {
            continue;
          }

          break;
        }
      }

      v69 = v135;
      v70 = v135;
      v50 = 0;
LABEL_62:

      v73 = v50;
      v74 = v73;
      if (!v70 && v73)
      {
        [(HDSynchronousTaskGroup *)v2->_taskGroup failTaskWithError:v73];
        goto LABEL_107;
      }

      v75 = [v70 allValues];
      v76 = [v75 count];

      if (!v76)
      {
        [(HDSynchronousTaskGroup *)v2->_taskGroup finishTask];
        goto LABEL_107;
      }

      v77 = [v70 allValues];
      v78 = v33;
      v79 = [(HDCloudSyncOperation *)v2 configuration];
      v80 = [v79 repository];

      v81 = [v80 behavior];
      v82 = [v81 tinkerModeEnabled];

      if (v82)
      {
        objb = v77;
        v83 = v80;
        v84 = v78;
        v85 = [(HDCloudSyncOperation *)v2 configuration];
        v86 = [v85 cachedCloudState];
        *v169 = 0;
        v87 = [v86 zonesByIdentifierWithError:v169];
        v88 = *v169;

        v148 = v87;
        if (!v87 && v88)
        {
          _HKInitializeLogging();
          v89 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *v161 = 138543618;
            *&v161[4] = v2;
            *&v161[12] = 2114;
            *&v161[14] = v88;
            _os_log_error_impl(&dword_228986000, v89, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached unified zone, %{public}@", v161, 0x16u);
          }

          v90 = 0;
          v78 = v84;
          v80 = v83;
          v77 = objb;
          goto LABEL_103;
        }

        v140 = v88;
        v91 = [v87 allValues];
        v159[0] = MEMORY[0x277D85DD0];
        v159[1] = 3221225472;
        v159[2] = __88__HDCloudSyncAddSharingParticipantOperation__updatedRegistryRecordIfNeededForContainer___block_invoke;
        v159[3] = &unk_2786147D0;
        v78 = v84;
        v92 = v84;
        v160 = v92;
        v93 = [v91 hk_filter:v159];

        v80 = v83;
        v142 = v93;
        if ([v93 count] >= 2)
        {
          _HKInitializeLogging();
          v94 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
          {
            v120 = v94;
            v121 = [v92 containerIdentifier];
            v122 = [v80 profileIdentifier];
            v123 = HDDatabaseForContainer(v92, v122);
            [v123 databaseScope];
            v124 = CKDatabaseScopeString();
            *v161 = 138543874;
            *&v161[4] = self;
            *&v161[12] = 2114;
            *&v161[14] = v121;
            *&v161[22] = 2114;
            *&v161[24] = v124;
            _os_log_fault_impl(&dword_228986000, v120, OS_LOG_TYPE_FAULT, "%{public}@ Retrieved multiple cached unified zone for container %{public}@, database %{public}@. This is unexpected.", v161, 0x20u);

            v30 = 0x27860D000;
            v93 = v142;
          }
        }

        v95 = [v93 firstObject];
        v77 = objb;
        if (!v95)
        {
          _HKInitializeLogging();
          v100 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *v161 = 138543362;
            *&v161[4] = self;
            _os_log_error_impl(&dword_228986000, v100, OS_LOG_TYPE_ERROR, "%{public}@ Unified zone does not exist.", v161, 0xCu);
          }

          v90 = 0;
          goto LABEL_102;
        }

        v96 = objc_opt_class();
        *buf = 0;
        v97 = [v95 recordsForClass:v96 error:buf];
        v98 = *buf;
        v136 = v97;
        v138 = v98;
        if (!v97 && v98)
        {
          _HKInitializeLogging();
          v99 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v125 = v99;
            v126 = [v95 zoneIdentifier];
            *v161 = 138543874;
            *&v161[4] = self;
            *&v161[12] = 2114;
            *&v161[14] = v126;
            *&v161[22] = 2114;
            *&v161[24] = v138;
            _os_log_error_impl(&dword_228986000, v125, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get registry records for %{public}@, %{public}@", v161, 0x20u);
          }

          v90 = 0;
LABEL_101:
          v88 = v140;

LABEL_102:
          v2 = self;
LABEL_103:

          goto LABEL_104;
        }

        if ([v97 count] >= 2)
        {
          _HKInitializeLogging();
          v101 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
          {
            v127 = v101;
            [v95 zoneIdentifier];
            v129 = v128 = v97;
            *v161 = 138543618;
            *&v161[4] = self;
            *&v161[12] = 2114;
            *&v161[14] = v129;
            _os_log_fault_impl(&dword_228986000, v127, OS_LOG_TYPE_FAULT, "%{public}@ Retrieved multiple registry records for %{public}@. This is unexpected.", v161, 0x16u);

            v97 = v128;
          }
        }

        v102 = [v97 firstObject];
        if (v102)
        {
          v103 = v102;
          v104 = [v102 sharedProfileIdentifier];
          if (v104)
          {
            v105 = v104;
            v106 = [v103 ownerProfileIdentifier];

            if (v106)
            {
              v90 = 0;
              goto LABEL_99;
            }
          }

          v107 = [v103 ownerProfileIdentifier];

          if (!v107)
          {
            v108 = [v80 profileIdentifier];
            [v103 setOwnerProfileIdentifier:v108];
          }

          v109 = [v103 sharedProfileIdentifier];

          v30 = 0x27860D000;
          if (!v109)
          {
            v110 = [v80 profileIdentifier];
            v111 = [HDCloudSyncRegistryRecord sharedProfileIdentifierForOwnerProfileIdentifier:v110];
            [v103 setSharedProfileIdentifier:v111];

            v30 = 0x27860D000;
          }

          v90 = [v103 record];
        }

        else
        {
          v112 = [HDCloudSyncRegistryRecord alloc];
          v113 = [v95 zoneIdentifier];
          v114 = [v113 zoneIdentifier];
          v115 = [v80 profileIdentifier];
          v103 = [(HDCloudSyncRegistryRecord *)v112 initInZone:v114 ownerProfileIdentifier:v115];

          v90 = [v103 record];
LABEL_99:
          v30 = 0x27860D000;
        }

        goto LABEL_101;
      }

      v90 = 0;
LABEL_104:

      if (v90)
      {
        v116 = [v77 arrayByAddingObject:v90];

        v77 = v116;
      }

      v117 = [HDCloudSyncModifyRecordsOperation alloc];
      v118 = [(HDCloudSyncOperation *)v2 configuration];
      v119 = [(HDCloudSyncModifyRecordsOperation *)v117 initWithConfiguration:v118 container:v78 recordsToSave:v77 recordIDsToDelete:0];

      [(HDCloudSyncModifyRecordsOperation *)v119 setTreatAnyErrorAsFatal:1];
      v152[0] = MEMORY[0x277D85DD0];
      v152[1] = 3221225472;
      v152[2] = __49__HDCloudSyncAddSharingParticipantOperation_main__block_invoke;
      v152[3] = &unk_278613088;
      v152[4] = v2;
      [(HDCloudSyncOperation *)v119 setOnError:v152];
      v151[0] = MEMORY[0x277D85DD0];
      v151[1] = 3221225472;
      v151[2] = __49__HDCloudSyncAddSharingParticipantOperation_main__block_invoke_312;
      v151[3] = &unk_278613060;
      v151[4] = v2;
      [(HDCloudSyncOperation *)v119 setOnSuccess:v151];
      [(HDCloudSyncOperation *)v119 start];

LABEL_107:
      v31 = v134 + 1;
    }

    while (v134 + 1 != v133);
    v133 = [v131 countByEnumeratingWithState:&v153 objects:v158 count:16];
  }

  while (v133);
LABEL_109:

  [(HDSynchronousTaskGroup *)v2->_taskGroup finishTask];
LABEL_110:
  v130 = *MEMORY[0x277D85DE8];
}

void __49__HDCloudSyncAddSharingParticipantOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update shares: %{public}@", &v8, 0x16u);
  }

  [*(*(a1 + 32) + 144) failTaskWithError:v4];

  v6 = *MEMORY[0x277D85DE8];
}

void __49__HDCloudSyncAddSharingParticipantOperation_main__block_invoke_312(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v66 = v5;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully updated share records", buf, 0xCu);
  }

  v6 = [v3 savedRecords];

  v7 = [v6 hk_map:&__block_literal_global_52];

  v8 = *(a1 + 32);
  v9 = v7;
  if (v8)
  {
    v41 = a1;
    os_unfair_lock_lock((v8 + 104));
    v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v40 = v9;
    obj = v9;
    v44 = [obj countByEnumeratingWithState:&v52 objects:buf count:16];
    if (!v44)
    {
      goto LABEL_33;
    }

    v43 = *v53;
    while (1)
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v53 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v52 + 1) + 8 * i);
        v12 = [v11 owner];
        [(HDCloudSyncAddSharingParticipantOperation *)v8 _foundOwnerParticipant:v12];

        _HKInitializeLogging();
        v13 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *v56 = 138543618;
          v57 = v8;
          v58 = 2114;
          v59 = v11;
          _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Looking for added participant on share: %{public}@", v56, 0x16u);
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v14 = [v11 participants];
        v15 = [v14 countByEnumeratingWithState:&v48 objects:v64 count:16];
        if (!v15)
        {

LABEL_29:
          _HKInitializeLogging();
          v30 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v31 = v30;
            v32 = [v11 participants];
            v33 = [v11 recordID];
            v34 = [v33 zoneID];
            *v56 = 138543874;
            v57 = v8;
            v58 = 2114;
            v59 = v32;
            v60 = 2114;
            v61 = v34;
            _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "%{public}@: Failed to find a matching participant with pending status in the participants (%{public}@) for zone %{public}@", v56, 0x20u);
          }

          continue;
        }

        v16 = v15;
        v45 = i;
        v17 = 0;
        v18 = *v49;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v49 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v48 + 1) + 8 * j);
            _HKInitializeLogging();
            v21 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              *v56 = 138543618;
              v57 = v8;
              v58 = 2114;
              v59 = v20;
              _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Found candidate participant: %{public}@", v56, 0x16u);
            }

            if ([*(v8 + 120) containsObject:v20])
            {
              if ([v20 acceptanceStatus] == 1)
              {
                v22 = [v11 URL];

                if (v22)
                {
                  v23 = [v11 URL];
                  [v46 addObject:v23];

                  v24 = [v20 invitationToken];
                  v25 = [v11 URL];
                  [v47 setObject:v24 forKeyedSubscript:v25];

                  _HKInitializeLogging();
                  v26 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                  {
                    v27 = v26;
                    v28 = [v11 URL];
                    v29 = [v20 invitationToken];
                    *v56 = 138544130;
                    v57 = v8;
                    v58 = 2114;
                    v59 = v20;
                    v60 = 2114;
                    v61 = v28;
                    v62 = 2114;
                    v63 = v29;
                    _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: Found added participant: %{public}@ with share URL: %{public}@ and token: %{public}@", v56, 0x2Au);
                  }

                  v17 = 1;
                }
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v48 objects:v64 count:16];
        }

        while (v16);

        i = v45;
        if ((v17 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v44 = [obj countByEnumeratingWithState:&v52 objects:buf count:16];
      if (!v44)
      {
LABEL_33:

        v35 = [*(v8 + 152) arrayByAddingObjectsFromArray:v46];
        v36 = *(v8 + 152);
        *(v8 + 152) = v35;

        v37 = [*(v8 + 160) hk_dictionaryByAddingEntriesFromDictionary:v47];
        v38 = *(v8 + 160);
        *(v8 + 160) = v37;

        os_unfair_lock_unlock((v8 + 104));
        v9 = v40;
        a1 = v41;
        break;
      }
    }
  }

  [*(*(a1 + 32) + 144) finishTask];
  v39 = *MEMORY[0x277D85DE8];
}

id __49__HDCloudSyncAddSharingParticipantOperation_main__block_invoke_313(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hd_isCKShare])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __88__HDCloudSyncAddSharingParticipantOperation__updatedRegistryRecordIfNeededForContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 zoneType] == 2)
  {
    v4 = [v3 zoneIdentifier];
    v5 = [v4 containerIdentifier];
    v6 = [*(a1 + 32) containerIdentifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_foundOwnerParticipant:(uint64_t)a1
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (!*(a1 + 168))
  {
    v6 = [v4 userIdentity];
    v7 = [v6 userRecordID];
    v8 = [v7 recordName];
    v9 = [v8 isEqualToString:*MEMORY[0x277CBBF28]];

    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    v11 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v13 = 138543618;
        v14 = a1;
        v15 = 2114;
        v16 = v5;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring candidate owner %{public}@ with default record name.", &v13, 0x16u);
      }
    }

    else
    {
      if (v11)
      {
        v13 = 138543618;
        v14 = a1;
        v15 = 2114;
        v16 = v5;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Found owner participant: %{public}@", &v13, 0x16u);
      }

      objc_storeStrong((a1 + 168), a2);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end