@interface HDStaticSyncExportTask
- (BOOL)syncSession:(id)a3 didEndTransactionWithError:(id *)a4;
- (HDStaticSyncExportTask)initWithProfile:(id)a3 options:(unint64_t)a4 storeIdentifier:(id)a5 URL:(id)a6 batchSize:(unint64_t)a7;
- (id)runWithCompletion:(id)a3;
- (void)syncSession:(id)a3 didFinishSuccessfully:(BOOL)a4 error:(id)a5;
- (void)syncSession:(id)a3 sendChanges:(id)a4 completion:(id)a5;
- (void)syncSessionWillBegin:(id)a3;
@end

@implementation HDStaticSyncExportTask

- (HDStaticSyncExportTask)initWithProfile:(id)a3 options:(unint64_t)a4 storeIdentifier:(id)a5 URL:(id)a6 batchSize:(unint64_t)a7
{
  v13 = a6;
  v18.receiver = self;
  v18.super_class = HDStaticSyncExportTask;
  v14 = [(HDStaticSyncTask *)&v18 initWithProfile:a3 options:a4 storeIdentifier:a5];
  if (v14)
  {
    v15 = HKCreateSerialDispatchQueue();
    exportQueue = v14->_exportQueue;
    v14->_exportQueue = v15;

    objc_storeStrong(&v14->_exportDirectoryURL, a6);
    v14->_batchSize = a7;
  }

  return v14;
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
    v25 = "[HDStaticSyncExportTask runWithCompletion:]";
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
  block[2] = __44__HDStaticSyncExportTask_runWithCompletion___block_invoke;
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

void __44__HDStaticSyncExportTask_runWithCompletion___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__46;
  v47 = __Block_byref_object_dispose__46;
  v48 = 0;
  v2 = [_HDStaticSyncStore alloc];
  v3 = *(a1 + 32);
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 8));
    v3 = *(a1 + 32);
    if (v3)
    {
      v3 = *(v3 + 24);
    }
  }

  else
  {
    WeakRetained = 0;
  }

  v5 = v3;
  v6 = (v44 + 5);
  obj = v44[5];
  v7 = [(_HDStaticSyncStore *)v2 initWithProfile:WeakRetained storeIdentifier:v5 error:&obj];
  objc_storeStrong(v6, obj);

  if (!v7)
  {
    v21 = v44[5];
    (*(*(a1 + 48) + 16))();
    goto LABEL_33;
  }

  v8 = *(a1 + 32);
  if (!v8 || (v9 = *(v8 + 16), (v9 & 1) == 0))
  {
    v10 = objc_alloc_init(HDSyncAnchorMap);
    v11 = (v44 + 5);
    v41 = v44[5];
    v12 = v10;
    v13 = objc_loadWeakRetained(v7 + 2);
    v14 = [HDSyncAnchorEntity setAcknowledgedAnchorsWithMap:v12 store:v7 resetNext:1 resetInvalid:1 profile:v13 error:&v41];

    objc_storeStrong(v11, v41);
    if (!v14)
    {
      v22 = v44[5];
      (*(*(a1 + 48) + 16))();
LABEL_32:

      goto LABEL_33;
    }

    v8 = *(a1 + 32);
    if (!v8)
    {
LABEL_21:
      objc_storeStrong((v8 + 64), *(a1 + 40));
      v12 = [(HDSyncSession *)[_HDStaticSyncSession alloc] initWithSyncStore:v7 reason:@"Static Sync" delegate:*(a1 + 32)];
      [(HDSyncSession *)v12 setDatabaseAccessibilityTimeout:300.0];
      _HKInitializeLogging();
      v24 = MEMORY[0x277CCC328];
      v25 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
      {
        v26 = v25;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = *(a1 + 32);
          v28 = [(HDSyncSession *)v12 syncStore];
          *v55 = 138543618;
          *&v55[4] = v27;
          *&v55[12] = 2114;
          *&v55[14] = v28;
          _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_INFO, "%{public}@: start performSyncSession: %{public}@", v55, 0x16u);
        }
      }

      v29 = *(a1 + 32);
      if (v29)
      {
        v30 = objc_loadWeakRetained((v29 + 8));
      }

      else
      {
        v30 = 0;
      }

      v31 = [v30 syncEngine];
      v32 = (v44 + 5);
      v39 = v44[5];
      [v31 performSyncSession:v12 accessibilityAssertion:0 error:&v39];
      objc_storeStrong(v32, v39);

      _HKInitializeLogging();
      v33 = *v24;
      if (os_log_type_enabled(*v24, OS_LOG_TYPE_INFO))
      {
        v34 = v33;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = *(a1 + 32);
          v36 = [(HDSyncSession *)v12 syncStore];
          *v55 = 138543618;
          *&v55[4] = v35;
          *&v55[12] = 2114;
          *&v55[14] = v36;
          _os_log_impl(&dword_228986000, v34, OS_LOG_TYPE_INFO, "%{public}@: finshed performSyncSession: %{public}@", v55, 0x16u);
        }
      }

      v37 = v44[5];
      (*(*(a1 + 48) + 16))();
      goto LABEL_32;
    }

    v9 = *(v8 + 16);
  }

  if ((v9 & 2) == 0)
  {
    goto LABEL_21;
  }

  *v55 = 0;
  *&v55[8] = v55;
  *&v55[16] = 0x2020000000;
  v56 = 1;
  v15 = *(v8 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HDStaticSyncExportTask_runWithCompletion___block_invoke_319;
  block[3] = &unk_27861A1D0;
  block[4] = v8;
  block[5] = &v43;
  block[6] = v55;
  dispatch_sync(v15, block);
  v16 = *(*&v55[8] + 24);
  if (v16)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 32);
        v20 = [*(v19 + 112) path];
        *buf = 138543874;
        v50 = v19;
        v51 = 2114;
        v52 = v7;
        v53 = 2114;
        v54 = v20;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: export static sync data to %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v23 = v44[5];
    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(v55, 8);
  if (v16)
  {
    v8 = *(a1 + 32);
    goto LABEL_21;
  }

