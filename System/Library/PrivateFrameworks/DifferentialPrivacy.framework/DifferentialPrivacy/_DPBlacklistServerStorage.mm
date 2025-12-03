@interface _DPBlacklistServerStorage
- (BOOL)prepareRuntimeBlacklistFolder:(id *)folder;
- (BOOL)requestLatestBlacklistsSynchronously:(id *)synchronously error:(id *)error lastRecordModifiedAt:(id *)at;
- (BOOL)updateRuntimeBlacklistsFromServer;
- (NSDate)lastUpdateDate;
- (OS_xpc_object)activity;
- (_DPBlacklistServerStorage)init;
- (_DPBlacklistServerStorage)initWithCustomStorePath:(id)path;
- (id)_blacklistURLByKeyFrom:(id)from;
- (id)_predicateForFetchQuery;
- (id)_publicDatabaseForBlacklists;
- (id)_queryOperationFromCursor:(id)cursor;
- (id)saveBlacklistsToRuntimeFolder:(id)folder;
- (void)_attributeQueryOperation:(id)operation;
- (void)_executeQueryOperation:(id)operation onOperationQueue:(id)queue onCompletion:(id)completion;
- (void)_requestLatestBlacklists:(id)blacklists;
- (void)scheduleMaintenanceWithName:(id)name database:(id)database;
- (void)setLastUpdateDate:(id)date;
- (void)updateRuntimeBlacklistsFromServer;
@end

@implementation _DPBlacklistServerStorage

- (_DPBlacklistServerStorage)init
{
  v3 = +[_DPStrings runtimeBlacklistDirectoryPath];
  v4 = [(_DPBlacklistServerStorage *)self initWithCustomStorePath:v3];

  return v4;
}

- (_DPBlacklistServerStorage)initWithCustomStorePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = _DPBlacklistServerStorage;
  v6 = [(_DPBlacklistServerStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storePath, path);
  }

  return v7;
}

