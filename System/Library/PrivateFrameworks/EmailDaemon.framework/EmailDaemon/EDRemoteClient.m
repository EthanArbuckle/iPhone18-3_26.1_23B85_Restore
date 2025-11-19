@interface EDRemoteClient
+ (NSXPCInterface)exportedInterface;
+ (OS_os_log)log;
- (EDAccountRepository)accountRepository;
- (EDActivityRegistry)activityRegistry;
- (EDFetchController)fetchController;
- (EDInteractionLogger)interactionLogger;
- (EDMailboxRepository)mailboxRepository;
- (EDOutgoingMessageRepository)outgoingMessageRepository;
- (EDRemoteClient)initWithConnection:(id)a3 daemonInterfaceFactory:(id)a4 serverRemoteClientsProvider:(id)a5;
- (EDSearchableIndex)searchableIndex;
- (EDSenderRepository)senderRepository;
- (EDServerRemoteClientsProvider)serverRemoteClientsProvider;
- (EMVIPManagerInterface)vipManagerInterface;
- (id)messageReconciliationQueries;
- (id)threadReconciliationQueries;
- (void)dealloc;
- (void)getAccountRepositoryInterface:(id)a3;
- (void)getActivityRegistryInterface:(id)a3;
- (void)getClientStateInterface:(id)a3;
- (void)getDiagnosticInfoGathererInterface:(id)a3;
- (void)getFetchControllerInterface:(id)a3;
- (void)getInteractionLoggerInterface:(id)a3;
- (void)getMailboxRepositoryInterface:(id)a3;
- (void)getMessageRepositoryInterface:(id)a3;
- (void)getOutgoingMessageRepositoryInterface:(id)a3;
- (void)getSearchableIndexInterface:(id)a3;
- (void)getSenderRepositoryInterface:(id)a3;
- (void)getVIPManagerInterface:(id)a3;
- (void)launchForAppLaunch:(id)a3;
- (void)launchForEarlyRecovery:(id)a3;
- (void)repopulateBusinessesTables;
- (void)setAllowsBackgroundResume:(BOOL)a3;
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
  block[4] = a1;
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
    v4 = [(EDRemoteClient *)self daemonInterfaceFactory];
    v5 = [v4 newAccountRepository];
    v6 = self->_accountRepository;
    self->_accountRepository = v5;

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
    v4 = [(EDRemoteClient *)self daemonInterfaceFactory];
    v5 = [v4 sharedInteractionLogger];
    v6 = self->_interactionLogger;
    self->_interactionLogger = v5;

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
    v4 = [(EDRemoteClient *)self daemonInterfaceFactory];
    v5 = [v4 newMailboxRepository];
    v6 = self->_mailboxRepository;
    self->_mailboxRepository = v5;

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
    v4 = [(EDRemoteClient *)self daemonInterfaceFactory];
    v5 = [v4 newActivityRegistry];
    v6 = self->_activityRegistry;
    self->_activityRegistry = v5;

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
    v4 = [(EDRemoteClient *)self daemonInterfaceFactory];
    v5 = [v4 newOutgoingMessageRepository];
    v6 = self->_outgoingMessageRepository;
    self->_outgoingMessageRepository = v5;

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
    v4 = [(EDRemoteClient *)self daemonInterfaceFactory];
    v5 = [v4 newFetchController];
    v6 = self->_fetchController;
    self->_fetchController = v5;

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

- (EDRemoteClient)initWithConnection:(id)a3 daemonInterfaceFactory:(id)a4 serverRemoteClientsProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = EDRemoteClient;
  v12 = [(EDRemoteClient *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_clientConnection, a3);
    objc_storeStrong(&v13->_daemonInterfaceFactory, a4);
    objc_storeWeak(&v13->_serverRemoteClientsProvider, v11);
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
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EDRemoteClient.m" lineNumber:102 description:{@"%s can only be called from unit tests", "-[EDRemoteClient test_tearDown]"}];
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
    v4 = [(EDRemoteClient *)self daemonInterfaceFactory];
    v5 = [v4 newSenderRepository];
    v6 = self->_senderRepository;
    self->_senderRepository = v5;

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
    v4 = [(EDRemoteClient *)self daemonInterfaceFactory];
    v5 = [v4 newSearchableIndex];
    v6 = self->_searchableIndex;
    self->_searchableIndex = v5;

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
    v4 = [(EDRemoteClient *)self daemonInterfaceFactory];
    v5 = [v4 newVIPManagerInterface];
    v6 = self->_vipManagerInterface;
    self->_vipManagerInterface = v5;

    vipManagerInterface = self->_vipManagerInterface;
  }

  v7 = vipManagerInterface;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)getMessageRepositoryInterface:(id)a3
{
  v10 = a3;
  os_unfair_lock_lock(&self->_lock);
  messageRepository = self->_messageRepository;
  if (!messageRepository)
  {
    v5 = [[EDRemoteClientResumer alloc] initWithRemoteClient:self];
    v6 = [(EDRemoteClient *)self daemonInterfaceFactory];
    v7 = [v6 newMessageRepositoryWithResumable:v5];
    v8 = self->_messageRepository;
    self->_messageRepository = v7;

    messageRepository = self->_messageRepository;
  }

  v9 = messageRepository;
  os_unfair_lock_unlock(&self->_lock);
  v10[2](v10, v9);
}

