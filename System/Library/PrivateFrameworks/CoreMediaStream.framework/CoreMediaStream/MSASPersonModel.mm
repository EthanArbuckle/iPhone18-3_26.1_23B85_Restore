@interface MSASPersonModel
- (BOOL)dbQueueIsAssetCollectionWithGUIDPending:(id)a3;
- (BOOL)dbQueueIsGUIDQueued:(id)a3 inQueue:(id)a4;
- (BOOL)hasItemsForDownloadCountFocusAlbumGUID:(id)a3 focusAssetCollectionGUID:(id)a4;
- (BOOL)isAssetCollectionWithGUIDPending:(id)a3;
- (MSASPersonModel)initWithPersonID:(id)a3;
- (id)_commandWithMinimumIdentifier:(id)a3 outParams:(id *)a4 outCommandIdentifier:(int64_t *)a5 outPersonID:(id *)a6 outAlbumGUID:(id *)a7 outAssetCollectionGUID:(id *)a8;
- (id)commandWithMinimumIdentifier:(int64_t)a3 outParams:(id *)a4 outCommandIdentifier:(int64_t *)a5 outPersonID:(id *)a6 outAlbumGUID:(id *)a7 outAssetCollectionGUID:(id *)a8;
- (id)itemsForUpload;
- (id)nextItemsForDownloadFocusAlbumGUID:(id)a3 focusAssetCollectionGUID:(id)a4 thumbnails:(BOOL)a5 maxCount:(int)a6 isInflight:(BOOL)a7;
- (id)nextItemsForUploadAlbumGUID:(id)a3 maxPriority:(int)a4 maxCount:(int)a5;
- (int)assetCollectionsInUploadQueue;
- (int)assetCollectionsInUploadQueueAlbumGUID:(id)a3;
- (int)assetsInDownloadQueue;
- (int)assetsInDownloadQueueAlbumGUID:(id)a3;
- (int)dbQueueAssetCountAlbumGUID:(id)a3 inQueue:(id)a4;
- (int)itemsForDownloadCountFocusAlbumGUID:(id)a3 focusAssetCollectionGUID:(id)a4;
- (int64_t)countOfEnqueuedCommand:(id)a3;
- (int64_t)countOfEnqueuedCommands;
- (int64_t)dbQueueNextCommandSequenceNumber;
- (int64_t)dbQueueSmallestCommandSequenceNumber;
- (int64_t)nextMMCSItemID;
- (void)addPendingAssetCollectionGUID:(id)a3 albumGUID:(id)a4;
- (void)dbQueueEnqueueCommand:(id)a3 params:(id)a4 personID:(id)a5 albumGUID:(id)a6 assetCollectionGUID:(id)a7;
- (void)dbQueueEnqueueCommand:(id)a3 params:(id)a4 personID:(id)a5 albumGUID:(id)a6 assetCollectionGUID:(id)a7 sequenceNumber:(int64_t)a8;
- (void)dbQueueRemoveAllEntriesFromTable:(id)a3;
- (void)dbQueueRemoveCommandAtHeadOfQueue;
- (void)dbQueueRemoveCommandIdentifier:(int64_t)a3;
- (void)dbQueueRemoveGUID:(id)a3 fromQueue:(id)a4;
- (void)dbQueueRequeuePendingCommandsWithAlbumGUID:(id)a3;
- (void)dbQueueRequeuePendingCommandsWithAssetCollectionGUID:(id)a3;
- (void)dbQueueRequeuePendingCommandsWithQueryStatement:(sqlite3_stmt *)a3 deleteStatement:(sqlite3_stmt *)a4;
- (void)dbQueueSetErrorCount:(int)a3 forGUID:(id)a4 inQueue:(id)a5;
- (void)enqueueAssetCollectionForUpload:(id)a3 album:(id)a4;
- (void)enqueueAssetForDownload:(id)a3 inAlbumWithGUID:(id)a4;
- (void)enqueueCommand:(id)a3 params:(id)a4 personID:(id)a5 albumGUID:(id)a6 assetCollectionGUID:(id)a7;
- (void)enqueueCommand:(id)a3 params:(id)a4 personID:(id)a5 albumGUID:(id)a6 pendingOnAssetCollectionGUID:(id)a7;
- (void)enqueueCommandAtHeadOfQueue:(id)a3 params:(id)a4 personID:(id)a5 albumGUID:(id)a6 assetCollectionGUID:(id)a7;
- (void)purgeCompletionBlock:(id)a3;
- (void)removeAssetCollectionsFromUploadQueue:(id)a3;
- (void)removeAssetsFromDownloadQueue:(id)a3;
- (void)removeCommandIdentifier:(int64_t)a3;
- (void)requeuePendingAssetCollectionGUID:(id)a3;
- (void)requeuePendingAssetCollectionsWithAlbumGUID:(id)a3;
- (void)setErrorCount:(int)a3 forAssetCollectionInUploadQueue:(id)a4;
- (void)setErrorCount:(int)a3 forAssetInDownloadQueue:(id)a4;
- (void)setInFlightAssets:(id)a3;
- (void)setParams:(id)a3 forCommandWithIdentifier:(int64_t)a4;
@end

@implementation MSASPersonModel

- (void)removeAssetCollectionsFromUploadQueue:(id)a3
{
  v4 = [a3 copy];
  v5 = [(MSASModelBase *)self dbQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__MSASPersonModel_removeAssetCollectionsFromUploadQueue___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __57__MSASPersonModel_removeAssetCollectionsFromUploadQueue___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) dbQueueBeginTransaction];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 32);
        v8 = [*(*(&v11 + 1) + 8 * v6) GUID];
        [v7 dbQueueRemoveGUID:v8 fromQueue:@"UploadQueue"];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 32) dbQueueEndTransaction];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setErrorCount:(int)a3 forAssetCollectionInUploadQueue:(id)a4
{
  v6 = a4;
  v7 = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__MSASPersonModel_setErrorCount_forAssetCollectionInUploadQueue___block_invoke;
  block[3] = &unk_278E91F20;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __65__MSASPersonModel_setErrorCount_forAssetCollectionInUploadQueue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) GUID];
  [v2 dbQueueSetErrorCount:v1 forGUID:v3 inQueue:@"UploadQueue"];
}

- (id)nextItemsForUploadAlbumGUID:(id)a3 maxPriority:(int)a4 maxCount:(int)a5
{
  v8 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4870;
  v22 = __Block_byref_object_dispose__4871;
  v23 = [MEMORY[0x277CBEB18] array];
  v9 = [(MSASModelBase *)self dbQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__MSASPersonModel_nextItemsForUploadAlbumGUID_maxPriority_maxCount___block_invoke;
  v13[3] = &unk_278E918B0;
  v13[4] = self;
  v14 = v8;
  v16 = a5;
  v17 = a4;
  v15 = &v18;
  v10 = v8;
  dispatch_sync(v9, v13);

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __68__MSASPersonModel_nextItemsForUploadAlbumGUID_maxPriority_maxCount___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v30 = *(a1 + 32);
    v31 = *(a1 + 40);
    v32 = *(a1 + 56);
    v37 = 138543874;
    v38 = v30;
    v39 = 2114;
    v40 = v31;
    v41 = 1024;
    v42 = v32;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Querying for next items to upload. Album GUID: %{public}@. Max: %d.", &v37, 0x1Cu);
  }

  if (*(a1 + 40))
  {
    v2 = @"select object, album, errorCount from UploadQueue where albumGUID = :alb and uploadPriority <= :priority order by uploadPriority,ord limit :lim;";
  }

  else
  {
    v2 = @"select object, album, errorCount from UploadQueue where uploadPriority <= :priority order by uploadPriority,ord limit :lim;";
  }

  v3 = [*(a1 + 32) statementForString:v2];
  v4 = sqlite3_reset(v3);
  v5 = v4;
  MSSqliteTrapForDBLockError(v4);
  if (v5)
  {
    goto LABEL_7;
  }

  if (*(a1 + 40))
  {
    v9 = sqlite3_bind_parameter_index(v3, ":alb");
    v10 = sqlite3_bind_text(v3, v9, [*(a1 + 40) UTF8String], -1, 0);
    v11 = v10;
    MSSqliteTrapForDBLockError(v10);
    if (v11)
    {
      goto LABEL_7;
    }
  }

  v12 = sqlite3_bind_parameter_index(v3, ":lim");
  v13 = sqlite3_bind_int(v3, v12, *(a1 + 56));
  v14 = v13;
  MSSqliteTrapForDBLockError(v13);
  if (v14)
  {
    goto LABEL_7;
  }

  v15 = sqlite3_bind_parameter_index(v3, ":priority");
  v16 = sqlite3_bind_int(v3, v15, *(a1 + 60));
  v17 = v16;
  MSSqliteTrapForDBLockError(v16);
  if (v17)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v18 = sqlite3_step(v3);
    if (v18 != 100)
    {
      break;
    }

    v19 = objc_opt_new();
    v20 = sqlite3_column_blob(v3, 0);
    v21 = sqlite3_column_bytes(v3, 0);
    v22 = MEMORY[0x277CCAAC8];
    v23 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v20 length:v21 freeWhenDone:0];
    v24 = [v22 MSSafeUnarchiveObjectWithData:v23 outError:0];

    [v19 setObject:v24];
    v25 = sqlite3_column_blob(v3, 1);
    v26 = sqlite3_column_bytes(v3, 1);
    v27 = MEMORY[0x277CCAAC8];
    v28 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v25 length:v26 freeWhenDone:0];
    v29 = [v27 MSSafeUnarchiveObjectWithData:v28 outError:0];

    [v19 setAlbum:v29];
    [v19 setErrorCount:{sqlite3_column_int(v3, 2)}];
    [*(*(*(a1 + 48) + 8) + 40) addObject:v19];
  }

  if (v18 != 101)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v35 = *(a1 + 32);
      v36 = sqlite3_errmsg([v35 dbQueueDB]);
      v37 = 138543618;
      v38 = v35;
      v39 = 2082;
      v40 = v36;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Error retrieving items for upload. Error: %{public}s", &v37, 0x16u);
    }

