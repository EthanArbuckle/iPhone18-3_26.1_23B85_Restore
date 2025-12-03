@interface BBObserver
+ (id)gatewayWithQueue:(id)queue calloutQueue:(id)calloutQueue name:(id)name priority:(unint64_t)priority;
+ (id)observerWithQueue:(id)queue calloutQueue:(id)calloutQueue forGatewayName:(id)name;
- (BBObserver)initWithQueue:(id)queue calloutQueue:(id)calloutQueue gatewayName:(id)name gatewayPriority:(unint64_t)priority isGateway:(BOOL)gateway connection:(id)connection;
- (BBObserverDelegate)delegate;
- (NSString)description;
- (id)parametersForSectionID:(id)d;
- (void)_queue_invalidate;
- (void)_queue_noteBulletinsLoadedForSectionID:(id)d;
- (void)_queue_registerBulletin:(id)bulletin withTransactionID:(unint64_t)d;
- (void)_queue_serverProxy:(id)proxy connectionStateDidChange:(BOOL)change;
- (void)_queue_updateAddBulletin:(id)bulletin withReply:(id)reply;
- (void)_queue_updateBulletin:(id)bulletin withReply:(id)reply;
- (void)_queue_updateModifyBulletin:(id)bulletin withReply:(id)reply;
- (void)_queue_updateRemoveBulletin:(id)bulletin withReply:(id)reply;
- (void)assertionExpired:(id)expired transactionID:(unint64_t)d;
- (void)clearBulletins:(id)bulletins inSection:(id)section;
- (void)clearBulletinsFromDate:(id)date toDate:(id)toDate inSections:(id)sections;
- (void)clearSection:(id)section;
- (void)dealloc;
- (void)getBulletinsForPublisherMatchIDs:(id)ds sectionID:(id)d withCompletion:(id)completion;
- (void)getBulletinsWithCompletion:(id)completion;
- (void)getComposedImageSizeForAttachment:(id)attachment bulletin:(id)bulletin withCompletion:(id)completion;
- (void)getParametersForSectionID:(id)d withCompletion:(id)completion;
- (void)getPublisherMatchIDsOfBulletinsPublishedAfterDate:(id)date withCompletion:(id)completion;
- (void)getSectionInfoForActiveSectionsWithCompletion:(id)completion;
- (void)getSectionInfoForSectionIDs:(id)ds withCompletion:(id)completion;
- (void)getSectionInfoWithCompletion:(id)completion;
- (void)getUniversalSectionIDForSectionID:(id)d withCompletion:(id)completion;
- (void)invalidate;
- (void)noteBulletinsLoadedForSectionID:(id)d;
- (void)noteServerReceivedResponseForBulletin:(id)bulletin;
- (void)removeBulletins:(id)bulletins inSection:(id)section fromFeed:(unint64_t)feed;
- (void)removeSection:(id)section;
- (void)sendResponse:(id)response withCompletion:(id)completion;
- (void)sendResponse:(id)response withCompletionIncludingModifiedResponse:(id)modifiedResponse;
- (void)serverProxy:(id)proxy connectionStateDidChange:(BOOL)change;
- (void)setObserverFeed:(unint64_t)feed;
- (void)setObserverOptions:(unint64_t)options;
- (void)updateBulletin:(id)bulletin withReply:(id)reply;
- (void)updateGlobalSettings:(id)settings;
- (void)updateSectionInfo:(id)info;
- (void)updateSectionParameters:(id)parameters forSectionID:(id)d;
@end

@implementation BBObserver

+ (id)gatewayWithQueue:(id)queue calloutQueue:(id)calloutQueue name:(id)name priority:(unint64_t)priority
{
  nameCopy = name;
  calloutQueueCopy = calloutQueue;
  queueCopy = queue;
  v13 = [[self alloc] _initWithQueue:queueCopy calloutQueue:calloutQueueCopy gatewayName:nameCopy gatewayPriority:priority isGateway:1];

  return v13;
}

