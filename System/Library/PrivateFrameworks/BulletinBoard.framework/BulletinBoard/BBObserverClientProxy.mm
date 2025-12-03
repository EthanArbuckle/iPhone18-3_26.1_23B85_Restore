@interface BBObserverClientProxy
+ (id)xpcInterface;
- (BBObserverClientProxy)initWithServer:(id)server connection:(id)connection calloutQueue:(id)queue;
- (BBObserverClientProxy)initWithServer:(id)server connection:(id)connection queue:(id)queue calloutQueue:(id)calloutQueue;
- (BBServer)server;
- (NSString)clientBundleIdentifier;
- (id)currentTransactionForBulletinID:(id)d;
- (id)description;
- (id)transactionBulletinIDs;
- (unint64_t)incrementedTransactionIDForBulletinID:(id)d;
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
- (void)removeTransaction:(id)transaction;
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

@implementation BBObserverClientProxy

- (BBServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

+ (id)xpcInterface
{
  if (xpcInterface_onceToken_130 != -1)
  {
    +[BBObserverClientProxy xpcInterface];
  }

  v3 = xpcInterface___interface_131;

  return v3;
}

uint64_t __37__BBObserverClientProxy_xpcInterface__block_invoke()
{
  xpcInterface___interface_131 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285440F48];

  return MEMORY[0x2821F96F8]();
}

- (BBObserverClientProxy)initWithServer:(id)server connection:(id)connection calloutQueue:(id)queue
{
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  queueCopy = queue;
  connectionCopy = connection;
  serverCopy = server;
  v13 = dispatch_queue_create("com.apple.bulletinboard.BBObserverClientProxy", v9);

  v14 = [(BBObserverClientProxy *)self initWithServer:serverCopy connection:connectionCopy queue:v13 calloutQueue:queueCopy];
  return v14;
}

- (BBObserverClientProxy)initWithServer:(id)server connection:(id)connection queue:(id)queue calloutQueue:(id)calloutQueue
{
  serverCopy = server;
  connectionCopy = connection;
  queueCopy = queue;
  calloutQueueCopy = calloutQueue;
  v19.receiver = self;
  v19.super_class = BBObserverClientProxy;
  v14 = [(BBObserverClientProxy *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_queue, queue);
    objc_storeStrong(&v15->_calloutQueue, calloutQueue);
    [(BBObserverClientProxy *)v15 setConnection:connectionCopy];
    [(BBObserverClientProxy *)v15 setServer:serverCopy];
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    bulletinIDsToTransaction = v15->_bulletinIDsToTransaction;
    v15->_bulletinIDsToTransaction = v16;
  }

  return v15;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  server = [(BBObserverClientProxy *)self server];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_bulletinIDsToTransaction;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [server clearBulletinIDIfPossible:*(*(&v11 + 1) + 8 * v8++) rescheduleExpirationTimer:1];
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSXPCConnection *)self->_connection invalidate];
  v10.receiver = self;
  v10.super_class = BBObserverClientProxy;
  [(BBObserverClientProxy *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (NSString)clientBundleIdentifier
{
  clientBundleIdentifier = self->_clientBundleIdentifier;
  if (!clientBundleIdentifier)
  {
    [(NSXPCConnection *)self->_connection processIdentifier];
    v4 = BSBundleIDForPID();
    [(BBObserverClientProxy *)self setClientBundleIdentifier:v4];

    clientBundleIdentifier = self->_clientBundleIdentifier;
  }

  return clientBundleIdentifier;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  processIdentifier = [(NSXPCConnection *)self->_connection processIdentifier];
  clientBundleIdentifier = [(BBObserverClientProxy *)self clientBundleIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p [%i:%@] observerOptions: %ld>", v4, self, processIdentifier, clientBundleIdentifier, -[BBObserverClientProxy observerOptions](self, "observerOptions")];

  return v7;
}

- (void)removeTransaction:(id)transaction
{
  v17 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v5 = self->_bulletinIDsToTransaction;
  objc_sync_enter(v5);
  bulletinID = [transactionCopy bulletinID];
  v7 = [(BBObserverClientProxy *)self currentTransactionForBulletinID:bulletinID];

  transactionID = [v7 transactionID];
  if (transactionID == [transactionCopy transactionID])
  {
    bulletinIDsToTransaction = self->_bulletinIDsToTransaction;
    bulletinID2 = [transactionCopy bulletinID];
    [(NSMutableDictionary *)bulletinIDsToTransaction removeObjectForKey:bulletinID2];
  }

  else if (v7)
  {
    v11 = BBLogBulletinLife;
    if (os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = transactionCopy;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_241EFF000, v11, OS_LOG_TYPE_DEFAULT, "asked to remove a transaction (%{public}@) but our transaction (%{public}@) doesn't match IDs", &v13, 0x16u);
    }
  }

  objc_sync_exit(v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (id)transactionBulletinIDs
{
  v3 = self->_bulletinIDsToTransaction;
  objc_sync_enter(v3);
  allKeys = [(NSMutableDictionary *)self->_bulletinIDsToTransaction allKeys];
  objc_sync_exit(v3);

  return allKeys;
}

- (id)currentTransactionForBulletinID:(id)d
{
  dCopy = d;
  v5 = self->_bulletinIDsToTransaction;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_bulletinIDsToTransaction objectForKey:dCopy];
  objc_sync_exit(v5);

  return v6;
}

- (unint64_t)incrementedTransactionIDForBulletinID:(id)d
{
  dCopy = d;
  v5 = self->_bulletinIDsToTransaction;
  objc_sync_enter(v5);
  v6 = [(BBObserverClientProxy *)self currentTransactionForBulletinID:dCopy];
  v7 = v6;
  if (v6)
  {
    [(BBBulletinTransaction *)v6 incrementTransactionID];
  }

  else
  {
    v7 = [[BBBulletinTransaction alloc] initWithBulletinID:dCopy];
    [(NSMutableDictionary *)self->_bulletinIDsToTransaction setObject:v7 forKey:dCopy];
  }

  transactionID = [(BBBulletinTransaction *)v7 transactionID];

  objc_sync_exit(v5);
  return transactionID;
}

- (void)updateBulletin:(id)bulletin withHandler:(id)handler
{
  bulletinCopy = bulletin;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__BBObserverClientProxy_updateBulletin_withHandler___block_invoke;
  block[3] = &unk_278D2A9A0;
  block[4] = self;
  v12 = bulletinCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = bulletinCopy;
  dispatch_async(queue, block);
}

void __52__BBObserverClientProxy_updateBulletin_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) remoteObjectProxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__BBObserverClientProxy_updateBulletin_withHandler___block_invoke_2;
  v5[3] = &unk_278D2C328;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 updateBulletin:v3 withHandler:v5];
}

