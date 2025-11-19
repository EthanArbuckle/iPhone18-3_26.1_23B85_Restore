@interface CALNPersistentNotificationStorage
+ (id)notificationRecordsFromPersistentNotificationStorageWithPath:(id)a3 error:(id *)a4;
- (BOOL)_loadNotificationsWithError:(id *)a3;
- (BOOL)_saveNotificationsWithError:(id *)a3;
- (CALNPersistentNotificationStorage)initWithPath:(id)a3 isProtectedStorage:(BOOL)a4;
- (id)notificationRecords;
- (void)addNotificationRecord:(id)a3;
- (void)addNotificationRecords:(id)a3;
- (void)removeAllNotificationRecords;
- (void)removeNotificationRecordsPassingTest:(id)a3;
@end

@implementation CALNPersistentNotificationStorage

void __94__CALNPersistentNotificationStorage_persistentNotificationStorageWithPath_isProtectedStorage___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = [v2 fileExistsAtPath:v4];

  v6 = v3[1];
  if (v5)
  {
    v18 = 0;
    v7 = [v6 _loadNotificationsWithError:&v18];
    v8 = v18;
    v9 = +[CALNLogSubsystem defaultCategory];
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *v3;
        *buf = 138543362;
        v20 = v11;
        v12 = "Persistent notification storage file loaded from path %{public}@.";
LABEL_8:
        _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __94__CALNPersistentNotificationStorage_persistentNotificationStorageWithPath_isProtectedStorage___block_invoke_cold_2(v3);
    }
  }

  else
  {
    v17 = 0;
    v13 = [v6 _saveNotificationsWithError:&v17];
    v8 = v17;
    v14 = +[CALNLogSubsystem defaultCategory];
    v10 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *v3;
        *buf = 138543362;
        v20 = v15;
        v12 = "Notification storage file did not exist at path = %{public}@. Created a new file.";
        goto LABEL_8;
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __94__CALNPersistentNotificationStorage_persistentNotificationStorageWithPath_isProtectedStorage___block_invoke_cold_1(v3);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)notificationRecordsFromPersistentNotificationStorageWithPath:(id)a3 error:(id *)a4
{
  v5 = notificationRecordsFromPersistentNotificationStorageWithPath_error__onceToken;
  v6 = a3;
  if (v5 != -1)
  {
    +[CALNPersistentNotificationStorage notificationRecordsFromPersistentNotificationStorageWithPath:error:];
  }

  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];

  v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:notificationRecordsFromPersistentNotificationStorageWithPath_error__allowedClasses fromData:v7 error:a4];

  return v8;
}

void __104__CALNPersistentNotificationStorage_notificationRecordsFromPersistentNotificationStorageWithPath_error___block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = notificationRecordsFromPersistentNotificationStorageWithPath_error__allowedClasses;
  notificationRecordsFromPersistentNotificationStorageWithPath_error__allowedClasses = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (CALNPersistentNotificationStorage)initWithPath:(id)a3 isProtectedStorage:(BOOL)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = CALNPersistentNotificationStorage;
  v7 = [(CALNPersistentNotificationStorage *)&v18 init];
  if (v7)
  {
    v8 = [v6 copy];
    path = v7->_path;
    v7->_path = v8;

    v7->_protected = a4;
    v10 = objc_opt_new();
    inMemoryStorage = v7->_inMemoryStorage;
    v7->_inMemoryStorage = v10;

    objc_opt_class();
    v12 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    v13 = [v12 UTF8String];

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);
    workQueue = v7->_workQueue;
    v7->_workQueue = v15;
  }

  return v7;
}

- (void)addNotificationRecord:(id)a3
{
  v4 = a3;
  v5 = [(CALNPersistentNotificationStorage *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CALNPersistentNotificationStorage_addNotificationRecord___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

uint64_t __59__CALNPersistentNotificationStorage_addNotificationRecord___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) inMemoryStorage];
  [v2 addNotificationRecord:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _saveNotificationsWithError:0];
}

