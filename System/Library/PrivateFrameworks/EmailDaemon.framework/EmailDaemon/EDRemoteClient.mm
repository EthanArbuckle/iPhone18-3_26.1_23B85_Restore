@interface EDRemoteClient
+ (NSXPCInterface)exportedInterface;
+ (OS_os_log)log;
- (EDAccountRepository)accountRepository;
- (EDActivityRegistry)activityRegistry;
- (EDFetchController)fetchController;
- (EDInteractionLogger)interactionLogger;
- (EDMailboxRepository)mailboxRepository;
- (EDOutgoingMessageRepository)outgoingMessageRepository;
- (EDRemoteClient)initWithConnection:(id)connection daemonInterfaceFactory:(id)factory serverRemoteClientsProvider:(id)provider;
- (EDSearchableIndex)searchableIndex;
- (EDSenderRepository)senderRepository;
- (EDServerRemoteClientsProvider)serverRemoteClientsProvider;
- (EMVIPManagerInterface)vipManagerInterface;
- (id)messageReconciliationQueries;
- (id)threadReconciliationQueries;
- (void)dealloc;
- (void)getAccountRepositoryInterface:(id)interface;
- (void)getActivityRegistryInterface:(id)interface;
- (void)getClientStateInterface:(id)interface;
- (void)getDiagnosticInfoGathererInterface:(id)interface;
- (void)getFetchControllerInterface:(id)interface;
- (void)getInteractionLoggerInterface:(id)interface;
- (void)getMailboxRepositoryInterface:(id)interface;
- (void)getMessageRepositoryInterface:(id)interface;
- (void)getOutgoingMessageRepositoryInterface:(id)interface;
- (void)getSearchableIndexInterface:(id)interface;
- (void)getSenderRepositoryInterface:(id)interface;
- (void)getVIPManagerInterface:(id)interface;
- (void)launchForAppLaunch:(id)launch;
- (void)launchForEarlyRecovery:(id)recovery;
- (void)repopulateBusinessesTables;
- (void)setAllowsBackgroundResume:(BOOL)resume;
- (void)test_tearDown;
@end

@implementation EDRemoteClient

+ (NSXPCInterface)exportedInterface
{
  if (exportedInterface_onceToken != -1)
  {
    +[EDRemoteClient exportedInterface];
  }

  v3 = exportedInterface_exportedInterface;

  return v3;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__EDRemoteClient_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_82 != -1)
  {
    dispatch_once(&log_onceToken_82, block);
  }

  v2 = log_log_82;

  return v2;
}

