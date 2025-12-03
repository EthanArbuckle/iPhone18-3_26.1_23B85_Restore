@interface BBDataProviderProxy
- (BBDataProviderProxy)initWithDataProvider:(id)provider clientReplyQueue:(id)queue;
- (NSString)description;
- (void)_makeClientRequest:(id)request;
- (void)_makeServerRequest:(id)request;
- (void)addBulletin:(id)bulletin forDestinations:(unint64_t)destinations;
- (void)addBulletin:(id)bulletin interrupt:(BOOL)interrupt;
- (void)bulletinsWithRequestParameters:(id)parameters lastCleared:(id)cleared completion:(id)completion;
- (void)clearedInfoForBulletins:(id)bulletins lastClearedInfo:(id)info completion:(id)completion;
- (void)clearedInfoForClearingAllBulletinsWithLastClearedInfo:(id)info completion:(id)completion;
- (void)clearedInfoForClearingBulletinsFromDate:(id)date toDate:(id)toDate lastClearedInfo:(id)info completion:(id)completion;
- (void)dataProviderDidLoad;
- (void)dealloc;
- (void)deliverBulletinActionResponse:(id)response withCompletion:(id)completion;
- (void)deliverMessageWithName:(id)name userInfo:(id)info;
- (void)modifyBulletin:(id)bulletin;
- (void)noteSectionInfoDidChange:(id)change;
- (void)reloadDefaultSectionInfo;
- (void)reloadSectionParameters;
- (void)setServerProxy:(id)proxy;
- (void)updateClearedInfoWithHandler:(id)handler;
- (void)updateIdentity:(id)identity;
- (void)updateSectionInfoWithHandler:(id)handler completion:(id)completion;
- (void)withdrawBulletinWithPublisherBulletinID:(id)d shouldSync:(BOOL)sync;
- (void)withdrawBulletinsWithRecordID:(id)d;
@end

@implementation BBDataProviderProxy

- (BBDataProviderProxy)initWithDataProvider:(id)provider clientReplyQueue:(id)queue
{
  providerCopy = provider;
  queueCopy = queue;
  v9 = [(BBDataProviderProxy *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientCalloutQueue, queue);
    objc_storeStrong(&v10->_dataProvider, provider);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.bulletinboard.BBDataProviderProxy.queue", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    v14 = dispatch_queue_create("com.apple.bulletinboard.BBDataProviderProxy.proxyQueue", 0);
    proxyQueue = v10->_proxyQueue;
    v10->_proxyQueue = v14;

    dispatch_suspend(v10->_proxyQueue);
    dispatch_set_target_queue(v10->_proxyQueue, v10->_queue);
    v10->_connected = 0;
  }

  return v10;
}

- (void)dealloc
{
  if (!self->_connected)
  {
    dispatch_resume(self->_proxyQueue);
  }

  v3.receiver = self;
  v3.super_class = BBDataProviderProxy;
  [(BBDataProviderProxy *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dataProvider = self->_dataProvider;
  v6 = objc_opt_class();
  sectionIdentifier = [(BBRemoteDataProvider *)self->_dataProvider sectionIdentifier];
  v8 = [v3 stringWithFormat:@"<%@ %p dataProvider: %@ (%@)>", v4, self, v6, sectionIdentifier];;

  return v8;
}

- (void)updateIdentity:(id)identity
{
  identityCopy = identity;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__BBDataProviderProxy_updateIdentity___block_invoke;
  v6[3] = &unk_278D2BC20;
  v6[4] = self;
  v7 = identityCopy;
  v5 = identityCopy;
  [(BBDataProviderProxy *)self _makeClientRequest:v6];
}

void __38__BBDataProviderProxy_updateIdentity___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [BBDataProviderIdentity identityForRemoteDataProvider:a2];
  [*(a1 + 32) setIdentity:?];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)setServerProxy:(id)proxy
{
  v19 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  v5 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543618;
    v16 = v8;
    v17 = 2114;
    v18 = proxyCopy;
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ setting server proxy: %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__BBDataProviderProxy_setServerProxy___block_invoke;
  v12[3] = &unk_278D2A628;
  v13 = proxyCopy;
  selfCopy = self;
  v10 = proxyCopy;
  dispatch_async(queue, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __38__BBDataProviderProxy_setServerProxy___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6 = *(v2 + 48);
  v4 = (v2 + 48);
  v5 = v6;
  if (v3 != v6)
  {
    if (v3)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 == 0;
    }

    if (v7)
    {
      if (v3)
      {
        v8 = v5 == 0;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        v17 = BBLogConnection;
        if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 40);
          v19 = v17;
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v23 = 138543362;
          v24 = v21;
          _os_log_impl(&dword_241EFF000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ resuming proxy queue", &v23, 0xCu);
        }

        *(*(a1 + 40) + 56) = 1;
        objc_storeStrong((*(a1 + 40) + 48), *(a1 + 32));
        dispatch_resume(*(*(a1 + 40) + 40));
      }

      else
      {
        objc_storeStrong(v4, v3);
      }
    }

    else
    {
      v9 = BBLogConnection;
      if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v12 = v9;
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v23 = 138543362;
        v24 = v14;
        _os_log_impl(&dword_241EFF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ suspending proxy queue", &v23, 0xCu);
      }

      *(*(a1 + 40) + 56) = 0;
      dispatch_suspend(*(*(a1 + 40) + 40));
      v15 = *(a1 + 40);
      v16 = *(v15 + 48);
      *(v15 + 48) = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_makeServerRequest:(id)request
{
  requestCopy = request;
  proxyQueue = self->_proxyQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__BBDataProviderProxy__makeServerRequest___block_invoke;
  v7[3] = &unk_278D2A900;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(proxyQueue, v7);
}

- (void)_makeClientRequest:(id)request
{
  requestCopy = request;
  clientCalloutQueue = self->_clientCalloutQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__BBDataProviderProxy__makeClientRequest___block_invoke;
  v7[3] = &unk_278D2A900;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(clientCalloutQueue, v7);
}

uint64_t __42__BBDataProviderProxy__makeClientRequest___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 8));
  }

  return result;
}

