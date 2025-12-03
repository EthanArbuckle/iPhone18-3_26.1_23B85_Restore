@interface BBObserverServerProxy
+ (id)xpcInterface;
- (BBObserver)observer;
- (BBObserverServerProxy)initWithObserver:(id)observer connection:(id)connection queue:(id)queue calloutQueue:(id)calloutQueue;
- (void)clearBulletinIDs:(id)ds inSection:(id)section;
- (void)clearBulletinsFromDate:(id)date toDate:(id)toDate inSections:(id)sections;
- (void)clearSection:(id)section;
- (void)dealloc;
- (void)finishedWithBulletinID:(id)d transactionID:(unint64_t)iD;
- (void)getBulletinsForPublisherMatchIDs:(id)ds sectionID:(id)d withHandler:(id)handler;
- (void)getBulletinsWithHandler:(id)handler;
- (void)getObserverDebugInfo:(id)info;
- (void)getPublisherMatchIDsOfBulletinsPublishedAfterDate:(id)date withHandler:(id)handler;
- (void)getSectionInfoForActiveSectionsWithHandler:(id)handler;
- (void)getSectionInfoForSectionIDs:(id)ds withHandler:(id)handler;
- (void)getSectionInfoWithHandler:(id)handler;
- (void)getSectionParametersForSectionID:(id)d withHandler:(id)handler;
- (void)getUniversalSectionIDForSectionID:(id)d withHandler:(id)handler;
- (void)handleResponse:(id)response withCompletion:(id)completion;
- (void)noteBulletinsLoadedForSectionID:(id)d;
- (void)noteServerReceivedResponseForBulletin:(id)bulletin;
- (void)removeBulletins:(id)bulletins inSection:(id)section fromFeeds:(unint64_t)feeds;
- (void)removeSection:(id)section;
- (void)requestNoticesBulletinsForAllSections;
- (void)requestNoticesBulletinsForSectionID:(id)d;
- (void)setObserverFeed:(unint64_t)feed asLightsAndSirensGateway:(id)gateway priority:(unint64_t)priority;
- (void)setObserverFeed:(unint64_t)feed attachToLightsAndSirensGateway:(id)gateway;
- (void)setObserverOptions:(unint64_t)options;
- (void)updateBulletin:(id)bulletin withHandler:(id)handler;
- (void)updateGlobalSettings:(id)settings;
- (void)updateSectionInfo:(id)info;
- (void)updateSectionParameters:(id)parameters forSectionID:(id)d;
@end

@implementation BBObserverServerProxy

