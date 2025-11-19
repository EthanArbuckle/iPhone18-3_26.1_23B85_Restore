@interface CALNNotificationServer
- (CALNNotificationServer)initWithUserNotificationCenter:(id)a3 storage:(id)a4 analyticsHandler:(id)a5 deviceLockObserver:(id)a6;
- (NSArray)notificationSources;
- (id)_fetchRecordsWithSourceIdentifier:(id)a3;
- (id)_notificationRecordResponseFromNotificationResponse:(id)a3;
- (id)_notificationRecordWithSourceIdentifier:(id)a3 sourceClientIdentifier:(id)a4;
- (id)_notificationSourceMapWithNotificationSources:(id)a3;
- (id)fetchRecordsWithSourceIdentifier:(id)a3;
- (id)notificationSourceForSourceIdentifier:(id)a3;
- (void)_activate;
- (void)_addRecord:(id)a3;
- (void)_deactivate;
- (void)_didSetNotificationSources:(id)a3;
- (void)_removeRecordWithSourceIdentifier:(id)a3 sourceClientIdentifier:(id)a4;
- (void)_updateRecord:(id)a3;
- (void)aboutToPostNotification:(id)a3;
- (void)activate;
- (void)addRecord:(id)a3;
- (void)deactivate;
- (void)removeRecordWithSourceIdentifier:(id)a3 sourceClientIdentifier:(id)a4;
- (void)setNotificationSources:(id)a3;
- (void)updateRecord:(id)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation CALNNotificationServer

- (CALNNotificationServer)initWithUserNotificationCenter:(id)a3 storage:(id)a4 analyticsHandler:(id)a5 deviceLockObserver:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = CALNNotificationServer;
  v15 = [(CALNNotificationServer *)&v25 init];
  if (v15)
  {
    objc_opt_class();
    v16 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    v17 = [v16 UTF8String];

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(v17, v18);
    workQueue = v15->_workQueue;
    v15->_workQueue = v19;

    objc_storeStrong(&v15->_userNotificationCenter, a3);
    v21 = [(CALNNotificationServer *)v15 userNotificationCenter];
    [v21 setDelegate:v15];

    objc_storeStrong(&v15->_storage, a4);
    objc_storeStrong(&v15->_analyticsHandler, a5);
    v22 = [MEMORY[0x277CBEB38] dictionary];
    notificationSourceMap = v15->_notificationSourceMap;
    v15->_notificationSourceMap = v22;

    v15->_isProtectedDataAvailable = [v14 hasBeenUnlockedSinceBoot];
  }

  return v15;
}

- (id)_notificationSourceMapWithNotificationSources:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 sourceIdentifier];
        [v4 setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)activate
{
  v3 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Requesting activation.", buf, 2u);
  }

  v4 = [(CALNNotificationServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CALNNotificationServer_activate__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (void)_activate
{
  v3 = [(CALNNotificationServer *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CALNNotificationServer *)self isActive];
  v5 = +[CALNLogSubsystem defaultCategory];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v12 = 0;
      v7 = "Cannot activate server since it is already active.";
      v8 = &v12;
LABEL_8:
      _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Activating.", buf, 2u);
    }

    v9 = [(CALNNotificationServer *)self userNotificationCenter];
    [v9 activate];

    [(CALNNotificationServer *)self setActive:1];
    v5 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v7 = "Activated.";
      v8 = &v10;
      goto LABEL_8;
    }
  }
}

- (void)deactivate
{
  v3 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Requesting deactivation.", buf, 2u);
  }

  v4 = [(CALNNotificationServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CALNNotificationServer_deactivate__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (void)_deactivate
{
  v3 = [(CALNNotificationServer *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CALNNotificationServer *)self isActive];
  v5 = +[CALNLogSubsystem defaultCategory];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Deactivating.", buf, 2u);
    }

    v7 = [(CALNNotificationServer *)self userNotificationCenter];
    [v7 deactivate];

    [(CALNNotificationServer *)self setActive:0];
    v5 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v8 = "Deactivated.";
      v9 = &v10;
LABEL_8:
      _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }
  }

  else if (v6)
  {
    *v12 = 0;
    v8 = "Cannot deactivate server since it is already inactive.";
    v9 = v12;
    goto LABEL_8;
  }
}

