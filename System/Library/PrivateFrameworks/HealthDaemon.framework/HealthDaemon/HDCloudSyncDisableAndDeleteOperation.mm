@interface HDCloudSyncDisableAndDeleteOperation
- (BOOL)_isSecureSecondaryContainer:(id)a3;
- (id)_createZonesOperationForContainer:(id)a3;
- (id)_deleteUnifiedZoneRecordsOperationForContainer:(id)a3 zones:(id)a4;
- (id)_deleteZonesOperationForContainer:(id)a3 zones:(id)a4;
- (id)_leaveSharesOperationForContainer:(id)a3;
- (void)main;
@end

@implementation HDCloudSyncDisableAndDeleteOperation

- (void)main
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = [HDCloudSyncCompoundOperation alloc];
  v4 = [(HDCloudSyncOperation *)self configuration];
  v52 = [(HDCloudSyncCompoundOperation *)v3 initWithConfiguration:v4 cloudState:0 name:@"Disable & Delete" continueOnSubOperationError:0];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v5 = [(HDCloudSyncOperation *)self configuration];
  v6 = [v5 repository];
  v7 = [v6 allCKContainers];

  v8 = [v7 countByEnumeratingWithState:&v58 objects:v69 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v59;
    do
    {
      v11 = 0;
      do
      {
        if (*v59 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v58 + 1) + 8 * v11);
        v13 = [(HDCloudSyncOperation *)self configuration];
        v14 = [v13 repository];
        v15 = [v14 profileIdentifier];
        v16 = HDDatabaseForContainer(v12, v15);

        v17 = [v16 databaseScope];
        if (v17 == 2)
        {
          v18 = [(HDCloudSyncDisableAndDeleteOperation *)self _createZonesOperationForContainer:v12];
          [(HDCloudSyncCompoundOperation *)v52 addOperation:v18 transitionHandler:0];
        }

        else
        {
          if (v17 != 1)
          {
            goto LABEL_11;
          }

          v18 = [MEMORY[0x277CCA890] currentHandler];
          [v18 handleFailureInMethod:a2 object:self file:@"HDCloudSyncDisableAndDeleteOperation.m" lineNumber:68 description:@"Public database scope not handled for disable and delete."];
        }

LABEL_11:
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v58 objects:v69 count:16];
    }

    while (v9);
  }

  [(HDCloudSyncCompoundOperation *)v52 addOperationOfClass:objc_opt_class() transitionHandler:0];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v19 = [(HDCloudSyncOperation *)self configuration];
  v20 = [v19 repository];
  v21 = [v20 allCKContainers];

  obj = v21;
  v22 = [v21 countByEnumeratingWithState:&v54 objects:v68 count:16];
  if (v22)
  {
    v24 = v22;
    v50 = *v55;
    *&v23 = 138543618;
    v48 = v23;
LABEL_15:
    v25 = 0;
    while (1)
    {
      if (*v55 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v54 + 1) + 8 * v25);
      v27 = [(HDCloudSyncOperation *)self configuration];
      v28 = [v27 repository];
      v29 = [v28 profileIdentifier];
      v30 = HDDatabaseForContainer(v26, v29);

      v31 = [(HDCloudSyncOperation *)self configuration];
      v32 = [v31 cachedCloudState];
      v33 = [v26 containerIdentifier];
      v53 = 0;
      v34 = [v32 zonesForContainerID:v33 error:&v53];
      v35 = v53;

      if (!v34 && v35)
      {
        _HKInitializeLogging();
        v44 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v46 = v44;
          v47 = [v26 containerIdentifier];
          *buf = 138543874;
          v63 = self;
          v64 = 2114;
          v65 = v47;
          v66 = 2114;
          v67 = v35;
          _os_log_error_impl(&dword_228986000, v46, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached zones for container %{public}@, %{public}@", buf, 0x20u);
        }

        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v35];

        v43 = v52;
        goto LABEL_37;
      }

      if (v34)
      {
        v36 = [v30 databaseScope];
        switch(v36)
        {
          case 3:
            v37 = [(HDCloudSyncDisableAndDeleteOperation *)self _leaveSharesOperationForContainer:v26];
            v41 = v52;
            goto LABEL_29;
          case 2:
            v40 = [(HDCloudSyncDisableAndDeleteOperation *)self _deleteZonesOperationForContainer:v26 zones:v34];
            [(HDCloudSyncCompoundOperation *)v52 addOperation:v40 transitionHandler:0];

            v37 = [(HDCloudSyncDisableAndDeleteOperation *)self _deleteUnifiedZoneRecordsOperationForContainer:v26 zones:v34];
            v41 = v52;
LABEL_29:
            [(HDCloudSyncCompoundOperation *)v41 addOperation:v37 transitionHandler:0];
            goto LABEL_30;
          case 1:
            v37 = [MEMORY[0x277CCA890] currentHandler];
            [v37 handleFailureInMethod:a2 object:self file:@"HDCloudSyncDisableAndDeleteOperation.m" lineNumber:100 description:@"Public database scope not handled for disable and delete."];
LABEL_30:

            break;
        }
      }

      else
      {
        _HKInitializeLogging();
        v38 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
        {
          v37 = v38;
          v39 = [v26 containerIdentifier];
          *buf = v48;
          v63 = self;
          v64 = 2114;
          v65 = v39;
          _os_log_debug_impl(&dword_228986000, v37, OS_LOG_TYPE_DEBUG, "%{public}@ No cached zones found for container %{public}@.", buf, 0x16u);

          goto LABEL_30;
        }
      }

      if (v24 == ++v25)
      {
        v24 = [obj countByEnumeratingWithState:&v54 objects:v68 count:16];
        if (v24)
        {
          goto LABEL_15;
        }

        break;
      }
    }
  }

  v42 = self;
  v43 = v52;
  [(HDCloudSyncOperation *)v42 delegateToOperation:v52];
