@interface BCSBusinessQueryService
- (BCSBusinessQueryService)init;
- (BCSBusinessQueryService)initWithConnection:(id)connection clientBundleIdentifier:(id)identifier;
- (id)businessItemForPhoneNumber:(id)number isChatSuggestVisible:(BOOL *)visible error:(id *)error;
- (id)businessItemForPhoneNumber:(id)number isMessageable:(BOOL *)messageable isChatSuggestVisible:(BOOL *)visible error:(id *)error;
- (id)cachedBusinessMetadataForEmail:(id)email error:(id *)error;
- (void)_deleteInMemoryCache;
- (void)_fetchBusinessItemWithDetailsForPhoneNumber:(uint64_t)number forClientBundleID:(void *)d completion:(void *)completion;
- (void)clearCachesForLinkItemsAssociatedWithBundleID:(id)d completion:(id)completion;
- (void)clearCachesForType:(int64_t)type completion:(id)completion;
- (void)clearExpiredCachesForType:(int64_t)type completion:(id)completion;
- (void)dealloc;
- (void)didFetchBusinessMetadata:(id)metadata forEmailIdentifier:(id)identifier requestId:(id)id error:(id)error reply:(id)reply;
- (void)didFetchBusinessMetadataForEmailsForRequestId:(id)id error:(id)error reply:(id)reply;
- (void)fetchBrandWithIdentifier:(id)identifier serviceType:(int64_t)type completion:(id)completion;
- (void)fetchBusinessCallerMetadataForPhoneNumber:(id)number metadataCallback:(id)callback logoURLCallback:(id)lCallback completion:(id)completion;
- (void)fetchBusinessCallerMetadataWithPhoneNumber:(id)number completion:(id)completion;
- (void)fetchBusinessItemWithDetailsForPhoneNumber:(id)number completion:(id)completion;
- (void)fetchBusinessItemWithPhoneNumber:(id)number completion:(id)completion;
- (void)fetchBusinessLogoForBusinessIdentifier:(id)identifier completion:(id)completion;
- (void)fetchBusinessMetadataForEmail:(id)email completion:(id)completion;
- (void)fetchBusinessMetadataForEmailIdentifier:(id)identifier completion:(id)completion;
- (void)fetchBusinessMetadataForEmails:(id)emails perItemCallback:(id)callback completion:(id)completion;
- (void)fetchLinkItemWithHash:(id)hash completion:(id)completion;
- (void)fetchSquareIconDataForBusinessItem:(id)item completion:(id)completion;
- (void)fetchWebPresentmentPermissionsWithIdentifier:(id)identifier completion:(id)completion;
- (void)isBusinessCallerRegisteredForPhoneNumber:(id)number completion:(id)completion;
- (void)isBusinessRegisteredForPhoneNumber:(id)number completion:(id)completion;
- (void)isBusinessRegisteredForURL:(id)l completion:(id)completion;
- (void)prefetchBloomFilterAndConfigCacheWithCompletion:(id)completion;
- (void)warmCacheIfNecessaryForPhoneNumbers:(id)numbers;
@end

@implementation BCSBusinessQueryService

- (BCSBusinessQueryService)init
{
  v3 = [[BCSXPCDaemonConnection alloc] initWithMachServiceName:self exportedClient:?];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v6 = [(BCSBusinessQueryService *)self initWithConnection:v3 clientBundleIdentifier:bundleIdentifier];

  return v6;
}