- (void)setNotificationSources:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Setting notification sources: %{public}@", &v9, 0xCu);
  }

  v6 = [(CALNNotificationServer *)self _notificationSourceMapWithNotificationSources:v4];
  v7 = [v6 mutableCopy];
  [(CALNNotificationServer *)self setNotificationSourceMap:v7];

  [(CALNNotificationServer *)self _didSetNotificationSources:v4];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_didSetNotificationSources:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v4;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Did set notification sources: %{public}@", buf, 0xCu);
  }

  v6 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v4;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Getting notification categories from notification sources: %{public}@.", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__CALNNotificationServer__didSetNotificationSources___block_invoke;
  v12[3] = &unk_278D6F2A0;
  v13 = v7;
  v8 = v7;
  [v4 enumerateObjectsUsingBlock:v12];
  v9 = [MEMORY[0x277CBEB98] setWithArray:v8];
  v10 = [(CALNNotificationServer *)self userNotificationCenter];
  [v10 setNotificationCategories:v9];

  v11 = *MEMORY[0x277D85DE8];
}

void __53__CALNNotificationServer__didSetNotificationSources___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 categories];
  [v2 addObjectsFromArray:v3];
}

- (NSArray)notificationSources
{
  v2 = [(CALNNotificationServer *)self notificationSourceMap];
  v3 = [v2 allValues];

  return v3;
}

- (id)notificationSourceForSourceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNNotificationServer *)self notificationSourceMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)fetchRecordsWithSourceIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Requesting fetching records with source identifier: %@.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v6 = [(CALNNotificationServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CALNNotificationServer_fetchRecordsWithSourceIdentifier___block_invoke;
  block[3] = &unk_278D6F2C8;
  v12 = v4;
  p_buf = &buf;
  block[4] = self;
  v7 = v4;
  dispatch_sync(v6, block);

  v8 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __59__CALNNotificationServer_fetchRecordsWithSourceIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchRecordsWithSourceIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_fetchRecordsWithSourceIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNNotificationServer *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Fetching records with source identifier: %@.", buf, 0xCu);
  }

  v7 = [(CALNNotificationServer *)self storage];
  v8 = [v7 notificationRecords];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__CALNNotificationServer__fetchRecordsWithSourceIdentifier___block_invoke;
  v15[3] = &unk_278D6F2F0;
  v9 = v4;
  v16 = v9;
  v10 = [v8 indexesOfObjectsPassingTest:v15];
  v11 = [v8 objectsAtIndexes:v10];

  v12 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_242909000, v12, OS_LOG_TYPE_DEFAULT, "Fetched records with source identifier: %{public}@. Fetched records: %@.", buf, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __60__CALNNotificationServer__fetchRecordsWithSourceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sourceIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)addRecord:(id)a3
{
  v4 = a3;
  [(CALNNotificationServer *)self aboutToPostNotification:v4];
  v5 = [(CALNNotificationServer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__CALNNotificationServer_addRecord___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_addRecord:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNNotificationServer *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 sourceIdentifier];
    v8 = [v4 sourceClientIdentifier];
    *buf = 138543618;
    v22 = v7;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Adding record with source identifier = %{public}@, source client identifier = %{public}@", buf, 0x16u);
  }

  v9 = [CALNNotificationMapper notificationRequestFromNotificationRecord:v4];
  v10 = [(CALNNotificationServer *)self analyticsHandler];
  v11 = [(CALNNotificationServer *)self userNotificationCenter];
  v20 = 0;
  v12 = [v11 addNotificationRequest:v9 error:&v20];
  v13 = v20;

  v14 = +[CALNLogSubsystem defaultCategory];
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v9 identifier];
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "Added notification request, identifier = %{public}@, request = %@.", buf, 0x16u);
    }

    [v10 recordPostedNotification:v4];
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = [v4 sourceIdentifier];
      v19 = [v4 sourceClientIdentifier];
      *buf = 138544130;
      v22 = v18;
      v23 = 2114;
      v24 = v19;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v9;
      _os_log_error_impl(&dword_242909000, v15, OS_LOG_TYPE_ERROR, "Error adding notification request. Source identifier = %{public}@, Source client identifier = %{public}@, error = %@, request = %@.", buf, 0x2Au);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updateRecord:(id)a3
{
  v4 = a3;
  [(CALNNotificationServer *)self aboutToPostNotification:v4];
  v5 = [(CALNNotificationServer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__CALNNotificationServer_updateRecord___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_updateRecord:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNNotificationServer *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 sourceIdentifier];
    v8 = [v4 sourceClientIdentifier];
    *buf = 138543618;
    v20 = v7;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Updating record with source identifier = %{public}@, source client identifier = %{public}@", buf, 0x16u);
  }

  v9 = [CALNNotificationMapper notificationRequestFromNotificationRecord:v4];
  v10 = [(CALNNotificationServer *)self userNotificationCenter];
  v18 = 0;
  v11 = [v10 replaceNotificationRequest:v9 error:&v18];
  v12 = v18;

  v13 = +[CALNLogSubsystem defaultCategory];
  v14 = v13;
  if ((v11 & 1) == 0)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v15 = [v4 sourceIdentifier];
    v17 = [v4 sourceClientIdentifier];
    *buf = 138544130;
    v20 = v15;
    v21 = 2114;
    v22 = v17;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v9;
    _os_log_error_impl(&dword_242909000, v14, OS_LOG_TYPE_ERROR, "Error replacing notification request. Source identifier = %{public}@, Source client identifier = %{public}@, error = %@, request = %@.", buf, 0x2Au);

    goto LABEL_6;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v9 identifier];
    *buf = 138543618;
    v20 = v15;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, "Replaced notification request, identifier = %{public}@, request = %@.", buf, 0x16u);
