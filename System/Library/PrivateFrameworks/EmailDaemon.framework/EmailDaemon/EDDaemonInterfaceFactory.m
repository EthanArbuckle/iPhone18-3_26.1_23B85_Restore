@interface EDDaemonInterfaceFactory
- (EDDaemonInterfaceFactory)initWithPersistence:(id)a3 categorySubsystem:(id)a4;
- (id)newAccountRepository;
- (id)newActivityRegistry;
- (id)newClientResumerWithClientState:(id)a3;
- (id)newDiagnosticInfoGathererWithServerRemoteClientsProvider:(id)a3;
- (id)newMailboxRepository;
- (id)newMessageRepositoryWithResumable:(id)a3;
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
  v4 = [(EDDaemonInterfaceFactory *)self persistence];
  v5 = [v4 accountsProvider];
  v6 = [(EDDaemonInterfaceFactory *)self persistence];
  v7 = [v6 hookRegistry];
  v8 = [(EDAccountRepository *)v3 initWithAccountsProvider:v5 hookRegistry:v7];

  return v8;
}

- (id)sharedInteractionLogger
{
  v2 = [(EDDaemonInterfaceFactory *)self categorySubsystem];
  v3 = [v2 interactionLogger];

  return v3;
}

- (id)newMailboxRepository
{
  v3 = [EDMailboxRepository alloc];
  v4 = [(EDDaemonInterfaceFactory *)self persistence];
  v5 = [v4 mailboxPersistence];
  v6 = [(EDMailboxRepository *)v3 initWithMailboxPersistence:v5];

  return v6;
}

- (id)newActivityRegistry
{
  v3 = [EDActivityRegistry alloc];
  v4 = [(EDPersistence *)self->_persistence hookRegistry];
  v5 = [(EDPersistence *)self->_persistence activityPersistence];
  v6 = [(EDActivityRegistry *)v3 initWithHookRegistry:v4 activityPersistence:v5];

  return v6;
}

- (EDDaemonInterfaceFactory)initWithPersistence:(id)a3 categorySubsystem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EDDaemonInterfaceFactory;
  v9 = [(EDDaemonInterfaceFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistence, a3);
    objc_storeStrong(&v10->_categorySubsystem, a4);
  }

  return v10;
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EDDaemonInterfaceFactory.m" lineNumber:47 description:{@"%s can only be called from unit tests", "-[EDDaemonInterfaceFactory test_tearDown]"}];
  }

  v4 = [(EDDaemonInterfaceFactory *)self persistence];
  [v4 test_tearDown];
}