LABEL_7:
    sqlite3_reset(v3);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    goto LABEL_8;
  }

  sqlite3_reset(v3);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v33 = *(a1 + 32);
    v34 = [*(*(*(a1 + 48) + 8) + 40) count];
    v37 = 138543618;
    v38 = v33;
    v39 = 2048;
    v40 = v34;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...found %ld items.", &v37, 0x16u);
  }

LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
}

- (id)itemsForUpload
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4870;
  v11 = __Block_byref_object_dispose__4871;
  v12 = 0;
  v3 = [(MSASModelBase *)self dbQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__MSASPersonModel_itemsForUpload__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __33__MSASPersonModel_itemsForUpload__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dbQueueDB];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"select object, album, errorCount from UploadQueue"];;
  v3 = [MSASModelEnumerator enumeratorWithDatabase:v2 query:v6 stepBlock:&__block_literal_global_4885];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __33__MSASPersonModel_itemsForUpload__block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = objc_opt_new();
  v4 = sqlite3_column_blob(a2, 0);
  v5 = sqlite3_column_bytes(a2, 0);
  v6 = MEMORY[0x277CCAAC8];
  v7 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v4 length:v5 freeWhenDone:0];
  v8 = [v6 MSSafeUnarchiveObjectWithData:v7 outError:0];

  [v3 setObject:v8];
  v9 = sqlite3_column_blob(a2, 1);
  v10 = sqlite3_column_bytes(a2, 1);
  v11 = MEMORY[0x277CCAAC8];
  v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v9 length:v10 freeWhenDone:0];
  v13 = [v11 MSSafeUnarchiveObjectWithData:v12 outError:0];

  [v3 setAlbum:v13];
  [v3 setErrorCount:{sqlite3_column_int(a2, 2)}];

  return v3;
}

- (int)assetCollectionsInUploadQueueAlbumGUID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MSASPersonModel_assetCollectionsInUploadQueueAlbumGUID___block_invoke;
  block[3] = &unk_278E91C78;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LODWORD(v4) = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t __58__MSASPersonModel_assetCollectionsInUploadQueueAlbumGUID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dbQueueAssetCountAlbumGUID:*(a1 + 40) inQueue:@"UploadQueue"];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int)assetCollectionsInUploadQueue
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MSASModelBase *)self dbQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__MSASPersonModel_assetCollectionsInUploadQueue__block_invoke;
  v5[3] = &unk_278E92700;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __48__MSASPersonModel_assetCollectionsInUploadQueue__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dbQueueAssetCountAlbumGUID:0 inQueue:@"UploadQueue"];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)enqueueAssetCollectionForUpload:(id)a3 album:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MSASPersonModel_enqueueAssetCollectionForUpload_album___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __57__MSASPersonModel_enqueueAssetCollectionForUpload_album___block_invoke(id *a1)
{
  v54 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v24 = a1[4];
    v25 = a1[5];
    v26 = [a1[6] GUID];
    *buf = 138543874;
    v49 = v24;
    v50 = 2114;
    v51 = v25;
    v52 = 2114;
    v53 = v26;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Enqueueing upload for asset collection: %{public}@\n In album with GUID: %{public}@", buf, 0x20u);
  }

  v2 = a1[4];
  v3 = [a1[5] GUID];
  LODWORD(v2) = [v2 dbQueueIsGUIDQueued:v3 inQueue:@"UploadQueue"];

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = a1[5];
      *buf = 138543618;
      v49 = v4;
      v50 = 2114;
      v51 = v5;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Attempting to re-enqueue asset collection %{public}@ for upload. Ignoring.", buf, 0x16u);
    }
  }

  else
  {
    v6 = [a1[4] statementForString:{@"insert into UploadQueue (ord, object, album, GUID, albumGUID, uploadPriority) values (?, ?, ?, ?, ?, ?);"}];
    v7 = sqlite3_reset(v6);
    v8 = v7;
    MSSqliteTrapForDBLockError(v7);
    if (!v8)
    {
      v9 = [MEMORY[0x277CBEAA8] date];
      [v9 timeIntervalSinceReferenceDate];
      v11 = sqlite3_bind_double(v6, 1, v10);
      v12 = v11;
      MSSqliteTrapForDBLockError(v11);

      if (!v12)
      {
        v13 = a1[5];
        v47 = 0;
        v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v47];
        v15 = v47;
        v16 = v15;
        if (!v14)
        {
          v17 = MEMORY[0x277CCACA8];
          v18 = [v15 userInfo];
          v19 = [v17 stringWithFormat:@"Failed to archive an assetCollection object. Error: %@ Info: %@", v16, v18];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v49 = v19;
            _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }
        }

        v20 = [v14 length];
        if (v20 >> 31)
        {
          __assert_rtn("[MSASPersonModel enqueueAssetCollectionForUpload:album:]_block_invoke", "MSASPersonModel.m", 1356, "objectArchiveLength <= INT_MAX");
        }

        v21 = sqlite3_bind_blob(v6, 2, [v14 bytes], v20, 0xFFFFFFFFFFFFFFFFLL);
        v22 = v21;
        MSSqliteTrapForDBLockError(v21);
        if (v22)
        {
          v23 = v16;
        }

        else
        {
          v27 = a1[6];
          v46 = v16;
          v28 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v27 requiringSecureCoding:1 error:&v46];
          v23 = v46;

          if (!v28)
          {
            v29 = MEMORY[0x277CCACA8];
            v30 = [v23 userInfo];
            v31 = [v29 stringWithFormat:@"Failed to archive an album object. Error: %@ Info: %@", v23, v30];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v49 = v31;
              _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
            }
          }

          v32 = [v28 length];
          if (v32 >> 31)
          {
            __assert_rtn("[MSASPersonModel enqueueAssetCollectionForUpload:album:]_block_invoke", "MSASPersonModel.m", 1364, "albumArchiveLength <= INT_MAX");
          }

          v33 = sqlite3_bind_blob(v6, 3, [v28 bytes], v32, 0xFFFFFFFFFFFFFFFFLL);
          v34 = v33;
          MSSqliteTrapForDBLockError(v33);
          if (!v34)
          {
            v35 = [a1[5] GUID];
            v36 = sqlite3_bind_text(v6, 4, [v35 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
            v37 = v36;
            MSSqliteTrapForDBLockError(v36);

            if (!v37)
            {
              v38 = [a1[6] GUID];
              v39 = sqlite3_bind_text(v6, 5, [v38 UTF8String], -1, 0);
              v40 = v39;
              MSSqliteTrapForDBLockError(v39);

              if (!v40)
              {
                v41 = [a1[5] isVideo] ? 10 : 0;
                v42 = sqlite3_bind_int(v6, 6, v41);
                v43 = v42;
                MSSqliteTrapForDBLockError(v42);
                if (!v43)
                {
                  v44 = sqlite3_step(v6);
                  MSSqliteTrapForDBLockError(v44);
                }
              }
            }
          }
        }
      }
    }

    sqlite3_reset(v6);
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (void)removeAssetsFromDownloadQueue:(id)a3
{
  v4 = a3;
  v5 = [(MSASModelBase *)self dbQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__MSASPersonModel_removeAssetsFromDownloadQueue___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __49__MSASPersonModel_removeAssetsFromDownloadQueue___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) dbQueueBeginTransaction];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 32);
        v8 = [*(*(&v11 + 1) + 8 * v6) GUID];
        [v7 dbQueueRemoveGUID:v8 fromQueue:@"DownloadQueue"];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 32) dbQueueEndTransaction];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setInFlightAssets:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v17 + 1) + 8 * v10) GUID];
          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v12 = [(MSASModelBase *)self dbQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __37__MSASPersonModel_setInFlightAssets___block_invoke;
    v15[3] = &unk_278E927C8;
    v15[4] = self;
    v16 = v5;
    v13 = v5;
    dispatch_async(v12, v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __37__MSASPersonModel_setInFlightAssets___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    *buf = 138543618;
    v27 = v17;
    v28 = 2114;
    v29 = v18;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Setting inflight for assets with GUIDs %{public}@ in DownloadQueue.", buf, 0x16u);
  }

  v2 = [*(a1 + 32) statementForString:@"update or ignore DownloadQueue set isInflight = 1 where GUID = ?;"];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = sqlite3_reset(v2);
        v10 = v9;
        MSSqliteTrapForDBLockError(v9);
        if (v10 || (v11 = v8, v12 = sqlite3_bind_text(v2, 1, [v11 UTF8String], -1, 0), v13 = v12, MSSqliteTrapForDBLockError(v12), v13) || (v14 = sqlite3_step(v2), v15 = v14, MSSqliteTrapForDBLockError(v14), v15 != 101))
        {

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v19 = *(a1 + 32);
            v20 = *(a1 + 40);
            *buf = 138543618;
            v27 = v19;
            v28 = 2114;
            v29 = v20;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to set inflight for assets with GUIDs %{public}@ in DownloadQueue.", buf, 0x16u);
          }

          goto LABEL_16;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)setErrorCount:(int)a3 forAssetInDownloadQueue:(id)a4
{
  v6 = a4;
  v7 = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MSASPersonModel_setErrorCount_forAssetInDownloadQueue___block_invoke;
  block[3] = &unk_278E91F20;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __57__MSASPersonModel_setErrorCount_forAssetInDownloadQueue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) GUID];
  [v2 dbQueueSetErrorCount:v1 forGUID:v3 inQueue:@"DownloadQueue"];
}

