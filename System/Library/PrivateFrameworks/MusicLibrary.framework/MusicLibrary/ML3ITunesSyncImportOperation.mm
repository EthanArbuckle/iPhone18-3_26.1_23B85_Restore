@interface ML3ITunesSyncImportOperation
- (BOOL)_performImportFromPlistFiles:(id)files withTransaction:(id)transaction;
- (BOOL)_performImportOfTrackData:(id)data WithTransaction:(id)transaction;
- (BOOL)_performImportWithTransaction:(id)transaction;
- (BOOL)_processDeletePlaylistOperation:(id)operation withImportSession:(void *)session;
- (BOOL)_processDeleteTrackOperation:(id)operation withImportSession:(void *)session;
- (BOOL)_processInsertPlaylistOperation:(id)operation withImportSession:(void *)session;
- (BOOL)_processInsertTrackOperation:(id)operation withImportSession:(void *)session;
- (BOOL)_processSyncOperation:(id)operation withImportSession:(void *)session;
- (BOOL)_processUpdateDBInfoOperation:(id)operation withImportSession:(void *)session;
- (BOOL)_processUpdatePlaylistOperation:(id)operation withImportSession:(void *)session;
- (BOOL)_processUpdateTrackOperation:(id)operation withImportSession:(void *)session;
- (id)_dbInfoValuesForStep:(id)step;
- (id)_syncOperationsFromPlistFile:(id)file;
- (id)_syncPlistFilesFromDirectory:(id)directory;
- (void)_archiveSyncPlistFiles;
- (void)_processGeniusConfigPlist:(id)plist;
- (void)_recoverExistingAsset:(id)asset forTrackId:(int64_t)id;
- (void)main;
@end

@implementation ML3ITunesSyncImportOperation

- (void)_archiveSyncPlistFiles
{
  v56[3] = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
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
    [defaultManager removeItemAtURL:v41 error:0];
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
    v8 = [defaultManager enumeratorAtURL:v41 includingPropertiesForKeys:v7 options:4 errorHandler:0];

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
          lastPathComponent = [v13 lastPathComponent];
          v15 = [lastPathComponent isEqualToString:@"Reset"];

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
      allKeys = [v43 allKeys];
      v22 = [allKeys sortedArrayUsingComparator:&__block_literal_global_24606];

      for (j = 3; [v22 count] > j; ++j)
      {
        v24 = [v22 objectAtIndexedSubscript:j];
        v25 = [v43 objectForKeyedSubscript:v24];
        [defaultManager removeItemAtURL:v25 error:0];
      }
    }
  }

  [defaultManager createDirectoryAtURL:v41 withIntermediateDirectories:1 attributes:0 error:{0, v38}];
  if (*(&self->super.super.super.isa + v39))
  {
    v26 = @"Reset";
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    v26 = [date description];
  }

  v28 = [(__CFString *)v26 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  v29 = MEMORY[0x277CBEBC0];
  path = [v41 path];
  v53[0] = path;
  v53[1] = v28;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v32 = [v29 fileURLWithPathComponents:v31];

  date2 = [MEMORY[0x277CBEAA8] date];
  path2 = [v32 path];
  [defaultManager copyItemAtPath:@"/var/mobile/Media/iTunes_Control/Sync/Media/" toPath:path2 error:0];

  v35 = *MEMORY[0x277CCA150];
  v51[0] = *MEMORY[0x277CCA108];
  v51[1] = v35;
  v52[0] = date2;
  v52[1] = date2;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
  path3 = [v32 path];
  [defaultManager setAttributes:v36 ofItemAtPath:path3 error:0];
}

