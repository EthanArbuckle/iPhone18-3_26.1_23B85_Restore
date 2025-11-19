@interface MFPersistence_iOS
+ (OS_os_log)log;
- (MFMailMessageLibrary)library;
- (MFPersistence_iOS)initWithPath:(id)a3 inMemoryIdentifier:(id)a4 library:(id)a5 propertyMapper:(id)a6;
- (MFServerMessagesIndexer)serverMessagesIndexer;
- (id)persistenceStatistics;
- (id)searchableIndexStatistics;
- (void)_configureAttachmentPersistenceManager;
- (void)_configureSearchableIndexManagerIfNecessary;
- (void)scheduleRecurringActivity;
- (void)setUpWithMailboxProvider:(id)a3 remoteSearchProvider:(id)a4;
- (void)setUpWithMailboxProvider:(id)a3 remoteSearchProvider:(id)a4 serverMessagesIndexerProvider:(id)a5;
- (void)test_tearDown;
@end

@implementation MFPersistence_iOS

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__MFPersistence_iOS_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_27 != -1)
  {
    dispatch_once(&log_onceToken_27, block);
  }

  v2 = log_log_27;

  return v2;
}

- (MFPersistence_iOS)initWithPath:(id)a3 inMemoryIdentifier:(id)a4 library:(id)a5 propertyMapper:(id)a6
{
  v10 = a3;
  v11 = a4;
  obj = a5;
  v12 = a6;
  v81.receiver = self;
  v81.super_class = MFPersistence_iOS;
  v13 = [(EDPersistence *)&v81 init];
  v14 = v13;
  if (v13)
  {
    [MEMORY[0x1E699B610] registerAdditionalPropertiesForPropertyMapper:v12];
    v79 = v11;
    if (v11)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v11, @"Envelope Index"];
      v16 = [MFProtectedDatabasePersistence_iOS alloc];
      v17 = [(EDPersistence *)v13 hookRegistry];
      v18 = [(EDProtectedDatabasePersistence *)v16 initWithBasePath:0 hookRegistry:v17];
      v19 = v10;

      v20 = [MFPersistenceDatabase_iOS alloc];
      v21 = +[(EDPersistenceDatabaseSchema *)MFPersistenceDatabaseSchema_iOS];
      v22 = +[(EDPersistenceDatabaseSchema *)MFPersistenceDatabaseSchema_iOS];
      v23 = [(MFPersistenceDatabase_iOS *)v20 initWithBasePath:0 databaseName:v15 minimumCachedReaderConnections:3 schema:v21 protectedSchema:v22 propertyMapper:v12 protectedDatabasePersistence:v18];
      database = v13->_database;
      v13->_database = v23;
    }

    else
    {
      v25 = [MFProtectedDatabasePersistence_iOS alloc];
      v26 = [(EDPersistence *)v13 hookRegistry];
      v15 = [(EDProtectedDatabasePersistence *)v25 initWithBasePath:v10 hookRegistry:v26];

      v27 = [MFPersistenceDatabase_iOS alloc];
      v18 = +[(EDPersistenceDatabaseSchema *)MFPersistenceDatabaseSchema_iOS];
      v21 = +[(EDPersistenceDatabaseSchema *)MFPersistenceDatabaseSchema_iOS];
      v19 = v10;
      v28 = [(MFPersistenceDatabase_iOS *)v27 initWithBasePath:v10 databaseName:@"Envelope Index" minimumCachedReaderConnections:3 schema:v18 protectedSchema:v21 propertyMapper:v12 protectedDatabasePersistence:v15];
      v22 = v13->_database;
      v13->_database = v28;
    }

    v10 = v19;
    v11 = v79;
    [(EDPersistenceDatabase *)v13->_database setSetupIsComplete:1];
    objc_storeWeak(&v13->_library, obj);
    v29 = objc_alloc(MEMORY[0x1E699B548]);
    v30 = v13->_database;
    v31 = [(EDPersistence *)v14 hookRegistry];
    v32 = [v29 initWithDatabase:v30 hookRegistry:v31];
    conversationPersistence = v14->_conversationPersistence;
    v14->_conversationPersistence = v32;

    v34 = [[MFLocalActionPersistence_iOS alloc] initWithLibrary:obj database:v14->_database];
    localActionPersistence = v14->_localActionPersistence;
    v14->_localActionPersistence = &v34->super;

    v36 = [[MFServerMessagePersistenceFactory_iOS alloc] initWithLibrary:obj database:v14->_database];
    serverMessagePersistenceFactory = v14->_serverMessagePersistenceFactory;
    v14->_serverMessagePersistenceFactory = &v36->super;

    v38 = objc_alloc(MEMORY[0x1E699B648]);
    v39 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:1];
    v40 = [v38 initWithBaseURL:v39 diskCapacity:104857600];
    remoteContentCacheConfiguration = v14->_remoteContentCacheConfiguration;
    v14->_remoteContentCacheConfiguration = v40;

    v42 = objc_alloc(MEMORY[0x1E699AE40]);
    v43 = [(EDRemoteContentCacheConfiguration *)v14->_remoteContentCacheConfiguration diskCapacity];
    v44 = [(EDRemoteContentCacheConfiguration *)v14->_remoteContentCacheConfiguration cacheURL];
    v45 = [v42 initWithMemoryCapacity:0 diskCapacity:v43 directoryURL:v44];
    remoteContentURLCache = v14->_remoteContentURLCache;
    v14->_remoteContentURLCache = v45;

    v47 = objc_alloc(MEMORY[0x1E699AE50]);
    v48 = [v47 initWithCache:v14->_remoteContentURLCache sourceBundleIdentifier:*MEMORY[0x1E69B17F0]];
    remoteContentURLSession = v14->_remoteContentURLSession;
    v14->_remoteContentURLSession = v48;

    v50 = +[MFMailMessageLibrary canUsePersistence];
    v51 = [objc_alloc(MEMORY[0x1E699B658]) initWithDatabase:v14->_database useAdditionalTable:v50];
    remoteContentPersistence = v14->_remoteContentPersistence;
    v14->_remoteContentPersistence = v51;

    v53 = [objc_alloc(MEMORY[0x1E699B650]) initWithRemoteContentPersistence:v14->_remoteContentPersistence contentRuleListManager:0 urlSession:v14->_remoteContentURLSession];
    remoteContentManager = v14->_remoteContentManager;
    v14->_remoteContentManager = v53;

    v55 = [MEMORY[0x1E699B7B0] currentDevice];
    LODWORD(v44) = [v55 isInternal];

    if (v44)
    {
      v56 = [objc_alloc(MEMORY[0x1E699B6A0]) initWithPersistence:v14];
      diagnosticsController = v14->_diagnosticsController;
      v14->_diagnosticsController = v56;
    }

    v58 = objc_alloc(MEMORY[0x1E699B6C8]);
    v59 = v14->_database;
    v60 = [(EDPersistence *)v14 blockedSenderManager];
    v61 = [(EDPersistence *)v14 hookRegistry];
    v62 = [v58 initWithDatabase:v59 blockedSenderManager:v60 hookRegistry:v61 contactStore:0];
    senderPersistence = v14->_senderPersistence;
    v14->_senderPersistence = v62;

    v64 = [objc_alloc(MEMORY[0x1E699B588]) initWithDatabase:v14->_database];
    mailboxActionPersistence = v14->_mailboxActionPersistence;
    v14->_mailboxActionPersistence = v64;

    v66 = [objc_alloc(MEMORY[0x1E699B678]) initWithDatabase:v14->_database];
    richLinkPersistence = v14->_richLinkPersistence;
    v14->_richLinkPersistence = v66;

    v68 = objc_alloc(MEMORY[0x1E699B510]);
    v69 = v14->_database;
    v70 = [(EDPersistence *)v14 hookRegistry];
    v71 = [v68 initWithDatabase:v69 hookRegistry:v70];
    businessPersistence = v14->_businessPersistence;
    v14->_businessPersistence = v71;

    v73 = [MFCategoryPersistence_iOS alloc];
    v74 = v14->_database;
    v75 = [(EDPersistence *)v14 hookRegistry];
    v76 = [(EDCategoryPersistence *)v73 initWithDatabase:v74 hookResponder:v75];
    categoryPersistence = v14->_categoryPersistence;
    v14->_categoryPersistence = v76;
  }

  return v14;
}

