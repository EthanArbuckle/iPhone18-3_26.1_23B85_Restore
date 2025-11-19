@interface ML3ProtoSyncImportOperation
- (BOOL)_performImportWithTransaction:(id)a3;
- (BOOL)_processAlbumArtistOperation:(id)a3 withImportSession:(void *)a4;
- (BOOL)_processAlbumOperation:(id)a3 withImportSession:(void *)a4;
- (BOOL)_processLibraryPinOperation:(id)a3 withImportSession:(void *)a4;
- (BOOL)_processMediaItemOperation:(id)a3 withImportSession:(void *)a4;
- (BOOL)_processPlaylistOperation:(id)a3 withImportSession:(void *)a4;
- (BOOL)_processSyncError:(id)a3;
- (BOOL)_processSyncHeader:(id)a3;
- (BOOL)_processSyncOperation:(id)a3 withImportSession:(void *)a4;
- (BOOL)_processSyncPackage:(id)a3 withImportSession:(void *)a4;
- (ML3ProtoSyncImportOperation)initWithDatabaseImport:(id)a3;
- (void)_unlinkUnavailableMediaItems;
- (void)cancel;
- (void)main;
@end

@implementation ML3ProtoSyncImportOperation

- (void)_unlinkUnavailableMediaItems
{
  v33[3] = *MEMORY[0x277D85DE8];
  v3 = [ML3ContainmentPredicate predicateWithProperty:@"item_store.sync_id" values:self->_syncIdsToUnlink];
  v33[0] = v3;
  v4 = [ML3ComparisonPredicate predicateWithProperty:@"(item.base_location_id > 0)" equalToInteger:1];
  v33[1] = v4;
  v5 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.is_protected" equalToInteger:2];
  v33[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v7 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v6];

  v8 = [(ML3ImportOperation *)self import];
  v9 = [v8 library];
  v10 = [(ML3Entity *)ML3Track unrestrictedAllItemsQueryWithlibrary:v9 predicate:v7 orderingTerms:MEMORY[0x277CBEBF8]];

  v11 = [MEMORY[0x277CBEB18] array];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __59__ML3ProtoSyncImportOperation__unlinkUnavailableMediaItems__block_invoke;
  v29[3] = &unk_278765BD8;
  v12 = v11;
  v30 = v12;
  [v10 enumeratePersistentIDsUsingBlock:v29];
  if ([v12 count])
  {
    v13 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v12 count];
      *buf = 134217984;
      v32[0] = v14;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "Found %lu unavailable tracks to unlink", buf, 0xCu);
    }

    v15 = [MEMORY[0x277CBEB58] set];
    v16 = [(ML3ImportOperation *)self import];
    v17 = [v16 library];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __59__ML3ProtoSyncImportOperation__unlinkUnavailableMediaItems__block_invoke_40;
    v27 = &unk_278763DA8;
    v18 = v15;
    v28 = v18;
    [ML3Track enumeratePathsToDeleteFromLibrary:v17 persistentIDs:v12 usingBlock:&v24];

    v19 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      LODWORD(v32[0]) = 2;
      WORD2(v32[0]) = 2114;
      *(v32 + 6) = v18;
      _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "Deleting assets with protection type = %d that are no longer cloud available: %{public}@", buf, 0x12u);
    }

    ML3DeleteAssetsAtPaths(v18);
    v20 = [(ML3ImportOperation *)self import:v24];
    v21 = [v20 library];
    v22 = [ML3Track clearLocationFromLibrary:v21 persistentIDs:v12 usingConnection:self->_connection];

    if (!v22)
    {
      v23 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v32[0]) = 2;
        _os_log_impl(&dword_22D2FA000, v23, OS_LOG_TYPE_DEFAULT, "Failed to clear location for unavailable tracks with asset protection type = %d", buf, 8u);
      }
    }
  }
}

void __59__ML3ProtoSyncImportOperation__unlinkUnavailableMediaItems__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v3 addObject:v4];

  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218240;
    v7 = a2;
    v8 = 1024;
    v9 = 2;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "Track with persistent_id:%lld, protection type: %d is local on device with no backing cloud asset", &v6, 0x12u);
  }
}

void __59__ML3ProtoSyncImportOperation__unlinkUnavailableMediaItems__block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && [v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (BOOL)_processLibraryPinOperation:(id)a3 withImportSession:(void *)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_syncSessionStarted)
  {
    goto LABEL_4;
  }

  if (ML3ImportSession::begin(a4, self->_totalSyncPackageCount, self->_syncType == 1, 0))
  {
    self->_syncSessionStarted = 1;
LABEL_4:
    v7 = [v6 libraryPin];
    if ([v6 operationType] == 1)
    {
      operator new();
    }

    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = [v6 operationType];
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "skipping library pin sync operation of type=%d", buf, 8u);
    }

    v9 = v7;
    goto LABEL_11;
  }

  v9 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "failed to begin import session", buf, 2u);
  }