- (BBObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

+ (id)xpcInterface
{
  if (xpcInterface_onceToken_1 != -1)
  {
    +[BBObserverServerProxy xpcInterface];
  }

  v3 = xpcInterface___interface_1;

  return v3;
}

void __37__BBObserverServerProxy_xpcInterface__block_invoke()
{
  v67[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2854410D0];
  v1 = xpcInterface___interface_1;
  xpcInterface___interface_1 = v0;

  v2 = xpcInterface___interface_1;
  v3 = MEMORY[0x277CBEB98];
  v67[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_clearSection_ argumentIndex:0 ofReply:0];

  v6 = xpcInterface___interface_1;
  v7 = MEMORY[0x277CBEB98];
  v66 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
  v9 = [v7 setWithArray:v8];
  [v6 setClasses:v9 forSelector:sel_clearBulletinsFromDate_toDate_inSections_ argumentIndex:0 ofReply:0];

  v10 = xpcInterface___interface_1;
  v11 = MEMORY[0x277CBEB98];
  v65 = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
  v13 = [v11 setWithArray:v12];
  [v10 setClasses:v13 forSelector:sel_clearBulletinsFromDate_toDate_inSections_ argumentIndex:1 ofReply:0];

  v14 = xpcInterface___interface_1;
  v15 = MEMORY[0x277CBEB98];
  v64[0] = objc_opt_class();
  v64[1] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
  v17 = [v15 setWithArray:v16];
  [v14 setClasses:v17 forSelector:sel_clearBulletinsFromDate_toDate_inSections_ argumentIndex:2 ofReply:0];

  v18 = xpcInterface___interface_1;
  v19 = MEMORY[0x277CBEB98];
  v63[0] = objc_opt_class();
  v63[1] = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
  v21 = [v19 setWithArray:v20];
  [v18 setClasses:v21 forSelector:sel_clearBulletinIDs_inSection_ argumentIndex:0 ofReply:0];

  v22 = xpcInterface___interface_1;
  v23 = MEMORY[0x277CBEB98];
  v62[0] = objc_opt_class();
  v62[1] = objc_opt_class();
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
  v25 = [v23 setWithArray:v24];
  [v22 setClasses:v25 forSelector:sel_clearBulletinIDs_inSection_ argumentIndex:0 ofReply:0];

  v26 = xpcInterface___interface_1;
  v27 = MEMORY[0x277CBEB98];
  v61[0] = objc_opt_class();
  v61[1] = objc_opt_class();
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
  v29 = [v27 setWithArray:v28];
  [v26 setClasses:v29 forSelector:sel_removeBulletins_inSection_fromFeeds_ argumentIndex:0 ofReply:0];

  v30 = xpcInterface___interface_1;
  v31 = MEMORY[0x277CBEB98];
  v60[0] = objc_opt_class();
  v60[1] = objc_opt_class();
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
  v33 = [v31 setWithArray:v32];
  [v30 setClasses:v33 forSelector:sel_getSectionInfoWithHandler_ argumentIndex:0 ofReply:1];

  v34 = xpcInterface___interface_1;
  v35 = MEMORY[0x277CBEB98];
  v59[0] = objc_opt_class();
  v59[1] = objc_opt_class();
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  v37 = [v35 setWithArray:v36];
  [v34 setClasses:v37 forSelector:sel_getSectionInfoForActiveSectionsWithHandler_ argumentIndex:0 ofReply:1];

  v38 = xpcInterface___interface_1;
  v39 = MEMORY[0x277CBEB98];
  v58[0] = objc_opt_class();
  v58[1] = objc_opt_class();
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  v41 = [v39 setWithArray:v40];
  [v38 setClasses:v41 forSelector:sel_getSectionInfoForSectionIDs_withHandler_ argumentIndex:0 ofReply:0];

  v42 = xpcInterface___interface_1;
  v43 = MEMORY[0x277CBEB98];
  v57[0] = objc_opt_class();
  v57[1] = objc_opt_class();
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v45 = [v43 setWithArray:v44];
  [v42 setClasses:v45 forSelector:sel_getSectionInfoForSectionIDs_withHandler_ argumentIndex:0 ofReply:1];

  v46 = xpcInterface___interface_1;
  v47 = MEMORY[0x277CBEB98];
  v56[0] = objc_opt_class();
  v56[1] = objc_opt_class();
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  v49 = [v47 setWithArray:v48];
  [v46 setClasses:v49 forSelector:sel_getBulletinsForPublisherMatchIDs_sectionID_withHandler_ argumentIndex:0 ofReply:1];

  v50 = xpcInterface___interface_1;
  v51 = MEMORY[0x277CBEB98];
  v55[0] = objc_opt_class();
  v55[1] = objc_opt_class();
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  v53 = [v51 setWithArray:v52];
  [v50 setClasses:v53 forSelector:sel_getBulletinsWithHandler_ argumentIndex:0 ofReply:1];

  v54 = *MEMORY[0x277D85DE8];
}

- (BBObserverServerProxy)initWithObserver:(id)observer connection:(id)connection queue:(id)queue calloutQueue:(id)calloutQueue
{
  observerCopy = observer;
  connectionCopy = connection;
  queueCopy = queue;
  calloutQueueCopy = calloutQueue;
  v32.receiver = self;
  v32.super_class = BBObserverServerProxy;
  v14 = [(BBObserverServerProxy *)&v32 init];
  v15 = v14;
  if (v14)
  {
    [(BBObserverServerProxy *)v14 setObserver:observerCopy];
    objc_storeStrong(&v15->_queue, queue);
    objc_storeStrong(&v15->_calloutQueue, calloutQueue);
    *&v15->_isValid = 257;
    objc_storeStrong(&v15->_connection, connection);
    connection = v15->_connection;
    xpcInterface = [objc_opt_class() xpcInterface];
    [(NSXPCConnection *)connection setRemoteObjectInterface:xpcInterface];

    v18 = v15->_connection;
    v19 = +[BBObserverClientProxy xpcInterface];
    [(NSXPCConnection *)v18 setExportedInterface:v19];

    [(NSXPCConnection *)v15->_connection setExportedObject:v15];
    objc_initWeak(&location, v15);
    v20 = v15->_connection;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __72__BBObserverServerProxy_initWithObserver_connection_queue_calloutQueue___block_invoke;
    v29[3] = &unk_278D2B250;
    objc_copyWeak(&v30, &location);
    [(NSXPCConnection *)v20 setInvalidationHandler:v29];
    v21 = v15->_connection;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __72__BBObserverServerProxy_initWithObserver_connection_queue_calloutQueue___block_invoke_62;
    v27[3] = &unk_278D2B250;
    objc_copyWeak(&v28, &location);
    [(NSXPCConnection *)v21 setInterruptionHandler:v27];
    [(NSXPCConnection *)v15->_connection resume];
    queue = v15->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__BBObserverServerProxy_initWithObserver_connection_queue_calloutQueue___block_invoke_2;
    block[3] = &unk_278D2A628;
    v25 = observerCopy;
    v26 = v15;
    dispatch_async(queue, block);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __72__BBObserverServerProxy_initWithObserver_connection_queue_calloutQueue___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = WeakRetained;
      _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "BBObserverServerProxy (%{public}@) connection invalidated", &v4, 0xCu);
    }

    WeakRetained[4] = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __72__BBObserverServerProxy_initWithObserver_connection_queue_calloutQueue___block_invoke_62(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = WeakRetained;
      _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "BBObserverServerProxy (%{public}@) connection interrupted", buf, 0xCu);
    }

    *(WeakRetained + 9) = 0;
    v3 = WeakRetained[4];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__BBObserverServerProxy_initWithObserver_connection_queue_calloutQueue___block_invoke_63;
    block[3] = &unk_278D2A600;
    v6 = WeakRetained;
    dispatch_async(v3, block);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __72__BBObserverServerProxy_initWithObserver_connection_queue_calloutQueue___block_invoke_63(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 serverProxy:*(a1 + 32) connectionStateDidChange:*(*(a1 + 32) + 9)];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = BBObserverServerProxy;
  [(BBObserverServerProxy *)&v3 dealloc];
}