- (int)itemsForDownloadCountFocusAlbumGUID:(id)a3 focusAssetCollectionGUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = [(MSASModelBase *)self dbQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__MSASPersonModel_itemsForDownloadCountFocusAlbumGUID_focusAssetCollectionGUID___block_invoke;
  v12[3] = &unk_278E91888;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v12);

  LODWORD(v7) = *(v17 + 6);
  _Block_object_dispose(&v16, 8);
  return v7;
}

void __80__MSASPersonModel_itemsForDownloadCountFocusAlbumGUID_focusAssetCollectionGUID___block_invoke(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = a1[4];
    v16 = a1[5];
    v17 = a1[6];
    v20 = 138543874;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v24 = 2114;
    v25 = v17;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Counting number of assets to download using criteria: focus album GUID: %{public}@ focus asset collection GUID: %{public}@", &v20, 0x20u);
  }

  if (a1[6])
  {
    v2 = a1[4];
    v3 = @"select count(*) from DownloadQueue where assetCollectionGUID = :assetcol;";
  }

  else
  {
    v2 = a1[4];
    if (a1[5])
    {
      v3 = @"select count(*) from DownloadQueue where albumGUID = :album;";
    }

    else
    {
      v3 = @"select count(*) from DownloadQueue;";
    }
  }

  v4 = [v2 statementForString:v3];
  v5 = sqlite3_reset(v4);
  v6 = v5;
  MSSqliteTrapForDBLockError(v5);
  if (v6)
  {
    goto LABEL_22;
  }

  if (a1[6])
  {
    v7 = sqlite3_bind_parameter_index(v4, ":assetcol");
    v8 = a1[6];
  }

  else
  {
    if (!a1[5])
    {
      goto LABEL_16;
    }

    v7 = sqlite3_bind_parameter_index(v4, ":album");
    v8 = a1[5];
  }

  v9 = sqlite3_bind_text(v4, v7, [v8 UTF8String], -1, 0);
  v10 = v9;
  MSSqliteTrapForDBLockError(v9);
  if (v10)
  {
LABEL_22:
    sqlite3_reset(v4);
    goto LABEL_23;
  }

LABEL_16:
  while (1)
  {
    v11 = sqlite3_step(v4);
    if (v11 != 100)
    {
      break;
    }

    *(*(a1[7] + 8) + 24) = sqlite3_column_int(v4, 0);
  }

  if (v11 != 101)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = a1[4];
      v19 = sqlite3_errmsg([v18 dbQueueDB]);
      v20 = 138543618;
      v21 = v18;
      v22 = 2082;
      v23 = v19;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Error counting items for download. Error: %{public}s", &v20, 0x16u);
    }

    goto LABEL_22;
  }

  sqlite3_reset(v4);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[4];
    v13 = *(*(a1[7] + 8) + 24);
    v20 = 138543618;
    v21 = v12;
    v22 = 1024;
    LODWORD(v23) = v13;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...found %d assets.", &v20, 0x12u);
  }

LABEL_23:
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasItemsForDownloadCountFocusAlbumGUID:(id)a3 focusAssetCollectionGUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = [(MSASModelBase *)self dbQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__MSASPersonModel_hasItemsForDownloadCountFocusAlbumGUID_focusAssetCollectionGUID___block_invoke;
  v12[3] = &unk_278E91888;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v12);

  LOBYTE(v7) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v7;
}

void __83__MSASPersonModel_hasItemsForDownloadCountFocusAlbumGUID_focusAssetCollectionGUID___block_invoke(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = a1[4];
    v16 = a1[5];
    v17 = a1[6];
    v20 = 138543874;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v24 = 2114;
    v25 = v17;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Checking if there are assets to download using criteria: focus album GUID: %{public}@ focus asset collection GUID: %{public}@", &v20, 0x20u);
  }

  if (a1[6])
  {
    v2 = a1[4];
    v3 = @"select ord from DownloadQueue where assetCollectionGUID = :assetcol limit 1;";
  }

  else
  {
    v2 = a1[4];
    if (a1[5])
    {
      v3 = @"select ord from DownloadQueue where albumGUID = :album limit 1;";
    }

    else
    {
      v3 = @"select ord from DownloadQueue limit 1;";
    }
  }

  v4 = [v2 statementForString:v3];
  v5 = sqlite3_reset(v4);
  v6 = v5;
  MSSqliteTrapForDBLockError(v5);
  if (v6)
  {
    goto LABEL_21;
  }

  if (a1[6])
  {
    v7 = sqlite3_bind_parameter_index(v4, ":assetcol");
    v8 = a1[6];
  }

  else
  {
    if (!a1[5])
    {
      goto LABEL_14;
    }

    v7 = sqlite3_bind_parameter_index(v4, ":album");
    v8 = a1[5];
  }

  v9 = sqlite3_bind_text(v4, v7, [v8 UTF8String], -1, 0);
  v10 = v9;
  MSSqliteTrapForDBLockError(v9);
  if (v10)
  {
LABEL_21:
    sqlite3_reset(v4);
    goto LABEL_22;
  }

LABEL_14:
  while (1)
  {
    v11 = sqlite3_step(v4);
    if (v11 != 100)
    {
      break;
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  if (v11 != 101)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = a1[4];
      v19 = sqlite3_errmsg([v18 dbQueueDB]);
      v20 = 138543618;
      v21 = v18;
      v22 = 2082;
      v23 = v19;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Error checking for assets to download. Error: %{public}s", &v20, 0x16u);
    }

    goto LABEL_21;
  }

  sqlite3_reset(v4);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[4];
    v13 = *(*(a1[7] + 8) + 24);
    v20 = 138543618;
    v21 = v12;
    v22 = 1024;
    LODWORD(v23) = v13;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: result: %d", &v20, 0x12u);
  }

LABEL_22:
  v14 = *MEMORY[0x277D85DE8];
}

- (id)nextItemsForDownloadFocusAlbumGUID:(id)a3 focusAssetCollectionGUID:(id)a4 thumbnails:(BOOL)a5 maxCount:(int)a6 isInflight:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__4870;
  v30 = __Block_byref_object_dispose__4871;
  v31 = 0;
  v14 = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__MSASPersonModel_nextItemsForDownloadFocusAlbumGUID_focusAssetCollectionGUID_thumbnails_maxCount_isInflight___block_invoke;
  block[3] = &unk_278E91860;
  v24 = a5;
  block[4] = self;
  v20 = v12;
  v25 = a7;
  v21 = v13;
  v22 = &v26;
  v23 = a6;
  v15 = v13;
  v16 = v12;
  dispatch_sync(v14, block);

  v17 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v17;
}

void __110__MSASPersonModel_nextItemsForDownloadFocusAlbumGUID_focusAssetCollectionGUID_thumbnails_maxCount_isInflight___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v36 = *(a1 + 68);
    v37 = *(a1 + 32);
    v38 = *(a1 + 40);
    v39 = *(a1 + 48);
    if (*(a1 + 69))
    {
      v40 = @"1";
    }

    else
    {
      v40 = @"0";
    }

    v46 = 138544386;
    v47 = v37;
    v48 = 1024;
    *v49 = v36;
    *&v49[4] = 2114;
    *&v49[6] = v38;
    v50 = 2114;
    v51 = v39;
    v52 = 2114;
    v53 = v40;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Querying for the next assets to download using criteria: thumbnail: %d focus album GUID: %{public}@ focus asset collection GUID: %{public}@ isInflight: %{public}@", &v46, 0x30u);
  }

  v2 = [MEMORY[0x277CBEB18] array];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(a1 + 48))
  {
    v5 = [*(a1 + 32) shouldDownloadEarliestPhotosFirst];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = @"select object, albumGUID, errorCount from DownloadQueue where assetCollectionGUID = :assetcol and isThumbnail = :thumb and isInflight = :inflight order by albumGUID asc, batchCreationDate asc, photoCreationDate asc limit:lim;";
    }

    else
    {
      v7 = @"select object, albumGUID, errorCount from DownloadQueue where assetCollectionGUID = :assetcol and isThumbnail = :thumb and isInflight = :inflight order by albumGUID asc, batchCreationDate desc, photoCreationDate asc limit:lim;";
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) shouldDownloadEarliestPhotosFirst];
    v6 = *(a1 + 32);
    if (v8)
    {
      if (v9)
      {
        v7 = @"select object, albumGUID, errorCount from DownloadQueue where albumGUID = :album and isThumbnail = :thumb and isInflight = :inflight order by albumGUID asc, batchCreationDate asc, photoCreationDate asc limit:lim;";
      }

      else
      {
        v7 = @"select object, albumGUID, errorCount from DownloadQueue where albumGUID = :album and isThumbnail = :thumb and isInflight = :inflight order by albumGUID asc, batchCreationDate desc, photoCreationDate asc limit:lim;";
      }
    }

    else if (v9)
    {
      v7 = @"select object, albumGUID, errorCount from DownloadQueue where isThumbnail = :thumb and isInflight = :inflight order by albumGUID asc, batchCreationDate asc, photoCreationDate asc limit:lim;";
    }

    else
    {
      v7 = @"select object, albumGUID, errorCount from DownloadQueue where isThumbnail = :thumb and isInflight = :inflight order by albumGUID asc, batchCreationDate desc, photoCreationDate asc limit:lim;";
    }
  }

  v10 = [v6 statementForString:v7];
  v11 = sqlite3_reset(v10);
  v12 = v11;
  MSSqliteTrapForDBLockError(v11);
  if (v12)
  {
    goto LABEL_39;
  }

  if (*(a1 + 48))
  {
    v13 = sqlite3_bind_parameter_index(v10, ":assetcol");
    v14 = *(a1 + 48);
  }

  else
  {
    if (!*(a1 + 40))
    {
      goto LABEL_19;
    }

    v13 = sqlite3_bind_parameter_index(v10, ":album");
    v14 = *(a1 + 40);
  }

  v15 = sqlite3_bind_text(v10, v13, [v14 UTF8String], -1, 0);
  v16 = v15;
  MSSqliteTrapForDBLockError(v15);
  if (v16)
  {
LABEL_39:
    sqlite3_reset(v10);
    goto LABEL_40;
  }