LABEL_33:

  _Block_object_dispose(&v43, 8);
  v38 = *MEMORY[0x277D85DE8];
}

void __44__HDStaticSyncExportTask_runWithCompletion___block_invoke_319(void *a1)
{
  *(a1[4] + 48) = 1;
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 112);
  v5 = *(a1[5] + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  obj = v7;
  v8 = v3;
  v9 = v4;
  objc_opt_self();
  v10 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v11 = v9;
  v12 = v11;
  if (!v11)
  {
    v12 = [v10 temporaryDirectory];
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"staticSync-%@", v8];
  v14 = [v12 URLByAppendingPathComponent:v13 isDirectory:1];
  [v10 removeItemAtURL:v14 error:0];
  v15 = 0;
  if ([v10 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&obj])
  {
    v15 = v14;
  }

  objc_storeStrong(v6, obj);
  v16 = a1[4];
  v17 = *(v16 + 112);
  *(v16 + 112) = v15;

  *(*(a1[6] + 8) + 24) = *(a1[4] + 112) != 0;
}

uint64_t __82__HDStaticSyncExportTask__estimateSyncEntityClassesWithChangesForSession_profile___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [*(a1 + 32) syncStore];
  v6 = [v5 orderedSyncEntities];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v11 syncEntityIdentifier];
        v13 = [*(a1 + 32) syncStore];
        v14 = [HDSyncAnchorEntity syncAnchorOfType:0 entityIdentifier:v12 store:v13 profile:*(a1 + 40) error:a3];

        v15 = *(a1 + 56);
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        v18 = v16;
        objc_opt_self();
        v19 = [v11 nextSyncAnchorWithSession:v18 startSyncAnchor:v14 profile:v17 error:a3];

        if (v14 < 0 || v19 < 0)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 format:{@"Invalid anchor(s) (%lld, %lld) for %@", v14, v19, v11}];
          v20 = 0;
          goto LABEL_14;
        }

        if (v19 != v14)
        {
          [*(a1 + 48) addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v20 = 1;
LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)syncSessionWillBegin:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v4 syncStore];
    *buf = 138543874;
    v14 = self;
    v15 = 2080;
    v16 = "[HDStaticSyncExportTask syncSessionWillBegin:]";
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "%{public}@: %s: %{public}@", buf, 0x20u);
  }

  exportQueue = self->_exportQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__HDStaticSyncExportTask_syncSessionWillBegin___block_invoke;
  v11[3] = &unk_278613920;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  dispatch_async(exportQueue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __47__HDStaticSyncExportTask_syncSessionWillBegin___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    *(v2 + 96) = 0;
    *(*(a1 + 32) + 104) = 0;
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    if (!v2)
    {
      WeakRetained = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  WeakRetained = objc_loadWeakRetained((v2 + 8));
LABEL_6:
  v5 = v3;
  v6 = WeakRetained;
  v7 = objc_opt_self();
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [v6 database];
  v30 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __82__HDStaticSyncExportTask__estimateSyncEntityClassesWithChangesForSession_profile___block_invoke;
  v25[3] = &unk_278613550;
  v10 = v5;
  v26 = v10;
  v11 = v6;
  v27 = v11;
  v29 = v7;
  v12 = v8;
  v28 = v12;
  v13 = [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:v9 error:&v30 block:v25];
  v14 = v30;

  if (v13)
  {
    v24 = v12;
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v32 = v7;
      v33 = 2114;
      v34 = v14;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: error estimating (for progress reporting) sync entity classes with changes to sync: %{public}@", buf, 0x16u);
    }

    v16 = [v10 syncStore];
    v24 = [v16 orderedSyncEntities];
  }

  v17 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:objc_msgSend(v24 parent:"count") pendingUnitCount:{*(*(a1 + 32) + 64), objc_msgSend(*(*(a1 + 32) + 64), "totalUnitCount")}];
  v18 = *(a1 + 32);
  v19 = *(v18 + 72);
  *(v18 + 72) = v17;

  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v21 = *(a1 + 32);
  v22 = *(v21 + 80);
  *(v21 + 80) = v20;

  v23 = *MEMORY[0x277D85DE8];
}

