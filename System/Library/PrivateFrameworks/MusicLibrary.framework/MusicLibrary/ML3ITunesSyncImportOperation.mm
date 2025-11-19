@interface ML3ITunesSyncImportOperation
- (BOOL)_performImportFromPlistFiles:(id)a3 withTransaction:(id)a4;
- (BOOL)_performImportOfTrackData:(id)a3 WithTransaction:(id)a4;
- (BOOL)_performImportWithTransaction:(id)a3;
- (BOOL)_processDeletePlaylistOperation:(id)a3 withImportSession:(void *)a4;
- (BOOL)_processDeleteTrackOperation:(id)a3 withImportSession:(void *)a4;
- (BOOL)_processInsertPlaylistOperation:(id)a3 withImportSession:(void *)a4;
- (BOOL)_processInsertTrackOperation:(id)a3 withImportSession:(void *)a4;
- (BOOL)_processSyncOperation:(id)a3 withImportSession:(void *)a4;
- (BOOL)_processUpdateDBInfoOperation:(id)a3 withImportSession:(void *)a4;
- (BOOL)_processUpdatePlaylistOperation:(id)a3 withImportSession:(void *)a4;
- (BOOL)_processUpdateTrackOperation:(id)a3 withImportSession:(void *)a4;
- (id)_dbInfoValuesForStep:(id)a3;
- (id)_syncOperationsFromPlistFile:(id)a3;
- (id)_syncPlistFilesFromDirectory:(id)a3;
- (void)_archiveSyncPlistFiles;
- (void)_processGeniusConfigPlist:(id)a3;
- (void)_recoverExistingAsset:(id)a3 forTrackId:(int64_t)a4;
- (void)main;
@end

@implementation ML3ITunesSyncImportOperation

- (void)_archiveSyncPlistFiles
{
  v56[3] = *MEMORY[0x277D85DE8];
  v42 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = MEMORY[0x277CBEBC0];
  v3 = MSVMediaLoggingDirectory();
  v56[0] = v3;
  v56[1] = @"SyncData";
  v56[2] = @"iTunes";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
  v41 = [v2 fileURLWithPathComponents:v4];

  v38 = 297;
  if (self->_resetSync)
  {
    [v42 removeItemAtURL:v41 error:0];
  }

  else
  {
    v43 = objc_opt_new();
    v5 = *MEMORY[0x277CBE868];
    v6 = *MEMORY[0x277CBE7C0];
    v55[0] = *MEMORY[0x277CBE868];
    v55[1] = v6;
    v44 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    v8 = [v42 enumeratorAtURL:v41 includingPropertiesForKeys:v7 options:4 errorHandler:0];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v10)
    {
      v11 = *v48;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v48 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v47 + 1) + 8 * i);
          v14 = [v13 lastPathComponent];
          v15 = [v14 isEqualToString:@"Reset"];

          if ((v15 & 1) == 0)
          {
            v46 = 0;
            v16 = [v13 getResourceValue:&v46 forKey:v5 error:0];
            v17 = v46;
            v18 = v17;
            if (v16 && [v17 BOOLValue])
            {
              v45 = 0;
              v19 = [v13 getResourceValue:&v45 forKey:v44 error:0];
              v20 = v45;
              if (v19)
              {
                [v43 setObject:v13 forKey:v20];
              }
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v47 objects:v54 count:16];
      }

      while (v10);
    }

    if ([v43 count] >= 4)
    {
      v21 = [v43 allKeys];
      v22 = [v21 sortedArrayUsingComparator:&__block_literal_global_24606];

      for (j = 3; [v22 count] > j; ++j)
      {
        v24 = [v22 objectAtIndexedSubscript:j];
        v25 = [v43 objectForKeyedSubscript:v24];
        [v42 removeItemAtURL:v25 error:0];
      }
    }
  }

  [v42 createDirectoryAtURL:v41 withIntermediateDirectories:1 attributes:0 error:{0, v38}];
  if (*(&self->super.super.super.isa + v39))
  {
    v26 = @"Reset";
  }

  else
  {
    v27 = [MEMORY[0x277CBEAA8] date];
    v26 = [v27 description];
  }

  v28 = [(__CFString *)v26 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  v29 = MEMORY[0x277CBEBC0];
  v30 = [v41 path];
  v53[0] = v30;
  v53[1] = v28;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v32 = [v29 fileURLWithPathComponents:v31];

  v33 = [MEMORY[0x277CBEAA8] date];
  v34 = [v32 path];
  [v42 copyItemAtPath:@"/var/mobile/Media/iTunes_Control/Sync/Media/" toPath:v34 error:0];

  v35 = *MEMORY[0x277CCA150];
  v51[0] = *MEMORY[0x277CCA108];
  v51[1] = v35;
  v52[0] = v33;
  v52[1] = v33;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
  v37 = [v32 path];
  [v42 setAttributes:v36 ofItemAtPath:v37 error:0];
}