LABEL_19:
  v17 = sqlite3_bind_parameter_index(v10, ":thumb");
  if (*(a1 + 68))
  {
    v18 = "1";
  }

  else
  {
    v18 = "0";
  }

  v19 = sqlite3_bind_text(v10, v17, v18, -1, 0);
  v20 = v19;
  MSSqliteTrapForDBLockError(v19);
  if (v20)
  {
    goto LABEL_39;
  }

  v21 = sqlite3_bind_parameter_index(v10, ":inflight");
  v22 = *(a1 + 69) ? "1" : "0";
  v23 = sqlite3_bind_text(v10, v21, v22, -1, 0);
  v24 = v23;
  MSSqliteTrapForDBLockError(v23);
  if (v24)
  {
    goto LABEL_39;
  }

  v25 = sqlite3_bind_parameter_index(v10, ":lim");
  v26 = sqlite3_bind_int(v10, v25, *(a1 + 64));
  v27 = v26;
  MSSqliteTrapForDBLockError(v26);
  if (v27)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v28 = sqlite3_step(v10);
    if (v28 != 100)
    {
      break;
    }

    v29 = objc_opt_new();
    v30 = sqlite3_column_blob(v10, 0);
    v31 = sqlite3_column_bytes(v10, 0);
    v32 = MEMORY[0x277CCAAC8];
    v33 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v30 length:v31 freeWhenDone:0];
    v34 = [v32 MSSafeUnarchiveObjectWithData:v33 outError:0];

    [v29 setObject:v34];
    v35 = MSSqliteStringFromStatementColumn(v10, 1);
    [v29 setAlbumGUID:v35];
    [v29 setErrorCount:{sqlite3_column_int(v10, 2)}];
    [*(*(*(a1 + 56) + 8) + 40) addObject:v29];
  }

  if (v28 != 101)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v44 = *(a1 + 32);
      v45 = sqlite3_errmsg([v44 dbQueueDB]);
      v46 = 138543618;
      v47 = v44;
      v48 = 2082;
      *v49 = v45;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Error retrieving items for download. Error: %{public}s", &v46, 0x16u);
    }

    goto LABEL_39;
  }

  sqlite3_reset(v10);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v41 = *(a1 + 32);
    v42 = [*(*(*(a1 + 56) + 8) + 40) count];
    v46 = 138543618;
    v47 = v41;
    v48 = 2048;
    *v49 = v42;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...found %ld assets.", &v46, 0x16u);
  }

LABEL_40:
  v43 = *MEMORY[0x277D85DE8];
}

