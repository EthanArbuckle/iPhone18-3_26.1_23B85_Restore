@interface DOCSmartFolderDatabase
- (BOOL)_acquireBackgroundAssertionWithReason:(unint64_t)a3;
- (DOCSmartFolderDatabase)init;
- (DOCSmartFolderDatabase)initWithURL:(id)a3;
- (id)_createDatabaseIfNeededAtURL:(id)a3 error:(id *)a4;
- (id)_existingEventSimilarToEvent:(id)a3;
- (id)_existingFileNameHitsSimilarToHit:(id)a3;
- (id)_existingFiletypeHitSimilarToHit:(id)a3;
- (id)_openConnectionToDatabaseAtURL:(id)a3;
- (id)_setupDatabaseTablesIfNeeded:(id)a3 error:(id *)a4;
- (id)previousEventsForAppBundleIdentifier:(id)a3 excluding:(id)a4;
- (id)previousHits;
- (void)_cleanUpAfterClose;
- (void)_closeDatabaseOnItsQueue:(id)a3;
- (void)_registerHit:(id)a3;
- (void)_registerSavingFile:(id)a3 inFolder:(id)a4 atDate:(id)a5 withFrecencyScore:(double)a6 rowId:(id)a7;
- (void)_registerSavingFileType:(id)a3 inFolder:(id)a4 atDate:(id)a5 withFrecencyScore:(double)a6 rowId:(id)a7;
- (void)_relinquishBackgroundAssertionWithReason:(unint64_t)a3;
- (void)_resetDatabaseOnItsQueue:(id)a3;
- (void)_setUpDatabaseWatcher:(id)a3;
- (void)close;
- (void)deleteFolderWithIdentifier:(id)a3 appBundleIdentifier:(id)a4;
- (void)init;
- (void)logError:(id)a3 onDB:(id)a4 statement:(id)a5;
- (void)open;
- (void)purgeOldEntries;
- (void)registerEvent:(id)a3;
- (void)registerFilenameHit:(id)a3 fileTypeHit:(id)a4 smartScoreBlock:(id)a5;
@end

@implementation DOCSmartFolderDatabase

- (DOCSmartFolderDatabase)init
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.DocumentManager"];

  if (v4)
  {
    v5 = [v4 URLByAppendingPathComponent:@"smartfolders.db" isDirectory:0];
    v6 = MEMORY[0x1E699A468];
    v7 = *MEMORY[0x1E699A468];
    if (v5)
    {
      if (!v7)
      {
        DOCInitLogging();
        v7 = *v6;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [DOCSmartFolderDatabase init];
      }

      self = [(DOCSmartFolderDatabase *)self initWithURL:v5];
      v8 = self;
    }

    else
    {
      if (!v7)
      {
        DOCInitLogging();
        v7 = *v6;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [DOCSmartFolderDatabase init];
      }

      v8 = 0;
    }
  }

  else
  {
    v9 = MEMORY[0x1E699A468];
    v10 = *MEMORY[0x1E699A468];
    if (!*MEMORY[0x1E699A468])
    {
      DOCInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DOCSmartFolderDatabase init];
    }

    v8 = 0;
  }

  return v8;
}

- (DOCSmartFolderDatabase)initWithURL:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v18.receiver = self;
    v18.super_class = DOCSmartFolderDatabase;
    v6 = [(DOCSmartFolderDatabase *)&v18 init];
    if (v6)
    {
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);

      v9 = dispatch_queue_create("com.apple.DocumentManager.DOCSmartFolderManager.workingQueue", v8);
      workingQueue = v6->_workingQueue;
      v6->_workingQueue = v9;

      v11 = dispatch_time(0, 10000000000);
      v12 = v6->_workingQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__DOCSmartFolderDatabase_initWithURL___block_invoke;
      block[3] = &unk_1E87829A0;
      v13 = v6;
      v17 = v13;
      dispatch_after(v11, v12, block);
      objc_storeStrong(v13 + 1, a3);
    }

    self = v6;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)registerFilenameHit:(id)a3 fileTypeHit:(id)a4 smartScoreBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 type])
  {
    [DOCSmartFolderDatabase registerFilenameHit:fileTypeHit:smartScoreBlock:];
  }

  if ([v10 type] != 1)
  {
    [DOCSmartFolderDatabase registerFilenameHit:fileTypeHit:smartScoreBlock:];
  }

  workingQueue = self->_workingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__DOCSmartFolderDatabase_registerFilenameHit_fileTypeHit_smartScoreBlock___block_invoke;
  block[3] = &unk_1E8783360;
  v19 = v11;
  v20 = a2;
  block[4] = self;
  v17 = v9;
  v18 = v10;
  v13 = v10;
  v14 = v11;
  v15 = v9;
  dispatch_async(workingQueue, block);
}

void __74__DOCSmartFolderDatabase_registerFilenameHit_fileTypeHit_smartScoreBlock___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) connection];

  if (v3)
  {
    v4 = [*(a1 + 32) _existingFileNameHitsSimilarToHit:*(a1 + 40)];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = v5;
    v7 = 0;
    v8 = *v24;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = (*(*(a1 + 56) + 16))();
        if (v12 > v9)
        {
          v13 = v12;
          if (v12 > 0.6)
          {
            v14 = v11;

            v9 = v13;
            v7 = v14;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
    if (v7)
    {
      v15 = [*(a1 + 40) lastUsedDate];
      [v7 updateFrecencyAtDate:v15];

      [*(a1 + 32) _registerHit:v7];
    }

    else
    {
LABEL_14:
      [*(a1 + 32) _registerHit:*(a1 + 40)];
      v7 = 0;
    }

    v16 = [*(a1 + 32) _existingFiletypeHitSimilarToHit:*(a1 + 48)];
    if (v16)
    {
      v17 = [*(a1 + 48) lastUsedDate];
      [v16 updateFrecencyAtDate:v17];

      v18 = *(a1 + 32);
      v19 = v16;
    }

    else
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 48);
    }

    [v18 _registerHit:v19];

    goto LABEL_25;
  }

  v20 = MEMORY[0x1E699A468];
  v21 = *MEMORY[0x1E699A468];
  if (!*MEMORY[0x1E699A468])
  {
    DOCInitLogging();
    v21 = *v20;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    __74__DOCSmartFolderDatabase_registerFilenameHit_fileTypeHit_smartScoreBlock___block_invoke_cold_1();
  }

  v22 = [*v2 connection];

  if (!v22)
  {
    __74__DOCSmartFolderDatabase_registerFilenameHit_fileTypeHit_smartScoreBlock___block_invoke_cold_2();
    v4 = v27;
LABEL_25:
  }
}

- (void)_registerHit:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 == 1)
  {
    v6 = [v4 value];
    v7 = [v4 folderItem];
    v8 = [v4 lastUsedDate];
    [v4 frecency];
    v13 = v12;
    v11 = [v4 rowId];
    [(DOCSmartFolderDatabase *)self _registerSavingFileType:v6 inFolder:v7 atDate:v8 withFrecencyScore:v11 rowId:v13];
    goto LABEL_5;
  }

  if (!v5)
  {
    v6 = [v4 value];
    v7 = [v4 folderItem];
    v8 = [v4 lastUsedDate];
    [v4 frecency];
    v10 = v9;
    v11 = [v4 rowId];
    [(DOCSmartFolderDatabase *)self _registerSavingFile:v6 inFolder:v7 atDate:v8 withFrecencyScore:v11 rowId:v10];
LABEL_5:

    goto LABEL_10;
  }

  v14 = MEMORY[0x1E699A468];
  v15 = *MEMORY[0x1E699A468];
  if (!*MEMORY[0x1E699A468])
  {
    DOCInitLogging();
    v15 = *v14;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [DOCSmartFolderDatabase _registerHit:];
  }

LABEL_10:
}