- (void)_processGeniusConfigPlist:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKey:@"data"];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x277CBEB68] null];
    }

    v9 = v7;

    v10 = [v4 objectForKey:@"default_num_results"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [MEMORY[0x277CBEB68] null];
    }

    v13 = v12;

    v14 = [v4 objectForKey:@"min_num_results"];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [MEMORY[0x277CBEB68] null];
    }

    v17 = v16;

    v18 = [v4 objectForKey:@"version"];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = [MEMORY[0x277CBEB68] null];
    }

    v21 = v20;

    *&buf = 0;
    *(&buf + 1) = &buf;
    v41 = 0x2020000000;
    v42 = 0;
    v22 = [(ML3ImportOperation *)self import];
    v23 = [v22 library];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __58__ML3ITunesSyncImportOperation__processGeniusConfigPlist___block_invoke;
    v32[3] = &unk_278765610;
    p_buf = &buf;
    v8 = v9;
    v33 = v8;
    v31 = v13;
    v34 = v31;
    v24 = v17;
    v35 = v24;
    v25 = v21;
    v36 = v25;
    [v23 databaseConnectionAllowingWrites:1 withBlock:v32];

    LODWORD(v21) = *(*(&buf + 1) + 24);
    v26 = os_log_create("com.apple.amp.medialibrary", "Default");
    v27 = v26;
    if (v21 == 1)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 138543362;
        v39 = v4;
        v28 = "Updated Genius configuration: %{public}@";
        v29 = v27;
        v30 = OS_LOG_TYPE_DEFAULT;
LABEL_21:
        _os_log_impl(&dword_22D2FA000, v29, v30, v28, v38, 0xCu);
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *v38 = 138543362;
      v39 = v4;
      v28 = "Failed to update Genius configuration: %{public}@";
      v29 = v27;
      v30 = OS_LOG_TYPE_ERROR;
      goto LABEL_21;
    }

    _Block_object_dispose(&buf, 8);
    goto LABEL_23;
  }

  v8 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "No valid genius_config found in: %{public}@", &buf, 0xCu);
  }

LABEL_23:
}

void __58__ML3ITunesSyncImportOperation__processGeniusConfigPlist___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:4];
  *(*(*(a1 + 64) + 8) + 24) = [v3 executeUpdate:@"INSERT OR REPLACE INTO genius_config (id withParameters:data error:{default_num_results, min_num_results, version) VALUES (0, ?, ?, ?, ?)", v4, 0}];
}