- (int)assetsInDownloadQueueAlbumGUID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MSASPersonModel_assetsInDownloadQueueAlbumGUID___block_invoke;
  block[3] = &unk_278E91C78;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LODWORD(v4) = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t __50__MSASPersonModel_assetsInDownloadQueueAlbumGUID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dbQueueAssetCountAlbumGUID:*(a1 + 40) inQueue:@"DownloadQueue"];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int)assetsInDownloadQueue
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MSASModelBase *)self dbQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__MSASPersonModel_assetsInDownloadQueue__block_invoke;
  v5[3] = &unk_278E92700;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __40__MSASPersonModel_assetsInDownloadQueue__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dbQueueAssetCountAlbumGUID:0 inQueue:@"DownloadQueue"];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)enqueueAssetForDownload:(id)a3 inAlbumWithGUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MSASPersonModel_enqueueAssetForDownload_inAlbumWithGUID___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __59__MSASPersonModel_enqueueAssetForDownload_inAlbumWithGUID___block_invoke(id *a1)
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [a1[5] GUID];
  LODWORD(v2) = [v2 dbQueueIsGUIDQueued:v3 inQueue:@"DownloadQueue"];

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = [a1[5] GUID];
      v6 = [a1[5] assetCollectionGUID];
      *buf = 138543874;
      v61 = v4;
      v62 = 2114;
      v63 = v5;
      v64 = 2114;
      v65 = v6;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Attempting to re-enqueue asset (GUID: %{public}@ collectionGUID: %{public}@) for download. Ignoring.", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v41 = a1[4];
      v42 = [a1[5] GUID];
      v43 = [a1[5] assetCollectionGUID];
      v44 = a1[6];
      *buf = 138544130;
      v61 = v41;
      v62 = 2114;
      v63 = v42;
      v64 = 2114;
      v65 = v43;
      v66 = 2114;
      v67 = v44;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Enqueueing download for asset (GUID: %{public}@ collectionGUID: %{public}@) in album with GUID: %{public}@.", buf, 0x2Au);
    }

    v7 = [a1[4] statementForString:{@"insert into DownloadQueue (ord, object, GUID, albumGUID, assetCollectionGUID, isThumbnail, batchCreationDate, photoCreationDate) values (?, ?, ?, ?, ?, ?, ?, ?);"}];
    v8 = sqlite3_reset(v7);
    v9 = v8;
    MSSqliteTrapForDBLockError(v8);
    if (!v9)
    {
      v10 = [MEMORY[0x277CBEAA8] date];
      [v10 timeIntervalSinceReferenceDate];
      v12 = sqlite3_bind_double(v7, 1, v11);
      v13 = v12;
      MSSqliteTrapForDBLockError(v12);

      if (!v13)
      {
        v14 = a1[5];
        v59 = 0;
        v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v59];
        v16 = v59;
        v17 = v16;
        if (!v15)
        {
          v18 = MEMORY[0x277CCACA8];
          v19 = [v16 userInfo];
          v20 = [v18 stringWithFormat:@"Failed to archive an assetArchive object. Error: %@ Info: %@", v17, v19];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v61 = v20;
            _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }
        }

        v21 = [v15 length];
        if (v21 >> 31)
        {
          __assert_rtn("[MSASPersonModel enqueueAssetForDownload:inAlbumWithGUID:]_block_invoke", "MSASPersonModel.m", 1058, "assetArchiveLength <= INT_MAX");
        }

        v22 = sqlite3_bind_blob(v7, 2, [v15 bytes], v21, 0xFFFFFFFFFFFFFFFFLL);
        v23 = v22;
        MSSqliteTrapForDBLockError(v22);
        if (!v23)
        {
          v24 = [a1[5] GUID];
          v25 = sqlite3_bind_text(v7, 3, [v24 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
          v26 = v25;
          MSSqliteTrapForDBLockError(v25);

          if (!v26)
          {
            v27 = sqlite3_bind_text(v7, 4, [a1[6] UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
            v28 = v27;
            MSSqliteTrapForDBLockError(v27);
            if (!v28)
            {
              v29 = [a1[5] assetCollectionGUID];
              v30 = sqlite3_bind_text(v7, 5, [v29 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
              v31 = v30;
              MSSqliteTrapForDBLockError(v30);

              if (!v31)
              {
                v32 = [a1[5] metadata];
                v33 = [v32 objectForKey:@"MSAssetMetadataAssetType"];
                v34 = [v33 isEqualToString:@"thumbnail"];

                if (v34 & 1) != 0 || ([a1[5] metadata], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "objectForKey:", @"MSAssetMetadataAssetTypeFlags"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "intValue"), v36, v35, (v37))
                {
                  v40 = 1;
                }

                else
                {
                  v38 = [a1[5] mediaAssetType];
                  v40 = v38 == 5 || v38 == 2;
                }

                v45 = sqlite3_bind_int(v7, 6, v40);
                v46 = v45;
                MSSqliteTrapForDBLockError(v45);
                if (!v46)
                {
                  v48 = [a1[5] batchCreationDate];

                  if (!v48 || ([a1[5] batchCreationDate], v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v49, "timeIntervalSinceReferenceDate"), v51 = sqlite3_bind_double(v7, 7, v50), v52 = v51, MSSqliteTrapForDBLockError(v51), v49, !v52))
                  {
                    v53 = [a1[5] photoCreationDate];

                    if (!v53 || ([a1[5] photoCreationDate], v54 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v54, "timeIntervalSinceReferenceDate"), v56 = sqlite3_bind_double(v7, 8, v55), v57 = v56, MSSqliteTrapForDBLockError(v56), v54, !v57))
                    {
                      v58 = sqlite3_step(v7);
                      MSSqliteTrapForDBLockError(v58);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    sqlite3_reset(v7);
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (int64_t)nextMMCSItemID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(MSASModelBase *)self dbQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__MSASPersonModel_nextMMCSItemID__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __33__MSASPersonModel_nextMMCSItemID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dbQueuePersistentObjectForKey:@"nextMMCSItemID"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 longLongValue];

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(*(a1 + 40) + 8) + 24) + 1];
  [v3 dbQueueSetPersistentObject:v4 forKey:@"nextMMCSItemID"];
}

- (BOOL)dbQueueIsGUIDQueued:(id)a3 inQueue:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"select GUID from %@ where GUID = ? limit 1", v7];;
  v9 = [(MSASModelBase *)self statementForString:v8];

  v10 = sqlite3_reset(v9);
  LODWORD(v8) = v10;
  MSSqliteTrapForDBLockError(v10);
  if (v8 || (v11 = sqlite3_bind_text(v9, 1, [v6 UTF8String], -1, 0), v12 = v11, MSSqliteTrapForDBLockError(v11), v12))
  {
    sqlite3_reset(v9);
    v13 = 0;
  }

  else
  {
    v16 = sqlite3_step(v9);
    if (v16 == 100)
    {
      v13 = 1;
    }

    else
    {
      if (v16 != 101 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        v18 = self;
        v19 = 2114;
        v20 = v6;
        v21 = 2114;
        v22 = v7;
        v23 = 2082;
        v24 = sqlite3_errmsg([(MSASModelBase *)self dbQueueDB]);
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Cannot check if GUID %{public}@ is in %{public}@. Error: %{public}s", buf, 0x2Au);
      }

      v13 = 0;
    }

    sqlite3_reset(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)dbQueueRemoveGUID:(id)a3 fromQueue:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v16 = self;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v7;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Removing GUID %{public}@ from %{public}@.", buf, 0x20u);
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"delete from %@ where GUID = ?", v7];;
  v9 = [(MSASModelBase *)self statementForString:v8];

  v10 = sqlite3_reset(v9);
  LODWORD(v8) = v10;
  MSSqliteTrapForDBLockError(v10);
  if (!v8)
  {
    v11 = sqlite3_bind_text(v9, 1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v12 = v11;
    MSSqliteTrapForDBLockError(v11);
    if (!v12)
    {
      v13 = sqlite3_step(v9);
      MSSqliteTrapForDBLockError(v13);
    }
  }

  sqlite3_reset(v9);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)dbQueueSetErrorCount:(int)a3 forGUID:(id)a4 inQueue:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138544130;
    v20 = self;
    v21 = 2114;
    v22 = v8;
    v23 = 2114;
    v24 = v9;
    v25 = 1024;
    v26 = a3;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Setting error count for GUID %{public}@ in %{public}@ to %d.", buf, 0x26u);
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"update %@ set errorCount = ? where GUID = ?", v9];;
  v11 = [(MSASModelBase *)self statementForString:v10];

  v12 = sqlite3_reset(v11);
  LODWORD(v10) = v12;
  MSSqliteTrapForDBLockError(v12);
  if (!v10)
  {
    v13 = sqlite3_bind_int(v11, 1, a3);
    v14 = v13;
    MSSqliteTrapForDBLockError(v13);
    if (!v14)
    {
      v15 = sqlite3_bind_text(v11, 2, [v8 UTF8String], -1, 0);
      v16 = v15;
      MSSqliteTrapForDBLockError(v15);
      if (!v16)
      {
        v17 = sqlite3_step(v11);
        MSSqliteTrapForDBLockError(v17);
      }
    }
  }

  sqlite3_reset(v11);

  v18 = *MEMORY[0x277D85DE8];
}

- (int)dbQueueAssetCountAlbumGUID:(id)a3 inQueue:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = @"select count(*) from %@ where albumGUID = ?";
  }

  else
  {
    v8 = @"select count(*) from %@;";
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:v8, v7];
  v10 = [(MSASModelBase *)self statementForString:v9];

  v11 = sqlite3_reset(v10);
  LODWORD(v9) = v11;
  MSSqliteTrapForDBLockError(v11);
  if (v9)
  {
    goto LABEL_5;
  }

  if (v6)
  {
    v17 = sqlite3_bind_text(v10, 1, [v6 UTF8String], -1, 0);
    v18 = v17;
    MSSqliteTrapForDBLockError(v17);
    if (v18)
    {
      goto LABEL_5;
    }
  }

  if (sqlite3_step(v10) != 100)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v22 = self;
      v23 = 2114;
      *v24 = v7;
      *&v24[8] = 2082;
      *&v24[10] = sqlite3_errmsg([(MSASModelBase *)self dbQueueDB]);
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Cannot count number of assets enqueued in %{public}@. Error: %{public}s", buf, 0x20u);
    }

LABEL_5:
    v12 = 0;
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12 = sqlite3_column_int(v10, 0);
  if (v10)
  {
LABEL_6:
    sqlite3_reset(v10);
  }

LABEL_7:
  v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v13)
    {
      *buf = 138544130;
      v22 = self;
      v23 = 1024;
      *v24 = v12;
      *&v24[4] = 2114;
      *&v24[6] = v7;
      *&v24[14] = 2114;
      *&v24[16] = v6;
      v14 = MEMORY[0x277D86220];
      v15 = "%{public}@: Found %d assets enqueued in %{public}@ for album GUID %{public}@.";
      v16 = 38;
LABEL_20:
      _os_log_debug_impl(&dword_245B99000, v14, OS_LOG_TYPE_DEBUG, v15, buf, v16);
    }
  }

  else if (v13)
  {
    *buf = 138543874;
    v22 = self;
    v23 = 1024;
    *v24 = v12;
    *&v24[4] = 2114;
    *&v24[6] = v7;
    v14 = MEMORY[0x277D86220];
    v15 = "%{public}@: Found %d assets enqueued in %{public}@.";
    v16 = 28;
    goto LABEL_20;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)requeuePendingAssetCollectionsWithAlbumGUID:(id)a3
{
  v4 = a3;
  v5 = [(MSASModelBase *)self dbQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__MSASPersonModel_requeuePendingAssetCollectionsWithAlbumGUID___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __63__MSASPersonModel_requeuePendingAssetCollectionsWithAlbumGUID___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Removing asset collections from album with GUID %{public}@ from pending list.", &v12, 0x16u);
  }

  v2 = [*(a1 + 32) statementForString:@"delete from PendingAssetCollections where albumGUID = ?;"];
  v3 = MSSqliteBindStringOrNull(v2, 1, *(a1 + 40));
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (v4)
  {
    v5 = 914;
  }

  else
  {
    v6 = sqlite3_step(v2);
    v7 = v6;
    MSSqliteTrapForDBLockError(v6);
    if (v7 == 101)
    {
      goto LABEL_8;
    }

    v5 = 915;
  }

  MSLogSqliteError([*(a1 + 32) dbQueueDB], *(a1 + 32), v5);
LABEL_8:
  if (v2)
  {
    sqlite3_reset(v2);
  }

  result = [*(a1 + 32) dbQueueRequeuePendingCommandsWithAlbumGUID:*(a1 + 40)];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)requeuePendingAssetCollectionGUID:(id)a3
{
  v4 = a3;
  v5 = [(MSASModelBase *)self dbQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__MSASPersonModel_requeuePendingAssetCollectionGUID___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __53__MSASPersonModel_requeuePendingAssetCollectionGUID___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Removing asset collection GUID %{public}@ from pending list.", &v10, 0x16u);
  }

  v2 = [*(a1 + 32) statementForString:@"delete from PendingAssetCollections where assetCollectionGUID = ?;"];
  v3 = MSSqliteBindStringOrNull(v2, 1, *(a1 + 40));
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (!v4)
  {
    v5 = sqlite3_step(v2);
    MSSqliteTrapForDBLockError(v5);
  }

  if (v2)
  {
    sqlite3_reset(v2);
  }

  result = [*(a1 + 32) dbQueueRequeuePendingCommandsWithAssetCollectionGUID:*(a1 + 40)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addPendingAssetCollectionGUID:(id)a3 albumGUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MSASPersonModel_addPendingAssetCollectionGUID_albumGUID___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __59__MSASPersonModel_addPendingAssetCollectionGUID_albumGUID___block_invoke(id *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    v13 = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Adding asset collection GUID %{public}@ in album GUID %{public}@ as pending.", &v13, 0x20u);
  }

  v2 = [a1[4] statementForString:{@"insert or ignore into PendingAssetCollections (assetCollectionGUID, albumGUID) values (?, ?);"}];
  v3 = MSSqliteBindStringOrNull(v2, 1, a1[5]);
  v4 = v3;
  result = MSSqliteTrapForDBLockError(v3);
  if (!v4)
  {
    v6 = MSSqliteBindStringOrNull(v2, 2, a1[6]);
    v7 = v6;
    result = MSSqliteTrapForDBLockError(v6);
    if (!v7)
    {
      v8 = sqlite3_step(v2);
      result = MSSqliteTrapForDBLockError(v8);
    }
  }

  if (v2)
  {
    result = sqlite3_reset(v2);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)dbQueueIsAssetCollectionWithGUIDPending:(id)a3
{
  v4 = a3;
  v5 = [(MSASModelBase *)self statementForString:@"select assetCollectionGUID from PendingAssetCollections where assetCollectionGUID = ? limit 1;"];
  v6 = MSSqliteBindStringOrNull(v5, 1, v4);

  MSSqliteTrapForDBLockError(v6);
  if (!v6)
  {
    v9 = sqlite3_step(v5);
    if (v9 == 100)
    {
      v7 = 1;
      if (!v5)
      {
        return v7;
      }

      goto LABEL_3;
    }

    if (v9 != 101)
    {
      MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 870);
    }
  }

  v7 = 0;
  if (v5)
  {
LABEL_3:
    sqlite3_reset(v5);
  }

  return v7;
}

- (BOOL)isAssetCollectionWithGUIDPending:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MSASPersonModel_isAssetCollectionWithGUIDPending___block_invoke;
  block[3] = &unk_278E91C78;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t __52__MSASPersonModel_isAssetCollectionWithGUIDPending___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dbQueueIsAssetCollectionWithGUIDPending:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int64_t)countOfEnqueuedCommands
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(MSASModelBase *)self dbQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__MSASPersonModel_countOfEnqueuedCommands__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __42__MSASPersonModel_countOfEnqueuedCommands__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v12 = 138543362;
    v13 = v9;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Counting number of commands queued", &v12, 0xCu);
  }

  v2 = [*(a1 + 32) statementForString:@"select count(*) from CommandQueue;"];
  v3 = sqlite3_reset(v2);
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (v4)
  {
    goto LABEL_4;
  }

  v5 = sqlite3_step(v2);
  if (v5 != 101)
  {
    if (v5 != 100)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = sqlite3_errmsg([v7 dbQueueDB]);
        v12 = 138543618;
        v13 = v7;
        v14 = 2082;
        v15 = v8;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Error counting number of commands enqueued.sqlite error: %{public}s", &v12, 0x16u);
      }