- (id)newMessageRepositoryWithResumable:(id)a3
{
  v54 = a3;
  v4 = [EDMessageRepository alloc];
  v41 = [(EDDaemonInterfaceFactory *)self persistence];
  v53 = [v41 messagePersistence];
  v40 = [(EDDaemonInterfaceFactory *)self persistence];
  v52 = [v40 conversationPersistence];
  v39 = [(EDDaemonInterfaceFactory *)self persistence];
  v51 = [v39 threadPersistence];
  v38 = [(EDDaemonInterfaceFactory *)self persistence];
  v50 = [v38 remoteContentPersistence];
  v37 = [(EDDaemonInterfaceFactory *)self persistence];
  v49 = [v37 messageChangeManager];
  v36 = [(EDDaemonInterfaceFactory *)self persistence];
  v35 = [v36 richLinkPersistence];
  v34 = [(EDDaemonInterfaceFactory *)self persistence];
  v48 = [v34 attachmentPersistenceManager];
  v33 = [(EDDaemonInterfaceFactory *)self persistence];
  v47 = [v33 categoryPersistence];
  v32 = [(EDDaemonInterfaceFactory *)self persistence];
  v46 = [v32 senderPersistence];
  v31 = [(EDDaemonInterfaceFactory *)self persistence];
  v45 = [v31 activityPersistence];
  v30 = [(EDDaemonInterfaceFactory *)self persistence];
  v44 = [v30 businessPersistence];
  v29 = [(EDDaemonInterfaceFactory *)self persistence];
  v28 = [v29 businessCloudStorage];
  v27 = [(EDDaemonInterfaceFactory *)self persistence];
  v5 = [v27 hookRegistry];
  v26 = [(EDDaemonInterfaceFactory *)self persistence];
  v43 = [v26 mailboxPersistence];
  v25 = [(EDDaemonInterfaceFactory *)self persistence];
  v42 = [v25 searchProvider];
  v24 = [(EDDaemonInterfaceFactory *)self persistence];
  v23 = [v24 userProfileProvider];
  v22 = [(EDDaemonInterfaceFactory *)self persistence];
  v6 = [v22 vipManager];
  v21 = [(EDDaemonInterfaceFactory *)self newFetchController];
  v20 = [(EDDaemonInterfaceFactory *)self persistence];
  v19 = [v20 remoteContentManager];
  v18 = [(EDDaemonInterfaceFactory *)self persistence];
  v17 = [v18 remoteContentCacheConfiguration];
  v16 = [(EDDaemonInterfaceFactory *)self persistence];
  v7 = [v16 blockedSenderManager];
  v15 = [(EDDaemonInterfaceFactory *)self persistence];
  v14 = [v15 listUnsubscribeHandler];
  v13 = [(EDDaemonInterfaceFactory *)self persistence];
  v12 = [v13 remindMeNotificationController];
  v8 = [(EDDaemonInterfaceFactory *)self persistence];
  v9 = [v8 accountsProvider];
  v11 = [(EDMessageRepository *)v4 initWithMessagePersistence:v53 conversationPersistence:v52 threadPersistence:v51 remoteContentPersistence:v50 messageChangeManager:v49 richLinkPersistence:v48 attachmentPersistenceManager:v47 categoryPersistence:v46 senderPersistence:v45 activityPersistence:v44 businessPersistence:v28 businessCloudStorage:v5 hookRegistry:v43 mailboxPersistence:v42 searchProvider:v23 userProfileProvider:v6 vipManager:v21 fetchController:v54 observerResumer:v19 remoteContentManager:v17 remoteContentCacheConfiguration:v7 blockedSenderManager:v14 listUnsubscribeHandler:v12 remindMeNotificationController:v9 accountsProvider:?];

  return v11;
}

- (id)newSenderRepository
{
  v3 = [EDSenderRepository alloc];
  v4 = [(EDDaemonInterfaceFactory *)self persistence];
  v5 = [v4 senderPersistence];
  v6 = [(EDSenderRepository *)v3 initWithSenderPersistence:v5];

  return v6;
}

- (id)newSearchableIndex
{
  v2 = [(EDDaemonInterfaceFactory *)self persistence];
  v3 = [v2 searchableIndexManager];

  [v3 enableIndexingAndBeginScheduling:0];
  v4 = [v3 index];

  return v4;
}

- (id)newVIPManagerInterface
{
  v3 = [EDVIPManagerProxy alloc];
  v4 = [(EDDaemonInterfaceFactory *)self persistence];
  v5 = [v4 vipManager];
  v6 = [(EDVIPManagerProxy *)v3 initWithVIPManager:v5];

  return v6;
}

- (id)newDiagnosticInfoGathererWithServerRemoteClientsProvider:(id)a3
{
  v4 = a3;
  v5 = [EDDiagnosticInfoGatherer alloc];
  v6 = [(EDDaemonInterfaceFactory *)self newFetchController];
  v7 = [(EDDaemonInterfaceFactory *)self persistence];
  v8 = [(EDDiagnosticInfoGatherer *)v5 initWithFetchController:v6 remoteClientsProvider:v4 persistence:v7];

  return v8;
}

- (id)newClientResumerWithClientState:(id)a3
{
  v4 = a3;
  v5 = [EDClientResumer alloc];
  v6 = [MEMORY[0x1E696B0B8] currentConnection];
  v7 = EFBundleIdentifierForXPCConnection();
  v8 = [(EDDaemonInterfaceFactory *)self persistence];
  v9 = [v8 hookRegistry];
  v10 = [(EDClientResumer *)v5 initWithClientBundleIdentifier:v7 hookRegistry:v9 clientState:v4];

  return v10;
}

@end