- (id)_dbInfoValuesForStep:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:@"pid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    [v6 setValue:v5 forKey:@"ROWID"];
    v7 = [v4 objectForKey:@"db_info"];
    v19[0] = @"audio_language";
    v19[1] = @"subtitle_language";
    v20[0] = @"audio_language";
    v20[1] = @"subtitle_language";
    v19[2] = @"genius_cuid";
    v20[2] = @"genius_cuid";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
    v9 = v7;
    v10 = v6;
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v22 = ___ZL23TranslateDictionaryKeysP12NSDictionaryS0_P19NSMutableDictionary_block_invoke;
    v23 = &unk_278765658;
    v24 = v9;
    v25 = v10;
    [v8 enumerateKeysAndObjectsUsingBlock:&buf];

    v11 = [v9 objectForKeyedSubscript:@"primary_container_pid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 setObject:v11 forKey:@"primary_container_pid"];
    }

    v12 = [v9 objectForKeyedSubscript:@"genius_config"];

    v13 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ML3ITunesSyncImportOperation *)self _processGeniusConfigPlist:v12];
    }

    else
    {
      v14 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v13;
        _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "Unexpected genius config format: %{public}@", &buf, 0xCu);
      }
    }

    v15 = [v9 objectForKeyedSubscript:@"apple_ids"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __53__ML3ITunesSyncImportOperation__dbInfoValuesForStep___block_invoke;
      v18[3] = &unk_2787655E8;
      v18[4] = self;
      [v15 enumerateKeysAndObjectsUsingBlock:v18];
    }

    else
    {
      v16 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v15;
        _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "Unexpected AppleID config format: %@", &buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "Got update_db_info with invalid pid: %{public}@", &buf, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

void __53__ML3ITunesSyncImportOperation__dbInfoValuesForStep___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = [*(a1 + 32) import];
    v8 = [v7 library];
    v9 = [v8 accountCacheDatabase];
    [v9 setAppleID:v6 forDSID:{objc_msgSend(v5, "longLongValue")}];
  }

  else
  {
    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "Unexpected DSID/AppleID pair format: %{public}@/%{public}@", &v13, 0x16u);
    }
  }
}

- (void)_recoverExistingAsset:(id)a3 forTrackId:(int64_t)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:v6];
  if (([v7 fileExistsAtPath:v8] & 1) == 0)
  {
    v9 = [(ML3ImportOperation *)self import];
    v10 = [v9 library];
    v11 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:a4];
    v12 = [(ML3Entity *)ML3Track anyInLibrary:v10 predicate:v11 options:7];

    if (v12)
    {
      v13 = [v12 absoluteFilePath];
      v14 = [v7 fileExistsAtPath:v13];
      v15 = os_log_create("com.apple.amp.medialibrary", "Default");
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v22 = a4;
          v23 = 2114;
          v24 = v13;
          v25 = 2114;
          v26 = v8;
          _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "Asset path differs for pid %lld. ours=%{public}@, theirs=%{public}@", buf, 0x20u);
        }
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          v22 = a4;
          v23 = 2114;
          v24 = v6;
          _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "No longer have asset for pid %lld. filePath=%{public}@", buf, 0x16u);
        }

        v16 = [(ML3ImportOperation *)self import];
        v17 = [v16 library];
        v18 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
        v20 = v18;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
        [ML3Track clearLocationFromLibrary:v17 persistentIDs:v19 disableKeepLocal:0];
      }
    }

    else
    {
      v13 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v22 = a4;
        _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "recoverExistingAsset called with unknown track pid %lld", buf, 0xCu);
      }
    }
  }
}

- (BOOL)_processDeletePlaylistOperation:(id)a3 withImportSession:(void *)a4
{
  v5 = a3;
  if (!self->_sagaIsEnabled)
  {
    operator new();
  }

  return 1;
}

- (BOOL)_processUpdatePlaylistOperation:(id)a3 withImportSession:(void *)a4
{
  v5 = a3;
  if (!self->_sagaIsEnabled)
  {
    if (self->_devicePrimaryContainer)
    {
      v6 = [v5 objectForKey:@"pid"];
      [v6 longLongValue];
    }

    operator new();
  }

  return 1;
}

- (BOOL)_processInsertPlaylistOperation:(id)a3 withImportSession:(void *)a4
{
  v7 = a3;
  if (!self->_sagaIsEnabled)
  {
    if (self->_devicePrimaryContainer)
    {
      v5 = [(NSDictionary *)v7 objectForKey:@"pid"];
      [v5 longLongValue];
    }

    operator new();
  }

  return 1;
}