- (void)addBulletin:(id)bulletin interrupt:(BOOL)interrupt
{
  if (interrupt)
  {
    v4 = 78;
  }

  else
  {
    v4 = 2;
  }

  [(BBDataProviderProxy *)self addBulletin:bulletin forDestinations:v4];
}

- (void)addBulletin:(id)bulletin forDestinations:(unint64_t)destinations
{
  v18 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  v7 = BBLogBulletinLife;
  if (os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    identity = [(BBDataProviderProxy *)self identity];
    sectionIdentifier = [identity sectionIdentifier];
    *buf = 138543362;
    v17 = sectionIdentifier;
    _os_log_impl(&dword_241EFF000, v8, OS_LOG_TYPE_DEFAULT, "BBDataProviderProxy %{public}@ has enqueued a bulletin request", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__BBDataProviderProxy_addBulletin_forDestinations___block_invoke;
  v13[3] = &unk_278D2BC68;
  v13[4] = self;
  v14 = bulletinCopy;
  destinationsCopy = destinations;
  v11 = bulletinCopy;
  [(BBDataProviderProxy *)self _makeServerRequest:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __51__BBDataProviderProxy_addBulletin_forDestinations___block_invoke(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BBLogBulletinLife;
  if (os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = v4;
    v7 = [v5 identity];
    v8 = [v7 sectionIdentifier];
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "BBDataProviderProxy %{public}@ is now sending enqueued bulletin request to BBServer", &v10, 0xCu);
  }

  [v3 addBulletin:a1[5] forDestinations:a1[6]];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)modifyBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__BBDataProviderProxy_modifyBulletin___block_invoke;
  v6[3] = &unk_278D2BC90;
  v7 = bulletinCopy;
  v5 = bulletinCopy;
  [(BBDataProviderProxy *)self _makeServerRequest:v6];
}

- (void)withdrawBulletinsWithRecordID:(id)d
{
  dCopy = d;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__BBDataProviderProxy_withdrawBulletinsWithRecordID___block_invoke;
  v6[3] = &unk_278D2BC90;
  v7 = dCopy;
  v5 = dCopy;
  [(BBDataProviderProxy *)self _makeServerRequest:v6];
}

- (void)withdrawBulletinWithPublisherBulletinID:(id)d shouldSync:(BOOL)sync
{
  dCopy = d;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__BBDataProviderProxy_withdrawBulletinWithPublisherBulletinID_shouldSync___block_invoke;
  v8[3] = &unk_278D2BCB8;
  v9 = dCopy;
  syncCopy = sync;
  v7 = dCopy;
  [(BBDataProviderProxy *)self _makeServerRequest:v8];
}

- (void)reloadSectionParameters
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__BBDataProviderProxy_reloadSectionParameters__block_invoke;
  v2[3] = &unk_278D2BCE0;
  v2[4] = self;
  [(BBDataProviderProxy *)self updateIdentity:v2];
}

void __46__BBDataProviderProxy_reloadSectionParameters__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__BBDataProviderProxy_reloadSectionParameters__block_invoke_2;
  v6[3] = &unk_278D2BC90;
  v7 = v3;
  v5 = v3;
  [v4 _makeServerRequest:v6];
}

