@interface HDCloudSyncVerifyAttachmentManagementRecordOperation
- (void)_updateAllAttachmentReferencesToUnsynchronizedWithError:(void *)result;
- (void)main;
@end

@implementation HDCloudSyncVerifyAttachmentManagementRecordOperation

- (void)main
{
  v84[1] = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  primaryCKContainer = [repository primaryCKContainer];
  containerIdentifier = [primaryCKContainer containerIdentifier];
  v77 = 0;
  v9 = [cachedCloudState attachmentZoneForContainerID:containerIdentifier error:&v77];
  v10 = v77;

  if (v9 || !v10)
  {
    if (!v9)
    {
      configuration3 = [(HDCloudSyncOperation *)self configuration];
      repository2 = [configuration3 repository];
      v13 = [repository2 profileType] == 1;

      if (!v13)
      {
        [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
        goto LABEL_42;
      }
    }

    v71 = 0;
    v72 = &v71;
    v73 = 0x3032000000;
    v74 = __Block_byref_object_copy__132;
    v75 = __Block_byref_object_dispose__132;
    v76 = 0;
    v14 = objc_opt_class();
    v69[4] = &v71;
    v70 = 0;
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __60__HDCloudSyncVerifyAttachmentManagementRecordOperation_main__block_invoke;
    v69[3] = &unk_278625A08;
    v15 = [v9 recordsForClass:v14 epoch:0 error:&v70 enumerationHandler:v69];
    v16 = v70;
    v63 = v16;
    if ((v15 & 1) == 0)
    {
      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v16];
LABEL_41:
      _Block_object_dispose(&v71, 8);

      goto LABEL_42;
    }

    if (v72[5])
    {
      configuration4 = [(HDCloudSyncOperation *)self configuration];
      repository3 = [configuration4 repository];
      profile = [repository3 profile];
      legacyRepositoryProfile = [profile legacyRepositoryProfile];
      v67 = 0;
      v62 = HDCloudSyncAttachmentManagementUUID(legacyRepositoryProfile, &v67);
      v21 = v67;

      if (v21)
      {
        _HKInitializeLogging();
        v22 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v21;
          _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to fetch local attachment management UUID, %{public}@", buf, 0x16u);
        }

        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v21];
      }

      else
      {
        v36 = v72[5];
        if (!v62)
        {
          uUID = [v36 UUID];
          configuration5 = [(HDCloudSyncOperation *)self configuration];
          repository4 = [configuration5 repository];
          profile2 = [repository4 profile];
          legacyRepositoryProfile2 = [profile2 legacyRepositoryProfile];
          v66 = 0;
          v45 = HDSetCloudSyncAttachmentManagementUUID(uUID, legacyRepositoryProfile2, &v66);
          v21 = v66;

          if ((v45 & 1) == 0)
          {
            _HKInitializeLogging();
            v46 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              uUID2 = [v72[5] UUID];
              *buf = 138543874;
              *&buf[4] = self;
              *&buf[12] = 2114;
              *&buf[14] = uUID2;
              *&buf[22] = 2114;
              v81 = v21;
              _os_log_error_impl(&dword_228986000, v46, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to set previously nil local management UUID %{public}@, %{public}@", buf, 0x20u);
            }
          }

          [(HDCloudSyncOperation *)self finishWithSuccess:v45 error:v21];

          goto LABEL_40;
        }

        uUID3 = [v36 UUID];
        v38 = [v62 isEqual:uUID3];

        if (v38)
        {
          [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
          v21 = 0;
        }

        else
        {
          v65 = 0;
          v47 = [(HDCloudSyncVerifyAttachmentManagementRecordOperation *)self _updateAllAttachmentReferencesToUnsynchronizedWithError:?];
          v48 = v65;
          if (v47)
          {
            uUID4 = [v72[5] UUID];
            v50 = v48;
            configuration6 = [(HDCloudSyncOperation *)self configuration];
            repository5 = [configuration6 repository];
            profile3 = [repository5 profile];
            legacyRepositoryProfile3 = [profile3 legacyRepositoryProfile];
            v64 = 0;
            v61 = HDSetCloudSyncAttachmentManagementUUID(uUID4, legacyRepositoryProfile3, &v64);
            v21 = v64;

            if ((v61 & 1) == 0)
            {
              _HKInitializeLogging();
              v55 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                uUID5 = [v72[5] UUID];
                *buf = 138543874;
                *&buf[4] = self;
                *&buf[12] = 2114;
                *&buf[14] = uUID5;
                *&buf[22] = 2114;
                v81 = v21;
                _os_log_error_impl(&dword_228986000, v55, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to set previously nil local management UUID %{public}@, %{public}@", buf, 0x20u);
              }
            }

            [(HDCloudSyncOperation *)self finishWithSuccess:v61 error:v21];
          }

          else
          {
            _HKInitializeLogging();
            v50 = v48;
            v56 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *&buf[4] = self;
              *&buf[12] = 2114;
              *&buf[14] = v50;
              _os_log_error_impl(&dword_228986000, v56, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to update local attachment references to state unsynchronized, %{public}@", buf, 0x16u);
            }

            [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v50];
            v21 = 0;
          }
        }
      }
    }

    else
    {
      v68 = 0;
      v23 = [(HDCloudSyncVerifyAttachmentManagementRecordOperation *)self _updateAllAttachmentReferencesToUnsynchronizedWithError:?];
      v21 = v68;
      if ((v23 & 1) == 0)
      {
        _HKInitializeLogging();
        v39 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v21;
          _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to update local attachment references to state unsynchronized, %{public}@", buf, 0x16u);
        }

        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v21];
        goto LABEL_40;
      }

      v24 = [HDCloudSyncAttachmentManagementRecord alloc];
      zoneIdentifier = [v9 zoneIdentifier];
      v25ZoneIdentifier = [zoneIdentifier zoneIdentifier];
      v27 = [(HDCloudSyncAttachmentManagementRecord *)v24 initInZoneID:v25ZoneIdentifier];

      v62 = v27;
      if (self)
      {
        v28 = [HDCloudSyncModifyRecordsOperation alloc];
        configuration7 = [(HDCloudSyncOperation *)self configuration];
        configuration8 = [(HDCloudSyncOperation *)self configuration];
        repository6 = [configuration8 repository];
        primaryCKContainer2 = [repository6 primaryCKContainer];
        record = [v62 record];
        v84[0] = record;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:1];
        v34 = [(HDCloudSyncModifyRecordsOperation *)v28 initWithConfiguration:configuration7 container:primaryCKContainer2 recordsToSave:v33 recordIDsToDelete:0];

        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __101__HDCloudSyncVerifyAttachmentManagementRecordOperation__modifyCloudKitAndFinishWithManagementRecord___block_invoke;
        v81 = &unk_278625A30;
        selfCopy = self;
        v35 = v62;
        v83 = v35;
        [(HDCloudSyncOperation *)v34 setOnError:buf];
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = __101__HDCloudSyncVerifyAttachmentManagementRecordOperation__modifyCloudKitAndFinishWithManagementRecord___block_invoke_299;
        v78[3] = &unk_2786234A8;
        v78[4] = self;
        v79 = v35;
        [(HDCloudSyncOperation *)v34 setOnSuccess:v78];
        [(HDCloudSyncOperation *)v34 start];
      }
    }