- (BOOL)updateRuntimeBlacklistsFromServer
{
  v44 = *MEMORY[0x277D85DE8];
  if (+[_DPDeviceInfo isDataCollectionEnabled])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    context = objc_autoreleasePoolPush();
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v5 = [(_DPBlacklistServerStorage *)selfCopy requestLatestBlacklistsSynchronously:&v37 error:&v36 lastRecordModifiedAt:&v35];
    v6 = v37;
    v7 = v36;
    v8 = v35;
    if (v5)
    {
      v9 = +[_DPLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [v6 count];
        *buf = 138412546;
        v41 = v11;
        v42 = 2048;
        v43 = v12;
        _os_log_impl(&dword_22622D000, v9, OS_LOG_TYPE_INFO, "%@: request for new blacklist files is completed (updated blacklists count: %lu)", buf, 0x16u);
      }

      v34 = 0;
      v13 = [(_DPBlacklistServerStorage *)selfCopy prepareRuntimeBlacklistFolder:&v34];
      v14 = v34;
      if (v13)
      {
        v15 = +[_DPLog framework];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          *buf = 138412290;
          v41 = v17;
          _os_log_impl(&dword_22622D000, v15, OS_LOG_TYPE_INFO, "%@: Runtime Blacklists Folder is ready", buf, 0xCu);
        }

        v18 = [(_DPBlacklistServerStorage *)selfCopy saveBlacklistsToRuntimeFolder:v6];
        v19 = +[_DPLog framework];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v22 = [v18 count];
          *buf = 138412546;
          v41 = v21;
          v42 = 2048;
          v43 = v22;
          _os_log_impl(&dword_22622D000, v19, OS_LOG_TYPE_INFO, "%@: Blacklists saved to Runtime Folder, count: %lu", buf, 0x16u);
        }

        if ([v18 count])
        {
          v23 = +[_DPLog framework];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            [(_DPBlacklistServerStorage *)v25 updateRuntimeBlacklistsFromServer];
          }

          [_DPBlacklist removeBlackListsForKeys:v18];
          [(_DPBlacklistServerStorage *)selfCopy setLastUpdateDate:v8];
        }

        v26 = +[_DPLog framework];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          *v38 = 138412290;
          v39 = v28;
          _os_log_impl(&dword_22622D000, v26, OS_LOG_TYPE_INFO, "%@: blacklist files update from server is finished", v38, 0xCu);
        }
      }

      else
      {
        v18 = +[_DPLog daemon];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v30 = objc_opt_class();
          NSStringFromClass(v30);
          objc_claimAutoreleasedReturnValue();
          [_DPBlacklistServerStorage updateRuntimeBlacklistsFromServer];
        }
      }
    }

    else
    {
      v14 = +[_DPLog daemon];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        NSStringFromClass(v29);
        objc_claimAutoreleasedReturnValue();
        [_DPBlacklistServerStorage updateRuntimeBlacklistsFromServer];
      }

      v13 = 0;
    }

    objc_autoreleasePoolPop(context);
    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = +[_DPLog daemon];
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(_DPBlacklistServerStorage *)a2 updateRuntimeBlacklistsFromServer];
    }

    v13 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)requestLatestBlacklistsSynchronously:(id *)synchronously error:(id *)error lastRecordModifiedAt:(id *)at
{
  v55 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v8 = dispatch_semaphore_create(0);
  v9 = +[_DPLog framework];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138412290;
    v54 = v11;
    _os_log_impl(&dword_22622D000, v9, OS_LOG_TYPE_INFO, "%@: requesting new blacklist files from server", buf, 0xCu);
  }

  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __93___DPBlacklistServerStorage_requestLatestBlacklistsSynchronously_error_lastRecordModifiedAt___block_invoke;
  v24 = &unk_27858AAC8;
  selfCopy = self;
  v27 = &v47;
  v28 = &v41;
  v29 = &v35;
  v30 = &v31;
  v12 = v8;
  v26 = v12;
  [(_DPBlacklistServerStorage *)self _requestLatestBlacklists:&v21];
  v13 = dispatch_time(0, 600000000000);
  dispatch_semaphore_wait(v12, v13);
  if (v32[3])
  {
    if (!v48[5])
    {
      *synchronously = v42[5];
      *at = v36[5];
      v18 = 1;
      goto LABEL_11;
    }

    v14 = [_DPLog daemon:v21];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      NSStringFromClass(v15);
      objc_claimAutoreleasedReturnValue();
      [_DPBlacklistServerStorage requestLatestBlacklistsSynchronously:error:lastRecordModifiedAt:];
    }
  }

  else
  {
    v14 = [_DPLog daemon:v21];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [_DPBlacklistServerStorage requestLatestBlacklistsSynchronously:v17 error:buf lastRecordModifiedAt:v14];
    }
  }

  v18 = 0;
