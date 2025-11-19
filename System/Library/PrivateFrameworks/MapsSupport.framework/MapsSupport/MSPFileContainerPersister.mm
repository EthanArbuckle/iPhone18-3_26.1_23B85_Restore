@interface MSPFileContainerPersister
- (BOOL)getSnapshot:(id *)a3 data:(id *)a4 forNewContents:(id)a5 edits:(id)a6 appliedToOldContents:(id)a7 error:(id *)a8;
- (BOOL)getSnapshot:(id *)a3 data:(id *)a4 mergingCurrentState:(id)a5 withState:(id)a6 mergeOptions:(id)a7 error:(id *)a8;
- (MSPFileContainerPersister)init;
- (MSPFileContainerPersister)initWithPersistenceFileAtURL:(id)a3;
- (id)commitByCreatingStateSnapshotAndDataWithCreationHandler:(id)a3 error:(id *)a4;
- (id)newStateSnapshot;
- (void)commitByMergingWithStateSnapshot:(id)a3 mergeOptions:(id)a4 completion:(id)a5;
- (void)commitEditWithNewContents:(id)a3 edits:(id)a4 appliedToOldContents:(id)a5 completion:(id)a6;
- (void)eraseWithCompletion:(id)a3;
- (void)fetchStateSnapshotWithCompletion:(id)a3;
@end

@implementation MSPFileContainerPersister

- (MSPFileContainerPersister)init
{
  result = [MEMORY[0x277CBEAD8] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (MSPFileContainerPersister)initWithPersistenceFileAtURL:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MSPFileContainerPersister;
  v5 = [(MSPFileContainerPersister *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
    persistenceFileURL = v5->_persistenceFileURL;
    v5->_persistenceFileURL = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.Maps.MSPContainerPersister.io", v8);
    ioQueue = v5->_ioQueue;
    v5->_ioQueue = v9;
  }

  return v5;
}

- (id)newStateSnapshot
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D0E798];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    persistenceFileURL = self->_persistenceFileURL;
    v12 = 138412290;
    v13 = persistenceFileURL;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEBUG, "Reading persisted data from %@", &v12, 0xCu);
  }

  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:self->_persistenceFileURL options:1 error:0];
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = self->_persistenceFileURL;
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEBUG, "Read persisted data from %@", &v12, 0xCu);
  }

  v9 = [(MSPFileContainerPersister *)self stateSnapshotFromData:v6];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)fetchStateSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(MSPFileContainerPersister *)self ioQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__MSPFileContainerPersister_fetchStateSnapshotWithCompletion___block_invoke;
  block[3] = &unk_279868960;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __62__MSPFileContainerPersister_fetchStateSnapshotWithCompletion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained newStateSnapshot];
    v5 = dispatch_get_global_queue(-32768, 0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__MSPFileContainerPersister_fetchStateSnapshotWithCompletion___block_invoke_31;
    v10[3] = &unk_2798674D8;
    v6 = *(a1 + 32);
    v11 = v4;
    v12 = v6;
    v7 = v4;
    dispatch_async(v5, v10);
  }

  else
  {
    v8 = *MEMORY[0x277D0E798];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[MSPFileContainerPersister fetchStateSnapshotWithCompletion:]_block_invoke";
      v15 = 1024;
      v16 = 93;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)commitEditWithNewContents:(id)a3 edits:(id)a4 appliedToOldContents:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v14 = [(MSPFileContainerPersister *)self ioQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __93__MSPFileContainerPersister_commitEditWithNewContents_edits_appliedToOldContents_completion___block_invoke;
  v19[3] = &unk_279868CF8;
  objc_copyWeak(&v24, &location);
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __93__MSPFileContainerPersister_commitEditWithNewContents_edits_appliedToOldContents_completion___block_invoke(id *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __93__MSPFileContainerPersister_commitEditWithNewContents_edits_appliedToOldContents_completion___block_invoke_33;
    v16[3] = &unk_279868CD0;
    objc_copyWeak(&v20, a1 + 8);
    v17 = a1[4];
    v18 = a1[5];
    v19 = a1[6];
    v15 = 0;
    v3 = [WeakRetained commitByCreatingStateSnapshotAndDataWithCreationHandler:v16 error:&v15];
    v4 = v15;
    v5 = dispatch_get_global_queue(-32768, 0);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __93__MSPFileContainerPersister_commitEditWithNewContents_edits_appliedToOldContents_completion___block_invoke_35;
    v11[3] = &unk_279868988;
    v6 = a1[7];
    v13 = v4;
    v14 = v6;
    v12 = v3;
    v7 = v3;
    v8 = v4;
    dispatch_async(v5, v11);

    objc_destroyWeak(&v20);
  }

  else
  {
    v9 = *MEMORY[0x277D0E798];
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[MSPFileContainerPersister commitEditWithNewContents:edits:appliedToOldContents:completion:]_block_invoke";
      v23 = 1024;
      v24 = 105;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __93__MSPFileContainerPersister_commitEditWithNewContents_edits_appliedToOldContents_completion___block_invoke_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained getSnapshot:a2 data:a3 forNewContents:*(a1 + 32) edits:*(a1 + 40) appliedToOldContents:*(a1 + 48) error:a4];
  }

  else
  {
    v11 = *MEMORY[0x277D0E798];
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[MSPFileContainerPersister commitEditWithNewContents:edits:appliedToOldContents:completion:]_block_invoke";
      v17 = 1024;
      v18 = 109;
      _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", &v15, 0x12u);
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __93__MSPFileContainerPersister_commitEditWithNewContents_edits_appliedToOldContents_completion___block_invoke_35(void *a1)
{
  v2 = a1[6];
  if (!a1[4])
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))();
}