- (id)_existingFileNameHitsSimilarToHit:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_workingQueue);
  v25 = [MEMORY[0x1E695DF70] array];
  v5 = [(DOCSmartFolderDatabase *)self connection];
  v24 = v4;
  v6 = [v4 folderItem];
  v7 = [v6 itemIdentifier];
  v8 = [v5 fetch:{@"SELECT rowid, fp_folder_id, fp_folder_item, file_name, last_hit_date, frecency_at_last_hit_date FROM filenames WHERE fp_folder_id = %@ ORDER BY last_hit_date DESC LIMIT 500", v7}];

  if ([v8 next])
  {
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [v8 numberAtIndex:0];
      v11 = [v8 stringAtIndex:1];
      v12 = [v8 dataAtIndex:2];
      v13 = [v8 stringAtIndex:3];
      v14 = [v8 dateAtIndex:4];
      [v8 doubleAtIndex:5];
      v16 = v15;
      v17 = MEMORY[0x1E696ACD0];
      v18 = [MEMORY[0x1E6967388] classForKeyedUnarchiver];
      v26 = 0;
      v19 = [v17 unarchivedObjectOfClass:v18 fromData:v12 error:&v26];
      v20 = v26;
      if (v20 || !v19)
      {
        v22 = *MEMORY[0x1E699A468];
        if (!*MEMORY[0x1E699A468])
        {
          DOCInitLogging();
          v22 = *MEMORY[0x1E699A468];
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v28 = v20;
          _os_log_error_impl(&dword_1E57D8000, v22, OS_LOG_TYPE_ERROR, "Could not unarchive FPItem: %@", buf, 0xCu);
        }
      }

      else
      {
        v21 = [[DOCSmartFolderHit alloc] initWithRowId:v10 folder:v19 type:0 value:v13 lastUsedDate:v14 frecency:v16];
        [v25 addObject:v21];
      }

      objc_autoreleasePoolPop(v9);
    }

    while (([v8 next] & 1) != 0);
  }

  return v25;
}

- (id)previousHits
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = [MEMORY[0x1E695DF70] array];
  workingQueue = self->_workingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__DOCSmartFolderDatabase_previousHits__block_invoke;
  block[3] = &unk_1E8783388;
  block[5] = &v8;
  block[6] = a2;
  block[4] = self;
  dispatch_sync(workingQueue, block);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __38__DOCSmartFolderDatabase_previousHits__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) connection];

  if (v2)
  {
    v42 = v1;
    v3 = [*v1 connection];
    v4 = [v3 fetch:{@"SELECT rowid, fp_folder_id, fp_folder_item, file_name, last_hit_date, frecency_at_last_hit_date FROM filenames ORDER BY last_hit_date DESC LIMIT 500"}];

    if ([v4 next])
    {
      *&v5 = 138412290;
      v41 = v5;
      do
      {
        v6 = objc_autoreleasePoolPush();
        v7 = [v4 numberAtIndex:0];
        v8 = [v4 stringAtIndex:1];
        v9 = [v4 dataAtIndex:2];
        v10 = [v4 stringAtIndex:3];
        v11 = [v4 dateAtIndex:4];
        [v4 doubleAtIndex:5];
        v13 = v12;
        v14 = MEMORY[0x1E696ACD0];
        v15 = [MEMORY[0x1E6967388] classForKeyedUnarchiver];
        v45 = 0;
        v16 = [v14 unarchivedObjectOfClass:v15 fromData:v9 error:&v45];
        v17 = v45;
        if (v17 || !v16)
        {
          v19 = *MEMORY[0x1E699A468];
          if (!*MEMORY[0x1E699A468])
          {
            DOCInitLogging();
            v19 = *MEMORY[0x1E699A468];
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = v41;
            v47 = v17;
            _os_log_error_impl(&dword_1E57D8000, v19, OS_LOG_TYPE_ERROR, "Could not unarchive FPItem: %@", buf, 0xCu);
          }
        }

        else
        {
          v18 = [[DOCSmartFolderHit alloc] initWithRowId:v7 folder:v16 type:0 value:v10 lastUsedDate:v11 frecency:v13];
          [*(*(*(a1 + 40) + 8) + 40) addObject:v18];
        }

        objc_autoreleasePoolPop(v6);
      }

      while (([v4 next] & 1) != 0);
    }

    v20 = [*v42 connection];
    v21 = [v20 fetch:{@"SELECT rowid, fp_folder_id, fp_folder_item, file_type, last_hit_date, frecency_at_last_hit_date FROM filetypes ORDER BY last_hit_date DESC LIMIT 500"}];

    if ([v21 next])
    {
      do
      {
        v22 = objc_autoreleasePoolPush();
        v23 = [v21 numberAtIndex:0];
        v24 = [v21 stringAtIndex:1];
        v25 = [v21 dataAtIndex:2];
        v26 = [v21 stringAtIndex:3];
        v27 = [v21 dateAtIndex:4];
        [v21 doubleAtIndex:5];
        v29 = v28;
        v30 = MEMORY[0x1E696ACD0];
        v31 = [MEMORY[0x1E6967388] classForKeyedUnarchiver];
        v44 = 0;
        v32 = [v30 unarchivedObjectOfClass:v31 fromData:v25 error:&v44];
        v33 = v44;
        if (v33 || !v32)
        {
          v35 = *MEMORY[0x1E699A468];
          if (!*MEMORY[0x1E699A468])
          {
            DOCInitLogging();
            v35 = *MEMORY[0x1E699A468];
          }

          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v47 = v33;
            _os_log_error_impl(&dword_1E57D8000, v35, OS_LOG_TYPE_ERROR, "Could not unarchive FPItem: %@", buf, 0xCu);
          }
        }

        else
        {
          v34 = [[DOCSmartFolderHit alloc] initWithRowId:v23 folder:v32 type:1 value:v26 lastUsedDate:v27 frecency:v29];
          [*(*(*(a1 + 40) + 8) + 40) addObject:v34];
        }

        objc_autoreleasePoolPop(v22);
      }

      while (([v21 next] & 1) != 0);
    }
  }

  else
  {
    v36 = MEMORY[0x1E699A468];
    v37 = *MEMORY[0x1E699A468];
    if (!*MEMORY[0x1E699A468])
    {
      DOCInitLogging();
      v37 = *v36;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      __38__DOCSmartFolderDatabase_previousHits__block_invoke_cold_1();
    }

    v38 = [*v1 connection];

    if (!v38)
    {
      __38__DOCSmartFolderDatabase_previousHits__block_invoke_cold_2();
    }

    v39 = [MEMORY[0x1E695E0F0] mutableCopy];
    v40 = *(*(a1 + 40) + 8);
    v21 = *(v40 + 40);
    *(v40 + 40) = v39;
  }
}

- (void)registerEvent:(id)a3
{
  v5 = a3;
  workingQueue = self->_workingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__DOCSmartFolderDatabase_registerEvent___block_invoke;
  block[3] = &unk_1E87833B0;
  block[4] = self;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  dispatch_async(workingQueue, block);
}

void __40__DOCSmartFolderDatabase_registerEvent___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) connection];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _existingEventSimilarToEvent:v4];
    if (v5)
    {
      v6 = [v4 lastUsedDate];
      [v5 updateFrecencyAtDate:v6];

      v7 = v5;
      v4 = v7;
    }

    v8 = MEMORY[0x1E696ACC8];
    v9 = [v4 folderItem];
    v36[0] = 0;
    v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v36];
    v11 = v36[0];

    if (v11 || !v10)
    {
      v24 = MEMORY[0x1E699A468];
      v25 = *MEMORY[0x1E699A468];
      if (!*MEMORY[0x1E699A468])
      {
        DOCInitLogging();
        v25 = *v24;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __40__DOCSmartFolderDatabase_registerEvent___block_invoke_cold_3();
      }

      goto LABEL_27;
    }

    v12 = [v4 rowId];

    v13 = [*v2 connection];
    if (v12)
    {
      v14 = [v4 lastUsedDate];
      v15 = MEMORY[0x1E696AD98];
      [v4 frecency];
      v16 = [v15 numberWithDouble:?];
      v17 = [v4 rowId];
      v18 = [v13 execute:{@"UPDATE hotfolders SET last_hit_date = %@, frecency_at_last_hit_date = %@ WHERE rowid = %@", v14, v16, v17}];

      if (v18)
      {
LABEL_8:
        v19 = MEMORY[0x1E699A468];
        v20 = *MEMORY[0x1E699A468];
        if (!*MEMORY[0x1E699A468])
        {
          DOCInitLogging();
          v20 = *v19;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __40__DOCSmartFolderDatabase_registerEvent___block_invoke_cold_2(v20, v4);
        }

LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      v35 = [v4 appBundleIdentifier];
      v34 = [v4 folderItem];
      v33 = [v34 itemIdentifier];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "type")}];
      v27 = [v4 lastUsedDate];
      v28 = MEMORY[0x1E696AD98];
      [v4 frecency];
      v29 = [v28 numberWithDouble:?];
      v32 = [v13 execute:{@"INSERT INTO hotfolders(app_bundle_id, fp_folder_id, fp_folder_item, event_type, last_hit_date, frecency_at_last_hit_date) VALUES (%@, %@, %@, %@, %@, %@)", v35, v33, v10, v26, v27, v29}];

      if (v32)
      {
        goto LABEL_8;
      }
    }

    v30 = MEMORY[0x1E699A468];
    v31 = *MEMORY[0x1E699A468];
    if (!*MEMORY[0x1E699A468])
    {
      DOCInitLogging();
      v31 = *v30;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      __40__DOCSmartFolderDatabase_registerEvent___block_invoke_cold_1(v31, v4, v2);
    }

    goto LABEL_27;
  }

  v21 = MEMORY[0x1E699A468];
  v22 = *MEMORY[0x1E699A468];
  if (!*MEMORY[0x1E699A468])
  {
    DOCInitLogging();
    v22 = *v21;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    __40__DOCSmartFolderDatabase_registerEvent___block_invoke_cold_4(a1, v22);
  }

  v23 = [*v2 connection];

  if (!v23)
  {
    __40__DOCSmartFolderDatabase_registerEvent___block_invoke_cold_5();
    v4 = v36[1];
LABEL_28:
  }
}

