@interface BBObserver
+ (id)gatewayWithQueue:(id)a3 calloutQueue:(id)a4 name:(id)a5 priority:(unint64_t)a6;
+ (id)observerWithQueue:(id)a3 calloutQueue:(id)a4 forGatewayName:(id)a5;
- (BBObserver)initWithQueue:(id)a3 calloutQueue:(id)a4 gatewayName:(id)a5 gatewayPriority:(unint64_t)a6 isGateway:(BOOL)a7 connection:(id)a8;
- (BBObserverDelegate)delegate;
- (NSString)description;
- (id)parametersForSectionID:(id)a3;
- (void)_queue_invalidate;
- (void)_queue_noteBulletinsLoadedForSectionID:(id)a3;
- (void)_queue_registerBulletin:(id)a3 withTransactionID:(unint64_t)a4;
- (void)_queue_serverProxy:(id)a3 connectionStateDidChange:(BOOL)a4;
- (void)_queue_updateAddBulletin:(id)a3 withReply:(id)a4;
- (void)_queue_updateBulletin:(id)a3 withReply:(id)a4;
- (void)_queue_updateModifyBulletin:(id)a3 withReply:(id)a4;
- (void)_queue_updateRemoveBulletin:(id)a3 withReply:(id)a4;
- (void)assertionExpired:(id)a3 transactionID:(unint64_t)a4;
- (void)clearBulletins:(id)a3 inSection:(id)a4;
- (void)clearBulletinsFromDate:(id)a3 toDate:(id)a4 inSections:(id)a5;
- (void)clearSection:(id)a3;
- (void)dealloc;
- (void)getBulletinsForPublisherMatchIDs:(id)a3 sectionID:(id)a4 withCompletion:(id)a5;
- (void)getBulletinsWithCompletion:(id)a3;
- (void)getComposedImageSizeForAttachment:(id)a3 bulletin:(id)a4 withCompletion:(id)a5;
- (void)getParametersForSectionID:(id)a3 withCompletion:(id)a4;
- (void)getPublisherMatchIDsOfBulletinsPublishedAfterDate:(id)a3 withCompletion:(id)a4;
- (void)getSectionInfoForActiveSectionsWithCompletion:(id)a3;
- (void)getSectionInfoForSectionIDs:(id)a3 withCompletion:(id)a4;
- (void)getSectionInfoWithCompletion:(id)a3;
- (void)getUniversalSectionIDForSectionID:(id)a3 withCompletion:(id)a4;
- (void)invalidate;
- (void)noteBulletinsLoadedForSectionID:(id)a3;
- (void)noteServerReceivedResponseForBulletin:(id)a3;
- (void)removeBulletins:(id)a3 inSection:(id)a4 fromFeed:(unint64_t)a5;
- (void)removeSection:(id)a3;
- (void)sendResponse:(id)a3 withCompletion:(id)a4;
- (void)sendResponse:(id)a3 withCompletionIncludingModifiedResponse:(id)a4;
- (void)serverProxy:(id)a3 connectionStateDidChange:(BOOL)a4;
- (void)setObserverFeed:(unint64_t)a3;
- (void)setObserverOptions:(unint64_t)a3;
- (void)updateBulletin:(id)a3 withReply:(id)a4;
- (void)updateGlobalSettings:(id)a3;
- (void)updateSectionInfo:(id)a3;
- (void)updateSectionParameters:(id)a3 forSectionID:(id)a4;
@end

@implementation BBObserver

+ (id)gatewayWithQueue:(id)a3 calloutQueue:(id)a4 name:(id)a5 priority:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] _initWithQueue:v12 calloutQueue:v11 gatewayName:v10 gatewayPriority:a6 isGateway:1];

  return v13;
}

+ (id)observerWithQueue:(id)a3 calloutQueue:(id)a4 forGatewayName:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] _initWithQueue:v10 calloutQueue:v9 gatewayName:v8 gatewayPriority:0 isGateway:0];

  return v11;
}

- (BBObserver)initWithQueue:(id)a3 calloutQueue:(id)a4 gatewayName:(id)a5 gatewayPriority:(unint64_t)a6 isGateway:(BOOL)a7 connection:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v40.receiver = self;
  v40.super_class = BBObserver;
  v18 = [(BBObserver *)&v40 init];
  if (v18)
  {
    if (v14)
    {
      v19 = v14;
      queue = v18->_queue;
      v18->_queue = v19;
    }

    else
    {
      v21 = MEMORY[0x277D85CD0];
      v22 = MEMORY[0x277D85CD0];
      queue = v18->_queue;
      v18->_queue = v21;
    }

    if (v15)
    {
      v23 = v15;
      calloutQueue = v18->_calloutQueue;
      v18->_calloutQueue = v23;
    }

    else
    {
      v25 = MEMORY[0x277D85CD0];
      v26 = MEMORY[0x277D85CD0];
      calloutQueue = v18->_calloutQueue;
      v18->_calloutQueue = v25;
    }

    v27 = BBPrepareQueueForSafeSync(v18->_queue);
    v28 = v18->_queue;
    v18->_queue = v27;

    v29 = [v16 copy];
    gatewayName = v18->_gatewayName;
    v18->_gatewayName = v29;

    v18->_isGateway = a7;
    v18->_gatewayPriority = a6;
    v18->_observerOptions = 0;
    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sectionParametersBySectionID = v18->_sectionParametersBySectionID;
    v18->_sectionParametersBySectionID = v31;

    v33 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:5];
    bulletinLifeAssertions = v18->_bulletinLifeAssertions;
    v18->_bulletinLifeAssertions = v33;

    v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
    remainingFeedsByBulletinID = v18->_remainingFeedsByBulletinID;
    v18->_remainingFeedsByBulletinID = v35;

    v37 = [[BBObserverServerProxy alloc] initWithObserver:v18 connection:v17 queue:v18->_queue calloutQueue:v18->_calloutQueue];
    serverProxy = v18->_serverProxy;
    v18->_serverProxy = v37;
  }

  return v18;
}

