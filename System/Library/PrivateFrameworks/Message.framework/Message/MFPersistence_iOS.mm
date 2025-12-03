@interface MFPersistence_iOS
+ (OS_os_log)log;
- (MFMailMessageLibrary)library;
- (MFPersistence_iOS)initWithPath:(id)path inMemoryIdentifier:(id)identifier library:(id)library propertyMapper:(id)mapper;
- (MFServerMessagesIndexer)serverMessagesIndexer;
- (id)persistenceStatistics;
- (id)searchableIndexStatistics;
- (void)_configureAttachmentPersistenceManager;
- (void)_configureSearchableIndexManagerIfNecessary;
- (void)scheduleRecurringActivity;
- (void)setUpWithMailboxProvider:(id)provider remoteSearchProvider:(id)searchProvider;
- (void)setUpWithMailboxProvider:(id)provider remoteSearchProvider:(id)searchProvider serverMessagesIndexerProvider:(id)indexerProvider;
- (void)test_tearDown;
@end

@implementation MFPersistence_iOS

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__MFPersistence_iOS_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_27 != -1)
  {
    dispatch_once(&log_onceToken_27, block);
  }

  v2 = log_log_27;

  return v2;
}

- (MFPersistence_iOS)initWithPath:(id)path inMemoryIdentifier:(id)identifier library:(id)library propertyMapper:(id)mapper
{
  pathCopy = path;
  identifierCopy = identifier;
  obj = library;
  mapperCopy = mapper;
  v81.receiver = self;
  v81.super_class = MFPersistence_iOS;
  v13 = [(EDPersistence *)&v81 init];
  v14 = v13;
  if (v13)
  {
    [MEMORY[0x1E699B610] registerAdditionalPropertiesForPropertyMapper:mapperCopy];
    v79 = identifierCopy;
    if (identifierCopy)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", identifierCopy, @"Envelope Index"];
      v16 = [MFProtectedDatabasePersistence_iOS alloc];
      hookRegistry = [(EDPersistence *)v13 hookRegistry];
      v18 = [(EDProtectedDatabasePersistence *)v16 initWithBasePath:0 hookRegistry:hookRegistry];
      v19 = pathCopy;

      v20 = [MFPersistenceDatabase_iOS alloc];
      v21 = +[(EDPersistenceDatabaseSchema *)MFPersistenceDatabaseSchema_iOS];
      v22 = +[(EDPersistenceDatabaseSchema *)MFPersistenceDatabaseSchema_iOS];
      v23 = [(MFPersistenceDatabase_iOS *)v20 initWithBasePath:0 databaseName:v15 minimumCachedReaderConnections:3 schema:v21 protectedSchema:v22 propertyMapper:mapperCopy protectedDatabasePersistence:v18];
      database = v13->_database;
      v13->_database = v23;
    }

    else
    {
      v25 = [MFProtectedDatabasePersistence_iOS alloc];
      hookRegistry2 = [(EDPersistence *)v13 hookRegistry];
      v15 = [(EDProtectedDatabasePersistence *)v25 initWithBasePath:pathCopy hookRegistry:hookRegistry2];

      v27 = [MFPersistenceDatabase_iOS alloc];
      v18 = +[(EDPersistenceDatabaseSchema *)MFPersistenceDatabaseSchema_iOS];
      v21 = +[(EDPersistenceDatabaseSchema *)MFPersistenceDatabaseSchema_iOS];
      v19 = pathCopy;
      v28 = [(MFPersistenceDatabase_iOS *)v27 initWithBasePath:pathCopy databaseName:@"Envelope Index" minimumCachedReaderConnections:3 schema:v18 protectedSchema:v21 propertyMapper:mapperCopy protectedDatabasePersistence:v15];
      v22 = v13->_database;
      v13->_database = v28;
    }

    pathCopy = v19;
    identifierCopy = v79;
    [(EDPersistenceDatabase *)v13->_database setSetupIsComplete:1];
    objc_storeWeak(&v13->_library, obj);
    v29 = objc_alloc(MEMORY[0x1E699B548]);
    v30 = v13->_database;
    hookRegistry3 = [(EDPersistence *)v14 hookRegistry];
    v32 = [v29 initWithDatabase:v30 hookRegistry:hookRegistry3];
    conversationPersistence = v14->_conversationPersistence;
    v14->_conversationPersistence = v32;

    v34 = [[MFLocalActionPersistence_iOS alloc] initWithLibrary:obj database:v14->_database];
    localActionPersistence = v14->_localActionPersistence;
    v14->_localActionPersistence = &v34->super;

    v36 = [[MFServerMessagePersistenceFactory_iOS alloc] initWithLibrary:obj database:v14->_database];
    serverMessagePersistenceFactory = v14->_serverMessagePersistenceFactory;
    v14->_serverMessagePersistenceFactory = &v36->super;

    v38 = objc_alloc(MEMORY[0x1E699B648]);
    v39 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:1];
    v40 = [v38 initWithBaseURL:v39 diskCapacity:104857600];
    remoteContentCacheConfiguration = v14->_remoteContentCacheConfiguration;
    v14->_remoteContentCacheConfiguration = v40;

    v42 = objc_alloc(MEMORY[0x1E699AE40]);
    diskCapacity = [(EDRemoteContentCacheConfiguration *)v14->_remoteContentCacheConfiguration diskCapacity];
    cacheURL = [(EDRemoteContentCacheConfiguration *)v14->_remoteContentCacheConfiguration cacheURL];
    v45 = [v42 initWithMemoryCapacity:0 diskCapacity:diskCapacity directoryURL:cacheURL];
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

    currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
    LODWORD(cacheURL) = [currentDevice isInternal];

    if (cacheURL)
    {
      v56 = [objc_alloc(MEMORY[0x1E699B6A0]) initWithPersistence:v14];
      diagnosticsController = v14->_diagnosticsController;
      v14->_diagnosticsController = v56;
    }

    v58 = objc_alloc(MEMORY[0x1E699B6C8]);
    v59 = v14->_database;
    blockedSenderManager = [(EDPersistence *)v14 blockedSenderManager];
    hookRegistry4 = [(EDPersistence *)v14 hookRegistry];
    v62 = [v58 initWithDatabase:v59 blockedSenderManager:blockedSenderManager hookRegistry:hookRegistry4 contactStore:0];
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
    hookRegistry5 = [(EDPersistence *)v14 hookRegistry];
    v71 = [v68 initWithDatabase:v69 hookRegistry:hookRegistry5];
    businessPersistence = v14->_businessPersistence;
    v14->_businessPersistence = v71;

    v73 = [MFCategoryPersistence_iOS alloc];
    v74 = v14->_database;
    hookRegistry6 = [(EDPersistence *)v14 hookRegistry];
    v76 = [(EDCategoryPersistence *)v73 initWithDatabase:v74 hookResponder:hookRegistry6];
    categoryPersistence = v14->_categoryPersistence;
    v14->_categoryPersistence = v76;
  }

  return v14;
}