- (void)setObserverFeed:(unint64_t)feed attachToLightsAndSirensGateway:(id)gateway
{
  gatewayCopy = gateway;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__BBObserverServerProxy_setObserverFeed_attachToLightsAndSirensGateway___block_invoke;
  block[3] = &unk_278D2A9F0;
  v10 = gatewayCopy;
  feedCopy = feed;
  block[4] = self;
  v8 = gatewayCopy;
  dispatch_async(queue, block);
}

void __72__BBObserverServerProxy_setObserverFeed_attachToLightsAndSirensGateway___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) remoteObjectProxy];
  [v2 setObserverFeed:a1[6] attachToLightsAndSirensGateway:a1[5]];
}

- (void)setObserverFeed:(unint64_t)feed asLightsAndSirensGateway:(id)gateway priority:(unint64_t)priority
{
  gatewayCopy = gateway;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__BBObserverServerProxy_setObserverFeed_asLightsAndSirensGateway_priority___block_invoke;
  v11[3] = &unk_278D2C238;
  v11[4] = self;
  v12 = gatewayCopy;
  feedCopy = feed;
  priorityCopy = priority;
  v10 = gatewayCopy;
  dispatch_async(queue, v11);
}

void __75__BBObserverServerProxy_setObserverFeed_asLightsAndSirensGateway_priority___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) remoteObjectProxy];
  [v2 setObserverFeed:a1[6] asLightsAndSirensGateway:a1[5] priority:a1[7]];
}