- (void)dealloc
{
  [(BBObserverServerProxy *)self->_serverProxy invalidate];
  v3.receiver = self;
  v3.super_class = BBObserver;
  [(BBObserver *)&v3 dealloc];
}

- (void)invalidate
{
  [(BBObserverServerProxy *)self->_serverProxy invalidate];
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__BBObserver_invalidate__block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_async(calloutQueue, block);
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__BBObserver_invalidate__block_invoke_2;
  v5[3] = &unk_278D2A600;
  v5[4] = self;
  dispatch_async(queue, v5);
}

- (void)_queue_invalidate
{
  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableDictionary *)self->_sectionParametersBySectionID removeAllObjects];
  bulletinLifeAssertions = self->_bulletinLifeAssertions;

  [(NSMapTable *)bulletinLifeAssertions removeAllObjects];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = v3;
  observerFeed = self->_observerFeed;
  if (observerFeed)
  {
    [v3 addObject:@"notices"];
    observerFeed = self->_observerFeed;
    if ((observerFeed & 2) == 0)
    {
LABEL_3:
      if ((observerFeed & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((observerFeed & 2) == 0)
  {
    goto LABEL_3;
  }

  [v4 addObject:@"banner"];
  observerFeed = self->_observerFeed;
  if ((observerFeed & 4) == 0)
  {
LABEL_4:
    if ((observerFeed & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v4 addObject:@"modal alert"];
  observerFeed = self->_observerFeed;
  if ((observerFeed & 8) == 0)
  {
LABEL_5:
    if ((observerFeed & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v4 addObject:@"lockscreen"];
  observerFeed = self->_observerFeed;
  if ((observerFeed & 0x8000) == 0)
  {
LABEL_6:
    if ((observerFeed & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v4 addObject:@"highlights"];
  observerFeed = self->_observerFeed;
  if ((observerFeed & 0x10) == 0)
  {
LABEL_7:
    if ((observerFeed & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v4 addObject:@"sound"];
  observerFeed = self->_observerFeed;
  if ((observerFeed & 0x20) == 0)
  {
LABEL_8:
    if ((observerFeed & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v4 addObject:@"locked banner"];
  observerFeed = self->_observerFeed;
  if ((observerFeed & 0x40) == 0)
  {
LABEL_9:
    if ((observerFeed & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v4 addObject:@"locked modal alert"];
  observerFeed = self->_observerFeed;
  if ((observerFeed & 0x80) == 0)
  {
LABEL_10:
    if ((observerFeed & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v4 addObject:@"car"];
  observerFeed = self->_observerFeed;
  if ((observerFeed & 0x4000) == 0)
  {
LABEL_11:
    if ((observerFeed & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v4 addObject:@"remote notifications"];
  observerFeed = self->_observerFeed;
  if ((observerFeed & 0x400) == 0)
  {
LABEL_12:
    if ((observerFeed & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v4 addObject:@"forwarding"];
  observerFeed = self->_observerFeed;
  if ((observerFeed & 0x200) == 0)
  {
LABEL_13:
    if (!observerFeed)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_28:
  [v4 addObject:@"settings"];
  if (self->_observerFeed)
  {
LABEL_14:
    [v4 addObject:@"display"];
  }

LABEL_15:
  if ([v4 count])
  {
    v6 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = @"(none)";
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [v7 stringWithFormat:@"<%@ %p feeds: %@; delegate: %@ observerOptions: %ld>", v8, self, v6, objc_opt_class(), self->_observerOptions];;

  return v10;
}

- (void)setObserverFeed:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__BBObserver_setObserverFeed___block_invoke;
  v4[3] = &unk_278D2A7C0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

uint64_t __30__BBObserver_setObserverFeed___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 72) = *(a1 + 40);
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  if (*(v1 + 56) == 1)
  {
    return [v2 setObserverFeed:v3 asLightsAndSirensGateway:v4 priority:*(v1 + 88)];
  }

  else
  {
    return [v2 setObserverFeed:v3 attachToLightsAndSirensGateway:v4];
  }
}

- (void)setObserverOptions:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_observerOptions != a3)
  {
    self->_observerOptions = a3;
    [(BBObserverServerProxy *)self->_serverProxy setObserverOptions:?];
    v5 = BBLogGeneral;
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      serverProxy = self->_serverProxy;
      v8 = 138412802;
      v9 = self;
      v10 = 2112;
      v11 = serverProxy;
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "%@ setObserverOptions: %@ options: %ld", &v8, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getSectionInfoWithCompletion:(id)a3
{
  v4 = a3;
  serverProxy = self->_serverProxy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__BBObserver_getSectionInfoWithCompletion___block_invoke;
  v7[3] = &unk_278D2A7E8;
  v8 = v4;
  v6 = v4;
  [(BBObserverServerProxy *)serverProxy getSectionInfoWithHandler:v7];
}

void __43__BBObserver_getSectionInfoWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (isKindOfClass)
  {
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5);
}

- (void)getSectionInfoForActiveSectionsWithCompletion:(id)a3
{
  v4 = a3;
  serverProxy = self->_serverProxy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__BBObserver_getSectionInfoForActiveSectionsWithCompletion___block_invoke;
  v7[3] = &unk_278D2A7E8;
  v8 = v4;
  v6 = v4;
  [(BBObserverServerProxy *)serverProxy getSectionInfoForActiveSectionsWithHandler:v7];
}

void __60__BBObserver_getSectionInfoForActiveSectionsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)getSectionInfoForSectionIDs:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  serverProxy = self->_serverProxy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__BBObserver_getSectionInfoForSectionIDs_withCompletion___block_invoke;
  v9[3] = &unk_278D2A7E8;
  v10 = v6;
  v8 = v6;
  [(BBObserverServerProxy *)serverProxy getSectionInfoForSectionIDs:a3 withHandler:v9];
}

void __57__BBObserver_getSectionInfoForSectionIDs_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)getUniversalSectionIDForSectionID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  serverProxy = self->_serverProxy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__BBObserver_getUniversalSectionIDForSectionID_withCompletion___block_invoke;
  v9[3] = &unk_278D2A810;
  v10 = v6;
  v8 = v6;
  [(BBObserverServerProxy *)serverProxy getUniversalSectionIDForSectionID:a3 withHandler:v9];
}

- (void)getBulletinsWithCompletion:(id)a3
{
  v4 = a3;
  serverProxy = self->_serverProxy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__BBObserver_getBulletinsWithCompletion___block_invoke;
  v7[3] = &unk_278D2A838;
  v8 = v4;
  v6 = v4;
  [(BBObserverServerProxy *)serverProxy getBulletinsWithHandler:v7];
}

- (void)getPublisherMatchIDsOfBulletinsPublishedAfterDate:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  serverProxy = self->_serverProxy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__BBObserver_getPublisherMatchIDsOfBulletinsPublishedAfterDate_withCompletion___block_invoke;
  v9[3] = &unk_278D2A860;
  v10 = v6;
  v8 = v6;
  [(BBObserverServerProxy *)serverProxy getPublisherMatchIDsOfBulletinsPublishedAfterDate:a3 withHandler:v9];
}

- (void)getBulletinsForPublisherMatchIDs:(id)a3 sectionID:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  serverProxy = self->_serverProxy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__BBObserver_getBulletinsForPublisherMatchIDs_sectionID_withCompletion___block_invoke;
  v11[3] = &unk_278D2A838;
  v12 = v8;
  v10 = v8;
  [(BBObserverServerProxy *)serverProxy getBulletinsForPublisherMatchIDs:a3 sectionID:a4 withHandler:v11];
}

- (void)sendResponse:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__BBObserver_sendResponse_withCompletion___block_invoke;
  v8[3] = &unk_278D2A888;
  v9 = v6;
  v7 = v6;
  [(BBObserver *)self sendResponse:a3 withCompletionIncludingModifiedResponse:v8];
}

uint64_t __42__BBObserver_sendResponse_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sendResponse:(id)a3 withCompletionIncludingModifiedResponse:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = BBLogGeneral;
  if (!self->_serverProxy)
  {
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
    {
      v16 = v9;
      v17 = objc_opt_class();
      v18 = v17;
      *buf = 138412802;
      v22 = v17;
      v23 = 2080;
      Name = sel_getName(a2);
      v25 = 2112;
      v26 = v7;
      _os_log_error_impl(&dword_241EFF000, v16, OS_LOG_TYPE_ERROR, "%@-%s: attempting to send a response through an invalidated connection -> %@", buf, 0x20u);

      if (!v8)
      {
        goto LABEL_8;
      }
    }

    else if (!v8)
    {
      goto LABEL_8;
    }

    v8[2](v8, 0, v7);
    goto LABEL_8;
  }

  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = objc_opt_class();
    serverProxy = self->_serverProxy;
    *buf = 138412802;
    v22 = v11;
    v23 = 2112;
    Name = v7;
    v25 = 2112;
    v26 = serverProxy;
    v13 = v11;
    _os_log_impl(&dword_241EFF000, v10, OS_LOG_TYPE_DEFAULT, "%@: Sending response %@ through server proxy %@", buf, 0x20u);
  }

  v14 = self->_serverProxy;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__BBObserver_sendResponse_withCompletionIncludingModifiedResponse___block_invoke;
  v19[3] = &unk_278D2A8B0;
  v19[4] = self;
  v20 = v8;
  [(BBObserverServerProxy *)v14 handleResponse:v7 withCompletion:v19];

LABEL_8:
  v15 = *MEMORY[0x277D85DE8];
}

void __67__BBObserver_sendResponse_withCompletionIncludingModifiedResponse___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v12 = 138412802;
    v13 = objc_opt_class();
    v14 = 1024;
    v15 = a2;
    v16 = 2112;
    v17 = v5;
    v9 = v13;
    _os_log_impl(&dword_241EFF000, v8, OS_LOG_TYPE_DEFAULT, "%@: Response handling completed with success %d, modified response %@", &v12, 0x1Cu);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)clearSection:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    *v10 = 138543618;
    *&v10[4] = objc_opt_class();
    *&v10[12] = 2114;
    *&v10[14] = v4;
    v8 = *&v10[4];
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "Observer for %{public}@: Clearing section %{public}@", v10, 0x16u);
  }

  [(BBObserverServerProxy *)self->_serverProxy clearSection:v4, *v10, *&v10[16], v11];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)clearBulletinsFromDate:(id)a3 toDate:(id)a4 inSections:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    *v16 = 138544130;
    *&v16[4] = objc_opt_class();
    *&v16[12] = 2114;
    *&v16[14] = v8;
    *&v16[22] = 2114;
    v17 = v9;
    LOWORD(v18) = 2114;
    *(&v18 + 2) = v10;
    v14 = *&v16[4];
    _os_log_impl(&dword_241EFF000, v12, OS_LOG_TYPE_DEFAULT, "Observer for %{public}@: Clearing from %{public}@ to %{public}@ in sections %{public}@", v16, 0x2Au);
  }

  [(BBObserverServerProxy *)self->_serverProxy clearBulletinsFromDate:v8 toDate:v9 inSections:v10, *v16, *&v16[16], v17, v18];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)clearBulletins:(id)a3 inSection:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_class();
    v12 = v11;
    *buf = 138543874;
    v27 = v11;
    v28 = 2048;
    v29 = [v6 count];
    v30 = 2114;
    v31 = v7;
    _os_log_impl(&dword_241EFF000, v9, OS_LOG_TYPE_DEFAULT, "Observer for %{public}@: Clearing %ld bulletins in section %{public}@", buf, 0x20u);
  }

  v13 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v6, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * v18) bulletinID];
        [v13 addObject:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  [(BBObserverServerProxy *)self->_serverProxy clearBulletinIDs:v13 inSection:v7];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)removeBulletins:(id)a3 inSection:(id)a4 fromFeed:(unint64_t)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = objc_opt_class();
    v14 = v13;
    v16 = 138544130;
    v17 = v13;
    v18 = 2048;
    v19 = [v8 count];
    v20 = 2048;
    v21 = a5;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&dword_241EFF000, v11, OS_LOG_TYPE_DEFAULT, "Observer for %{public}@: Removing %ld bulletins from feed %ld in section %{public}@", &v16, 0x2Au);
  }

  [(BBObserverServerProxy *)self->_serverProxy removeBulletins:v8 inSection:v9 fromFeeds:a5];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)parametersForSectionID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__BBObserver_parametersForSectionID___block_invoke;
  v9[3] = &unk_278D2A8D8;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  BBDispatchSafeSync(queue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __37__BBObserver_parametersForSectionID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)getParametersForSectionID:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__BBObserver_getParametersForSectionID_withCompletion___block_invoke;
  v14[3] = &unk_278D2A928;
  v8 = v7;
  v14[4] = self;
  v15 = v8;
  v9 = MEMORY[0x245D05D40](v14);
  if ([v6 length])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__BBObserver_getParametersForSectionID_withCompletion___block_invoke_3;
    block[3] = &unk_278D2A9A0;
    block[4] = self;
    v12 = v6;
    v13 = v9;
    dispatch_async(queue, block);
  }

  else
  {
    v9[2](v9, 0);
  }
}

