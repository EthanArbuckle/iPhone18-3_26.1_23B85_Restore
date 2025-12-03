@interface HDDatabaseAssertionManager
- (BOOL)takeAssertion:(id)assertion;
- (HDDatabaseAssertionManager)initWithDirectoryPath:(id)path prefix:(id)prefix;
- (id)_dbFilesFromDirectoryPath:(void *)path;
- (id)_dbFilesInDirectory:(void *)directory errorOut:;
- (uint64_t)_lock_takeCoreOSAssertionWithError:(uint64_t)error;
- (void)_cancelTimerIfNeeded;
- (void)_handleAssertionReleased:(BOOL)released;
- (void)_lock_releaseCoreOSAssertionIfNeeded:(uint64_t)needed;
- (void)_startTimer;
- (void)_timerFired;
- (void)invalidate;
@end

@implementation HDDatabaseAssertionManager

- (HDDatabaseAssertionManager)initWithDirectoryPath:(id)path prefix:(id)prefix
{
  pathCopy = path;
  prefixCopy = prefix;
  v18.receiver = self;
  v18.super_class = HDDatabaseAssertionManager;
  v8 = [(HDAssertionManager *)&v18 init];
  if (v8)
  {
    v10 = objc_alloc_init(HDContentProtectionManager);
    contentProtectionManager = v8->_contentProtectionManager;
    v8->_contentProtectionManager = v10;

    v12 = [pathCopy copy];
    directoryPath = v8->_directoryPath;
    v8->_directoryPath = v12;

    v14 = [prefixCopy copy];
    prefix = v8->_prefix;
    v8->_prefix = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    dBFilesForCoreOSAssertion = v8->_dBFilesForCoreOSAssertion;
    v8->_dBFilesForCoreOSAssertion = v16;

    v8->_coreOSAssertionTaken = 0;
    v8->_timeout = 30;
    v8->_lock._os_unfair_lock_opaque = 0;
    [(HDDatabaseAssertionManager *)v8 _startTimer];
  }

  return v8;
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = HDDatabaseAssertionManager;
  [(HDAssertionManager *)&v3 invalidate];
  [(HDDatabaseAssertionManager *)self _cancelTimerIfNeeded];
}

- (BOOL)takeAssertion:(id)assertion
{
  assertionCopy = assertion;
  if ([assertionCopy contextType] == 3 || objc_msgSend(assertionCopy, "contextType") == 2)
  {
    [(HDDatabaseAssertionManager *)self _cancelTimerIfNeeded];
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = [assertionCopy contextType] != 3 && objc_msgSend(assertionCopy, "contextType") != 2;
  if (!self->_coreOSAssertionTaken && !(v5 | ![(HDContentProtectionManager *)self->_contentProtectionManager isProtectedDataAvailable]))
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    supportsCoreOSDatabaseAssertion = [mEMORY[0x277CCDD30] supportsCoreOSDatabaseAssertion];

    if (supportsCoreOSDatabaseAssertion)
    {
      v14 = 0;
      v10 = [(HDDatabaseAssertionManager *)self _lock_takeCoreOSAssertionWithError:?];
      v11 = v14;
      if (v10)
      {
        self->_coreOSAssertionTaken = 1;
      }

      else
      {
        _HKInitializeLogging();
        v12 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          [(HDDatabaseAssertionManager *)self takeAssertion:v11, v12];
        }
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v13.receiver = self;
  v13.super_class = HDDatabaseAssertionManager;
  v8 = [(HDAssertionManager *)&v13 takeAssertion:assertionCopy];

  return v8;
}

- (void)_handleAssertionReleased:(BOOL)released
{
  v5.receiver = self;
  v5.super_class = HDDatabaseAssertionManager;
  [(HDAssertionManager *)&v5 _handleAssertionReleased:?];
  os_unfair_lock_lock(&self->_lock);
  [(HDDatabaseAssertionManager *)self _lock_releaseCoreOSAssertionIfNeeded:released];
  os_unfair_lock_unlock(&self->_lock);
}

void __41__HDDatabaseAssertionManager__startTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDDatabaseAssertionManager *)WeakRetained _timerFired];
}