LABEL_11:

  v10 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "failed to process library pin sync operation", buf, 2u);
  }

  return 0;
}

- (BOOL)_processAlbumOperation:(id)a3 withImportSession:(void *)a4
{
  v6 = a3;
  if (self->_syncSessionStarted)
  {
    goto LABEL_4;
  }

  if (ML3ImportSession::begin(a4, self->_totalSyncPackageCount, self->_syncType == 1, 0))
  {
    self->_syncSessionStarted = 1;
LABEL_4:
    v7 = [v6 album];
    v8 = [v6 multiverseId];
    if ([v6 operationType] == 2)
    {
      operator new();
    }

    v9 = 1;
    goto LABEL_12;
  }

  v10 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "failed to begin import session", buf, 2u);
  }

  v11 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "failed to process album artist sync operation", buf, 2u);
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (BOOL)_processAlbumArtistOperation:(id)a3 withImportSession:(void *)a4
{
  v6 = a3;
  if (self->_syncSessionStarted)
  {
    goto LABEL_4;
  }

  if (ML3ImportSession::begin(a4, self->_totalSyncPackageCount, self->_syncType == 1, 0))
  {
    self->_syncSessionStarted = 1;
LABEL_4:
    v7 = [v6 artist];
    v8 = [v6 multiverseId];
    v9 = [v6 operationType];
    switch(v9)
    {
      case 1:
        operator new();
      case 2:
        operator new();
      case 3:
        operator new();
    }

    v13 = 1;
    goto LABEL_17;
  }

  v10 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "failed to begin import session", buf, 2u);
  }

  v11 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "failed to process album artist sync operation", buf, 2u);
  }

  v13 = 0;
LABEL_17:

  return v13;
}

- (BOOL)_processPlaylistOperation:(id)a3 withImportSession:(void *)a4
{
  v6 = a3;
  if (self->_syncSessionStarted)
  {
    goto LABEL_4;
  }

  if (ML3ImportSession::begin(a4, self->_totalSyncPackageCount, self->_syncType == 1, 0))
  {
    self->_syncSessionStarted = 1;
LABEL_4:
    v7 = [v6 multiverseId];
    v8 = [v6 playlist];
    v9 = [v6 operationType];
    if (v9 == 1)
    {
      operator new();
    }

    if (v9 == 3)
    {
      operator new();
    }

    v13 = 1;
    goto LABEL_15;
  }

  v10 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "failed to begin import session", buf, 2u);
  }

  v11 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "failed to process playlist sync operation", buf, 2u);
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (BOOL)_processMediaItemOperation:(id)a3 withImportSession:(void *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_syncSessionStarted)
  {
    goto LABEL_4;
  }

  if (ML3ImportSession::begin(a4, self->_totalSyncPackageCount, self->_syncType == 1, 0))
  {
    self->_syncSessionStarted = 1;
LABEL_4:
    v7 = [v6 multiverseId];
    v8 = [v6 mediaItem];
    v9 = [v6 operationType];
    switch(v9)
    {
      case 1:
        operator new();
      case 2:
        operator new();
      case 3:
        operator new();
    }

    v11 = 1;
    goto LABEL_17;
  }

  v10 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "failed to begin import session", buf, 2u);
  }

  v12 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "failed to process media sync operation", buf, 2u);
  }

  v11 = 0;
LABEL_17:

  return v11;
}

- (BOOL)_processSyncOperation:(id)a3 withImportSession:(void *)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 multiverseId];
  v8 = [v7 mediaObjectType];
  v9 = v8;
  if (v8 <= 6)
  {
    if (v8 == 1)
    {
      v10 = [(ML3ProtoSyncImportOperation *)self _processAlbumOperation:v6 withImportSession:a4];
      goto LABEL_12;
    }

    if (v8 == 6)
    {
      v10 = [(ML3ProtoSyncImportOperation *)self _processMediaItemOperation:v6 withImportSession:a4];
      goto LABEL_12;
    }
  }

  else
  {
    switch(v8)
    {
      case 7:
        v10 = [(ML3ProtoSyncImportOperation *)self _processPlaylistOperation:v6 withImportSession:a4];
        goto LABEL_12;
      case 8:
        v10 = [(ML3ProtoSyncImportOperation *)self _processAlbumArtistOperation:v6 withImportSession:a4];
        goto LABEL_12;
      case 9:
        v10 = [(ML3ProtoSyncImportOperation *)self _processLibraryPinOperation:v6 withImportSession:a4];
LABEL_12:
        v11 = v10;
        goto LABEL_13;
    }
  }

  v13 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14[0] = 67109120;
    v14[1] = v9;
    _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "unknown object type %d", v14, 8u);
  }

  v11 = 1;