LABEL_37:

  v45 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isSecureSecondaryContainer:(id)a3
{
  v4 = a3;
  v5 = [v4 containerIdentifier];
  if ([v5 isEqualToString:@"com.apple.health.sync.secure"])
  {
    v6 = [v4 containerIdentifier];
    v7 = [(HDCloudSyncOperation *)self configuration];
    v8 = [v7 repository];
    v9 = [v8 primaryCKContainer];
    v10 = [v9 containerIdentifier];
    v11 = [v6 isEqualToString:v10] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)_createZonesOperationForContainer:(id)a3
{
  v28[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBC5E8];
  v27 = a3;
  v5 = [v4 alloc];
  v6 = MEMORY[0x277CBC5F8];
  v26 = [(HDCloudSyncOperation *)self configuration];
  v25 = [v26 repository];
  v7 = [v25 syncCircleIdentifier];
  v8 = [v6 hd_masterZoneIDForSyncCircleIdentifier:v7];
  v9 = [v5 initWithZoneID:v8];
  v28[0] = v9;
  v10 = objc_alloc(MEMORY[0x277CBC5E8]);
  v11 = MEMORY[0x277CBC5F8];
  v12 = [(HDCloudSyncOperation *)self configuration];
  v13 = [v12 repository];
  v14 = [v13 syncCircleIdentifier];
  v15 = [v11 hd_unifiedSyncZoneIDForSyncCircleIdentifier:v14];
  v16 = [v10 initWithZoneID:v15];
  v28[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];

  v18 = [HDCloudSyncCreateZonesOperation alloc];
  v19 = [(HDCloudSyncOperation *)self configuration];
  v20 = [(HDCloudSyncCreateZonesOperation *)v18 initWithConfiguration:v19 cloudState:0 zones:v17 container:v27];

  LOBYTE(self) = [(HDCloudSyncDisableAndDeleteOperation *)self _isSecureSecondaryContainer:v27];
  if (self)
  {
    v21 = [(HDCloudSyncOperation *)v20 operationIgnoringErrors];
  }

  else
  {
    v21 = v20;
  }

  v22 = v21;

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_deleteZonesOperationForContainer:(id)a3 zones:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HDCloudSyncDeleteZonesOperation alloc];
  v9 = [(HDCloudSyncOperation *)self configuration];
  v10 = [(HDCloudSyncDeleteZonesOperation *)v8 initWithConfiguration:v9 cloudState:0];

  v11 = [v6 hk_map:&__block_literal_global_172];

  [(HDCloudSyncDeleteZonesOperation *)v10 setZonesToDelete:v11];
  LOBYTE(self) = [(HDCloudSyncDisableAndDeleteOperation *)self _isSecureSecondaryContainer:v7];

  if (self)
  {
    v12 = [(HDCloudSyncOperation *)v10 operationIgnoringErrors];
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;

  return v13;
}

id __80__HDCloudSyncDisableAndDeleteOperation__deleteZonesOperationForContainer_zones___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 zoneIdentifier];
  v4 = [v3 type];

  if ((v4 - 3) < 5 || v4 == 1)
  {
    v7 = [v2 zoneIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_deleteUnifiedZoneRecordsOperationForContainer:(id)a3 zones:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v6 = a4;
  v7 = [HDCloudSyncDeleteRecordsOperation alloc];
  v44 = self;
  v8 = [(HDCloudSyncOperation *)self configuration];
  v42 = [(HDCloudSyncDeleteRecordsOperation *)v7 initWithConfiguration:v8 cloudState:0];

  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v51;
    *&v11 = 138543874;
    v41 = v11;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v51 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v50 + 1) + 8 * i);
        v16 = [v15 zoneIdentifier];
        v17 = [v16 type];

        if (v17 == 2)
        {
          v18 = objc_opt_class();
          v49 = 0;
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __93__HDCloudSyncDisableAndDeleteOperation__deleteUnifiedZoneRecordsOperationForContainer_zones___block_invoke;
          v47[3] = &unk_278621DE8;
          v19 = v45;
          v48 = v19;
          LOBYTE(v18) = [v15 recordsForClass:v18 epoch:0 error:&v49 enumerationHandler:v47];
          v20 = v49;
          if ((v18 & 1) == 0)
          {
            _HKInitializeLogging();
            v35 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v39 = v35;
              v40 = [v15 zoneIdentifier];
              *buf = v41;
              v55 = v44;
              v56 = 2114;
              v57 = v40;
              v58 = 2114;
              v59 = v20;
              _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get store records for %{public}@, %{public}@", buf, 0x20u);
            }

            [(HDCloudSyncOperation *)v44 finishWithSuccess:0 error:v20];

            v36 = 0;
            v32 = v42;
            v33 = v43;
            goto LABEL_24;
          }

          v21 = v9;
          v22 = [v15 zoneIdentifier];
          v23 = [v22 zoneIdentifier];

          v24 = [HDCloudSyncMedicalIDRecord recordIDWithZoneID:v23];
          [v19 addObject:v24];

          v46 = 0;
          v25 = [v15 zoneShareWithError:&v46];
          v26 = v46;
          v27 = v26;
          if (v25 || !v26)
          {
            if (v25)
            {
              v31 = [v25 recordID];
              [v19 addObject:v31];
            }
          }

          else
          {
            _HKInitializeLogging();
            v28 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v29 = v28;
              v30 = [v15 zoneIdentifier];
              *buf = v41;
              v55 = v44;
              v56 = 2114;
              v57 = v30;
              v58 = 2114;
              v59 = v27;
              _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached CKShare for zone %{public}@, %{public}@", buf, 0x20u);
            }
          }

          v9 = v21;
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v50 objects:v60 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v32 = v42;
  [(HDCloudSyncDeleteRecordsOperation *)v42 setRecordIDsToDelete:v45];
  v33 = v43;
  if ([(HDCloudSyncDisableAndDeleteOperation *)v44 _isSecureSecondaryContainer:v43])
  {
    v34 = [(HDCloudSyncOperation *)v42 operationIgnoringErrors];
  }

  else
  {
    v34 = v42;
  }

  v36 = v34;
LABEL_24:

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

uint64_t __93__HDCloudSyncDisableAndDeleteOperation__deleteUnifiedZoneRecordsOperationForContainer_zones___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 recordID];
  [v2 addObject:v3];

  return 1;
}

- (id)_leaveSharesOperationForContainer:(id)a3
{
  v4 = [HDCloudSyncLeaveAllSharesOperation alloc];
  v5 = [(HDCloudSyncOperation *)self configuration];
  v6 = [(HDCloudSyncOperation *)v4 initWithConfiguration:v5 cloudState:0];

  return v6;
}

@end