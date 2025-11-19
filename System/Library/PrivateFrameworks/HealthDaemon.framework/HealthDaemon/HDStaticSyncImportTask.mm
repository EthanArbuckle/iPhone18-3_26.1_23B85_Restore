@interface HDStaticSyncImportTask
- (HDStaticSyncImportTask)initWithProfile:(id)a3 options:(unint64_t)a4 storeIdentifier:(id)a5 URL:(id)a6;
- (id)runWithCompletion:(id)a3;
@end

@implementation HDStaticSyncImportTask

- (HDStaticSyncImportTask)initWithProfile:(id)a3 options:(unint64_t)a4 storeIdentifier:(id)a5 URL:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = HDStaticSyncImportTask;
  v12 = [(HDStaticSyncTask *)&v15 initWithProfile:a3 options:a4 storeIdentifier:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_importDirectoryURL, a6);
  }

  return v13;
}

- (id)runWithCompletion:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1000];
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      v7 = self->super._storeIdentifier;
      options = self->super._options;
      v9 = v7;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = v6;
    v11 = HKStaticSyncOptionsToString();
    *buf = 138544130;
    v23 = self;
    v24 = 2080;
    v25 = "[HDStaticSyncImportTask runWithCompletion:]";
    v26 = 2114;
    v27 = v7;
    v28 = 2114;
    v29 = v11;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "%{public}@: %s: storeIdentifier = %{public}@, options = %{public}@", buf, 0x2Au);
  }

  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HDStaticSyncImportTask_runWithCompletion___block_invoke;
  block[3] = &unk_278616D18;
  block[4] = self;
  v21 = v4;
  v13 = v5;
  v20 = v13;
  v14 = v4;
  dispatch_async(queue, block);
  v15 = v20;
  v16 = v13;

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

void __44__HDStaticSyncImportTask_runWithCompletion___block_invoke(void *a1)
{
  v73[1] = *MEMORY[0x277D85DE8];
  v2 = [_HDStaticSyncStore alloc];
  v3 = a1[4];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 8));
    v3 = a1[4];
    if (v3)
    {
      v3 = *(v3 + 24);
    }
  }

  else
  {
    WeakRetained = 0;
  }

  v56[0] = 0;
  v5 = v3;
  v6 = [(_HDStaticSyncStore *)v2 initWithProfile:WeakRetained storeIdentifier:v5 error:v56];
  v7 = v56[0];

  if (v6)
  {
    v8 = a1[4];
    if (!v8 || (*(v8 + 16) & 1) == 0)
    {
      v55 = v7;
      v9 = objc_loadWeakRetained(v6 + 2);
      v10 = [HDSyncAnchorEntity resetSyncAnchorsOfType:3 store:v6 profile:v9 error:&v55];

      v11 = v55;
      if (!v10)
      {
        (*(a1[6] + 16))();
        v7 = v11;
        goto LABEL_30;
      }

      v8 = a1[4];
      v7 = v11;
    }

    v12 = a1[5];
    v13 = a1[6];
    v14 = *(v8 + 40);
    v15 = v6;
    v16 = v12;
    v17 = v13;
    dispatch_assert_queue_V2(*(v8 + 32));
    v18 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v65 = 0;
    v19 = [v18 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:0 options:4 error:&v65];
    v20 = v65;
    v21 = v20;
    if (v19)
    {
      v48 = v20;
      v49 = v18;
      v51 = v6;
      v52 = v16;
      v50 = v7;
      v22 = [v19 hk_filter:&__block_literal_global_50];

      if ([v22 count])
      {
        v46 = v17;
        v47 = v14;
        v45 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"path" ascending:1];
        v73[0] = v45;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:1];
        v24 = [v22 sortedArrayUsingDescriptors:v23];

        v25 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:objc_msgSend(v24 parent:"count") pendingUnitCount:{v16, 1000}];
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v26 = v24;
        v54 = [v26 countByEnumeratingWithState:&v61 objects:v72 count:16];
        if (v54)
        {
          v27 = *v62;
          v53 = *v62;
          while (2)
          {
            for (i = 0; i != v54; ++i)
            {
              if (*v62 != v27)
              {
                objc_enumerationMutation(v26);
              }

              v29 = *(*(&v61 + 1) + 8 * i);
              _HKInitializeLogging();
              v30 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
              {
                v31 = v26;
                v32 = v15;
                v33 = v15[3];
                v34 = v25;
                v35 = v33;
                v36 = v30;
                v37 = [v29 path];
                *buf = 138543874;
                v67 = v8;
                v68 = 2114;
                v69 = v33;
                v15 = v32;
                v26 = v31;
                v70 = 2114;
                v71 = v37;
                _os_log_impl(&dword_228986000, v36, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: extract archive %{public}@", buf, 0x20u);

                v25 = v34;
                v27 = v53;
              }

              v60 = 0;
              v56[1] = MEMORY[0x277D85DD0];
              v56[2] = 3221225472;
              v56[3] = __100__HDStaticSyncImportTask__queue_importStaticSyncChangesFromDirectory_syncStore_progress_completion___block_invoke_467;
              v56[4] = &unk_27861A218;
              v56[5] = v29;
              v57 = v15;
              v58 = v8;
              v59 = v25;
              v38 = HKWithAutoreleasePool();
              v39 = v60;
              if ((v38 & 1) == 0)
              {
                v17 = v46;
                v46[2](v46, 0, v39);

                goto LABEL_26;
              }
            }

            v54 = [v26 countByEnumeratingWithState:&v61 objects:v72 count:16];
            if (v54)
            {
              continue;
            }

            break;
          }
        }

        v17 = v46;
        v46[2](v46, 1, 0);
LABEL_26:

        v7 = v50;
        v6 = v51;
        v14 = v47;
      }

      else
      {
        v40 = MEMORY[0x277CCA9B8];
        v41 = objc_opt_class();
        v42 = [v14 path];
        v43 = [v40 hk_errorForInvalidArgument:@"@" class:v41 selector:sel__queue_importStaticSyncChangesFromDirectory_syncStore_progress_completion_ format:{@"%@ contains no data files that can be imported", v42}];
        v17[2](v17, 0, v43);

        v7 = v50;
        v6 = v51;
      }

      v16 = v52;
      v21 = v48;
      v18 = v49;
    }

    else
    {
      v17[2](v17, 0, v20);
    }
  }

  else
  {
    (*(a1[6] + 16))();
  }