- (id)_existingEventSimilarToEvent:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_workingQueue);
  v5 = [(DOCSmartFolderDatabase *)self connection];
  v6 = [v4 appBundleIdentifier];
  v7 = [v4 folderItem];
  v8 = [v7 itemIdentifier];
  v28 = v4;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "type")}];
  v10 = [v5 fetch:{@"SELECT rowid, app_bundle_id, fp_folder_item, event_type, last_hit_date, frecency_at_last_hit_date FROM hotfolders WHERE app_bundle_id = %@ AND fp_folder_id = %@ AND event_type = %@ ORDER BY last_hit_date DESC LIMIT 500;", v6, v8, v9}];

  v29 = 0;
  do
  {
    if (![v10 next])
    {
      break;
    }

    v11 = objc_autoreleasePoolPush();
    v12 = [v10 numberAtIndex:0];
    v13 = [v10 stringAtIndex:1];
    v14 = [v10 dataAtIndex:2];
    v15 = [v10 unsignedIntegerAtIndex:3];
    v16 = [v10 dateAtIndex:4];
    [v10 doubleAtIndex:5];
    v18 = v17;
    v19 = MEMORY[0x1E696ACD0];
    v20 = [MEMORY[0x1E6967388] classForKeyedUnarchiver];
    v30 = 0;
    v21 = [v19 unarchivedObjectOfClass:v20 fromData:v14 error:&v30];
    v22 = v30;
    v23 = v22 || v21 == 0;
    v24 = v23;
    if (v23)
    {
      v25 = *MEMORY[0x1E699A468];
      if (!*MEMORY[0x1E699A468])
      {
        DOCInitLogging();
        v25 = *MEMORY[0x1E699A468];
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v22;
        _os_log_error_impl(&dword_1E57D8000, v25, OS_LOG_TYPE_ERROR, "Could not unarchive FPItem: %@", buf, 0xCu);
      }
    }

    else
    {
      v26 = [[DOCHotFolderEvent alloc] initWithRowId:v12 appBundleIdentifier:v13 folderItem:v21 type:v15 lastUsedDate:v16 frecency:v18];

      v29 = v26;
    }

    objc_autoreleasePoolPop(v11);
  }

  while (v24);

  return v29;
}

- (id)previousEventsForAppBundleIdentifier:(id)a3 excluding:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = [MEMORY[0x1E695DF70] array];
  workingQueue = self->_workingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__DOCSmartFolderDatabase_previousEventsForAppBundleIdentifier_excluding___block_invoke;
  block[3] = &unk_1E87833D8;
  v17 = &v19;
  v18 = a2;
  block[4] = self;
  v15 = v8;
  v16 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_sync(workingQueue, block);
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

void __73__DOCSmartFolderDatabase_previousEventsForAppBundleIdentifier_excluding___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) connection];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) connection];
    v6 = v5;
    if (v4)
    {
      v7 = [v5 fetch:{@"SELECT rowid, app_bundle_id, fp_folder_item, event_type, last_hit_date, frecency_at_last_hit_date FROM hotfolders WHERE app_bundle_id = %@ AND fp_folder_id <> %@ ORDER BY last_hit_date DESC LIMIT 500;", *(a1 + 48), *(a1 + 40)}];
    }

    else
    {
      v7 = [v5 fetch:{@"SELECT rowid, app_bundle_id, fp_folder_item, event_type, last_hit_date, frecency_at_last_hit_date FROM hotfolders WHERE app_bundle_id = %@ ORDER BY last_hit_date DESC LIMIT 500;", *(a1 + 48), v28}];
    }

    v13 = v7;

    if ([v13 next])
    {
      do
      {
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 numberAtIndex:0];
        v16 = [v13 stringAtIndex:1];
        v17 = [v13 dataAtIndex:2];
        v18 = [v13 unsignedIntegerAtIndex:3];
        v19 = [v13 dateAtIndex:4];
        [v13 doubleAtIndex:5];
        v21 = v20;
        v22 = MEMORY[0x1E696ACD0];
        v23 = [MEMORY[0x1E6967388] classForKeyedUnarchiver];
        v29 = 0;
        v24 = [v22 unarchivedObjectOfClass:v23 fromData:v17 error:&v29];
        v25 = v29;
        if (v25 || !v24)
        {
          v27 = *MEMORY[0x1E699A468];
          if (!*MEMORY[0x1E699A468])
          {
            DOCInitLogging();
            v27 = *MEMORY[0x1E699A468];
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v31 = v25;
            _os_log_error_impl(&dword_1E57D8000, v27, OS_LOG_TYPE_ERROR, "Could not unarchive FPItem: %@", buf, 0xCu);
          }
        }

        else
        {
          v26 = [[DOCHotFolderEvent alloc] initWithRowId:v15 appBundleIdentifier:*(a1 + 48) folderItem:v24 type:v18 lastUsedDate:v19 frecency:v21];
          [*(*(*(a1 + 56) + 8) + 40) addObject:v26];
        }

        objc_autoreleasePoolPop(v14);
      }

      while (([v13 next] & 1) != 0);
    }
  }

  else
  {
    v8 = MEMORY[0x1E699A468];
    v9 = *MEMORY[0x1E699A468];
    if (!*MEMORY[0x1E699A468])
    {
      DOCInitLogging();
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __73__DOCSmartFolderDatabase_previousEventsForAppBundleIdentifier_excluding___block_invoke_cold_1();
    }

    v10 = [*v2 connection];

    if (!v10)
    {
      __73__DOCSmartFolderDatabase_previousEventsForAppBundleIdentifier_excluding___block_invoke_cold_2();
    }

    v11 = [MEMORY[0x1E695E0F0] mutableCopy];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (void)deleteFolderWithIdentifier:(id)a3 appBundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  workingQueue = self->_workingQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__DOCSmartFolderDatabase_deleteFolderWithIdentifier_appBundleIdentifier___block_invoke;
  v12[3] = &unk_1E8783400;
  v12[4] = self;
  v13 = v8;
  v14 = v7;
  v15 = a2;
  v10 = v7;
  v11 = v8;
  dispatch_async(workingQueue, v12);
}

void __73__DOCSmartFolderDatabase_deleteFolderWithIdentifier_appBundleIdentifier___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) connection];

  if (v3)
  {
    v4 = [*(a1 + 32) connection];
    v6 = *(a1 + 48);
    v5 = (a1 + 48);
    v7 = [v4 execute:{@"DELETE FROM hotfolders WHERE app_bundle_id = %@ AND fp_folder_id = %@", *(v5 - 1), v6}];

    v8 = MEMORY[0x1E699A468];
    v9 = *MEMORY[0x1E699A468];
    if (v7)
    {
      if (!v9)
      {
        DOCInitLogging();
        v9 = *v8;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __73__DOCSmartFolderDatabase_deleteFolderWithIdentifier_appBundleIdentifier___block_invoke_cold_1();
      }
    }

    else
    {
      if (!v9)
      {
        DOCInitLogging();
        v9 = *v8;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v19 = *(v5 - 1);
        v20 = *v5;
        v21 = *v2;
        v22 = v9;
        v23 = [v21 connection];
        v24 = [v23 lastError];
        *buf = 138412802;
        v26 = v19;
        v27 = 2112;
        v28 = v20;
        v29 = 2112;
        v30 = v24;
        _os_log_error_impl(&dword_1E57D8000, v22, OS_LOG_TYPE_ERROR, "Could not delete hotfolders events for app %@ into folderID %@ : %@.", buf, 0x20u);
      }
    }

    v13 = [*v2 connection];
    v14 = [v13 execute:{@"DELETE FROM filenames WHERE fp_folder_id = %@", *v5}];

    v15 = *v8;
    if (v14)
    {
      if (!v15)
      {
        DOCInitLogging();
        v15 = *v8;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __73__DOCSmartFolderDatabase_deleteFolderWithIdentifier_appBundleIdentifier___block_invoke_cold_3();
      }
    }

    else
    {
      if (!v15)
      {
        DOCInitLogging();
        v15 = *v8;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __73__DOCSmartFolderDatabase_deleteFolderWithIdentifier_appBundleIdentifier___block_invoke_cold_2(v5, v2, v15);
      }
    }

    v16 = [*v2 connection];
    v17 = [v16 execute:{@"DELETE FROM filetypes WHERE fp_folder_id = %@", *v5}];

    v18 = *v8;
    if (v17)
    {
      if (!v18)
      {
        DOCInitLogging();
        v18 = *v8;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __73__DOCSmartFolderDatabase_deleteFolderWithIdentifier_appBundleIdentifier___block_invoke_cold_5();
      }
    }

    else
    {
      if (!v18)
      {
        DOCInitLogging();
        v18 = *v8;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __73__DOCSmartFolderDatabase_deleteFolderWithIdentifier_appBundleIdentifier___block_invoke_cold_4(v5, v2, v18);
      }
    }
  }

  else
  {
    v10 = MEMORY[0x1E699A468];
    v11 = *MEMORY[0x1E699A468];
    if (!*MEMORY[0x1E699A468])
    {
      DOCInitLogging();
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __73__DOCSmartFolderDatabase_deleteFolderWithIdentifier_appBundleIdentifier___block_invoke_cold_6();
    }

    v12 = [*v2 connection];

    if (!v12)
    {
      __73__DOCSmartFolderDatabase_deleteFolderWithIdentifier_appBundleIdentifier___block_invoke_cold_7();
    }
  }
}

