@interface ASAccountActor
- (ASAccountActor)initWithDAAccount:(id)a3;
- (BOOL)generatesBulletins;
- (BOOL)reattemptInvitationLinkageForMetaData:(id)a3 inFolderWithId:(id)a4;
- (BOOL)searchQueriesRunning;
- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)a3 deleted:(id)a4 foldersTag:(id)a5;
- (id)customSignature;
- (id)deletedItemsFolder;
- (id)draftsFolder;
- (id)encryptionIdentityPersistentReference;
- (id)folderIDsThatExternalClientsCareAboutForDataclasses:(int64_t)a3 withTag:(id *)a4;
- (id)folderIDsThatExternalClientsCareAboutWithTag:(id *)a3;
- (id)foldersTag;
- (id)inboxFolder;
- (id)mailboxes;
- (id)sentItemsFolder;
- (id)signingIdentityPersistentReference;
- (id)unactionableICSRepresentationForMetaData:(id)a3 inFolderWithId:(id)a4 outSummary:(id *)a5;
- (int)mailNumberOfPastDaysToSync;
- (int)performFetchAttachmentRequest:(id)a3 consumer:(id)a4;
- (int)performFetchMessageSearchResultRequests:(id)a3 consumer:(id)a4;
- (int)performMoveRequests:(id)a3 consumer:(id)a4;
- (int)performResolveRecipientsRequest:(id)a3 consumer:(id)a4;
- (int)supportsConversations;
- (int)supportsDraftFolderSync;
- (int)supportsEmailFlagging;
- (int)supportsMailboxSearch;
- (int)supportsSmartForwardReply;
- (int)supportsUniqueServerId;
- (void)_accountPasswordChanged;
- (void)_daemonDiedNotification:(id)a3;
- (void)_folderHierarchyChanged;
- (void)_folderUpdatedNotification:(id)a3;
- (void)_foldersThatExternalClientsCareAboutChanged;
- (void)_newASPolicyKeyNotification:(id)a3;
- (void)cancelAllSearchQueries;
- (void)cancelSearchQuery:(id)a3;
- (void)monitorFoldersForUpdates:(id)a3;
- (void)performSearchQuery:(id)a3;
- (void)setAccount:(id)a3;
- (void)setCustomSignature:(id)a3;
- (void)setEncryptionIdentityPersistentReference:(id)a3;
- (void)setSigningIdentityPersistentReference:(id)a3;
- (void)shutdown;
- (void)startup;
- (void)stopMonitoringAllFolders;
- (void)stopMonitoringFoldersForUpdates:(id)a3;
@end

@implementation ASAccountActor

- (void)startup
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:325 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (id)mailboxes
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:25 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)inboxFolder
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:303 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)sentItemsFolder
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:309 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)deletedItemsFolder
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:315 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)mailNumberOfPastDaysToSync
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:32 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsMailboxSearch
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:38 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsEmailFlagging
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:43 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsConversations
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:48 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsDraftFolderSync
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:53 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsSmartForwardReply
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:58 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsUniqueServerId
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:63 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (BOOL)generatesBulletins
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:68 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)signingIdentityPersistentReference
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:77 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)setSigningIdentityPersistentReference:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:82 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (id)encryptionIdentityPersistentReference
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:86 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)setEncryptionIdentityPersistentReference:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:91 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (id)customSignature
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:95 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)setCustomSignature:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:100 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)monitorFoldersForUpdates:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:110 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)stopMonitoringFoldersForUpdates:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:120 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)stopMonitoringAllFolders
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:125 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (id)foldersTag
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:129 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)folderIDsThatExternalClientsCareAboutWithTag:(id *)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:135 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)folderIDsThatExternalClientsCareAboutForDataclasses:(int64_t)a3 withTag:(id *)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:141 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)a3 deleted:(id)a4 foldersTag:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:147 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (BOOL)reattemptInvitationLinkageForMetaData:(id)a3 inFolderWithId:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:153 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)unactionableICSRepresentationForMetaData:(id)a3 inFolderWithId:(id)a4 outSummary:(id *)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:158 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)performMoveRequests:(id)a3 consumer:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:247 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)performFetchAttachmentRequest:(id)a3 consumer:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:254 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)performFetchMessageSearchResultRequests:(id)a3 consumer:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:260 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)performResolveRecipientsRequest:(id)a3 consumer:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:266 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)performSearchQuery:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:282 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)cancelSearchQuery:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:287 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)cancelAllSearchQueries
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:292 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (BOOL)searchQueriesRunning
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:297 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)draftsFolder
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:321 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)setAccount:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:329 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)shutdown
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:333 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_daemonDiedNotification:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:340 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_folderUpdatedNotification:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:345 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_newASPolicyKeyNotification:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:349 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_folderHierarchyChanged
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:353 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_foldersThatExternalClientsCareAboutChanged
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:357 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_accountPasswordChanged
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:361 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (ASAccountActor)initWithDAAccount:(id)a3
{
  v4 = a3;
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
    v7 = [[v5 alloc] initWithDAAccount:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end