- (void)reloadDefaultSectionInfo
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__BBDataProviderProxy_reloadDefaultSectionInfo__block_invoke;
  v2[3] = &unk_278D2BCE0;
  v2[4] = self;
  [(BBDataProviderProxy *)self updateIdentity:v2];
}

void __47__BBDataProviderProxy_reloadDefaultSectionInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__BBDataProviderProxy_reloadDefaultSectionInfo__block_invoke_2;
  v6[3] = &unk_278D2BC90;
  v7 = v3;
  v5 = v3;
  [v4 _makeServerRequest:v6];
}

- (void)updateClearedInfoWithHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [BBDataProviderProxy updateClearedInfoWithHandler:];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__BBDataProviderProxy_updateClearedInfoWithHandler___block_invoke;
  v6[3] = &unk_278D2BD58;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(BBDataProviderProxy *)self _makeServerRequest:v6];
}

void __52__BBDataProviderProxy_updateClearedInfoWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__BBDataProviderProxy_updateClearedInfoWithHandler___block_invoke_2;
  v4[3] = &unk_278D2BD30;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 getClearedInfoWithCompletion:v4];
}

void __52__BBDataProviderProxy_updateClearedInfoWithHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__BBDataProviderProxy_updateClearedInfoWithHandler___block_invoke_3;
    v9[3] = &unk_278D2BD08;
    v6 = *(a1 + 32);
    v12 = *(a1 + 40);
    v7 = v5;
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    [v6 _makeClientRequest:v9];
  }
}

void __52__BBDataProviderProxy_updateClearedInfoWithHandler___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = (*(a1[6] + 16))();
  v4 = v3;
  if (v3 != a1[4])
  {
    v5 = a1[5];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__BBDataProviderProxy_updateClearedInfoWithHandler___block_invoke_4;
    v6[3] = &unk_278D2BC90;
    v7 = v3;
    [v5 _makeServerRequest:v6];
  }
}

- (void)updateSectionInfoWithHandler:(id)handler completion:(id)completion
{
  handlerCopy = handler;
  completionCopy = completion;
  if (!handlerCopy)
  {
    [BBDataProviderProxy updateSectionInfoWithHandler:completion:];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__BBDataProviderProxy_updateSectionInfoWithHandler_completion___block_invoke;
  v10[3] = &unk_278D2BE20;
  v10[4] = self;
  v11 = handlerCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = handlerCopy;
  [(BBDataProviderProxy *)self _makeServerRequest:v10];
}

void __63__BBDataProviderProxy_updateSectionInfoWithHandler_completion___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__BBDataProviderProxy_updateSectionInfoWithHandler_completion___block_invoke_2;
  v5[3] = &unk_278D2BDF8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [a2 getSectionInfoWithCompletion:v5];
}

void __63__BBDataProviderProxy_updateSectionInfoWithHandler_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__BBDataProviderProxy_updateSectionInfoWithHandler_completion___block_invoke_3;
    v15[3] = &unk_278D2BDD0;
    v9 = &v18;
    v10 = *(a1 + 32);
    v18 = *(a1 + 40);
    v11 = v5;
    v12 = *(a1 + 32);
    v16 = v11;
    v17 = v12;
    v19 = *(a1 + 48);
    [v10 _makeClientRequest:v15];

    goto LABEL_5;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __63__BBDataProviderProxy_updateSectionInfoWithHandler_completion___block_invoke_7;
    v13[3] = &unk_278D2BD80;
    v9 = &v14;
    v14 = v7;
    [v8 _makeClientRequest:v13];
LABEL_5:
  }
}

void __63__BBDataProviderProxy_updateSectionInfoWithHandler_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(*(a1 + 48) + 16))();
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__BBDataProviderProxy_updateSectionInfoWithHandler_completion___block_invoke_4;
    v12[3] = &unk_278D2BDA8;
    v6 = v13;
    v13[0] = v3;
    v7 = *(a1 + 56);
    v13[1] = *(a1 + 40);
    v14 = v7;
    [v5 _makeServerRequest:v12];

LABEL_5:
    goto LABEL_6;
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__BBDataProviderProxy_updateSectionInfoWithHandler_completion___block_invoke_6;
    v10[3] = &unk_278D2BD80;
    v6 = &v11;
    v11 = v8;
    [v9 _makeClientRequest:v10];
    goto LABEL_5;
  }

LABEL_6:
}