- (void)purgeOldEntries
{
  workingQueue = self->_workingQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke;
  v3[3] = &unk_1E8783428;
  v3[4] = self;
  v3[5] = a2;
  dispatch_async(workingQueue, v3);
}

void __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) connection];

  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-7890000.0];
    v4 = [*v1 connection];
    v5 = [v4 execute:{@"DELETE FROM hotfolders WHERE last_hit_date < %@", v3}];

    v6 = MEMORY[0x1E699A468];
    v7 = *MEMORY[0x1E699A468];
    if (v5)
    {
      if (!v7)
      {
        DOCInitLogging();
        v7 = *v6;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke_cold_2();
      }
    }

    else
    {
      if (!v7)
      {
        DOCInitLogging();
        v7 = *v6;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke_cold_1(v1, v7);
      }
    }

    v11 = [*v1 connection];
    v12 = [v11 execute:{@"DELETE FROM filenames WHERE last_hit_date < %@", v3}];

    v13 = *v6;
    if (v12)
    {
      if (!v13)
      {
        DOCInitLogging();
        v13 = *v6;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke_cold_4();
      }
    }

    else
    {
      if (!v13)
      {
        DOCInitLogging();
        v13 = *v6;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke_cold_3(v1, v13);
      }
    }

    v14 = [*v1 connection];
    v15 = [v14 execute:{@"DELETE FROM filetypes WHERE last_hit_date < %@", v3}];

    v16 = *v6;
    if (v15)
    {
      if (!v16)
      {
        DOCInitLogging();
        v16 = *v6;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke_cold_6();
      }
    }

    else
    {
      if (!v16)
      {
        DOCInitLogging();
        v16 = *v6;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke_cold_5(v1, v16);
      }
    }

    goto LABEL_35;
  }

  v8 = MEMORY[0x1E699A468];
  v9 = *MEMORY[0x1E699A468];
  if (!*MEMORY[0x1E699A468])
  {
    DOCInitLogging();
    v9 = *v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke_cold_7();
  }

  v10 = [*v1 connection];

  if (!v10)
  {
    __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke_cold_8();
    v3 = v17;
LABEL_35:
  }
}

- (void)_registerSavingFile:(id)a3 inFolder:(id)a4 atDate:(id)a5 withFrecencyScore:(double)a6 rowId:(id)a7
{
  v50 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  dispatch_assert_queue_V2(self->_workingQueue);
  v39 = 0;
  v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v39];
  v17 = v39;
  if (v17 || !v16)
  {
    v26 = MEMORY[0x1E699A468];
    v27 = *MEMORY[0x1E699A468];
    if (!*MEMORY[0x1E699A468])
    {
      DOCInitLogging();
      v27 = *v26;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [DOCSmartFolderDatabase _registerSavingFile:inFolder:atDate:withFrecencyScore:rowId:];
    }
  }

  else
  {
    v38 = v12;
    v18 = [(DOCSmartFolderDatabase *)self connection];
    if (v15)
    {
      v19 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
      v20 = [v18 execute:{@"UPDATE filenames SET last_hit_date = %@, frecency_at_last_hit_date = %@ WHERE rowid = %@", v14, v19, v15}];

      if (v20)
      {
LABEL_5:
        v21 = MEMORY[0x1E699A468];
        v22 = *MEMORY[0x1E699A468];
        if (!*MEMORY[0x1E699A468])
        {
          DOCInitLogging();
          v22 = *v21;
        }

        v12 = v38;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = v22;
          v24 = [v13 itemIdentifier];
          v25 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
          *buf = 138413058;
          v41 = v38;
          v42 = 2112;
          v43 = v24;
          v44 = 2112;
          v45 = v14;
          v46 = 2112;
          v47 = v25;
          _os_log_debug_impl(&dword_1E57D8000, v23, OS_LOG_TYPE_DEBUG, "Successfully registered saving %@ into folderID %@ at date %@ with frecencyScore %@.", buf, 0x2Au);
        }

        goto LABEL_18;
      }
    }

    else
    {
      v28 = [v13 itemIdentifier];
      v29 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
      v30 = [v18 execute:{@"INSERT INTO filenames(fp_folder_id, fp_folder_item, file_name, last_hit_date, frecency_at_last_hit_date) VALUES (%@, %@, %@, %@, %@)", v28, v16, v38, v14, v29}];

      if (v30)
      {
        goto LABEL_5;
      }
    }

    v31 = MEMORY[0x1E699A468];
    v32 = *MEMORY[0x1E699A468];
    if (!*MEMORY[0x1E699A468])
    {
      DOCInitLogging();
      v32 = *v31;
    }

    v12 = v38;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = v32;
      v34 = [v13 itemIdentifier];
      v35 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
      v36 = [(DOCSmartFolderDatabase *)self connection];
      v37 = [v36 lastError];
      *buf = 138413314;
      v41 = v38;
      v42 = 2112;
      v43 = v34;
      v44 = 2112;
      v45 = v14;
      v46 = 2112;
      v47 = v35;
      v48 = 2112;
      v49 = v37;
      _os_log_error_impl(&dword_1E57D8000, v33, OS_LOG_TYPE_ERROR, "Could not register saving %@ into folderID %@ at date %@ with frecencyScore %@: %@.", buf, 0x34u);

      v12 = v38;
    }
  }

LABEL_18:
}

- (void)_registerSavingFileType:(id)a3 inFolder:(id)a4 atDate:(id)a5 withFrecencyScore:(double)a6 rowId:(id)a7
{
  v43 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v34 = 0;
  v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v34];
  v17 = v34;
  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16 == 0;
  }

  if (v18)
  {
    v19 = MEMORY[0x1E699A468];
    v20 = *MEMORY[0x1E699A468];
    if (!*MEMORY[0x1E699A468])
    {
      DOCInitLogging();
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [DOCSmartFolderDatabase _registerSavingFile:inFolder:atDate:withFrecencyScore:rowId:];
    }

    goto LABEL_20;
  }

  v21 = [(DOCSmartFolderDatabase *)self connection];
  if (v15)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
    v23 = [v21 execute:{@"UPDATE filetypes SET last_hit_date = %@, frecency_at_last_hit_date = %@ WHERE rowid = %@", v14, v22, v15}];

    if (v23)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v29 = [v13 itemIdentifier];
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
    v31 = [v21 execute:{@"INSERT INTO filetypes(fp_folder_id, fp_folder_item, file_type, last_hit_date, frecency_at_last_hit_date) VALUES (%@, %@, %@, %@, %@)", v29, v16, v12, v14, v30}];

    if (v31)
    {
LABEL_12:
      v24 = MEMORY[0x1E699A468];
      v25 = *MEMORY[0x1E699A468];
      if (!*MEMORY[0x1E699A468])
      {
        DOCInitLogging();
        v25 = *v24;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = v25;
        v27 = [v13 itemIdentifier];
        v28 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
        *buf = 138413058;
        v36 = v12;
        v37 = 2112;
        v38 = v27;
        v39 = 2112;
        v40 = v14;
        v41 = 2112;
        v42 = v28;
        _os_log_debug_impl(&dword_1E57D8000, v26, OS_LOG_TYPE_DEBUG, "Successfully registered saving %@ into folderID %@ at date %@ with frecencyScore %@.", buf, 0x2Au);
LABEL_22:

        goto LABEL_20;
      }

      goto LABEL_20;
    }
  }

  v32 = MEMORY[0x1E699A468];
  v33 = *MEMORY[0x1E699A468];
  if (!*MEMORY[0x1E699A468])
  {
    DOCInitLogging();
    v33 = *v32;
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v26 = v33;
    v27 = [v13 itemIdentifier];
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
    *buf = 138413058;
    v36 = v12;
    v37 = 2112;
    v38 = v27;
    v39 = 2112;
    v40 = v14;
    v41 = 2112;
    v42 = v28;
    _os_log_error_impl(&dword_1E57D8000, v26, OS_LOG_TYPE_ERROR, "Could not register saving %@ into folderID %@ at date %@ with frecencyScore %@.", buf, 0x2Au);
    goto LABEL_22;
  }