- (BCSBusinessQueryService)initWithConnection:(id)connection clientBundleIdentifier:(id)identifier
{
  connectionCopy = connection;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = BCSBusinessQueryService;
  v9 = [(BCSBusinessQueryService *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    v11 = [identifierCopy copy];
    clientBundleIdentifier = v10->_clientBundleIdentifier;
    v10->_clientBundleIdentifier = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requestsById = v10->_requestsById;
    v10->_requestsById = v13;

    v15 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    requestLock = v10->_requestLock;
    v10->_requestLock = v15;

    v17 = dispatch_queue_create("com.apple.BusinessQueryService.serialqueue", 0);
    serialQueue = v10->_serialQueue;
    v10->_serialQueue = v17;

    [(BCSXPCDaemonConnectionProtocol *)v10->_connection setExportedClient:v10];
    [(BCSXPCDaemonConnectionProtocol *)v10->_connection resume];
  }

  return v10;
}

- (void)dealloc
{
  [(BCSXPCDaemonConnectionProtocol *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = BCSBusinessQueryService;
  [(BCSBusinessQueryService *)&v3 dealloc];
}

- (void)warmCacheIfNecessaryForPhoneNumbers:(id)numbers
{
  v13 = *MEMORY[0x277D85DE8];
  numbersCopy = numbers;
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[BCSBusinessQueryService warmCacheIfNecessaryForPhoneNumbers:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  if ([numbersCopy count] < 0x1F)
  {
    v6 = numbersCopy;
  }

  else
  {
    v6 = [numbersCopy subarrayWithRange:{0, 30}];
  }

  v7 = v6;
  if (self)
  {
    connection = self->_connection;
  }

  else
  {
    connection = 0;
  }

  remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)connection remoteObjectProxy];
  [remoteObjectProxy warmCacheIfNecessaryForPhoneNumbers:v7 forClientBundleID:@"com.apple.businessservicesd"];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)businessItemForPhoneNumber:(id)number isMessageable:(BOOL *)messageable isChatSuggestVisible:(BOOL *)visible error:(id *)error
{
  if (messageable)
  {
    *messageable = 1;
  }

  return [(BCSBusinessQueryService *)self businessItemForPhoneNumber:number isChatSuggestVisible:visible error:error];
}

- (id)businessItemForPhoneNumber:(id)number isChatSuggestVisible:(BOOL *)visible error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v9 = ABSLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[BCSBusinessQueryService businessItemForPhoneNumber:isChatSuggestVisible:error:]";
    _os_log_impl(&dword_242072000, v9, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__2;
  v54 = __Block_byref_object_dispose__2;
  v55 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  v40 = 0;
  if (self)
  {
    Property = objc_getProperty(self, v10, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v12 = Property;
  [v12 timeIntervalSinceNow];
  v14 = v13 > 0.0;
  if (v13 <= -2.0)
  {
    v14 = 1;
  }

  if (v12)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (v15 != 1)
  {
    goto LABEL_12;
  }

  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __81__BCSBusinessQueryService_businessItemForPhoneNumber_isChatSuggestVisible_error___block_invoke;
  v30[3] = &unk_278D38FD8;
  p_buf = &buf;
  v33 = &v41;
  v34 = &v35;
  v17 = v16;
  v31 = v17;
  [BCSBusinessQueryService _fetchBusinessItemWithDetailsForPhoneNumber:numberCopy forClientBundleID:v30 completion:?];
  v18 = dispatch_time(0, 1000000000);
  v19 = dispatch_group_wait(v17, v18) == 0;

  if (v19)
  {
    if (visible)
    {
      *visible = *(v42 + 24);
    }

    if (error)
    {
      *error = v36[5];
    }

    if (self)
    {
      objc_setProperty_atomic(self, v20, 0, 8);
    }

    v27 = *(*(&buf + 1) + 40);
  }

  else
  {
LABEL_12:
    v21 = ABSLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v47 = 136315394;
      v48 = "[BCSBusinessQueryService businessItemForPhoneNumber:isChatSuggestVisible:error:]";
      v49 = 1024;
      v50 = v15;
      _os_log_impl(&dword_242072000, v21, OS_LOG_TYPE_DEFAULT, "%s timed out - did really attempt:%d", v47, 0x12u);
    }

    if (visible)
    {
      *visible = 0;
    }

    if (error)
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA470];
      v45[0] = *MEMORY[0x277CCA450];
      v45[1] = v23;
      v46[0] = @"businessItemForPhoneNumber server fetch timed out";
      v46[1] = @"The operation timed out";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
      *error = [v22 errorWithDomain:@"BusinessChat" code:-1001 userInfo:v24];
    }

    if (v15)
    {
      date = [MEMORY[0x277CBEAA8] date];
      if (self)
      {
        objc_setProperty_atomic(self, v25, date, 8);
      }
    }

    v27 = 0;
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&buf, 8);

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

void __81__BCSBusinessQueryService_businessItemForPhoneNumber_isChatSuggestVisible_error___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a4;
  v10 = ABSLogCommon();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v8 || v9)
  {
    if (v9)
    {
      if (v11)
      {
        v13 = 136315650;
        v14 = "[BCSBusinessQueryService businessItemForPhoneNumber:isChatSuggestVisible:error:]_block_invoke";
        v15 = 2112;
        v16 = v9;
        v17 = 1024;
        v18 = a3;
        _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "%s Failed fetch with error %@ - isChatSuggestVisible:%d", &v13, 0x1Cu);
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
    }

    else
    {
      if (v11)
      {
        v13 = 136315394;
        v14 = "[BCSBusinessQueryService businessItemForPhoneNumber:isChatSuggestVisible:error:]_block_invoke";
        v15 = 1024;
        LODWORD(v16) = a3;
        _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "%s No bizItem exists for this phoneNumber - isChatSuggestVisible:%d", &v13, 0x12u);
      }
    }
  }

  else
  {
    if (v11)
    {
      v13 = 136315394;
      v14 = "[BCSBusinessQueryService businessItemForPhoneNumber:isChatSuggestVisible:error:]_block_invoke";
      v15 = 1024;
      LODWORD(v16) = a3;
      _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "%s Fetched bizItem Visible %d", &v13, 0x12u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = a3;
  }

  dispatch_group_leave(*(a1 + 32));

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_fetchBusinessItemWithDetailsForPhoneNumber:(uint64_t)number forClientBundleID:(void *)d completion:(void *)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (number)
  {
    v6 = @"com.apple.businessservicesd";
    dCopy = d;
    v8 = ABSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(number + 16);
      v10 = v9;
      remoteObjectProxy = [v10 remoteObjectProxy];
      *buf = 136315650;
      v19 = "[BCSBusinessQueryService _fetchBusinessItemWithDetailsForPhoneNumber:forClientBundleID:completion:]";
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = remoteObjectProxy;
      _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", buf, 0x20u);
    }

    v12 = *(number + 16);
    remoteObjectProxy2 = [v12 remoteObjectProxy];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __100__BCSBusinessQueryService__fetchBusinessItemWithDetailsForPhoneNumber_forClientBundleID_completion___block_invoke;
    v16[3] = &unk_278D39028;
    v14 = completionCopy;

    v17 = v14;
    [remoteObjectProxy2 fetchBusinessItemWithDetailsForPhoneNumber:dCopy forClientBundleID:@"com.apple.businessservicesd" completion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fetchBusinessItemWithPhoneNumber:(id)number completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  numberCopy = number;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v9 = self->_connection;
      connection = self->_connection;
      v11 = v9;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      connection = 0;
    }

    v12 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService fetchBusinessItemWithPhoneNumber:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", buf, 0x20u);
  }

  if (self)
  {
    v14 = self->_connection;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__BCSBusinessQueryService_fetchBusinessItemWithPhoneNumber_completion___block_invoke;
  v19[3] = &unk_278D39000;

  v20 = completionCopy;
  v17 = completionCopy;
  [remoteObjectProxy2 fetchBusinessItemWithPhoneNumber:numberCopy forClientBundleID:@"com.apple.businessservicesd" completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __71__BCSBusinessQueryService_fetchBusinessItemWithPhoneNumber_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchBusinessItemWithDetailsForPhoneNumber:(id)number completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__BCSBusinessQueryService_fetchBusinessItemWithDetailsForPhoneNumber_completion___block_invoke;
  v8[3] = &unk_278D39028;
  v9 = completionCopy;
  v7 = completionCopy;
  [BCSBusinessQueryService _fetchBusinessItemWithDetailsForPhoneNumber:number forClientBundleID:v8 completion:?];
}

uint64_t __100__BCSBusinessQueryService__fetchBusinessItemWithDetailsForPhoneNumber_forClientBundleID_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)isBusinessRegisteredForPhoneNumber:(id)number completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  numberCopy = number;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v9 = self->_connection;
      connection = self->_connection;
      v11 = v9;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      connection = 0;
    }

    v12 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService isBusinessRegisteredForPhoneNumber:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", buf, 0x20u);
  }

  if (self)
  {
    v14 = self->_connection;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __73__BCSBusinessQueryService_isBusinessRegisteredForPhoneNumber_completion___block_invoke;
  v19[3] = &unk_278D38818;

  v20 = completionCopy;
  v17 = completionCopy;
  [remoteObjectProxy2 fetchIsBusinessPhoneNumber:numberCopy forClientBundleID:@"com.apple.businessservicesd" completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __73__BCSBusinessQueryService_isBusinessRegisteredForPhoneNumber_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchSquareIconDataForBusinessItem:(id)item completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
  {
    itemCopy = item;
    v8 = ABSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v9 = self->_connection;
        connection = self->_connection;
        v11 = v9;
      }

      else
      {
        v9 = 0;
        v11 = 0;
        connection = 0;
      }

      v12 = connection;
      remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
      *buf = 136315650;
      v22 = "[BCSBusinessQueryService fetchSquareIconDataForBusinessItem:completion:]";
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = remoteObjectProxy;
      _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", buf, 0x20u);
    }

    if (self)
    {
      v14 = self->_connection;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __73__BCSBusinessQueryService_fetchSquareIconDataForBusinessItem_completion___block_invoke;
    v19[3] = &unk_278D39050;
    v17 = completionCopy;

    v20 = v17;
    [remoteObjectProxy2 fetchSquareIconDataForBusinessItem:itemCopy forClientBundleID:@"com.apple.businessservicesd" completion:v19];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __67__BCSBusinessQueryService_fetchLinkItemWithURL_chopURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (v10)
    {
      v7 = [BCSLinkItem alloc];
      v8 = objc_alloc_init(BCSLocaleHelper);
      v9 = [(BCSLinkItem *)v7 initWithLinkItemModel:v10 localeHelper:v8];

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(v6 + 16))(v6, 0, v5);
    }
  }
}