- (void)setObserverOptions:(unint64_t)options
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v7 = v5;
    remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
    v11 = 138543874;
    selfCopy = self;
    v13 = 2114;
    v14 = connection;
    v15 = 2114;
    v16 = remoteObjectProxy;
    _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ setObserverOptions: _connection: %{public}@ remoteObjectProxy: %{public}@", &v11, 0x20u);
  }

  remoteObjectProxy2 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [remoteObjectProxy2 setObserverOptions:options];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleResponse:(id)response withCompletion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__BBObserverServerProxy_handleResponse_withCompletion___block_invoke;
  block[3] = &unk_278D2A9A0;
  block[4] = self;
  v12 = responseCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = responseCopy;
  dispatch_async(queue, block);
}

void __55__BBObserverServerProxy_handleResponse_withCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ handling response %{public}@", buf, 0x16u);
  }

  v5 = [*(*(a1 + 32) + 24) remoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__BBObserverServerProxy_handleResponse_withCompletion___block_invoke_66;
  v8[3] = &unk_278D2A8B0;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  [v5 handleResponse:v6 withCompletion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __55__BBObserverServerProxy_handleResponse_withCompletion___block_invoke_66(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138543618;
    v16 = v7;
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ response handling completed with success %d", buf, 0x12u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__BBObserverServerProxy_handleResponse_withCompletion___block_invoke_67;
    block[3] = &unk_278D2C260;
    v13 = v8;
    v14 = a2;
    v12 = v5;
    dispatch_async(v9, block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)finishedWithBulletinID:(id)d transactionID:(unint64_t)iD
{
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BBObserverServerProxy_finishedWithBulletinID_transactionID___block_invoke;
  block[3] = &unk_278D2A9F0;
  block[4] = self;
  v10 = dCopy;
  iDCopy = iD;
  v8 = dCopy;
  dispatch_async(queue, block);
}

void __62__BBObserverServerProxy_finishedWithBulletinID_transactionID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) remoteObjectProxy];
  [v2 finishedWithBulletinID:a1[5] transactionID:a1[6]];
}

- (void)clearSection:(id)section
{
  sectionCopy = section;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__BBObserverServerProxy_clearSection___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = sectionCopy;
  v6 = sectionCopy;
  dispatch_async(queue, v7);
}

void __38__BBObserverServerProxy_clearSection___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) remoteObjectProxy];
  [v2 clearSection:*(a1 + 40)];
}

- (void)clearBulletinsFromDate:(id)date toDate:(id)toDate inSections:(id)sections
{
  dateCopy = date;
  toDateCopy = toDate;
  sectionsCopy = sections;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__BBObserverServerProxy_clearBulletinsFromDate_toDate_inSections___block_invoke;
  v15[3] = &unk_278D2AE40;
  v15[4] = self;
  v16 = dateCopy;
  v17 = toDateCopy;
  v18 = sectionsCopy;
  v12 = sectionsCopy;
  v13 = toDateCopy;
  v14 = dateCopy;
  dispatch_async(queue, v15);
}

void __66__BBObserverServerProxy_clearBulletinsFromDate_toDate_inSections___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) remoteObjectProxy];
  [v2 clearBulletinsFromDate:a1[5] toDate:a1[6] inSections:a1[7]];
}