- (void)setUpWithMailboxProvider:(id)a3 remoteSearchProvider:(id)a4
{
  v97 = a3;
  v99 = a4;
  v6 = [MFMailboxPersistence_iOS alloc];
  v7 = [(MFPersistence_iOS *)self database];
  v8 = [(MFPersistence_iOS *)self library];
  v9 = [(MFMailboxPersistence_iOS *)v6 initWithMailboxProvider:v97 database:v7 library:v8];
  mailboxPersistence = self->_mailboxPersistence;
  self->_mailboxPersistence = v9;

  v11 = [MFMessagePersistence_iOS alloc];
  v12 = [(MFPersistence_iOS *)self mailboxPersistence];
  v13 = [(MFPersistence_iOS *)self database];
  v14 = [(MFPersistence_iOS *)self userProfileProvider];
  v15 = [(EDPersistence *)self blockedSenderManager];
  v16 = [(EDPersistence *)self vipManager];
  v17 = [(EDPersistence *)self hookRegistry];
  v18 = [(MFPersistence_iOS *)self library];
  v19 = [(MFMessagePersistence_iOS *)v11 initWithMailboxPersistence:v12 database:v13 userProfileProvider:v14 blockedSenderManager:v15 vipReader:v16 hookRegistry:v17 library:v18];
  messagePersistence = self->_messagePersistence;
  self->_messagePersistence = v19;

  v21 = objc_alloc(MEMORY[0x1E699B500]);
  businessPersistence = self->_businessPersistence;
  categoryPersistence = self->_categoryPersistence;
  v24 = self->_messagePersistence;
  v25 = [(EDPersistence *)self hookRegistry];
  v26 = [v21 initWithBusinessPersistence:businessPersistence categoryPersistence:categoryPersistence messagePersistence:v24 hookRegistry:v25];
  businessCloudStorage = self->_businessCloudStorage;
  self->_businessCloudStorage = v26;

  v28 = objc_alloc(MEMORY[0x1E699B518]);
  v29 = self->_businessPersistence;
  v30 = self->_messagePersistence;
  accountsProvider = self->_accountsProvider;
  v32 = [(EDPersistence *)self hookRegistry];
  v33 = [v28 initWithBusinessPersistence:v29 messagePersistence:v30 accountsProvider:accountsProvider hookRegistry:v32];
  categorizationSyncManager = self->_categorizationSyncManager;
  self->_categorizationSyncManager = v33;

  v35 = objc_alloc(MEMORY[0x1E699B5D0]);
  v36 = [(MFPersistence_iOS *)self accountsProvider];
  v37 = self->_mailboxPersistence;
  v38 = self->_messagePersistence;
  v39 = [(EDPersistence *)self vipManager];
  v98 = [v35 initWithAccountsProvider:v36 mailboxPersistence:v37 messagePersistence:v38 vipManager:v39];

  v40 = objc_alloc(MEMORY[0x1E699B5C8]);
  v41 = [(MFPersistence_iOS *)self database];
  v42 = [v41 schema];
  v43 = [(MFPersistence_iOS *)self database];
  v44 = [v43 protectedSchema];
  v45 = [v40 initWithSchema:v42 protectedSchema:v44 messagePersistence:self->_messagePersistence queryTransformer:v98];

  v96 = v45;
  [(EDMessagePersistence *)self->_messagePersistence setQueryParser:v45];
  v46 = objc_alloc(MEMORY[0x1E699B638]);
  database = self->_database;
  v48 = [(EDPersistence *)self hookRegistry];
  v49 = [v46 initWithDatabase:database hookRegistry:v48];
  readLaterPersistence = self->_readLaterPersistence;
  self->_readLaterPersistence = v49;

  v51 = objc_alloc(MEMORY[0x1E699B4F0]);
  v52 = self->_messagePersistence;
  v53 = [(MFPersistence_iOS *)self remoteContentURLSession];
  v54 = [v51 initWithMessagePersistence:v52 urlSession:v53];
  bimiManager = self->_bimiManager;
  self->_bimiManager = v54;

  v56 = [MFMessageChangeManager_iOS alloc];
  v95 = [(MFPersistence_iOS *)self library];
  v94 = [(MFPersistence_iOS *)self database];
  v57 = [(MFPersistence_iOS *)self localActionPersistence];
  v58 = self->_messagePersistence;
  v59 = [(MFPersistence_iOS *)self serverMessagePersistenceFactory];
  v60 = [(MFPersistence_iOS *)self readLaterPersistence];
  v61 = [(MFPersistence_iOS *)self categoryPersistence];
  v62 = self->_bimiManager;
  v63 = [(EDPersistence *)self hookRegistry];
  v64 = [(EDPersistence *)self hookRegistry];
  v65 = [(MFMessageChangeManager_iOS *)v56 initWithLibrary:v95 database:v94 localActionPersistence:v57 messagePersistence:v58 serverMessagePersistenceFactory:v59 readLaterPersistence:v60 categoryPersistence:v61 bimiManager:v62 hookResponder:v63 hookRegistry:v64];
  messageChangeManager = self->_messageChangeManager;
  self->_messageChangeManager = v65;

  v67 = [objc_alloc(MEMORY[0x1E699B4E8]) initWithDatabase:self->_database messagePersistence:self->_messagePersistence];
  attachmentPersistenceManager = self->_attachmentPersistenceManager;
  self->_attachmentPersistenceManager = v67;

  v69 = objc_alloc(MEMORY[0x1E699B6F0]);
  v70 = self->_messagePersistence;
  v71 = [(MFPersistence_iOS *)self categoryPersistence];
  v72 = [(MFPersistence_iOS *)self database];
  v73 = [(EDPersistence *)self hookRegistry];
  v74 = [(EDPersistence *)self vipManager];
  v75 = [(EDPersistence *)self blockedSenderManager];
  v76 = [v69 initWithMessagePersistence:v70 categoryPersistence:v71 database:v72 hookRegistry:v73 vipManager:v74 blockedSenderManager:v75];
  threadPersistence = self->_threadPersistence;
  self->_threadPersistence = v76;

  v78 = objc_alloc(MEMORY[0x1E699B640]);
  v79 = [(EDPersistence *)self hookRegistry];
  v80 = self->_messagePersistence;
  v81 = [(EDPersistence *)self alarmScheduler];
  v82 = [v78 initWithHookRegistry:v79 messagePersistence:v80 alarmScheduler:v81];
  remindMeNotificationController = self->_remindMeNotificationController;
  self->_remindMeNotificationController = v82;

  [(MFPersistence_iOS *)self _configureAttachmentPersistenceManager];
  v84 = objc_alloc(MEMORY[0x1E699B558]);
  v85 = self->_database;
  v86 = self->_messagePersistence;
  v87 = [(EDPersistence *)self hookRegistry];
  v88 = [v84 initWithDatabase:v85 messagePersistence:v86 hookResponder:v87];
  dataDetectionPersistence = self->_dataDetectionPersistence;
  self->_dataDetectionPersistence = v88;

  v90 = [(EDPersistence *)self hookRegistry];
  [v90 registerMessageChangeHookResponder:self->_dataDetectionPersistence];

  [(MFPersistence_iOS *)self _configureSearchableIndexManagerIfNecessary];
  if (v99 && self->_searchableIndexManager)
  {
    v91 = [objc_alloc(MEMORY[0x1E699B540]) initWithSearchableIndexManager:self->_searchableIndexManager messagePersistence:self->_messagePersistence messageQueryTransformer:v98];
    v92 = [objc_alloc(MEMORY[0x1E699B680]) initWithLocalSearchProvider:v91 remoteSearchProvider:v99];
    searchProvider = self->_searchProvider;
    self->_searchProvider = v92;
  }
}