void __55__BBObserver_getParametersForSectionID_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__BBObserver_getParametersForSectionID_withCompletion___block_invoke_2;
    v6[3] = &unk_278D2A900;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __55__BBObserver_getParametersForSectionID_withCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  if (v2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(v3 + 48);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__BBObserver_getParametersForSectionID_withCompletion___block_invoke_4;
    v6[3] = &unk_278D2A978;
    v6[4] = v3;
    v7 = v4;
    v8 = *(a1 + 48);
    [v5 getSectionParametersForSectionID:v7 withHandler:v6];
  }
}

void __55__BBObserver_getParametersForSectionID_withCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__BBObserver_getParametersForSectionID_withCompletion___block_invoke_5;
    v7[3] = &unk_278D2A950;
    v7[4] = v5;
    v8 = v3;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    dispatch_async(v6, v7);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __55__BBObserver_getParametersForSectionID_withCompletion___block_invoke_5(void *a1)
{
  [*(a1[4] + 24) setObject:a1[5] forKey:a1[6]];
  v2 = a1[5];
  v3 = *(a1[7] + 16);

  return v3();
}

- (void)getComposedImageSizeForAttachment:(id)a3 bulletin:(id)a4 withCompletion:(id)a5
{
  v7 = a5;
  if (!v7)
  {
    [BBObserver getComposedImageSizeForAttachment:a2 bulletin:self withCompletion:?];
  }

  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__BBObserver_getComposedImageSizeForAttachment_bulletin_withCompletion___block_invoke;
  block[3] = &unk_278D2A9C8;
  v11 = v7;
  v9 = v7;
  dispatch_async(calloutQueue, block);
}