- (void)isBusinessRegisteredForURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__BCSBusinessQueryService_isBusinessRegisteredForURL_completion___block_invoke;
  v8[3] = &unk_278D390A0;
  v9 = completionCopy;
  v7 = completionCopy;
  [(BCSBusinessQueryService *)self isBusinessRegisteredForURL:l chopURL:1 completion:v8];
}

uint64_t __73__BCSBusinessQueryService_isBusinessRegisteredForURL_chopURL_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, a5);
  }

  return result;
}

uint64_t __74__BCSBusinessQueryService__isBusinessRegisteredForURL_chopURL_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchLinkItemWithHash:(id)hash completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  hashCopy = hash;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v9 = self->_connection;
      connection = self->_connection;
      v11 = v9;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      connection = 0;
    }

    v12 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService fetchLinkItemWithHash:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", buf, 0x20u);
  }

  if (self)
  {
    v14 = self->_connection;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__BCSBusinessQueryService_fetchLinkItemWithHash_completion___block_invoke;
  v19[3] = &unk_278D39078;
  v20 = completionCopy;
  v17 = completionCopy;
  [remoteObjectProxy2 fetchLinkItemModelWithHash:hashCopy forClientBundleID:self completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __60__BCSBusinessQueryService_fetchLinkItemWithHash_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (v10)
    {
      v7 = [BCSLinkItem alloc];
      v8 = objc_alloc_init(BCSLocaleHelper);
      v9 = [(BCSLinkItem *)v7 initWithLinkItemModel:v10 localeHelper:v8];

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(v6 + 16))(v6, 0, v5);
    }
  }
}