LABEL_13:

  return v11;
}

- (BOOL)_processSyncError:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [v3 errorCode];
    v6 = [v3 errorDescription];
    v8[0] = 67109378;
    v8[1] = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "received sync error package. err=%d, desc=%{public}@", v8, 0x12u);
  }

  return 0;
}

- (BOOL)_processSyncHeader:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_totalSyncPackageCount = [v4 totalPackages];
  v5 = [v4 syncType];
  self->_syncType = v5;
  if (v5 == 1 && !self->_isServerImport)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "preparing for a reset sync", &v13, 2u);
    }

    v7 = [(ML3ImportOperation *)self import];
    v8 = [v7 library];
    v9 = [(ML3Entity *)ML3Container unrestrictedQueryWithLibrary:v8 predicate:0 orderingTerms:0];

    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 countOfEntities];
      v13 = 134217984;
      v14 = v11;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "Removing %ld playlists for a reset sync", &v13, 0xCu);
    }

    [v9 deleteAllEntitiesFromLibraryWithDeletionType:2];
  }

  return 1;
}

- (BOOL)_processSyncPackage:(id)a3 withImportSession:(void *)a4
{
  v6 = a3;
  v7 = [v6 type];
  switch(v7)
  {
    case 2:
      v9 = [v6 header];
      v10 = [(ML3ProtoSyncImportOperation *)self _processSyncHeader:v9];
      goto LABEL_7;
    case 3:
      v9 = [v6 error];
      v10 = [(ML3ProtoSyncImportOperation *)self _processSyncError:v9];
      goto LABEL_7;
    case 4:
      v9 = [v6 syncOperation];
      v10 = [(ML3ProtoSyncImportOperation *)self _processSyncOperation:v9 withImportSession:a4];
LABEL_7:
      v11 = v10;

      goto LABEL_9;
  }

  v11 = 1;
LABEL_9:
  if (self->_totalSyncPackageCount)
  {
    v12 = self->_syncPackageNum + 1;
    self->_syncPackageNum = v12;
    *&v8 = v12 / self->_totalSyncPackageCount;
    [(ML3ImportOperation *)self setProgress:v8];
  }

  return v11;
}

- (BOOL)_performImportWithTransaction:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v4 = [v17 connection];
  connection = self->_connection;
  self->_connection = v4;

  v6 = [(ML3ImportOperation *)self import];
  self->_isServerImport = [v6 isServerImport];

  v7 = [MEMORY[0x277CBEB58] set];
  syncIdsToUnlink = self->_syncIdsToUnlink;
  self->_syncIdsToUnlink = v7;

  if (!self->_isServerImport)
  {
    v9 = [(ML3ImportOperation *)self import];
    v10 = [v9 syncLibraryID];

    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v10;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "setting sync library id to %{public}@", buf, 0xCu);
    }

    v12 = [(ML3ImportOperation *)self import];
    v13 = [v12 library];
    [v13 setSyncLibraryID:v10];
  }

  MSVDeviceOSIsInternalInstall();
  [(ML3ImportOperation *)self import];
  v14 = [objc_claimAutoreleasedReturnValue() library];
  v15 = [v17 connection];
  ML3ImportSession::ML3ImportSession(buf, v14, v15, 1, 1);
}

void __61__ML3ProtoSyncImportOperation__performImportWithTransaction___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 337) & 1) != 0 || (*(v2 + 336))
  {
    v3 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 337);
      v6 = *(v4 + 336);
      v8 = 138543874;
      v9 = v4;
      v10 = 1024;
      v11 = v5;
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Not suspending read source _importFinished %d, _isReadSourceCancelled %d", &v8, 0x18u);
    }
  }

  else
  {
    *(v2 + 328) = 0;
    dispatch_semaphore_signal(*(a1 + 40));
    v7 = *(*(a1 + 32) + 360);

    dispatch_suspend(v7);
  }
}

void __61__ML3ProtoSyncImportOperation__performImportWithTransaction___block_invoke_14(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 328) = 1;
  v2 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = 138543874;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ resuming read source bytesRead %ld parsingLen %d", &v6, 0x1Cu);
  }

  dispatch_resume(*(*(a1 + 32) + 360));
}

void __61__ML3ProtoSyncImportOperation__performImportWithTransaction___block_invoke_15(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 328) = 1;
  v2 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = 138543874;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ resuming read source bytesRead %ld parsingLen %d", &v6, 0x1Cu);
  }

  dispatch_resume(*(*(a1 + 32) + 360));
}