- (void)_configureSearchableIndexManagerIfNecessary
{
  v3 = MFUserAgent();
  v4 = [v3 canUseSpotlightIndex];

  if (v4)
  {
    v5 = [MFSearchableIndexManager_iOS alloc];
    database = self->_database;
    v7 = [(MFPersistence_iOS *)self messagePersistence];
    v8 = [(MFPersistence_iOS *)self richLinkPersistence];
    v9 = [(EDPersistence *)self hookRegistry];
    v10 = [(MFSearchableIndexManager_iOS *)v5 initWithDatabase:database messagePersistence:v7 richLinkPersistence:v8 hookResponder:v9];
    searchableIndexManager = self->_searchableIndexManager;
    self->_searchableIndexManager = v10;

    v12 = [(EDPersistence *)self hookRegistry];
    [v12 registerMessageChangeHookResponder:self->_searchableIndexManager];

    v13 = [(EDPersistence *)self hookRegistry];
    [v13 registerCategoryChangeHookResponder:self->_searchableIndexManager];

    v14 = +[MFPersistence_iOS log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "User agent says canUseSpotlightIndex - Enabling searchable index.", v15, 2u);
    }
  }
}

- (void)_configureAttachmentPersistenceManager
{
  v3 = [(EDPersistence *)self hookRegistry];
  [v3 registerMessageChangeHookResponder:self->_attachmentPersistenceManager];
}