void __82__ML3ITunesSyncImportOperation__processInsertPlaylistOperation_withImportSession___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [ML3Container alloc];
  v5 = [*(a1 + 32) import];
  v6 = [v5 library];
  v7 = [(ML3Entity *)v4 initWithPersistentID:a2 inLibrary:v6];

  [(ML3Entity *)v7 setValue:&unk_2840CA3E8 forProperty:@"is_container_type_active_target"];
}

- (BOOL)_processUpdateDBInfoOperation:(id)a3 withImportSession:(void *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(ML3ITunesSyncImportOperation *)self _dbInfoValuesForStep:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:@"ROWID"];
    v9 = [v8 longLongValue];
    v10 = [(ML3ImportOperation *)self import];
    v11 = [v10 library];
    v12 = [v11 databaseInfo];

    if (![v12 existsInLibrary] || objc_msgSend(v12, "persistentID") != v9)
    {
      v13 = [(ML3ImportOperation *)self import];
      v14 = [v13 library];
      v15 = [(ML3Entity *)ML3DatabaseMetadata queryWithLibrary:v14 predicate:0];
      [v15 deleteAllEntitiesFromLibrary];

      v16 = [(ML3ImportOperation *)self import];
      v17 = [v16 library];
      v18 = [(ML3Entity *)ML3DatabaseMetadata newWithDictionary:v7 inLibrary:v17 cachedNameOrders:0];

      v12 = v18;
    }

    v19 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138543362;
      v27 = v7;
      _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "DBInfo values: %{public}@", &v26, 0xCu);
    }

    v20 = v12 != 0;
    if (v12)
    {
      if ([v7 count])
      {
        [v12 setValuesForPropertiesWithDictionary:v7];
      }

      v21 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v26 = 138543362;
      v27 = v12;
      v22 = "Updated dbInfo: %{public}@";
      v23 = v21;
      v24 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v21 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        goto LABEL_17;
      }

      v26 = 134217984;
      v27 = v9;
      v22 = "Could not update dbInfo: %lld";
      v23 = v21;
      v24 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_22D2FA000, v23, v24, v22, &v26, 0xCu);
    goto LABEL_16;
  }

  v20 = 0;
LABEL_17:

  return v20;
}

- (BOOL)_processDeleteTrackOperation:(id)a3 withImportSession:(void *)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:@"pid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    operator new();
  }

  v6 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    *v9 = v5;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "Got delete_track for with invalid pid: %{public}@", &v8, 0xCu);
  }

  return 0;
}

- (BOOL)_processUpdateTrackOperation:(id)a3 withImportSession:(void *)a4
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = a3;
  operator new();
}

- (BOOL)_processInsertTrackOperation:(id)a3 withImportSession:(void *)a4
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = a3;
  operator new();
}

- (BOOL)_processSyncOperation:(id)a3 withImportSession:(void *)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "_processSyncOperation %{public}@", &v13, 0xCu);
  }

  v8 = [v6 objectForKey:@"operation"];
  if ([v8 isEqualToString:@"insert_track"])
  {
    v9 = [(ML3ITunesSyncImportOperation *)self _processInsertTrackOperation:v6 withImportSession:a4];
LABEL_17:
    v10 = v9;
    goto LABEL_18;
  }

  if ([v8 isEqualToString:@"update_track"])
  {
    v9 = [(ML3ITunesSyncImportOperation *)self _processUpdateTrackOperation:v6 withImportSession:a4];
    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"delete_track"])
  {
    v9 = [(ML3ITunesSyncImportOperation *)self _processDeleteTrackOperation:v6 withImportSession:a4];
    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"insert_playlist"])
  {
    v9 = [(ML3ITunesSyncImportOperation *)self _processInsertPlaylistOperation:v6 withImportSession:a4];
    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"update_playlist"])
  {
    v9 = [(ML3ITunesSyncImportOperation *)self _processUpdatePlaylistOperation:v6 withImportSession:a4];
    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"delete_playlist"])
  {
    v9 = [(ML3ITunesSyncImportOperation *)self _processDeletePlaylistOperation:v6 withImportSession:a4];
    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"update_db_info"])
  {
    v9 = [(ML3ITunesSyncImportOperation *)self _processUpdateDBInfoOperation:v6 withImportSession:a4];
    goto LABEL_17;
  }

  v12 = _ML3LogCategoryDefault();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "got unhandled sync operation %{public}@", &v13, 0xCu);
  }

  v10 = 1;