- (void)commitByMergingWithStateSnapshot:(id)a3 mergeOptions:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(MSPFileContainerPersister *)self ioQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__MSPFileContainerPersister_commitByMergingWithStateSnapshot_mergeOptions_completion___block_invoke;
  block[3] = &unk_2798676A8;
  objc_copyWeak(&v19, &location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __86__MSPFileContainerPersister_commitByMergingWithStateSnapshot_mergeOptions_completion___block_invoke(id *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __86__MSPFileContainerPersister_commitByMergingWithStateSnapshot_mergeOptions_completion___block_invoke_36;
    v16[3] = &unk_279868D20;
    objc_copyWeak(&v19, a1 + 7);
    v17 = a1[4];
    v18 = a1[5];
    v15 = 0;
    v3 = [WeakRetained commitByCreatingStateSnapshotAndDataWithCreationHandler:v16 error:&v15];
    v4 = v15;
    v5 = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__MSPFileContainerPersister_commitByMergingWithStateSnapshot_mergeOptions_completion___block_invoke_37;
    block[3] = &unk_279868988;
    v6 = a1[6];
    v13 = v4;
    v14 = v6;
    v12 = v3;
    v7 = v3;
    v8 = v4;
    dispatch_async(v5, block);

    objc_destroyWeak(&v19);
  }

  else
  {
    v9 = *MEMORY[0x277D0E798];
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[MSPFileContainerPersister commitByMergingWithStateSnapshot:mergeOptions:completion:]_block_invoke";
      v22 = 1024;
      v23 = 123;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __86__MSPFileContainerPersister_commitByMergingWithStateSnapshot_mergeOptions_completion___block_invoke_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained newStateSnapshot];
    v11 = [v9 getSnapshot:a2 data:a3 mergingCurrentState:v10 withState:*(a1 + 32) mergeOptions:*(a1 + 40) error:a4];
  }

  else
  {
    v12 = *MEMORY[0x277D0E798];
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[MSPFileContainerPersister commitByMergingWithStateSnapshot:mergeOptions:completion:]_block_invoke";
      v18 = 1024;
      v19 = 127;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", &v16, 0x12u);
    }

    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __86__MSPFileContainerPersister_commitByMergingWithStateSnapshot_mergeOptions_completion___block_invoke_37(void *a1)
{
  v2 = a1[6];
  if (!a1[4])
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))();
}