- (void)isBusinessCallerRegisteredForPhoneNumber:(id)number completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  numberCopy = number;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v9 = self->_connection;
      connection = self->_connection;
      v11 = v9;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      connection = 0;
    }

    v12 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService isBusinessCallerRegisteredForPhoneNumber:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", buf, 0x20u);
  }

  if (self)
  {
    v14 = self->_connection;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__BCSBusinessQueryService_isBusinessCallerRegisteredForPhoneNumber_completion___block_invoke;
  v19[3] = &unk_278D38818;
  v20 = completionCopy;
  v17 = completionCopy;
  [remoteObjectProxy2 isBusinessCallerRegisteredForPhoneNumber:numberCopy forClientBundleID:self completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __79__BCSBusinessQueryService_isBusinessCallerRegisteredForPhoneNumber_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchBusinessCallerMetadataWithPhoneNumber:(id)number completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  numberCopy = number;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v9 = self->_connection;
      connection = self->_connection;
      v11 = v9;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      connection = 0;
    }

    v12 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService fetchBusinessCallerMetadataWithPhoneNumber:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", buf, 0x20u);
  }

  if (self)
  {
    v14 = self->_connection;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __81__BCSBusinessQueryService_fetchBusinessCallerMetadataWithPhoneNumber_completion___block_invoke;
  v19[3] = &unk_278D390F0;
  v20 = completionCopy;
  v17 = completionCopy;
  [remoteObjectProxy2 fetchBusinessCallerMetadataForPhoneNumber:numberCopy forClientBundleID:self completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __81__BCSBusinessQueryService_fetchBusinessCallerMetadataWithPhoneNumber_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchBusinessCallerMetadataForPhoneNumber:(id)number metadataCallback:(id)callback logoURLCallback:(id)lCallback completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  lCallbackCopy = lCallback;
  completionCopy = completion;
  numberCopy = number;
  v14 = ABSLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v15 = self->_connection;
      connection = self->_connection;
      v17 = v15;
    }

    else
    {
      v15 = 0;
      v17 = 0;
      connection = 0;
    }

    v18 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v18 remoteObjectProxy];
    *buf = 136315650;
    v34 = "[BCSBusinessQueryService fetchBusinessCallerMetadataForPhoneNumber:metadataCallback:logoURLCallback:completion:]";
    v35 = 2112;
    v36 = v15;
    v37 = 2112;
    v38 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v14, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", buf, 0x20u);
  }

  if (self)
  {
    v20 = self->_connection;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v21 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v30 = lCallbackCopy;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __113__BCSBusinessQueryService_fetchBusinessCallerMetadataForPhoneNumber_metadataCallback_logoURLCallback_completion___block_invoke;
  v31[3] = &unk_278D39118;
  v32 = callbackCopy;
  v28 = completionCopy;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __113__BCSBusinessQueryService_fetchBusinessCallerMetadataForPhoneNumber_metadataCallback_logoURLCallback_completion___block_invoke_2;
  v29[3] = &unk_278D39140;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __113__BCSBusinessQueryService_fetchBusinessCallerMetadataForPhoneNumber_metadataCallback_logoURLCallback_completion___block_invoke_3;
  v27[3] = &unk_278D39168;
  v23 = completionCopy;
  v24 = lCallbackCopy;
  v25 = callbackCopy;
  [remoteObjectProxy2 fetchBusinessCallerMetadataForPhoneNumber:numberCopy forClientBundleID:self metadataCallback:v31 logoURLCallback:v29 completion:v27];

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __113__BCSBusinessQueryService_fetchBusinessCallerMetadataForPhoneNumber_metadataCallback_logoURLCallback_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __113__BCSBusinessQueryService_fetchBusinessCallerMetadataForPhoneNumber_metadataCallback_logoURLCallback_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __113__BCSBusinessQueryService_fetchBusinessCallerMetadataForPhoneNumber_metadataCallback_logoURLCallback_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchBusinessMetadataForEmail:(id)email completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  emailCopy = email;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v9 = self->_connection;
      connection = self->_connection;
      v11 = v9;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      connection = 0;
    }

    v12 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService fetchBusinessMetadataForEmail:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", buf, 0x20u);
  }

  if (self)
  {
    v14 = self->_connection;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __68__BCSBusinessQueryService_fetchBusinessMetadataForEmail_completion___block_invoke;
  v19[3] = &unk_278D39190;
  v20 = completionCopy;
  v17 = completionCopy;
  [remoteObjectProxy2 fetchBusinessMetadataForEmail:emailCopy forClientBundleID:self completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __68__BCSBusinessQueryService_fetchBusinessMetadataForEmail_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchBusinessMetadataForEmailIdentifier:(id)identifier completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v9 = self->_connection;
      connection = self->_connection;
      v11 = v9;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      connection = 0;
    }

    v12 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService fetchBusinessMetadataForEmailIdentifier:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", buf, 0x20u);
  }

  if (self)
  {
    v14 = self->_connection;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__BCSBusinessQueryService_fetchBusinessMetadataForEmailIdentifier_completion___block_invoke;
  v19[3] = &unk_278D39190;
  v20 = completionCopy;
  v17 = completionCopy;
  [remoteObjectProxy2 fetchBusinessMetadataForEmailIdentifier:identifierCopy forClientBundleID:self completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __78__BCSBusinessQueryService_fetchBusinessMetadataForEmailIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchBusinessLogoForBusinessIdentifier:(id)identifier completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v9 = self->_connection;
      connection = self->_connection;
      v11 = v9;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      connection = 0;
    }

    v12 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService fetchBusinessLogoForBusinessIdentifier:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", buf, 0x20u);
  }

  if (self)
  {
    v14 = self->_connection;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__BCSBusinessQueryService_fetchBusinessLogoForBusinessIdentifier_completion___block_invoke;
  v19[3] = &unk_278D391B8;
  v20 = completionCopy;
  v17 = completionCopy;
  [remoteObjectProxy2 fetchBusinessLogoForBusinessIdentifier:identifierCopy forClientBundleID:self completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __77__BCSBusinessQueryService_fetchBusinessLogoForBusinessIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchBusinessMetadataForEmails:(id)emails perItemCallback:(id)callback completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  emailsCopy = emails;
  callbackCopy = callback;
  completionCopy = completion;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v12 = self->_connection;
      connection = self->_connection;
      v14 = v12;
    }

    else
    {
      v12 = 0;
      v14 = 0;
      connection = 0;
    }

    v15 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
    *buf = 136315650;
    v34 = "[BCSBusinessQueryService fetchBusinessMetadataForEmails:perItemCallback:completion:]";
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", buf, 0x20u);
  }

  if (![emailsCopy count])
  {
    v18 = [BCSError errorWithDomain:@"com.apple.businessservices" code:44 errorDescription:@"Batch must contain at least one identifier"];
    goto LABEL_9;
  }

  if ([emailsCopy count] >= 0x1F)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Batch exceeds maximum size (%ld > %lu)", objc_msgSend(emailsCopy, "count"), 30];
    v18 = [BCSError errorWithDomain:@"com.apple.businessservices" code:44 errorDescription:v17];