- (void)clearBulletinIDs:(id)ds inSection:(id)section
{
  dsCopy = ds;
  sectionCopy = section;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__BBObserverServerProxy_clearBulletinIDs_inSection___block_invoke;
  block[3] = &unk_278D2AB58;
  block[4] = self;
  v12 = dsCopy;
  v13 = sectionCopy;
  v9 = sectionCopy;
  v10 = dsCopy;
  dispatch_async(queue, block);
}

void __52__BBObserverServerProxy_clearBulletinIDs_inSection___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) remoteObjectProxy];
  [v2 clearBulletinIDs:a1[5] inSection:a1[6]];
}

- (void)removeBulletins:(id)bulletins inSection:(id)section fromFeeds:(unint64_t)feeds
{
  bulletinsCopy = bulletins;
  sectionCopy = section;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__BBObserverServerProxy_removeBulletins_inSection_fromFeeds___block_invoke;
  v13[3] = &unk_278D2AD00;
  v13[4] = self;
  v14 = bulletinsCopy;
  v15 = sectionCopy;
  feedsCopy = feeds;
  v11 = sectionCopy;
  v12 = bulletinsCopy;
  dispatch_async(queue, v13);
}

void __61__BBObserverServerProxy_removeBulletins_inSection_fromFeeds___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) remoteObjectProxy];
  [v2 removeBulletins:a1[5] inSection:a1[6] fromFeeds:a1[7]];
}

- (void)requestNoticesBulletinsForSectionID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__BBObserverServerProxy_requestNoticesBulletinsForSectionID___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

void __61__BBObserverServerProxy_requestNoticesBulletinsForSectionID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) remoteObjectProxy];
  [v2 requestNoticesBulletinsForSectionID:*(a1 + 40)];
}

- (void)requestNoticesBulletinsForAllSections
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BBObserverServerProxy_requestNoticesBulletinsForAllSections__block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_async(queue, block);
}

void __62__BBObserverServerProxy_requestNoticesBulletinsForAllSections__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) remoteObjectProxy];
  [v1 requestNoticesBulletinsForAllSections];
}

- (void)getSectionInfoWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__BBObserverServerProxy_getSectionInfoWithHandler___block_invoke;
  v7[3] = &unk_278D2AC38;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __51__BBObserverServerProxy_getSectionInfoWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) remoteObjectProxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__BBObserverServerProxy_getSectionInfoWithHandler___block_invoke_2;
  v4[3] = &unk_278D2C288;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 getSectionInfoWithHandler:v4];
}

void __51__BBObserverServerProxy_getSectionInfoWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__BBObserverServerProxy_getSectionInfoWithHandler___block_invoke_3;
    block[3] = &unk_278D2ACD8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)getSectionInfoForActiveSectionsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__BBObserverServerProxy_getSectionInfoForActiveSectionsWithHandler___block_invoke;
  v7[3] = &unk_278D2AC38;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __68__BBObserverServerProxy_getSectionInfoForActiveSectionsWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) remoteObjectProxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__BBObserverServerProxy_getSectionInfoForActiveSectionsWithHandler___block_invoke_2;
  v4[3] = &unk_278D2C288;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 getSectionInfoForActiveSectionsWithHandler:v4];
}

void __68__BBObserverServerProxy_getSectionInfoForActiveSectionsWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__BBObserverServerProxy_getSectionInfoForActiveSectionsWithHandler___block_invoke_3;
    block[3] = &unk_278D2ACD8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)getSectionInfoForSectionIDs:(id)ds withHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BBObserverServerProxy_getSectionInfoForSectionIDs_withHandler___block_invoke;
  block[3] = &unk_278D2A9A0;
  block[4] = self;
  v12 = dsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dsCopy;
  dispatch_async(queue, block);
}

void __65__BBObserverServerProxy_getSectionInfoForSectionIDs_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) remoteObjectProxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__BBObserverServerProxy_getSectionInfoForSectionIDs_withHandler___block_invoke_2;
  v5[3] = &unk_278D2C288;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 getSectionInfoForSectionIDs:v3 withHandler:v5];
}

