@interface BCSBusinessQueryService
- (BCSBusinessQueryService)init;
- (BCSBusinessQueryService)initWithConnection:(id)a3 clientBundleIdentifier:(id)a4;
- (id)businessItemForPhoneNumber:(id)a3 isChatSuggestVisible:(BOOL *)a4 error:(id *)a5;
- (id)businessItemForPhoneNumber:(id)a3 isMessageable:(BOOL *)a4 isChatSuggestVisible:(BOOL *)a5 error:(id *)a6;
- (id)cachedBusinessMetadataForEmail:(id)a3 error:(id *)a4;
- (void)_deleteInMemoryCache;
- (void)_fetchBusinessItemWithDetailsForPhoneNumber:(uint64_t)a1 forClientBundleID:(void *)a2 completion:(void *)a3;
- (void)clearCachesForLinkItemsAssociatedWithBundleID:(id)a3 completion:(id)a4;
- (void)clearCachesForType:(int64_t)a3 completion:(id)a4;
- (void)clearExpiredCachesForType:(int64_t)a3 completion:(id)a4;
- (void)dealloc;
- (void)didFetchBusinessMetadata:(id)a3 forEmailIdentifier:(id)a4 requestId:(id)a5 error:(id)a6 reply:(id)a7;
- (void)didFetchBusinessMetadataForEmailsForRequestId:(id)a3 error:(id)a4 reply:(id)a5;
- (void)fetchBrandWithIdentifier:(id)a3 serviceType:(int64_t)a4 completion:(id)a5;
- (void)fetchBusinessCallerMetadataForPhoneNumber:(id)a3 metadataCallback:(id)a4 logoURLCallback:(id)a5 completion:(id)a6;
- (void)fetchBusinessCallerMetadataWithPhoneNumber:(id)a3 completion:(id)a4;
- (void)fetchBusinessItemWithDetailsForPhoneNumber:(id)a3 completion:(id)a4;
- (void)fetchBusinessItemWithPhoneNumber:(id)a3 completion:(id)a4;
- (void)fetchBusinessLogoForBusinessIdentifier:(id)a3 completion:(id)a4;
- (void)fetchBusinessMetadataForEmail:(id)a3 completion:(id)a4;
- (void)fetchBusinessMetadataForEmailIdentifier:(id)a3 completion:(id)a4;
- (void)fetchBusinessMetadataForEmails:(id)a3 perItemCallback:(id)a4 completion:(id)a5;
- (void)fetchLinkItemWithHash:(id)a3 completion:(id)a4;
- (void)fetchSquareIconDataForBusinessItem:(id)a3 completion:(id)a4;
- (void)fetchWebPresentmentPermissionsWithIdentifier:(id)a3 completion:(id)a4;
- (void)isBusinessCallerRegisteredForPhoneNumber:(id)a3 completion:(id)a4;
- (void)isBusinessRegisteredForPhoneNumber:(id)a3 completion:(id)a4;
- (void)isBusinessRegisteredForURL:(id)a3 completion:(id)a4;
- (void)prefetchBloomFilterAndConfigCacheWithCompletion:(id)a3;
- (void)warmCacheIfNecessaryForPhoneNumbers:(id)a3;
@end

@implementation BCSBusinessQueryService

- (BCSBusinessQueryService)init
{
  v3 = [[BCSXPCDaemonConnection alloc] initWithMachServiceName:self exportedClient:?];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [(BCSBusinessQueryService *)self initWithConnection:v3 clientBundleIdentifier:v5];

  return v6;
}