void __63__BBDataProviderProxy_updateSectionInfoWithHandler_completion___block_invoke_4(void *a1, void *a2)
{
  [a2 setSectionInfo:a1[4]];
  v3 = a1[6];
  if (v3)
  {
    v4 = a1[5];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__BBDataProviderProxy_updateSectionInfoWithHandler_completion___block_invoke_5;
    v5[3] = &unk_278D2BD80;
    v6 = v3;
    [v4 _makeClientRequest:v5];
  }
}

- (void)dataProviderDidLoad
{
  if (!self->_dataProviderDidLoad)
  {
    self->_dataProviderDidLoad = 1;
    identity = [(BBDataProviderProxy *)self identity];
    traits = [identity traits];

    if ((traits & 2) != 0)
    {

      [(BBDataProviderProxy *)self _makeClientRequest:&__block_literal_global_24];
    }
  }
}

- (void)bulletinsWithRequestParameters:(id)parameters lastCleared:(id)cleared completion:(id)completion
{
  parametersCopy = parameters;
  clearedCopy = cleared;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__BBDataProviderProxy_bulletinsWithRequestParameters_lastCleared_completion___block_invoke;
  v14[3] = &unk_278D2BE90;
  v14[4] = self;
  v15 = parametersCopy;
  v16 = clearedCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = clearedCopy;
  v13 = parametersCopy;
  [(BBDataProviderProxy *)self _makeClientRequest:v14];
}

void __77__BBDataProviderProxy_bulletinsWithRequestParameters_lastCleared_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identity];
  if (([v4 traits] & 4) != 0)
  {
    v8 = [v3 bulletinsWithRequestParameters:*(a1 + 40) lastCleared:*(a1 + 48)];
LABEL_6:
    v7 = v8;
    goto LABEL_8;
  }

  if (([v4 traits] & 0x10) != 0)
  {
    v9 = [*(a1 + 40) enabledSectionIDs];
    v7 = [v3 bulletinsFilteredBy:0 enabledSectionIDs:v9 count:objc_msgSend(*(a1 + 40) lastCleared:{"maximumCount"), *(a1 + 48)}];

    goto LABEL_8;
  }

  if (([v4 traits] & 8) != 0)
  {
    v8 = [v3 bulletinsFilteredBy:0 count:objc_msgSend(*(a1 + 40) lastCleared:{"maximumCount"), *(a1 + 48)}];
    goto LABEL_6;
  }

  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  NSLog(&cfstr_DataProviderDo.isa, v6, v3);
  v7 = 0;
LABEL_8:
  v10 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__BBDataProviderProxy_bulletinsWithRequestParameters_lastCleared_completion___block_invoke_2;
  v13[3] = &unk_278D2BE68;
  v11 = *(a1 + 56);
  v14 = v7;
  v15 = v11;
  v12 = v7;
  [v10 _makeServerRequest:v13];
}

- (void)clearedInfoForClearingAllBulletinsWithLastClearedInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__BBDataProviderProxy_clearedInfoForClearingAllBulletinsWithLastClearedInfo_completion___block_invoke;
  v10[3] = &unk_278D2BEB8;
  v10[4] = self;
  v11 = infoCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = infoCopy;
  [(BBDataProviderProxy *)self _makeClientRequest:v10];
}

void __88__BBDataProviderProxy_clearedInfoForClearingAllBulletinsWithLastClearedInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identity];
  v5 = [v4 traits];

  if ((v5 & 0x40) != 0)
  {
    v8 = [v3 clearedInfoForClearingAllBulletinsWithLastClearedInfo:*(a1 + 40)];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    NSLog(&cfstr_DataProviderDo_0.isa, v7, v3);
    v8 = 0;
  }

  v9 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__BBDataProviderProxy_clearedInfoForClearingAllBulletinsWithLastClearedInfo_completion___block_invoke_2;
  v12[3] = &unk_278D2BE68;
  v10 = *(a1 + 48);
  v13 = v8;
  v14 = v10;
  v11 = v8;
  [v9 _makeServerRequest:v12];
}

- (void)clearedInfoForClearingBulletinsFromDate:(id)date toDate:(id)toDate lastClearedInfo:(id)info completion:(id)completion
{
  dateCopy = date;
  toDateCopy = toDate;
  infoCopy = info;
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __97__BBDataProviderProxy_clearedInfoForClearingBulletinsFromDate_toDate_lastClearedInfo_completion___block_invoke;
  v18[3] = &unk_278D2BEE0;
  v18[4] = self;
  v19 = dateCopy;
  v20 = toDateCopy;
  v21 = infoCopy;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = infoCopy;
  v16 = toDateCopy;
  v17 = dateCopy;
  [(BBDataProviderProxy *)self _makeClientRequest:v18];
}