- (id)commitByCreatingStateSnapshotAndDataWithCreationHandler:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *MEMORY[0x277D0E798];
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    persistenceFileURL = self->_persistenceFileURL;
    *buf = 138412290;
    v27 = persistenceFileURL;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEBUG, "Writing persisted data to %@", buf, 0xCu);
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [(NSURL *)self->_persistenceFileURL URLByDeletingLastPathComponent];
  v12 = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:a4];

  v13 = 0;
  if (v12)
  {
    v24 = 0;
    v25 = 0;
    v14 = v6[2](v6, &v25, &v24, a4);
    v15 = v25;
    v16 = v24;
    v17 = v16;
    if (v14)
    {
      v18 = [v16 writeToURL:self->_persistenceFileURL options:536870913 error:a4];
    }

    else
    {
      v18 = 0;
    }

    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = self->_persistenceFileURL;
      *buf = 138412290;
      v27 = v20;
      _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_DEBUG, "Wrote persisted data to %@", buf, 0xCu);
    }

    if (v18)
    {
      v21 = v15;
    }

    else
    {
      v21 = 0;
    }

    v13 = v21;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)eraseWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(MSPFileContainerPersister *)self ioQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MSPFileContainerPersister_eraseWithCompletion___block_invoke;
  block[3] = &unk_279868960;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__MSPFileContainerPersister_eraseWithCompletion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [WeakRetained persistenceFileURL];
    v21 = 0;
    v5 = [v3 removeItemAtURL:v4 error:&v21];
    v6 = v21;

    if (v5)
    {
      v7 = dispatch_get_global_queue(-32768, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__MSPFileContainerPersister_eraseWithCompletion___block_invoke_39;
      block[3] = &unk_2798676D0;
      v8 = &v20;
      v20 = *(a1 + 32);
      dispatch_async(v7, block);
LABEL_15:

      goto LABEL_16;
    }

    v10 = [v6 domain];
    if ([v10 isEqual:*MEMORY[0x277CCA5B8]]&& [v6 code]== 2)
    {
      v11 = v10;
      v10 = v6;
      v6 = 0;
    }

    else
    {
      v11 = [v6 domain];
      if ([v11 isEqual:*MEMORY[0x277CCA050]])
      {
        v12 = [v6 code];

        if (v12 != 4)
        {
LABEL_14:
          v14 = dispatch_get_global_queue(-32768, 0);
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __49__MSPFileContainerPersister_eraseWithCompletion___block_invoke_2;
          v16[3] = &unk_2798674D8;
          v8 = &v18;
          v18 = *(a1 + 32);
          v6 = v6;
          v17 = v6;
          dispatch_async(v14, v16);

          v7 = v17;
          goto LABEL_15;
        }

        v13 = 0;
LABEL_13:

        v6 = v13;
        goto LABEL_14;
      }
    }

    v13 = v6;

    v6 = v10;
    goto LABEL_13;
  }

  v9 = *MEMORY[0x277D0E798];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v23 = "[MSPFileContainerPersister eraseWithCompletion:]_block_invoke";
    v24 = 1024;
    v25 = 167;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
  }

LABEL_16:

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)getSnapshot:(id *)a3 data:(id *)a4 forNewContents:(id)a5 edits:(id)a6 appliedToOldContents:(id)a7 error:(id *)a8
{
  [(MSPFileContainerPersister *)self doesNotRecognizeSelector:a2, a4, a5, a6, a7];
  if (a8)
  {
    *a8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
  }

  return 0;
}

- (BOOL)getSnapshot:(id *)a3 data:(id *)a4 mergingCurrentState:(id)a5 withState:(id)a6 mergeOptions:(id)a7 error:(id *)a8
{
  if (a8)
  {
    *a8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.MapsSupport.MSPContainer" code:6 userInfo:{0, a6, a7}];
  }

  return 0;
}

@end