- (void)assertionExpired:(id)a3 transactionID:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__BBObserver_assertionExpired_transactionID___block_invoke;
  block[3] = &unk_278D2A9F0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

void __45__BBObserver_assertionExpired_transactionID___block_invoke(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 16);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __45__BBObserver_assertionExpired_transactionID___block_invoke_2;
  v17 = &unk_278D2A628;
  v18 = v3;
  v19 = v2;
  dispatch_async(v4, &v14);
  [*(a1[4] + 32) removeObjectForKey:{a1[5], v14, v15, v16, v17, v18}];
  [*(a1[4] + 40) removeObjectForKey:a1[5]];
  v5 = BBLogBulletinLife;
  if (os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = v5;
    WeakRetained = objc_loadWeakRetained((v6 + 64));
    v9 = objc_opt_class();
    v10 = a1[5];
    v11 = a1[6];
    *buf = 138543874;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    v24 = 2048;
    v25 = v11;
    v12 = v9;
    _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Observer for %{public}@: finished with bulletin %{public}@, transactionID %ld", buf, 0x20u);
  }

  [*(a1[4] + 48) finishedWithBulletinID:a1[5] transactionID:a1[6]];

  v13 = *MEMORY[0x277D85DE8];
}

void __45__BBObserver_assertionExpired_transactionID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v4 observer:*(a1 + 32) purgeReferencesToBulletinID:*(a1 + 40)];
  }
}

