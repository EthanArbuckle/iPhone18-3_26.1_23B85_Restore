@interface ML3RemoveCloudSourcesOperation
- (BOOL)_execute:(id *)a3;
- (BOOL)_verifyLibraryConnectionAndAttributesProperties:(id *)a3;
@end

@implementation ML3RemoveCloudSourcesOperation

- (BOOL)_execute:(id *)a3
{
  v106[2] = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = [(ML3DatabaseOperation *)self attributes];
  v75 = [v6 objectForKey:@"MLDatabaseOperationAttributeRemoveCloudSourcesKey"];

  v7 = [v75 containsObject:@"MLDatabaseOperationAttributeRemoveSubscriptionContentKey"];
  v72 = [v75 containsObject:@"MLDatabaseOperationAttributeRemovePurchaseHistoryKey"];
  v73 = [v75 containsObject:@"MLDatabaseOperationAttributeRemovePurchaseHistoryForMediaItemsKey"];
  v8 = [v75 containsObject:@"MLDatabaseOperationAttributeRemoveMatchKey"];
  v9 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = v8;
    *&buf[8] = 1024;
    *&buf[10] = v7;
    *&buf[14] = 1024;
    *&buf[16] = v73;
    *&buf[20] = 1024;
    *&buf[22] = v72;
    _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "[ML3RemoveCloudSourcesOperation] Beginning remove cloud sources operation - removeSourceMatch=%{BOOL}u, subscription=%{BOOL}u, purchasesForMediaItems=%{BOOL}u, removeSourcePurchaseHistory=%{BOOL}u", buf, 0x1Au);
  }

  v76 = [(ML3DatabaseOperation *)self transaction];
  v77 = [v76 connection];
  v78 = [v76 library];
  if (v7)
  {
    v10 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.is_subscription" equalToInt64:1];
    v11 = [(ML3Entity *)ML3Track unrestrictedAllItemsQueryWithlibrary:v78 predicate:v10 orderingTerms:0];
    [v11 setIgnoreSystemFilterPredicates:1];
    if ([v11 hasEntities])
    {
      [v78 removeSource:6 forImportOperation:self usingConnection:v77 postNotifications:0];
    }
  }

  if (([v78 sagaOnDiskDatabaseRevision] != 0) | v8 & 1)
  {
    v12 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEFAULT, "[ML3RemoveCloudSourcesOperation] %{public}@ - Removing cloud source from playlists", buf, 0xCu);
    }

    v101 = 0;
    v13 = [v77 executeUpdate:@"UPDATE container SET store_cloud_id = 0" withParameters:0 error:&v101];
    v14 = v101;
    if ((v13 & 1) == 0)
    {
      v15 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v14;
        _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "[ML3RemoveCloudSourcesOperation] %{public}@ - Removing cloud id properties failed with error=%{public}@.", buf, 0x16u);
      }
    }

    v100 = v14;
    v16 = [v77 executeUpdate:@"UPDATE container SET is_src_remote=1 WHERE sync_id != 0" withParameters:0 error:&v100];
    v70 = v100;

    if ((v16 & 1) == 0)
    {
      v17 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v70;
        _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_DEFAULT, "[ML3RemoveCloudSourcesOperation] %{public}@ - Updating is_src_remote failed with error=%{public}@.", buf, 0x16u);
      }
    }

    v18 = [ML3ComparisonPredicate predicateWithProperty:@"is_src_remote" equalToInt64:2];
    v71 = [(ML3Entity *)ML3Container queryWithLibrary:v78 predicate:v18];

    v19 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v71 countOfEntities];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v20;
      _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "[ML3RemoveCloudSourcesOperation] %{public}@ - Removing %ld playlists synced from the cloud", buf, 0x16u);
    }

    [v71 deleteAllEntitiesFromLibraryWithDeletionType:2];
    v21 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_DEFAULT, "[ML3RemoveCloudSourcesOperation] %{public}@ - Removing cloud source from albums and artists", buf, 0xCu);
    }

    v22 = [v77 executeQuery:@"SELECT album_artist_pid FROM album_artist where cloud_universal_library_id !=''"];
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __43__ML3RemoveCloudSourcesOperation__execute___block_invoke;
    v97[3] = &unk_278763E40;
    v23 = v78;
    v98 = v23;
    v24 = v77;
    v99 = v24;
    [v22 enumerateRowsWithBlock:v97];
    v25 = [v24 executeQuery:@"SELECT album_pid FROM album where cloud_library_id !=''"];

    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __43__ML3RemoveCloudSourcesOperation__execute___block_invoke_2;
    v94[3] = &unk_278763E40;
    v26 = v23;
    v95 = v26;
    v27 = v24;
    v96 = v27;
    [v25 enumerateRowsWithBlock:v94];
    v93 = 0;
    LOBYTE(v23) = [v27 executeUpdate:@"UPDATE album_artist SET cloud_universal_library_id=? withParameters:liked_state=? error:{liked_state_changed_date=? WHERE cloud_universal_library_id !=''", &unk_2840C65D8, &v93}];
    v28 = v93;
    if ((v23 & 1) == 0)
    {
      v29 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v28;
        _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_DEFAULT, "[ML3RemoveCloudSourcesOperation] %{public}@ - Removing cloud id property from album artists failed with error=%{public}@.", buf, 0x16u);
      }
    }

    v92 = v28;
    v30 = [v27 executeUpdate:@"UPDATE album SET cloud_library_id=? withParameters:liked_state=? error:{liked_state_changed_date=? WHERE cloud_library_id !=''", &unk_2840C65F0, &v92}];
    v31 = v92;

    if ((v30 & 1) == 0)
    {
      v32 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v31;
        _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_DEFAULT, "[ML3RemoveCloudSourcesOperation] %{public}@ - Removing cloud id property from albums failed with error=%{public}@.", buf, 0x16u);
      }
    }

    v33 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v34 = [ML3ComparisonPredicate predicateWithProperty:@"(container.distinguished_kind = 32)" value:v33 comparison:1];

    v35 = [(ML3Entity *)ML3Container queryWithLibrary:v26 predicate:v34];
    v36 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [v35 countOfEntities];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v37;
      _os_log_impl(&dword_22D2FA000, v36, OS_LOG_TYPE_DEFAULT, "[ML3RemoveCloudSourcesOperation] %{public}@ - Removing %ld genius mixes.", buf, 0x16u);
    }

    [v35 deleteAllEntitiesFromLibraryWithDeletionType:2];
    v38 = [v27 executeQuery:@"SELECT pin_pid FROM library_pins"];

    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __43__ML3RemoveCloudSourcesOperation__execute___block_invoke_40;
    v89[3] = &unk_278763E40;
    v39 = v26;
    v90 = v39;
    v40 = v27;
    v91 = v40;
    [v38 enumerateRowsWithBlock:v89];
    v88 = v31;
    v41 = [v40 executeUpdate:@"DELETE FROM library_pins" withParameters:0 error:&v88];
    v42 = v88;

    if ((v41 & 1) == 0)
    {
      v43 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v42;
        _os_log_impl(&dword_22D2FA000, v43, OS_LOG_TYPE_DEFAULT, "[ML3RemoveCloudSourcesOperation] %{public}@ - Removing all library pins failed with error=%{public}@.", buf, 0x16u);
      }
    }

    [v39 removeSource:2 forImportOperation:self usingConnection:v40 postNotifications:0];
  }

  else
  {
    v42 = 0;
  }

  if (v73)
  {
    v44 = [ML3ComparisonPredicate predicateWithProperty:@"media_type" value:&unk_2840C8858 comparison:10];
    v45 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.purchase_history_id" value:&unk_2840C8840 comparison:2];
    v106[0] = v44;
    v106[1] = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:2];
    v47 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v46];

    v48 = [(ML3Entity *)ML3Track unrestrictedQueryWithLibrary:v78 predicate:v47 orderingTerms:MEMORY[0x277CBEBF8]];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1572;
    v104 = __Block_byref_object_dispose__1573;
    v105 = [MEMORY[0x277CBEB18] array];
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __43__ML3RemoveCloudSourcesOperation__execute___block_invoke_50;
    v87[3] = &unk_27875CE90;
    v87[4] = buf;
    [v48 enumeratePersistentIDsUsingBlock:v87];
    [v78 removeSource:4 fromPersistentIDS:*(*&buf[8] + 40) forImportOperation:self usingConnection:v77 postNotifications:0];
    _Block_object_dispose(buf, 8);
  }

  if (v72)
  {
    if ([v78 jaliscoOnDiskDatabaseRevision] >= 1)
    {
      [v78 removeSource:4 forImportOperation:self usingConnection:v77 postNotifications:0];
      [v78 setJaliscoOnDiskDatabaseRevision:0];
      v49 = [MEMORY[0x277CBEAA8] distantPast];
      [v78 setJaliscoLastGeniusUpdateDate:v49];

      if ([v78 jaliscoHasCloudGeniusData])
      {
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v50 = [&unk_2840C6608 countByEnumeratingWithState:&v83 objects:v102 count:16];
        if (v50)
        {
          v51 = *v84;
          while (2)
          {
            v52 = 0;
            v53 = v42;
            do
            {
              if (*v84 != v51)
              {
                objc_enumerationMutation(&unk_2840C6608);
              }

              v54 = *(*(&v83 + 1) + 8 * v52);
              v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@", v54];
              v82 = v53;
              v56 = [v77 executeUpdate:v55 withParameters:0 error:&v82];
              v42 = v82;

              if ((v56 & 1) == 0)
              {
                v57 = os_log_create("com.apple.amp.medialibrary", "Default");
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  *&buf[4] = v54;
                  *&buf[12] = 2114;
                  *&buf[14] = v42;
                  _os_log_impl(&dword_22D2FA000, v57, OS_LOG_TYPE_DEFAULT, "[ML3RemoveCloudSourcesOperation] failed to empty rows from table=%{public}@, error=%{public}@", buf, 0x16u);
                }

                goto LABEL_55;
              }

              ++v52;
              v53 = v42;
            }

            while (v50 != v52);
            v50 = [&unk_2840C6608 countByEnumeratingWithState:&v83 objects:v102 count:16];
            if (v50)
            {
              continue;
            }

            break;
          }
        }

LABEL_55:
        v58 = [ML3ComparisonPredicate predicateWithProperty:@"(container.is_container_type_active_target AND container.smart_is_genius)" equalToInteger:1];
        v59 = [(ML3Entity *)ML3Container queryWithLibrary:v78 predicate:v58];
        v80[0] = MEMORY[0x277D85DD0];
        v80[1] = 3221225472;
        v80[2] = __43__ML3RemoveCloudSourcesOperation__execute___block_invoke_68;
        v80[3] = &unk_278765BD8;
        v60 = v78;
        v81 = v60;
        [v59 enumeratePersistentIDsUsingBlock:v80];
        [v60 setJaliscoHasCloudGeniusData:0];
        [v60 setJaliscoIsMusicGeniusUserEnabled:0];
      }
    }

    [v78 clearAllCloudKVSData];
    [v78 clearCachedPurchaseHistoryVersionsUsingConnection:v77];
  }

  v79 = 0;
  v61 = [v77 executeUpdate:@"UPDATE album SET liked_state=? WHERE NOT EXISTS (SELECT 1 FROM item WHERE in_my_library AND item.album_pid = album.album_pid)" withParameters:&unk_2840C6620 error:&v79];
  v62 = v79;
  v63 = v62;
  if (v61)
  {
    v64 = v42;
  }

  else
  {
    v64 = v62;

    v65 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v64;
      _os_log_impl(&dword_22D2FA000, v65, OS_LOG_TYPE_DEFAULT, "[ML3RemoveCloudSourcesOperation] failed to update liked_state on potentially orphaned albums, error=%{public}@", buf, 0xCu);
    }
  }

  [v78 clearCachedCloudLibraryVersionsUsingConnection:v77];
  v66 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    *buf = 67109376;
    *&buf[4] = v61;
    *&buf[8] = 2048;
    *&buf[10] = v67 - v5;
    _os_log_impl(&dword_22D2FA000, v66, OS_LOG_TYPE_DEFAULT, "[ML3RemoveCloudSourcesOperation] Remove cloud sources operation finished with success=%d in %.3f seconds, starting maintenance task", buf, 0x12u);
  }

  if (v61)
  {
    [v78 performMainentanceTasksUsingActivity:0];
    [v78 notifyEntitiesAddedOrRemoved];
    [v78 notifyContentsDidChange];
  }

  if (a3)
  {
    v68 = v64;
    *a3 = v64;
  }

  return v61;
}