LABEL_4:
      sqlite3_reset(v2);
      *(*(*(a1 + 40) + 8) + 24) = 0;
      goto LABEL_10;
    }

    *(*(*(a1 + 40) + 8) + 24) = sqlite3_column_int64(v2, 0);
  }

  sqlite3_reset(v2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = *(*(*(a1 + 40) + 8) + 24);
    v12 = 138543618;
    v13 = v10;
    v14 = 2048;
    v15 = v11;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...found %lld commands in the queue.", &v12, 0x16u);
  }

LABEL_10:
  v6 = *MEMORY[0x277D85DE8];
}

- (int64_t)countOfEnqueuedCommand:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MSASPersonModel_countOfEnqueuedCommand___block_invoke;
  block[3] = &unk_278E91C78;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

void __42__MSASPersonModel_countOfEnqueuedCommand___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v16 = 138543618;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Counting number of queued command %{public}@", &v16, 0x16u);
  }

  v2 = [*(a1 + 32) statementForString:@"select count(*) from CommandQueue where command = ?;"];
  v3 = sqlite3_bind_text(v2, 1, [*(a1 + 40) UTF8String], -1, 0);
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (v4)
  {
    goto LABEL_5;
  }

  v5 = sqlite3_reset(v2);
  v6 = v5;
  MSSqliteTrapForDBLockError(v5);
  if (v6)
  {
    goto LABEL_5;
  }

  v8 = sqlite3_step(v2);
  if (v8 != 101)
  {
    if (v8 != 100)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        v15 = sqlite3_errmsg([v13 dbQueueDB]);
        v16 = 138543874;
        v17 = v13;
        v18 = 2114;
        v19 = v14;
        v20 = 2082;
        v21 = v15;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Error counting number of “%{public}@” commands enqueued.sqlite error: %{public}s", &v16, 0x20u);
      }

LABEL_5:
      sqlite3_reset(v2);
      *(*(*(a1 + 48) + 8) + 24) = 0;
      goto LABEL_6;
    }

    *(*(*(a1 + 48) + 8) + 24) = sqlite3_column_int64(v2, 0);
  }

  sqlite3_reset(v2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 48) + 8) + 24);
    v16 = 138543618;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...found %lld instances.", &v16, 0x16u);
  }

LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)purgeCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MSASModelBase *)self dbQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__MSASPersonModel_purgeCompletionBlock___block_invoke;
  v7[3] = &unk_278E927A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __40__MSASPersonModel_purgeCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dbQueueBeginTransaction];
  [*(a1 + 32) dbQueueRemoveAllEntriesFromTable:@"CommandQueue"];
  [*(a1 + 32) dbQueueRemoveAllEntriesFromTable:@"PendingCommandQueue"];
  [*(a1 + 32) dbQueueRemoveAllEntriesFromTable:@"PendingAssetCollections"];
  [*(a1 + 32) dbQueueRemoveAllEntriesFromTable:@"DownloadQueue"];
  [*(a1 + 32) dbQueueRemoveAllEntriesFromTable:@"UploadQueue"];
  [*(a1 + 32) dbQueueEndTransaction];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    dispatch_async(v3, v2);
  }
}

- (void)dbQueueRemoveAllEntriesFromTable:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Removing all entries from table %{public}@.", buf, 0x16u);
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"delete from %@", v4];;
  v6 = [(MSASModelBase *)self statementForString:v5];

  v7 = sqlite3_step(v6);
  LODWORD(v5) = v7;
  MSSqliteTrapForDBLockError(v7);
  if (v5 != 101)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 773);
  }

  if (v6)
  {
    sqlite3_reset(v6);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dbQueueRemoveCommandIdentifier:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2048;
    v15 = a3;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Removing command at order %lld.", &v12, 0x16u);
  }

  v5 = [(MSASModelBase *)self statementForString:@"delete from CommandQueue where ord = ?;"];
  v6 = sqlite3_reset(v5);
  v7 = v6;
  MSSqliteTrapForDBLockError(v6);
  if (!v7)
  {
    v8 = sqlite3_bind_int64(v5, 1, a3);
    v9 = v8;
    MSSqliteTrapForDBLockError(v8);
    if (!v9)
    {
      v10 = sqlite3_step(v5);
      MSSqliteTrapForDBLockError(v10);
    }
  }

  sqlite3_reset(v5);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeCommandIdentifier:(int64_t)a3
{
  v5 = [(MSASModelBase *)self dbQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__MSASPersonModel_removeCommandIdentifier___block_invoke;
  v6[3] = &unk_278E92750;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)dbQueueRemoveCommandAtHeadOfQueue
{
  v3 = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MSASPersonModel_dbQueueRemoveCommandAtHeadOfQueue__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __52__MSASPersonModel_dbQueueRemoveCommandAtHeadOfQueue__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 dbQueueSmallestCommandSequenceNumber];

  return [v1 dbQueueRemoveCommandIdentifier:v2];
}

- (void)setParams:(id)a3 forCommandWithIdentifier:(int64_t)a4
{
  v6 = a3;
  v7 = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MSASPersonModel_setParams_forCommandWithIdentifier___block_invoke;
  block[3] = &unk_278E91AA0;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

void __54__MSASPersonModel_setParams_forCommandWithIdentifier___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    *buf = 138543618;
    v25 = v18;
    v26 = 2048;
    v27 = v19;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Setting parameters for command at sequence number %lld.", buf, 0x16u);
  }

  v2 = [*(a1 + 32) statementForString:@"update CommandQueue set params = ? where ord = ?;"];
  v3 = sqlite3_reset(v2);
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (v4)
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 40);
  v23 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v23];
  v7 = v23;
  v8 = v7;
  if (!v6)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [v7 userInfo];
    v11 = [v9 stringWithFormat:@"Failed to archive a paramsData object. Error: %@ Info: %@", v8, v10];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v11;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  v12 = [v6 length];
  if (v12 >= 0x7FFFFFFF)
  {
    __assert_rtn("[MSASPersonModel setParams:forCommandWithIdentifier:]_block_invoke", "MSASPersonModel.m", 732, "paramsDataLength < INT_MAX");
  }

  v13 = sqlite3_bind_blob(v2, 1, [v6 bytes], v12, 0xFFFFFFFFFFFFFFFFLL);
  v14 = v13;
  MSSqliteTrapForDBLockError(v13);
  if (v14 || (v15 = sqlite3_bind_int64(v2, 2, *(a1 + 48)), v16 = v15, MSSqliteTrapForDBLockError(v15), v16))
  {

LABEL_12:
    sqlite3_reset(v2);
    goto LABEL_13;
  }

  v20 = sqlite3_step(v2);
  v21 = v20;
  MSSqliteTrapForDBLockError(v20);

  sqlite3_reset(v2);
  if (v21 == 101 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 32);
    *buf = 138543362;
    v25 = v22;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...done.", buf, 0xCu);
  }

LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
}

- (id)commandWithMinimumIdentifier:(int64_t)a3 outParams:(id *)a4 outCommandIdentifier:(int64_t *)a5 outPersonID:(id *)a6 outAlbumGUID:(id *)a7 outAssetCollectionGUID:(id *)a8
{
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v15 = [(MSASPersonModel *)self _commandWithMinimumIdentifier:v14 outParams:a4 outCommandIdentifier:a5 outPersonID:a6 outAlbumGUID:a7 outAssetCollectionGUID:a8];

  return v15;
}

- (id)_commandWithMinimumIdentifier:(id)a3 outParams:(id *)a4 outCommandIdentifier:(int64_t *)a5 outPersonID:(id *)a6 outAlbumGUID:(id *)a7 outAssetCollectionGUID:(id *)a8
{
  v11 = a3;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__4870;
  v60 = __Block_byref_object_dispose__4871;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__4870;
  v54 = __Block_byref_object_dispose__4871;
  v55 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__4870;
  v44 = __Block_byref_object_dispose__4871;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__4870;
  v38 = __Block_byref_object_dispose__4871;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4870;
  v32 = __Block_byref_object_dispose__4871;
  v33 = 0;
  v12 = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__MSASPersonModel__commandWithMinimumIdentifier_outParams_outCommandIdentifier_outPersonID_outAlbumGUID_outAssetCollectionGUID___block_invoke;
  block[3] = &unk_278E91838;
  v13 = v11;
  v20 = v13;
  v21 = self;
  v22 = &v56;
  v23 = &v50;
  v24 = &v46;
  v25 = &v40;
  v26 = &v34;
  v27 = &v28;
  dispatch_sync(v12, block);

  if (a4)
  {
    *a4 = v51[5];
  }

  if (a5)
  {
    *a5 = v47[3];
  }

  if (a6)
  {
    *a6 = v41[5];
  }

  if (a7)
  {
    *a7 = v35[5];
  }

  if (a8)
  {
    *a8 = v29[5];
  }

  v14 = v57[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);

  return v14;
}