- (void)_queue_registerBulletin:(id)a3 withTransactionID:(unint64_t)a4
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v6 = [v8 bulletinID];
  v7 = [(NSMapTable *)self->_bulletinLifeAssertions objectForKey:v6];
  if (!v7)
  {
    v7 = [[BBAssertion alloc] initWithDelegate:self identifier:v6];
    [(NSMapTable *)self->_bulletinLifeAssertions setObject:v7 forKey:v6];
  }

  [(BBAssertion *)v7 increaseOrIgnoreTransactionID:a4];
  [v8 addLifeAssertion:v7];
  [v8 addObserver:self];
}

- (void)serverProxy:(id)a3 connectionStateDidChange:(BOOL)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__BBObserver_serverProxy_connectionStateDidChange___block_invoke;
  block[3] = &unk_278D2AA18;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)_queue_serverProxy:(id)a3 connectionStateDidChange:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v6 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"disconnected";
    if (v4)
    {
      v7 = @"connected";
    }

    *buf = 138543618;
    v28 = self;
    v29 = 2114;
    v30 = v7;
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "BBObserver: (%{public}@) %{public}@", buf, 0x16u);
  }

  if (v4)
  {
    if (self->_observerFeed)
    {
      [(BBObserver *)self setObserverFeed:?];
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBEB58] set];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = self->_bulletinLifeAssertions;
    v10 = [(NSMapTable *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        v13 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v8 addObject:*(*(&v22 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [(NSMapTable *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    [(BBObserver *)self _queue_invalidate];
    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__BBObserver__queue_serverProxy_connectionStateDidChange___block_invoke;
    block[3] = &unk_278D2A628;
    block[4] = self;
    v21 = v8;
    v15 = v8;
    dispatch_async(calloutQueue, block);
  }

  v16 = self->_calloutQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__BBObserver__queue_serverProxy_connectionStateDidChange___block_invoke_96;
  v18[3] = &unk_278D2AA40;
  v18[4] = self;
  v19 = v4;
  dispatch_async(v16, v18);
  v17 = *MEMORY[0x277D85DE8];
}

void __58__BBObserver__queue_serverProxy_connectionStateDidChange___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = BBLogBulletinLife;
    if (os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating all bulletins for %{public}@", &v8, 0xCu);
    }

    v6 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v6 observer:*(a1 + 32) noteInvalidatedBulletinIDs:*(a1 + 40)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __58__BBObserver__queue_serverProxy_connectionStateDidChange___block_invoke_96(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v4 observer:*(a1 + 32) noteServerConnectionStateChanged:*(a1 + 40)];
  }
}

- (void)updateBulletin:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 bulletinUpdate];
  v9 = [v8 bulletin];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 sectionID];

    if (v11)
    {
      v12 = [v10 sectionID];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __39__BBObserver_updateBulletin_withReply___block_invoke_2;
      v15[3] = &unk_278D2AA68;
      v15[4] = self;
      v16 = v6;
      v17 = v7;
      [(BBObserver *)self getParametersForSectionID:v12 withCompletion:v15];

      v13 = v16;
LABEL_6:

      goto LABEL_7;
    }
  }

  if (v7)
  {
    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__BBObserver_updateBulletin_withReply___block_invoke;
    block[3] = &unk_278D2A9C8;
    v19 = v7;
    dispatch_async(calloutQueue, block);
    v13 = v19;
    goto LABEL_6;
  }

