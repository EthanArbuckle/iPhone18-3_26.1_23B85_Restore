@interface HDCloudSyncHandleMissingManateeIdentityOperation
- (HDCloudSyncHandleMissingManateeIdentityOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (void)main;
@end

@implementation HDCloudSyncHandleMissingManateeIdentityOperation

- (HDCloudSyncHandleMissingManateeIdentityOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v9.receiver = self;
  v9.super_class = HDCloudSyncHandleMissingManateeIdentityOperation;
  v4 = [(HDCloudSyncOperation *)&v9 initWithConfiguration:a3 cloudState:0];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v5->_taskGroup;
    v5->_taskGroup = v6;

    [(HDSynchronousTaskGroup *)v5->_taskGroup setDelegate:v5];
  }

  return v5;
}

- (void)main
{
  v2 = self;
  v108 = *MEMORY[0x277D85DE8];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v3 = [(HDCloudSyncOperation *)v2 configuration];
  v4 = [v3 repository];
  v5 = [v4 allCKContainers];

  obj = v5;
  v65 = [v5 countByEnumeratingWithState:&v74 objects:v104 count:16];
  if (v65)
  {
    v64 = *v75;
    v6 = 0x277CBE000uLL;
    p_isa = &v2->super.super.isa;
    do
    {
      for (i = 0; i != v65; i = v19 + 1)
      {
        if (*v75 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v69 = i;
        v8 = *(*(&v74 + 1) + 8 * i);
        [(HDSynchronousTaskGroup *)v2->_taskGroup beginTask];
        v9 = [(HDCloudSyncOperation *)v2 configuration];
        v10 = [v9 cachedCloudState];
        v11 = [v8 containerIdentifier];
        v12 = [(HDCloudSyncOperation *)v2 configuration];
        v13 = [v12 repository];
        v14 = [v13 profileIdentifier];
        v68 = v8;
        v15 = HDDatabaseForContainer(v8, v14);
        v16 = [v15 databaseScope];
        v86 = 0;
        v17 = [v10 zoneIdentifiersWithIdentityLossForContainerIdentifier:v11 databaseScope:v16 error:&v86];
        v18 = v86;

        if (!v17 && v18)
        {
          v2 = p_isa;
          [p_isa[13] failTaskWithError:v18];
          v20 = v68;
          v19 = v69;
          goto LABEL_46;
        }

        if (![v17 count])
        {
          _HKInitializeLogging();
          v59 = *MEMORY[0x277CCC328];
          v2 = p_isa;
          v20 = v68;
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v107 = p_isa;
            _os_log_debug_impl(&dword_228986000, v59, OS_LOG_TYPE_DEBUG, "%{public}@: Nothing to delete.", buf, 0xCu);
          }

          [p_isa[13] finishTask];
          v19 = v69;
          goto LABEL_46;
        }

        v62 = v18;
        v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v22 = v17;
        v23 = [v22 countByEnumeratingWithState:&v82 objects:buf count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v83;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v83 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v82 + 1) + 8 * j);
              v28 = [v27 containerIdentifier];
              v29 = [v21 objectForKeyedSubscript:v28];

              if (!v29)
              {
                v29 = objc_alloc_init(*(v6 + 2840));
                v30 = [v27 containerIdentifier];
                [v21 setObject:v29 forKeyedSubscript:v30];
              }

              [v29 addObject:v27];
            }

            v24 = [v22 countByEnumeratingWithState:&v82 objects:buf count:16];
          }

          while (v24);
        }

        v63 = v17;

        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v31 = v21;
        v2 = p_isa;
        v73 = [v31 countByEnumeratingWithState:&v78 objects:v105 count:16];
        if (!v73)
        {
          goto LABEL_40;
        }

        v72 = *v79;
        v70 = v31;
        do
        {
          v32 = 0;
          do
          {
            if (*v79 != v72)
            {
              objc_enumerationMutation(v31);
            }

            v33 = *(*(&v78 + 1) + 8 * v32);
            v34 = [(HDCloudSyncOperation *)v2 configuration];
            v35 = [v34 repository];
            v36 = [v35 containerForContainerIdentifier:v33];

            if (!v36)
            {
              v58 = [MEMORY[0x277CCA9B8] hk_error:723 format:{@"Unable to retrieve container for identifier '%@'", v33}];
              [(HDCloudSyncOperation *)v2 finishWithSuccess:0 error:v58];

              goto LABEL_42;
            }

            v37 = [v31 objectForKeyedSubscript:v33];
            v38 = v36;
            v39 = [(HDCloudSyncOperation *)v2 configuration];
            v40 = [v39 repository];
            v41 = [v40 profileIdentifier];
            v42 = HDDatabaseForContainer(v38, v41);

            v43 = [v42 databaseScope];
            if (v43 != 1)
            {
              if (v43 == 3)
              {
                v44 = v38;
                v87 = MEMORY[0x277D85DD0];
                v88 = 3221225472;
                v89 = __115__HDCloudSyncHandleMissingManateeIdentityOperation__leaveSharesForLostManateeIdentitiesInZones_container_database___block_invoke;
                v90 = &unk_27861EAE8;
                v91 = v2;
                v45 = [v37 hk_map:&v87];
                if ([v45 count])
                {
                  [(HDSynchronousTaskGroup *)v2->_taskGroup beginTask];
                  v54 = [HDCloudSyncModifyRecordsOperation alloc];
                  v55 = [(HDCloudSyncOperation *)v2 configuration];
                  v56 = [(HDCloudSyncModifyRecordsOperation *)v54 initWithConfiguration:v55 container:v44 recordsToSave:0 recordIDsToDelete:v45];

                  v2 = p_isa;
                  [(HDCloudSyncModifyRecordsOperation *)v56 setMarkAsParticipantNeedsNewInvitationToken:1];
                  v99 = MEMORY[0x277D85DD0];
                  v100 = 3221225472;
                  v101 = __115__HDCloudSyncHandleMissingManateeIdentityOperation__leaveSharesForLostManateeIdentitiesInZones_container_database___block_invoke_314;
                  v102 = &unk_278613088;
                  v103 = p_isa;
                  [(HDCloudSyncOperation *)v56 setOnError:&v99];
                  v94 = MEMORY[0x277D85DD0];
                  v95 = 3221225472;
                  v96 = __115__HDCloudSyncHandleMissingManateeIdentityOperation__leaveSharesForLostManateeIdentitiesInZones_container_database___block_invoke_2;
                  v97 = &unk_278613060;
                  v98 = p_isa;
                  [(HDCloudSyncOperation *)v56 setOnSuccess:&v94];
                  [(HDCloudSyncOperation *)v56 start];

                  v31 = v70;
                }
              }

              else
              {
                if (v43 != 2)
                {
                  goto LABEL_36;
                }

                v44 = v37;
                v45 = v38;
                v46 = v42;
                if ([v44 count])
                {
                  v87 = MEMORY[0x277D85DD0];
                  v88 = 3221225472;
                  v89 = __115__HDCloudSyncHandleMissingManateeIdentityOperation__deleteZonesForLostManateeIdentitiesInZones_container_database___block_invoke;
                  v90 = &unk_27862EBD0;
                  v91 = v2;
                  v66 = v45;
                  v92 = v66;
                  v93 = v46;
                  v67 = [v44 hk_map:&v87];
                  [(HDSynchronousTaskGroup *)v2->_taskGroup beginTask];
                  v47 = [HDCloudSyncModifyRecordZonesOperation alloc];
                  [p_isa configuration];
                  v48 = v44;
                  v49 = v46;
                  v51 = v50 = v45;
                  v52 = v47;
                  v2 = p_isa;
                  v53 = [(HDCloudSyncModifyRecordZonesOperation *)v52 initWithConfiguration:v51 container:v66 recordZonesToSave:0 recordZoneIDsToDelete:v67];

                  v45 = v50;
                  v46 = v49;
                  v44 = v48;
                  v6 = 0x277CBE000;
                  v99 = MEMORY[0x277D85DD0];
                  v100 = 3221225472;
                  v101 = __115__HDCloudSyncHandleMissingManateeIdentityOperation__deleteZonesForLostManateeIdentitiesInZones_container_database___block_invoke_309;
                  v102 = &unk_278613088;
                  v103 = p_isa;
                  [(HDCloudSyncOperation *)v53 setOnError:&v99];
                  v94 = MEMORY[0x277D85DD0];
                  v95 = 3221225472;
                  v96 = __115__HDCloudSyncHandleMissingManateeIdentityOperation__deleteZonesForLostManateeIdentitiesInZones_container_database___block_invoke_2;
                  v97 = &unk_278613060;
                  v98 = p_isa;
                  [(HDCloudSyncOperation *)v53 setOnSuccess:&v94];
                  [(HDCloudSyncOperation *)v53 start];

                  v31 = v70;
                }
              }

              goto LABEL_34;
            }

            if ([v42 databaseScope] == 1)
            {
              v44 = [MEMORY[0x277CCA890] currentHandler];
              [v44 handleFailureInMethod:sel__handleLostManateeIdentitiesForZones_container_ object:v2 file:@"HDCloudSyncHandleMissingManateeIdentityOperation.m" lineNumber:117 description:@"Unable to handle manatee loss in public scope."];
LABEL_34:
            }

LABEL_36:

            ++v32;
          }

          while (v73 != v32);
          v57 = [v31 countByEnumeratingWithState:&v78 objects:v105 count:16];
          v73 = v57;
        }

        while (v57);