void __65__BBObserverServerProxy_getSectionInfoForSectionIDs_withHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__BBObserverServerProxy_getSectionInfoForSectionIDs_withHandler___block_invoke_3;
    block[3] = &unk_278D2ACD8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)getSectionParametersForSectionID:(id)d withHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__BBObserverServerProxy_getSectionParametersForSectionID_withHandler___block_invoke;
  block[3] = &unk_278D2A9A0;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __70__BBObserverServerProxy_getSectionParametersForSectionID_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) remoteObjectProxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__BBObserverServerProxy_getSectionParametersForSectionID_withHandler___block_invoke_2;
  v5[3] = &unk_278D2C2B0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 getSectionParametersForSectionID:v3 withHandler:v5];
}

void __70__BBObserverServerProxy_getSectionParametersForSectionID_withHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__BBObserverServerProxy_getSectionParametersForSectionID_withHandler___block_invoke_3;
    block[3] = &unk_278D2ACD8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)getUniversalSectionIDForSectionID:(id)d withHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__BBObserverServerProxy_getUniversalSectionIDForSectionID_withHandler___block_invoke;
  block[3] = &unk_278D2A9A0;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __71__BBObserverServerProxy_getUniversalSectionIDForSectionID_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) remoteObjectProxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__BBObserverServerProxy_getUniversalSectionIDForSectionID_withHandler___block_invoke_2;
  v5[3] = &unk_278D2C2D8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 getUniversalSectionIDForSectionID:v3 withHandler:v5];
}

void __71__BBObserverServerProxy_getUniversalSectionIDForSectionID_withHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__BBObserverServerProxy_getUniversalSectionIDForSectionID_withHandler___block_invoke_3;
    block[3] = &unk_278D2ACD8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)getBulletinsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__BBObserverServerProxy_getBulletinsWithHandler___block_invoke;
  v7[3] = &unk_278D2AC38;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __49__BBObserverServerProxy_getBulletinsWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) remoteObjectProxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__BBObserverServerProxy_getBulletinsWithHandler___block_invoke_2;
  v4[3] = &unk_278D2C288;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 getBulletinsWithHandler:v4];
}

void __49__BBObserverServerProxy_getBulletinsWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__BBObserverServerProxy_getBulletinsWithHandler___block_invoke_3;
    block[3] = &unk_278D2ACD8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)getPublisherMatchIDsOfBulletinsPublishedAfterDate:(id)date withHandler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__BBObserverServerProxy_getPublisherMatchIDsOfBulletinsPublishedAfterDate_withHandler___block_invoke;
  block[3] = &unk_278D2A9A0;
  block[4] = self;
  v12 = dateCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dateCopy;
  dispatch_async(queue, block);
}

void __87__BBObserverServerProxy_getPublisherMatchIDsOfBulletinsPublishedAfterDate_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) remoteObjectProxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__BBObserverServerProxy_getPublisherMatchIDsOfBulletinsPublishedAfterDate_withHandler___block_invoke_2;
  v5[3] = &unk_278D2C300;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 getPublisherMatchIDsOfBulletinsPublishedAfterDate:v3 withHandler:v5];
}

void __87__BBObserverServerProxy_getPublisherMatchIDsOfBulletinsPublishedAfterDate_withHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__BBObserverServerProxy_getPublisherMatchIDsOfBulletinsPublishedAfterDate_withHandler___block_invoke_3;
    block[3] = &unk_278D2ACD8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)getBulletinsForPublisherMatchIDs:(id)ds sectionID:(id)d withHandler:(id)handler
{
  dsCopy = ds;
  dCopy = d;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__BBObserverServerProxy_getBulletinsForPublisherMatchIDs_sectionID_withHandler___block_invoke;
  v15[3] = &unk_278D2A950;
  v15[4] = self;
  v16 = dsCopy;
  v17 = dCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = dCopy;
  v14 = dsCopy;
  dispatch_async(queue, v15);
}

