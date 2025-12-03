@interface MTSleepSessionManager
+ (id)sleepSampleWithInterval:(id)interval sampleType:(int64_t)type metadata:(id)metadata;
- (BOOL)_hasUnprocessedSessions;
- (MTSleepSessionManager)initWithAlarmStorage:(id)storage sleepCoordinator:(id)coordinator sleepSessionTracker:(id)tracker;
- (MTSleepSessionTrackerDelegate)sleepSessionTrackerDelegate;
- (id)_unprocessedSessions;
- (id)_writeSessionData;
- (id)_writeSessions:(id)sessions;
- (id)writeSession:(id)session;
- (void)_removeSessionDataFile;
- (void)_unprocessedSessions;
- (void)archiveSession:(id)session;
- (void)deviceFirstUnlocked;
- (void)saveSessionData;
- (void)sleepSessionTracker:(id)tracker sessionDidComplete:(id)complete;
- (void)waitForUnlock;
@end

@implementation MTSleepSessionManager

- (MTSleepSessionManager)initWithAlarmStorage:(id)storage sleepCoordinator:(id)coordinator sleepSessionTracker:(id)tracker
{
  v39 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  coordinatorCopy = coordinator;
  trackerCopy = tracker;
  v31.receiver = self;
  v31.super_class = MTSleepSessionManager;
  v12 = [(MTSleepSessionManager *)&v31 init];
  if (v12)
  {
    v13 = MTLogForCategory(7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = trackerCopy;
      _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@ with tracker: %{public}@", buf, 0x16u);
    }

    objc_storeStrong(&v12->_alarmStorage, storage);
    objc_storeStrong(&v12->_sleepSessionTracker, tracker);
    [(MTSleepSessionTracker *)v12->_sleepSessionTracker setSleepSessionTrackerDelegate:v12];
    objc_storeWeak(&v12->_sleepSessionTrackerDelegate, coordinatorCopy);
    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v14 = getHKHealthStoreClass_softClass;
    v35 = getHKHealthStoreClass_softClass;
    if (!getHKHealthStoreClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getHKHealthStoreClass_block_invoke;
      v37 = &unk_1E7B0C600;
      v38 = &v32;
      __getHKHealthStoreClass_block_invoke(buf);
      v14 = v33[3];
    }

    v15 = v14;
    _Block_object_dispose(&v32, 8);
    v16 = objc_opt_new();
    healthStore = v12->_healthStore;
    v12->_healthStore = v16;

    platformSpecificSourceBundleIdentifier = [objc_opt_class() platformSpecificSourceBundleIdentifier];
    [(HKHealthStore *)v12->_healthStore setSourceBundleIdentifier:platformSpecificSourceBundleIdentifier];

    [(HKHealthStore *)v12->_healthStore resume];
    v19 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    firstObject = [v19 firstObject];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v23 = [firstObject stringByAppendingPathComponent:bundleIdentifier];
    archivedSessionDataPath = v12->_archivedSessionDataPath;
    v12->_archivedSessionDataPath = v23;

    v25 = [(NSString *)v12->_archivedSessionDataPath stringByAppendingPathComponent:@"SleepSession.data"];
    archivedSessionDataFile = v12->_archivedSessionDataFile;
    v12->_archivedSessionDataFile = v25;

    v27 = +[MTScheduler serialSchedulerForObject:priority:](MTScheduler, "serialSchedulerForObject:priority:", v12, +[MTScheduler defaultPriority]);
    serializer = v12->_serializer;
    v12->_serializer = v27;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)sleepSessionTracker:(id)tracker sessionDidComplete:(id)complete
{
  v25 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  v6 = MTLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy5 = self;
    v23 = 2114;
    v24 = completeCopy;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ sessionDidComplete: %{public}@", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__MTSleepSessionManager_sleepSessionTracker_sessionDidComplete___block_invoke;
  aBlock[3] = &unk_1E7B0E640;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  if (([completeCopy needsAdditionalProcessing]& 1) == 0)
  {
    intervals = [completeCopy intervals];
    v9 = [intervals count];

    if (!v9)
    {
      v17 = MTLogForCategory(7);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy5 = self;
        _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ session has nothing to write", buf, 0xCu);
      }

      sleepSessionTrackerDelegate = [(MTSleepSessionManager *)self sleepSessionTrackerDelegate];
      sleepSessionTracker = [(MTSleepSessionManager *)self sleepSessionTracker];
      [sleepSessionTrackerDelegate sleepSessionTracker:sleepSessionTracker sessionDidComplete:completeCopy];

      goto LABEL_24;
    }
  }

  if (+[MTDeviceListener hasBeenUnlockedSinceBoot])
  {
    needsAdditionalProcessing = [completeCopy needsAdditionalProcessing];
    v11 = MTLogForCategory(7);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (needsAdditionalProcessing)
    {
      if (v12)
      {
        *buf = 138543362;
        selfCopy5 = self;
        _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ session needs additional processing", buf, 0xCu);
      }

      sleepSessionTracker2 = [(MTSleepSessionManager *)self sleepSessionTracker];
      if (objc_opt_respondsToSelector())
      {
        sleepSessionTracker3 = [(MTSleepSessionManager *)self sleepSessionTracker];
        sleepSessionTrackerDelegate = [sleepSessionTracker3 processedSessionForSession:completeCopy];

        if (sleepSessionTrackerDelegate)
        {
          v7[2](v7, sleepSessionTrackerDelegate);
LABEL_24:

          goto LABEL_25;
        }
      }

      else
      {
      }

      sleepSessionTrackerDelegate = MTLogForCategory(7);
      if (os_log_type_enabled(sleepSessionTrackerDelegate, OS_LOG_TYPE_ERROR))
      {
        [MTSleepSessionManager sleepSessionTracker:sleepSessionTrackerDelegate sessionDidComplete:?];
      }

      goto LABEL_24;
    }

    if (v12)
    {
      *buf = 138543362;
      selfCopy5 = self;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ session is ready to write", buf, 0xCu);
    }

    v7[2](v7, completeCopy);
  }

  else
  {
    v16 = MTLogForCategory(7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy5 = self;
      _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ archiving session", buf, 0xCu);
    }

    [(MTSleepSessionManager *)self archiveSession:completeCopy];
    [(MTSleepSessionManager *)self waitForUnlock];
  }

LABEL_25:

  v19 = *MEMORY[0x1E69E9840];
}