id __59__HDDatabaseAssertionManager__dbFilesInDirectory_errorOut___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsString:*(*(a1 + 32) + 80)])
  {
    v4 = [*(a1 + 40) stringByAppendingPathComponent:v3];
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_startTimer
{
  if (self)
  {
    OUTLINED_FUNCTION_1_5(self);
    v3 = dispatch_get_global_queue(21, 0);
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
    v5 = *(v1 + 104);
    *(v1 + 104) = v4;

    v6 = *(v1 + 104);
    v7 = dispatch_time(0, 1000000000 * *(v1 + 112));
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    objc_initWeak(&location, v1);
    v8 = *(v1 + 104);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41__HDDatabaseAssertionManager__startTimer__block_invoke;
    v9[3] = &unk_2796BDCB8;
    objc_copyWeak(&v10, &location);
    dispatch_source_set_event_handler(v8, v9);
    dispatch_resume(*(v1 + 104));
    os_unfair_lock_unlock((v1 + *(v2 + 3004)));
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)_cancelTimerIfNeeded
{
  v8 = *MEMORY[0x277D85DE8];
  if (self)
  {
    OUTLINED_FUNCTION_1_5(self);
    if (*(v1 + 104))
    {
      _HKInitializeLogging();
      v3 = HKLogAssertions();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138543362;
        v7 = v1;
        _os_log_impl(&dword_25156C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Cancelling timer", &v6, 0xCu);
      }

      dispatch_source_cancel(*(v1 + 104));
      v4 = *(v1 + 104);
      *(v1 + 104) = 0;
    }

    os_unfair_lock_unlock((v1 + *(v2 + 3004)));
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_lock_takeCoreOSAssertionWithError:(uint64_t)error
{
  v30 = *MEMORY[0x277D85DE8];
  if (error)
  {
    os_unfair_lock_assert_owner((error + 120));
    _HKInitializeLogging();
    v4 = HKLogAssertions();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = error;
      _os_log_impl(&dword_25156C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Taking CoreOS assertion", buf, 0xCu);
    }

    v5 = *(error + 88);
    v6 = [(HDDatabaseAssertionManager *)error _dbFilesFromDirectoryPath:?];
    [v5 addObjectsFromArray:v6];

    *buf = xmmword_2515C04A0;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = *(error + 88);
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v21 = a2;
      v10 = *v23;
      v11 = @"An assertion is already held on this file by a different process.";
      v12 = MEMORY[0x277CCC2A0];
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v22 + 1) + 8 * v13);
          if ((HKIsUnitTesting() & 1) == 0)
          {
            path = [v14 path];
            v16 = open([path fileSystemRepresentation], 2);

            if (fcntl(v16, 108, buf) < 0)
            {
              if (*__error() == 16)
              {
                goto LABEL_24;
              }

              if (*__error() == 1)
              {
                v11 = @"The device is locked, or your process doesn't have permission to request the assertion.";
LABEL_24:
                [MEMORY[0x277CCA9B8] hk_assignError:v21 code:102 description:v11];
                v18 = 0;
                goto LABEL_25;
              }

              if (*__error() == 22)
              {
                v11 = @"You may have exceeded the maximum time to live, the file handle may not be valid, the data protection class of the file is not A or B, descriptor is not for a regular file";
                goto LABEL_24;
              }

              if (*__error() == 45)
              {
                v11 = @"The platform doesn't support background processing assertions or the file is not a snapshot.";
                goto LABEL_24;
              }
            }

            if (close(v16))
            {
              _HKInitializeLogging();
              v17 = *v12;
              if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
              {
                *v26 = 138543362;
                errorCopy = error;
                _os_log_error_impl(&dword_25156C000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Failed to close file descriptor", v26, 0xCu);
              }
            }
          }

          ++v13;
        }

        while (v9 != v13);
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v18 = 1;
LABEL_25:
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_dbFilesFromDirectoryPath:(void *)path
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (path)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = 0;
    v5 = [(HDDatabaseAssertionManager *)path _dbFilesInDirectory:v3 errorOut:&v10];
    v6 = v10;
    if (v5)
    {
      [v4 addObjectsFromArray:v5];
    }

    else
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        pathCopy = path;
        v13 = 2114;
        v14 = v3;
        v15 = 2114;
        v16 = v6;
        _os_log_error_impl(&dword_25156C000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch files in directory %{public}@ with error %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_lock_releaseCoreOSAssertionIfNeeded:(uint64_t)needed
{
  v57 = *MEMORY[0x277D85DE8];
  if (needed)
  {
    os_unfair_lock_assert_owner((needed + 120));
    if (*(needed + 96) == 1 && (a2 & 1) == 0)
    {
      _HKInitializeLogging();
      v4 = HKLogAssertions();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        neededCopy = needed;
        _os_log_impl(&dword_25156C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Releasing CoreOS assertion", buf, 0xCu);
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v5 = *(needed + 88);
      v6 = [v5 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v51;
        v49 = 138543362;
        do
        {
          v9 = 0;
          do
          {
            if (*v51 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v50 + 1) + 8 * v9);
            if ((HKIsUnitTesting() & 1) == 0)
            {
              path = [v10 path];
              v12 = open([path fileSystemRepresentation], 2);

              v47 = 0;
              if (fcntl(v12, 109) < 0)
              {
                if (*__error() == 1)
                {
                  _HKInitializeLogging();
                  v13 = HKLogAssertions();
                  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
                  if (v14)
                  {
                    v22 = OUTLINED_FUNCTION_0_8(v14, v15, v16, v17, v18, v19, v20, v21, 0, v48, v49);
                    v24 = v13;
                    v25 = "%{public}@: The assertion you're releasing doesn't belong to you.";
                    goto LABEL_26;
                  }

                  goto LABEL_18;
                }

                if (*__error() == 45)
                {
                  _HKInitializeLogging();
                  v13 = HKLogAssertions();
                  v26 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
                  if (v26)
                  {
                    v22 = OUTLINED_FUNCTION_0_8(v26, v27, v28, v29, v30, v31, v32, v33, 0, v48, v49);
                    v24 = v13;
                    v25 = "%{public}@: The platform doesn't support background processing assertions or the file is not a snapshot";
LABEL_26:
                    _os_log_error_impl(v22, v24, OS_LOG_TYPE_ERROR, v25, v23, 0xCu);
                  }

LABEL_18:
                }
              }

              if (close(v12))
              {
                _HKInitializeLogging();
                v34 = HKLogAssertions();
                v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
                if (v35)
                {
                  v43 = OUTLINED_FUNCTION_0_8(v35, v36, v37, v38, v39, v40, v41, v42, v47, v48, v49);
                  _os_log_error_impl(v43, v34, OS_LOG_TYPE_ERROR, "%{public}@: Failed to close file descriptor", v44, 0xCu);
                }
              }
            }

            ++v9;
          }

          while (v7 != v9);
          v45 = [v5 countByEnumeratingWithState:&v50 objects:v54 count:16];
          v7 = v45;
        }

        while (v45);
      }

      [*(needed + 88) removeAllObjects];
      *(needed + 96) = 0;
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)_timerFired
{
  v12 = *MEMORY[0x277D85DE8];
  if (self)
  {
    hasActiveOrPendingAssertions = [self hasActiveOrPendingAssertions];
    os_unfair_lock_lock((self + 120));
    _HKInitializeLogging();
    v3 = HKLogAssertions();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(self + 96);
      v8 = 138543618;
      selfCopy = self;
      v10 = 1026;
      v11 = v4;
      _os_log_impl(&dword_25156C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Attempting to release assertion with assertion taken value %{public}d", &v8, 0x12u);
    }

    if (*(self + 96) == 1)
    {
      v5 = *(self + 88);
      v6 = [(HDDatabaseAssertionManager *)self _dbFilesFromDirectoryPath:?];
      [v5 addObjectsFromArray:v6];

      [(HDDatabaseAssertionManager *)self _lock_releaseCoreOSAssertionIfNeeded:hasActiveOrPendingAssertions];
    }

    os_unfair_lock_unlock((self + 120));
    [(HDDatabaseAssertionManager *)self _cancelTimerIfNeeded];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_dbFilesInDirectory:(void *)directory errorOut:
{
  v5 = a2;
  if (self)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v15 = 0;
    v7 = [v6 contentsOfDirectoryAtPath:v5 error:&v15];
    v8 = v15;
    v9 = v8;
    if (v7)
    {
      goto LABEL_3;
    }

    if ([v8 code] != 260)
    {
      v10 = v9;
      if (v10)
      {
        if (directory)
        {
          v11 = v10;
          *directory = v10;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      self = 0;
      goto LABEL_12;
    }

    if ([v9 code] != 260)
    {
LABEL_3:
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __59__HDDatabaseAssertionManager__dbFilesInDirectory_errorOut___block_invoke;
      v13[3] = &unk_2796BE0C0;
      v13[4] = self;
      v14 = v5;
      self = [v7 hk_map:v13];
    }

    else
    {
      self = MEMORY[0x277CBEBF8];
    }

LABEL_12:
  }

  return self;
}

- (void)takeAssertion:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_25156C000, log, OS_LOG_TYPE_ERROR, "%{public}@: Failed to take CoreOS Assertion with error %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end