- (void)scheduleRecurringActivity
{
  v4.receiver = self;
  v4.super_class = MFPersistence_iOS;
  [(EDPersistence *)&v4 scheduleRecurringActivity];
  v3 = [(MFPersistence_iOS *)self library];
  [v3 scheduleRecurringActivity];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MFPersistence_iOS.m" lineNumber:209 description:{@"%s can only be called from unit tests", "-[MFPersistence_iOS test_tearDown]"}];
  }

  v4 = [(MFPersistence_iOS *)self businessPersistence];
  [v4 test_tearDown];

  v7.receiver = self;
  v7.super_class = MFPersistence_iOS;
  [(EDPersistence *)&v7 test_tearDown];
  v5 = [(MFPersistence_iOS *)self threadPersistence];
  [v5 test_tearDown];
}

- (id)persistenceStatistics
{
  v3 = [(MFPersistence_iOS *)self messagePersistence];
  v4 = [v3 collectStatistics];

  v13.receiver = self;
  v13.super_class = MFPersistence_iOS;
  v5 = [(EDPersistence *)&v13 persistenceStateWithStatistics:v4];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "protectedDataAvailable")}];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E699AAC8]];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "messagesMarkedAsJournaled")}];
  [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x1E699AA90]];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "mailboxesNeedingReconcilication")}];
  [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x1E699AA50]];

  v10 = [(MFPersistence_iOS *)self searchableIndexStatistics];
  [v6 addEntriesFromDictionary:v10];

  if ([v4 protectedDataAvailable])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "protectedMessageData")}];
    [v6 setObject:v11 forKeyedSubscript:*MEMORY[0x1E699AAD0]];
  }

  return v6;
}