void __52__BBObserverClientProxy_updateBulletin_withHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__BBObserverClientProxy_updateBulletin_withHandler___block_invoke_3;
    block[3] = &unk_278D2C260;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)updateSectionInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__BBObserverClientProxy_updateSectionInfo___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(queue, v7);
}

void __43__BBObserverClientProxy_updateSectionInfo___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) remoteObjectProxy];
  [v2 updateSectionInfo:*(a1 + 40)];
}

- (void)updateSectionParameters:(id)parameters forSectionID:(id)d
{
  parametersCopy = parameters;
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BBObserverClientProxy_updateSectionParameters_forSectionID___block_invoke;
  block[3] = &unk_278D2AB58;
  block[4] = self;
  v12 = parametersCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = parametersCopy;
  dispatch_async(queue, block);
}

void __62__BBObserverClientProxy_updateSectionParameters_forSectionID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) remoteObjectProxy];
  [v2 updateSectionParameters:a1[5] forSectionID:a1[6]];
}

- (void)removeSection:(id)section
{
  connection = self->_connection;
  sectionCopy = section;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy removeSection:sectionCopy];
}

- (void)updateGlobalSettings:(id)settings
{
  settingsCopy = settings;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__BBObserverClientProxy_updateGlobalSettings___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = settingsCopy;
  v6 = settingsCopy;
  dispatch_async(queue, v7);
}

void __46__BBObserverClientProxy_updateGlobalSettings___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) remoteObjectProxy];
  [v2 updateGlobalSettings:*(a1 + 40)];
}

- (void)noteServerReceivedResponseForBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__BBObserverClientProxy_noteServerReceivedResponseForBulletin___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = bulletinCopy;
  v6 = bulletinCopy;
  dispatch_async(queue, v7);
}

void __63__BBObserverClientProxy_noteServerReceivedResponseForBulletin___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) remoteObjectProxy];
  [v2 noteServerReceivedResponseForBulletin:*(a1 + 40)];
}

- (void)noteBulletinsLoadedForSectionID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__BBObserverClientProxy_noteBulletinsLoadedForSectionID___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

void __57__BBObserverClientProxy_noteBulletinsLoadedForSectionID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) remoteObjectProxy];
  [v2 noteBulletinsLoadedForSectionID:*(a1 + 40)];
}

- (void)getObserverDebugInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__BBObserverClientProxy_getObserverDebugInfo___block_invoke;
  v7[3] = &unk_278D2AC38;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(queue, v7);
}

void __46__BBObserverClientProxy_getObserverDebugInfo___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) remoteObjectProxy];
  [v2 getObserverDebugInfo:*(a1 + 40)];
}

