@interface HDCloudSyncPullReferencesOperation
- (HDCloudSyncPullReferencesOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (uint64_t)_persistPendingReferencesIfNeededWithError:(id *)a1;
- (void)_fetchAttachmentRecordAssets;
- (void)main;
@end

@implementation HDCloudSyncPullReferencesOperation

- (HDCloudSyncPullReferencesOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v12.receiver = self;
  v12.super_class = HDCloudSyncPullReferencesOperation;
  v4 = [(HDCloudSyncOperation *)&v12 initWithConfiguration:a3 cloudState:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    attachmentRecordsToFetch = v4->_attachmentRecordsToFetch;
    v4->_attachmentRecordsToFetch = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    referencesToPersist = v4->_referencesToPersist;
    v4->_referencesToPersist = v7;

    v9 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v4->_taskGroup;
    v4->_taskGroup = v9;

    [(HDSynchronousTaskGroup *)v4->_taskGroup setDelegate:v4];
  }

  return v4;
}

- (void)main
{
  v66 = *MEMORY[0x277D85DE8];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 repository];
  v5 = [v4 profile];
  v6 = [v5 legacyRepositoryProfile];
  v57 = 0;
  v7 = HDCloudSyncAttachmentReferenceEpoch(v6, &v57);
  v8 = v57;
  self->_epoch = v7;

  if (self->_epoch)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (v9)
  {
    v52 = v8;
    v10 = [(HDCloudSyncOperation *)self configuration];
    v11 = [v10 cachedCloudState];
    v12 = [(HDCloudSyncOperation *)self configuration];
    v13 = [v12 repository];
    v14 = [v13 primaryCKContainer];
    v15 = [v14 containerIdentifier];
    v56 = 0;
    v16 = [v11 attachmentZoneForContainerID:v15 error:&v56];
    v17 = v56;
    attachmentZone = self->_attachmentZone;
    self->_attachmentZone = v16;

    v19 = self->_attachmentZone;
    v20 = v17;
    if (!v19 && v17)
    {
      v21 = self;
      v22 = 0;
      v23 = v17;
LABEL_9:
      [(HDCloudSyncOperation *)v21 finishWithSuccess:v22 error:v23];
LABEL_25:
      v8 = v52;

      goto LABEL_26;
    }

    if (!v19)
    {
      v24 = [(HDCloudSyncOperation *)self configuration];
      v25 = [v24 repository];
      v26 = [v25 profileType];

      if (v26 != 1)
      {
        v21 = self;
        v22 = 1;
        v23 = 0;
        goto LABEL_9;
      }
    }

    v27 = [(HDCloudSyncOperation *)self configuration];
    v28 = [v27 accessibilityAssertion];
    v29 = [HDDatabaseTransactionContext contextForAccessibilityAssertion:v28];

    v30 = [(HDCloudSyncOperation *)self configuration];
    v31 = [v30 repository];
    v32 = [v31 profile];
    v33 = [v32 database];
    v54[4] = self;
    v55 = 0;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __42__HDCloudSyncPullReferencesOperation_main__block_invoke;
    v54[3] = &unk_278616D40;
    v34 = [v33 performWithTransactionContext:v29 error:&v55 block:v54];
    v35 = v55;

    if ((v34 & 1) == 0)
    {
      [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:v35];
LABEL_24:

      goto LABEL_25;
    }

    v51 = v17;
    if ([(NSMutableDictionary *)self->_attachmentRecordsToFetch count])
    {
      v36 = objc_alloc_init(HDMutableDatabaseTransactionContext);
      v37 = [(HDCloudSyncOperation *)self configuration];
      v38 = [v37 accessibilityAssertion];
      v39 = [(HDMutableDatabaseTransactionContext *)v36 contextWithAccessibilityAssertion:v38];

      v40 = [(HDCloudSyncOperation *)self configuration];
      v41 = [v40 repository];
      v42 = [v41 profile];
      v43 = [v42 database];
      v58 = 0;
      *v63 = MEMORY[0x277D85DD0];
      *&v63[8] = 3221225472;
      *&v63[16] = __68__HDCloudSyncPullReferencesOperation__persistUnsupportedAttachments__block_invoke;
      v64 = &unk_278616D40;
      v65 = self;
      LOBYTE(v36) = [v43 performWithTransactionContext:v39 error:&v58 block:v63];
      v44 = v58;

      if ((v36 & 1) == 0)
      {
        _HKInitializeLogging();
        v45 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v60 = self;
          v61 = 2114;
          v62 = v44;
          _os_log_error_impl(&dword_228986000, v45, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to ingest unsupported attachments with error: %{public}@", buf, 0x16u);
        }
      }

      [(HDCloudSyncPullReferencesOperation *)&self->super.super.isa _fetchAttachmentRecordAssets];
    }

    else
    {
      v53 = 0;
      v46 = [(HDCloudSyncPullReferencesOperation *)&self->super.super.isa _persistPendingReferencesIfNeededWithError:?];
      v47 = v53;
      v48 = v47;
      if ((v46 & 1) == 0)
      {
        _HKInitializeLogging();
        v50 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *v63 = 138543618;
          *&v63[4] = self;
          *&v63[12] = 2114;
          *&v63[14] = v48;
          _os_log_error_impl(&dword_228986000, v50, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to persist pending references, %{public}@", v63, 0x16u);
        }

        [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:v48];

        goto LABEL_23;
      }
    }

    [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
LABEL_23:
    v20 = v51;
    goto LABEL_24;
  }

  [(HDSynchronousTaskGroup *)self->_taskGroup failTaskWithError:v8];
LABEL_26:

  v49 = *MEMORY[0x277D85DE8];
}

uint64_t __42__HDCloudSyncPullReferencesOperation_main__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 120);
  v5 = objc_opt_class();
  v6 = *(a1 + 32);
  v7 = *(v6 + 128);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__HDCloudSyncPullReferencesOperation_main__block_invoke_2;
  v9[3] = &unk_278621E38;
  v9[4] = v6;
  return [v4 recordsForClass:v5 epoch:v7 error:a2 enumerationHandler:v9];
}