LABEL_7:
}

void __39__BBObserver_updateBulletin_withReply___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__BBObserver_updateBulletin_withReply___block_invoke_3;
  block[3] = &unk_278D2A9A0;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (void)_queue_updateBulletin:(id)a3 withReply:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  queue = self->_queue;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v9 = [v8 bulletinUpdate];
  v10 = [v9 bulletin];
  v11 = [v8 transactionID];

  [(BBObserver *)self _queue_registerBulletin:v10 withTransactionID:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BBObserver *)self _queue_updateAddBulletin:v9 withReply:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(BBObserver *)self _queue_updateModifyBulletin:v9 withReply:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(BBObserver *)self _queue_updateRemoveBulletin:v9 withReply:v6];
      }

      else
      {
        v12 = BBLogBulletinLife;
        if (os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138543362;
          v15 = v9;
          _os_log_impl(&dword_241EFF000, v12, OS_LOG_TYPE_DEFAULT, "Invalid update %{public}@", &v14, 0xCu);
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateAddBulletin:(id)a3 withReply:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v9 = [v8 bulletin];
  v10 = [v8 feeds];
  v11 = self->_observerFeed & v10;
  v12 = [v9 bulletinID];
  v13 = [(NSMutableDictionary *)self->_remainingFeedsByBulletinID objectForKey:v12];
  v14 = [v13 integerValue];

  remainingFeedsByBulletinID = self->_remainingFeedsByBulletinID;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14 | v10];
  [(NSMutableDictionary *)remainingFeedsByBulletinID setObject:v16 forKey:v12];

  LOBYTE(v16) = [v8 shouldPlayLightsAndSirens];
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BBObserver__queue_updateAddBulletin_withReply___block_invoke;
  block[3] = &unk_278D2AAE0;
  v22 = v6;
  v23 = v11;
  block[4] = self;
  v21 = v9;
  v24 = v16;
  v18 = v9;
  v19 = v6;
  dispatch_async(calloutQueue, block);
}

void __49__BBObserver__queue_updateAddBulletin_withReply___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x245D05D40](*(a1 + 48));
  if (*(a1 + 56))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = BBLogBulletinDelivery;
      if (os_log_type_enabled(BBLogBulletinDelivery, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = v5;
        v8 = objc_loadWeakRetained((v6 + 64));
        v9 = objc_opt_class();
        v10 = *(a1 + 40);
        v11 = v9;
        v12 = [v10 bulletinID];
        *buf = 138543618;
        v36 = v9;
        v37 = 2114;
        v38 = v12;
        _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Observer for %{public}@: Delivering ADD bulletin: %{public}@", buf, 0x16u);
      }

      if (v2)
      {
        v13 = MEMORY[0x277CF0BA0];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __49__BBObserver__queue_updateAddBulletin_withReply___block_invoke_106;
        v33[3] = &unk_278D2AA90;
        v14 = v2;
        v34 = v14;
        v15 = [v13 sentinelWithCompletion:v33];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __49__BBObserver__queue_updateAddBulletin_withReply___block_invoke_2;
        v30[3] = &unk_278D2AAB8;
        v31 = v15;
        v32 = v14;
        v16 = v15;
        v2 = [v30 copy];
      }

      v17 = objc_loadWeakRetained((*(a1 + 32) + 64));
      [v17 observer:*(a1 + 32) addBulletin:*(a1 + 40) forFeed:*(a1 + 56) playLightsAndSirens:*(a1 + 64) withReply:v2];

      goto LABEL_14;
    }

    v18 = objc_loadWeakRetained((*(a1 + 32) + 64));
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = BBLogBulletinDelivery;
      if (os_log_type_enabled(BBLogBulletinDelivery, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 32);
        v22 = v20;
        v23 = objc_loadWeakRetained((v21 + 64));
        v24 = objc_opt_class();
        v25 = *(a1 + 40);
        v26 = v24;
        v27 = [v25 bulletinID];
        *buf = 138543618;
        v36 = v24;
        v37 = 2114;
        v38 = v27;
        _os_log_impl(&dword_241EFF000, v22, OS_LOG_TYPE_DEFAULT, "Observer for %{public}@: Delivering ADD bulletin: %{public}@", buf, 0x16u);
      }

      v28 = objc_loadWeakRetained((*(a1 + 32) + 64));
      [v28 observer:*(a1 + 32) addBulletin:*(a1 + 40) forFeed:*(a1 + 56)];
    }
  }

  if (v2)
  {
    v2[2](v2, 0);
LABEL_14:
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __49__BBObserver__queue_updateAddBulletin_withReply___block_invoke_106(uint64_t a1, void *a2)
{
  result = [a2 isFailed];
  if (result)
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

uint64_t __49__BBObserver__queue_updateAddBulletin_withReply___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) signal];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_queue_updateModifyBulletin:(id)a3 withReply:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v9 = [v8 bulletin];
  v10 = [v8 feeds];

  v11 = self->_observerFeed & v10;
  calloutQueue = self->_calloutQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__BBObserver__queue_updateModifyBulletin_withReply___block_invoke;
  v15[3] = &unk_278D2AB08;
  v15[4] = self;
  v16 = v9;
  v17 = v6;
  v18 = v11;
  v13 = v6;
  v14 = v9;
  dispatch_async(calloutQueue, v15);
}