- (void)addNotificationRecords:(id)a3
{
  v4 = a3;
  v5 = [(CALNPersistentNotificationStorage *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__CALNPersistentNotificationStorage_addNotificationRecords___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

uint64_t __60__CALNPersistentNotificationStorage_addNotificationRecords___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) inMemoryStorage];
  [v2 addNotificationRecords:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _saveNotificationsWithError:0];
}

- (id)notificationRecords
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(CALNPersistentNotificationStorage *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__CALNPersistentNotificationStorage_notificationRecords__block_invoke;
  v6[3] = &unk_278D6F460;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __56__CALNPersistentNotificationStorage_notificationRecords__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) inMemoryStorage];
  v2 = [v5 notificationRecords];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeNotificationRecordsPassingTest:(id)a3
{
  v4 = a3;
  v5 = [(CALNPersistentNotificationStorage *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__CALNPersistentNotificationStorage_removeNotificationRecordsPassingTest___block_invoke;
  v7[3] = &unk_278D6F488;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

uint64_t __74__CALNPersistentNotificationStorage_removeNotificationRecordsPassingTest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) inMemoryStorage];
  [v2 removeNotificationRecordsPassingTest:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _saveNotificationsWithError:0];
}

- (void)removeAllNotificationRecords
{
  v3 = [(CALNPersistentNotificationStorage *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CALNPersistentNotificationStorage_removeAllNotificationRecords__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_sync(v3, block);
}

uint64_t __65__CALNPersistentNotificationStorage_removeAllNotificationRecords__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) inMemoryStorage];
  [v2 removeAllNotificationRecords];

  v3 = *(a1 + 32);

  return [v3 _saveNotificationsWithError:0];
}

- (BOOL)_loadNotificationsWithError:(id *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [(CALNPersistentNotificationStorage *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_opt_class();
  v7 = [(CALNPersistentNotificationStorage *)self path];
  v8 = [v6 notificationRecordsFromPersistentNotificationStorageWithPath:v7 error:a3];

  if (v8)
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v25 = [v8 count];
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Loaded notification records, count = %lu", buf, 0xCu);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * v14);
          v16 = [(CALNPersistentNotificationStorage *)self inMemoryStorage];
          [v16 addNotificationRecord:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

- (BOOL)_saveNotificationsWithError:(id *)a3
{
  v5 = [(CALNPersistentNotificationStorage *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CALNPersistentNotificationStorage *)self inMemoryStorage];
  v7 = [v6 notificationRecords];

  v19 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v19];
  v9 = v19;
  if (v8)
  {
    if (self->_protected)
    {
      v10 = 1073741825;
    }

    else
    {
      v10 = 268435457;
    }

    v11 = [(CALNPersistentNotificationStorage *)self path];
    v18 = v9;
    v12 = [v8 writeToFile:v11 options:v10 error:&v18];
    v13 = v18;

    if (v12)
    {
      v14 = 1;
      if (!a3)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v15 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(CALNPersistentNotificationStorage *)self _saveNotificationsWithError:v13, v15];
    }

    v9 = v13;
  }

  else
  {
    v15 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CALNPersistentNotificationStorage _saveNotificationsWithError:v7];
    }
  }

  v14 = 0;
  v13 = v9;
  if (a3)
  {
LABEL_14:
    v16 = v13;
    *a3 = v13;
  }

LABEL_15:

  return v14;
}

void __94__CALNPersistentNotificationStorage_persistentNotificationStorageWithPath_isProtectedStorage___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v1, v2, "Notification storage file did not exist at path = %{public}@. Creating a new file FAILED with error: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __94__CALNPersistentNotificationStorage_persistentNotificationStorageWithPath_isProtectedStorage___block_invoke_cold_2(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v1, v2, "Couldn't read existing persistent notification storage at path %{public}@. Will proceed anyway, which may mean contents will be overwritten. Error: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_saveNotificationsWithError:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 path];
  v7 = 138543618;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_242909000, a3, OS_LOG_TYPE_ERROR, "Error writing archived notifications to path = %{public}@, error = %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveNotificationsWithError:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v1, v2, "Error archiving notifications (%@). error = %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

@end