- (void)setUpWithMailboxProvider:(id)provider remoteSearchProvider:(id)searchProvider
{
  providerCopy = provider;
  searchProviderCopy = searchProvider;
  v6 = [MFMailboxPersistence_iOS alloc];
  database = [(MFPersistence_iOS *)self database];
  library = [(MFPersistence_iOS *)self library];
  v9 = [(MFMailboxPersistence_iOS *)v6 initWithMailboxProvider:providerCopy database:database library:library];
  mailboxPersistence = self->_mailboxPersistence;
  self->_mailboxPersistence = v9;

  v11 = [MFMessagePersistence_iOS alloc];
  mailboxPersistence = [(MFPersistence_iOS *)self mailboxPersistence];
  database2 = [(MFPersistence_iOS *)self database];
  userProfileProvider = [(MFPersistence_iOS *)self userProfileProvider];
  blockedSenderManager = [(EDPersistence *)self blockedSenderManager];
  vipManager = [(EDPersistence *)self vipManager];
  hookRegistry = [(EDPersistence *)self hookRegistry];
  library2 = [(MFPersistence_iOS *)self library];
  v19 = [(MFMessagePersistence_iOS *)v11 initWithMailboxPersistence:mailboxPersistence database:database2 userProfileProvider:userProfileProvider blockedSenderManager:blockedSenderManager vipReader:vipManager hookRegistry:hookRegistry library:library2];
  messagePersistence = self->_messagePersistence;
  self->_messagePersistence = v19;

  v21 = objc_alloc(MEMORY[0x1E699B500]);
  businessPersistence = self->_businessPersistence;
  categoryPersistence = self->_categoryPersistence;
  v24 = self->_messagePersistence;
  hookRegistry2 = [(EDPersistence *)self hookRegistry];
  v26 = [v21 initWithBusinessPersistence:businessPersistence categoryPersistence:categoryPersistence messagePersistence:v24 hookRegistry:hookRegistry2];
  businessCloudStorage = self->_businessCloudStorage;
  self->_businessCloudStorage = v26;

  v28 = objc_alloc(MEMORY[0x1E699B518]);
  v29 = self->_businessPersistence;
  v30 = self->_messagePersistence;
  accountsProvider = self->_accountsProvider;
  hookRegistry3 = [(EDPersistence *)self hookRegistry];
  v33 = [v28 initWithBusinessPersistence:v29 messagePersistence:v30 accountsProvider:accountsProvider hookRegistry:hookRegistry3];
  categorizationSyncManager = self->_categorizationSyncManager;
  self->_categorizationSyncManager = v33;

  v35 = objc_alloc(MEMORY[0x1E699B5D0]);
  accountsProvider = [(MFPersistence_iOS *)self accountsProvider];
  v37 = self->_mailboxPersistence;
  v38 = self->_messagePersistence;
  vipManager2 = [(EDPersistence *)self vipManager];
  v98 = [v35 initWithAccountsProvider:accountsProvider mailboxPersistence:v37 messagePersistence:v38 vipManager:vipManager2];

  v40 = objc_alloc(MEMORY[0x1E699B5C8]);
  database3 = [(MFPersistence_iOS *)self database];
  schema = [database3 schema];
  database4 = [(MFPersistence_iOS *)self database];
  protectedSchema = [database4 protectedSchema];
  v45 = [v40 initWithSchema:schema protectedSchema:protectedSchema messagePersistence:self->_messagePersistence queryTransformer:v98];

  v96 = v45;
  [(EDMessagePersistence *)self->_messagePersistence setQueryParser:v45];
  v46 = objc_alloc(MEMORY[0x1E699B638]);
  database = self->_database;
  hookRegistry4 = [(EDPersistence *)self hookRegistry];
  v49 = [v46 initWithDatabase:database hookRegistry:hookRegistry4];
  readLaterPersistence = self->_readLaterPersistence;
  self->_readLaterPersistence = v49;

  v51 = objc_alloc(MEMORY[0x1E699B4F0]);
  v52 = self->_messagePersistence;
  remoteContentURLSession = [(MFPersistence_iOS *)self remoteContentURLSession];
  v54 = [v51 initWithMessagePersistence:v52 urlSession:remoteContentURLSession];
  bimiManager = self->_bimiManager;
  self->_bimiManager = v54;

  v56 = [MFMessageChangeManager_iOS alloc];
  library3 = [(MFPersistence_iOS *)self library];
  database5 = [(MFPersistence_iOS *)self database];
  localActionPersistence = [(MFPersistence_iOS *)self localActionPersistence];
  v58 = self->_messagePersistence;
  serverMessagePersistenceFactory = [(MFPersistence_iOS *)self serverMessagePersistenceFactory];
  readLaterPersistence = [(MFPersistence_iOS *)self readLaterPersistence];
  categoryPersistence = [(MFPersistence_iOS *)self categoryPersistence];
  v62 = self->_bimiManager;
  hookRegistry5 = [(EDPersistence *)self hookRegistry];
  hookRegistry6 = [(EDPersistence *)self hookRegistry];
  v65 = [(MFMessageChangeManager_iOS *)v56 initWithLibrary:library3 database:database5 localActionPersistence:localActionPersistence messagePersistence:v58 serverMessagePersistenceFactory:serverMessagePersistenceFactory readLaterPersistence:readLaterPersistence categoryPersistence:categoryPersistence bimiManager:v62 hookResponder:hookRegistry5 hookRegistry:hookRegistry6];
  messageChangeManager = self->_messageChangeManager;
  self->_messageChangeManager = v65;

  v67 = [objc_alloc(MEMORY[0x1E699B4E8]) initWithDatabase:self->_database messagePersistence:self->_messagePersistence];
  attachmentPersistenceManager = self->_attachmentPersistenceManager;
  self->_attachmentPersistenceManager = v67;

  v69 = objc_alloc(MEMORY[0x1E699B6F0]);
  v70 = self->_messagePersistence;
  categoryPersistence2 = [(MFPersistence_iOS *)self categoryPersistence];
  database6 = [(MFPersistence_iOS *)self database];
  hookRegistry7 = [(EDPersistence *)self hookRegistry];
  vipManager3 = [(EDPersistence *)self vipManager];
  blockedSenderManager2 = [(EDPersistence *)self blockedSenderManager];
  v76 = [v69 initWithMessagePersistence:v70 categoryPersistence:categoryPersistence2 database:database6 hookRegistry:hookRegistry7 vipManager:vipManager3 blockedSenderManager:blockedSenderManager2];
  threadPersistence = self->_threadPersistence;
  self->_threadPersistence = v76;

  v78 = objc_alloc(MEMORY[0x1E699B640]);
  hookRegistry8 = [(EDPersistence *)self hookRegistry];
  v80 = self->_messagePersistence;
  alarmScheduler = [(EDPersistence *)self alarmScheduler];
  v82 = [v78 initWithHookRegistry:hookRegistry8 messagePersistence:v80 alarmScheduler:alarmScheduler];
  remindMeNotificationController = self->_remindMeNotificationController;
  self->_remindMeNotificationController = v82;

  [(MFPersistence_iOS *)self _configureAttachmentPersistenceManager];
  v84 = objc_alloc(MEMORY[0x1E699B558]);
  v85 = self->_database;
  v86 = self->_messagePersistence;
  hookRegistry9 = [(EDPersistence *)self hookRegistry];
  v88 = [v84 initWithDatabase:v85 messagePersistence:v86 hookResponder:hookRegistry9];
  dataDetectionPersistence = self->_dataDetectionPersistence;
  self->_dataDetectionPersistence = v88;

  hookRegistry10 = [(EDPersistence *)self hookRegistry];
  [hookRegistry10 registerMessageChangeHookResponder:self->_dataDetectionPersistence];

  [(MFPersistence_iOS *)self _configureSearchableIndexManagerIfNecessary];
  if (searchProviderCopy && self->_searchableIndexManager)
  {
    v91 = [objc_alloc(MEMORY[0x1E699B540]) initWithSearchableIndexManager:self->_searchableIndexManager messagePersistence:self->_messagePersistence messageQueryTransformer:v98];
    v92 = [objc_alloc(MEMORY[0x1E699B680]) initWithLocalSearchProvider:v91 remoteSearchProvider:searchProviderCopy];
    searchProvider = self->_searchProvider;
    self->_searchProvider = v92;
  }
}

