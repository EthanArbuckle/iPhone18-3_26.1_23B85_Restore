@interface CALNPersistentTriggeredEventNotificationDataStorage
+ (id)notificationDataFromPersistentStorageWithPath:(id)path error:(id *)error;
- (BOOL)_loadDataWithError:(id *)error;
- (BOOL)_saveDataWithError:(id *)error;
- (CALNPersistentTriggeredEventNotificationDataStorage)initWithPath:(id)path isProtectedStorage:(BOOL)storage;
- (id)notificationData;
- (id)notificationDataWithIdentifier:(id)identifier;
- (void)_addNotificationData:(id)data withIdentifier:(id)identifier;
- (void)_removeData;
- (void)_removeNotificationDataWithIdentifier:(id)identifier;
- (void)addNotificationData:(id)data withIdentifier:(id)identifier;
- (void)removeNotificationData;
- (void)removeNotificationDataWithIdentifier:(id)identifier;
@end

@implementation CALNPersistentTriggeredEventNotificationDataStorage

void __100__CALNPersistentTriggeredEventNotificationDataStorage_persistentStorageWithPath_isProtectedStorage___block_invoke(uint64_t a1)
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
    v7 = [v6 _loadDataWithError:&v18];
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
        v12 = "Triggered event notification storage file loaded from path %{public}@.";
LABEL_8:
        _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __100__CALNPersistentTriggeredEventNotificationDataStorage_persistentStorageWithPath_isProtectedStorage___block_invoke_cold_2(v3);
    }
  }

  else
  {
    v17 = 0;
    v13 = [v6 _saveDataWithError:&v17];
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
        v12 = "Triggered event notificationß storage file did not exist at path = %{public}@. Created a new file.";
        goto LABEL_8;
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __100__CALNPersistentTriggeredEventNotificationDataStorage_persistentStorageWithPath_isProtectedStorage___block_invoke_cold_1(v3);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)notificationDataFromPersistentStorageWithPath:(id)path error:(id *)error
{
  v5 = notificationDataFromPersistentStorageWithPath_error__onceToken;
  pathCopy = path;
  if (v5 != -1)
  {
    +[CALNPersistentTriggeredEventNotificationDataStorage notificationDataFromPersistentStorageWithPath:error:];
  }

  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:pathCopy];

  v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:notificationDataFromPersistentStorageWithPath_error__allowedClasses fromData:v7 error:error];

  return v8;
}

void __107__CALNPersistentTriggeredEventNotificationDataStorage_notificationDataFromPersistentStorageWithPath_error___block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:3];
  v2 = [v0 setWithArray:{v1, v5, v6}];
  v3 = notificationDataFromPersistentStorageWithPath_error__allowedClasses;
  notificationDataFromPersistentStorageWithPath_error__allowedClasses = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (CALNPersistentTriggeredEventNotificationDataStorage)initWithPath:(id)path isProtectedStorage:(BOOL)storage
{
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = CALNPersistentTriggeredEventNotificationDataStorage;
  v7 = [(CALNPersistentTriggeredEventNotificationDataStorage *)&v18 init];
  if (v7)
  {
    v8 = [pathCopy copy];
    path = v7->_path;
    v7->_path = v8;

    v7->_protected = storage;
    v10 = objc_opt_new();
    inMemoryStorage = v7->_inMemoryStorage;
    v7->_inMemoryStorage = v10;

    objc_opt_class();
    v12 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String = [v12 UTF8String];

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(uTF8String, v14);
    workQueue = v7->_workQueue;
    v7->_workQueue = v15;
  }

  return v7;
}