uint64_t __52__BBObserver__queue_updateModifyBulletin_withReply___block_invoke(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a1[7])
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 64));
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = BBLogBulletinDelivery;
      if (os_log_type_enabled(BBLogBulletinDelivery, OS_LOG_TYPE_DEFAULT))
      {
        v5 = a1[4];
        v6 = v4;
        v7 = objc_loadWeakRetained((v5 + 64));
        v8 = objc_opt_class();
        v9 = a1[5];
        v10 = v8;
        v11 = [v9 bulletinID];
        v25 = 138543618;
        v26 = v8;
        v27 = 2114;
        v28 = v11;
        _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "Observer for %{public}@: Delivering MODIFY bulletin: %{public}@", &v25, 0x16u);
      }

      v12 = objc_loadWeakRetained((a1[4] + 64));
      [v12 observer:a1[4] modifyBulletin:a1[5] forFeed:a1[7]];
    }

    else
    {
      v13 = objc_loadWeakRetained((a1[4] + 64));
      v14 = objc_opt_respondsToSelector();

      if ((v14 & 1) == 0)
      {
        goto LABEL_11;
      }

      v15 = BBLogBulletinDelivery;
      if (os_log_type_enabled(BBLogBulletinDelivery, OS_LOG_TYPE_DEFAULT))
      {
        v16 = a1[4];
        v17 = v15;
        v18 = objc_loadWeakRetained((v16 + 64));
        v19 = objc_opt_class();
        v20 = a1[5];
        v21 = v19;
        v22 = [v20 bulletinID];
        v25 = 138543618;
        v26 = v19;
        v27 = 2114;
        v28 = v22;
        _os_log_impl(&dword_241EFF000, v17, OS_LOG_TYPE_DEFAULT, "Observer for %{public}@: Delivering MODIFY bulletin: %{public}@", &v25, 0x16u);
      }

      v12 = objc_loadWeakRetained((a1[4] + 64));
      [v12 observer:a1[4] modifyBulletin:a1[5]];
    }
  }

LABEL_11:
  result = a1[6];
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_queue_updateRemoveBulletin:(id)a3 withReply:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v9 = [v8 bulletin];
  v10 = [v8 feeds];

  observerFeed = self->_observerFeed;
  v12 = [v9 bulletinID];
  v13 = [(NSMutableDictionary *)self->_remainingFeedsByBulletinID objectForKey:v12];
  v14 = [v13 integerValue];

  remainingFeedsByBulletinID = self->_remainingFeedsByBulletinID;
  v16 = v14 & ~v10;
  if (v16)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14 & ~v10];
    [(NSMutableDictionary *)remainingFeedsByBulletinID setObject:v17 forKey:v12];
  }

  else
  {
    [(NSMutableDictionary *)self->_remainingFeedsByBulletinID removeObjectForKey:v12];
  }

  v18 = observerFeed & v10;
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__BBObserver__queue_updateRemoveBulletin_withReply___block_invoke;
  block[3] = &unk_278D2AB30;
  block[4] = self;
  v23 = v9;
  v25 = v18;
  v26 = v16;
  v24 = v6;
  v20 = v6;
  v21 = v9;
  dispatch_async(calloutQueue, block);
}

uint64_t __52__BBObserver__queue_updateRemoveBulletin_withReply___block_invoke(void *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a1[7])
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 64));
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = BBLogBulletinDelivery;
      if (os_log_type_enabled(BBLogBulletinDelivery, OS_LOG_TYPE_DEFAULT))
      {
        v5 = a1[4];
        v6 = v4;
        v7 = objc_loadWeakRetained((v5 + 64));
        v8 = objc_opt_class();
        v9 = a1[5];
        v10 = v8;
        v11 = [v9 bulletinID];
        v35 = 138543618;
        v36 = v8;
        v37 = 2114;
        v38 = v11;
        _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "Observer for %{public}@: Delivering REMOVE bulletin: %{public}@", &v35, 0x16u);
      }

      v12 = objc_loadWeakRetained((a1[4] + 64));
      [v12 observer:a1[4] removeBulletin:a1[5] forFeed:a1[7]];
    }
  }

  v13 = a1[4];
  v14 = *(v13 + 72) & a1[8];
  v15 = objc_loadWeakRetained((v13 + 64));
  v16 = objc_opt_respondsToSelector();

  if (!v14)
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_15;
    }

    v25 = BBLogBulletinDelivery;
    if (os_log_type_enabled(BBLogBulletinDelivery, OS_LOG_TYPE_DEFAULT))
    {
      v26 = a1[4];
      v27 = v25;
      v28 = objc_loadWeakRetained((v26 + 64));
      v29 = objc_opt_class();
      v30 = a1[5];
      v31 = v29;
      v32 = [v30 bulletinID];
      v35 = 138543618;
      v36 = v29;
      v37 = 2114;
      v38 = v32;
      _os_log_impl(&dword_241EFF000, v27, OS_LOG_TYPE_DEFAULT, "Observer for %{public}@: Delivering FINAL REMOVE bulletin: %{public}@", &v35, 0x16u);
    }

    v19 = objc_loadWeakRetained((a1[4] + 64));
    [v19 observer:a1[4] removeBulletin:a1[5]];
    goto LABEL_14;
  }

  if (v16)
  {
    v17 = BBLogBulletinDelivery;
    if (os_log_type_enabled(BBLogBulletinDelivery, OS_LOG_TYPE_DEFAULT))
    {
      v18 = a1[4];
      v19 = v17;
      v20 = objc_loadWeakRetained((v18 + 64));
      v21 = objc_opt_class();
      v22 = a1[5];
      v23 = v21;
      v24 = [v22 bulletinID];
      v35 = 138543618;
      v36 = v21;
      v37 = 2112;
      v38 = v24;
      _os_log_impl(&dword_241EFF000, v19, OS_LOG_TYPE_DEFAULT, "Observer for %{public}@: Suppressing FINAL REMOVE bulletin until removed from all feeds: %@", &v35, 0x16u);

LABEL_14:
    }
  }