LABEL_11:

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)prepareRuntimeBlacklistFolder:(id *)folder
{
  storePath = [(_DPBlacklistServerStorage *)self storePath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(folder) = [defaultManager createDirectoryAtPath:storePath withIntermediateDirectories:1 attributes:0 error:folder];

  return folder;
}

- (id)saveBlacklistsToRuntimeFolder:(id)folder
{
  v38 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  storePath = [(_DPBlacklistServerStorage *)self storePath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v25 = [MEMORY[0x277CBEBF8] mutableCopy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = folderCopy;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v26 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v6 objectForKeyedSubscript:v10];
        v12 = MEMORY[0x277CBEBC0];
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.blacklist", v10];
        v14 = [storePath stringByAppendingPathComponent:v13];
        v15 = [v12 fileURLWithPath:v14 isDirectory:0];

        [defaultManager removeItemAtURL:v15 error:0];
        v28 = 0;
        LOBYTE(v14) = [defaultManager moveItemAtURL:v11 toURL:v15 error:&v28];
        v16 = v28;
        v17 = +[_DPLog framework];
        v18 = v17;
        if (v14)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            *buf = 138412546;
            v34 = v20;
            v35 = 2112;
            v36 = v10;
            _os_log_debug_impl(&dword_22622D000, v18, OS_LOG_TYPE_DEBUG, "%@: blacklist for key '%@' successfully moved to runtime directory", buf, 0x16u);
          }

          [v25 addObject:v10];
        }

        else
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            *buf = 138412546;
            v34 = v22;
            v35 = 2112;
            v36 = v16;
            _os_log_error_impl(&dword_22622D000, v18, OS_LOG_TYPE_ERROR, "%@: Unable to move new blacklist file to runtime directory: %@", buf, 0x16u);
          }
        }

        [defaultManager removeItemAtURL:v11 error:0];
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v8);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)scheduleMaintenanceWithName:(id)name database:(id)database
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66___DPBlacklistServerStorage_scheduleMaintenanceWithName_database___block_invoke;
  v7[3] = &unk_27858A930;
  v7[4] = self;
  nameCopy = name;
  v5 = MEMORY[0x22AA7A8C0](v7);
  v6 = [_DPPeriodicTask taskWithName:nameCopy period:kSecondsIn24Hours handler:v5 networkingRequired:1];

  [_DPPeriodicTaskManager registerTask:v6];
}

- (NSDate)lastUpdateDate
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"kLastUpdateDateKey"];

  return v3;
}

- (void)setLastUpdateDate:(id)date
{
  v3 = MEMORY[0x277CBEBD0];
  dateCopy = date;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults setObject:dateCopy forKey:@"kLastUpdateDateKey"];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 synchronize];
}

- (void)_requestLatestBlacklists:(id)blacklists
{
  blacklistsCopy = blacklists;
  v5 = objc_alloc(MEMORY[0x277CBC578]);
  _predicateForFetchQuery = [(_DPBlacklistServerStorage *)self _predicateForFetchQuery];
  v7 = [v5 initWithRecordType:@"BlacklistRecord" predicate:_predicateForFetchQuery];

  v8 = [objc_alloc(MEMORY[0x277CBC590]) initWithQuery:v7];
  [(_DPBlacklistServerStorage *)self _attributeQueryOperation:v8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy_;
  v23[4] = __Block_byref_object_dispose_;
  v24 = [MEMORY[0x277CBEBF8] mutableCopy];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__30;
  v21 = __Block_byref_object_dispose__31;
  v22 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54___DPBlacklistServerStorage__requestLatestBlacklists___block_invoke;
  v12[3] = &unk_27858AB10;
  v12[4] = self;
  v9 = blacklistsCopy;
  v13 = v9;
  v14 = &v17;
  v15 = v23;
  v16 = &v25;
  v10 = MEMORY[0x22AA7A8C0](v12);
  v11 = v18[5];
  v18[5] = v10;

  [(_DPBlacklistServerStorage *)self _executeQueryOperation:v8 onOperationQueue:v26[5] onCompletion:v18[5]];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v25, 8);
}

- (void)_executeQueryOperation:(id)operation onOperationQueue:(id)queue onCompletion:(id)completion
{
  operationCopy = operation;
  queueCopy = queue;
  completionCopy = completion;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy_;
  v19[4] = __Block_byref_object_dispose_;
  v20 = [MEMORY[0x277CBEBF8] mutableCopy];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82___DPBlacklistServerStorage__executeQueryOperation_onOperationQueue_onCompletion___block_invoke;
  v18[3] = &unk_27858AB38;
  v18[4] = self;
  v18[5] = v19;
  [operationCopy setRecordMatchedBlock:v18];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __82___DPBlacklistServerStorage__executeQueryOperation_onOperationQueue_onCompletion___block_invoke_36;
  v15 = &unk_27858AB60;
  v11 = completionCopy;
  v16 = v11;
  v17 = v19;
  [operationCopy setQueryCompletionBlock:&v12];
  [queueCopy addOperation:{operationCopy, v12, v13, v14, v15}];

  _Block_object_dispose(v19, 8);
}

