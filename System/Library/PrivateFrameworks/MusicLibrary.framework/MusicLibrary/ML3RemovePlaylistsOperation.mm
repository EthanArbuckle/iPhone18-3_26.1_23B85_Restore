@interface ML3RemovePlaylistsOperation
- (BOOL)_execute:(id *)a3;
- (BOOL)_removePlaylistsWithPersistentIDs:(id)a3 fromSource:(int)a4 usingTransaction:(id)a5;
- (BOOL)_removeRemotePlaylistsWithNoSourceUsingTransation:(id)a3;
- (BOOL)_removeSource:(int)a3 usingTransaction:(id)a4;
- (BOOL)_verifyLibraryConnectionAndAttributesProperties:(id *)a3;
@end

@implementation ML3RemovePlaylistsOperation

- (BOOL)_removeRemotePlaylistsWithNoSourceUsingTransation:(id)a3
{
  v30[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 connection];
  v5 = [v3 library];

  v6 = [ML3ComparisonPredicate predicateWithProperty:@"is_src_remote" equalToInteger:1];
  v30[0] = v6;
  v7 = [ML3ComparisonPredicate predicateWithProperty:@"sync_id" equalToInt64:0];
  v30[1] = v7;
  v8 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_global_id" equalToInt64:0];
  v30[2] = v8;
  v9 = [ML3ComparisonPredicate predicateWithProperty:@"store_cloud_id" equalToInt64:0];
  v30[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  v11 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v10];

  v12 = [(ML3Entity *)ML3Container unrestrictedAllItemsQueryWithlibrary:v5 predicate:v11 orderingTerms:MEMORY[0x277CBEBF8]];
  v13 = [MEMORY[0x277CBEB18] array];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __81__ML3RemovePlaylistsOperation__removeRemotePlaylistsWithNoSourceUsingTransation___block_invoke;
  v24[3] = &unk_278765BD8;
  v14 = v13;
  v25 = v14;
  [v12 enumeratePersistentIDsUsingBlock:v24];
  v15 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 count];
    *buf = 134218242;
    v27 = v16;
    v28 = 2114;
    v29 = v14;
    _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "[ML3RemovePlaylistsOperation] removing %lu containers that no longer have a remote source. container_pids=%{public}@", buf, 0x16u);
  }

  v17 = +[ML3DatabaseStatementRenderer defaultRenderer];
  v18 = [v17 statementWithPrefix:@"DELETE FROM container WHERE container_pid" inParameterCount:{objc_msgSend(v14, "count")}];
  v23 = 0;
  v19 = [v4 executeUpdate:v18 withParameters:v14 error:&v23];
  v20 = v23;

  if ((v19 & 1) == 0)
  {
    v21 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v20;
      _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_DEFAULT, "[ML3RemovePlaylistsOperation] failed to remove sourceless containers. err=%{public}@", buf, 0xCu);
    }
  }

  return v19;
}

void __81__ML3RemovePlaylistsOperation__removeRemotePlaylistsWithNoSourceUsingTransation___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v2 addObject:v3];
}

- (BOOL)_removePlaylistsWithPersistentIDs:(id)a3 fromSource:(int)a4 usingTransaction:(id)a5
{
  v6 = *&a4;
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v9 connection];
  if (v6)
  {
    v11 = ML3ContainerRulesRemovalSourceIdentityPropertyForSource(v6);
    v12 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v32 = v11;
      v33 = 2114;
      v34 = v8;
      _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEFAULT, "[ML3RemovePlaylistsOperation] Removing source property %{public}@ from container pids %{public}@", buf, 0x16u);
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE container set %@=0 WHERE container_pid", v11];
    v14 = +[ML3DatabaseStatementRenderer defaultRenderer];
    v15 = [v14 statementWithPrefix:v13 inParameterCount:{-[NSObject count](v8, "count")}];
    v28 = 0;
    v16 = [v10 executeUpdate:v15 withParameters:v8 error:&v28];
    v17 = v28;

    if (v16)
    {
      v18 = [(ML3RemovePlaylistsOperation *)self _removeRemotePlaylistsWithNoSourceUsingTransation:v9];
    }

    else
    {
      v26 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v32 = v11;
        v33 = 2114;
        v34 = v17;
        _os_log_impl(&dword_22D2FA000, v26, OS_LOG_TYPE_DEFAULT, "[ML3RemovePlaylistsOperation] failed to remove source %{public}@ from containers. err=%{public}@", buf, 0x16u);
      }

      v18 = 0;
    }