- (BCSBusinessQueryService)initWithConnection:(id)a3 clientBundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = BCSBusinessQueryService;
  v9 = [(BCSBusinessQueryService *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    v11 = [v8 copy];
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

- (void)warmCacheIfNecessaryForPhoneNumbers:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[BCSBusinessQueryService warmCacheIfNecessaryForPhoneNumbers:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  if ([v4 count] < 0x1F)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v4 subarrayWithRange:{0, 30}];
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

  v9 = [(BCSXPCDaemonConnectionProtocol *)connection remoteObjectProxy];
  [v9 warmCacheIfNecessaryForPhoneNumbers:v7 forClientBundleID:@"com.apple.businessservicesd"];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)businessItemForPhoneNumber:(id)a3 isMessageable:(BOOL *)a4 isChatSuggestVisible:(BOOL *)a5 error:(id *)a6
{
  if (a4)
  {
    *a4 = 1;
  }

  return [(BCSBusinessQueryService *)self businessItemForPhoneNumber:a3 isChatSuggestVisible:a5 error:a6];
}

- (id)businessItemForPhoneNumber:(id)a3 isChatSuggestVisible:(BOOL *)a4 error:(id *)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a3;
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
  [BCSBusinessQueryService _fetchBusinessItemWithDetailsForPhoneNumber:v8 forClientBundleID:v30 completion:?];
  v18 = dispatch_time(0, 1000000000);
  v19 = dispatch_group_wait(v17, v18) == 0;

  if (v19)
  {
    if (a4)
    {
      *a4 = *(v42 + 24);
    }

    if (a5)
    {
      *a5 = v36[5];
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

    if (a4)
    {
      *a4 = 0;
    }

    if (a5)
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA470];
      v45[0] = *MEMORY[0x277CCA450];
      v45[1] = v23;
      v46[0] = @"businessItemForPhoneNumber server fetch timed out";
      v46[1] = @"The operation timed out";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
      *a5 = [v22 errorWithDomain:@"BusinessChat" code:-1001 userInfo:v24];
    }

    if (v15)
    {
      v26 = [MEMORY[0x277CBEAA8] date];
      if (self)
      {
        objc_setProperty_atomic(self, v25, v26, 8);
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

- (void)_fetchBusinessItemWithDetailsForPhoneNumber:(uint64_t)a1 forClientBundleID:(void *)a2 completion:(void *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a1)
  {
    v6 = @"com.apple.businessservicesd";
    v7 = a2;
    v8 = ABSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 16);
      v10 = v9;
      v11 = [v10 remoteObjectProxy];
      *buf = 136315650;
      v19 = "[BCSBusinessQueryService _fetchBusinessItemWithDetailsForPhoneNumber:forClientBundleID:completion:]";
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", buf, 0x20u);
    }

    v12 = *(a1 + 16);
    v13 = [v12 remoteObjectProxy];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __100__BCSBusinessQueryService__fetchBusinessItemWithDetailsForPhoneNumber_forClientBundleID_completion___block_invoke;
    v16[3] = &unk_278D39028;
    v14 = v5;

    v17 = v14;
    [v13 fetchBusinessItemWithDetailsForPhoneNumber:v7 forClientBundleID:@"com.apple.businessservicesd" completion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fetchBusinessItemWithPhoneNumber:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
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
    v13 = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService fetchBusinessItemWithPhoneNumber:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v13;
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
  v16 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__BCSBusinessQueryService_fetchBusinessItemWithPhoneNumber_completion___block_invoke;
  v19[3] = &unk_278D39000;

  v20 = v6;
  v17 = v6;
  [v16 fetchBusinessItemWithPhoneNumber:v7 forClientBundleID:@"com.apple.businessservicesd" completion:v19];

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

- (void)fetchBusinessItemWithDetailsForPhoneNumber:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__BCSBusinessQueryService_fetchBusinessItemWithDetailsForPhoneNumber_completion___block_invoke;
  v8[3] = &unk_278D39028;
  v9 = v6;
  v7 = v6;
  [BCSBusinessQueryService _fetchBusinessItemWithDetailsForPhoneNumber:a3 forClientBundleID:v8 completion:?];
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

- (void)isBusinessRegisteredForPhoneNumber:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
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
    v13 = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService isBusinessRegisteredForPhoneNumber:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v13;
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
  v16 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __73__BCSBusinessQueryService_isBusinessRegisteredForPhoneNumber_completion___block_invoke;
  v19[3] = &unk_278D38818;

  v20 = v6;
  v17 = v6;
  [v16 fetchIsBusinessPhoneNumber:v7 forClientBundleID:@"com.apple.businessservicesd" completion:v19];

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

- (void)fetchSquareIconDataForBusinessItem:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = a3;
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
      v13 = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
      *buf = 136315650;
      v22 = "[BCSBusinessQueryService fetchSquareIconDataForBusinessItem:completion:]";
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v13;
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
    v16 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __73__BCSBusinessQueryService_fetchSquareIconDataForBusinessItem_completion___block_invoke;
    v19[3] = &unk_278D39050;
    v17 = v6;

    v20 = v17;
    [v16 fetchSquareIconDataForBusinessItem:v7 forClientBundleID:@"com.apple.businessservicesd" completion:v19];
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

- (void)isBusinessRegisteredForURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__BCSBusinessQueryService_isBusinessRegisteredForURL_completion___block_invoke;
  v8[3] = &unk_278D390A0;
  v9 = v6;
  v7 = v6;
  [(BCSBusinessQueryService *)self isBusinessRegisteredForURL:a3 chopURL:1 completion:v8];
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

- (void)fetchLinkItemWithHash:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
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
    v13 = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService fetchLinkItemWithHash:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v13;
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
  v16 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__BCSBusinessQueryService_fetchLinkItemWithHash_completion___block_invoke;
  v19[3] = &unk_278D39078;
  v20 = v6;
  v17 = v6;
  [v16 fetchLinkItemModelWithHash:v7 forClientBundleID:self completion:v19];

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

- (void)isBusinessCallerRegisteredForPhoneNumber:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
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
    v13 = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService isBusinessCallerRegisteredForPhoneNumber:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v13;
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
  v16 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__BCSBusinessQueryService_isBusinessCallerRegisteredForPhoneNumber_completion___block_invoke;
  v19[3] = &unk_278D38818;
  v20 = v6;
  v17 = v6;
  [v16 isBusinessCallerRegisteredForPhoneNumber:v7 forClientBundleID:self completion:v19];

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

- (void)fetchBusinessCallerMetadataWithPhoneNumber:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
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
    v13 = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService fetchBusinessCallerMetadataWithPhoneNumber:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v13;
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
  v16 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __81__BCSBusinessQueryService_fetchBusinessCallerMetadataWithPhoneNumber_completion___block_invoke;
  v19[3] = &unk_278D390F0;
  v20 = v6;
  v17 = v6;
  [v16 fetchBusinessCallerMetadataForPhoneNumber:v7 forClientBundleID:self completion:v19];

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

- (void)fetchBusinessCallerMetadataForPhoneNumber:(id)a3 metadataCallback:(id)a4 logoURLCallback:(id)a5 completion:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
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
    v19 = [(BCSXPCDaemonConnectionProtocol *)v18 remoteObjectProxy];
    *buf = 136315650;
    v34 = "[BCSBusinessQueryService fetchBusinessCallerMetadataForPhoneNumber:metadataCallback:logoURLCallback:completion:]";
    v35 = 2112;
    v36 = v15;
    v37 = 2112;
    v38 = v19;
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
  v22 = [(BCSXPCDaemonConnectionProtocol *)v21 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v30 = v11;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __113__BCSBusinessQueryService_fetchBusinessCallerMetadataForPhoneNumber_metadataCallback_logoURLCallback_completion___block_invoke;
  v31[3] = &unk_278D39118;
  v32 = v10;
  v28 = v12;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __113__BCSBusinessQueryService_fetchBusinessCallerMetadataForPhoneNumber_metadataCallback_logoURLCallback_completion___block_invoke_2;
  v29[3] = &unk_278D39140;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __113__BCSBusinessQueryService_fetchBusinessCallerMetadataForPhoneNumber_metadataCallback_logoURLCallback_completion___block_invoke_3;
  v27[3] = &unk_278D39168;
  v23 = v12;
  v24 = v11;
  v25 = v10;
  [v22 fetchBusinessCallerMetadataForPhoneNumber:v13 forClientBundleID:self metadataCallback:v31 logoURLCallback:v29 completion:v27];

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

- (void)fetchBusinessMetadataForEmail:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
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
    v13 = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService fetchBusinessMetadataForEmail:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v13;
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
  v16 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __68__BCSBusinessQueryService_fetchBusinessMetadataForEmail_completion___block_invoke;
  v19[3] = &unk_278D39190;
  v20 = v6;
  v17 = v6;
  [v16 fetchBusinessMetadataForEmail:v7 forClientBundleID:self completion:v19];

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

- (void)fetchBusinessMetadataForEmailIdentifier:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
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
    v13 = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService fetchBusinessMetadataForEmailIdentifier:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v13;
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
  v16 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__BCSBusinessQueryService_fetchBusinessMetadataForEmailIdentifier_completion___block_invoke;
  v19[3] = &unk_278D39190;
  v20 = v6;
  v17 = v6;
  [v16 fetchBusinessMetadataForEmailIdentifier:v7 forClientBundleID:self completion:v19];

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

- (void)fetchBusinessLogoForBusinessIdentifier:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
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
    v13 = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService fetchBusinessLogoForBusinessIdentifier:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v13;
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
  v16 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__BCSBusinessQueryService_fetchBusinessLogoForBusinessIdentifier_completion___block_invoke;
  v19[3] = &unk_278D391B8;
  v20 = v6;
  v17 = v6;
  [v16 fetchBusinessLogoForBusinessIdentifier:v7 forClientBundleID:self completion:v19];

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

- (void)fetchBusinessMetadataForEmails:(id)a3 perItemCallback:(id)a4 completion:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v16 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
    *buf = 136315650;
    v34 = "[BCSBusinessQueryService fetchBusinessMetadataForEmails:perItemCallback:completion:]";
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v16;
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s - connection:%@ remoteObjectProxy:%@", buf, 0x20u);
  }

  if (![v8 count])
  {
    v18 = [BCSError errorWithDomain:@"com.apple.businessservices" code:44 errorDescription:@"Batch must contain at least one identifier"];
    goto LABEL_9;
  }

  if ([v8 count] >= 0x1F)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Batch exceeds maximum size (%ld > %lu)", objc_msgSend(v8, "count"), 30];
    v18 = [BCSError errorWithDomain:@"com.apple.businessservices" code:44 errorDescription:v17];

LABEL_9:
    v10[2](v10, v18);
    goto LABEL_21;
  }

  v18 = objc_alloc_init(BCSBusinessQueryRequest);
  v19 = [MEMORY[0x277CCAD78] UUID];
  [(BCSBusinessQueryRequest *)v18 setRequestId:v19];

  [(BCSBusinessQueryRequest *)v18 setFetchEmailsPerItemBlock:v9];
  [(BCSBusinessQueryRequest *)v18 setFetchEmailsCompletion:v10];
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
  v22 = [(BCSBusinessQueryRequest *)v18 requestId];
  [(NSMutableDictionary *)v21 setObject:v18 forKeyedSubscript:v22];

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
    v25 = [(BCSBusinessQueryRequest *)v18 requestId];
    *buf = 136315394;
    v34 = "[BCSBusinessQueryService fetchBusinessMetadataForEmails:perItemCallback:completion:]";
    v35 = 2112;
    v36 = v25;
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
  v28 = [(BCSXPCDaemonConnectionProtocol *)v27 remoteObjectProxy];
  if (self)
  {
    clientBundleIdentifier = self->_clientBundleIdentifier;
  }

  else
  {
    clientBundleIdentifier = 0;
  }

  v30 = clientBundleIdentifier;
  v31 = [(BCSBusinessQueryRequest *)v18 requestId];
  [v28 fetchBusinessMetadataForEmails:v8 forClientBundleID:v30 requestId:v31 completion:&__block_literal_global_2];

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

- (id)cachedBusinessMetadataForEmail:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
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
    v12 = [(BCSXPCDaemonConnectionProtocol *)v11 remoteObjectProxy];
    *buf = 136315650;
    *&buf[4] = "[BCSBusinessQueryService cachedBusinessMetadataForEmail:error:]";
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v37 = v12;
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
  v18 = v6;
  v25 = v18;
  v26 = self;
  v27 = &v30;
  v28 = buf;
  dispatch_sync(serialQueue, v23);
  if (a4)
  {
    v19 = v31[5];
    if (v19)
    {
      *a4 = v19;
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

- (void)fetchBrandWithIdentifier:(id)a3 serviceType:(int64_t)a4 completion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
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
    v15 = [(BCSXPCDaemonConnectionProtocol *)v14 remoteObjectProxy];
    *buf = 136315650;
    v24 = "[BCSBusinessQueryService fetchBrandWithIdentifier:serviceType:completion:]";
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v15;
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
  v18 = [(BCSXPCDaemonConnectionProtocol *)v17 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__BCSBusinessQueryService_fetchBrandWithIdentifier_serviceType_completion___block_invoke;
  v21[3] = &unk_278D39278;
  v22 = v8;
  v19 = v8;
  [v18 fetchBrandWithIdentifier:v9 forClientBundleID:self serviceType:a4 completion:v21];

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

- (void)fetchWebPresentmentPermissionsWithIdentifier:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
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
    v13 = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    *buf = 136315650;
    v22 = "[BCSBusinessQueryService fetchWebPresentmentPermissionsWithIdentifier:completion:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v13;
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
  v16 = [(BCSXPCDaemonConnectionProtocol *)v15 remoteObjectProxy];
  if (self)
  {
    self = self->_clientBundleIdentifier;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__BCSBusinessQueryService_fetchWebPresentmentPermissionsWithIdentifier_completion___block_invoke;
  v19[3] = &unk_278D39050;
  v20 = v6;
  v17 = v6;
  [v16 fetchWebPresentmentPermissionsWithIdentifier:v7 forClientBundleID:self completion:v19];

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

- (void)prefetchBloomFilterAndConfigCacheWithCompletion:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v10 = [(BCSXPCDaemonConnectionProtocol *)v9 remoteObjectProxy];
    v14 = 136315650;
    v15 = "[BCSBusinessQueryService prefetchBloomFilterAndConfigCacheWithCompletion:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v10;
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

  v12 = [(BCSXPCDaemonConnectionProtocol *)v11 remoteObjectProxy];
  [v12 prefetchMegashardsWithCompletion:v4];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)clearCachesForType:(int64_t)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
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
    v12 = [(BCSXPCDaemonConnectionProtocol *)v11 remoteObjectProxy];
    v16 = 136315650;
    v17 = "[BCSBusinessQueryService clearCachesForType:completion:]";
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v12;
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

  v14 = [(BCSXPCDaemonConnectionProtocol *)v13 remoteObjectProxy];
  [v14 clearCachesForType:a3 completion:v6];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)clearExpiredCachesForType:(int64_t)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
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
    v12 = [(BCSXPCDaemonConnectionProtocol *)v11 remoteObjectProxy];
    v16 = 136315650;
    v17 = "[BCSBusinessQueryService clearExpiredCachesForType:completion:]";
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v12;
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

  v14 = [(BCSXPCDaemonConnectionProtocol *)v13 remoteObjectProxy];
  [v14 clearExpiredCachesForType:a3 completion:v6];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)clearCachesForLinkItemsAssociatedWithBundleID:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
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
    v13 = [(BCSXPCDaemonConnectionProtocol *)v12 remoteObjectProxy];
    v17 = 136315650;
    v18 = "[BCSBusinessQueryService clearCachesForLinkItemsAssociatedWithBundleID:completion:]";
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v13;
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

  v15 = [(BCSXPCDaemonConnectionProtocol *)v14 remoteObjectProxy];
  [v15 clearCachesForLinkItemsAssociatedWithBundleID:v7 completion:v6];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)didFetchBusinessMetadata:(id)a3 forEmailIdentifier:(id)a4 requestId:(id)a5 error:(id)a6 reply:(id)a7
{
  v32 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = ABSLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138413058;
    v25 = v14;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v15;
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

  v19 = [(NSMutableDictionary *)requestsById objectForKeyedSubscript:v14];
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
    v21 = [v19 fetchEmailsPerItemBlock];
    v22 = (*(v21 + 16))(v21, v13, v12, v15);
  }

  else
  {
    v21 = ABSLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315138;
      v25 = "[BCSBusinessQueryService didFetchBusinessMetadata:forEmailIdentifier:requestId:error:reply:]";
      _os_log_error_impl(&dword_242072000, v21, OS_LOG_TYPE_ERROR, "%s - Invalid request ID!", &v24, 0xCu);
    }

    v22 = 0;
  }

  v16[2](v16, v22);
  v23 = *MEMORY[0x277D85DE8];
}