LABEL_20:
}

- (id)_existingFiletypeHitSimilarToHit:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(DOCSmartFolderDatabase *)self connection];
  v6 = [v4 folderItem];
  v7 = [v6 itemIdentifier];
  v26 = v4;
  v8 = [v4 value];
  v9 = [v5 fetch:{@"SELECT rowid, fp_folder_id, fp_folder_item, file_type, last_hit_date, frecency_at_last_hit_date FROM filetypes WHERE fp_folder_id = %@ AND file_type = %@ ORDER BY last_hit_date DESC LIMIT 500", v7, v8}];

  v27 = 0;
  do
  {
    if (![v9 next])
    {
      break;
    }

    context = objc_autoreleasePoolPush();
    v10 = [v9 numberAtIndex:0];
    v11 = [v9 stringAtIndex:1];
    v12 = [v9 dataAtIndex:2];
    v13 = [v9 stringAtIndex:3];
    v14 = [v9 dateAtIndex:4];
    [v9 doubleAtIndex:5];
    v16 = v15;
    v17 = MEMORY[0x1E696ACD0];
    v18 = [MEMORY[0x1E6967388] classForKeyedUnarchiver];
    v29 = 0;
    v19 = [v17 unarchivedObjectOfClass:v18 fromData:v12 error:&v29];
    v20 = v29;
    v21 = v20 || v19 == 0;
    v22 = v21;
    if (v21)
    {
      v23 = *MEMORY[0x1E699A468];
      if (!*MEMORY[0x1E699A468])
      {
        DOCInitLogging();
        v23 = *MEMORY[0x1E699A468];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v20;
        _os_log_error_impl(&dword_1E57D8000, v23, OS_LOG_TYPE_ERROR, "Could not unarchive FPItem: %@", buf, 0xCu);
      }
    }

    else
    {
      v24 = [[DOCSmartFolderHit alloc] initWithRowId:v10 folder:v19 type:1 value:v13 lastUsedDate:v14 frecency:v16];

      v27 = v24;
    }

    objc_autoreleasePoolPop(context);
  }

  while (v22);

  return v27;
}

- (void)open
{
  workingQueue = self->_workingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__DOCSmartFolderDatabase_open__block_invoke;
  block[3] = &unk_1E87829A0;
  block[4] = self;
  dispatch_async(workingQueue, block);
}

void __30__DOCSmartFolderDatabase_open__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(a1 + 32);
  if (v3[2])
  {
    v4 = MEMORY[0x1E699A468];
    v5 = *MEMORY[0x1E699A468];
    if (!*MEMORY[0x1E699A468])
    {
      DOCInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __30__DOCSmartFolderDatabase_open__block_invoke_cold_1();
    }

    v3 = *(a1 + 32);
  }

  v6 = [v3 _openConnectionToDatabaseAtURL:v3[1]];
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 16), v6);
  }

  objc_sync_exit(v2);
}

- (BOOL)_acquireBackgroundAssertionWithReason:(unint64_t)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v9 = [(DOCSmartFolderDatabase *)self batchingAssertion];
    v10 = [v9 isValid];

    if (v10)
    {
      v11 = MEMORY[0x1E699A468];
      v8 = *MEMORY[0x1E699A468];
      if (!*MEMORY[0x1E699A468])
      {
        DOCInitLogging();
        v8 = *v11;
      }

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      *buf = 138412290;
      v26 = @"Finishing SQL Batch";
      goto LABEL_13;
    }

    [(DOCSmartFolderDatabase *)self setBatchingAssertion:0];
    v13 = @"Finishing SQL Batch";
  }

  else if (a3)
  {
    v13 = 0;
  }

  else
  {
    v5 = [(DOCSmartFolderDatabase *)self openAssertion];
    v6 = [v5 isValid];

    if (v6)
    {
      v7 = MEMORY[0x1E699A468];
      v8 = *MEMORY[0x1E699A468];
      if (!*MEMORY[0x1E699A468])
      {
        DOCInitLogging();
        v8 = *v7;
      }

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      *buf = 138412290;
      v26 = @"Open SQL Connection";
LABEL_13:
      _os_log_impl(&dword_1E57D8000, v8, OS_LOG_TYPE_INFO, "already acquired background %@ assertion", buf, 0xCu);
      return 0;
    }

    [(DOCSmartFolderDatabase *)self setOpenAssertion:0];
    v13 = @"Open SQL Connection";
  }

  v14 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"FinishTaskNow"];
  v15 = objc_alloc(MEMORY[0x1E69C7548]);
  v16 = [MEMORY[0x1E69C7640] currentProcess];
  v24 = v14;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v18 = [v15 initWithExplanation:v13 target:v16 attributes:v17];

  v23 = 0;
  v12 = [v18 acquireWithError:&v23];
  v19 = v23;
  if (v12)
  {
    if (a3 == 1)
    {
      [(DOCSmartFolderDatabase *)self setBatchingAssertion:v18];
    }

    else if (!a3)
    {
      [(DOCSmartFolderDatabase *)self setOpenAssertion:v18];
    }
  }

  else
  {
    v20 = MEMORY[0x1E699A468];
    v21 = *MEMORY[0x1E699A468];
    if (!*MEMORY[0x1E699A468])
    {
      DOCInitLogging();
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [DOCSmartFolderDatabase _acquireBackgroundAssertionWithReason:];
    }
  }

  return v12;
}

- (void)_relinquishBackgroundAssertionWithReason:(unint64_t)a3
{
  if (a3 == 1)
  {
    v5 = [(DOCSmartFolderDatabase *)self batchingAssertion];
    [v5 invalidate];

    [(DOCSmartFolderDatabase *)self setBatchingAssertion:0];
  }

  else if (!a3)
  {
    v4 = [(DOCSmartFolderDatabase *)self openAssertion];
    [v4 invalidate];

    [(DOCSmartFolderDatabase *)self setOpenAssertion:0];
  }
}