- (void)_processGeniusConfigPlist:(id)plist
{
  v43 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [plistCopy objectForKey:@"data"];
    v6 = v5;
    if (v5)
    {
      null = v5;
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v9 = null;

    v10 = [plistCopy objectForKey:@"default_num_results"];
    v11 = v10;
    if (v10)
    {
      null2 = v10;
    }

    else
    {
      null2 = [MEMORY[0x277CBEB68] null];
    }

    v13 = null2;

    v14 = [plistCopy objectForKey:@"min_num_results"];
    v15 = v14;
    if (v14)
    {
      null3 = v14;
    }

    else
    {
      null3 = [MEMORY[0x277CBEB68] null];
    }

    v17 = null3;

    v18 = [plistCopy objectForKey:@"version"];
    v19 = v18;
    if (v18)
    {
      null4 = v18;
    }

    else
    {
      null4 = [MEMORY[0x277CBEB68] null];
    }

    v21 = null4;

    *&buf = 0;
    *(&buf + 1) = &buf;
    v41 = 0x2020000000;
    v42 = 0;
    import = [(ML3ImportOperation *)self import];
    library = [import library];
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
    [library databaseConnectionAllowingWrites:1 withBlock:v32];

    LODWORD(v21) = *(*(&buf + 1) + 24);
    v26 = os_log_create("com.apple.amp.medialibrary", "Default");
    v27 = v26;
    if (v21 == 1)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 138543362;
        v39 = plistCopy;
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
      v39 = plistCopy;
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
    *(&buf + 4) = plistCopy;
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

- (id)_dbInfoValuesForStep:(id)step
{
  v26 = *MEMORY[0x277D85DE8];
  stepCopy = step;
  v5 = [stepCopy objectForKey:@"pid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setValue:v5 forKey:@"ROWID"];
    v7 = [stepCopy objectForKey:@"db_info"];
    v19[0] = @"audio_language";
    v19[1] = @"subtitle_language";
    v20[0] = @"audio_language";
    v20[1] = @"subtitle_language";
    v19[2] = @"genius_cuid";
    v20[2] = @"genius_cuid";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
    v9 = v7;
    v10 = dictionary;
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

- (void)_recoverExistingAsset:(id)asset forTrackId:(int64_t)id
{
  v27 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:assetCopy];
  if (([defaultManager fileExistsAtPath:v8] & 1) == 0)
  {
    import = [(ML3ImportOperation *)self import];
    library = [import library];
    v11 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:id];
    v12 = [(ML3Entity *)ML3Track anyInLibrary:library predicate:v11 options:7];

    if (v12)
    {
      absoluteFilePath = [v12 absoluteFilePath];
      v14 = [defaultManager fileExistsAtPath:absoluteFilePath];
      v15 = os_log_create("com.apple.amp.medialibrary", "Default");
      import2 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          idCopy3 = id;
          v23 = 2114;
          v24 = absoluteFilePath;
          v25 = 2114;
          v26 = v8;
          _os_log_impl(&dword_22D2FA000, import2, OS_LOG_TYPE_DEFAULT, "Asset path differs for pid %lld. ours=%{public}@, theirs=%{public}@", buf, 0x20u);
        }
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          idCopy3 = id;
          v23 = 2114;
          v24 = assetCopy;
          _os_log_impl(&dword_22D2FA000, import2, OS_LOG_TYPE_ERROR, "No longer have asset for pid %lld. filePath=%{public}@", buf, 0x16u);
        }

        import2 = [(ML3ImportOperation *)self import];
        library2 = [import2 library];
        v18 = [MEMORY[0x277CCABB0] numberWithLongLong:id];
        v20 = v18;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
        [ML3Track clearLocationFromLibrary:library2 persistentIDs:v19 disableKeepLocal:0];
      }
    }

    else
    {
      absoluteFilePath = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(absoluteFilePath, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        idCopy3 = id;
        _os_log_impl(&dword_22D2FA000, absoluteFilePath, OS_LOG_TYPE_ERROR, "recoverExistingAsset called with unknown track pid %lld", buf, 0xCu);
      }
    }
  }
}

- (BOOL)_processDeletePlaylistOperation:(id)operation withImportSession:(void *)session
{
  operationCopy = operation;
  if (!self->_sagaIsEnabled)
  {
    operator new();
  }

  return 1;
}

- (BOOL)_processUpdatePlaylistOperation:(id)operation withImportSession:(void *)session
{
  operationCopy = operation;
  if (!self->_sagaIsEnabled)
  {
    if (self->_devicePrimaryContainer)
    {
      v6 = [operationCopy objectForKey:@"pid"];
      [v6 longLongValue];
    }

    operator new();
  }

  return 1;
}