- (id)_queryOperationFromCursor:(id)cursor
{
  v4 = MEMORY[0x277CBC590];
  cursorCopy = cursor;
  v6 = [[v4 alloc] initWithCursor:cursorCopy];

  [(_DPBlacklistServerStorage *)self _attributeQueryOperation:v6];

  return v6;
}

- (void)_attributeQueryOperation:(id)operation
{
  operationCopy = operation;
  v9 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained(&self->_activity);
  [v9 setXpcActivity:WeakRetained];

  [v9 setPreferAnonymousRequests:1];
  [v9 setDiscretionaryNetworkBehavior:0];
  [operationCopy setConfiguration:v9];
  defaultRecordZone = [MEMORY[0x277CBC5E8] defaultRecordZone];
  zoneID = [defaultRecordZone zoneID];
  [operationCopy setZoneID:zoneID];

  _publicDatabaseForBlacklists = [(_DPBlacklistServerStorage *)self _publicDatabaseForBlacklists];
  [operationCopy setDatabase:_publicDatabaseForBlacklists];
}

- (id)_blacklistURLByKeyFrom:(id)from
{
  v34 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v22 = [MEMORY[0x277CBEC10] mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = fromCopy;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    *&v6 = 138412802;
    v20 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"key", v20}];
        v12 = [v10 objectForKeyedSubscript:@"blacklistAsset"];
        fileURL = [v12 fileURL];
        v14 = fileURL;
        if (v11)
        {
          v15 = fileURL == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          v16 = +[_DPLog daemon];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = objc_opt_class();
            v21 = NSStringFromClass(v17);
            *buf = v20;
            v28 = v21;
            v29 = 2112;
            v30 = v11;
            v31 = 2112;
            v32 = v12;
            _os_log_error_impl(&dword_22622D000, v16, OS_LOG_TYPE_ERROR, "%@: Received wrong blacklist record from server: (key: %@, asset: %@)", buf, 0x20u);
          }
        }

        else
        {
          [v22 setObject:fileURL forKey:v11];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_publicDatabaseForBlacklists
{
  v2 = [MEMORY[0x277CBC218] containerWithIdentifier:@"com.apple.DPBlacklist"];
  publicCloudDatabase = [v2 publicCloudDatabase];

  return publicCloudDatabase;
}

- (id)_predicateForFetchQuery
{
  lastUpdateDate = [(_DPBlacklistServerStorage *)self lastUpdateDate];
  if (lastUpdateDate)
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"modificationDate > %@", lastUpdateDate];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithValue:1];
  }
  v3 = ;

  return v3;
}

- (OS_xpc_object)activity
{
  WeakRetained = objc_loadWeakRetained(&self->_activity);

  return WeakRetained;
}

- (void)updateRuntimeBlacklistsFromServer
{
  *buf = 138412290;
  *(buf + 4) = self;
  _os_log_debug_impl(&dword_22622D000, log, OS_LOG_TYPE_DEBUG, "%@: there are new blacklist files in runtime folder - resetting affected blacklists", buf, 0xCu);
}

- (void)requestLatestBlacklistsSynchronously:(void *)a1 error:(uint8_t *)buf lastRecordModifiedAt:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = 600;
  _os_log_error_impl(&dword_22622D000, log, OS_LOG_TYPE_ERROR, "%@: Request to server was timed out (timeout in seconds: %lld)", buf, 0x16u);
}

- (void)requestLatestBlacklistsSynchronously:error:lastRecordModifiedAt:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(*v1 + 40);
  *v3 = 138412546;
  *(v3 + 4) = v4;
  *(v3 + 12) = 2112;
  *(v3 + 14) = v2;
  OUTLINED_FUNCTION_2_0(&dword_22622D000, "%@: Blacklist Server responded with error: %@", v5, v6);
}

@end