LABEL_9:
    completionCopy[2](completionCopy, v18);
    goto LABEL_21;
  }

  v18 = objc_alloc_init(BCSBusinessQueryRequest);
  uUID = [MEMORY[0x277CCAD78] UUID];
  [(BCSBusinessQueryRequest *)v18 setRequestId:uUID];

  [(BCSBusinessQueryRequest *)v18 setFetchEmailsPerItemBlock:callbackCopy];
  [(BCSBusinessQueryRequest *)v18 setFetchEmailsCompletion:completionCopy];
  if (self)
  {
    [(NSLock *)self->_requestLock lock];
    requestsById = self->_requestsById;
  }

  else
  {
    [0 lock];
    requestsById = 0;
  }

  v21 = requestsById;
  requestId = [(BCSBusinessQueryRequest *)v18 requestId];
  [(NSMutableDictionary *)v21 setObject:v18 forKeyedSubscript:requestId];

  if (self)
  {
    requestLock = self->_requestLock;
  }

  else
  {
    requestLock = 0;
  }

  [(NSLock *)requestLock unlock];
  v24 = ABSLogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    requestId2 = [(BCSBusinessQueryRequest *)v18 requestId];
    *buf = 136315394;
    v34 = "[BCSBusinessQueryService fetchBusinessMetadataForEmails:perItemCallback:completion:]";
    v35 = 2112;
    v36 = requestId2;
    _os_log_impl(&dword_242072000, v24, OS_LOG_TYPE_DEFAULT, "%s - issuing request with requestId: %@", buf, 0x16u);
  }

  if (self)
  {
    v26 = self->_connection;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v27 remoteObjectProxy];
  if (self)
  {
    clientBundleIdentifier = self->_clientBundleIdentifier;
  }

  else
  {
    clientBundleIdentifier = 0;
  }

  v30 = clientBundleIdentifier;
  requestId3 = [(BCSBusinessQueryRequest *)v18 requestId];
  [remoteObjectProxy2 fetchBusinessMetadataForEmails:emailsCopy forClientBundleID:v30 requestId:requestId3 completion:&__block_literal_global_2];