- (id)searchableIndexStatistics
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(MFPersistence_iOS *)self searchableIndexManager];
  v4 = [v3 persistence];
  v5 = [v4 statistics];
  v6 = [v5 mutableCopy];

  v7 = objc_opt_new();
  v8 = [(MFPersistence_iOS *)self serverMessagesIndexer];
  v9 = [v7 completionHandlerAdapter];
  [v8 getIndexingStatisticsWithCompletion:v9];

  v10 = [v7 future];
  v17 = 0;
  v11 = [v10 resultWithTimeout:&v17 error:60.0];
  v12 = v17;

  if (v11)
  {
    [v6 addEntriesFromDictionary:v11];
  }

  else
  {
    v13 = +[MFPersistence_iOS log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "Error getting remote indexing statistics: %@", buf, 0xCu);
    }
  }

  v14 = [v6 copy];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (MFMailMessageLibrary)library
{
  WeakRetained = objc_loadWeakRetained(&self->_library);

  return WeakRetained;
}

- (void)setUpWithMailboxProvider:(id)a3 remoteSearchProvider:(id)a4 serverMessagesIndexerProvider:(id)a5
{
  v8 = a4;
  v11 = a3;
  v9 = _Block_copy(a5);
  indexerProvider = self->_indexerProvider;
  self->_indexerProvider = v9;

  [(MFPersistence_iOS *)self setUpWithMailboxProvider:v11 remoteSearchProvider:v8];
}

- (MFServerMessagesIndexer)serverMessagesIndexer
{
  indexerProvider = self->_indexerProvider;
  if (indexerProvider)
  {
    indexerProvider = (indexerProvider)[2](indexerProvider, a2);
    v2 = vars8;
  }

  return indexerProvider;
}

@end