- (void)getOutgoingMessageRepositoryInterface:(id)a3
{
  v5 = a3;
  v4 = [(EDRemoteClient *)self outgoingMessageRepository];
  v5[2](v5, v4);
}

- (void)getAccountRepositoryInterface:(id)a3
{
  v5 = a3;
  v4 = [(EDRemoteClient *)self accountRepository];
  v5[2](v5, v4);
}

- (void)getClientStateInterface:(id)a3
{
  v5 = a3;
  v4 = [(EDRemoteClient *)self clientState];
  v5[2](v5, v4);
}

- (void)getFetchControllerInterface:(id)a3
{
  v5 = a3;
  v4 = [(EDRemoteClient *)self fetchController];
  v5[2](v5, v4);
}

- (void)getMailboxRepositoryInterface:(id)a3
{
  v5 = a3;
  v4 = [(EDRemoteClient *)self mailboxRepository];
  v5[2](v5, v4);
}

- (void)getSearchableIndexInterface:(id)a3
{
  v5 = a3;
  v4 = [(EDRemoteClient *)self searchableIndex];
  v5[2](v5, v4);
}

- (void)getInteractionLoggerInterface:(id)a3
{
  v5 = a3;
  v4 = [(EDRemoteClient *)self interactionLogger];
  v5[2](v5, v4);
}

- (void)repopulateBusinessesTables
{
  v3 = [(EDDaemonInterfaceFactory *)self->_daemonInterfaceFactory persistence];
  v2 = [v3 businessPersistence];
  [v2 repopulateBusinessesTables];
}

- (void)getVIPManagerInterface:(id)a3
{
  v5 = a3;
  v4 = [(EDRemoteClient *)self vipManagerInterface];
  v5[2](v5, v4);
}

- (void)getActivityRegistryInterface:(id)a3
{
  v5 = a3;
  v4 = [(EDRemoteClient *)self activityRegistry];
  v5[2](v5, v4);
}

- (void)getDiagnosticInfoGathererInterface:(id)a3
{
  v10 = a3;
  os_unfair_lock_lock(&self->_lock);
  diagnosticInfoGatherer = self->_diagnosticInfoGatherer;
  if (!diagnosticInfoGatherer)
  {
    v5 = [(EDRemoteClient *)self daemonInterfaceFactory];
    v6 = [(EDRemoteClient *)self serverRemoteClientsProvider];
    v7 = [v5 newDiagnosticInfoGathererWithServerRemoteClientsProvider:v6];
    v8 = self->_diagnosticInfoGatherer;
    self->_diagnosticInfoGatherer = v7;

    diagnosticInfoGatherer = self->_diagnosticInfoGatherer;
  }

  v9 = diagnosticInfoGatherer;
  os_unfair_lock_unlock(&self->_lock);
  v10[2](v10, v9);
}

- (void)launchForAppLaunch:(id)a3
{
  v4 = a3;
  v5 = +[EDRemoteClient log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "app requested early daemon launch", v7, 2u);
  }

  v4[2](v4);
  v6 = [(EDDaemonInterfaceFactory *)self->_daemonInterfaceFactory persistence];
  [EDTruncateMailboxUpgradeStep presentNeedlessAlertIfNecessaryWithPersistence:v6];
}

- (void)launchForEarlyRecovery:(id)a3
{
  v3 = a3;
  v4 = +[EDRemoteClient log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "app requested early recovery path", v5, 2u);
  }

  v3[2](v3);
}

- (void)setAllowsBackgroundResume:(BOOL)a3
{
  clientResumer = self->_clientResumer;
  if (a3)
  {
    if (clientResumer)
    {
      return;
    }

    daemonInterfaceFactory = self->_daemonInterfaceFactory;
    v9 = [(EDRemoteClient *)self clientState];
    v7 = [(EDDaemonInterfaceFactory *)daemonInterfaceFactory newClientResumerWithClientState:?];
    v8 = self->_clientResumer;
    self->_clientResumer = v7;

    v5 = v9;
  }

  else
  {
    [(EDClientResumer *)clientResumer invalidate];
    v5 = self->_clientResumer;
    self->_clientResumer = 0;
  }
}

- (void)getSenderRepositoryInterface:(id)a3
{
  v5 = a3;
  v4 = [(EDRemoteClient *)self senderRepository];
  v5[2](v5, v4);
}

- (id)messageReconciliationQueries
{
  v2 = [(EDRemoteClient *)self messageRepository];
  v3 = [v2 messageReconciliationQueries];

  return v3;
}

- (id)threadReconciliationQueries
{
  v2 = [(EDRemoteClient *)self messageRepository];
  v3 = [v2 threadReconciliationQueries];

  return v3;
}

@end