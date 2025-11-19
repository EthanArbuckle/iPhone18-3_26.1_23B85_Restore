@interface CALNInMemoryNotificationStorage
- (CALNInMemoryNotificationStorage)init;
- (id)_notificationRecords;
- (id)notificationRecords;
- (void)_addNotificationRecord:(id)a3;
- (void)_removeNotificationRecordsPassingTest:(id)a3;
- (void)addNotificationRecord:(id)a3;
- (void)addNotificationRecords:(id)a3;
- (void)removeAllNotificationRecords;
- (void)removeNotificationRecordsPassingTest:(id)a3;
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
    v4 = [v3 UTF8String];

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    workQueue = v2->_workQueue;
    v2->_workQueue = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    recordMap = v2->_recordMap;
    v2->_recordMap = v8;
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
  v3 = [(CALNInMemoryNotificationStorage *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__CALNInMemoryNotificationStorage_notificationRecords__block_invoke;
  v6[3] = &unk_278D6F460;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

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
  v3 = [(CALNInMemoryNotificationStorage *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CALNInMemoryNotificationStorage *)self recordMap];
  v5 = [v4 allValues];

  return v5;
}

- (void)addNotificationRecord:(id)a3
{
  v4 = a3;
  v5 = [(CALNInMemoryNotificationStorage *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__CALNInMemoryNotificationStorage_addNotificationRecord___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_addNotificationRecord:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNInMemoryNotificationStorage *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 hasAlertContent])
  {
    if ([v4 shouldPresentAlert])
    {
      v6 = [CALNNotificationIdentifier alloc];
      v7 = [v4 sourceIdentifier];
      v8 = [v4 sourceClientIdentifier];
      v9 = [(CALNNotificationIdentifier *)v6 initWithSourceIdentifier:v7 sourceClientIdentifier:v8];

      if (v9)
      {
        v10 = [(CALNInMemoryNotificationStorage *)self recordMap];
        [v10 setObject:v4 forKeyedSubscript:v9];

        v11 = +[CALNLogSubsystem defaultCategory];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v4 sourceIdentifier];
          v13 = [v4 sourceClientIdentifier];
          v17 = 138543618;
          v18 = v12;
          v19 = 2114;
          v20 = v13;
          v14 = "Added record, source identifier = %{public}@, source client identifier = %{public}@";
LABEL_13:
          _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, v14, &v17, 0x16u);

          goto LABEL_14;
        }
      }

      else
      {
        v11 = +[CALNLogSubsystem defaultCategory];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v4 sourceIdentifier];
          v13 = [v4 sourceClientIdentifier];
          v17 = 138543618;
          v18 = v12;
          v19 = 2114;
          v20 = v13;
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
      v11 = [v4 sourceIdentifier];
      v12 = [v4 sourceClientIdentifier];
      v17 = 138543618;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v15 = "Cannot add record that should not be presented, source identifier = %{public}@, source client identifier = %{public}@";
      goto LABEL_10;
    }
  }

  else
  {
    v9 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 sourceIdentifier];
      v12 = [v4 sourceClientIdentifier];
      v17 = 138543618;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
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

- (void)addNotificationRecords:(id)a3
{
  v4 = a3;
  v5 = [(CALNInMemoryNotificationStorage *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__CALNInMemoryNotificationStorage_addNotificationRecords___block_invoke;
  v7[3] = &unk_278D6F278;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
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

- (void)removeNotificationRecordsPassingTest:(id)a3
{
  v4 = a3;
  v5 = [(CALNInMemoryNotificationStorage *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__CALNInMemoryNotificationStorage_removeNotificationRecordsPassingTest___block_invoke;
  v7[3] = &unk_278D6F488;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_removeNotificationRecordsPassingTest:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNInMemoryNotificationStorage *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v21 = self;
  v6 = [(CALNInMemoryNotificationStorage *)self recordMap];
  v7 = [v6 allValues];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v7;
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
        if (v4[2](v4, v13))
        {
          v14 = [CALNNotificationIdentifier alloc];
          v15 = [v13 sourceIdentifier];
          v16 = [v13 sourceClientIdentifier];
          v17 = [(CALNNotificationIdentifier *)v14 initWithSourceIdentifier:v15 sourceClientIdentifier:v16];

          if (v17)
          {
            v18 = [(CALNInMemoryNotificationStorage *)v21 recordMap];
            [v18 setObject:0 forKeyedSubscript:v17];

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
  v3 = [(CALNInMemoryNotificationStorage *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CALNInMemoryNotificationStorage_removeAllNotificationRecords__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_sync(v3, block);
}

@end