- (void)_configureSearchableIndexManagerIfNecessary
{
  v3 = MFUserAgent();
  canUseSpotlightIndex = [v3 canUseSpotlightIndex];

  if (canUseSpotlightIndex)
  {
    v5 = [MFSearchableIndexManager_iOS alloc];
    database = self->_database;
    messagePersistence = [(MFPersistence_iOS *)self messagePersistence];
    richLinkPersistence = [(MFPersistence_iOS *)self richLinkPersistence];
    hookRegistry = [(EDPersistence *)self hookRegistry];
    v10 = [(MFSearchableIndexManager_iOS *)v5 initWithDatabase:database messagePersistence:messagePersistence richLinkPersistence:richLinkPersistence hookResponder:hookRegistry];
    searchableIndexManager = self->_searchableIndexManager;
    self->_searchableIndexManager = v10;

    hookRegistry2 = [(EDPersistence *)self hookRegistry];
    [hookRegistry2 registerMessageChangeHookResponder:self->_searchableIndexManager];

    hookRegistry3 = [(EDPersistence *)self hookRegistry];
    [hookRegistry3 registerCategoryChangeHookResponder:self->_searchableIndexManager];

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
  hookRegistry = [(EDPersistence *)self hookRegistry];
  [hookRegistry registerMessageChangeHookResponder:self->_attachmentPersistenceManager];
}

- (void)scheduleRecurringActivity
{
  v4.receiver = self;
  v4.super_class = MFPersistence_iOS;
  [(EDPersistence *)&v4 scheduleRecurringActivity];
  library = [(MFPersistence_iOS *)self library];
  [library scheduleRecurringActivity];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFPersistence_iOS.m" lineNumber:209 description:{@"%s can only be called from unit tests", "-[MFPersistence_iOS test_tearDown]"}];
  }

  businessPersistence = [(MFPersistence_iOS *)self businessPersistence];
  [businessPersistence test_tearDown];

  v7.receiver = self;
  v7.super_class = MFPersistence_iOS;
  [(EDPersistence *)&v7 test_tearDown];
  threadPersistence = [(MFPersistence_iOS *)self threadPersistence];
  [threadPersistence test_tearDown];
}