uint64_t __42__HDCloudSyncPullReferencesOperation_main__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = v6;
  v8 = *(a1 + 32);
  v9 = *(v8 + 128);
  if (v9 <= a3)
  {
    v9 = a3;
  }

  *(v8 + 128) = v9;
  v10 = [v6 attachmentReference];
  v11 = *(*(a1 + 32) + 112);
  v12 = [v7 referenceIdentifier];
  [v11 setObject:v10 forKeyedSubscript:v12];

  v13 = objc_alloc(MEMORY[0x277CCAD78]);
  v14 = [v7 attachmentIdentifier];
  v15 = [v13 initWithUUIDString:v14];
  v16 = [*(a1 + 32) configuration];
  v17 = [v16 repository];
  v18 = [v17 profile];
  v19 = [v18 legacyRepositoryProfile];
  v50 = 0;
  v20 = [HDAttachmentEntity attachmentWithIdentifier:v15 profile:v19 error:&v50];
  v21 = v50;

  if (!v20 && v21)
  {
    if (v46)
    {
      v22 = v21;
      v23 = 0;
      *v46 = v21;
    }

    else
    {
      _HKLogDroppedError();
      v23 = 0;
    }

    goto LABEL_22;
  }

  if (v20)
  {
    v23 = 1;
LABEL_22:
    v30 = v21;
    goto LABEL_23;
  }

  v24 = *(*(a1 + 32) + 120);
  v25 = [v7 attachmentIdentifier];
  v26 = [*(*(a1 + 32) + 120) zoneIdentifier];
  v27 = [v26 zoneIdentifier];
  v28 = [HDCloudSyncAttachmentRecord recordIDForAttachmentIdentifier:v25 zoneID:v27];
  v49 = v21;
  v29 = [v24 recordForRecordID:v28 class:objc_opt_class() error:&v49];
  v30 = v49;

  if (v29)
  {
    v31 = 1;
  }

  else
  {
    v31 = v30 == 0;
  }

  v23 = v31;
  if (v31)
  {
    if (v29)
    {
      v32 = [*(*(a1 + 32) + 104) allValues];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __42__HDCloudSyncPullReferencesOperation_main__block_invoke_298;
      v47[3] = &unk_278621E10;
      v33 = v29;
      v48 = v33;
      v34 = [v32 hk_containsObjectPassingTest:v47];

      if ((v34 & 1) == 0)
      {
        v35 = *(*(a1 + 32) + 104);
        v36 = [v7 attachmentIdentifier];
        [v35 setObject:v33 forKeyedSubscript:v36];
      }
    }

    else
    {
      _HKInitializeLogging();
      v40 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
      {
        v41 = *(a1 + 32);
        v42 = v40;
        v43 = [v7 attachmentIdentifier];
        v44 = [v7 referenceIdentifier];
        *buf = 138543874;
        v52 = v41;
        v53 = 2114;
        v54 = v43;
        v55 = 2114;
        v56 = v44;
        _os_log_fault_impl(&dword_228986000, v42, OS_LOG_TYPE_FAULT, "%{public}@ Failed to find attachment record %{public}@ for reference %{public}@ in the cache", buf, 0x20u);
      }
    }
  }

  else if (v46)
  {
    v39 = v30;
    *v46 = v30;
  }

  else
  {
    _HKLogDroppedError();
  }