- (void)didFetchBusinessMetadataForEmailsForRequestId:(id)a3 error:(id)a4 reply:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
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

  v13 = [(NSMutableDictionary *)requestsById objectForKeyedSubscript:v8];
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
    v17 = [v13 requestId];
    [(NSMutableDictionary *)v16 removeObjectForKey:v17];

    if (self)
    {
      v18 = self->_requestLock;
    }

    else
    {
      v18 = 0;
    }

    [(NSLock *)v18 unlock];
    v19 = [v13 fetchEmailsCompletion];
    (*(v19 + 16))(v19, v9);
  }

  else
  {
    v19 = ABSLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315138;
      v22 = "[BCSBusinessQueryService didFetchBusinessMetadataForEmailsForRequestId:error:reply:]";
      _os_log_error_impl(&dword_242072000, v19, OS_LOG_TYPE_ERROR, "%s - Invalid request ID!", &v21, 0xCu);
    }
  }

  v10[2](v10);
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
    v8 = [(BCSXPCDaemonConnectionProtocol *)v7 remoteObjectProxy];
    v12 = 136315650;
    v13 = "[BCSBusinessQueryService _deleteInMemoryCache]";
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v8;
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

  v10 = [(BCSXPCDaemonConnectionProtocol *)v9 remoteObjectProxy];
  [v10 _deleteInMemoryCache];

  v11 = *MEMORY[0x277D85DE8];
}

@end