- (EDAccountRepository)accountRepository
{
  os_unfair_lock_lock(&self->_lock);
  accountRepository = self->_accountRepository;
  if (!accountRepository)
  {
    daemonInterfaceFactory = [(EDRemoteClient *)self daemonInterfaceFactory];
    newAccountRepository = [daemonInterfaceFactory newAccountRepository];
    v6 = self->_accountRepository;
    self->_accountRepository = newAccountRepository;

    accountRepository = self->_accountRepository;
  }

  v7 = accountRepository;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (EDInteractionLogger)interactionLogger
{
  os_unfair_lock_lock(&self->_lock);
  interactionLogger = self->_interactionLogger;
  if (!interactionLogger)
  {
    daemonInterfaceFactory = [(EDRemoteClient *)self daemonInterfaceFactory];
    sharedInteractionLogger = [daemonInterfaceFactory sharedInteractionLogger];
    v6 = self->_interactionLogger;
    self->_interactionLogger = sharedInteractionLogger;

    interactionLogger = self->_interactionLogger;
  }

  v7 = interactionLogger;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (EDMailboxRepository)mailboxRepository
{
  os_unfair_lock_lock(&self->_lock);
  mailboxRepository = self->_mailboxRepository;
  if (!mailboxRepository)
  {
    daemonInterfaceFactory = [(EDRemoteClient *)self daemonInterfaceFactory];
    newMailboxRepository = [daemonInterfaceFactory newMailboxRepository];
    v6 = self->_mailboxRepository;
    self->_mailboxRepository = newMailboxRepository;

    mailboxRepository = self->_mailboxRepository;
  }

  v7 = mailboxRepository;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (EDServerRemoteClientsProvider)serverRemoteClientsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_serverRemoteClientsProvider);

  return WeakRetained;
}

- (EDActivityRegistry)activityRegistry
{
  os_unfair_lock_lock(&self->_lock);
  activityRegistry = self->_activityRegistry;
  if (!activityRegistry)
  {
    daemonInterfaceFactory = [(EDRemoteClient *)self daemonInterfaceFactory];
    newActivityRegistry = [daemonInterfaceFactory newActivityRegistry];
    v6 = self->_activityRegistry;
    self->_activityRegistry = newActivityRegistry;

    activityRegistry = self->_activityRegistry;
  }

  v7 = activityRegistry;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (EDOutgoingMessageRepository)outgoingMessageRepository
{
  os_unfair_lock_lock(&self->_lock);
  outgoingMessageRepository = self->_outgoingMessageRepository;
  if (!outgoingMessageRepository)
  {
    daemonInterfaceFactory = [(EDRemoteClient *)self daemonInterfaceFactory];
    newOutgoingMessageRepository = [daemonInterfaceFactory newOutgoingMessageRepository];
    v6 = self->_outgoingMessageRepository;
    self->_outgoingMessageRepository = newOutgoingMessageRepository;

    outgoingMessageRepository = self->_outgoingMessageRepository;
  }

  v7 = outgoingMessageRepository;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (EDFetchController)fetchController
{
  os_unfair_lock_lock(&self->_lock);
  fetchController = self->_fetchController;
  if (!fetchController)
  {
    daemonInterfaceFactory = [(EDRemoteClient *)self daemonInterfaceFactory];
    newFetchController = [daemonInterfaceFactory newFetchController];
    v6 = self->_fetchController;
    self->_fetchController = newFetchController;

    fetchController = self->_fetchController;
  }

  v7 = fetchController;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

void __21__EDRemoteClient_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_82;
  log_log_82 = v1;
}

void __35__EDRemoteClient_exportedInterface__block_invoke()
{
  v0 = [MEMORY[0x1E699AC88] remoteObjectInterface];
  v1 = exportedInterface_exportedInterface;
  exportedInterface_exportedInterface = v0;
}

- (EDRemoteClient)initWithConnection:(id)connection daemonInterfaceFactory:(id)factory serverRemoteClientsProvider:(id)provider
{
  connectionCopy = connection;
  factoryCopy = factory;
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = EDRemoteClient;
  v12 = [(EDRemoteClient *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_clientConnection, connection);
    objc_storeStrong(&v13->_daemonInterfaceFactory, factory);
    objc_storeWeak(&v13->_serverRemoteClientsProvider, providerCopy);
    v14 = +[EDClientState sharedInstance];
    clientState = v13->_clientState;
    v13->_clientState = v14;
  }

  return v13;
}

- (void)dealloc
{
  [(EDClientResumer *)self->_clientResumer invalidate];
  v3.receiver = self;
  v3.super_class = EDRemoteClient;
  [(EDRemoteClient *)&v3 dealloc];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDRemoteClient.m" lineNumber:102 description:{@"%s can only be called from unit tests", "-[EDRemoteClient test_tearDown]"}];
  }

  messageRepository = self->_messageRepository;

  [(EDMessageRepository *)messageRepository test_tearDown];
}

- (EDSenderRepository)senderRepository
{
  os_unfair_lock_lock(&self->_lock);
  senderRepository = self->_senderRepository;
  if (!senderRepository)
  {
    daemonInterfaceFactory = [(EDRemoteClient *)self daemonInterfaceFactory];
    newSenderRepository = [daemonInterfaceFactory newSenderRepository];
    v6 = self->_senderRepository;
    self->_senderRepository = newSenderRepository;

    senderRepository = self->_senderRepository;
  }

  v7 = senderRepository;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (EDSearchableIndex)searchableIndex
{
  os_unfair_lock_lock(&self->_lock);
  searchableIndex = self->_searchableIndex;
  if (!searchableIndex)
  {
    daemonInterfaceFactory = [(EDRemoteClient *)self daemonInterfaceFactory];
    newSearchableIndex = [daemonInterfaceFactory newSearchableIndex];
    v6 = self->_searchableIndex;
    self->_searchableIndex = newSearchableIndex;

    searchableIndex = self->_searchableIndex;
  }

  v7 = searchableIndex;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (EMVIPManagerInterface)vipManagerInterface
{
  os_unfair_lock_lock(&self->_lock);
  vipManagerInterface = self->_vipManagerInterface;
  if (!vipManagerInterface)
  {
    daemonInterfaceFactory = [(EDRemoteClient *)self daemonInterfaceFactory];
    newVIPManagerInterface = [daemonInterfaceFactory newVIPManagerInterface];
    v6 = self->_vipManagerInterface;
    self->_vipManagerInterface = newVIPManagerInterface;

    vipManagerInterface = self->_vipManagerInterface;
  }

  v7 = vipManagerInterface;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)getMessageRepositoryInterface:(id)interface
{
  interfaceCopy = interface;
  os_unfair_lock_lock(&self->_lock);
  messageRepository = self->_messageRepository;
  if (!messageRepository)
  {
    v5 = [[EDRemoteClientResumer alloc] initWithRemoteClient:self];
    daemonInterfaceFactory = [(EDRemoteClient *)self daemonInterfaceFactory];
    v7 = [daemonInterfaceFactory newMessageRepositoryWithResumable:v5];
    v8 = self->_messageRepository;
    self->_messageRepository = v7;

    messageRepository = self->_messageRepository;
  }

  v9 = messageRepository;
  os_unfair_lock_unlock(&self->_lock);
  interfaceCopy[2](interfaceCopy, v9);
}

- (void)getOutgoingMessageRepositoryInterface:(id)interface
{
  interfaceCopy = interface;
  outgoingMessageRepository = [(EDRemoteClient *)self outgoingMessageRepository];
  interfaceCopy[2](interfaceCopy, outgoingMessageRepository);
}

- (void)getAccountRepositoryInterface:(id)interface
{
  interfaceCopy = interface;
  accountRepository = [(EDRemoteClient *)self accountRepository];
  interfaceCopy[2](interfaceCopy, accountRepository);
}

- (void)getClientStateInterface:(id)interface
{
  interfaceCopy = interface;
  clientState = [(EDRemoteClient *)self clientState];
  interfaceCopy[2](interfaceCopy, clientState);
}

- (void)getFetchControllerInterface:(id)interface
{
  interfaceCopy = interface;
  fetchController = [(EDRemoteClient *)self fetchController];
  interfaceCopy[2](interfaceCopy, fetchController);
}

- (void)getMailboxRepositoryInterface:(id)interface
{
  interfaceCopy = interface;
  mailboxRepository = [(EDRemoteClient *)self mailboxRepository];
  interfaceCopy[2](interfaceCopy, mailboxRepository);
}

- (void)getSearchableIndexInterface:(id)interface
{
  interfaceCopy = interface;
  searchableIndex = [(EDRemoteClient *)self searchableIndex];
  interfaceCopy[2](interfaceCopy, searchableIndex);
}

- (void)getInteractionLoggerInterface:(id)interface
{
  interfaceCopy = interface;
  interactionLogger = [(EDRemoteClient *)self interactionLogger];
  interfaceCopy[2](interfaceCopy, interactionLogger);
}

- (void)repopulateBusinessesTables
{
  persistence = [(EDDaemonInterfaceFactory *)self->_daemonInterfaceFactory persistence];
  businessPersistence = [persistence businessPersistence];
  [businessPersistence repopulateBusinessesTables];
}

- (void)getVIPManagerInterface:(id)interface
{
  interfaceCopy = interface;
  vipManagerInterface = [(EDRemoteClient *)self vipManagerInterface];
  interfaceCopy[2](interfaceCopy, vipManagerInterface);
}

- (void)getActivityRegistryInterface:(id)interface
{
  interfaceCopy = interface;
  activityRegistry = [(EDRemoteClient *)self activityRegistry];
  interfaceCopy[2](interfaceCopy, activityRegistry);
}

- (void)getDiagnosticInfoGathererInterface:(id)interface
{
  interfaceCopy = interface;
  os_unfair_lock_lock(&self->_lock);
  diagnosticInfoGatherer = self->_diagnosticInfoGatherer;
  if (!diagnosticInfoGatherer)
  {
    daemonInterfaceFactory = [(EDRemoteClient *)self daemonInterfaceFactory];
    serverRemoteClientsProvider = [(EDRemoteClient *)self serverRemoteClientsProvider];
    v7 = [daemonInterfaceFactory newDiagnosticInfoGathererWithServerRemoteClientsProvider:serverRemoteClientsProvider];
    v8 = self->_diagnosticInfoGatherer;
    self->_diagnosticInfoGatherer = v7;

    diagnosticInfoGatherer = self->_diagnosticInfoGatherer;
  }

  v9 = diagnosticInfoGatherer;
  os_unfair_lock_unlock(&self->_lock);
  interfaceCopy[2](interfaceCopy, v9);
}

- (void)launchForAppLaunch:(id)launch
{
  launchCopy = launch;
  v5 = +[EDRemoteClient log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "app requested early daemon launch", v7, 2u);
  }

  launchCopy[2](launchCopy);
  persistence = [(EDDaemonInterfaceFactory *)self->_daemonInterfaceFactory persistence];
  [EDTruncateMailboxUpgradeStep presentNeedlessAlertIfNecessaryWithPersistence:persistence];
}

- (void)launchForEarlyRecovery:(id)recovery
{
  recoveryCopy = recovery;
  v4 = +[EDRemoteClient log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "app requested early recovery path", v5, 2u);
  }

  recoveryCopy[2](recoveryCopy);
}

- (void)setAllowsBackgroundResume:(BOOL)resume
{
  clientResumer = self->_clientResumer;
  if (resume)
  {
    if (clientResumer)
    {
      return;
    }

    daemonInterfaceFactory = self->_daemonInterfaceFactory;
    clientState = [(EDRemoteClient *)self clientState];
    v7 = [(EDDaemonInterfaceFactory *)daemonInterfaceFactory newClientResumerWithClientState:?];
    v8 = self->_clientResumer;
    self->_clientResumer = v7;

    v5 = clientState;
  }

  else
  {
    [(EDClientResumer *)clientResumer invalidate];
    v5 = self->_clientResumer;
    self->_clientResumer = 0;
  }
}

- (void)getSenderRepositoryInterface:(id)interface
{
  interfaceCopy = interface;
  senderRepository = [(EDRemoteClient *)self senderRepository];
  interfaceCopy[2](interfaceCopy, senderRepository);
}

- (id)messageReconciliationQueries
{
  messageRepository = [(EDRemoteClient *)self messageRepository];
  messageReconciliationQueries = [messageRepository messageReconciliationQueries];

  return messageReconciliationQueries;
}

- (id)threadReconciliationQueries
{
  messageRepository = [(EDRemoteClient *)self messageRepository];
  threadReconciliationQueries = [messageRepository threadReconciliationQueries];

  return threadReconciliationQueries;
}

@end