- (void)setObserverFeed:(unint64_t)feed attachToLightsAndSirensGateway:(id)gateway
{
  gatewayCopy = gateway;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__BBObserverClientProxy_setObserverFeed_attachToLightsAndSirensGateway___block_invoke;
  block[3] = &unk_278D2A9F0;
  v10 = gatewayCopy;
  feedCopy = feed;
  block[4] = self;
  v8 = gatewayCopy;
  dispatch_async(queue, block);
}

void __72__BBObserverClientProxy_setObserverFeed_attachToLightsAndSirensGateway___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 observer:*(a1 + 32) setObserverFeed:*(a1 + 48) attachToLightsAndSirensGateway:*(a1 + 40)];
}

- (void)setObserverFeed:(unint64_t)feed asLightsAndSirensGateway:(id)gateway priority:(unint64_t)priority
{
  gatewayCopy = gateway;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__BBObserverClientProxy_setObserverFeed_asLightsAndSirensGateway_priority___block_invoke;
  v11[3] = &unk_278D2C238;
  v11[4] = self;
  v12 = gatewayCopy;
  feedCopy = feed;
  priorityCopy = priority;
  v10 = gatewayCopy;
  dispatch_async(queue, v11);
}

void __75__BBObserverClientProxy_setObserverFeed_asLightsAndSirensGateway_priority___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 observer:*(a1 + 32) setObserverFeed:*(a1 + 48) asLightsAndSirensGateway:*(a1 + 40) priority:*(a1 + 56)];
}

- (void)handleResponse:(id)response withCompletion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__BBObserverClientProxy_handleResponse_withCompletion___block_invoke;
  block[3] = &unk_278D2A9A0;
  block[4] = self;
  v12 = responseCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = responseCopy;
  dispatch_async(queue, block);
}

void __55__BBObserverClientProxy_handleResponse_withCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 server];
    v9 = 138543874;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ handling response %{public}@ with server %{public}@", &v9, 0x20u);
  }

  v7 = [*(a1 + 32) server];
  [v7 observer:*(a1 + 32) handleResponse:*(a1 + 40) withCompletion:*(a1 + 48)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)finishedWithBulletinID:(id)d transactionID:(unint64_t)iD
{
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BBObserverClientProxy_finishedWithBulletinID_transactionID___block_invoke;
  block[3] = &unk_278D2A9F0;
  block[4] = self;
  v10 = dCopy;
  iDCopy = iD;
  v8 = dCopy;
  dispatch_async(queue, block);
}

void __62__BBObserverClientProxy_finishedWithBulletinID_transactionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 observer:*(a1 + 32) finishedWithBulletinID:*(a1 + 40) transactionID:*(a1 + 48)];
}

- (void)clearSection:(id)section
{
  sectionCopy = section;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__BBObserverClientProxy_clearSection___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = sectionCopy;
  v6 = sectionCopy;
  dispatch_async(queue, v7);
}

void __38__BBObserverClientProxy_clearSection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 observer:*(a1 + 32) clearSection:*(a1 + 40)];
}

- (void)clearBulletinsFromDate:(id)date toDate:(id)toDate inSections:(id)sections
{
  dateCopy = date;
  toDateCopy = toDate;
  sectionsCopy = sections;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__BBObserverClientProxy_clearBulletinsFromDate_toDate_inSections___block_invoke;
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

void __66__BBObserverClientProxy_clearBulletinsFromDate_toDate_inSections___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 observer:*(a1 + 32) clearBulletinsFromDate:*(a1 + 40) toDate:*(a1 + 48) inSections:*(a1 + 56)];
}

- (void)clearBulletinIDs:(id)ds inSection:(id)section
{
  dsCopy = ds;
  sectionCopy = section;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__BBObserverClientProxy_clearBulletinIDs_inSection___block_invoke;
  block[3] = &unk_278D2AB58;
  block[4] = self;
  v12 = dsCopy;
  v13 = sectionCopy;
  v9 = sectionCopy;
  v10 = dsCopy;
  dispatch_async(queue, block);
}

void __52__BBObserverClientProxy_clearBulletinIDs_inSection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 observer:*(a1 + 32) clearBulletinIDs:*(a1 + 40) inSection:*(a1 + 48)];
}

- (void)removeBulletins:(id)bulletins inSection:(id)section fromFeeds:(unint64_t)feeds
{
  bulletinsCopy = bulletins;
  sectionCopy = section;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__BBObserverClientProxy_removeBulletins_inSection_fromFeeds___block_invoke;
  v13[3] = &unk_278D2AD00;
  v13[4] = self;
  v14 = bulletinsCopy;
  v15 = sectionCopy;
  feedsCopy = feeds;
  v11 = sectionCopy;
  v12 = bulletinsCopy;
  dispatch_async(queue, v13);
}