LABEL_6:
  }

LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)aboutToPostNotification:(id)a3
{
  v6 = a3;
  v4 = [v6 sourceIdentifier];
  v5 = [(CALNNotificationServer *)self notificationSourceForSourceIdentifier:v4];

  if (objc_opt_respondsToSelector())
  {
    [v5 willPostNotification:v6];
  }
}

- (void)removeRecordWithSourceIdentifier:(id)a3 sourceClientIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CALNNotificationServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__CALNNotificationServer_removeRecordWithSourceIdentifier_sourceClientIdentifier___block_invoke;
  block[3] = &unk_278D6F318;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)_removeRecordWithSourceIdentifier:(id)a3 sourceClientIdentifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CALNNotificationServer *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [[CALNNotificationIdentifier alloc] initWithSourceIdentifier:v6 sourceClientIdentifier:v7];
  v10 = v9;
  if (v9)
  {
    v11 = [(CALNNotificationIdentifier *)v9 stringRepresentation];
    v12 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = v6;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_242909000, v12, OS_LOG_TYPE_DEFAULT, "Removing record with source identifier = %{public}@, source client identifier = %{public}@", buf, 0x16u);
    }

    v13 = [(CALNNotificationServer *)self userNotificationCenter];
    v16 = v11;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [v13 removeDeliveredNotificationsWithIdentifiers:v14];
  }

  else
  {
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CALNNotificationServer *)v6 _removeRecordWithSourceIdentifier:v7 sourceClientIdentifier:v11];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_notificationRecordWithSourceIdentifier:(id)a3 sourceClientIdentifier:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CALNNotificationServer *)self storage];
  v9 = [v8 notificationRecords];

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __89__CALNNotificationServer__notificationRecordWithSourceIdentifier_sourceClientIdentifier___block_invoke;
  v21 = &unk_278D6F340;
  v10 = v6;
  v22 = v10;
  v11 = v7;
  v23 = v11;
  v12 = [v9 indexesOfObjectsPassingTest:&v18];
  v13 = [v9 objectsAtIndexes:{v12, v18, v19, v20, v21}];

  if ([v13 count] < 2)
  {
    v15 = [v13 firstObject];
  }

  else
  {
    v14 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v25 = v10;
      v26 = 2114;
      v27 = v11;
      v28 = 2112;
      v29 = v13;
      _os_log_error_impl(&dword_242909000, v14, OS_LOG_TYPE_ERROR, "Error: Expected storage to contain only one record that has the same source identifier and source client identifier. Source identifier: %{public}@. Source client identifier: %{public}@. Fetched records: %@.", buf, 0x20u);
    }

    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __89__CALNNotificationServer__notificationRecordWithSourceIdentifier_sourceClientIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 sourceIdentifier];
  LODWORD(v4) = [v4 isEqualToString:v5];

  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = [v3 sourceClientIdentifier];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Received user notification center delegate will present notification message. User notification center: %@. Notification: %@.", &v14, 0x16u);
  }

  v11 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:6];
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Invoking callback with options: %{public}@.", &v14, 0xCu);
  }

  v9[2](v9, 6);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CALNNotificationServer *)self _notificationRecordResponseFromNotificationResponse:v7];
  if (v9)
  {
    v10 = [(CALNNotificationServer *)self analyticsHandler];
    [v10 recordNotificationResponse:v9];

    v11 = [v9 notificationRecord];
    v12 = [v11 sourceIdentifier];
    v13 = [(CALNNotificationServer *)self notificationSourceForSourceIdentifier:v12];
    [v13 didReceiveResponse:v9];
    v14 = [v11 sourceClientIdentifier];
    [(CALNNotificationServer *)self removeRecordWithSourceIdentifier:v12 sourceClientIdentifier:v14];

    v8[2](v8);
  }

  else
  {
    v15 = [v7 notification];
    v16 = [v15 request];
    v17 = [v16 identifier];

    v18 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CALNNotificationServer userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:];
    }
  }
}