- (id)_openConnectionToDatabaseAtURL:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_workingQueue);
  v5 = [(DOCSmartFolderDatabase *)self _acquireBackgroundAssertionWithReason:0];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __57__DOCSmartFolderDatabase__openConnectionToDatabaseAtURL___block_invoke;
  v46[3] = &unk_1E8783450;
  v47 = v5;
  v46[4] = self;
  v6 = MEMORY[0x1E692E2E0](v46);
  v45 = 0;
  v7 = [(DOCSmartFolderDatabase *)self _createDatabaseIfNeededAtURL:v4 error:&v45];
  v8 = v45;
  if (!v7)
  {
    v9 = MEMORY[0x1E699A468];
    v10 = *MEMORY[0x1E699A468];
    if (!*MEMORY[0x1E699A468])
    {
      DOCInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DOCSmartFolderDatabase _openConnectionToDatabaseAtURL:];
    }

    v11 = [v8 code];
    if (v11 > 0x1A || ((1 << v11) & 0x5000800) == 0)
    {
      goto LABEL_42;
    }

    v12 = *v9;
    if (!*v9)
    {
      DOCInitLogging();
      v12 = *v9;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DOCSmartFolderDatabase _openConnectionToDatabaseAtURL:];
    }

    v13 = [MEMORY[0x1E696AC08] defaultManager];
    v44 = 0;
    [v13 removeItemAtURL:v4 error:&v44];
    v14 = v44;

    if (v14)
    {
      v15 = *v9;
      if (!*v9)
      {
        DOCInitLogging();
        v15 = *v9;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [DOCSmartFolderDatabase _openConnectionToDatabaseAtURL:];
      }
    }

    v43 = v8;
    v7 = [(DOCSmartFolderDatabase *)self _createDatabaseIfNeededAtURL:v4 error:&v43];
    v16 = v43;

    v8 = v16;
    if (!v7)
    {
LABEL_42:
      v33 = *v9;
      if (!*v9)
      {
        DOCInitLogging();
        v33 = *v9;
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [DOCSmartFolderDatabase _openConnectionToDatabaseAtURL:];
      }

      goto LABEL_46;
    }
  }

  v17 = [v7 userVersion];
  v18 = [v17 unsignedIntegerValue];

  if (v18 == 5)
  {
    v19 = v8;
  }

  else
  {
    [v7 close:0];
    v20 = MEMORY[0x1E699A468];
    v21 = *MEMORY[0x1E699A468];
    if (!*MEMORY[0x1E699A468])
    {
      DOCInitLogging();
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E57D8000, v21, OS_LOG_TYPE_INFO, "Database changed during development, nuking it", buf, 2u);
    }

    if (unlink([(NSURL *)self->_url fileSystemRepresentation]) < 0)
    {
      v34 = *v20;
      if (!*v20)
      {
        DOCInitLogging();
        v34 = *v20;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [(DOCSmartFolderDatabase *)self _openConnectionToDatabaseAtURL:v34];
      }

      v6[2](v6);

      goto LABEL_52;
    }

    v41 = v8;
    v22 = [(DOCSmartFolderDatabase *)self _createDatabaseIfNeededAtURL:v4 error:&v41];
    v19 = v41;

    if (!v22)
    {
      v6[2](v6);
      v23 = 0;
      v8 = v19;
      goto LABEL_53;
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __57__DOCSmartFolderDatabase__openConnectionToDatabaseAtURL___block_invoke_171;
    v38[3] = &unk_1E8783478;
    v7 = v22;
    v39 = v7;
    v40 = v18;
    [v7 performWithFlags:10 action:v38];
  }

  v37 = v19;
  v23 = [(DOCSmartFolderDatabase *)self _setupDatabaseTablesIfNeeded:v7 error:&v37];
  v8 = v37;

  if (!v23)
  {
    v31 = MEMORY[0x1E699A468];
    v32 = *MEMORY[0x1E699A468];
    if (!*MEMORY[0x1E699A468])
    {
      DOCInitLogging();
      v32 = *v31;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [DOCSmartFolderDatabase _openConnectionToDatabaseAtURL:];
    }

LABEL_46:
    v6[2](v6);
LABEL_52:
    v23 = 0;
    goto LABEL_53;
  }

  v6[2](v6);
  [(DOCSmartFolderDatabase *)self _setUpDatabaseWatcher:v23];
  v24 = *MEMORY[0x1E695DB80];
  v36 = v8;
  v25 = [v4 setResourceValue:MEMORY[0x1E695E118] forKey:v24 error:&v36];
  v26 = v36;

  if ((v25 & 1) == 0)
  {
    v27 = MEMORY[0x1E699A468];
    v28 = *MEMORY[0x1E699A468];
    if (!*MEMORY[0x1E699A468])
    {
      DOCInitLogging();
      v28 = *v27;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [DOCSmartFolderDatabase _openConnectionToDatabaseAtURL:];
    }
  }

  v29 = MEMORY[0x1E699A468];
  v30 = *MEMORY[0x1E699A468];
  if (!*MEMORY[0x1E699A468])
  {
    DOCInitLogging();
    v30 = *v29;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E57D8000, v30, OS_LOG_TYPE_INFO, "SmartFolder Database opened and upgraded", buf, 2u);
  }

  v8 = v26;
LABEL_53:

  return v23;
}

uint64_t __57__DOCSmartFolderDatabase__openConnectionToDatabaseAtURL___block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) _relinquishBackgroundAssertionWithReason:0];
  }

  return result;
}

uint64_t __57__DOCSmartFolderDatabase__openConnectionToDatabaseAtURL___block_invoke_171(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = 0;
  v3 = doc_smartfolder_create_tables_initial(v2, &v8);
  v4 = v8;
  if (v3)
  {
    [*(a1 + 32) setUserVersion:5];
  }

  else
  {
    v5 = MEMORY[0x1E699A468];
    v6 = *MEMORY[0x1E699A468];
    if (!*MEMORY[0x1E699A468])
    {
      DOCInitLogging();
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __57__DOCSmartFolderDatabase__openConnectionToDatabaseAtURL___block_invoke_171_cold_1(a1, v6, v4);
    }
  }

  return v3;
}

- (id)_createDatabaseIfNeededAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E699A468];
  v8 = *MEMORY[0x1E699A468];
  if (!*MEMORY[0x1E699A468])
  {
    DOCInitLogging();
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DOCSmartFolderDatabase _createDatabaseIfNeededAtURL:error:];
  }

  if ([v6 checkResourceIsReachableAndReturnError:0])
  {
LABEL_9:
    v12 = objc_alloc_init(MEMORY[0x1E69E5930]);
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v25[3] = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __61__DOCSmartFolderDatabase__createDatabaseIfNeededAtURL_error___block_invoke;
    v24[3] = &unk_1E87834A0;
    v24[4] = self;
    v24[5] = v25;
    [v12 setSqliteErrorHandler:v24];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__DOCSmartFolderDatabase__createDatabaseIfNeededAtURL_error___block_invoke_2;
    v20[3] = &unk_1E8783388;
    v23 = a4;
    v9 = v12;
    v21 = v9;
    v22 = v25;
    v13 = MEMORY[0x1E692E2E0](v20);
    [v9 setLabel:@"SmartFolder Database"];
    if ([v9 openAtURL:v6 sharedCache:0 error:a4])
    {
      if ([v9 setupPragmas])
      {
        [v9 setSynchronousMode:1];
        v14 = [v9 lastError];

        if (!v14)
        {
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __61__DOCSmartFolderDatabase__createDatabaseIfNeededAtURL_error___block_invoke_179;
          v19[3] = &unk_1E87834C8;
          v19[4] = self;
          [v9 setSqliteErrorHandler:v19];
          v18 = *v7;
          if (!*v7)
          {
            DOCInitLogging();
            v18 = *v7;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [DOCSmartFolderDatabase _createDatabaseIfNeededAtURL:error:];
          }

          a4 = v9;
          goto LABEL_18;
        }
      }

      v13[2](v13);
    }

    else
    {
      v15 = *v7;
      if (!*v7)
      {
        DOCInitLogging();
        v15 = *v7;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [DOCSmartFolderDatabase _createDatabaseIfNeededAtURL:error:];
      }
    }

    [v9 close:0];
    a4 = 0;
LABEL_18:

    _Block_object_dispose(v25, 8);
    goto LABEL_19;
  }

  v9 = [v6 URLByDeletingLastPathComponent];
  if ([v9 checkResourceIsReachableAndReturnError:0] & 1) != 0 || (objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v9, 0, 0, a4), v10, (v11))
  {

    goto LABEL_9;
  }

  if (a4)
  {
    v17 = *v7;
    if (!*v7)
    {
      DOCInitLogging();
      v17 = *v7;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [DOCSmartFolderDatabase _createDatabaseIfNeededAtURL:error:];
    }

    a4 = 0;
  }

LABEL_19:

  return a4;
}

void __61__DOCSmartFolderDatabase__createDatabaseIfNeededAtURL_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  [v7 logError:v8 onDB:a2 statement:a3];
  v9 = [v8 code];

  *(*(*(a1 + 40) + 8) + 24) = v9;
}

void __61__DOCSmartFolderDatabase__createDatabaseIfNeededAtURL_error___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) lastError];
    if (v2)
    {
      v3 = v2;
      if (![v2 code])
      {
        v4 = MEMORY[0x1E696ABC0];
        v5 = [v3 domain];
        v6 = *(*(*(a1 + 40) + 8) + 24);
        v7 = [v3 userInfo];
        v8 = [v4 errorWithDomain:v5 code:v6 userInfo:v7];

        v3 = v8;
      }
    }

    else
    {
      v9 = MEMORY[0x1E699A468];
      v10 = *MEMORY[0x1E699A468];
      if (!*MEMORY[0x1E699A468])
      {
        DOCInitLogging();
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __61__DOCSmartFolderDatabase__createDatabaseIfNeededAtURL_error___block_invoke_2_cold_1();
      }

      v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E5948] code:*(*(*(a1 + 40) + 8) + 24) userInfo:0];
    }

    v11 = v3;
    **(a1 + 48) = v3;
  }
}