LABEL_18:

  return v10;
}

- (id)_syncOperationsFromPlistFile:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:0];
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 objectForKey:@"operations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v6;
      v7 = v6;
      goto LABEL_13;
    }

    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v3;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "No operations in %{public}@", &v10, 0xCu);
    }
  }

  else
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v3;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Invalid sync plist at %{public}@", &v10, 0xCu);
    }
  }

  v7 = 0;
LABEL_13:

  return v7;
}

- (id)_syncPlistFilesFromDirectory:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CCAA00] defaultManager];
  v13 = v20 = 0;
  v5 = [v13 contentsOfDirectoryAtPath:v3 error:&v20];
  v14 = v5;
  v15 = v20;
  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v25 count:16];
    if (v7)
    {
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v3 stringByAppendingPathComponent:v10];
          if ([v10 hasPrefix:@"Sync_"] && objc_msgSend(v10, "hasSuffix:", @".plist"))
          {
            [v4 addObject:v11];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v25 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v22 = v3;
      v23 = 2114;
      v24 = v15;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Could not read %{public}@: %{public}@", buf, 0x16u);
    }
  }

  [v4 sortUsingSelector:sel_compare_];

  return v4;
}

- (BOOL)_performImportFromPlistFiles:(id)a3 withTransaction:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v12 = a4;
  v6 = [(ML3ImportOperation *)self import];
  v10 = [v6 library];

  v7 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v13;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "processing plist files: %{public}@", buf, 0xCu);
  }

  [v13 count];
  v8 = [v12 connection];
  ML3ImportSession::ML3ImportSession(buf, v11, v8, 3, 1);
}

void __77__ML3ITunesSyncImportOperation__performImportFromPlistFiles_withTransaction___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) currentRevision];
    v4 = [*(a1 + 40) import];
    v7 = [v4 syncAnchor];

    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:v3];
    [v5 setValue:v6 forDatabaseProperty:@"MLSyncClientLastSyncedRevision"];

    [*(a1 + 32) setValue:v7 forDatabaseProperty:@"MLSyncClientSyncAnchor"];
    [*(a1 + 32) setSyncGenerationID:ML3CreateIntegerUUID()];
  }
}

- (BOOL)_performImportOfTrackData:(id)a3 WithTransaction:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v26 = 0;
  v8 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v26];
  v21 = v26;
  if (!v8)
  {
    v12 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v28 = 138543362;
      v29 = v21;
      v13 = "failed to deserialize track data. err=%{public}@";
LABEL_18:
      _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, v13, v28, 0xCu);
    }

LABEL_19:
    v19 = 0;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    [(ML3ImportOperation *)self import];
    v10 = [objc_claimAutoreleasedReturnValue() library];
    v11 = [v7 connection];
    ML3ImportSession::ML3ImportSession(v28, v10, v11, 3, 1);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v28 = 138543362;
      v29 = v8;
      v13 = "unsupported import data. importData=%{public}@";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v8;
  v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v14)
  {
    v15 = *v23;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(ML3ITunesSyncImportOperation *)self _syncPlistFilesFromDirectory:*(*(&v22 + 1) + 8 * i)];
        v18 = [(ML3ITunesSyncImportOperation *)self _performImportFromPlistFiles:v17 withTransaction:v7];

        if (!v18)
        {
          v19 = 0;
          goto LABEL_21;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_21:

LABEL_22:
  return v19;
}