void __97__BBDataProviderProxy_clearedInfoForClearingBulletinsFromDate_toDate_lastClearedInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identity];
  v5 = [v4 traits];

  if (v5 < 0)
  {
    v8 = [v3 clearedInfoForClearingBulletinsFromDate:*(a1 + 40) toDate:*(a1 + 48) lastClearedInfo:*(a1 + 56)];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    NSLog(&cfstr_DataProviderDo_0.isa, v7, v3);
    v8 = 0;
  }

  v9 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__BBDataProviderProxy_clearedInfoForClearingBulletinsFromDate_toDate_lastClearedInfo_completion___block_invoke_2;
  v12[3] = &unk_278D2BE68;
  v10 = *(a1 + 64);
  v13 = v8;
  v14 = v10;
  v11 = v8;
  [v9 _makeServerRequest:v12];
}

- (void)clearedInfoForBulletins:(id)bulletins lastClearedInfo:(id)info completion:(id)completion
{
  bulletinsCopy = bulletins;
  infoCopy = info;
  completionCopy = completion;
  identity = [(BBDataProviderProxy *)self identity];
  v12 = [identity traits] & 0x20;
  if (v12)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = ([identity traits] >> 8) & 1;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__BBDataProviderProxy_clearedInfoForBulletins_lastClearedInfo_completion___block_invoke;
  v17[3] = &unk_278D2BF08;
  v22 = v12 >> 5;
  v18 = bulletinsCopy;
  v19 = infoCopy;
  v23 = v13;
  selfCopy = self;
  v21 = completionCopy;
  v14 = completionCopy;
  v15 = infoCopy;
  v16 = bulletinsCopy;
  [(BBDataProviderProxy *)self _makeClientRequest:v17];
}

void __74__BBDataProviderProxy_clearedInfoForBulletins_lastClearedInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 64) == 1)
  {
    v5 = [v3 clearedInfoForBulletins:*(a1 + 32) lastClearedInfo:*(a1 + 40)];
  }

  else
  {
    if (*(a1 + 65) != 1)
    {
      v7 = *(a1 + 48);
      v8 = objc_opt_class();
      NSLog(&cfstr_DataProviderDo_1.isa, v8, v4);
      v6 = 0;
      goto LABEL_7;
    }

    v5 = [v3 clearedInfoForBulletins:*(a1 + 32)];
  }

  v6 = v5;
LABEL_7:
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__BBDataProviderProxy_clearedInfoForBulletins_lastClearedInfo_completion___block_invoke_2;
  v12[3] = &unk_278D2BE68;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v13 = v6;
  v14 = v10;
  v11 = v6;
  [v9 _makeServerRequest:v12];
}

- (void)noteSectionInfoDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__BBDataProviderProxy_noteSectionInfoDidChange___block_invoke;
  v6[3] = &unk_278D2BF30;
  v7 = changeCopy;
  v5 = changeCopy;
  [(BBDataProviderProxy *)self _makeClientRequest:v6];
}

- (void)deliverMessageWithName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__BBDataProviderProxy_deliverMessageWithName_userInfo___block_invoke;
  v10[3] = &unk_278D2BF58;
  v11 = nameCopy;
  v12 = infoCopy;
  v8 = infoCopy;
  v9 = nameCopy;
  [(BBDataProviderProxy *)self _makeClientRequest:v10];
}

- (void)deliverBulletinActionResponse:(id)response withCompletion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__BBDataProviderProxy_deliverBulletinActionResponse_withCompletion___block_invoke;
  v10[3] = &unk_278D2BC20;
  v11 = responseCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = responseCopy;
  [(BBDataProviderProxy *)self _makeClientRequest:v10];
}

void __68__BBDataProviderProxy_deliverBulletinActionResponse_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v3;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ handling bulletin action response %{public}@", buf, 0x16u);
  }

  v6 = objc_opt_respondsToSelector();
  v7 = *(a1 + 32);
  if (v6)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__BBDataProviderProxy_deliverBulletinActionResponse_withCompletion___block_invoke_36;
    v10[3] = &unk_278D2BF80;
    v11 = *(a1 + 40);
    [v3 handleBulletinActionResponse:v7 withCompletion:v10];
  }

  else
  {
    [v3 handleBulletinActionResponse:*(a1 + 32)];
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 1);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateClearedInfoWithHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"handler" object:? file:? lineNumber:? description:?];
}

- (void)updateSectionInfoWithHandler:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"handler" object:? file:? lineNumber:? description:?];
}

@end