LABEL_40:
    goto LABEL_41;
  }

  [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v10];
LABEL_42:

  v57 = *MEMORY[0x277D85DE8];
}

- (void)_updateAllAttachmentReferencesToUnsynchronizedWithError:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
    configuration = [v3 configuration];
    accessibilityAssertion = [configuration accessibilityAssertion];
    v7 = [v4 contextWithAccessibilityAssertion:accessibilityAssertion];

    configuration2 = [v3 configuration];
    repository = [configuration2 repository];
    profile = [repository profile];
    database = [profile database];
    v12 = [database performTransactionWithContext:v7 error:a2 block:&__block_literal_global_165 inaccessibilityHandler:0];

    return v12;
  }

  return result;
}

void __101__HDCloudSyncVerifyAttachmentManagementRecordOperation__modifyCloudKitAndFinishWithManagementRecord___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v5;
    v10 = [v7 recordID];
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    v15 = 2114;
    v16 = v4;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to modify management attachment record %{public}@, %{public}@", &v11, 0x20u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];

  v6 = *MEMORY[0x277D85DE8];
}

void __101__HDCloudSyncVerifyAttachmentManagementRecordOperation__modifyCloudKitAndFinishWithManagementRecord___block_invoke_299(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = MEMORY[0x277CCC328];
  v3 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = v3;
    v7 = [v4 recordID];
    *buf = 138543618;
    v26 = v5;
    v27 = 2114;
    v28 = v7;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[attachments] %{public}@: Successfully modified management attachment record %{public}@", buf, 0x16u);
  }

  v8 = [*(a1 + 40) UUID];
  v9 = [*(a1 + 32) configuration];
  v10 = [v9 repository];
  v11 = [v10 profile];
  v12 = [v11 legacyRepositoryProfile];
  v24 = 0;
  v13 = HDSetCloudSyncAttachmentManagementUUID(v8, v12, &v24);
  v14 = v24;

  if (v13)
  {
    v15 = *(a1 + 32);
    v16 = 1;
    v17 = 0;
  }

  else
  {
    _HKInitializeLogging();
    v18 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      v22 = v18;
      v23 = [v20 UUID];
      *buf = 138543874;
      v26 = v21;
      v27 = 2114;
      v28 = v23;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to persist local attachment management UUID %{public}@, %{public}@", buf, 0x20u);
    }

    v15 = *(a1 + 32);
    v16 = 0;
    v17 = v14;
  }

  [v15 finishWithSuccess:v16 error:v17];

  v19 = *MEMORY[0x277D85DE8];
}

@end