void __80__BBObserverServerProxy_getBulletinsForPublisherMatchIDs_sectionID_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) remoteObjectProxy];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__BBObserverServerProxy_getBulletinsForPublisherMatchIDs_sectionID_withHandler___block_invoke_2;
  v6[3] = &unk_278D2C288;
  v5 = *(a1 + 56);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 getBulletinsForPublisherMatchIDs:v3 sectionID:v4 withHandler:v6];
}

void __80__BBObserverServerProxy_getBulletinsForPublisherMatchIDs_sectionID_withHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__BBObserverServerProxy_getBulletinsForPublisherMatchIDs_sectionID_withHandler___block_invoke_3;
    block[3] = &unk_278D2ACD8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)updateBulletin:(id)bulletin withHandler:(id)handler
{
  bulletinCopy = bulletin;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__BBObserverServerProxy_updateBulletin_withHandler___block_invoke;
  block[3] = &unk_278D2A9A0;
  block[4] = self;
  v12 = bulletinCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = bulletinCopy;
  dispatch_async(queue, block);
}

void __52__BBObserverServerProxy_updateBulletin_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__BBObserverServerProxy_updateBulletin_withHandler___block_invoke_2;
  v4[3] = &unk_278D2BF80;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 updateBulletin:v3 withReply:v4];
}

uint64_t __52__BBObserverServerProxy_updateBulletin_withHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)updateSectionInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__BBObserverServerProxy_updateSectionInfo___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(queue, v7);
}

void __43__BBObserverServerProxy_updateSectionInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 updateSectionInfo:*(a1 + 40)];
}

- (void)removeSection:(id)section
{
  sectionCopy = section;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__BBObserverServerProxy_removeSection___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = sectionCopy;
  v6 = sectionCopy;
  dispatch_async(queue, v7);
}

void __39__BBObserverServerProxy_removeSection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 removeSection:*(a1 + 40)];
}

- (void)updateGlobalSettings:(id)settings
{
  settingsCopy = settings;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__BBObserverServerProxy_updateGlobalSettings___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = settingsCopy;
  v6 = settingsCopy;
  dispatch_async(queue, v7);
}

void __46__BBObserverServerProxy_updateGlobalSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 updateGlobalSettings:*(a1 + 40)];
}

- (void)updateSectionParameters:(id)parameters forSectionID:(id)d
{
  parametersCopy = parameters;
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BBObserverServerProxy_updateSectionParameters_forSectionID___block_invoke;
  block[3] = &unk_278D2AB58;
  block[4] = self;
  v12 = parametersCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = parametersCopy;
  dispatch_async(queue, block);
}

void __62__BBObserverServerProxy_updateSectionParameters_forSectionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 updateSectionParameters:*(a1 + 40) forSectionID:*(a1 + 48)];
}

- (void)noteServerReceivedResponseForBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__BBObserverServerProxy_noteServerReceivedResponseForBulletin___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = bulletinCopy;
  v6 = bulletinCopy;
  dispatch_async(queue, v7);
}

void __63__BBObserverServerProxy_noteServerReceivedResponseForBulletin___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 noteServerReceivedResponseForBulletin:*(a1 + 40)];
}

- (void)noteBulletinsLoadedForSectionID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__BBObserverServerProxy_noteBulletinsLoadedForSectionID___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

void __57__BBObserverServerProxy_noteBulletinsLoadedForSectionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 noteBulletinsLoadedForSectionID:*(a1 + 40)];
}

- (void)getObserverDebugInfo:(id)info
{
  infoCopy = info;
  observer = [(BBObserverServerProxy *)self observer];
  delegate = [observer delegate];

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"<%@: %p>", v8, delegate];
  infoCopy[2](infoCopy, v9);
}

@end