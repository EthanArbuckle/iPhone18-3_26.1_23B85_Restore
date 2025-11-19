@interface CALNPersistentTimeToLeaveRefreshStorage
+ (id)persistentStorageWithPath:(id)a3;
+ (id)timeToLeaveRefreshDataFromPersistentStorageWithPath:(id)a3 error:(id *)a4;
- (BOOL)_loadDataWithError:(id *)a3;
- (BOOL)_saveDataWithError:(id *)a3;
- (CALNPersistentTimeToLeaveRefreshStorage)initWithPath:(id)a3;
- (id)refreshDateWithIdentifier:(id)a3;
- (id)refreshDates;
- (void)_addRefreshDate:(id)a3 withIdentifier:(id)a4;
- (void)_removeData;
- (void)_removeRefreshDateWithIdentifier:(id)a3;
- (void)addRefreshDate:(id)a3 withIdentifier:(id)a4;
- (void)removeRefreshDateWithIdentifier:(id)a3;
- (void)removeRefreshDates;
@end

@implementation CALNPersistentTimeToLeaveRefreshStorage

+ (id)persistentStorageWithPath:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPath:v4];
  v6 = [v5 workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__CALNPersistentTimeToLeaveRefreshStorage_persistentStorageWithPath___block_invoke;
  v12[3] = &unk_278D6F278;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  dispatch_sync(v6, v12);

  v9 = v14;
  v10 = v7;

  return v7;
}

void __69__CALNPersistentTimeToLeaveRefreshStorage_persistentStorageWithPath___block_invoke(uint64_t a1)
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
        v12 = "Time to Leave refresh storage file loaded from path %{public}@.";
LABEL_8:
        _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __69__CALNPersistentTimeToLeaveRefreshStorage_persistentStorageWithPath___block_invoke_cold_2(v3);
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
        v12 = "Time to Leave refresh storage file did not exist at path = %{public}@. Created a new file.";
        goto LABEL_8;
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __69__CALNPersistentTimeToLeaveRefreshStorage_persistentStorageWithPath___block_invoke_cold_1(v3);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)timeToLeaveRefreshDataFromPersistentStorageWithPath:(id)a3 error:(id *)a4
{
  v5 = timeToLeaveRefreshDataFromPersistentStorageWithPath_error__onceToken;
  v6 = a3;
  if (v5 != -1)
  {
    +[CALNPersistentTimeToLeaveRefreshStorage timeToLeaveRefreshDataFromPersistentStorageWithPath:error:];
  }

  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];

  v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:timeToLeaveRefreshDataFromPersistentStorageWithPath_error__allowedClasses fromData:v7 error:a4];

  return v8;
}

void __101__CALNPersistentTimeToLeaveRefreshStorage_timeToLeaveRefreshDataFromPersistentStorageWithPath_error___block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:3];
  v2 = [v0 setWithArray:{v1, v5, v6}];
  v3 = timeToLeaveRefreshDataFromPersistentStorageWithPath_error__allowedClasses;
  timeToLeaveRefreshDataFromPersistentStorageWithPath_error__allowedClasses = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (CALNPersistentTimeToLeaveRefreshStorage)initWithPath:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CALNPersistentTimeToLeaveRefreshStorage;
  v5 = [(CALNPersistentTimeToLeaveRefreshStorage *)&v16 init];
  if (v5)
  {
    v6 = [v4 copy];
    path = v5->_path;
    v5->_path = v6;

    v8 = objc_opt_new();
    inMemoryStorage = v5->_inMemoryStorage;
    v5->_inMemoryStorage = v8;

    objc_opt_class();
    v10 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    v11 = [v10 UTF8String];

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    workQueue = v5->_workQueue;
    v5->_workQueue = v13;
  }

  return v5;
}