BOOL __43__ML3RemoveCloudSourcesOperation__execute___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 int64ForColumnIndex:0];
  v5 = *(a1 + 40);

  return [(ML3Entity *)ML3AlbumArtist incrementRevisionWithLibrary:v3 persistentID:v4 deletionType:0 revisionType:1 usingConnection:v5];
}

BOOL __43__ML3RemoveCloudSourcesOperation__execute___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 int64ForColumnIndex:0];
  v5 = *(a1 + 40);

  return [(ML3Entity *)ML3Album incrementRevisionWithLibrary:v3 persistentID:v4 deletionType:0 revisionType:1 usingConnection:v5];
}

BOOL __43__ML3RemoveCloudSourcesOperation__execute___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 int64ForColumnIndex:0];
  v5 = *(a1 + 40);

  return [(ML3Entity *)ML3LibraryPin incrementRevisionWithLibrary:v3 persistentID:v4 deletionType:1 revisionType:0 usingConnection:v5];
}

void __43__ML3RemoveCloudSourcesOperation__execute___block_invoke_50(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v2 addObject:v3];
}

void __43__ML3RemoveCloudSourcesOperation__execute___block_invoke_68(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [(ML3Entity *)ML3Container newWithPersistentID:a2 inLibrary:*(a1 + 32)];
  if ([v3 existsInLibrary])
  {
    [v3 deleteFromLibrary];
    v4 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = a2;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "[ML3RemoveCloudSourcesOperation] Deleted active Genius playlist with pid: %lld", &v5, 0xCu);
    }
  }
}

- (BOOL)_verifyLibraryConnectionAndAttributesProperties:(id *)a3
{
  v10.receiver = self;
  v10.super_class = ML3RemoveCloudSourcesOperation;
  if (![(ML3DatabaseOperation *)&v10 _verifyLibraryConnectionAndAttributesProperties:?])
  {
    return 0;
  }

  v5 = [(ML3DatabaseOperation *)self attributes];
  v6 = [v5 objectForKey:@"MLDatabaseOperationAttributeRemoveCloudSourcesKey"];

  v7 = [v6 count];
  v8 = v7 != 0;
  if (a3 && !v7)
  {
    *a3 = [ML3MediaLibraryWriter writerErrorWithCode:500 description:@"ML3RemoveCloudSourcesOperation requires a track source attribute"];
  }

  return v8;
}

@end