- (void)syncSession:(id)a3 sendChanges:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [v8 syncStore];
    *buf = 138543874;
    v24 = self;
    v25 = 2080;
    v26 = "[HDStaticSyncExportTask syncSession:sendChanges:completion:]";
    v27 = 2114;
    v28 = v13;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_INFO, "%{public}@: %s: %{public}@", buf, 0x20u);
  }

  exportQueue = self->_exportQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__HDStaticSyncExportTask_syncSession_sendChanges_completion___block_invoke;
  v19[3] = &unk_278613680;
  v19[4] = self;
  v20 = v9;
  v21 = v8;
  v22 = v10;
  v15 = v10;
  v16 = v8;
  v17 = v9;
  dispatch_async(exportQueue, v19);

  v18 = *MEMORY[0x277D85DE8];
}

void __61__HDStaticSyncExportTask_syncSession_sendChanges_completion___block_invoke(uint64_t a1)
{
  v100 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 48) == 1)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    v5 = v3;
    dispatch_assert_queue_V2(*(v2 + 40));
    if (!*(v2 + 88))
    {
      *(v2 + 96) = 0;
      v6 = *(v2 + 112);
      v7 = *(v2 + 104);
      v8 = v5;
      v9 = v6;
      objc_opt_self();
      v10 = MEMORY[0x277CCACA8];
      v11 = [v8 sessionUUID];

      v12 = [v10 stringWithFormat:@"syncarchive-%@-%llu", v11, v7];

      v13 = [v9 URLByAppendingPathComponent:v12];

      v14 = [v13 URLByAppendingPathExtension:@"zip"];

      v15 = [objc_alloc(MEMORY[0x277CCDD18]) initWithURL:v14 archiveType:0];
      v16 = *(v2 + 88);
      *(v2 + 88) = v15;

      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
      {
        v18 = v17;
        v19 = [v8 syncStore];
        v20 = [*(v2 + 88) archiveURL];
        v21 = [v20 path];
        *buf = 138543874;
        *&buf[4] = v2;
        *&buf[12] = 2114;
        *&buf[14] = v19;
        v98 = 2114;
        v99 = v21;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: create archive %{public}@", buf, 0x20u);
      }
    }

    v22 = *(v2 + 88);
    v23 = v4;
    objc_opt_self();
    v24 = [HDCodableStaticSyncChangeSet changeSetWithChanges:v23];

    v25 = [v24 data];

    v26 = *(v2 + 96);
    objc_opt_self();
    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"/changeset-%04llu", v26];
    v28 = [MEMORY[0x277CBEBC0] fileURLWithPath:v27 isDirectory:0];

    [v22 addDataToArchive:v25 pathInArchive:v28];
    ++*(v2 + 96);
    if (*(v2 + 56))
    {
      v29 = objc_alloc_init(MEMORY[0x277CCAA00]);
      v30 = [*(v2 + 88) archiveURL];
      v31 = [v30 path];
      *buf = 0;
      v32 = [v29 attributesOfItemAtPath:v31 error:buf];
      v33 = *buf;

      if (v32)
      {
        if ([v32 fileSize] <= *(v2 + 56))
        {
          v35 = 0;
          v36 = 1;
        }

        else
        {
          [*(v2 + 88) closeArchive];
          v34 = *(v2 + 88);
          *(v2 + 88) = 0;

          v35 = 0;
          ++*(v2 + 104);
          v36 = 2;
        }
      }

      else
      {
        v38 = v33;
        v35 = v38;
        if (v38)
        {
          v39 = v38;
        }

        v36 = 0;
      }

      v37 = off_27860F000;
    }

    else
    {
      v35 = 0;
      v36 = 1;
      v37 = off_27860F000;
    }

    v40 = v35;
    v41 = v40;
    if (!v36)
    {
      v86 = *(*(a1 + 56) + 16);
      goto LABEL_48;
    }
  }

  else
  {
    v37 = off_27860F000;
  }

  v41 = objc_alloc_init(HDSyncAnchorRangeMap);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = *(a1 + 40);
  v42 = [obj countByEnumeratingWithState:&v92 objects:v96 count:16];
  if (!v42)
  {
    goto LABEL_43;
  }

  v43 = v42;
  v44 = &off_278633000;
  v91 = *v93;
  v89 = v41;
  while (2)
  {
    v45 = 0;
    v88 = v44[466];
    do
    {
      if (*v93 != v91)
      {
        objc_enumerationMutation(obj);
      }

      v46 = *(*(&v92 + 1) + 8 * v45);
      v47 = *(*(a1 + 32) + 80);
      v48 = [v46 syncEntityIdentifier];
      LOBYTE(v47) = [v47 containsObject:v48];

      if ((v47 & 1) == 0)
      {
        v49 = *(*(a1 + 32) + 80);
        v50 = [v46 syncEntityIdentifier];
        [v49 addObject:v50];

        [*(*(a1 + 32) + 72) setCompletedUnitCount:{objc_msgSend(*(*(a1 + 32) + 80), "count")}];
      }

      v51 = v37[162];
      v52 = v41;
      v53 = v46;
      objc_opt_self();
      *buf = 0;
      *&buf[8] = 0;
      v54 = [v53 syncEntityIdentifier];
      v55 = [(HDSyncAnchorRangeMap *)v52 getAnchorRange:buf forSyncEntityIdentifier:v54];

      if (!v55)
      {
        v57 = [v53 syncAnchorRange];
        v59 = v58;
        v60 = [v53 syncEntityIdentifier];
        [(HDSyncAnchorRangeMap *)v52 setAnchorRange:v57 forSyncEntityIdentifier:v59, v60];
        v61 = 0;
        v62 = 1;
        goto LABEL_40;
      }

      v56 = [v53 sequenceNumber];
      if ([v56 integerValue])
      {
      }

      else
      {
        v63 = [v53 syncAnchorRange];
        v64 = *&buf[8];

        v65 = v63 == v64;
        v37 = off_27860F000;
        if (!v65)
        {
          v76 = MEMORY[0x277CCA9B8];
          v77 = objc_opt_class();
          v78 = [v53 syncAnchorRange];
          v79 = *&buf[8];
          v60 = [v53 sequenceNumber];
          [v76 hk_errorForInvalidArgument:@"@" class:v77 selector:v88 format:{@"startAnchor (%lld) != previous endAnchor (%lld), sequence (%@)", v78, v79, v60}];
          v80 = LABEL_36:;
          v61 = v80;
          if (v80)
          {
            v81 = v80;
          }

          v62 = 0;
          v37 = off_27860F000;
          goto LABEL_39;
        }
      }

      v66 = [v53 sequenceNumber];
      if ([v66 integerValue] < 1)
      {
      }

      else
      {
        [v53 syncAnchorRange];
        v68 = v67;
        v69 = *&buf[8];

        if (v68 != v69)
        {
          v70 = MEMORY[0x277CCA9B8];
          v71 = objc_opt_class();
          [v53 syncAnchorRange];
          v73 = v72;
          v74 = *&buf[8];
          v60 = [v53 sequenceNumber];
          [v70 hk_errorForInvalidArgument:@"@" class:v71 selector:v88 format:{@"endAnchor (%lld) != previous endAnchor (%lld), sequence (%@)", v73, v74, v60}];
          goto LABEL_36;
        }
      }

      [v53 syncAnchorRange];
      *&buf[8] = v75;
      v60 = [v53 syncEntityIdentifier];
      [(HDSyncAnchorRangeMap *)v52 setAnchorRange:*buf forSyncEntityIdentifier:*&buf[8], v60];
      v61 = 0;
      v62 = 1;
LABEL_39:
      v41 = v89;
LABEL_40:

      v82 = v61;
      v83 = v82;
      if ((v62 & 1) == 0)
      {
        (*(*(a1 + 56) + 16))();

        v41 = v52;
        goto LABEL_49;
      }

      ++v45;
    }

    while (v43 != v45);
    v43 = [obj countByEnumeratingWithState:&v92 objects:v96 count:16];
    v44 = &off_278633000;
    if (v43)
    {
      continue;
    }

    break;
  }