void __128__MSASPersonModel__commandWithMinimumIdentifier_outParams_outCommandIdentifier_outPersonID_outAlbumGUID_outAssetCollectionGUID___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v3)
    {
      v25 = *(a1 + 40);
      v28 = 138543618;
      v29 = v25;
      v30 = 2114;
      v31 = v2;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retrieving command with minimum identifier %{public}@.", &v28, 0x16u);
    }

    v4 = [*(a1 + 40) statementForString:{@"select ord, command, params, personID, albumGUID, assetCollectionGUID from CommandQueue where ord >= ? order by ord limit 1;"}];
    v5 = sqlite3_bind_int64(v4, 1, [*(a1 + 32) longLongValue]);
    v6 = v5;
    MSSqliteTrapForDBLockError(v5);
    if (v6)
    {
      MSLogSqliteError([*(a1 + 40) dbQueueDB], *(a1 + 40), 644);
    }
  }

  else
  {
    if (v3)
    {
      v26 = *(a1 + 40);
      v28 = 138543362;
      v29 = v26;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retrieving command at the head of the queue.", &v28, 0xCu);
    }

    v4 = [*(a1 + 40) statementForString:{@"select ord, command, params, personID, albumGUID, assetCollectionGUID from CommandQueue order by ord limit 1;"}];
  }

  v7 = sqlite3_reset(v4);
  v8 = v7;
  MSSqliteTrapForDBLockError(v7);
  if (v8)
  {
    goto LABEL_10;
  }

  v11 = sqlite3_step(v4);
  if (v11 == 101)
  {
    v12 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v10 = 0;
  }

  else
  {
    if (v11 != 100)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 40);
        v24 = sqlite3_errmsg([v23 dbQueueDB]);
        v28 = 138543618;
        v29 = v23;
        v30 = 2082;
        v31 = v24;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Error retrieving command at the head of the queue. sqlite error: %{public}s", &v28, 0x16u);
      }

LABEL_10:
      sqlite3_reset(v4);
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = 0;
      goto LABEL_18;
    }

    v12 = sqlite3_column_int64(v4, 0);
    v10 = MSSqliteStringFromStatementColumn(v4, 1);
    v13 = sqlite3_column_blob(v4, 2);
    v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v13 length:sqlite3_column_bytes(v4 freeWhenDone:{2), 0}];
    v15 = [MEMORY[0x277CCAAC8] MSSafeUnarchiveObjectWithData:v14 outError:0];
    v16 = MSSqliteStringFromStatementColumn(v4, 3);
    v17 = MSSqliteStringFromStatementColumn(v4, 4);
    v18 = MSSqliteStringFromStatementColumn(v4, 5);
  }

  sqlite3_reset(v4);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v10);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v15);
  *(*(*(a1 + 64) + 8) + 24) = v12;
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), v16);
  objc_storeStrong((*(*(a1 + 80) + 8) + 40), v17);
  v19 = *(*(a1 + 88) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;
  v21 = v18;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v27 = *(a1 + 40);
    v28 = 138544642;
    v29 = v27;
    v30 = 2114;
    v31 = v10;
    v32 = 2048;
    v33 = v12;
    v34 = 2112;
    v35 = v16;
    v36 = 2114;
    v37 = v17;
    v38 = 2112;
    v39 = v21;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...retrieved command %{public}@ at sequence number %lld for personID %@, album GUID %{public}@,  asset collection GUID %@", &v28, 0x3Eu);
  }

LABEL_18:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)dbQueueRequeuePendingCommandsWithAlbumGUID:(id)a3
{
  v10 = a3;
  v4 = [(MSASModelBase *)self statementForString:@"select command, params, personID, albumGUID, assetCollectionGUID from PendingCommandQueue where albumGUID = ?;"];
  v5 = MSSqliteBindStringOrNull(v4, 1, v10);
  v6 = v5;
  MSSqliteTrapForDBLockError(v5);
  if (v6)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 613);
    v7 = 0;
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = [(MSASModelBase *)self statementForString:@"delete from PendingCommandQueue where albumGUID = ?;"];
  v8 = MSSqliteBindStringOrNull(v7, 1, v10);
  v9 = v8;
  MSSqliteTrapForDBLockError(v8);
  if (v9)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 616);
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [(MSASPersonModel *)self dbQueueRequeuePendingCommandsWithQueryStatement:v4 deleteStatement:v7];
  if (v4)
  {
LABEL_6:
    sqlite3_reset(v4);
  }

LABEL_7:
  if (v7)
  {
    sqlite3_reset(v7);
  }
}

- (void)dbQueueRequeuePendingCommandsWithAssetCollectionGUID:(id)a3
{
  v10 = a3;
  v4 = [(MSASModelBase *)self statementForString:@"select command, params, personID, albumGUID, assetCollectionGUID from PendingCommandQueue where assetCollectionGUID = ?;"];
  v5 = MSSqliteBindStringOrNull(v4, 1, v10);
  v6 = v5;
  MSSqliteTrapForDBLockError(v5);
  if (v6)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 597);
    v7 = 0;
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = [(MSASModelBase *)self statementForString:@"delete from PendingCommandQueue where AssetCollectionGUID = ?;"];
  v8 = MSSqliteBindStringOrNull(v7, 1, v10);
  v9 = v8;
  MSSqliteTrapForDBLockError(v8);
  if (v9)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 600);
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [(MSASPersonModel *)self dbQueueRequeuePendingCommandsWithQueryStatement:v4 deleteStatement:v7];
  if (v4)
  {
LABEL_6:
    sqlite3_reset(v4);
  }

LABEL_7:
  if (v7)
  {
    sqlite3_reset(v7);
  }
}

- (void)dbQueueRequeuePendingCommandsWithQueryStatement:(sqlite3_stmt *)a3 deleteStatement:(sqlite3_stmt *)a4
{
  v44 = *MEMORY[0x277D85DE8];
  [(MSASModelBase *)self beginTransaction];
  v37 = [(MSASPersonModel *)self dbQueueNextCommandSequenceNumber];
  v6 = [(MSASModelBase *)self statementForString:@"insert into CommandQueue (ord, command, params, personID, albumGUID, assetCollectionGUID) values (?, ?, ?, ?, ?, ?);"];
  v7 = sqlite3_step(a3);
  while (v7 == 100)
  {
    v8 = MSSqliteStringFromStatementColumn(a3, 0);
    v9 = MSSqliteDataFromStatementColumn(a3, 1);
    v10 = MSSqliteStringFromStatementColumn(a3, 2);
    v11 = MSSqliteStringFromStatementColumn(a3, 3);
    v12 = MSSqliteStringFromStatementColumn(a3, 4);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543874;
      v39 = self;
      v40 = 2114;
      v41 = v8;
      v42 = 2048;
      v43 = v37;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Requeueing pended command: %{public}@ at position %lld", buf, 0x20u);
    }

    v13 = sqlite3_reset(v6);
    v14 = v13;
    MSSqliteTrapForDBLockError(v13);
    if (v14)
    {
      v15 = [(MSASModelBase *)self dbQueueDB];
      v16 = self;
      v17 = 573;
LABEL_22:
      MSLogSqliteError(v15, v16, v17);
      v32 = 0;
      v7 = 100;
      goto LABEL_23;
    }

    v18 = sqlite3_bind_int64(v6, 1, v37);
    v19 = v18;
    MSSqliteTrapForDBLockError(v18);
    if (v19)
    {
      v15 = [(MSASModelBase *)self dbQueueDB];
      v16 = self;
      v17 = 574;
      goto LABEL_22;
    }

    v20 = MSSqliteBindStringOrNull(v6, 2, v8);
    v21 = v20;
    MSSqliteTrapForDBLockError(v20);
    if (v21)
    {
      v15 = [(MSASModelBase *)self dbQueueDB];
      v16 = self;
      v17 = 575;
      goto LABEL_22;
    }

    v22 = MSSqliteBindDataOrNull(v6, 3, v9);
    v23 = v22;
    MSSqliteTrapForDBLockError(v22);
    if (v23)
    {
      v15 = [(MSASModelBase *)self dbQueueDB];
      v16 = self;
      v17 = 576;
      goto LABEL_22;
    }

    v24 = MSSqliteBindStringOrNull(v6, 4, v10);
    v25 = v24;
    MSSqliteTrapForDBLockError(v24);
    if (v25)
    {
      v15 = [(MSASModelBase *)self dbQueueDB];
      v16 = self;
      v17 = 577;
      goto LABEL_22;
    }

    v26 = MSSqliteBindStringOrNull(v6, 5, v11);
    v27 = v26;
    MSSqliteTrapForDBLockError(v26);
    if (v27)
    {
      v15 = [(MSASModelBase *)self dbQueueDB];
      v16 = self;
      v17 = 578;
      goto LABEL_22;
    }

    v28 = MSSqliteBindStringOrNull(v6, 6, v12);
    v29 = v28;
    MSSqliteTrapForDBLockError(v28);
    if (v29)
    {
      v15 = [(MSASModelBase *)self dbQueueDB];
      v16 = self;
      v17 = 579;
      goto LABEL_22;
    }

    v30 = sqlite3_step(v6);
    v31 = v30;
    MSSqliteTrapForDBLockError(v30);
    if (v31 != 101)
    {
      v15 = [(MSASModelBase *)self dbQueueDB];
      v16 = self;
      v17 = 580;
      goto LABEL_22;
    }

    ++v37;
    v7 = sqlite3_step(a3);
    v32 = 1;
LABEL_23:

    if ((v32 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v33 = sqlite3_step(a4);
  v34 = v33;
  MSSqliteTrapForDBLockError(v33);
  if (v34 != 101)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 586);
  }

LABEL_27:
  if (v6)
  {
    sqlite3_reset(v6);
  }

  [(MSASModelBase *)self endTransaction];
  v35 = *MEMORY[0x277D85DE8];
}

- (void)enqueueCommand:(id)a3 params:(id)a4 personID:(id)a5 albumGUID:(id)a6 pendingOnAssetCollectionGUID:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(MSASModelBase *)self dbQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __89__MSASPersonModel_enqueueCommand_params_personID_albumGUID_pendingOnAssetCollectionGUID___block_invoke;
  v23[3] = &unk_278E92048;
  v23[4] = self;
  v24 = v16;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v16;
  dispatch_async(v17, v23);
}

