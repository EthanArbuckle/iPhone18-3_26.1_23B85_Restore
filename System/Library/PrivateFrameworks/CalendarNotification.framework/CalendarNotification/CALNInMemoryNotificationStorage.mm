@interface CALNInMemoryNotificationStorage
- (CALNInMemoryNotificationStorage)init;
- (id)_notificationRecords;
- (id)notificationRecords;
- (void)_addNotificationRecord:(id)record;
- (void)_removeNotificationRecordsPassingTest:(id)test;
- (void)addNotificationRecord:(id)record;
- (void)addNotificationRecords:(id)records;
- (void)removeAllNotificationRecords;
- (void)removeNotificationRecordsPassingTest:(id)test;
@end

@implementation CALNInMemoryNotificationStorage

- (CALNInMemoryNotificationStorage)init
{
  v11.receiver = self;
  v11.super_class = CALNInMemoryNotificationStorage;
  v2 = [(CALNInMemoryNotificationStorage *)&v11 init];
  if (v2)
  {
    objc_opt_class();
    v3 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String = [v3 UTF8String];

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    workQueue = v2->_workQueue;
    v2->_workQueue = v6;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    recordMap = v2->_recordMap;
    v2->_recordMap = dictionary;
  }

  return v2;
}

- (id)notificationRecords
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  workQueue = [(CALNInMemoryNotificationStorage *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__CALNInMemoryNotificationStorage_notificationRecords__block_invoke;
  v6[3] = &unk_278D6F460;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __54__CALNInMemoryNotificationStorage_notificationRecords__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _notificationRecords];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_notificationRecords
{
  workQueue = [(CALNInMemoryNotificationStorage *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordMap = [(CALNInMemoryNotificationStorage *)self recordMap];
  allValues = [recordMap allValues];

  return allValues;
}

- (void)addNotificationRecord:(id)record
{
  recordCopy = record;
  workQueue = [(CALNInMemoryNotificationStorage *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__CALNInMemoryNotificationStorage_addNotificationRecord___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = recordCopy;
  v6 = recordCopy;
  dispatch_sync(workQueue, v7);
}

- (void)_addNotificationRecord:(id)record
{
  v21 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  workQueue = [(CALNInMemoryNotificationStorage *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([recordCopy hasAlertContent])
  {
    if ([recordCopy shouldPresentAlert])
    {
      v6 = [CALNNotificationIdentifier alloc];
      sourceIdentifier = [recordCopy sourceIdentifier];
      sourceClientIdentifier = [recordCopy sourceClientIdentifier];
      v9 = [(CALNNotificationIdentifier *)v6 initWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:sourceClientIdentifier];

      if (v9)
      {
        recordMap = [(CALNInMemoryNotificationStorage *)self recordMap];
        [recordMap setObject:recordCopy forKeyedSubscript:v9];

        sourceIdentifier3 = +[CALNLogSubsystem defaultCategory];
        if (os_log_type_enabled(sourceIdentifier3, OS_LOG_TYPE_DEFAULT))
        {
          sourceIdentifier2 = [recordCopy sourceIdentifier];
          sourceClientIdentifier2 = [recordCopy sourceClientIdentifier];
          v17 = 138543618;
          v18 = sourceIdentifier2;
          v19 = 2114;
          v20 = sourceClientIdentifier2;
          v14 = "Added record, source identifier = %{public}@, source client identifier = %{public}@";
LABEL_13:
          _os_log_impl(&dword_242909000, sourceIdentifier3, OS_LOG_TYPE_DEFAULT, v14, &v17, 0x16u);

          goto LABEL_14;
        }
      }

      else
      {
        sourceIdentifier3 = +[CALNLogSubsystem defaultCategory];
        if (os_log_type_enabled(sourceIdentifier3, OS_LOG_TYPE_DEFAULT))
        {
          sourceIdentifier2 = [recordCopy sourceIdentifier];
          sourceClientIdentifier2 = [recordCopy sourceClientIdentifier];
          v17 = 138543618;
          v18 = sourceIdentifier2;
          v19 = 2114;
          v20 = sourceClientIdentifier2;
          v14 = "Cannot add record because notification identifier could not be created with record's source identifier and record's source client identifier. Record source identifier: %{public}@. Record source client identifier: %{public}@.";
          goto LABEL_13;
        }
      }

LABEL_15:

      goto LABEL_16;
    }

    v9 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sourceIdentifier3 = [recordCopy sourceIdentifier];
      sourceIdentifier2 = [recordCopy sourceClientIdentifier];
      v17 = 138543618;
      v18 = sourceIdentifier3;
      v19 = 2114;
      v20 = sourceIdentifier2;
      v15 = "Cannot add record that should not be presented, source identifier = %{public}@, source client identifier = %{public}@";
      goto LABEL_10;
    }
  }

  else
  {
    v9 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sourceIdentifier3 = [recordCopy sourceIdentifier];
      sourceIdentifier2 = [recordCopy sourceClientIdentifier];
      v17 = 138543618;
      v18 = sourceIdentifier3;
      v19 = 2114;
      v20 = sourceIdentifier2;
      v15 = "Cannot add record without alert content, source identifier = %{public}@, source client identifier = %{public}@";
LABEL_10:
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, v15, &v17, 0x16u);
LABEL_14:

      goto LABEL_15;
    }
  }

LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addNotificationRecords:(id)records
{
  recordsCopy = records;
  workQueue = [(CALNInMemoryNotificationStorage *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__CALNInMemoryNotificationStorage_addNotificationRecords___block_invoke;
  v7[3] = &unk_278D6F278;
  v8 = recordsCopy;
  selfCopy = self;
  v6 = recordsCopy;
  dispatch_sync(workQueue, v7);
}

void __58__CALNInMemoryNotificationStorage_addNotificationRecords___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _addNotificationRecord:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeNotificationRecordsPassingTest:(id)test
{
  testCopy = test;
  workQueue = [(CALNInMemoryNotificationStorage *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__CALNInMemoryNotificationStorage_removeNotificationRecordsPassingTest___block_invoke;
  v7[3] = &unk_278D6F488;
  v7[4] = self;
  v8 = testCopy;
  v6 = testCopy;
  dispatch_sync(workQueue, v7);
}

- (void)_removeNotificationRecordsPassingTest:(id)test
{
  v29 = *MEMORY[0x277D85DE8];
  testCopy = test;
  workQueue = [(CALNInMemoryNotificationStorage *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  selfCopy = self;
  recordMap = [(CALNInMemoryNotificationStorage *)self recordMap];
  allValues = [recordMap allValues];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = allValues;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if (testCopy[2](testCopy, v13))
        {
          v14 = [CALNNotificationIdentifier alloc];
          sourceIdentifier = [v13 sourceIdentifier];
          sourceClientIdentifier = [v13 sourceClientIdentifier];
          v17 = [(CALNNotificationIdentifier *)v14 initWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:sourceClientIdentifier];

          if (v17)
          {
            recordMap2 = [(CALNInMemoryNotificationStorage *)selfCopy recordMap];
            [recordMap2 setObject:0 forKeyedSubscript:v17];

            v19 = +[CALNLogSubsystem calendar];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v27 = v17;
              _os_log_debug_impl(&dword_242909000, v19, OS_LOG_TYPE_DEBUG, "Removed notification record with identifier = %{public}@", buf, 0xCu);
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)removeAllNotificationRecords
{
  workQueue = [(CALNInMemoryNotificationStorage *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CALNInMemoryNotificationStorage_removeAllNotificationRecords__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

@end