LABEL_23:
  v37 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t __42__HDCloudSyncPullReferencesOperation_main__block_invoke_298(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [*(a1 + 32) recordID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)_fetchAttachmentRecordAssets
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_14;
  }

  [a1[17] beginTask];
  if ([a1[13] count])
  {
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v25[3] = 0;
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v24[3] = 0;
    v2 = [a1[13] allValues];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66__HDCloudSyncPullReferencesOperation__fetchAttachmentRecordAssets__block_invoke;
    v23[3] = &unk_278621E88;
    v23[4] = v25;
    v23[5] = v24;
    v3 = [v2 hk_map:v23];

    if ([v3 count])
    {
      if (!v3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v6 = [a1[13] allValues];
      v7 = [v6 firstObject];
      v8 = [v7 recordID];
      v26[0] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];

      v3 = v9;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    if ([v3 count])
    {
      v10 = [HDCloudSyncFetchRecordsOperation alloc];
      v11 = [a1 configuration];
      v12 = [a1 configuration];
      v13 = [v12 repository];
      v14 = [v13 primaryCKContainer];
      v15 = [(HDCloudSyncFetchRecordsOperation *)v10 initWithConfiguration:v11 container:v14 recordIDs:v3];

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __66__HDCloudSyncPullReferencesOperation__fetchAttachmentRecordAssets__block_invoke_2;
      v21[3] = &unk_278621EB0;
      v21[4] = a1;
      v16 = v3;
      v22 = v16;
      [(HDCloudSyncOperation *)v15 setOnError:v21];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __66__HDCloudSyncPullReferencesOperation__fetchAttachmentRecordAssets__block_invoke_308;
      v19[3] = &unk_278621ED8;
      v19[4] = a1;
      v20 = v16;
      [(HDCloudSyncOperation *)v15 setOnSuccess:v19];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __66__HDCloudSyncPullReferencesOperation__fetchAttachmentRecordAssets__block_invoke_310;
      v18[3] = &unk_278621F00;
      v18[4] = a1;
      [(HDCloudSyncFetchRecordsOperation *)v15 setRecordHandler:v18];
      [(HDCloudSyncOperation *)v15 start];

LABEL_13:
      _Block_object_dispose(v24, 8);
      _Block_object_dispose(v25, 8);
LABEL_14:
      v17 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_12:
    [a1[17] finishTask];
    goto LABEL_13;
  }

  v4 = a1[17];
  v5 = *MEMORY[0x277D85DE8];

  [v4 finishTask];
}

- (uint64_t)_persistPendingReferencesIfNeededWithError:(id *)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1[14] allValues];
  v5 = [v4 count];

  if (!v5)
  {
    return 1;
  }

  v6 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  v7 = [a1 configuration];
  v8 = [v7 accessibilityAssertion];
  v9 = [v6 contextWithAccessibilityAssertion:v8];

  v10 = [a1 configuration];
  v11 = [v10 repository];
  v12 = [v11 profile];
  v13 = [v12 database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__HDCloudSyncPullReferencesOperation__persistPendingReferencesIfNeededWithError___block_invoke;
  v16[3] = &unk_278616D40;
  v16[4] = a1;
  v14 = [v13 performWithTransactionContext:v9 error:a2 block:v16];

  return v14;
}

