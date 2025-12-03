@interface EDDaemonInterfaceFactory
- (EDDaemonInterfaceFactory)initWithPersistence:(id)persistence categorySubsystem:(id)subsystem;
- (id)newAccountRepository;
- (id)newActivityRegistry;
- (id)newClientResumerWithClientState:(id)state;
- (id)newDiagnosticInfoGathererWithServerRemoteClientsProvider:(id)provider;
- (id)newMailboxRepository;
- (id)newMessageRepositoryWithResumable:(id)resumable;
- (id)newSearchableIndex;
- (id)newSenderRepository;
- (id)newVIPManagerInterface;
- (id)sharedInteractionLogger;
- (void)test_tearDown;
@end

@implementation EDDaemonInterfaceFactory

- (id)newAccountRepository
{
  v3 = [EDAccountRepository alloc];
  persistence = [(EDDaemonInterfaceFactory *)self persistence];
  accountsProvider = [persistence accountsProvider];
  persistence2 = [(EDDaemonInterfaceFactory *)self persistence];
  hookRegistry = [persistence2 hookRegistry];
  v8 = [(EDAccountRepository *)v3 initWithAccountsProvider:accountsProvider hookRegistry:hookRegistry];

  return v8;
}

- (id)sharedInteractionLogger
{
  categorySubsystem = [(EDDaemonInterfaceFactory *)self categorySubsystem];
  interactionLogger = [categorySubsystem interactionLogger];

  return interactionLogger;
}

- (id)newMailboxRepository
{
  v3 = [EDMailboxRepository alloc];
  persistence = [(EDDaemonInterfaceFactory *)self persistence];
  mailboxPersistence = [persistence mailboxPersistence];
  v6 = [(EDMailboxRepository *)v3 initWithMailboxPersistence:mailboxPersistence];

  return v6;
}

- (id)newActivityRegistry
{
  v3 = [EDActivityRegistry alloc];
  hookRegistry = [(EDPersistence *)self->_persistence hookRegistry];
  activityPersistence = [(EDPersistence *)self->_persistence activityPersistence];
  v6 = [(EDActivityRegistry *)v3 initWithHookRegistry:hookRegistry activityPersistence:activityPersistence];

  return v6;
}

- (EDDaemonInterfaceFactory)initWithPersistence:(id)persistence categorySubsystem:(id)subsystem
{
  persistenceCopy = persistence;
  subsystemCopy = subsystem;
  v12.receiver = self;
  v12.super_class = EDDaemonInterfaceFactory;
  v9 = [(EDDaemonInterfaceFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistence, persistence);
    objc_storeStrong(&v10->_categorySubsystem, subsystem);
  }

  return v10;
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDDaemonInterfaceFactory.m" lineNumber:47 description:{@"%s can only be called from unit tests", "-[EDDaemonInterfaceFactory test_tearDown]"}];
  }

  persistence = [(EDDaemonInterfaceFactory *)self persistence];
  [persistence test_tearDown];
}

