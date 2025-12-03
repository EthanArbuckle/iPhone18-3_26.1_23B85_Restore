@interface ASAccountActor
- (ASAccountActor)initWithDAAccount:(id)account;
- (BOOL)generatesBulletins;
- (BOOL)reattemptInvitationLinkageForMetaData:(id)data inFolderWithId:(id)id;
- (BOOL)searchQueriesRunning;
- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag;
- (id)customSignature;
- (id)deletedItemsFolder;
- (id)draftsFolder;
- (id)encryptionIdentityPersistentReference;
- (id)folderIDsThatExternalClientsCareAboutForDataclasses:(int64_t)dataclasses withTag:(id *)tag;
- (id)folderIDsThatExternalClientsCareAboutWithTag:(id *)tag;
- (id)foldersTag;
- (id)inboxFolder;
- (id)mailboxes;
- (id)sentItemsFolder;
- (id)signingIdentityPersistentReference;
- (id)unactionableICSRepresentationForMetaData:(id)data inFolderWithId:(id)id outSummary:(id *)summary;
- (int)mailNumberOfPastDaysToSync;
- (int)performFetchAttachmentRequest:(id)request consumer:(id)consumer;
- (int)performFetchMessageSearchResultRequests:(id)requests consumer:(id)consumer;
- (int)performMoveRequests:(id)requests consumer:(id)consumer;
- (int)performResolveRecipientsRequest:(id)request consumer:(id)consumer;
- (int)supportsConversations;
- (int)supportsDraftFolderSync;
- (int)supportsEmailFlagging;
- (int)supportsMailboxSearch;
- (int)supportsSmartForwardReply;
- (int)supportsUniqueServerId;
- (void)_accountPasswordChanged;
- (void)_daemonDiedNotification:(id)notification;
- (void)_folderHierarchyChanged;
- (void)_folderUpdatedNotification:(id)notification;
- (void)_foldersThatExternalClientsCareAboutChanged;
- (void)_newASPolicyKeyNotification:(id)notification;
- (void)cancelAllSearchQueries;
- (void)cancelSearchQuery:(id)query;
- (void)monitorFoldersForUpdates:(id)updates;
- (void)performSearchQuery:(id)query;
- (void)setAccount:(id)account;
- (void)setCustomSignature:(id)signature;
- (void)setEncryptionIdentityPersistentReference:(id)reference;
- (void)setSigningIdentityPersistentReference:(id)reference;
- (void)shutdown;
- (void)startup;
- (void)stopMonitoringAllFolders;
- (void)stopMonitoringFoldersForUpdates:(id)updates;
@end

@implementation ASAccountActor

- (void)startup
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:325 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (id)mailboxes
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:25 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)inboxFolder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:303 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)sentItemsFolder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:309 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)deletedItemsFolder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:315 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)mailNumberOfPastDaysToSync
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:32 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsMailboxSearch
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:38 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsEmailFlagging
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:43 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsConversations
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:48 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsDraftFolderSync
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:53 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsSmartForwardReply
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:58 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsUniqueServerId
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:63 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (BOOL)generatesBulletins
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:68 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)signingIdentityPersistentReference
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:77 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)setSigningIdentityPersistentReference:(id)reference
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:82 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (id)encryptionIdentityPersistentReference
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:86 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)setEncryptionIdentityPersistentReference:(id)reference
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:91 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (id)customSignature
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:95 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)setCustomSignature:(id)signature
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:100 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)monitorFoldersForUpdates:(id)updates
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:110 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)stopMonitoringFoldersForUpdates:(id)updates
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:120 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)stopMonitoringAllFolders
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:125 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (id)foldersTag
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:129 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)folderIDsThatExternalClientsCareAboutWithTag:(id *)tag
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:135 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)folderIDsThatExternalClientsCareAboutForDataclasses:(int64_t)dataclasses withTag:(id *)tag
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:141 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:147 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (BOOL)reattemptInvitationLinkageForMetaData:(id)data inFolderWithId:(id)id
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:153 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)unactionableICSRepresentationForMetaData:(id)data inFolderWithId:(id)id outSummary:(id *)summary
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:158 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)performMoveRequests:(id)requests consumer:(id)consumer
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:247 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)performFetchAttachmentRequest:(id)request consumer:(id)consumer
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:254 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)performFetchMessageSearchResultRequests:(id)requests consumer:(id)consumer
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:260 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)performResolveRecipientsRequest:(id)request consumer:(id)consumer
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:266 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)performSearchQuery:(id)query
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:282 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)cancelSearchQuery:(id)query
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:287 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)cancelAllSearchQueries
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:292 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (BOOL)searchQueriesRunning
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:297 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)draftsFolder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:321 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)setAccount:(id)account
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:329 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)shutdown
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:333 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_daemonDiedNotification:(id)notification
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:340 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_folderUpdatedNotification:(id)notification
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:345 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_newASPolicyKeyNotification:(id)notification
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:349 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_folderHierarchyChanged
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:353 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_foldersThatExternalClientsCareAboutChanged
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:357 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_accountPasswordChanged
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:361 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (ASAccountActor)initWithDAAccount:(id)account
{
  accountCopy = account;
  if (ExchangeSyncLibraryCore_1())
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v5 = getESAccountActorClass_softClass;
    v13 = getESAccountActorClass_softClass;
    if (!getESAccountActorClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getESAccountActorClass_block_invoke;
      v9[3] = &unk_278F13318;
      v9[4] = &v10;
      __getESAccountActorClass_block_invoke(v9);
      v5 = v11[3];
    }

    v6 = v5;
    _Block_object_dispose(&v10, 8);
    v7 = [[v5 alloc] initWithDAAccount:accountCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end