uint64_t __68__HDCloudSyncPullReferencesOperation__persistUnsupportedAttachments__block_invoke(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = [*(*(a1 + 32) + 104) allValues];
  v44 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v44)
  {
    v41 = a2;
    v43 = *v59;
    while (2)
    {
      v4 = 0;
      do
      {
        if (*v59 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v46 = v4;
        v5 = *(*(&v58 + 1) + 8 * v4);
        v6 = [*(*(a1 + 32) + 112) allValues];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __68__HDCloudSyncPullReferencesOperation__persistUnsupportedAttachments__block_invoke_2;
        v57[3] = &unk_278621E60;
        v45 = v5;
        v57[4] = v5;
        v7 = [v6 hk_filter:v57];

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v53 objects:v63 count:16];
        v47 = v8;
        if (v9)
        {
          v10 = v9;
          v11 = *v54;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v54 != v11)
              {
                objc_enumerationMutation(v47);
              }

              v13 = *(*(&v53 + 1) + 8 * i);
              v14 = [*(a1 + 32) configuration];
              v15 = [v14 repository];
              v16 = [v15 attachmentManager];
              v17 = [v16 supportedSchemaVersionForReference:v13];

              if (!v17 || v17 >= [v13 schemaVersion])
              {
                v34 = v47;
                v23 = v47;
                goto LABEL_25;
              }
            }

            v8 = v47;
            v10 = [v47 countByEnumeratingWithState:&v53 objects:v63 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v18 = [*(a1 + 32) configuration];
        v19 = [v18 repository];
        v20 = [v19 attachmentManager];
        v21 = [v45 attachment];
        v52 = 0;
        v22 = [v20 insertAttachmentReferences:v8 attachment:v21 error:&v52];
        v23 = v52;

        if ((v22 & 1) == 0)
        {
          v36 = v23;
          v37 = v36;
          if (v36)
          {
            if (v41)
            {
              v38 = v36;
              *v41 = v37;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v35 = 0;
          goto LABEL_33;
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v24 = v8;
        v25 = [v24 countByEnumeratingWithState:&v48 objects:v62 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v49;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v49 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(a1 + 32) + 112);
              v30 = [*(*(&v48 + 1) + 8 * j) identifier];
              v31 = [v30 UUIDString];
              [v29 removeObjectForKey:v31];
            }

            v26 = [v24 countByEnumeratingWithState:&v48 objects:v62 count:16];
          }

          while (v26);
        }

        v32 = *(*(a1 + 32) + 104);
        v33 = [v45 attachmentIdentifier];
        [v32 removeObjectForKey:v33];

        v34 = v47;
LABEL_25:

        v4 = v46 + 1;
      }

      while (v46 + 1 != v44);
      v44 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
      if (v44)
      {
        continue;
      }

      break;
    }
  }

  v35 = 1;