+ (id)observerWithQueue:(id)queue calloutQueue:(id)calloutQueue forGatewayName:(id)name
{
  nameCopy = name;
  calloutQueueCopy = calloutQueue;
  queueCopy = queue;
  v11 = [[self alloc] _initWithQueue:queueCopy calloutQueue:calloutQueueCopy gatewayName:nameCopy gatewayPriority:0 isGateway:0];

  return v11;
}

- (BBObserver)initWithQueue:(id)queue calloutQueue:(id)calloutQueue gatewayName:(id)name gatewayPriority:(unint64_t)priority isGateway:(BOOL)gateway connection:(id)connection
{
  queueCopy = queue;
  calloutQueueCopy = calloutQueue;
  nameCopy = name;
  connectionCopy = connection;
  v40.receiver = self;
  v40.super_class = BBObserver;
  v18 = [(BBObserver *)&v40 init];
  if (v18)
  {
    if (queueCopy)
    {
      v19 = queueCopy;
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

    if (calloutQueueCopy)
    {
      v23 = calloutQueueCopy;
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

    v29 = [nameCopy copy];
    gatewayName = v18->_gatewayName;
    v18->_gatewayName = v29;

    v18->_isGateway = gateway;
    v18->_gatewayPriority = priority;
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

    v37 = [[BBObserverServerProxy alloc] initWithObserver:v18 connection:connectionCopy queue:v18->_queue calloutQueue:v18->_calloutQueue];
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
  array = [MEMORY[0x277CBEB18] array];
  v4 = array;
  observerFeed = self->_observerFeed;
  if (observerFeed)
  {
    [array addObject:@"notices"];
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

- (void)setObserverFeed:(unint64_t)feed
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__BBObserver_setObserverFeed___block_invoke;
  v4[3] = &unk_278D2A7C0;
  v4[4] = self;
  v4[5] = feed;
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

- (void)setObserverOptions:(unint64_t)options
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_observerOptions != options)
  {
    self->_observerOptions = options;
    [(BBObserverServerProxy *)self->_serverProxy setObserverOptions:?];
    v5 = BBLogGeneral;
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      serverProxy = self->_serverProxy;
      v8 = 138412802;
      selfCopy = self;
      v10 = 2112;
      v11 = serverProxy;
      v12 = 2048;
      optionsCopy = options;
      _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "%@ setObserverOptions: %@ options: %ld", &v8, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getSectionInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  serverProxy = self->_serverProxy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__BBObserver_getSectionInfoWithCompletion___block_invoke;
  v7[3] = &unk_278D2A7E8;
  v8 = completionCopy;
  v6 = completionCopy;
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

- (void)getSectionInfoForActiveSectionsWithCompletion:(id)completion
{
  completionCopy = completion;
  serverProxy = self->_serverProxy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__BBObserver_getSectionInfoForActiveSectionsWithCompletion___block_invoke;
  v7[3] = &unk_278D2A7E8;
  v8 = completionCopy;
  v6 = completionCopy;
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

- (void)getSectionInfoForSectionIDs:(id)ds withCompletion:(id)completion
{
  completionCopy = completion;
  serverProxy = self->_serverProxy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__BBObserver_getSectionInfoForSectionIDs_withCompletion___block_invoke;
  v9[3] = &unk_278D2A7E8;
  v10 = completionCopy;
  v8 = completionCopy;
  [(BBObserverServerProxy *)serverProxy getSectionInfoForSectionIDs:ds withHandler:v9];
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

- (void)getUniversalSectionIDForSectionID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  serverProxy = self->_serverProxy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__BBObserver_getUniversalSectionIDForSectionID_withCompletion___block_invoke;
  v9[3] = &unk_278D2A810;
  v10 = completionCopy;
  v8 = completionCopy;
  [(BBObserverServerProxy *)serverProxy getUniversalSectionIDForSectionID:d withHandler:v9];
}

- (void)getBulletinsWithCompletion:(id)completion
{
  completionCopy = completion;
  serverProxy = self->_serverProxy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__BBObserver_getBulletinsWithCompletion___block_invoke;
  v7[3] = &unk_278D2A838;
  v8 = completionCopy;
  v6 = completionCopy;
  [(BBObserverServerProxy *)serverProxy getBulletinsWithHandler:v7];
}

- (void)getPublisherMatchIDsOfBulletinsPublishedAfterDate:(id)date withCompletion:(id)completion
{
  completionCopy = completion;
  serverProxy = self->_serverProxy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__BBObserver_getPublisherMatchIDsOfBulletinsPublishedAfterDate_withCompletion___block_invoke;
  v9[3] = &unk_278D2A860;
  v10 = completionCopy;
  v8 = completionCopy;
  [(BBObserverServerProxy *)serverProxy getPublisherMatchIDsOfBulletinsPublishedAfterDate:date withHandler:v9];
}

- (void)getBulletinsForPublisherMatchIDs:(id)ds sectionID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  serverProxy = self->_serverProxy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__BBObserver_getBulletinsForPublisherMatchIDs_sectionID_withCompletion___block_invoke;
  v11[3] = &unk_278D2A838;
  v12 = completionCopy;
  v10 = completionCopy;
  [(BBObserverServerProxy *)serverProxy getBulletinsForPublisherMatchIDs:ds sectionID:d withHandler:v11];
}

- (void)sendResponse:(id)response withCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__BBObserver_sendResponse_withCompletion___block_invoke;
  v8[3] = &unk_278D2A888;
  v9 = completionCopy;
  v7 = completionCopy;
  [(BBObserver *)self sendResponse:response withCompletionIncludingModifiedResponse:v8];
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

- (void)sendResponse:(id)response withCompletionIncludingModifiedResponse:(id)modifiedResponse
{
  v27 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  modifiedResponseCopy = modifiedResponse;
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
      v26 = responseCopy;
      _os_log_error_impl(&dword_241EFF000, v16, OS_LOG_TYPE_ERROR, "%@-%s: attempting to send a response through an invalidated connection -> %@", buf, 0x20u);

      if (!modifiedResponseCopy)
      {
        goto LABEL_8;
      }
    }

    else if (!modifiedResponseCopy)
    {
      goto LABEL_8;
    }

    modifiedResponseCopy[2](modifiedResponseCopy, 0, responseCopy);
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
    Name = responseCopy;
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
  v20 = modifiedResponseCopy;
  [(BBObserverServerProxy *)v14 handleResponse:responseCopy withCompletion:v19];

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

- (void)clearSection:(id)section
{
  v11 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  v5 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    *v10 = 138543618;
    *&v10[4] = objc_opt_class();
    *&v10[12] = 2114;
    *&v10[14] = sectionCopy;
    v8 = *&v10[4];
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "Observer for %{public}@: Clearing section %{public}@", v10, 0x16u);
  }

  [(BBObserverServerProxy *)self->_serverProxy clearSection:sectionCopy, *v10, *&v10[16], v11];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)clearBulletinsFromDate:(id)date toDate:(id)toDate inSections:(id)sections
{
  v19 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  toDateCopy = toDate;
  sectionsCopy = sections;
  v11 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    *v16 = 138544130;
    *&v16[4] = objc_opt_class();
    *&v16[12] = 2114;
    *&v16[14] = dateCopy;
    *&v16[22] = 2114;
    v17 = toDateCopy;
    LOWORD(v18) = 2114;
    *(&v18 + 2) = sectionsCopy;
    v14 = *&v16[4];
    _os_log_impl(&dword_241EFF000, v12, OS_LOG_TYPE_DEFAULT, "Observer for %{public}@: Clearing from %{public}@ to %{public}@ in sections %{public}@", v16, 0x2Au);
  }

  [(BBObserverServerProxy *)self->_serverProxy clearBulletinsFromDate:dateCopy toDate:toDateCopy inSections:sectionsCopy, *v16, *&v16[16], v17, v18];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)clearBulletins:(id)bulletins inSection:(id)section
{
  v32 = *MEMORY[0x277D85DE8];
  bulletinsCopy = bulletins;
  sectionCopy = section;
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
    v29 = [bulletinsCopy count];
    v30 = 2114;
    v31 = sectionCopy;
    _os_log_impl(&dword_241EFF000, v9, OS_LOG_TYPE_DEFAULT, "Observer for %{public}@: Clearing %ld bulletins in section %{public}@", buf, 0x20u);
  }

  v13 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(bulletinsCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = bulletinsCopy;
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

        bulletinID = [*(*(&v21 + 1) + 8 * v18) bulletinID];
        [v13 addObject:bulletinID];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  [(BBObserverServerProxy *)self->_serverProxy clearBulletinIDs:v13 inSection:sectionCopy];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)removeBulletins:(id)bulletins inSection:(id)section fromFeed:(unint64_t)feed
{
  v24 = *MEMORY[0x277D85DE8];
  bulletinsCopy = bulletins;
  sectionCopy = section;
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
    v19 = [bulletinsCopy count];
    v20 = 2048;
    feedCopy = feed;
    v22 = 2114;
    v23 = sectionCopy;
    _os_log_impl(&dword_241EFF000, v11, OS_LOG_TYPE_DEFAULT, "Observer for %{public}@: Removing %ld bulletins from feed %ld in section %{public}@", &v16, 0x2Au);
  }

  [(BBObserverServerProxy *)self->_serverProxy removeBulletins:bulletinsCopy inSection:sectionCopy fromFeeds:feed];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)parametersForSectionID:(id)d
{
  dCopy = d;
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
  v6 = dCopy;
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

- (void)getParametersForSectionID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__BBObserver_getParametersForSectionID_withCompletion___block_invoke;
  v14[3] = &unk_278D2A928;
  v8 = completionCopy;
  v14[4] = self;
  v15 = v8;
  v9 = MEMORY[0x245D05D40](v14);
  if ([dCopy length])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__BBObserver_getParametersForSectionID_withCompletion___block_invoke_3;
    block[3] = &unk_278D2A9A0;
    block[4] = self;
    v12 = dCopy;
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

- (void)getComposedImageSizeForAttachment:(id)attachment bulletin:(id)bulletin withCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [BBObserver getComposedImageSizeForAttachment:a2 bulletin:self withCompletion:?];
  }

  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__BBObserver_getComposedImageSizeForAttachment_bulletin_withCompletion___block_invoke;
  block[3] = &unk_278D2A9C8;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_async(calloutQueue, block);
}

