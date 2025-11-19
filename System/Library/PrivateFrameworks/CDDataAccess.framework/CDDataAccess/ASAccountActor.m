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
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:317 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (id)mailboxes
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:17 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)inboxFolder
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:295 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)sentItemsFolder
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:301 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)deletedItemsFolder
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:307 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)mailNumberOfPastDaysToSync
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:24 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsMailboxSearch
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:30 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsEmailFlagging
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:35 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsConversations
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:40 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsDraftFolderSync
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:45 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsSmartForwardReply
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:50 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsUniqueServerId
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:55 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (BOOL)generatesBulletins
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:60 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)signingIdentityPersistentReference
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:69 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)setSigningIdentityPersistentReference:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:74 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (id)encryptionIdentityPersistentReference
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:78 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)setEncryptionIdentityPersistentReference:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:83 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (id)customSignature
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:87 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)setCustomSignature:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:92 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)monitorFoldersForUpdates:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:102 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)stopMonitoringFoldersForUpdates:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:112 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)stopMonitoringAllFolders
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:117 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (id)foldersTag
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:121 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)folderIDsThatExternalClientsCareAboutWithTag:(id *)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:127 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)folderIDsThatExternalClientsCareAboutForDataclasses:(int64_t)a3 withTag:(id *)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:133 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)a3 deleted:(id)a4 foldersTag:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:139 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (BOOL)reattemptInvitationLinkageForMetaData:(id)a3 inFolderWithId:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:145 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)unactionableICSRepresentationForMetaData:(id)a3 inFolderWithId:(id)a4 outSummary:(id *)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:150 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)performMoveRequests:(id)a3 consumer:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:239 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)performFetchAttachmentRequest:(id)a3 consumer:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:246 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)performFetchMessageSearchResultRequests:(id)a3 consumer:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:252 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)performResolveRecipientsRequest:(id)a3 consumer:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:258 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)performSearchQuery:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:274 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)cancelSearchQuery:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:279 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)cancelAllSearchQueries
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:284 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (BOOL)searchQueriesRunning
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:289 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)draftsFolder
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:313 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)setAccount:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:321 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)shutdown
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:325 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_daemonDiedNotification:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:332 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_folderUpdatedNotification:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:337 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_newASPolicyKeyNotification:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:341 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_folderHierarchyChanged
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:345 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_foldersThatExternalClientsCareAboutChanged
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:349 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_accountPasswordChanged
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:353 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (ASAccountActor)initWithDAAccount:(id)a3
{
  v4 = a3;
  v5 = +[DAAccountLoader sharedInstance];
  v6 = sharedDAAccountStore();
  v7 = [v6 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C00]];
  [v5 loadFrameworkForACAccountType:v7];

  v8 = [objc_alloc(NSClassFromString(&cfstr_Asconcreteacco.isa)) initWithDAAccount:v4];
  return v8;
}

@end