- (BOOL)_processInsertPlaylistOperation:(id)operation withImportSession:(void *)session
{
  operationCopy = operation;
  if (!self->_sagaIsEnabled)
  {
    if (self->_devicePrimaryContainer)
    {
      v5 = [(NSDictionary *)operationCopy objectForKey:@"pid"];
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

- (BOOL)_processUpdateDBInfoOperation:(id)operation withImportSession:(void *)session
{
  v28 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v6 = [(ML3ITunesSyncImportOperation *)self _dbInfoValuesForStep:operationCopy];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:@"ROWID"];
    longLongValue = [v8 longLongValue];
    import = [(ML3ImportOperation *)self import];
    library = [import library];
    databaseInfo = [library databaseInfo];

    if (![databaseInfo existsInLibrary] || objc_msgSend(databaseInfo, "persistentID") != longLongValue)
    {
      import2 = [(ML3ImportOperation *)self import];
      library2 = [import2 library];
      v15 = [(ML3Entity *)ML3DatabaseMetadata queryWithLibrary:library2 predicate:0];
      [v15 deleteAllEntitiesFromLibrary];

      import3 = [(ML3ImportOperation *)self import];
      library3 = [import3 library];
      v18 = [(ML3Entity *)ML3DatabaseMetadata newWithDictionary:v7 inLibrary:library3 cachedNameOrders:0];

      databaseInfo = v18;
    }

    v19 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138543362;
      v27 = v7;
      _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "DBInfo values: %{public}@", &v26, 0xCu);
    }

    v20 = databaseInfo != 0;
    if (databaseInfo)
    {
      if ([v7 count])
      {
        [databaseInfo setValuesForPropertiesWithDictionary:v7];
      }

      v21 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v26 = 138543362;
      v27 = databaseInfo;
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
      v27 = longLongValue;
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

- (BOOL)_processDeleteTrackOperation:(id)operation withImportSession:(void *)session
{
  v10 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v5 = [operationCopy objectForKey:@"pid"];
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

- (BOOL)_processUpdateTrackOperation:(id)operation withImportSession:(void *)session
{
  v6 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  operator new();
}

- (BOOL)_processInsertTrackOperation:(id)operation withImportSession:(void *)session
{
  v6 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  operator new();
}

- (BOOL)_processSyncOperation:(id)operation withImportSession:(void *)session
{
  v15 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v7 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = operationCopy;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "_processSyncOperation %{public}@", &v13, 0xCu);
  }

  v8 = [operationCopy objectForKey:@"operation"];
  if ([v8 isEqualToString:@"insert_track"])
  {
    v9 = [(ML3ITunesSyncImportOperation *)self _processInsertTrackOperation:operationCopy withImportSession:session];
LABEL_17:
    v10 = v9;
    goto LABEL_18;
  }

  if ([v8 isEqualToString:@"update_track"])
  {
    v9 = [(ML3ITunesSyncImportOperation *)self _processUpdateTrackOperation:operationCopy withImportSession:session];
    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"delete_track"])
  {
    v9 = [(ML3ITunesSyncImportOperation *)self _processDeleteTrackOperation:operationCopy withImportSession:session];
    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"insert_playlist"])
  {
    v9 = [(ML3ITunesSyncImportOperation *)self _processInsertPlaylistOperation:operationCopy withImportSession:session];
    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"update_playlist"])
  {
    v9 = [(ML3ITunesSyncImportOperation *)self _processUpdatePlaylistOperation:operationCopy withImportSession:session];
    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"delete_playlist"])
  {
    v9 = [(ML3ITunesSyncImportOperation *)self _processDeletePlaylistOperation:operationCopy withImportSession:session];
    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"update_db_info"])
  {
    v9 = [(ML3ITunesSyncImportOperation *)self _processUpdateDBInfoOperation:operationCopy withImportSession:session];
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

- (id)_syncOperationsFromPlistFile:(id)file
{
  v12 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:fileCopy];
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
      v11 = fileCopy;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "No operations in %{public}@", &v10, 0xCu);
    }
  }

  else
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = fileCopy;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Invalid sync plist at %{public}@", &v10, 0xCu);
    }
  }

  v7 = 0;