LABEL_19:
    v25 = v17;
    goto LABEL_20;
  }

  v19 = +[ML3DatabaseStatementRenderer defaultRenderer];
  v20 = [v19 statementWithPrefix:@"DELETE FROM container WHERE container_pid" inParameterCount:{-[NSObject count](v8, "count")}];
  v30 = 0;
  v21 = [v10 executeUpdate:v20 withParameters:v8 error:&v30];
  v17 = v30;

  if ((v21 & 1) == 0)
  {
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = v17;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "[ML3RemovePlaylistsOperation] failed to remove containers. err=%{public}@", buf, 0xCu);
    }

    v18 = 0;
    goto LABEL_19;
  }

  v22 = +[ML3DatabaseStatementRenderer defaultRenderer];
  v23 = [v22 statementWithPrefix:@"DELETE FROM library_pins WHERE entity_type=1 AND entity_pid" inParameterCount:{-[NSObject count](v8, "count")}];
  v29 = v17;
  v24 = [v10 executeUpdate:v23 withParameters:v8 error:&v29];
  v25 = v29;

  if ((v24 & 1) == 0)
  {
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = v25;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "[ML3RemovePlaylistsOperation] failed to remove containers from library pins. err=%{public}@", buf, 0xCu);
    }

    v18 = 0;
    v17 = v25;
    goto LABEL_19;
  }

  v18 = 1;
LABEL_20:

  return v18;
}

- (BOOL)_removeSource:(int)a3 usingTransaction:(id)a4
{
  v4 = *&a3;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 connection];
  v8 = [v6 library];
  if (v4)
  {
    v9 = ML3ContainerRulesRemovalSourceIdentityPropertyForSource(v4);
    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 databasePath];
      *buf = 138543618;
      v24 = v9;
      v25 = 2114;
      v26 = v11;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "[ML3RemovePlaylistsOperation] Removing source property %{public}@ from all containers in library at path %{public}@", buf, 0x16u);
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE container set %@=0", v9];
    v21 = 0;
    v13 = [v7 executeUpdate:v12 withParameters:0 error:&v21];
    v14 = v21;
    if (v13)
    {
      v15 = [(ML3RemovePlaylistsOperation *)self _removeRemotePlaylistsWithNoSourceUsingTransation:v6];
    }

    else
    {
      v19 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v24 = v9;
        v25 = 2114;
        v26 = v14;
        _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "[ML3RemovePlaylistsOperation] failed to remove source %{public}@ from containers. err=%{public}@", buf, 0x16u);
      }

      v15 = 0;
    }

LABEL_17:
    goto LABEL_18;
  }

  v16 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v8 databasePath];
    *buf = 138543362;
    v24 = v17;
    _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "[ML3RemovePlaylistsOperation] Removing all containers from library at path %{public}@", buf, 0xCu);
  }

  v22 = 0;
  v18 = [v7 executeUpdate:@"DELETE FROM container" withParameters:0 error:&v22];
  v14 = v22;
  if ((v18 & 1) == 0)
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v14;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "[ML3RemovePlaylistsOperation] failed to remove all containers. err=%{public}@", buf, 0xCu);
    }

    v15 = 0;
    goto LABEL_17;
  }

  v15 = 1;
LABEL_18:

  return v15;
}

- (BOOL)_verifyLibraryConnectionAndAttributesProperties:(id *)a3
{
  v9.receiver = self;
  v9.super_class = ML3RemovePlaylistsOperation;
  if (![(ML3DatabaseOperation *)&v9 _verifyLibraryConnectionAndAttributesProperties:?])
  {
    return 0;
  }

  v5 = [(ML3DatabaseOperation *)self attributes];
  v6 = [v5 objectForKey:@"MLDatabaseOperationAttributeTrackSourceKey"];
  v7 = v6 != 0;

  if (a3 && !v6)
  {
    [ML3MediaLibraryWriter writerErrorWithCode:500 description:@"ML3RemovePlaylistsOperation requires a track source attribute"];
    *a3 = v7 = 0;
  }

  return v7;
}

- (BOOL)_execute:(id *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [(ML3DatabaseOperation *)self transaction];
  v6 = [(ML3DatabaseOperation *)self attributes];
  v7 = [v6 objectForKey:@"MLDatabaseOperationAttributeTrackSourceKey"];
  v8 = [v7 intValue];

  v9 = [(ML3DatabaseOperation *)self attributes];
  v10 = [v9 objectForKey:@"MLDatabaseOperationAttributePersistentIDsArrayKey"];

  v11 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 67109376;
    v21 = v8;
    v22 = 2048;
    v23 = COERCE_DOUBLE([v10 count]);
    _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "[ML3RemovePlaylistsOperation] Beginning remove playlists operation with source %d (%lu specified playlists)", &v20, 0x12u);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v13 = v12;
  if ([v10 count])
  {
    v14 = [(ML3RemovePlaylistsOperation *)self _removePlaylistsWithPersistentIDs:v10 fromSource:v8 usingTransaction:v5];
  }

  else
  {
    v14 = [(ML3RemovePlaylistsOperation *)self _removeSource:v8 usingTransaction:v5];
  }

  v15 = v14;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v17 = v16;
  v18 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 67109376;
    v21 = v15;
    v22 = 2048;
    v23 = v17 - v13;
    _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_DEFAULT, "[ML3RemovePlaylistsOperation] Remove playlists operation success=%d in %.3f seconds", &v20, 0x12u);
  }

  if (a3)
  {
    *a3 = 0;
  }

  return v15;
}

@end