- (void)assertionExpired:(id)expired transactionID:(unint64_t)d
{
  expiredCopy = expired;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__BBObserver_assertionExpired_transactionID___block_invoke;
  block[3] = &unk_278D2A9F0;
  block[4] = self;
  v10 = expiredCopy;
  dCopy = d;
  v8 = expiredCopy;
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

- (void)_queue_registerBulletin:(id)bulletin withTransactionID:(unint64_t)d
{
  bulletinCopy = bulletin;
  dispatch_assert_queue_V2(self->_queue);
  bulletinID = [bulletinCopy bulletinID];
  v7 = [(NSMapTable *)self->_bulletinLifeAssertions objectForKey:bulletinID];
  if (!v7)
  {
    v7 = [[BBAssertion alloc] initWithDelegate:self identifier:bulletinID];
    [(NSMapTable *)self->_bulletinLifeAssertions setObject:v7 forKey:bulletinID];
  }

  [(BBAssertion *)v7 increaseOrIgnoreTransactionID:d];
  [bulletinCopy addLifeAssertion:v7];
  [bulletinCopy addObserver:self];
}

- (void)serverProxy:(id)proxy connectionStateDidChange:(BOOL)change
{
  proxyCopy = proxy;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__BBObserver_serverProxy_connectionStateDidChange___block_invoke;
  block[3] = &unk_278D2AA18;
  block[4] = self;
  v10 = proxyCopy;
  changeCopy = change;
  v8 = proxyCopy;
  dispatch_async(queue, block);
}

- (void)_queue_serverProxy:(id)proxy connectionStateDidChange:(BOOL)change
{
  changeCopy = change;
  v31 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v6 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"disconnected";
    if (changeCopy)
    {
      v7 = @"connected";
    }

    *buf = 138543618;
    selfCopy = self;
    v29 = 2114;
    v30 = v7;
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "BBObserver: (%{public}@) %{public}@", buf, 0x16u);
  }

  if (changeCopy)
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
  v19 = changeCopy;
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