void __89__MSASPersonModel_enqueueCommand_params_personID_albumGUID_pendingOnAssetCollectionGUID___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) dbQueueIsAssetCollectionWithGUIDPending:*(a1 + 40)])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 32);
      v24 = *(a1 + 48);
      *buf = 138543618;
      v39 = v23;
      v40 = 2114;
      v41 = v24;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Enqueueing pending command “%{public}@”.", buf, 0x16u);
    }

    v2 = [*(a1 + 32) statementForString:@"select max(ord) from PendingCommandQueue;"];
    v3 = sqlite3_step(v2);
    if (v3 == 101)
    {
      v4 = 0;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v3 != 100)
      {
        MSLogSqliteError([*(a1 + 32) dbQueueDB], *(a1 + 32), 526);
        goto LABEL_18;
      }

      v4 = sqlite3_column_int(v2, 0) + 1;
      if (!v2)
      {
LABEL_8:
        v2 = [*(a1 + 32) statementForString:{@"insert into PendingCommandQueue (ord, command, params, personID, albumGUID, assetCollectionGUID) values (?, ?, ?, ?, ?, ?);"}];
        v5 = sqlite3_bind_int64(v2, 1, v4);
        v6 = v5;
        MSSqliteTrapForDBLockError(v5);
        if (!v6)
        {
          v7 = MSSqliteBindStringOrNull(v2, 2, *(a1 + 48));
          v8 = v7;
          MSSqliteTrapForDBLockError(v7);
          if (!v8)
          {
            v9 = *(a1 + 56);
            v37 = 0;
            v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v37];
            v11 = v37;
            v12 = v11;
            if (v10)
            {
              v13 = v2;
              v14 = v10;
            }

            else
            {
              v25 = MEMORY[0x277CCACA8];
              v26 = [v11 userInfo];
              v27 = [v25 stringWithFormat:@"Failed to archive params object. Error: %@ Info: %@", v12, v26];

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v39 = v27;
                _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
              }

              v13 = v2;
              v14 = 0;
            }

            v28 = MSSqliteBindDataOrNull(v13, 3, v14);
            v29 = v28;
            MSSqliteTrapForDBLockError(v28);
            if (!v29)
            {
              v30 = MSSqliteBindStringOrNull(v2, 4, *(a1 + 64));
              v31 = v30;
              MSSqliteTrapForDBLockError(v30);
              if (!v31)
              {
                v32 = MSSqliteBindStringOrNull(v2, 5, *(a1 + 72));
                v33 = v32;
                MSSqliteTrapForDBLockError(v32);
                if (!v33)
                {
                  v34 = MSSqliteBindStringOrNull(v2, 6, *(a1 + 40));
                  v35 = v34;
                  MSSqliteTrapForDBLockError(v34);
                  if (!v35)
                  {
                    v36 = sqlite3_step(v2);
                    MSSqliteTrapForDBLockError(v36);
                  }
                }
              }
            }

            if (!v2)
            {
              goto LABEL_20;
            }

            goto LABEL_19;
          }
        }

LABEL_18:
        if (!v2)
        {
LABEL_20:
          v22 = *MEMORY[0x277D85DE8];
          return;
        }

LABEL_19:
        sqlite3_reset(v2);
        goto LABEL_20;
      }
    }

    sqlite3_reset(v2);
    goto LABEL_8;
  }

  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = *MEMORY[0x277D85DE8];

  [v19 dbQueueEnqueueCommand:v15 params:v16 personID:v17 albumGUID:v18 assetCollectionGUID:v20];
}

- (void)dbQueueEnqueueCommand:(id)a3 params:(id)a4 personID:(id)a5 albumGUID:(id)a6 assetCollectionGUID:(id)a7 sequenceNumber:(int64_t)a8
{
  v47 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v42 = self;
    v43 = 2114;
    v44 = v14;
    v45 = 2048;
    v46 = a8;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Enqueueing command %{public}@ at sequence number %lld.", buf, 0x20u);
  }

  v19 = [(MSASModelBase *)self statementForString:@"insert into CommandQueue (ord, command, params, personID, albumGUID, assetCollectionGUID) values (?, ?, ?, ?, ?, ?);"];
  v20 = sqlite3_bind_int64(v19, 1, a8);
  v21 = v20;
  MSSqliteTrapForDBLockError(v20);
  if (!v21)
  {
    v22 = MSSqliteBindStringOrNull(v19, 2, v14);
    v23 = v22;
    MSSqliteTrapForDBLockError(v22);
    if (!v23)
    {
      v40 = 0;
      v24 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v40];
      v25 = v40;
      v26 = v25;
      if (v24)
      {
        v27 = MSSqliteBindDataOrNull(v19, 3, v24);
      }

      else
      {
        v28 = MEMORY[0x277CCACA8];
        v29 = [v25 userInfo];
        v30 = [v28 stringWithFormat:@"Failed to archive params object. Error: %@ Info: %@", v26, v29];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v42 = v30;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        v27 = sqlite3_bind_null(v19, 3);
      }

      v31 = v27;
      MSSqliteTrapForDBLockError(v27);
      if (!v31)
      {
        v32 = MSSqliteBindStringOrNull(v19, 4, v16);
        v33 = v32;
        MSSqliteTrapForDBLockError(v32);
        if (!v33)
        {
          v34 = MSSqliteBindStringOrNull(v19, 5, v17);
          v35 = v34;
          MSSqliteTrapForDBLockError(v34);
          if (!v35)
          {
            v36 = MSSqliteBindStringOrNull(v19, 6, v18);
            v37 = v36;
            MSSqliteTrapForDBLockError(v36);
            if (!v37)
            {
              v38 = sqlite3_step(v19);
              MSSqliteTrapForDBLockError(v38);
            }
          }
        }
      }
    }
  }

  if (v19)
  {
    sqlite3_reset(v19);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)enqueueCommandAtHeadOfQueue:(id)a3 params:(id)a4 personID:(id)a5 albumGUID:(id)a6 assetCollectionGUID:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(MSASModelBase *)self dbQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __93__MSASPersonModel_enqueueCommandAtHeadOfQueue_params_personID_albumGUID_assetCollectionGUID___block_invoke;
  v23[3] = &unk_278E92048;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(v17, v23);
}

uint64_t __93__MSASPersonModel_enqueueCommandAtHeadOfQueue_params_personID_albumGUID_assetCollectionGUID___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];
  v7 = [v1 dbQueueSmallestCommandSequenceNumber] - 1;

  return [v1 dbQueueEnqueueCommand:v2 params:v3 personID:v4 albumGUID:v5 assetCollectionGUID:v6 sequenceNumber:v7];
}

- (void)enqueueCommand:(id)a3 params:(id)a4 personID:(id)a5 albumGUID:(id)a6 assetCollectionGUID:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(MSASModelBase *)self dbQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __80__MSASPersonModel_enqueueCommand_params_personID_albumGUID_assetCollectionGUID___block_invoke;
  v23[3] = &unk_278E92048;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(v17, v23);
}

- (void)dbQueueEnqueueCommand:(id)a3 params:(id)a4 personID:(id)a5 albumGUID:(id)a6 assetCollectionGUID:(id)a7
{
  v17 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  [(MSASPersonModel *)self dbQueueEnqueueCommand:v17 params:v12 personID:v13 albumGUID:v14 assetCollectionGUID:v15 sequenceNumber:[(MSASPersonModel *)self dbQueueNextCommandSequenceNumber]];
  objc_autoreleasePoolPop(v16);
}

- (int64_t)dbQueueSmallestCommandSequenceNumber
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(MSASModelBase *)self statementForString:@"select min(ord) from CommandQueue;"];
  v4 = sqlite3_reset(v3);
  v5 = v4;
  MSSqliteTrapForDBLockError(v4);
  if (v5)
  {
LABEL_2:
    sqlite3_reset(v3);
    v6 = 0;
    goto LABEL_9;
  }

  v7 = sqlite3_step(v3);
  if (v7 == 101)
  {
    v6 = 0;
  }

  else
  {
    if (v7 != 100)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v10 = 138543618;
        v11 = self;
        v12 = 2082;
        v13 = sqlite3_errmsg([(MSASModelBase *)self dbQueueDB]);
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not retrieve next command sequence number. sqlite error: %{public}s", &v10, 0x16u);
      }

      goto LABEL_2;
    }

    v6 = sqlite3_column_int64(v3, 0);
  }

  sqlite3_reset(v3);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = 138543618;
    v11 = self;
    v12 = 2048;
    v13 = v6;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...smallest command number: %lld", &v10, 0x16u);
  }

LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int64_t)dbQueueNextCommandSequenceNumber
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(MSASModelBase *)self statementForString:@"select max(ord) from CommandQueue;"];
  v4 = sqlite3_reset(v3);
  v5 = v4;
  MSSqliteTrapForDBLockError(v4);
  if (v5)
  {
LABEL_2:
    sqlite3_reset(v3);
    v6 = 0;
    goto LABEL_9;
  }

  v7 = sqlite3_step(v3);
  if (v7 == 101)
  {
    v6 = 0;
  }

  else
  {
    if (v7 != 100)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v10 = 138543618;
        v11 = self;
        v12 = 2082;
        v13 = sqlite3_errmsg([(MSASModelBase *)self dbQueueDB]);
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not retrieve next command sequence number. sqlite error: %{public}s", &v10, 0x16u);
      }

      goto LABEL_2;
    }

    v6 = sqlite3_column_int64(v3, 0) + 1;
  }

  sqlite3_reset(v3);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = 138543618;
    v11 = self;
    v12 = 2048;
    v13 = v6;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...next command sequence: %lld", &v10, 0x16u);
  }

LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (MSASPersonModel)initWithPersonID:(id)a3
{
  v4 = a3;
  v5 = MSPathAlbumSharingPersistentStoreForPersonID(v4);
  v8.receiver = self;
  v8.super_class = MSASPersonModel;
  v6 = [(MSASModelBase *)&v8 initWithPersonID:v4 databasePath:v5 currentVersion:8];

  return v6;
}

@end