LABEL_13:

  return v7;
}

- (id)_syncPlistFilesFromDirectory:(id)directory
{
  v26 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  array = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CCAA00] defaultManager];
  v13 = v20 = 0;
  v5 = [v13 contentsOfDirectoryAtPath:directoryCopy error:&v20];
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
          v11 = [directoryCopy stringByAppendingPathComponent:v10];
          if ([v10 hasPrefix:@"Sync_"] && objc_msgSend(v10, "hasSuffix:", @".plist"))
          {
            [array addObject:v11];
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
      v22 = directoryCopy;
      v23 = 2114;
      v24 = v15;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Could not read %{public}@: %{public}@", buf, 0x16u);
    }
  }

  [array sortUsingSelector:sel_compare_];

  return array;
}

- (BOOL)_performImportFromPlistFiles:(id)files withTransaction:(id)transaction
{
  v16 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  transactionCopy = transaction;
  import = [(ML3ImportOperation *)self import];
  library = [import library];

  v7 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = filesCopy;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "processing plist files: %{public}@", buf, 0xCu);
  }

  [filesCopy count];
  connection = [transactionCopy connection];
  ML3ImportSession::ML3ImportSession(buf, v11, connection, 3, 1);
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

- (BOOL)_performImportOfTrackData:(id)data WithTransaction:(id)transaction
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  transactionCopy = transaction;
  v26 = 0;
  v8 = [MEMORY[0x277CCAC58] propertyListWithData:dataCopy options:0 format:0 error:&v26];
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
    library = [objc_claimAutoreleasedReturnValue() library];
    connection = [transactionCopy connection];
    ML3ImportSession::ML3ImportSession(v28, library, connection, 3, 1);
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
        v18 = [(ML3ITunesSyncImportOperation *)self _performImportFromPlistFiles:v17 withTransaction:transactionCopy];

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

- (BOOL)_performImportWithTransaction:(id)transaction
{
  v25[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  import = [(ML3ImportOperation *)self import];
  self->_sagaIsEnabled = [import isSagaEnabled];

  import2 = [(ML3ImportOperation *)self import];
  self->_resetSync = [import2 isResetSync];

  import3 = [(ML3ImportOperation *)self import];
  library = [import3 library];
  databaseInfo = [library databaseInfo];
  v10 = [databaseInfo valueForProperty:@"primary_container_pid"];
  self->_devicePrimaryContainer = [v10 longLongValue];

  import4 = [(ML3ImportOperation *)self import];
  trackData = [import4 trackData];
  v13 = [trackData length];

  if (!v13)
  {
    if (MSVDeviceOSIsInternalInstall())
    {
      [(ML3ITunesSyncImportOperation *)self _archiveSyncPlistFiles];
    }

    v21 = [(ML3ITunesSyncImportOperation *)self _syncPlistFilesFromDirectory:@"/var/mobile/Media/iTunes_Control/Sync/Media/"];
    v22 = [(ML3ITunesSyncImportOperation *)self _performImportFromPlistFiles:v21 withTransaction:transactionCopy];

    if (v22)
    {
      goto LABEL_3;
    }

LABEL_7:
    v20 = 0;
    goto LABEL_8;
  }

  import5 = [(ML3ImportOperation *)self import];
  trackData2 = [import5 trackData];
  v16 = [(ML3ITunesSyncImportOperation *)self _performImportOfTrackData:trackData2 WithTransaction:transactionCopy];

  if (!v16)
  {
    goto LABEL_7;
  }

LABEL_3:
  v24 = @"modified_playlist_pids";
  allObjects = [(NSMutableSet *)self->_importedPlaylists allObjects];
  v25[0] = allObjects;
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
    isCancelled = [(ML3ITunesSyncImportOperation *)self isCancelled];
    v13 = *(v18 + 24);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    *buf = 67109632;
    v22 = isCancelled;
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