void __64__MTSleepSessionManager_sleepSessionTracker_sessionDidComplete___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(7);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ writing session", buf, 0xCu);
  }

  v6 = [*(a1 + 32) writeSession:v3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__MTSleepSessionManager_sleepSessionTracker_sessionDidComplete___block_invoke_302;
  v10[3] = &unk_1E7B0E618;
  v10[4] = *(a1 + 32);
  v11 = v3;
  v7 = v3;
  v8 = [v6 addSuccessBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __64__MTSleepSessionManager_sleepSessionTracker_sessionDidComplete___block_invoke_302(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 sleepSessionTrackerDelegate];
    v8 = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying %{public}@", &v8, 0x16u);
  }

  v5 = [*(a1 + 32) sleepSessionTrackerDelegate];
  v6 = [*(a1 + 32) sleepSessionTracker];
  [v5 sleepSessionTracker:v6 sessionDidComplete:*(a1 + 40)];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)archiveSession:(id)session
{
  sessionCopy = session;
  v5 = sessionCopy;
  if (sessionCopy)
  {
    serializer = self->_serializer;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__MTSleepSessionManager_archiveSession___block_invoke;
    v7[3] = &unk_1E7B0C928;
    v7[4] = self;
    v8 = sessionCopy;
    [(NAScheduler *)serializer performBlock:v7];
  }
}