void __61__BBObserverClientProxy_removeBulletins_inSection_fromFeeds___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 observer:*(a1 + 32) removeBulletins:*(a1 + 40) inSection:*(a1 + 48) fromFeeds:*(a1 + 56)];
}

- (void)requestNoticesBulletinsForSectionID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__BBObserverClientProxy_requestNoticesBulletinsForSectionID___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

void __61__BBObserverClientProxy_requestNoticesBulletinsForSectionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 observer:*(a1 + 32) requestNoticesBulletinsForSectionID:*(a1 + 40)];
}

- (void)requestNoticesBulletinsForAllSections
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BBObserverClientProxy_requestNoticesBulletinsForAllSections__block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_async(queue, block);
}

void __62__BBObserverClientProxy_requestNoticesBulletinsForAllSections__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 requestNoticesBulletinsForAllSections:*(a1 + 32)];
}

- (void)getSectionInfoWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__BBObserverClientProxy_getSectionInfoWithHandler___block_invoke;
  v7[3] = &unk_278D2AC38;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __51__BBObserverClientProxy_getSectionInfoWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 observer:*(a1 + 32) getSectionInfoWithHandler:*(a1 + 40)];
}

- (void)getSectionInfoForActiveSectionsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__BBObserverClientProxy_getSectionInfoForActiveSectionsWithHandler___block_invoke;
  v7[3] = &unk_278D2AC38;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __68__BBObserverClientProxy_getSectionInfoForActiveSectionsWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 observer:*(a1 + 32) getSectionInfoForActiveSectionsWithHandler:*(a1 + 40)];
}

- (void)getSectionInfoForSectionIDs:(id)ds withHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BBObserverClientProxy_getSectionInfoForSectionIDs_withHandler___block_invoke;
  block[3] = &unk_278D2A9A0;
  block[4] = self;
  v12 = dsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dsCopy;
  dispatch_async(queue, block);
}

void __65__BBObserverClientProxy_getSectionInfoForSectionIDs_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 observer:*(a1 + 32) getSectionInfoForSectionIDs:*(a1 + 40) withHandler:*(a1 + 48)];
}

- (void)getSectionParametersForSectionID:(id)d withHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__BBObserverClientProxy_getSectionParametersForSectionID_withHandler___block_invoke;
  block[3] = &unk_278D2A9A0;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __70__BBObserverClientProxy_getSectionParametersForSectionID_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 getSectionParametersForSectionID:*(a1 + 40) withHandler:*(a1 + 48)];
}

- (void)getUniversalSectionIDForSectionID:(id)d withHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__BBObserverClientProxy_getUniversalSectionIDForSectionID_withHandler___block_invoke;
  block[3] = &unk_278D2A9A0;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __71__BBObserverClientProxy_getUniversalSectionIDForSectionID_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 getUniversalSectionIDForSectionID:*(a1 + 40) withHandler:*(a1 + 48)];
}

- (void)getBulletinsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__BBObserverClientProxy_getBulletinsWithHandler___block_invoke;
  v7[3] = &unk_278D2AC38;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __49__BBObserverClientProxy_getBulletinsWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 getBulletinsWithHandler:*(a1 + 40)];
}

- (void)getPublisherMatchIDsOfBulletinsPublishedAfterDate:(id)date withHandler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__BBObserverClientProxy_getPublisherMatchIDsOfBulletinsPublishedAfterDate_withHandler___block_invoke;
  block[3] = &unk_278D2A9A0;
  block[4] = self;
  v12 = dateCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dateCopy;
  dispatch_async(queue, block);
}

void __87__BBObserverClientProxy_getPublisherMatchIDsOfBulletinsPublishedAfterDate_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 getPublisherMatchIDsOfBulletinsPublishedAfterDate:*(a1 + 40) withHandler:*(a1 + 48)];
}

- (void)getBulletinsForPublisherMatchIDs:(id)ds sectionID:(id)d withHandler:(id)handler
{
  dsCopy = ds;
  dCopy = d;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__BBObserverClientProxy_getBulletinsForPublisherMatchIDs_sectionID_withHandler___block_invoke;
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

void __80__BBObserverClientProxy_getBulletinsForPublisherMatchIDs_sectionID_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 getBulletinsForPublisherMatchIDs:*(a1 + 40) sectionID:*(a1 + 48) withHandler:*(a1 + 56)];
}

- (void)setObserverOptions:(unint64_t)options
{
  v11 = *MEMORY[0x277D85DE8];
  self->_observerOptions = options;
  v5 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "%@ setObserverOptions: options: %ld", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end