- (id)notificationData
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  workQueue = [(CALNPersistentTriggeredEventNotificationDataStorage *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__CALNPersistentTriggeredEventNotificationDataStorage_notificationData__block_invoke;
  v6[3] = &unk_278D6F460;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __71__CALNPersistentTriggeredEventNotificationDataStorage_notificationData__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) inMemoryStorage];
  v2 = [v5 notificationData];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addNotificationData:(id)data withIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  workQueue = [(CALNPersistentTriggeredEventNotificationDataStorage *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__CALNPersistentTriggeredEventNotificationDataStorage_addNotificationData_withIdentifier___block_invoke;
  block[3] = &unk_278D6F318;
  block[4] = self;
  v12 = dataCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = dataCopy;
  dispatch_sync(workQueue, block);
}

- (id)notificationDataWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  workQueue = [(CALNPersistentTriggeredEventNotificationDataStorage *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CALNPersistentTriggeredEventNotificationDataStorage_notificationDataWithIdentifier___block_invoke;
  block[3] = &unk_278D6F2C8;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(workQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __86__CALNPersistentTriggeredEventNotificationDataStorage_notificationDataWithIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) inMemoryStorage];
  v2 = [v5 notificationDataWithIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeNotificationDataWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(CALNPersistentTriggeredEventNotificationDataStorage *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__CALNPersistentTriggeredEventNotificationDataStorage_removeNotificationDataWithIdentifier___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(workQueue, v7);
}

- (void)removeNotificationData
{
  workQueue = [(CALNPersistentTriggeredEventNotificationDataStorage *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CALNPersistentTriggeredEventNotificationDataStorage_removeNotificationData__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (void)_addNotificationData:(id)data withIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  workQueue = [(CALNPersistentTriggeredEventNotificationDataStorage *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  inMemoryStorage = [(CALNPersistentTriggeredEventNotificationDataStorage *)self inMemoryStorage];
  [inMemoryStorage addNotificationData:dataCopy withIdentifier:identifierCopy];

  v13 = 0;
  LOBYTE(inMemoryStorage) = [(CALNPersistentTriggeredEventNotificationDataStorage *)self _saveDataWithError:&v13];
  v10 = v13;
  if ((inMemoryStorage & 1) == 0)
  {
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = identifierCopy;
      v18 = 2112;
      v19 = dataCopy;
      _os_log_error_impl(&dword_242909000, v11, OS_LOG_TYPE_ERROR, "Could not save notification data. error = %{public}@, identifier = %{public}@, data = %@", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_removeNotificationDataWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(CALNPersistentTriggeredEventNotificationDataStorage *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  inMemoryStorage = [(CALNPersistentTriggeredEventNotificationDataStorage *)self inMemoryStorage];
  [inMemoryStorage removeNotificationDataWithIdentifier:identifierCopy];

  v9 = 0;
  LOBYTE(inMemoryStorage) = [(CALNPersistentTriggeredEventNotificationDataStorage *)self _saveDataWithError:&v9];
  v7 = v9;
  if ((inMemoryStorage & 1) == 0)
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CALNPersistentTriggeredEventNotificationDataStorage _removeNotificationDataWithIdentifier:];
    }
  }
}

- (void)_removeData
{
  workQueue = [(CALNPersistentTriggeredEventNotificationDataStorage *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  inMemoryStorage = [(CALNPersistentTriggeredEventNotificationDataStorage *)self inMemoryStorage];
  [inMemoryStorage removeNotificationData];

  v7 = 0;
  LOBYTE(inMemoryStorage) = [(CALNPersistentTriggeredEventNotificationDataStorage *)self _saveDataWithError:&v7];
  v5 = v7;
  if ((inMemoryStorage & 1) == 0)
  {
    v6 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CALNPersistentTimeToLeaveRefreshStorage _removeData];
    }
  }
}

- (BOOL)_loadDataWithError:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(CALNPersistentTriggeredEventNotificationDataStorage *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_opt_class();
  path = [(CALNPersistentTriggeredEventNotificationDataStorage *)self path];
  v8 = [v6 notificationDataFromPersistentStorageWithPath:path error:error];

  if (v8)
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = [v8 count];
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Loaded notification meta data, count = %lu", buf, 0xCu);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__CALNPersistentTriggeredEventNotificationDataStorage__loadDataWithError___block_invoke;
    v12[3] = &unk_278D6FD10;
    v12[4] = self;
    [v8 enumerateKeysAndObjectsUsingBlock:v12];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

void __74__CALNPersistentTriggeredEventNotificationDataStorage__loadDataWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 inMemoryStorage];
  [v7 addNotificationData:v5 withIdentifier:v6];
}

- (BOOL)_saveDataWithError:(id *)error
{
  workQueue = [(CALNPersistentTriggeredEventNotificationDataStorage *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  inMemoryStorage = [(CALNPersistentTriggeredEventNotificationDataStorage *)self inMemoryStorage];
  notificationData = [inMemoryStorage notificationData];

  v19 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:notificationData requiringSecureCoding:1 error:&v19];
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

    path = [(CALNPersistentTriggeredEventNotificationDataStorage *)self path];
    v18 = v9;
    v12 = [v8 writeToFile:path options:v10 error:&v18];
    v13 = v18;

    if (v12)
    {
      v14 = 1;
      if (!error)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v15 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(CALNPersistentTimeToLeaveRefreshStorage *)self _saveDataWithError:v13, v15];
    }

    v9 = v13;
  }

  else
  {
    v15 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CALNPersistentTriggeredEventNotificationDataStorage _saveDataWithError:];
    }
  }

  v14 = 0;
  v13 = v9;
  if (error)
  {
LABEL_14:
    v16 = v13;
    *error = v13;
  }

LABEL_15:

  return v14;
}

void __100__CALNPersistentTriggeredEventNotificationDataStorage_persistentStorageWithPath_isProtectedStorage___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v1, v2, "Triggered event notification storage file did not exist at path = %{public}@. Creating a new file FAILED with error: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __100__CALNPersistentTriggeredEventNotificationDataStorage_persistentStorageWithPath_isProtectedStorage___block_invoke_cold_2(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v1, v2, "Couldn't read existing persistent triggered event notification storage at path %{public}@. Will proceed anyway, which may mean contents will be overwritten. Error: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_removeNotificationDataWithIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v0, v1, "Could not save after removing notification data. error = %{public}@, identifier = %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_saveDataWithError:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v0, v1, "Error archiving notification data (%@). error = %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end