void __40__MTSleepSessionManager_archiveSession___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v29 = v3;
    v30 = 2114;
    v31 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ archiveSession: %{public}@", buf, 0x16u);
  }

  v5 = (a1 + 32);
  v6 = [*(a1 + 32) _unprocessedSessions];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  [v8 addObject:*(a1 + 40)];
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [*(a1 + 32) archivedSessionDataPath];
  v12 = [v10 fileExistsAtPath:v11];

  if (v12)
  {
    goto LABEL_12;
  }

  v13 = MTLogForCategory(7);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *v5;
    v15 = [*v5 archivedSessionDataPath];
    *buf = 138543874;
    v29 = v14;
    v30 = 2114;
    v31 = @"sleep session";
    v32 = 2114;
    v33 = v15;
    _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ creating %{public}@ directory at %{public}@", buf, 0x20u);
  }

  v16 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [*v5 archivedSessionDataPath];
  v27 = 0;
  [v16 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v27];
  v18 = v27;

  if (!v18)
  {
LABEL_12:
    v18 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v18 encodeObject:v9 forKey:@"MTUnprocessedSessions"];
    [v18 finishEncoding];
    v19 = [v18 encodedData];
    v20 = [*v5 archivedSessionDataFile];
    v21 = [v19 writeToFile:v20 atomically:1];

    v22 = MTLogForCategory(7);
    v23 = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *v5;
        v25 = [v24 archivedSessionDataFile];
        *buf = 138543618;
        v29 = v24;
        v30 = 2114;
        v31 = v25;
        _os_log_impl(&dword_1B1F9F000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ wrote sessions to file %{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __40__MTSleepSessionManager_archiveSession___block_invoke_cold_2(v5);
    }
  }

  else
  {
    v19 = MTLogForCategory(7);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __40__MTSleepSessionManager_archiveSession___block_invoke_cold_1(v5);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (id)writeSession:(id)session
{
  sessionCopy = session;
  v5 = objc_opt_new();
  serializer = self->_serializer;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__MTSleepSessionManager_writeSession___block_invoke;
  v12[3] = &unk_1E7B0C9A0;
  v12[4] = self;
  v13 = sessionCopy;
  v7 = v5;
  v14 = v7;
  v8 = sessionCopy;
  [(NAScheduler *)serializer performBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __38__MTSleepSessionManager_writeSession___block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138543618;
    v13 = v3;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ writeSession: %{public}@", buf, 0x16u);
  }

  v6 = a1[5];
  v5 = a1[6];
  v7 = a1[4];
  if (v6)
  {
    v11 = a1[5];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = [v7 _writeSessions:v8];
  [v5 mtFinishWithFuture:v9];

  if (v6)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)saveSessionData
{
  serializer = self->_serializer;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__MTSleepSessionManager_saveSessionData__block_invoke;
  v3[3] = &unk_1E7B0C9D8;
  v3[4] = self;
  [(NAScheduler *)serializer performBlock:v3];
}

void __40__MTSleepSessionManager_saveSessionData__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) _hasUnprocessedSessions])
  {
    v5 = MTLogForCategory(7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ no unprocessed in bed intervals to save", &v10, 0xCu);
    }

    goto LABEL_9;
  }

  if (+[MTDeviceListener hasBeenUnlockedSinceBoot])
  {
    v2 = MTLogForCategory(7);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v10 = 138543362;
      v11 = v3;
      _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ can write session data", &v10, 0xCu);
    }

    v4 = [*(a1 + 32) _writeSessionData];
LABEL_9:
    v7 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = *(a1 + 32);
  v9 = *MEMORY[0x1E69E9840];

  [v8 waitForUnlock];
}

- (void)waitForUnlock
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(7);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ device hasn't been unlocked since boot.  Waiting for unlock...", &v6, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_deviceFirstUnlocked name:@"MTDeviceHasBeenUnlockedForFirstTime" object:0];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)deviceFirstUnlocked
{
  serializer = self->_serializer;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__MTSleepSessionManager_deviceFirstUnlocked__block_invoke;
  v3[3] = &unk_1E7B0C9D8;
  v3[4] = self;
  [(NAScheduler *)serializer performBlock:v3];
}

void __44__MTSleepSessionManager_deviceFirstUnlocked__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _hasUnprocessedSessions];
  v3 = MTLogForCategory(7);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ device has been unlocked.  Writing samples to HealthKit", buf, 0xCu);
    }

    v3 = [*(a1 + 32) _writeSessionData];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__MTSleepSessionManager_deviceFirstUnlocked__block_invoke_320;
    v9[3] = &unk_1E7B0E668;
    v9[4] = *(a1 + 32);
    v6 = [v3 addCompletionBlock:v9];
  }

  else if (v4)
  {
    v7 = *(a1 + 32);
    *buf = 138543362;
    v11 = v7;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ device has been unlocked but no unprocessed intervals to save", buf, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __44__MTSleepSessionManager_deviceFirstUnlocked__block_invoke_320(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 removeObserver:*(a1 + 32) name:@"MTDeviceHasBeenUnlockedForFirstTime" object:0];
}