- (id)persistenceStatistics
{
  messagePersistence = [(MFPersistence_iOS *)self messagePersistence];
  collectStatistics = [messagePersistence collectStatistics];

  v13.receiver = self;
  v13.super_class = MFPersistence_iOS;
  v5 = [(EDPersistence *)&v13 persistenceStateWithStatistics:collectStatistics];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(collectStatistics, "protectedDataAvailable")}];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E699AAC8]];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(collectStatistics, "messagesMarkedAsJournaled")}];
  [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x1E699AA90]];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(collectStatistics, "mailboxesNeedingReconcilication")}];
  [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x1E699AA50]];

  searchableIndexStatistics = [(MFPersistence_iOS *)self searchableIndexStatistics];
  [v6 addEntriesFromDictionary:searchableIndexStatistics];

  if ([collectStatistics protectedDataAvailable])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(collectStatistics, "protectedMessageData")}];
    [v6 setObject:v11 forKeyedSubscript:*MEMORY[0x1E699AAD0]];
  }

  return v6;
}

- (id)searchableIndexStatistics
{
  v20 = *MEMORY[0x1E69E9840];
  searchableIndexManager = [(MFPersistence_iOS *)self searchableIndexManager];
  persistence = [searchableIndexManager persistence];
  statistics = [persistence statistics];
  v6 = [statistics mutableCopy];

  v7 = objc_opt_new();
  serverMessagesIndexer = [(MFPersistence_iOS *)self serverMessagesIndexer];
  completionHandlerAdapter = [v7 completionHandlerAdapter];
  [serverMessagesIndexer getIndexingStatisticsWithCompletion:completionHandlerAdapter];

  future = [v7 future];
  v17 = 0;
  v11 = [future resultWithTimeout:&v17 error:60.0];
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

- (void)setUpWithMailboxProvider:(id)provider remoteSearchProvider:(id)searchProvider serverMessagesIndexerProvider:(id)indexerProvider
{
  searchProviderCopy = searchProvider;
  providerCopy = provider;
  v9 = _Block_copy(indexerProvider);
  indexerProvider = self->_indexerProvider;
  self->_indexerProvider = v9;

  [(MFPersistence_iOS *)self setUpWithMailboxProvider:providerCopy remoteSearchProvider:searchProviderCopy];
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