- (id)refreshDates
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  v3 = [(CALNPersistentTimeToLeaveRefreshStorage *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__CALNPersistentTimeToLeaveRefreshStorage_refreshDates__block_invoke;
  v6[3] = &unk_278D6F460;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __55__CALNPersistentTimeToLeaveRefreshStorage_refreshDates__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) inMemoryStorage];
  v2 = [v5 refreshDates];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addRefreshDate:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CALNPersistentTimeToLeaveRefreshStorage *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CALNPersistentTimeToLeaveRefreshStorage_addRefreshDate_withIdentifier___block_invoke;
  block[3] = &unk_278D6F318;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (id)refreshDateWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  v5 = [(CALNPersistentTimeToLeaveRefreshStorage *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CALNPersistentTimeToLeaveRefreshStorage_refreshDateWithIdentifier___block_invoke;
  block[3] = &unk_278D6F2C8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __69__CALNPersistentTimeToLeaveRefreshStorage_refreshDateWithIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) inMemoryStorage];
  v2 = [v5 refreshDateWithIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeRefreshDateWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNPersistentTimeToLeaveRefreshStorage *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__CALNPersistentTimeToLeaveRefreshStorage_removeRefreshDateWithIdentifier___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)removeRefreshDates
{
  v3 = [(CALNPersistentTimeToLeaveRefreshStorage *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CALNPersistentTimeToLeaveRefreshStorage_removeRefreshDates__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_addRefreshDate:(id)a3 withIdentifier:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CALNPersistentTimeToLeaveRefreshStorage *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CALNPersistentTimeToLeaveRefreshStorage *)self inMemoryStorage];
  [v9 addRefreshDate:v6 withIdentifier:v7];

  v13 = 0;
  LOBYTE(v9) = [(CALNPersistentTimeToLeaveRefreshStorage *)self _saveDataWithError:&v13];
  v10 = v13;
  if ((v9 & 1) == 0)
  {
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v7;
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&dword_242909000, v11, OS_LOG_TYPE_ERROR, "Could not save time to leave refresh date. error = %{public}@, identifier = %{public}@, data = %@", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_removeRefreshDateWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNPersistentTimeToLeaveRefreshStorage *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CALNPersistentTimeToLeaveRefreshStorage *)self inMemoryStorage];
  [v6 removeRefreshDateWithIdentifier:v4];

  v9 = 0;
  LOBYTE(v6) = [(CALNPersistentTimeToLeaveRefreshStorage *)self _saveDataWithError:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CALNPersistentTimeToLeaveRefreshStorage _removeRefreshDateWithIdentifier:];
    }
  }
}

- (void)_removeData
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_242909000, v0, OS_LOG_TYPE_ERROR, "Could not save after removing time to leave refresh dates. error = %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (BOOL)_loadDataWithError:(id *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [(CALNPersistentTimeToLeaveRefreshStorage *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_opt_class();
  v7 = [(CALNPersistentTimeToLeaveRefreshStorage *)self path];
  v8 = [v6 timeToLeaveRefreshDataFromPersistentStorageWithPath:v7 error:a3];

  if (v8)
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = [v8 count];
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Loaded time to leave refresh timer dates, count = %lu", buf, 0xCu);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__CALNPersistentTimeToLeaveRefreshStorage__loadDataWithError___block_invoke;
    v12[3] = &unk_278D6FA18;
    v12[4] = self;
    [v8 enumerateKeysAndObjectsUsingBlock:v12];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

void __62__CALNPersistentTimeToLeaveRefreshStorage__loadDataWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 inMemoryStorage];
  [v7 addRefreshDate:v5 withIdentifier:v6];
}

- (BOOL)_saveDataWithError:(id *)a3
{
  v5 = [(CALNPersistentTimeToLeaveRefreshStorage *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CALNPersistentTimeToLeaveRefreshStorage *)self inMemoryStorage];
  v7 = [v6 refreshDates];

  v18 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v18];
  v9 = v18;
  if (v8)
  {
    v10 = [(CALNPersistentTimeToLeaveRefreshStorage *)self path];
    v17 = v9;
    v11 = [v8 writeToFile:v10 options:268435457 error:&v17];
    v12 = v17;

    if (v11)
    {
      v13 = 1;
      if (!a3)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v14 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CALNPersistentTimeToLeaveRefreshStorage *)self _saveDataWithError:v12, v14];
    }

    v9 = v12;
  }

  else
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CALNPersistentTimeToLeaveRefreshStorage _saveDataWithError:];
    }
  }

  v13 = 0;
  v12 = v9;
  if (a3)
  {
LABEL_11:
    v15 = v12;
    *a3 = v12;
  }

LABEL_12:

  return v13;
}

void __69__CALNPersistentTimeToLeaveRefreshStorage_persistentStorageWithPath___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v1, v2, "Time to leave refresh storage file did not exist at path = %{public}@. Creating a new file FAILED with error: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __69__CALNPersistentTimeToLeaveRefreshStorage_persistentStorageWithPath___block_invoke_cold_2(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v1, v2, "Couldn't read existing persistent time to leave refresh storage at path %{public}@. Will proceed anyway, which may mean contents will be overwritten. Error: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_removeRefreshDateWithIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v0, v1, "Could not save after removing time to leave refresh date. error = %{public}@, identifier = %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_saveDataWithError:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 path];
  OUTLINED_FUNCTION_1_0();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_242909000, a3, OS_LOG_TYPE_ERROR, "Error writing archived data to path = %{public}@, error = %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveDataWithError:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v0, v1, "Error archiving time to leave refresh dates (%@). error = %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end