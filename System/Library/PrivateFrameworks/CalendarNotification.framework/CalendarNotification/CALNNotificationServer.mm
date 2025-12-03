@interface CALNNotificationServer
- (CALNNotificationServer)initWithUserNotificationCenter:(id)center storage:(id)storage analyticsHandler:(id)handler deviceLockObserver:(id)observer;
- (NSArray)notificationSources;
- (id)_fetchRecordsWithSourceIdentifier:(id)identifier;
- (id)_notificationRecordResponseFromNotificationResponse:(id)response;
- (id)_notificationRecordWithSourceIdentifier:(id)identifier sourceClientIdentifier:(id)clientIdentifier;
- (id)_notificationSourceMapWithNotificationSources:(id)sources;
- (id)fetchRecordsWithSourceIdentifier:(id)identifier;
- (id)notificationSourceForSourceIdentifier:(id)identifier;
- (void)_activate;
- (void)_addRecord:(id)record;
- (void)_deactivate;
- (void)_didSetNotificationSources:(id)sources;
- (void)_removeRecordWithSourceIdentifier:(id)identifier sourceClientIdentifier:(id)clientIdentifier;
- (void)_updateRecord:(id)record;
- (void)aboutToPostNotification:(id)notification;
- (void)activate;
- (void)addRecord:(id)record;
- (void)deactivate;
- (void)removeRecordWithSourceIdentifier:(id)identifier sourceClientIdentifier:(id)clientIdentifier;
- (void)setNotificationSources:(id)sources;
- (void)updateRecord:(id)record;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation CALNNotificationServer

- (CALNNotificationServer)initWithUserNotificationCenter:(id)center storage:(id)storage analyticsHandler:(id)handler deviceLockObserver:(id)observer
{
  centerCopy = center;
  storageCopy = storage;
  handlerCopy = handler;
  observerCopy = observer;
  v25.receiver = self;
  v25.super_class = CALNNotificationServer;
  v15 = [(CALNNotificationServer *)&v25 init];
  if (v15)
  {
    objc_opt_class();
    v16 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String = [v16 UTF8String];

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(uTF8String, v18);
    workQueue = v15->_workQueue;
    v15->_workQueue = v19;

    objc_storeStrong(&v15->_userNotificationCenter, center);
    userNotificationCenter = [(CALNNotificationServer *)v15 userNotificationCenter];
    [userNotificationCenter setDelegate:v15];

    objc_storeStrong(&v15->_storage, storage);
    objc_storeStrong(&v15->_analyticsHandler, handler);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    notificationSourceMap = v15->_notificationSourceMap;
    v15->_notificationSourceMap = dictionary;

    v15->_isProtectedDataAvailable = [observerCopy hasBeenUnlockedSinceBoot];
  }

  return v15;
}