LABEL_15:
  result = a1[6];
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v34 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateSectionInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    calloutQueue = self->_calloutQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __32__BBObserver_updateSectionInfo___block_invoke;
    v7[3] = &unk_278D2A628;
    v7[4] = self;
    v8 = v4;
    dispatch_async(calloutQueue, v7);
  }
}

void __32__BBObserver_updateSectionInfo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v4 observer:*(a1 + 32) updateSectionInfo:*(a1 + 40)];
  }
}

- (void)updateSectionParameters:(id)a3 forSectionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__BBObserver_updateSectionParameters_forSectionID___block_invoke;
    block[3] = &unk_278D2AB58;
    block[4] = self;
    v11 = v6;
    v12 = v8;
    dispatch_async(queue, block);
  }
}

void __51__BBObserver_updateSectionParameters_forSectionID___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setObject:*(a1 + 40) forKey:*(a1 + 48)];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__BBObserver_updateSectionParameters_forSectionID___block_invoke_2;
  block[3] = &unk_278D2AB58;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

void __51__BBObserver_updateSectionParameters_forSectionID___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 64));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1[4] + 64));
    [v4 observer:a1[4] noteSectionParametersChanged:a1[5] forSectionID:a1[6]];
  }
}

- (void)removeSection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    calloutQueue = self->_calloutQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__BBObserver_removeSection___block_invoke;
    v7[3] = &unk_278D2A628;
    v7[4] = self;
    v8 = v4;
    dispatch_async(calloutQueue, v7);
  }
}

void __28__BBObserver_removeSection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v4 observer:*(a1 + 32) removeSection:*(a1 + 40)];
  }
}

- (void)updateGlobalSettings:(id)a3
{
  v4 = a3;
  calloutQueue = self->_calloutQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__BBObserver_updateGlobalSettings___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(calloutQueue, v7);
}

void __35__BBObserver_updateGlobalSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v4 observer:*(a1 + 32) updateGlobalSettings:*(a1 + 40)];
  }
}

- (void)noteServerReceivedResponseForBulletin:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    calloutQueue = self->_calloutQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__BBObserver_noteServerReceivedResponseForBulletin___block_invoke;
    v7[3] = &unk_278D2A628;
    v7[4] = self;
    v8 = v4;
    dispatch_async(calloutQueue, v7);
  }
}

void __52__BBObserver_noteServerReceivedResponseForBulletin___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v4 observer:*(a1 + 32) noteServerReceivedResponseForBulletin:*(a1 + 40)];
  }
}

- (void)noteBulletinsLoadedForSectionID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__BBObserver_noteBulletinsLoadedForSectionID___block_invoke;
  v6[3] = &unk_278D2AB80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(BBObserver *)self getParametersForSectionID:v5 withCompletion:v6];
}

void __46__BBObserver_noteBulletinsLoadedForSectionID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__BBObserver_noteBulletinsLoadedForSectionID___block_invoke_2;
  v4[3] = &unk_278D2A628;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

- (void)_queue_noteBulletinsLoadedForSectionID:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  calloutQueue = self->_calloutQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__BBObserver__queue_noteBulletinsLoadedForSectionID___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(calloutQueue, v7);
}

void __53__BBObserver__queue_noteBulletinsLoadedForSectionID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = BBLogBulletinDelivery;
    if (os_log_type_enabled(BBLogBulletinDelivery, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = objc_loadWeakRetained((v5 + 64));
      v8 = objc_opt_class();
      v9 = *(a1 + 40);
      v13 = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v10 = v8;
      _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "Observer for %{public}@: Delivering noteBulletinsLoadedForSectionID: %{public}@", &v13, 0x16u);
    }

    v11 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v11 observer:*(a1 + 32) noteBulletinsLoadedForSectionID:*(a1 + 40)];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BBObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)getComposedImageSizeForAttachment:(uint64_t)a1 bulletin:(uint64_t)a2 withCompletion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBObserver.m" lineNumber:412 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
}

@end