- (void)updateBulletin:(id)bulletin withReply:(id)reply
{
  bulletinCopy = bulletin;
  replyCopy = reply;
  bulletinUpdate = [bulletinCopy bulletinUpdate];
  bulletin = [bulletinUpdate bulletin];
  v10 = bulletin;
  if (bulletin)
  {
    sectionID = [bulletin sectionID];

    if (sectionID)
    {
      sectionID2 = [v10 sectionID];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __39__BBObserver_updateBulletin_withReply___block_invoke_2;
      v15[3] = &unk_278D2AA68;
      v15[4] = self;
      v16 = bulletinCopy;
      v17 = replyCopy;
      [(BBObserver *)self getParametersForSectionID:sectionID2 withCompletion:v15];

      v13 = v16;
LABEL_6:

      goto LABEL_7;
    }
  }

  if (replyCopy)
  {
    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__BBObserver_updateBulletin_withReply___block_invoke;
    block[3] = &unk_278D2A9C8;
    v19 = replyCopy;
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

- (void)_queue_updateBulletin:(id)bulletin withReply:(id)reply
{
  v16 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  queue = self->_queue;
  bulletinCopy = bulletin;
  dispatch_assert_queue_V2(queue);
  bulletinUpdate = [bulletinCopy bulletinUpdate];
  bulletin = [bulletinUpdate bulletin];
  transactionID = [bulletinCopy transactionID];

  [(BBObserver *)self _queue_registerBulletin:bulletin withTransactionID:transactionID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BBObserver *)self _queue_updateAddBulletin:bulletinUpdate withReply:replyCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(BBObserver *)self _queue_updateModifyBulletin:bulletinUpdate withReply:replyCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(BBObserver *)self _queue_updateRemoveBulletin:bulletinUpdate withReply:replyCopy];
      }

      else
      {
        v12 = BBLogBulletinLife;
        if (os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138543362;
          v15 = bulletinUpdate;
          _os_log_impl(&dword_241EFF000, v12, OS_LOG_TYPE_DEFAULT, "Invalid update %{public}@", &v14, 0xCu);
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateAddBulletin:(id)bulletin withReply:(id)reply
{
  replyCopy = reply;
  queue = self->_queue;
  bulletinCopy = bulletin;
  dispatch_assert_queue_V2(queue);
  bulletin = [bulletinCopy bulletin];
  feeds = [bulletinCopy feeds];
  v11 = self->_observerFeed & feeds;
  bulletinID = [bulletin bulletinID];
  v13 = [(NSMutableDictionary *)self->_remainingFeedsByBulletinID objectForKey:bulletinID];
  integerValue = [v13 integerValue];

  remainingFeedsByBulletinID = self->_remainingFeedsByBulletinID;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue | feeds];
  [(NSMutableDictionary *)remainingFeedsByBulletinID setObject:v16 forKey:bulletinID];

  LOBYTE(v16) = [bulletinCopy shouldPlayLightsAndSirens];
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BBObserver__queue_updateAddBulletin_withReply___block_invoke;
  block[3] = &unk_278D2AAE0;
  v22 = replyCopy;
  v23 = v11;
  block[4] = self;
  v21 = bulletin;
  v24 = v16;
  v18 = bulletin;
  v19 = replyCopy;
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

- (void)_queue_updateModifyBulletin:(id)bulletin withReply:(id)reply
{
  replyCopy = reply;
  queue = self->_queue;
  bulletinCopy = bulletin;
  dispatch_assert_queue_V2(queue);
  bulletin = [bulletinCopy bulletin];
  feeds = [bulletinCopy feeds];

  v11 = self->_observerFeed & feeds;
  calloutQueue = self->_calloutQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__BBObserver__queue_updateModifyBulletin_withReply___block_invoke;
  v15[3] = &unk_278D2AB08;
  v15[4] = self;
  v16 = bulletin;
  v17 = replyCopy;
  v18 = v11;
  v13 = replyCopy;
  v14 = bulletin;
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

- (void)_queue_updateRemoveBulletin:(id)bulletin withReply:(id)reply
{
  replyCopy = reply;
  queue = self->_queue;
  bulletinCopy = bulletin;
  dispatch_assert_queue_V2(queue);
  bulletin = [bulletinCopy bulletin];
  feeds = [bulletinCopy feeds];

  observerFeed = self->_observerFeed;
  bulletinID = [bulletin bulletinID];
  v13 = [(NSMutableDictionary *)self->_remainingFeedsByBulletinID objectForKey:bulletinID];
  integerValue = [v13 integerValue];

  remainingFeedsByBulletinID = self->_remainingFeedsByBulletinID;
  v16 = integerValue & ~feeds;
  if (v16)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue & ~feeds];
    [(NSMutableDictionary *)remainingFeedsByBulletinID setObject:v17 forKey:bulletinID];
  }

  else
  {
    [(NSMutableDictionary *)self->_remainingFeedsByBulletinID removeObjectForKey:bulletinID];
  }

  v18 = observerFeed & feeds;
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__BBObserver__queue_updateRemoveBulletin_withReply___block_invoke;
  block[3] = &unk_278D2AB30;
  block[4] = self;
  v23 = bulletin;
  v25 = v18;
  v26 = v16;
  v24 = replyCopy;
  v20 = replyCopy;
  v21 = bulletin;
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

- (void)updateSectionInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    calloutQueue = self->_calloutQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __32__BBObserver_updateSectionInfo___block_invoke;
    v7[3] = &unk_278D2A628;
    v7[4] = self;
    v8 = infoCopy;
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

- (void)updateSectionParameters:(id)parameters forSectionID:(id)d
{
  parametersCopy = parameters;
  dCopy = d;
  v8 = dCopy;
  if (parametersCopy && dCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__BBObserver_updateSectionParameters_forSectionID___block_invoke;
    block[3] = &unk_278D2AB58;
    block[4] = self;
    v11 = parametersCopy;
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

- (void)removeSection:(id)section
{
  sectionCopy = section;
  v5 = sectionCopy;
  if (sectionCopy)
  {
    calloutQueue = self->_calloutQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__BBObserver_removeSection___block_invoke;
    v7[3] = &unk_278D2A628;
    v7[4] = self;
    v8 = sectionCopy;
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

- (void)updateGlobalSettings:(id)settings
{
  settingsCopy = settings;
  calloutQueue = self->_calloutQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__BBObserver_updateGlobalSettings___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = settingsCopy;
  v6 = settingsCopy;
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

- (void)noteServerReceivedResponseForBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  v5 = bulletinCopy;
  if (bulletinCopy)
  {
    calloutQueue = self->_calloutQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__BBObserver_noteServerReceivedResponseForBulletin___block_invoke;
    v7[3] = &unk_278D2A628;
    v7[4] = self;
    v8 = bulletinCopy;
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

- (void)noteBulletinsLoadedForSectionID:(id)d
{
  dCopy = d;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__BBObserver_noteBulletinsLoadedForSectionID___block_invoke;
  v6[3] = &unk_278D2AB80;
  v6[4] = self;
  v7 = dCopy;
  v5 = dCopy;
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

- (void)_queue_noteBulletinsLoadedForSectionID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  calloutQueue = self->_calloutQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__BBObserver__queue_noteBulletinsLoadedForSectionID___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
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