LABEL_33:

  v39 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t __68__HDCloudSyncPullReferencesOperation__persistUnsupportedAttachments__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 attachmentIdentifier];
  v5 = [v3 attachmentIdentifier];

  v6 = [v5 UUIDString];
  v7 = [v4 isEqualToString:v6];

  return v7;
}

id __66__HDCloudSyncPullReferencesOperation__fetchAttachmentRecordAssets__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 32) + 8) + 24) <= 99 && (v5 = *(*(*(a1 + 40) + 8) + 24), [v3 fileSize] + v5 <= 104857600))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    *(*(*(a1 + 40) + 8) + 24) += [v4 fileSize];
    v6 = [v4 recordID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __66__HDCloudSyncPullReferencesOperation__fetchAttachmentRecordAssets__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 138543874;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    v13 = 2114;
    v14 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to fetch recordIDs %{public}@: %{public}@", &v9, 0x20u);
  }

  [*(*(a1 + 32) + 136) failTaskWithError:v4];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __66__HDCloudSyncPullReferencesOperation__fetchAttachmentRecordAssets__block_invoke_308(uint64_t a1)
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
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[attachments] %{public}@: Successfully fetched %lu records", &v8, 0x16u);
  }

  [(HDCloudSyncPullReferencesOperation *)*(a1 + 32) _fetchAttachmentRecordAssets];
  result = [*(*(a1 + 32) + 136) finishTask];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __66__HDCloudSyncPullReferencesOperation__fetchAttachmentRecordAssets__block_invoke_310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = [(HDCloudSyncRecord *)HDCloudSyncAttachmentRecord recordWithCKRecord:a2 error:a3];
    if (v5)
    {
      v6 = [*(v3 + 112) allValues];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __66__HDCloudSyncPullReferencesOperation__ingestAssetForRecord_error___block_invoke;
      v43[3] = &unk_278621E60;
      v34 = v5;
      v7 = v5;
      v44 = v7;
      v8 = [v6 hk_filter:v43];

      v9 = objc_alloc_init(HDMutableDatabaseTransactionContext);
      v10 = [v3 configuration];
      v11 = [v10 accessibilityAssertion];
      v12 = [(HDMutableDatabaseTransactionContext *)v9 contextWithAccessibilityAssertion:v11];

      v13 = [v3 configuration];
      v14 = [v13 repository];
      v15 = [v14 profile];
      v16 = [v15 database];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __66__HDCloudSyncPullReferencesOperation__ingestAssetForRecord_error___block_invoke_2;
      v39[3] = &unk_27861A028;
      v40 = v7;
      v41 = v3;
      v17 = v8;
      v42 = v17;
      v33 = v12;
      v32 = [v16 performWithTransactionContext:v12 error:a3 block:v39];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v36;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v36 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v35 + 1) + 8 * i);
            v24 = *(v3 + 112);
            v25 = [v23 identifier];
            v26 = [v25 UUIDString];
            [v24 removeObjectForKey:v26];

            v27 = *(v3 + 104);
            v28 = [v23 attachmentIdentifier];
            v29 = [v28 UUIDString];
            [v27 removeObjectForKey:v29];
          }

          v20 = [v18 countByEnumeratingWithState:&v35 objects:v45 count:16];
        }

        while (v20);
      }

      v5 = v34;
      v3 = v32;
    }

    else
    {
      v3 = 0;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __66__HDCloudSyncPullReferencesOperation__ingestAssetForRecord_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 attachmentIdentifier];
  v4 = [v3 UUIDString];
  v5 = [*(a1 + 32) attachmentIdentifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

uint64_t __66__HDCloudSyncPullReferencesOperation__ingestAssetForRecord_error___block_invoke_2(uint64_t a1, HDInsertSynchronisedAttachmentReferences **a2)
{
  v52 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) hasAssetData])
  {
    v4 = [*(a1 + 40) configuration];
    v5 = [v4 repository];
    v6 = [v5 attachmentManager];
    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) attachment];
    v9 = [*(a1 + 32) assetData];
    v45 = 0;
    v10 = [v6 insertAttachmentReferences:v7 attachment:v8 fileData:v9 encrypt:0 error:&v45];
    v11 = v45;

    if ((v10 & 1) == 0)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v34 = *(a1 + 32);
        v33 = *(a1 + 40);
        *buf = 138543874;
        v47 = v33;
        v48 = 2114;
        v49 = v34;
        v50 = 2114;
        v51 = v11;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to ingest attachment record %{public}@, %{public}@", buf, 0x20u);
      }

      v13 = v11;
      v14 = v13 == 0;
      if (!v13)
      {
        goto LABEL_17;
      }

      if (a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      _HKLogDroppedError();
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v16 = MEMORY[0x277CCA9F8];
  v17 = [*(a1 + 32) assetURL];
  v44 = 0;
  v13 = [v16 fileHandleForReadingFromURL:v17 error:&v44];
  v11 = v44;

  if (v13)
  {
    v18 = [*(a1 + 40) configuration];
    v19 = [v18 repository];
    v20 = [v19 attachmentManager];
    v21 = *(a1 + 48);
    v22 = [*(a1 + 32) attachment];
    v43 = 0;
    v23 = [v20 insertAttachmentReferences:v21 attachment:v22 fileHandle:v13 encrypt:0 error:&v43];
    v24 = v43;

    [(HDInsertSynchronisedAttachmentReferences *)v13 closeFile];
    if (!v23)
    {
      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v42 = *(a1 + 32);
        v41 = *(a1 + 40);
        *buf = 138543874;
        v47 = v41;
        v48 = 2114;
        v49 = v42;
        v50 = 2114;
        v51 = v24;
        _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to ingest attachment record %{public}@, %{public}@", buf, 0x20u);
      }

      v25 = v24;
      v14 = v25 == 0;
      if (v25)
      {
        if (a2)
        {
          v30 = v25;
          *a2 = v25;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_25;
    }

LABEL_11:
    v11 = [[HDInsertSynchronisedAttachmentReferences alloc] initWithAttachmentReferences:*(a1 + 48)];
    v13 = [*(a1 + 40) configuration];
    v25 = [(HDInsertSynchronisedAttachmentReferences *)v13 repository];
    v26 = [(HDInsertSynchronisedAttachmentReferences *)v25 profile];
    v27 = [v26 legacyRepositoryProfile];
    v14 = [(HDJournalableOperation *)v11 performOrJournalWithProfile:v27 error:a2];

LABEL_25:
    goto LABEL_26;
  }

  _HKInitializeLogging();
  v28 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v37 = a1 + 32;
    v35 = *(a1 + 32);
    v36 = *(v37 + 8);
    v38 = v28;
    v39 = [v35 assetURL];
    v40 = [v39 path];
    *buf = 138543874;
    v47 = v36;
    v48 = 2114;
    v49 = v40;
    v50 = 2114;
    v51 = v11;
    _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to retreive fileHandle for %{public}@, %{public}@", buf, 0x20u);
  }

  v13 = v11;
  v14 = v13 == 0;
  if (!v13)
  {
    goto LABEL_17;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_7:
  v15 = v13;
  *a2 = v13;
LABEL_17:
  v11 = v13;
LABEL_26:

  v31 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __81__HDCloudSyncPullReferencesOperation__persistPendingReferencesIfNeededWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [HDInsertSynchronisedAttachmentReferences alloc];
  v5 = [*(*(a1 + 32) + 112) allValues];
  v6 = [(HDInsertSynchronisedAttachmentReferences *)v4 initWithAttachmentReferences:v5];

  v7 = [*(a1 + 32) configuration];
  v8 = [v7 repository];
  v9 = [v8 profile];
  v10 = [v9 legacyRepositoryProfile];
  v11 = [(HDJournalableOperation *)v6 performOrJournalWithProfile:v10 error:a2];

  return v11;
}

@end