void __61__ML3ProtoSyncImportOperation__performImportWithTransaction___block_invoke_19(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 337) = 1;
  v2 = *(a1 + 32);
  if (!*(v2 + 328))
  {
    v3 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ resuming read source", &v7, 0xCu);
    }

    *(*(a1 + 32) + 328) = 1;
    dispatch_resume(*(*(a1 + 32) + 360));
    v2 = *(a1 + 32);
  }

  if (*(v2 + 360) && (*(v2 + 336) & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelling read source", &v7, 0xCu);
    }

    *(*(a1 + 32) + 336) = 1;
    dispatch_source_cancel(*(*(a1 + 32) + 360));
  }
}

- (void)cancel
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    isReadSourceCancelled = self->_isReadSourceCancelled;
    *buf = 138543618;
    v9 = self;
    v10 = 1024;
    v11 = isReadSourceCancelled;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "[ML3ProtoSyncImportOperation] cancelling import operation %{public}@ _isReadSourceCancelled %d", buf, 0x12u);
  }

  v7.receiver = self;
  v7.super_class = ML3ProtoSyncImportOperation;
  [(ML3ProtoSyncImportOperation *)&v7 cancel];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ML3ProtoSyncImportOperation_cancel__block_invoke;
  block[3] = &unk_278765FB8;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void __37__ML3ProtoSyncImportOperation_cancel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 360);
  if (v3)
  {
    if ((*(v2 + 336) & 1) == 0)
    {
      dispatch_source_cancel(v3);
      *(*(a1 + 32) + 336) = 1;
    }
  }
}

- (void)main
{
  v38 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v3 = [(ML3ImportOperation *)self import];
  v4 = [v3 library];
  v5 = [v4 currentRevision];

  v25 = v5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = v23[3];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v7 = v6;
  if (([(ML3ProtoSyncImportOperation *)self isCancelled]& 1) == 0)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __35__ML3ProtoSyncImportOperation_main__block_invoke;
    v17[3] = &unk_278762920;
    v17[4] = self;
    v17[5] = &v22;
    v17[6] = &v26;
    v17[7] = &v18;
    [(ML3ImportOperation *)self _writerTransactionWithBlock:v17];
  }

  v8 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(ML3ProtoSyncImportOperation *)self isCancelled];
    v10 = *(v27 + 24);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    *buf = 67109632;
    v33 = v9;
    v34 = 1024;
    v35 = v10;
    v36 = 2048;
    v37 = v11 - v7;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "[ML3ProtoSyncImportOperation] import operation cancelled=%d success=%d. total time = %.2fs", buf, 0x18u);
  }

  v30[0] = @"revisionBeforeImport";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23[3]];
  v30[1] = @"revisionAfterImport";
  v31[0] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v19[3]];
  v31[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v15 = [MEMORY[0x277CCAC58] dataWithPropertyList:v14 format:200 options:0 error:0];
  [(ML3ImportOperation *)self setReturnData:v15];

  if (*(v27 + 24) == 1)
  {
    v16 = [(ML3ProtoSyncImportOperation *)self isCancelled]^ 1;
  }

  else
  {
    v16 = 0;
  }

  [(ML3ImportOperation *)self setSuccess:v16];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
}

uint64_t __35__ML3ProtoSyncImportOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v6;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "failed to start store import transaction. error=%{public}@", &v14, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    [*(a1 + 32) setError:v6];
  }

  else
  {
    v8 = [*(a1 + 32) import];
    v9 = [v8 library];
    *(*(*(a1 + 40) + 8) + 24) = [v9 currentRevision];

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _performImportWithTransaction:v5];
    v10 = [*(a1 + 32) import];
    v11 = [v10 library];
    *(*(*(a1 + 56) + 8) + 24) = [v11 currentRevision];
  }

  v12 = *(*(*(a1 + 48) + 8) + 24);

  return v12 & 1;
}

- (ML3ProtoSyncImportOperation)initWithDatabaseImport:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ML3ProtoSyncImportOperation;
  v5 = [(ML3ImportOperation *)&v11 initWithDatabaseImport:v4];
  v6 = v5;
  if (v5)
  {
    readSource = v5->_readSource;
    v5->_readSource = 0;

    v6->_importFinished = 0;
    v6->_isReadSourceCancelled = 0;
    v6->_readSourceState = 0;
    v6->_pairedDeviceCanProcessStandAloneCollections = [v4 pairedDeviceCanProcessStandaloneCollections];
    v8 = dispatch_queue_create("com.apple.amp.MediaLibrary.ML3ProtoSyncImportOperation.accessQueue", 0);
    accessQueue = v6->_accessQueue;
    v6->_accessQueue = v8;
  }

  return v6;
}

@end