- (BOOL)_hasUnprocessedSessions
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  archivedSessionDataFile = [(MTSleepSessionManager *)self archivedSessionDataFile];
  v5 = [defaultManager fileExistsAtPath:archivedSessionDataFile isDirectory:0];

  return v5;
}

- (id)_unprocessedSessions
{
  v17[2] = *MEMORY[0x1E69E9840];
  if ([(MTSleepSessionManager *)self _hasUnprocessedSessions])
  {
    v3 = objc_alloc(MEMORY[0x1E695DEF0]);
    archivedSessionDataFile = [(MTSleepSessionManager *)self archivedSessionDataFile];
    v5 = [v3 initWithContentsOfFile:archivedSessionDataFile];

    if (v5)
    {
      v16 = 0;
      v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v5 error:&v16];
      v7 = v16;
      if (v7)
      {
        v8 = MTLogForCategory(7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [MTSleepSessionManager _unprocessedSessions];
        }

        [(MTSleepSessionManager *)self _removeSessionDataFile];
        v9 = 0;
      }

      else
      {
        v11 = MEMORY[0x1E695DFD8];
        v17[0] = objc_opt_class();
        v17[1] = [(MTSleepSessionTracker *)self->_sleepSessionTracker sessionClass];
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
        v13 = [v11 setWithArray:v12];
        v9 = [v6 decodeObjectOfClasses:v13 forKey:@"MTUnprocessedSessions"];

        [v6 finishDecoding];
      }
    }

    else
    {
      v10 = MTLogForCategory(7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(MTSleepSessionManager *)self _unprocessedSessions];
      }

      [(MTSleepSessionManager *)self _removeSessionDataFile];
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_removeSessionDataFile
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ failed to remove session data file error %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (id)_writeSessionData
{
  _unprocessedSessions = [(MTSleepSessionManager *)self _unprocessedSessions];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__MTSleepSessionManager__writeSessionData__block_invoke;
  v11[3] = &unk_1E7B0E690;
  v11[4] = self;
  v4 = [_unprocessedSessions na_map:v11];

  v5 = [(MTSleepSessionManager *)self _writeSessions:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__MTSleepSessionManager__writeSessionData__block_invoke_2;
  v9[3] = &unk_1E7B0E618;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 addSuccessBlock:v9];

  return v5;
}

id __42__MTSleepSessionManager__writeSessionData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 needsAdditionalProcessing] && (v4 = *(*(a1 + 32) + 48), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v5 = [*(*(a1 + 32) + 48) processedSessionForSession:v3];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

uint64_t __42__MTSleepSessionManager__writeSessionData__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 sleepSessionTrackerDelegate];
    v10 = 138543618;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying %{public}@", &v10, 0x16u);
  }

  v5 = [*(a1 + 32) sleepSessionTrackerDelegate];
  v6 = [*(a1 + 32) sleepSessionTracker];
  v7 = [*(a1 + 40) lastObject];
  [v5 sleepSessionTracker:v6 sessionDidComplete:v7];

  result = [*(a1 + 32) _removeSessionDataFile];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_writeSessions:(id)sessions
{
  v71 = *MEMORY[0x1E69E9840];
  sessionsCopy = sessions;
  selfCopy = self;
  healthStore = self->_healthStore;
  HKObjectTypeClass = getHKObjectTypeClass();
  v7 = getHKCategoryTypeIdentifierSleepAnalysis();
  v8 = [HKObjectTypeClass categoryTypeForIdentifier:v7];
  v9 = [(HKHealthStore *)healthStore authorizationStatusForType:v8];

  if (v9 == 1)
  {
    v10 = MTLogForCategory(7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MTSleepSessionManager *)selfCopy _writeSessions:v10];
    }

    v11 = MEMORY[0x1E69B3780];
    na_genericError = [MEMORY[0x1E696ABC0] na_genericError];
    v13 = [v11 futureWithError:na_genericError];
  }

  else
  {
    na_genericError = objc_opt_new();
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v46 = sessionsCopy;
    obj = sessionsCopy;
    v14 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v60;
      v47 = *v60;
      v48 = na_genericError;
      do
      {
        v17 = 0;
        v49 = v15;
        do
        {
          if (*v60 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v59 + 1) + 8 * v17);
          v19 = MTLogForCategory(7);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v64 = selfCopy;
            v65 = 2112;
            v66 = v18;
            _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Processing session: %@", buf, 0x16u);
          }

          startDate = [(__CFString *)v18 startDate];
          if (startDate && (v21 = startDate, [(__CFString *)v18 endDate], v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v22))
          {
            v51 = v17;
            v23 = MTLogForCategory(7);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v64 = selfCopy;
              v65 = 2114;
              v66 = @"sleep session";
              _os_log_impl(&dword_1B1F9F000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating HealthKit samples from %{public}@...", buf, 0x16u);
            }

            v24 = objc_opt_new();
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            intervals = [(__CFString *)v18 intervals];
            v26 = [intervals countByEnumeratingWithState:&v55 objects:v69 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v56;
              do
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v56 != v28)
                  {
                    objc_enumerationMutation(intervals);
                  }

                  v30 = *(*(&v55 + 1) + 8 * i);
                  v31 = objc_opt_class();
                  sampleType = [(__CFString *)v18 sampleType];
                  metadata = [(__CFString *)v18 metadata];
                  v34 = [v31 sleepSampleWithInterval:v30 sampleType:sampleType metadata:metadata];

                  [v24 na_safeAddObject:v34];
                }

                v27 = [intervals countByEnumeratingWithState:&v55 objects:v69 count:16];
              }

              while (v27);
            }

            v35 = MTLogForCategory(7);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = [v24 count];
              *buf = 138543874;
              v64 = selfCopy;
              v65 = 2048;
              v66 = v36;
              v67 = 2114;
              v68 = v18;
              _os_log_impl(&dword_1B1F9F000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ Saving %lu samples for session %{public}@ to HealthKit...", buf, 0x20u);
            }

            v37 = objc_opt_new();
            na_genericError = v48;
            [v48 addObject:v37];
            v38 = selfCopy->_healthStore;
            v53[0] = MEMORY[0x1E69E9820];
            v53[1] = 3221225472;
            v53[2] = __40__MTSleepSessionManager__writeSessions___block_invoke;
            v53[3] = &unk_1E7B0E6B8;
            v53[4] = selfCopy;
            v53[5] = v18;
            v54 = v37;
            v39 = v37;
            [(HKHealthStore *)v38 saveObjects:v24 withCompletion:v53];

            v16 = v47;
            v15 = v49;
            v17 = v51;
          }

          else
          {
            v24 = MTLogForCategory(7);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v64 = selfCopy;
              v65 = 2112;
              v66 = v18;
              _os_log_error_impl(&dword_1B1F9F000, v24, OS_LOG_TYPE_ERROR, "%{public}@ Skipping session due to missing bedtime or wake time: %@", buf, 0x16u);
            }
          }

          ++v17;
        }

        while (v17 != v15);
        v15 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
      }

      while (v15);
    }

    v40 = +[MTScheduler serialSchedulerForObject:priority:](MTScheduler, "serialSchedulerForObject:priority:", selfCopy, +[MTScheduler defaultPriority]);
    serializer = selfCopy->_serializer;
    selfCopy->_serializer = v40;

    v42 = MEMORY[0x1E69B3780];
    v43 = +[MTScheduler globalAsyncSchedulerWithPriority:](MTScheduler, "globalAsyncSchedulerWithPriority:", +[MTScheduler defaultPriority]);
    v13 = [v42 combineAllFutures:na_genericError ignoringErrors:1 scheduler:v43];

    sessionsCopy = v46;
  }

  v44 = *MEMORY[0x1E69E9840];

  return v13;
}