- (id)_notificationRecordResponseFromNotificationResponse:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 notification];
    v7 = [v6 request];
    v8 = [v7 identifier];
    *buf = 138543618;
    v28 = v8;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Transforming notification response to notification record response. request identifier = %{public}@, response = %@.", buf, 0x16u);
  }

  v9 = [v4 notification];
  v10 = [v9 request];
  v11 = [v10 identifier];
  v12 = [[CALNNotificationIdentifier alloc] initWithStringRepresentation:v11];
  if (v12)
  {
    v13 = [(CALNNotificationServer *)self storage];
    v14 = [v13 notificationRecords];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __78__CALNNotificationServer__notificationRecordResponseFromNotificationResponse___block_invoke;
    v25[3] = &unk_278D6F2F0;
    v26 = v12;
    v15 = [v14 indexOfObjectPassingTest:v25];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CALNNotificationServer _notificationRecordResponseFromNotificationResponse:];
      }

      v17 = 0;
    }

    else
    {
      v24 = v9;
      v16 = [v14 objectAtIndex:v15];
      v18 = [v4 actionIdentifier];
      v19 = [v4 originIdentifier];
      v20 = [v4 targetConnectionEndpoint];
      v17 = [CALNNotificationRecordResponse responseWithNotificationRecord:v16 actionIdentifier:v18 originIdentifier:v19 targetConnectionEndpoint:v20];

      v21 = +[CALNLogSubsystem defaultCategory];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v28 = v4;
        v29 = 2112;
        v30 = v17;
        _os_log_impl(&dword_242909000, v21, OS_LOG_TYPE_DEFAULT, "Transformed notification response to notification record response. Notification response: %@. Notification record response: %@.", buf, 0x16u);
      }

      v9 = v24;
    }
  }

  else
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CALNNotificationServer *)v11 _notificationRecordResponseFromNotificationResponse:v14];
    }

    v17 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __78__CALNNotificationServer__notificationRecordResponseFromNotificationResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sourceIdentifier];
  v5 = [*(a1 + 32) sourceIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [v3 sourceClientIdentifier];
    v8 = [*(a1 + 32) sourceClientIdentifier];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_removeRecordWithSourceIdentifier:(NSObject *)a3 sourceClientIdentifier:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_2_0(&dword_242909000, a2, a3, "Could not remove record because could not get notification identifier for source identifier = %{public}@, source client identifier = %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v0, v1, "Could not get record response from response. request identifier = %{public}@, response = %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_notificationRecordResponseFromNotificationResponse:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v0, v1, "Could not find notification record with notification identifier = %{public}@, records = %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_notificationRecordResponseFromNotificationResponse:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Could not get notification identifier from request identifier = %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end