- (void)_setUpDatabaseWatcher:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_workingQueue);
  [v5 useSerialQueueWithTarget:self->_workingQueue];
  [v5 useBatchingWithDelay:500 changeCount:2.0];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __48__DOCSmartFolderDatabase__setUpDatabaseWatcher___block_invoke;
  v22[3] = &unk_1E87834F0;
  v22[4] = self;
  v22[5] = a2;
  [v5 setWillBeginBatchingHook:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __48__DOCSmartFolderDatabase__setUpDatabaseWatcher___block_invoke_184;
  v21[3] = &unk_1E8783518;
  v21[4] = self;
  [v5 setDidFinishBatchingHook:v21];
  watcher = self->_watcher;
  if (watcher)
  {
    dispatch_source_cancel(watcher);
    v7 = self->_watcher;
    self->_watcher = 0;
  }

  v8 = [v5 url];
  v9 = [v8 fileSystemRepresentation];

  LODWORD(v8) = open(v9, 32772);
  v10 = dispatch_source_create(MEMORY[0x1E69E9728], v8, 1uLL, 0);
  v11 = self->_watcher;
  self->_watcher = v10;

  objc_initWeak(&location, self);
  v12 = self->_watcher;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __48__DOCSmartFolderDatabase__setUpDatabaseWatcher___block_invoke_185;
  handler[3] = &unk_1E8783540;
  objc_copyWeak(&v19, &location);
  v18 = v5;
  v13 = v5;
  dispatch_source_set_event_handler(v12, handler);
  v14 = self->_watcher;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__DOCSmartFolderDatabase__setUpDatabaseWatcher___block_invoke_2;
  v15[3] = &__block_descriptor_36_e5_v8__0l;
  v16 = v8;
  dispatch_source_set_cancel_handler(v14, v15);
  dispatch_resume(self->_watcher);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __48__DOCSmartFolderDatabase__setUpDatabaseWatcher___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E699A468];
  v5 = *MEMORY[0x1E699A468];
  if (!*MEMORY[0x1E699A468])
  {
    DOCInitLogging();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __48__DOCSmartFolderDatabase__setUpDatabaseWatcher___block_invoke_cold_1();
  }

  v6 = [*(a1 + 32) batchingAssertion];

  if (v6)
  {
    __48__DOCSmartFolderDatabase__setUpDatabaseWatcher___block_invoke_cold_2();
  }

  [*(a1 + 32) _acquireBackgroundAssertionWithReason:1];
}

void __48__DOCSmartFolderDatabase__setUpDatabaseWatcher___block_invoke_184(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E699A468];
  v5 = *MEMORY[0x1E699A468];
  if (!*MEMORY[0x1E699A468])
  {
    DOCInitLogging();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __48__DOCSmartFolderDatabase__setUpDatabaseWatcher___block_invoke_184_cold_1();
  }

  [*(a1 + 32) _relinquishBackgroundAssertionWithReason:1];
}

void __48__DOCSmartFolderDatabase__setUpDatabaseWatcher___block_invoke_185(uint64_t a1)
{
  v2 = MEMORY[0x1E699A468];
  v3 = *MEMORY[0x1E699A468];
  if (!*MEMORY[0x1E699A468])
  {
    DOCInitLogging();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __48__DOCSmartFolderDatabase__setUpDatabaseWatcher___block_invoke_185_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[6];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__DOCSmartFolderDatabase__setUpDatabaseWatcher___block_invoke_186;
    v7[3] = &unk_1E8782320;
    v7[4] = WeakRetained;
    v8 = *(a1 + 32);
    dispatch_sync(v6, v7);
  }
}

- (id)_setupDatabaseTablesIfNeeded:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E699A468];
  v7 = *MEMORY[0x1E699A468];
  if (!*MEMORY[0x1E699A468])
  {
    DOCInitLogging();
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DOCSmartFolderDatabase _setupDatabaseTablesIfNeeded:error:];
  }

  v8 = [v5 userVersion];
  v9 = v8;
  if (v8)
  {
    if ([v8 unsignedIntValue])
    {
      v10 = *v6;
      if (!*v6)
      {
        DOCInitLogging();
        v10 = *v6;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [DOCSmartFolderDatabase _setupDatabaseTablesIfNeeded:error:];
      }

      v11 = 1;
    }

    else
    {
      v14 = *v6;
      if (!*v6)
      {
        DOCInitLogging();
        v14 = *v6;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        v27 = 0;
        v28 = 1024;
        v29 = 0;
        _os_log_debug_impl(&dword_1E57D8000, v14, OS_LOG_TYPE_DEBUG, "Migrating Smart Folder Database from version %d to %d", buf, 0xEu);
      }

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __61__DOCSmartFolderDatabase__setupDatabaseTablesIfNeeded_error___block_invoke;
      v24[3] = &__block_descriptor_44_e23_B16__0__PQLConnection_8l;
      v25 = 0;
      v24[4] = a4;
      v11 = [v5 performWithFlags:10 action:v24];
      v15 = [v5 userVersion];
      v16 = [v15 unsignedIntValue];

      if (v16 != 1)
      {
        v17 = *v6;
        if (!*v6)
        {
          DOCInitLogging();
          v17 = *v6;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = v17;
          v19 = [v5 userVersion];
          v20 = [v19 unsignedIntValue];
          *buf = 67109376;
          v27 = v20;
          v28 = 1024;
          v29 = 1;
          _os_log_impl(&dword_1E57D8000, v18, OS_LOG_TYPE_INFO, "Database is at version %u instead of %d", buf, 0xEu);
        }
      }
    }

    v21 = [v5 userVersion];
    v22 = [v21 unsignedIntValue];
    if (v11 && !v22)
    {
      [DOCSmartFolderDatabase _setupDatabaseTablesIfNeeded:error:];
    }

    if ((v11 & 1) == 0)
    {
      [v5 close:0];

      v5 = 0;
    }

    v5 = v5;
    v13 = v5;
  }

  else
  {
    if (a4)
    {
      *a4 = [v5 lastError];
    }

    v12 = *v6;
    if (!*v6)
    {
      DOCInitLogging();
      v12 = *v6;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DOCSmartFolderDatabase _setupDatabaseTablesIfNeeded:v12 error:?];
    }

    [v5 close:0];
    v13 = 0;
  }

  return v13;
}

uint64_t __61__DOCSmartFolderDatabase__setupDatabaseTablesIfNeeded_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = doc_smartfolder_create_tables_initial(a2, &v9);
  v4 = v9;
  if ((v3 & 1) == 0)
  {
    v5 = MEMORY[0x1E699A468];
    v6 = *MEMORY[0x1E699A468];
    if (!*MEMORY[0x1E699A468])
    {
      DOCInitLogging();
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__DOCSmartFolderDatabase__setupDatabaseTablesIfNeeded_error___block_invoke_cold_1();
    }

    if (*(a1 + 32))
    {
      v7 = v4;
      **(a1 + 32) = v4;
    }
  }

  return v3;
}

- (void)_cleanUpAfterClose
{
  watcher = self->_watcher;
  if (watcher)
  {
    dispatch_source_cancel(watcher);
    v4 = self->_watcher;
    self->_watcher = 0;
  }
}

- (void)_closeDatabaseOnItsQueue:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [(PQLConnection *)v4 close:&v10];
  v6 = v10;
  if ((v5 & 1) == 0)
  {
    v7 = MEMORY[0x1E699A468];
    v8 = *MEMORY[0x1E699A468];
    if (!*MEMORY[0x1E699A468])
    {
      DOCInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [DOCSmartFolderDatabase _closeDatabaseOnItsQueue:];
    }
  }

  connection = self->_connection;
  if (connection == v4)
  {
    self->_connection = 0;
  }
}

- (void)close
{
  workingQueue = self->_workingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__DOCSmartFolderDatabase_close__block_invoke;
  block[3] = &unk_1E87829A0;
  block[4] = self;
  dispatch_sync(workingQueue, block);
}

uint64_t __31__DOCSmartFolderDatabase_close__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 connection];
  [v2 _closeDatabaseOnItsQueue:v3];

  v4 = *(a1 + 32);

  return [v4 _cleanUpAfterClose];
}

- (void)_resetDatabaseOnItsQueue:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = MEMORY[0x1E699A468];
  v7 = *MEMORY[0x1E699A468];
  if (!*MEMORY[0x1E699A468])
  {
    DOCInitLogging();
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_1E57D8000, v7, OS_LOG_TYPE_INFO, "%@: Resetting the SmartFolder Database", buf, 0xCu);
  }

  [(DOCSmartFolderDatabase *)v5 _closeDatabaseOnItsQueue:v4];
  [(DOCSmartFolderDatabase *)v5 _cleanUpAfterClose];
  v8 = *v6;
  if (!*v6)
  {
    DOCInitLogging();
    v8 = *v6;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DOCSmartFolderDatabase _resetDatabaseOnItsQueue:];
  }

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  url = v5->_url;
  v16 = 0;
  v11 = [v9 removeItemAtURL:url error:&v16];
  v12 = v16;

  if ((v11 & 1) == 0)
  {
    v13 = *v6;
    if (!*v6)
    {
      DOCInitLogging();
      v13 = *v6;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [DOCSmartFolderDatabase _resetDatabaseOnItsQueue:];
    }
  }

  v14 = *v6;
  if (!*v6)
  {
    DOCInitLogging();
    v14 = *v6;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [DOCSmartFolderDatabase _resetDatabaseOnItsQueue:];
  }

  v15 = [(DOCSmartFolderDatabase *)v5 _openConnectionToDatabaseAtURL:v5->_url];

  if (v15)
  {
    objc_storeStrong(&v5->_connection, v15);
  }

  objc_sync_exit(v5);
}