void __40__MTSleepSessionManager__writeSessions___block_invoke(void *a1, char a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MTLogForCategory(7);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = a1[5];
      v16 = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished saving samples for session %{public}@", &v16, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __40__MTSleepSessionManager__writeSessions___block_invoke_cold_1(a1);
  }

  v10 = MTLogForCategory(7);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    v12 = a1[5];
    v16 = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished processing session: %@", &v16, 0x16u);
  }

  v13 = a1[6];
  v14 = NAEmptyResult();
  [v13 finishWithResult:v14 error:v5];

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)sleepSampleWithInterval:(id)interval sampleType:(int64_t)type metadata:(id)metadata
{
  v34 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  metadataCopy = metadata;
  if (intervalCopy)
  {
    HKObjectTypeClass = getHKObjectTypeClass();
    v11 = getHKCategoryTypeIdentifierSleepAnalysis();
    v12 = [HKObjectTypeClass categoryTypeForIdentifier:v11];

    [v12 maximumAllowedDuration];
    v14 = v13;
    [intervalCopy duration];
    if (v15 <= v14)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2050000000;
      v19 = getHKCategorySampleClass_softClass;
      v30 = getHKCategorySampleClass_softClass;
      if (!getHKCategorySampleClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getHKCategorySampleClass_block_invoke;
        v32 = COERCE_DOUBLE(&unk_1E7B0C600);
        v33 = &v27;
        __getHKCategorySampleClass_block_invoke(buf);
        v19 = v28[3];
      }

      v20 = v19;
      _Block_object_dispose(&v27, 8);
      startDate = [intervalCopy startDate];
      endDate = [intervalCopy endDate];
      v27 = 0;
      v28 = &v27;
      v29 = 0x2050000000;
      v22 = getHKDeviceClass_softClass;
      v30 = getHKDeviceClass_softClass;
      if (!getHKDeviceClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getHKDeviceClass_block_invoke;
        v32 = COERCE_DOUBLE(&unk_1E7B0C600);
        v33 = &v27;
        __getHKDeviceClass_block_invoke(buf);
        v22 = v28[3];
      }

      v23 = v22;
      _Block_object_dispose(&v27, 8);
      localDevice = [v22 localDevice];
      v18 = [v19 categorySampleWithType:v12 value:type startDate:startDate endDate:endDate device:localDevice metadata:metadataCopy];
    }

    else
    {
      startDate = MTLogForCategory(7);
      if (os_log_type_enabled(startDate, OS_LOG_TYPE_DEFAULT))
      {
        [intervalCopy duration];
        *buf = 138543874;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = v17;
        *&buf[22] = 2048;
        v32 = v14;
        _os_log_impl(&dword_1B1F9F000, startDate, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep interval: %f greater than allowed: %f. Will not be used", buf, 0x20u);
      }

      v18 = 0;
    }
  }

  else
  {
    v12 = MTLogForCategory(7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Interval is nil.", buf, 0xCu);
    }

    v18 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v18;
}

- (MTSleepSessionTrackerDelegate)sleepSessionTrackerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sleepSessionTrackerDelegate);

  return WeakRetained;
}

- (void)sleepSessionTracker:(uint64_t)a1 sessionDidComplete:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "%{public}@ failed to process session", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __40__MTSleepSessionManager_archiveSession___block_invoke_cold_1(id *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*a1 archivedSessionDataPath];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_2(&dword_1B1F9F000, v2, v3, "%{public}@ failed to create directory at %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void __40__MTSleepSessionManager_archiveSession___block_invoke_cold_2(id *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*a1 archivedSessionDataFile];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_2(&dword_1B1F9F000, v2, v3, "%{public}@ failed to write sessions file %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_unprocessedSessions
{
  v9 = *MEMORY[0x1E69E9840];
  archivedSessionDataFile = [self archivedSessionDataFile];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_2(&dword_1B1F9F000, v2, v3, "%{public}@ no data found in file %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_writeSessions:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "%{public}@ doesn't have write access for HKCategoryTypeIdentifierSleepAnalysis", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __40__MTSleepSessionManager__writeSessions___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_2_2();
  *v5 = v1;
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v1, v2, "%{public}@ Saving samples to Health failed with error: %{public}@", v4, DWORD2(v4), *&v5[2], v6);
  v3 = *MEMORY[0x1E69E9840];
}

@end