LABEL_21:
  v32 = *MEMORY[0x277D85DE8];
}

void __85__BCSBusinessQueryService_fetchBusinessMetadataForEmails_perItemCallback_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = ABSLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_242072000, v3, OS_LOG_TYPE_ERROR, "fetchBusinessMetadataForEmails:forClientBundleId:requestId:completion: did error: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)cachedBusinessMetadataForEmail:(id)email error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  emailCopy = email;
  v7 = ABSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v8 = self->_connection;
      connection = self->_connection;
      v10 = v8;
    }

    else
    {
      v8 = 0;
      v10 = 0;
      connection = 0;
    }

    v11 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v11 remoteObjectProxy];
    *buf = 136315650;
    *&buf[4] = "[BCSBusinessQueryService cachedBusinessMetadataForEmail:error:]";
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v37 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v37 = __Block_byref_object_copy__2;
  v38 = __Block_byref_object_dispose__2;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2;
  v34 = __Block_byref_object_dispose__2;
  v35 = 0;
  if (self)
  {
    v13 = self->_connection;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __64__BCSBusinessQueryService_cachedBusinessMetadataForEmail_error___block_invoke;
  v29[3] = &unk_278D39200;
  v29[4] = &v30;
  v15 = [(BCSXPCDaemonConnectionProtocol *)v14 synchronousRemoteObjectProxyWithErrorHandler:v29];

  if (self)
  {
    serialQueue = self->_serialQueue;
  }

  else
  {
    serialQueue = 0;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __64__BCSBusinessQueryService_cachedBusinessMetadataForEmail_error___block_invoke_2;
  v23[3] = &unk_278D39250;
  v17 = v15;
  v24 = v17;
  v18 = emailCopy;
  v25 = v18;
  selfCopy = self;
  v27 = &v30;
  v28 = buf;
  dispatch_sync(serialQueue, v23);
  if (error)
  {
    v19 = v31[5];
    if (v19)
    {
      *error = v19;
    }
  }

  v20 = *(*&buf[8] + 40);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(buf, 8);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __64__BCSBusinessQueryService_cachedBusinessMetadataForEmail_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__BCSBusinessQueryService_cachedBusinessMetadataForEmail_error___block_invoke_3;
  v7[3] = &unk_278D39228;
  v8 = *(a1 + 56);
  return [v2 cachedBusinessMetadataForEmail:v3 forClientBundleID:v5 completion:v7];
}

void __64__BCSBusinessQueryService_cachedBusinessMetadataForEmail_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = [a3 copy];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)fetchBrandWithIdentifier:(id)identifier serviceType:(int64_t)type completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  identifierCopy = identifier;
  v10 = ABSLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v11 = self->_connection;
      connection = self->_connection;
      v13 = v11;
    }

    else
    {
      v11 = 0;
      v13 = 0;
      connection = 0;
    }

    v14 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v14 remoteObjectProxy];
    *buf = 136315650;
    v24 = "[BCSBusinessQueryService fetchBrandWithIdentifier:serviceType:completion:]";
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", buf, 0x20u);
  }

  if (self)
  {
    v16 = self->_connection;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v17 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__BCSBusinessQueryService_fetchBrandWithIdentifier_serviceType_completion___block_invoke;
  v21[3] = &unk_278D39278;
  v22 = completionCopy;
  v19 = completionCopy;
  [remoteObjectProxy2 fetchBrandWithIdentifier:identifierCopy forClientBundleID:self serviceType:type completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __75__BCSBusinessQueryService_fetchBrandWithIdentifier_serviceType_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchWebPresentmentPermissionsWithIdentifier:(id)identifier completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v9 = self->_connection;
      connection = self->_connection;
      v11 = v9;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      connection = 0;
    }

    v12 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService fetchWebPresentmentPermissionsWithIdentifier:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", buf, 0x20u);
  }

  if (self)
  {
    v14 = self->_connection;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__BCSBusinessQueryService_fetchWebPresentmentPermissionsWithIdentifier_completion___block_invoke;
  v19[3] = &unk_278D39050;
  v20 = completionCopy;
  v17 = completionCopy;
  [remoteObjectProxy2 fetchWebPresentmentPermissionsWithIdentifier:identifierCopy forClientBundleID:self completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __83__BCSBusinessQueryService_fetchWebPresentmentPermissionsWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)prefetchBloomFilterAndConfigCacheWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v6 = self->_connection;
      connection = self->_connection;
      v8 = v6;
    }

    else
    {
      v6 = 0;
      v8 = 0;
      connection = 0;
    }

    v9 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v9 remoteObjectProxy];
    v14 = 136315650;
    v15 = "[BCSBusinessQueryService prefetchBloomFilterAndConfigCacheWithCompletion:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", &v14, 0x20u);
  }

  if (self)
  {
    v11 = self->_connection;
  }

  else
  {
    v11 = 0;
  }

  remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v11 remoteObjectProxy];
  [remoteObjectProxy2 prefetchMegashardsWithCompletion:completionCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)clearCachesForType:(int64_t)type completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = ABSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v8 = self->_connection;
      connection = self->_connection;
      v10 = v8;
    }

    else
    {
      v8 = 0;
      v10 = 0;
      connection = 0;
    }

    v11 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v11 remoteObjectProxy];
    v16 = 136315650;
    v17 = "[BCSBusinessQueryService clearCachesForType:completion:]";
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", &v16, 0x20u);
  }

  if (self)
  {
    v13 = self->_connection;
  }

  else
  {
    v13 = 0;
  }

  remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v13 remoteObjectProxy];
  [remoteObjectProxy2 clearCachesForType:type completion:completionCopy];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)clearExpiredCachesForType:(int64_t)type completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = ABSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v8 = self->_connection;
      connection = self->_connection;
      v10 = v8;
    }

    else
    {
      v8 = 0;
      v10 = 0;
      connection = 0;
    }

    v11 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v11 remoteObjectProxy];
    v16 = 136315650;
    v17 = "[BCSBusinessQueryService clearExpiredCachesForType:completion:]";
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", &v16, 0x20u);
  }

  if (self)
  {
    v13 = self->_connection;
  }

  else
  {
    v13 = 0;
  }

  remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v13 remoteObjectProxy];
  [remoteObjectProxy2 clearExpiredCachesForType:type completion:completionCopy];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)clearCachesForLinkItemsAssociatedWithBundleID:(id)d completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dCopy = d;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v9 = self->_connection;
      connection = self->_connection;
      v11 = v9;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      connection = 0;
    }

    v12 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    v17 = 136315650;
    v18 = "[BCSBusinessQueryService clearCachesForLinkItemsAssociatedWithBundleID:completion:]";
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", &v17, 0x20u);
  }

  if (self)
  {
    v14 = self->_connection;
  }

  else
  {
    v14 = 0;
  }

  remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v14 remoteObjectProxy];
  [remoteObjectProxy2 clearCachesForLinkItemsAssociatedWithBundleID:dCopy completion:completionCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)didFetchBusinessMetadata:(id)metadata forEmailIdentifier:(id)identifier requestId:(id)id error:(id)error reply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  identifierCopy = identifier;
  idCopy = id;
  errorCopy = error;
  replyCopy = reply;
  v17 = ABSLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138413058;
    v25 = idCopy;
    v26 = 2112;
    v27 = metadataCopy;
    v28 = 2112;
    v29 = identifierCopy;
    v30 = 2112;
    v31 = errorCopy;
    _os_log_impl(&dword_242072000, v17, OS_LOG_TYPE_DEFAULT, "didFetchBusinessMetadata:forEmailIdentifier:withError:reply: - requestId: %@, metadata: %@, identifier: %@, error: %@", &v24, 0x2Au);
  }

  if (self)
  {
    [(NSLock *)self->_requestLock lock];
    requestsById = self->_requestsById;
  }

  else
  {
    [0 lock];
    requestsById = 0;
  }

  v19 = [(NSMutableDictionary *)requestsById objectForKeyedSubscript:idCopy];
  if (self)
  {
    requestLock = self->_requestLock;
  }

  else
  {
    requestLock = 0;
  }

  [(NSLock *)requestLock unlock];
  if (v19)
  {
    fetchEmailsPerItemBlock = [v19 fetchEmailsPerItemBlock];
    v22 = (*(fetchEmailsPerItemBlock + 16))(fetchEmailsPerItemBlock, identifierCopy, metadataCopy, errorCopy);
  }

  else
  {
    fetchEmailsPerItemBlock = ABSLogCommon();
    if (os_log_type_enabled(fetchEmailsPerItemBlock, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315138;
      v25 = "[BCSBusinessQueryService didFetchBusinessMetadata:forEmailIdentifier:requestId:error:reply:]";
      _os_log_error_impl(&dword_242072000, fetchEmailsPerItemBlock, OS_LOG_TYPE_ERROR, "%s - Invalid request ID!", &v24, 0xCu);
    }

    v22 = 0;
  }

  replyCopy[2](replyCopy, v22);
  v23 = *MEMORY[0x277D85DE8];
}

