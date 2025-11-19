@interface BCSIdentityService
+ (id)sharedInstance;
- (id)businessChatAccount;
- (void)refreshIDStatusForBizID:(id)a3 completion:(id)a4;
@end

@implementation BCSIdentityService

+ (id)sharedInstance
{
  objc_opt_self();
  v0 = _MergedGlobals_39;
  if (!_MergedGlobals_39)
  {
    if (qword_280BCF580 != -1)
    {
      dispatch_once(&qword_280BCF580, &__block_literal_global_5);
    }

    v0 = _MergedGlobals_39;
  }

  return v0;
}

void __36__BCSIdentityService_sharedInstance__block_invoke()
{
  v0 = [BCSIdentityService alloc];
  v1 = objc_alloc_init(BCSIDSServiceFactory);
  v2 = [MEMORY[0x277D18728] sharedInstance];
  v8 = v1;
  v3 = v2;
  if (v0)
  {
    v9.receiver = v0;
    v9.super_class = BCSIdentityService;
    v4 = objc_msgSendSuper2(&v9, sel_init);
    v0 = v4;
    if (v4)
    {
      objc_storeStrong(&v4->_IDSServiceFactory, v1);
      objc_storeStrong(&v0->_IDSQueryController, v2);
      v5 = dispatch_queue_create([@"com.apple.businesschatservice.bizItemController.serialqueue" UTF8String], 0);
      serialDispatchQueue = v0->_serialDispatchQueue;
      v0->_serialDispatchQueue = v5;
    }
  }

  v7 = _MergedGlobals_39;
  _MergedGlobals_39 = v0;
}

- (id)businessChatAccount
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_businessChatAccount)
  {
    v3 = v2->_IDSServiceFactory;
    v4 = [(BCSIDSServiceFactoryProtocol *)v3 makeIDSService];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [v4 accounts];
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          if ([v11 accountType] == 1)
          {
            v12 = v11;

            v7 = v12;
          }

          if (![v11 accountType])
          {
            v13 = v11;

            v8 = v13;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);

      if (v7)
      {
        v14 = v7;
        v15 = v14;
LABEL_17:
        businessChatAccount = v2->_businessChatAccount;
        v2->_businessChatAccount = v14;

        goto LABEL_18;
      }
    }

    else
    {

      v8 = 0;
    }

    v14 = v8;
    v15 = 0;
    v8 = v14;
    goto LABEL_17;
  }

LABEL_18:
  objc_sync_exit(v2);

  v17 = v2->_businessChatAccount;
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)refreshIDStatusForBizID:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (self)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __54__BCSIdentityService__addIDSIDQueryControllerDelegate__block_invoke;
      v27 = &unk_278D38CC8;
      v28 = self;
      if (_addIDSIDQueryControllerDelegate_onceToken != -1)
      {
        dispatch_once(&_addIDSIDQueryControllerDelegate_onceToken, buf);
      }

      IDSQueryController = self->_IDSQueryController;
    }

    else
    {
      IDSQueryController = 0;
    }

    v9 = [(BCSIDSQueryControllerProtocol *)IDSQueryController _currentIDStatusForDestination:v6 service:@"com.apple.private.alloy.biz" listenerID:@"com.apple.businesschatservice.bizItemController"];
    v10 = ABSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "[BCSIdentityService refreshIDStatusForBizID:completion:]";
      *&buf[12] = 2048;
      *&buf[14] = v9;
      *&buf[22] = 2112;
      v27 = v6;
      _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "%s Cached IDSIDStatus result: %ld for destination: %@", buf, 0x20u);
    }

    if (v9)
    {
      if (self)
      {
        v11 = self->_IDSQueryController;
        self = self->_serialDispatchQueue;
      }

      else
      {
        v11 = 0;
      }

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __57__BCSIdentityService_refreshIDStatusForBizID_completion___block_invoke_13;
      v21[3] = &unk_278D39AA8;
      v22 = v6;
      [(BCSIDSQueryControllerProtocol *)v11 refreshIDStatusForDestination:v22 service:@"com.apple.private.alloy.biz" listenerID:@"com.apple.businesschatservice.bizItemController" queue:self completionBlock:v21];

      v7[2](v7, v9 == 1);
      v12 = v22;
    }

    else
    {
      if (self)
      {
        idStatusCompletionBlocks = self->_idStatusCompletionBlocks;
        if (!idStatusCompletionBlocks)
        {
          v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v15 = self->_idStatusCompletionBlocks;
          self->_idStatusCompletionBlocks = v14;

          idStatusCompletionBlocks = self->_idStatusCompletionBlocks;
        }
      }

      else
      {

        idStatusCompletionBlocks = 0;
      }

      v12 = [(NSMutableDictionary *)idStatusCompletionBlocks objectForKey:v6];
      if (!v12)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
        if (self)
        {
          v16 = self->_idStatusCompletionBlocks;
        }

        else
        {
          v16 = 0;
        }

        [(NSMutableDictionary *)v16 setValue:v12 forKey:v6];
      }

      v17 = MEMORY[0x245D07100](v7);
      [v12 addObject:v17];

      if (self)
      {
        v18 = self->_IDSQueryController;
        serialDispatchQueue = self->_serialDispatchQueue;
      }

      else
      {
        v18 = 0;
        serialDispatchQueue = 0;
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __57__BCSIdentityService_refreshIDStatusForBizID_completion___block_invoke;
      v23[3] = &unk_278D39A80;
      v24 = v6;
      v25 = self;
      [(BCSIDSQueryControllerProtocol *)v18 refreshIDStatusForDestination:v24 service:@"com.apple.private.alloy.biz" listenerID:@"com.apple.businesschatservice.bizItemController" queue:serialDispatchQueue completionBlock:v23];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __57__BCSIdentityService_refreshIDStatusForBizID_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = ABSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 134218242;
    v22 = a2;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_242072000, v4, OS_LOG_TYPE_DEFAULT, "IDSIDStatus result: %ld for destination: %@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = [*(v6 + 24) objectForKey:*(a1 + 32)];
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:buf count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (a2)
          {
            v14 = *(*(&v17 + 1) + 8 * i);
            (*(v14 + 16))(v14, a2 == 1);
            v15 = MEMORY[0x245D07100](v14);
            [v8 addObject:{v15, v17}];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:buf count:16];
      }

      while (v11);
    }

    [v9 minusSet:v8];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __57__BCSIdentityService_refreshIDStatusForBizID_completion___block_invoke_13(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = ABSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 134218242;
    v8 = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_242072000, v4, OS_LOG_TYPE_DEFAULT, "Refreshed IDSIDStatus result: %ld for destination: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __54__BCSIdentityService__addIDSIDQueryControllerDelegate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 40);
    v3 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = v2;
  [v4 addDelegate:v1 forService:@"com.apple.private.alloy.biz" listenerID:@"com.apple.businesschatservice.bizItemController" queue:v3];
}

@end