- (id)_notificationSourceMapWithNotificationSources:(id)sources
{
  v20 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = sourcesCopy;
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
        sourceIdentifier = [v10 sourceIdentifier];
        [dictionary setObject:v10 forKeyedSubscript:sourceIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [dictionary copy];
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

  workQueue = [(CALNNotificationServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CALNNotificationServer_activate__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (void)_activate
{
  workQueue = [(CALNNotificationServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  isActive = [(CALNNotificationServer *)self isActive];
  v5 = +[CALNLogSubsystem defaultCategory];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isActive)
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

    userNotificationCenter = [(CALNNotificationServer *)self userNotificationCenter];
    [userNotificationCenter activate];

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

  workQueue = [(CALNNotificationServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CALNNotificationServer_deactivate__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (void)_deactivate
{
  workQueue = [(CALNNotificationServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  isActive = [(CALNNotificationServer *)self isActive];
  v5 = +[CALNLogSubsystem defaultCategory];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isActive)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Deactivating.", buf, 2u);
    }

    userNotificationCenter = [(CALNNotificationServer *)self userNotificationCenter];
    [userNotificationCenter deactivate];

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

- (void)setNotificationSources:(id)sources
{
  v11 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v5 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = sourcesCopy;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Setting notification sources: %{public}@", &v9, 0xCu);
  }

  v6 = [(CALNNotificationServer *)self _notificationSourceMapWithNotificationSources:sourcesCopy];
  v7 = [v6 mutableCopy];
  [(CALNNotificationServer *)self setNotificationSourceMap:v7];

  [(CALNNotificationServer *)self _didSetNotificationSources:sourcesCopy];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_didSetNotificationSources:(id)sources
{
  v16 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v5 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = sourcesCopy;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Did set notification sources: %{public}@", buf, 0xCu);
  }

  v6 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = sourcesCopy;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Getting notification categories from notification sources: %{public}@.", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(sourcesCopy, "count")}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__CALNNotificationServer__didSetNotificationSources___block_invoke;
  v12[3] = &unk_278D6F2A0;
  v13 = v7;
  v8 = v7;
  [sourcesCopy enumerateObjectsUsingBlock:v12];
  v9 = [MEMORY[0x277CBEB98] setWithArray:v8];
  userNotificationCenter = [(CALNNotificationServer *)self userNotificationCenter];
  [userNotificationCenter setNotificationCategories:v9];

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
  notificationSourceMap = [(CALNNotificationServer *)self notificationSourceMap];
  allValues = [notificationSourceMap allValues];

  return allValues;
}

- (id)notificationSourceForSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  notificationSourceMap = [(CALNNotificationServer *)self notificationSourceMap];
  v6 = [notificationSourceMap objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (id)fetchRecordsWithSourceIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identifierCopy;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Requesting fetching records with source identifier: %@.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  workQueue = [(CALNNotificationServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CALNNotificationServer_fetchRecordsWithSourceIdentifier___block_invoke;
  block[3] = &unk_278D6F2C8;
  v12 = identifierCopy;
  p_buf = &buf;
  block[4] = self;
  v7 = identifierCopy;
  dispatch_sync(workQueue, block);

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

- (id)_fetchRecordsWithSourceIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  workQueue = [(CALNNotificationServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = identifierCopy;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Fetching records with source identifier: %@.", buf, 0xCu);
  }

  storage = [(CALNNotificationServer *)self storage];
  notificationRecords = [storage notificationRecords];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__CALNNotificationServer__fetchRecordsWithSourceIdentifier___block_invoke;
  v15[3] = &unk_278D6F2F0;
  v9 = identifierCopy;
  v16 = v9;
  v10 = [notificationRecords indexesOfObjectsPassingTest:v15];
  v11 = [notificationRecords objectsAtIndexes:v10];

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

- (void)addRecord:(id)record
{
  recordCopy = record;
  [(CALNNotificationServer *)self aboutToPostNotification:recordCopy];
  workQueue = [(CALNNotificationServer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__CALNNotificationServer_addRecord___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = recordCopy;
  v6 = recordCopy;
  dispatch_sync(workQueue, v7);
}

- (void)_addRecord:(id)record
{
  v29 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  workQueue = [(CALNNotificationServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sourceIdentifier = [recordCopy sourceIdentifier];
    sourceClientIdentifier = [recordCopy sourceClientIdentifier];
    *buf = 138543618;
    v22 = sourceIdentifier;
    v23 = 2114;
    v24 = sourceClientIdentifier;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Adding record with source identifier = %{public}@, source client identifier = %{public}@", buf, 0x16u);
  }

  v9 = [CALNNotificationMapper notificationRequestFromNotificationRecord:recordCopy];
  analyticsHandler = [(CALNNotificationServer *)self analyticsHandler];
  userNotificationCenter = [(CALNNotificationServer *)self userNotificationCenter];
  v20 = 0;
  v12 = [userNotificationCenter addNotificationRequest:v9 error:&v20];
  v13 = v20;

  v14 = +[CALNLogSubsystem defaultCategory];
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [v9 identifier];
      *buf = 138543618;
      v22 = identifier;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "Added notification request, identifier = %{public}@, request = %@.", buf, 0x16u);
    }

    [analyticsHandler recordPostedNotification:recordCopy];
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sourceIdentifier2 = [recordCopy sourceIdentifier];
      sourceClientIdentifier2 = [recordCopy sourceClientIdentifier];
      *buf = 138544130;
      v22 = sourceIdentifier2;
      v23 = 2114;
      v24 = sourceClientIdentifier2;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v9;
      _os_log_error_impl(&dword_242909000, v15, OS_LOG_TYPE_ERROR, "Error adding notification request. Source identifier = %{public}@, Source client identifier = %{public}@, error = %@, request = %@.", buf, 0x2Au);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updateRecord:(id)record
{
  recordCopy = record;
  [(CALNNotificationServer *)self aboutToPostNotification:recordCopy];
  workQueue = [(CALNNotificationServer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__CALNNotificationServer_updateRecord___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = recordCopy;
  v6 = recordCopy;
  dispatch_sync(workQueue, v7);
}

- (void)_updateRecord:(id)record
{
  v27 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  workQueue = [(CALNNotificationServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sourceIdentifier = [recordCopy sourceIdentifier];
    sourceClientIdentifier = [recordCopy sourceClientIdentifier];
    *buf = 138543618;
    v20 = sourceIdentifier;
    v21 = 2114;
    v22 = sourceClientIdentifier;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Updating record with source identifier = %{public}@, source client identifier = %{public}@", buf, 0x16u);
  }

  v9 = [CALNNotificationMapper notificationRequestFromNotificationRecord:recordCopy];
  userNotificationCenter = [(CALNNotificationServer *)self userNotificationCenter];
  v18 = 0;
  v11 = [userNotificationCenter replaceNotificationRequest:v9 error:&v18];
  v12 = v18;

  v13 = +[CALNLogSubsystem defaultCategory];
  v14 = v13;
  if ((v11 & 1) == 0)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    sourceIdentifier2 = [recordCopy sourceIdentifier];
    sourceClientIdentifier2 = [recordCopy sourceClientIdentifier];
    *buf = 138544130;
    v20 = sourceIdentifier2;
    v21 = 2114;
    v22 = sourceClientIdentifier2;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v9;
    _os_log_error_impl(&dword_242909000, v14, OS_LOG_TYPE_ERROR, "Error replacing notification request. Source identifier = %{public}@, Source client identifier = %{public}@, error = %@, request = %@.", buf, 0x2Au);

    goto LABEL_6;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sourceIdentifier2 = [v9 identifier];
    *buf = 138543618;
    v20 = sourceIdentifier2;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, "Replaced notification request, identifier = %{public}@, request = %@.", buf, 0x16u);
LABEL_6:
  }

LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)aboutToPostNotification:(id)notification
{
  notificationCopy = notification;
  sourceIdentifier = [notificationCopy sourceIdentifier];
  v5 = [(CALNNotificationServer *)self notificationSourceForSourceIdentifier:sourceIdentifier];

  if (objc_opt_respondsToSelector())
  {
    [v5 willPostNotification:notificationCopy];
  }
}

- (void)removeRecordWithSourceIdentifier:(id)identifier sourceClientIdentifier:(id)clientIdentifier
{
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  workQueue = [(CALNNotificationServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__CALNNotificationServer_removeRecordWithSourceIdentifier_sourceClientIdentifier___block_invoke;
  block[3] = &unk_278D6F318;
  block[4] = self;
  v12 = identifierCopy;
  v13 = clientIdentifierCopy;
  v9 = clientIdentifierCopy;
  v10 = identifierCopy;
  dispatch_sync(workQueue, block);
}

- (void)_removeRecordWithSourceIdentifier:(id)identifier sourceClientIdentifier:(id)clientIdentifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  workQueue = [(CALNNotificationServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [[CALNNotificationIdentifier alloc] initWithSourceIdentifier:identifierCopy sourceClientIdentifier:clientIdentifierCopy];
  v10 = v9;
  if (v9)
  {
    stringRepresentation = [(CALNNotificationIdentifier *)v9 stringRepresentation];
    v12 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = identifierCopy;
      v19 = 2114;
      v20 = clientIdentifierCopy;
      _os_log_impl(&dword_242909000, v12, OS_LOG_TYPE_DEFAULT, "Removing record with source identifier = %{public}@, source client identifier = %{public}@", buf, 0x16u);
    }

    userNotificationCenter = [(CALNNotificationServer *)self userNotificationCenter];
    v16 = stringRepresentation;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v14];
  }

  else
  {
    stringRepresentation = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(stringRepresentation, OS_LOG_TYPE_ERROR))
    {
      [(CALNNotificationServer *)identifierCopy _removeRecordWithSourceIdentifier:clientIdentifierCopy sourceClientIdentifier:stringRepresentation];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_notificationRecordWithSourceIdentifier:(id)identifier sourceClientIdentifier:(id)clientIdentifier
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  storage = [(CALNNotificationServer *)self storage];
  notificationRecords = [storage notificationRecords];

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __89__CALNNotificationServer__notificationRecordWithSourceIdentifier_sourceClientIdentifier___block_invoke;
  v21 = &unk_278D6F340;
  v10 = identifierCopy;
  v22 = v10;
  v11 = clientIdentifierCopy;
  v23 = v11;
  v12 = [notificationRecords indexesOfObjectsPassingTest:&v18];
  v13 = [notificationRecords objectsAtIndexes:{v12, v18, v19, v20, v21}];

  if ([v13 count] < 2)
  {
    firstObject = [v13 firstObject];
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

    firstObject = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return firstObject;
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

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  notificationCopy = notification;
  handlerCopy = handler;
  v10 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = centerCopy;
    v16 = 2112;
    v17 = notificationCopy;
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

  handlerCopy[2](handlerCopy, 6);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v9 = [(CALNNotificationServer *)self _notificationRecordResponseFromNotificationResponse:responseCopy];
  if (v9)
  {
    analyticsHandler = [(CALNNotificationServer *)self analyticsHandler];
    [analyticsHandler recordNotificationResponse:v9];

    notificationRecord = [v9 notificationRecord];
    sourceIdentifier = [notificationRecord sourceIdentifier];
    v13 = [(CALNNotificationServer *)self notificationSourceForSourceIdentifier:sourceIdentifier];
    [v13 didReceiveResponse:v9];
    sourceClientIdentifier = [notificationRecord sourceClientIdentifier];
    [(CALNNotificationServer *)self removeRecordWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:sourceClientIdentifier];

    handlerCopy[2](handlerCopy);
  }

  else
  {
    notification = [responseCopy notification];
    request = [notification request];
    identifier = [request identifier];

    v18 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CALNNotificationServer userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:];
    }
  }
}

- (id)_notificationRecordResponseFromNotificationResponse:(id)response
{
  v31 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    notification = [responseCopy notification];
    request = [notification request];
    identifier = [request identifier];
    *buf = 138543618;
    v28 = identifier;
    v29 = 2112;
    v30 = responseCopy;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Transforming notification response to notification record response. request identifier = %{public}@, response = %@.", buf, 0x16u);
  }

  notification2 = [responseCopy notification];
  request2 = [notification2 request];
  identifier2 = [request2 identifier];
  v12 = [[CALNNotificationIdentifier alloc] initWithStringRepresentation:identifier2];
  if (v12)
  {
    storage = [(CALNNotificationServer *)self storage];
    notificationRecords = [storage notificationRecords];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __78__CALNNotificationServer__notificationRecordResponseFromNotificationResponse___block_invoke;
    v25[3] = &unk_278D6F2F0;
    v26 = v12;
    v15 = [notificationRecords indexOfObjectPassingTest:v25];
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
      v24 = notification2;
      v16 = [notificationRecords objectAtIndex:v15];
      actionIdentifier = [responseCopy actionIdentifier];
      originIdentifier = [responseCopy originIdentifier];
      targetConnectionEndpoint = [responseCopy targetConnectionEndpoint];
      v17 = [CALNNotificationRecordResponse responseWithNotificationRecord:v16 actionIdentifier:actionIdentifier originIdentifier:originIdentifier targetConnectionEndpoint:targetConnectionEndpoint];

      v21 = +[CALNLogSubsystem defaultCategory];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v28 = responseCopy;
        v29 = 2112;
        v30 = v17;
        _os_log_impl(&dword_242909000, v21, OS_LOG_TYPE_DEFAULT, "Transformed notification response to notification record response. Notification response: %@. Notification record response: %@.", buf, 0x16u);
      }

      notification2 = v24;
    }
  }

  else
  {
    notificationRecords = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(notificationRecords, OS_LOG_TYPE_ERROR))
    {
      [(CALNNotificationServer *)identifier2 _notificationRecordResponseFromNotificationResponse:notificationRecords];
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