- (BOOL)_performImportWithTransaction:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ML3ImportOperation *)self import];
  self->_sagaIsEnabled = [v5 isSagaEnabled];

  v6 = [(ML3ImportOperation *)self import];
  self->_resetSync = [v6 isResetSync];

  v7 = [(ML3ImportOperation *)self import];
  v8 = [v7 library];
  v9 = [v8 databaseInfo];
  v10 = [v9 valueForProperty:@"primary_container_pid"];
  self->_devicePrimaryContainer = [v10 longLongValue];

  v11 = [(ML3ImportOperation *)self import];
  v12 = [v11 trackData];
  v13 = [v12 length];

  if (!v13)
  {
    if (MSVDeviceOSIsInternalInstall())
    {
      [(ML3ITunesSyncImportOperation *)self _archiveSyncPlistFiles];
    }

    v21 = [(ML3ITunesSyncImportOperation *)self _syncPlistFilesFromDirectory:@"/var/mobile/Media/iTunes_Control/Sync/Media/"];
    v22 = [(ML3ITunesSyncImportOperation *)self _performImportFromPlistFiles:v21 withTransaction:v4];

    if (v22)
    {
      goto LABEL_3;
    }

LABEL_7:
    v20 = 0;
    goto LABEL_8;
  }

  v14 = [(ML3ImportOperation *)self import];
  v15 = [v14 trackData];
  v16 = [(ML3ITunesSyncImportOperation *)self _performImportOfTrackData:v15 WithTransaction:v4];

  if (!v16)
  {
    goto LABEL_7;
  }

LABEL_3:
  v24 = @"modified_playlist_pids";
  v17 = [(NSMutableSet *)self->_importedPlaylists allObjects];
  v25[0] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v18 requiringSecureCoding:1 error:0];
  [(ML3ImportOperation *)self setReturnData:v19];

  v20 = 1;
LABEL_8:

  return v20;
}

- (void)main
{
  v27 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  cachedPIDToFilePathMap = self->_cachedPIDToFilePathMap;
  self->_cachedPIDToFilePathMap = v3;

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  cachedPIDToLocationPropertyMap = self->_cachedPIDToLocationPropertyMap;
  self->_cachedPIDToLocationPropertyMap = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  importedPlaylists = self->_importedPlaylists;
  self->_importedPlaylists = v7;

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v10 = v9;
  if (*(v18 + 24) == 1 && ([(ML3ITunesSyncImportOperation *)self isCancelled]& 1) == 0)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __36__ML3ITunesSyncImportOperation_main__block_invoke;
    v16[3] = &unk_278765F00;
    v16[4] = self;
    v16[5] = &v17;
    [(ML3ImportOperation *)self _writerTransactionWithBlock:v16];
  }

  v11 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(ML3ITunesSyncImportOperation *)self isCancelled];
    v13 = *(v18 + 24);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    *buf = 67109632;
    v22 = v12;
    v23 = 1024;
    v24 = v13;
    v25 = 2048;
    v26 = v14 - v10;
    _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "[ML3ITunesSyncImportOperation] import operation cancelled=%d success=%d. total time = %.2fs", buf, 0x18u);
  }

  if (*(v18 + 24) == 1)
  {
    v15 = [(ML3ITunesSyncImportOperation *)self isCancelled]^ 1;
  }

  else
  {
    v15 = 0;
  }

  [(ML3ImportOperation *)self setSuccess:v15];
  _Block_object_dispose(&v17, 8);
}

uint64_t __36__ML3ITunesSyncImportOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "[ML3ITunesSyncImportOperation] failed to start transaction. error=%{public}@", &v10, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    [*(a1 + 32) setError:v6];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _performImportWithTransaction:v5];
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v8 = [*(a1 + 32) isCancelled] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end