- (void)didFetchBusinessMetadataForEmailsForRequestId:(id)id error:(id)error reply:(id)reply
{
  v25 = *MEMORY[0x277D85DE8];
  idCopy = id;
  errorCopy = error;
  replyCopy = reply;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = idCopy;
    v23 = 2112;
    v24 = errorCopy;
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "didFetchBusinessMetadataForEmailsWithError:reply: - requestId: %@, error: %@", &v21, 0x16u);
  }

  if (self)
  {
    [(NSLock *)self->_requestLock lock];
    requestsById = self->_requestsById;
  }

  else
  {
    [0 lock];
    requestsById = 0;
  }

  v13 = [(NSMutableDictionary *)requestsById objectForKeyedSubscript:idCopy];
  if (self)
  {
    requestLock = self->_requestLock;
  }

  else
  {
    requestLock = 0;
  }

  [(NSLock *)requestLock unlock];
  if (v13)
  {
    if (self)
    {
      [(NSLock *)self->_requestLock lock];
      v15 = self->_requestsById;
    }

    else
    {
      [0 lock];
      v15 = 0;
    }

    v16 = v15;
    requestId = [v13 requestId];
    [(NSMutableDictionary *)v16 removeObjectForKey:requestId];

    if (self)
    {
      v18 = self->_requestLock;
    }

    else
    {
      v18 = 0;
    }

    [(NSLock *)v18 unlock];
    fetchEmailsCompletion = [v13 fetchEmailsCompletion];
    (*(fetchEmailsCompletion + 16))(fetchEmailsCompletion, errorCopy);
  }

  else
  {
    fetchEmailsCompletion = ABSLogCommon();
    if (os_log_type_enabled(fetchEmailsCompletion, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315138;
      v22 = "[BCSBusinessQueryService didFetchBusinessMetadataForEmailsForRequestId:error:reply:]";
      _os_log_error_impl(&dword_242072000, fetchEmailsCompletion, OS_LOG_TYPE_ERROR, "%s - Invalid request ID!", &v21, 0xCu);
    }
  }

  replyCopy[2](replyCopy);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_deleteInMemoryCache
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = ABSLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v4 = self->_connection;
      connection = self->_connection;
      v6 = v4;
    }

    else
    {
      v4 = 0;
      v6 = 0;
      connection = 0;
    }

    v7 = connection;
    remoteObjectProxy = [(BCSXPCDaemonConnectionProtocol *)v7 remoteObjectProxy];
    v12 = 136315650;
    v13 = "[BCSBusinessQueryService _deleteInMemoryCache]";
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = remoteObjectProxy;
    _os_log_impl(&dword_242072000, v3, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", &v12, 0x20u);
  }

  if (self)
  {
    v9 = self->_connection;
  }

  else
  {
    v9 = 0;
  }

  remoteObjectProxy2 = [(BCSXPCDaemonConnectionProtocol *)v9 remoteObjectProxy];
  [remoteObjectProxy2 _deleteInMemoryCache];

  v11 = *MEMORY[0x277D85DE8];
}

@end