LABEL_40:

        [(HDSynchronousTaskGroup *)v2->_taskGroup finishTask];
LABEL_42:

        v20 = v68;
        v19 = v69;
        v18 = v62;
        v17 = v63;
LABEL_46:
      }

      v65 = [obj countByEnumeratingWithState:&v74 objects:v104 count:16];
    }

    while (v65);
  }

  [(HDSynchronousTaskGroup *)v2->_taskGroup finishTask];
  v60 = *MEMORY[0x277D85DE8];
}

id __115__HDCloudSyncHandleMissingManateeIdentityOperation__deleteZonesForLostManateeIdentitiesInZones_container_database___block_invoke(id *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v16 = a1[4];
    v17 = v4;
    v18 = [v3 zoneIdentifier];
    v19 = 138543618;
    v20 = v16;
    v21 = 2114;
    v22 = v18;
    _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Zone %{public}@ is missing manatee identity and will be deleted", &v19, 0x16u);
  }

  v5 = [a1[4] configuration];
  v6 = [v5 repository];
  v7 = [v6 profile];
  v8 = [v7 daemon];
  v9 = [v8 analyticsSubmissionCoordinator];
  v10 = [a1[5] containerIdentifier];
  v11 = [v3 zoneIdentifier];
  v12 = [v11 zoneName];
  [v9 cloudSync_reportMissingManateeIdentityDuringFetchInContainer:v10 zoneName:v12 databaseScope:{objc_msgSend(a1[6], "databaseScope")}];

  v13 = [v3 zoneIdentifier];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id __115__HDCloudSyncHandleMissingManateeIdentityOperation__leaveSharesForLostManateeIdentitiesInZones_container_database___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HDCloudSyncCachedZone alloc];
  v5 = [*(a1 + 32) configuration];
  v6 = [v5 repository];
  v7 = [*(a1 + 32) configuration];
  v8 = [v7 accessibilityAssertion];
  v9 = [(HDCloudSyncCachedZone *)v4 initForZoneIdentifier:v3 repository:v6 accessibilityAssertion:v8];

  v23 = 0;
  v10 = [v9 zoneShareWithError:&v23];
  v11 = v23;
  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC328];
  v13 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR);
  if (v10 || !v11)
  {
    if (v13)
    {
      v17 = *(a1 + 32);
      v18 = v12;
      v19 = [v3 zoneIdentifier];
      *buf = 138543618;
      v25 = v17;
      v26 = 2114;
      v27 = v19;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Zone %{public}@ is missing manatee identity; removing the share.", buf, 0x16u);
    }

    v14 = [v10 recordID];
  }

  else
  {
    if (v13)
    {
      v20 = *(a1 + 32);
      v21 = v12;
      v22 = [v3 zoneIdentifier];
      *buf = 138543618;
      v25 = v20;
      v26 = 2114;
      v27 = v22;
      _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve share from zone %{public}@ with missing manatee identity.", buf, 0x16u);
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end