LABEL_43:

  _HKInitializeLogging();
  v84 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v85 = *(a1 + 32);
    *buf = 138543618;
    *&buf[4] = v85;
    *&buf[12] = 2114;
    *&buf[14] = v41;
    _os_log_impl(&dword_228986000, v84, OS_LOG_TYPE_INFO, "%{public}@: sendChanges for anchor ranges %{public}@", buf, 0x16u);
  }

  v86 = *(*(a1 + 56) + 16);
LABEL_48:
  v86();
LABEL_49:

  v87 = *MEMORY[0x277D85DE8];
}

- (BOOL)syncSession:(id)a3 didEndTransactionWithError:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [v5 syncStore];
    v11 = 138543874;
    v12 = self;
    v13 = 2080;
    v14 = "[HDStaticSyncExportTask syncSession:didEndTransactionWithError:]";
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "%{public}@: %s: %{public}@", &v11, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)syncSession:(id)a3 didFinishSuccessfully:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v8 syncStore];
    v13 = v12;
    v14 = @"NO";
    *buf = 138544386;
    v20 = 2080;
    v21 = "[HDStaticSyncExportTask syncSession:didFinishSuccessfully:error:]";
    v19 = self;
    v22 = 2114;
    if (v6)
    {
      v14 = @"YES";
    }

    v23 = v12;
    v24 = 2114;
    v25 = v14;
    v26 = 2114;
    v27 = v9;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_INFO, "%{public}@: %s: %{public}@: success: %{public}@, error: %{public}@", buf, 0x34u);
  }

  exportQueue = self->_exportQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HDStaticSyncExportTask_syncSession_didFinishSuccessfully_error___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(exportQueue, block);

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __66__HDStaticSyncExportTask_syncSession_didFinishSuccessfully_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48) == 1)
  {
    [*(v2 + 88) closeArchive];
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    *(v3 + 88) = 0;

    v2 = *(a1 + 32);
  }

  v5 = [*(v2 + 72) totalUnitCount];
  v6 = *(*(a1 + 32) + 72);

  return [v6 setCompletedUnitCount:v5];
}

@end