- (void)logError:(id)a3 onDB:(id)a4 statement:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E699A468];
  v11 = *MEMORY[0x1E699A468];
  if (v9)
  {
    if (!v11)
    {
      DOCInitLogging();
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v7;
      _os_log_error_impl(&dword_1E57D8000, v11, OS_LOG_TYPE_ERROR, "Sqlite request %@ failed on %@ with error [%@]", &v12, 0x20u);
    }
  }

  else
  {
    if (!v11)
    {
      DOCInitLogging();
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [DOCSmartFolderDatabase logError:onDB:statement:];
    }
  }
}

- (void)init
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)registerFilenameHit:fileTypeHit:smartScoreBlock:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"DOCSmartFolderDatabase.m" lineNumber:255 description:@"bad type for file name hit"];
}

- (void)registerFilenameHit:fileTypeHit:smartScoreBlock:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"DOCSmartFolderDatabase.m" lineNumber:256 description:@"bad type for file type hit"];
}

void __74__DOCSmartFolderDatabase_registerFilenameHit_fileTypeHit_smartScoreBlock___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __74__DOCSmartFolderDatabase_registerFilenameHit_fileTypeHit_smartScoreBlock___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  *v0 = v4;
  return [v4 handleFailureInMethod:*(v3 + 64) object:*v1 file:@"DOCSmartFolderDatabase.m" lineNumber:262 description:@"nil db connection"];
}

- (void)_registerHit:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__DOCSmartFolderDatabase_previousHits__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__DOCSmartFolderDatabase_previousHits__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 48) object:*v0 file:@"DOCSmartFolderDatabase.m" lineNumber:353 description:@"nil db connection"];
}

void __40__DOCSmartFolderDatabase_registerEvent___block_invoke_cold_1(void *a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  v6 = a1;
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(a2, "type")}];
  v8 = [a2 appBundleIdentifier];
  v9 = [a2 folderItem];
  v10 = [v9 itemIdentifier];
  v11 = [a2 lastUsedDate];
  v12 = MEMORY[0x1E696AD98];
  [a2 frecency];
  v13 = [v12 numberWithDouble:?];
  v14 = [*(*a3 + 16) lastError];
  v17 = 138413570;
  v18 = v7;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_14();
  v19 = v11;
  v20 = v15;
  v21 = v13;
  v22 = v15;
  v23 = v16;
  _os_log_error_impl(&dword_1E57D8000, v6, OS_LOG_TYPE_ERROR, "Could not register event (%@) for app %@ into folderID %@ at date %@ with frecencyScore %@ : %@.", &v17, 0x3Eu);
}

void __40__DOCSmartFolderDatabase_registerEvent___block_invoke_cold_2(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(a2, "type")}];
  v6 = [a2 appBundleIdentifier];
  v7 = [a2 folderItem];
  v8 = [v7 itemIdentifier];
  v9 = [a2 lastUsedDate];
  v10 = MEMORY[0x1E696AD98];
  [a2 frecency];
  v11 = [v10 numberWithDouble:?];
  v14 = 138413314;
  v15 = v5;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_14();
  v16 = v9;
  v17 = v12;
  v18 = v13;
  _os_log_debug_impl(&dword_1E57D8000, v4, OS_LOG_TYPE_DEBUG, "Successfully registered event (%@) for app %@ into folderID %@ at date %@ with frecencyScore %@.", &v14, 0x34u);
}

void __40__DOCSmartFolderDatabase_registerEvent___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = [v0 folderItem];
  v4 = [v3 displayName];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_10_0(&dword_1E57D8000, v5, v6, "Can't archive folder (%@) to register hot folder event: %@.", v7, v8, v9, v10, v11);
}

void __40__DOCSmartFolderDatabase_registerEvent___block_invoke_cold_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_7() folderItem];
  v5 = [v4 displayName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

uint64_t __40__DOCSmartFolderDatabase_registerEvent___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  *v0 = v4;
  return [v4 handleFailureInMethod:*(v3 + 48) object:*v1 file:@"DOCSmartFolderDatabase.m" lineNumber:416 description:@"nil db connection"];
}

void __73__DOCSmartFolderDatabase_previousEventsForAppBundleIdentifier_excluding___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __73__DOCSmartFolderDatabase_previousEventsForAppBundleIdentifier_excluding___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 64) object:*v0 file:@"DOCSmartFolderDatabase.m" lineNumber:488 description:@"nil db connection"];
}

void __73__DOCSmartFolderDatabase_deleteFolderWithIdentifier_appBundleIdentifier___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7_0();
  v3 = v0;
  _os_log_debug_impl(&dword_1E57D8000, v1, OS_LOG_TYPE_DEBUG, "Successfully delete hotfolders events for app %@ into folderID %@.", v2, 0x16u);
}

void __73__DOCSmartFolderDatabase_deleteFolderWithIdentifier_appBundleIdentifier___block_invoke_cold_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [OUTLINED_FUNCTION_7() connection];
  v6 = [v5 lastError];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

void __73__DOCSmartFolderDatabase_deleteFolderWithIdentifier_appBundleIdentifier___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __73__DOCSmartFolderDatabase_deleteFolderWithIdentifier_appBundleIdentifier___block_invoke_cold_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [OUTLINED_FUNCTION_7() connection];
  v6 = [v5 lastError];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

void __73__DOCSmartFolderDatabase_deleteFolderWithIdentifier_appBundleIdentifier___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __73__DOCSmartFolderDatabase_deleteFolderWithIdentifier_appBundleIdentifier___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __73__DOCSmartFolderDatabase_deleteFolderWithIdentifier_appBundleIdentifier___block_invoke_cold_7()
{
  OUTLINED_FUNCTION_4();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 56) object:*v0 file:@"DOCSmartFolderDatabase.m" lineNumber:533 description:@"nil db connection"];
}

void __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_7() connection];
  v5 = [v4 lastError];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke_cold_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_7() connection];
  v5 = [v4 lastError];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke_cold_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_7() connection];
  v5 = [v4 lastError];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

void __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke_cold_6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke_cold_7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __41__DOCSmartFolderDatabase_purgeOldEntries__block_invoke_cold_8()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  *v0 = v4;
  return [v4 handleFailureInMethod:*(v3 + 40) object:*v1 file:@"DOCSmartFolderDatabase.m" lineNumber:567 description:@"nil db connection"];
}

- (void)_registerSavingFile:inFolder:atDate:withFrecencyScore:rowId:.cold.1()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = [v0 displayName];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_10_0(&dword_1E57D8000, v4, v5, "Can't archive folder (%@) to register hit: %@.", v6, v7, v8, v9, v10);
}

void __30__DOCSmartFolderDatabase_open__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_acquireBackgroundAssertionWithReason:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_openConnectionToDatabaseAtURL:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_openConnectionToDatabaseAtURL:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_openConnectionToDatabaseAtURL:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_openConnectionToDatabaseAtURL:(uint64_t)a1 .cold.4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_7() url];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

- (void)_openConnectionToDatabaseAtURL:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_openConnectionToDatabaseAtURL:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_openConnectionToDatabaseAtURL:.cold.7()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __57__DOCSmartFolderDatabase__openConnectionToDatabaseAtURL___block_invoke_171_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v4 numberWithUnsignedLong:v5];
  OUTLINED_FUNCTION_0_2();
  v9 = a3;
  _os_log_error_impl(&dword_1E57D8000, v6, OS_LOG_TYPE_ERROR, "Can't recreate tables after nuking version %@: %@", v8, 0x16u);
}

- (void)_createDatabaseIfNeededAtURL:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_createDatabaseIfNeededAtURL:error:.cold.2()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_createDatabaseIfNeededAtURL:error:.cold.3()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_createDatabaseIfNeededAtURL:error:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __61__DOCSmartFolderDatabase__createDatabaseIfNeededAtURL_error___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__DOCSmartFolderDatabase__setUpDatabaseWatcher___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __48__DOCSmartFolderDatabase__setUpDatabaseWatcher___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 40) object:*v0 file:@"DOCSmartFolderDatabase.m" lineNumber:933 description:{@"Trying to acquire an assertion, but we already have one"}];
}

void __48__DOCSmartFolderDatabase__setUpDatabaseWatcher___block_invoke_184_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __48__DOCSmartFolderDatabase__setUpDatabaseWatcher___block_invoke_185_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setupDatabaseTablesIfNeeded:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_setupDatabaseTablesIfNeeded:(void *)a1 error:.cold.4(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() lastError];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_closeDatabaseOnItsQueue:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_resetDatabaseOnItsQueue:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_resetDatabaseOnItsQueue:.cold.2()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_resetDatabaseOnItsQueue:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)logError:onDB:statement:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end