LABEL_30:

  v44 = *MEMORY[0x277D85DE8];
}

uint64_t __100__HDStaticSyncImportTask__queue_importStaticSyncChangesFromDirectory_syncStore_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 pathExtension];
  if ([v3 isEqualToString:@"zip"])
  {
    v4 = [v2 path];
    v5 = [v4 lastPathComponent];
    v6 = [v5 hasPrefix:@"syncarchive-"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __100__HDStaticSyncImportTask__queue_importStaticSyncChangesFromDirectory_syncStore_progress_completion___block_invoke_467(void *a1, void *a2)
{
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 8));
  }

  else
  {
    WeakRetained = 0;
  }

  v8 = a1[7];
  v9 = v5;
  v10 = v4;
  v11 = WeakRetained;
  v12 = v8;
  v13 = objc_opt_self();
  v14 = [objc_alloc(MEMORY[0x277CCDE88]) initWithURL:v9];
  v15 = [v14 numberOfEntriesWithError:0];
  v16 = [v15 integerValue];

  v17 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:v16 parent:v12 pendingUnitCount:1];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 1;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__46;
  v39 = __Block_byref_object_dispose__46;
  v40 = 0;
  v33 = v13;
  v34 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __81__HDStaticSyncImportTask__extractChangeArchive_syncStore_profile_progress_error___block_invoke;
  v27[3] = &unk_27861A240;
  v18 = v10;
  v28 = v18;
  v31 = &v41;
  v32 = &v35;
  v19 = v11;
  v29 = v19;
  v20 = v17;
  v30 = v20;
  v21 = [v14 enumerateEntriesWithError:&v34 block:v27];
  v22 = v34;
  *(v42 + 24) = v21;
  if ((v21 & 1) == 0)
  {
    v23 = v36[5];
    v24 = v23;
    if (v23)
    {
      if (a2)
      {
        v25 = v23;
        *a2 = v24;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v21;
}

void __81__HDStaticSyncImportTask__extractChangeArchive_syncStore_profile_progress_error___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a2;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v6 = a1[4];
    if (v6)
    {
      v7 = *(v6 + 24);
    }

    else
    {
      v7 = 0;
    }

    v8 = a1[9];
    v9 = v7;
    v10 = v5;
    v11 = [v4 pathname];
    *buf = 138543874;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    *&buf[22] = 2114;
    v35 = v11;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: ingest file %{public}@", buf, 0x20u);
  }

  v12 = v4;
  objc_opt_self();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v35 = __Block_byref_object_copy__46;
  v36 = __Block_byref_object_dispose__46;
  v37 = 0;
  v13 = v12;
  if (HKWithAutoreleasePool())
  {
    v14 = *(*&buf[8] + 40);
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(buf, 8);
  v15 = 0;
  v16 = v15;
  if (v14)
  {
    v17 = a1[4];
    v18 = a1[5];
    v19 = a1[6];
    v20 = v14;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24 = objc_opt_self();
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __73__HDStaticSyncImportTask__applySyncChanges_store_profile_progress_error___block_invoke;
    v35 = &unk_27861A268;
    v36 = v22;
    v37 = v20;
    v39 = v21;
    v40 = v24;
    v38 = v23;
    v25 = v21;
    v26 = v23;
    v27 = v20;
    v28 = v22;
    LOBYTE(v20) = HKWithAutoreleasePool();

    v29 = 0;
    if ((v20 & 1) == 0)
    {
      *(*(a1[7] + 8) + 24) = 0;
      *a3 = 1;
      objc_storeStrong((*(a1[8] + 8) + 40), 0);
    }
  }

  else
  {
    *(*(a1[7] + 8) + 24) = 0;
    *a3 = 1;
    v30 = *(a1[8] + 8);
    v31 = v15;
    v29 = *(v30 + 40);
    *(v30 + 40) = v31;
  }

  v32 = *MEMORY[0x277D85DE8];
}

BOOL __57__HDStaticSyncImportTask__extractChangesFromEntry_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v13 = 0;
  v5 = [v4 dataWithError:&v13];
  v6 = v13;
  if (v6)
  {
    if (a2)
    {
      v7 = v6;
      *a2 = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  else
  {
    v8 = [[HDCodableStaticSyncChangeSet alloc] initWithData:v5];
    v9 = [(HDCodableStaticSyncChangeSet *)v8 changes];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  return v6 == 0;
}

uint64_t __73__HDStaticSyncImportTask__applySyncChanges_store_profile_progress_error___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v29 = [*(a1 + 32) syncEngine];
  v4 = 1;
  v28 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:objc_msgSend(*(a1 + 40) parent:"count") pendingUnitCount:{*(a1 + 48), 1}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v26 = a2;
    v7 = 0;
    v8 = *v32;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        ++v7;
        v11 = [*(a1 + 32) syncEngine];
        v12 = [v11 allSyncEntitiesByIdentifier];
        v13 = [v10 syncEntityIdentifier];
        v14 = [v12 objectForKeyedSubscript:v13];

        if (v14)
        {
          v15 = *(a1 + 56);
          v30 = 0;
          v16 = [v29 applySyncChange:v10 forStore:v15 error:&v30];
          v17 = v30;
          if ((v16 & 1) == 0)
          {
            _HKInitializeLogging();
            v20 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v36 = v10;
              v37 = 2114;
              v38 = v17;
              _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "failed to apply request change %{public}@: %{public}@", buf, 0x16u);
            }

            v21 = v17;
            v22 = v21;
            if (v21)
            {
              if (v26)
              {
                v23 = v21;
                *v26 = v22;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v4 = 0;
            goto LABEL_21;
          }

          [v28 setCompletedUnitCount:v7];
        }

        else
        {
          _HKInitializeLogging();
          v18 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1 + 64);
            *buf = 138543618;
            v36 = v19;
            v37 = 2114;
            v38 = v10;
            _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: cannot apply change %{public}@ because it is for an unknown (possibly future) sync entity.", buf, 0x16u);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v4 = 1;
  }

LABEL_21:

  v24 = *MEMORY[0x277D85DE8];
  return v4;
}

@end