- (id)newMessageRepositoryWithResumable:(id)resumable
{
  resumableCopy = resumable;
  v4 = [EDMessageRepository alloc];
  persistence = [(EDDaemonInterfaceFactory *)self persistence];
  messagePersistence = [persistence messagePersistence];
  persistence2 = [(EDDaemonInterfaceFactory *)self persistence];
  conversationPersistence = [persistence2 conversationPersistence];
  persistence3 = [(EDDaemonInterfaceFactory *)self persistence];
  threadPersistence = [persistence3 threadPersistence];
  persistence4 = [(EDDaemonInterfaceFactory *)self persistence];
  remoteContentPersistence = [persistence4 remoteContentPersistence];
  persistence5 = [(EDDaemonInterfaceFactory *)self persistence];
  messageChangeManager = [persistence5 messageChangeManager];
  persistence6 = [(EDDaemonInterfaceFactory *)self persistence];
  richLinkPersistence = [persistence6 richLinkPersistence];
  persistence7 = [(EDDaemonInterfaceFactory *)self persistence];
  attachmentPersistenceManager = [persistence7 attachmentPersistenceManager];
  persistence8 = [(EDDaemonInterfaceFactory *)self persistence];
  categoryPersistence = [persistence8 categoryPersistence];
  persistence9 = [(EDDaemonInterfaceFactory *)self persistence];
  senderPersistence = [persistence9 senderPersistence];
  persistence10 = [(EDDaemonInterfaceFactory *)self persistence];
  activityPersistence = [persistence10 activityPersistence];
  persistence11 = [(EDDaemonInterfaceFactory *)self persistence];
  businessPersistence = [persistence11 businessPersistence];
  persistence12 = [(EDDaemonInterfaceFactory *)self persistence];
  businessCloudStorage = [persistence12 businessCloudStorage];
  persistence13 = [(EDDaemonInterfaceFactory *)self persistence];
  hookRegistry = [persistence13 hookRegistry];
  persistence14 = [(EDDaemonInterfaceFactory *)self persistence];
  mailboxPersistence = [persistence14 mailboxPersistence];
  persistence15 = [(EDDaemonInterfaceFactory *)self persistence];
  searchProvider = [persistence15 searchProvider];
  persistence16 = [(EDDaemonInterfaceFactory *)self persistence];
  userProfileProvider = [persistence16 userProfileProvider];
  persistence17 = [(EDDaemonInterfaceFactory *)self persistence];
  vipManager = [persistence17 vipManager];
  newFetchController = [(EDDaemonInterfaceFactory *)self newFetchController];
  persistence18 = [(EDDaemonInterfaceFactory *)self persistence];
  remoteContentManager = [persistence18 remoteContentManager];
  persistence19 = [(EDDaemonInterfaceFactory *)self persistence];
  remoteContentCacheConfiguration = [persistence19 remoteContentCacheConfiguration];
  persistence20 = [(EDDaemonInterfaceFactory *)self persistence];
  blockedSenderManager = [persistence20 blockedSenderManager];
  persistence21 = [(EDDaemonInterfaceFactory *)self persistence];
  listUnsubscribeHandler = [persistence21 listUnsubscribeHandler];
  persistence22 = [(EDDaemonInterfaceFactory *)self persistence];
  remindMeNotificationController = [persistence22 remindMeNotificationController];
  persistence23 = [(EDDaemonInterfaceFactory *)self persistence];
  accountsProvider = [persistence23 accountsProvider];
  v11 = [(EDMessageRepository *)v4 initWithMessagePersistence:messagePersistence conversationPersistence:conversationPersistence threadPersistence:threadPersistence remoteContentPersistence:remoteContentPersistence messageChangeManager:messageChangeManager richLinkPersistence:attachmentPersistenceManager attachmentPersistenceManager:categoryPersistence categoryPersistence:senderPersistence senderPersistence:activityPersistence activityPersistence:businessPersistence businessPersistence:businessCloudStorage businessCloudStorage:hookRegistry hookRegistry:mailboxPersistence mailboxPersistence:searchProvider searchProvider:userProfileProvider userProfileProvider:vipManager vipManager:newFetchController fetchController:resumableCopy observerResumer:remoteContentManager remoteContentManager:remoteContentCacheConfiguration remoteContentCacheConfiguration:blockedSenderManager blockedSenderManager:listUnsubscribeHandler listUnsubscribeHandler:remindMeNotificationController remindMeNotificationController:accountsProvider accountsProvider:?];

  return v11;
}

- (id)newSenderRepository
{
  v3 = [EDSenderRepository alloc];
  persistence = [(EDDaemonInterfaceFactory *)self persistence];
  senderPersistence = [persistence senderPersistence];
  v6 = [(EDSenderRepository *)v3 initWithSenderPersistence:senderPersistence];

  return v6;
}

- (id)newSearchableIndex
{
  persistence = [(EDDaemonInterfaceFactory *)self persistence];
  searchableIndexManager = [persistence searchableIndexManager];

  [searchableIndexManager enableIndexingAndBeginScheduling:0];
  index = [searchableIndexManager index];

  return index;
}

- (id)newVIPManagerInterface
{
  v3 = [EDVIPManagerProxy alloc];
  persistence = [(EDDaemonInterfaceFactory *)self persistence];
  vipManager = [persistence vipManager];
  v6 = [(EDVIPManagerProxy *)v3 initWithVIPManager:vipManager];

  return v6;
}

- (id)newDiagnosticInfoGathererWithServerRemoteClientsProvider:(id)provider
{
  providerCopy = provider;
  v5 = [EDDiagnosticInfoGatherer alloc];
  newFetchController = [(EDDaemonInterfaceFactory *)self newFetchController];
  persistence = [(EDDaemonInterfaceFactory *)self persistence];
  v8 = [(EDDiagnosticInfoGatherer *)v5 initWithFetchController:newFetchController remoteClientsProvider:providerCopy persistence:persistence];

  return v8;
}

- (id)newClientResumerWithClientState:(id)state
{
  stateCopy = state;
  v5 = [EDClientResumer alloc];
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v7 = EFBundleIdentifierForXPCConnection();
  persistence = [(EDDaemonInterfaceFactory *)self persistence];
  hookRegistry = [persistence hookRegistry];
  v10 = [(EDClientResumer *)v5 initWithClientBundleIdentifier:v7 hookRegistry:hookRegistry clientState:stateCopy];

  return v10;
}

@end