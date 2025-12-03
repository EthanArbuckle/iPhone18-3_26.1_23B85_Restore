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
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:317 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (id)mailboxes
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:17 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)inboxFolder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:295 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)sentItemsFolder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:301 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)deletedItemsFolder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:307 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)mailNumberOfPastDaysToSync
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:24 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsMailboxSearch
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:30 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsEmailFlagging
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:35 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsConversations
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:40 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsDraftFolderSync
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:45 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsSmartForwardReply
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:50 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)supportsUniqueServerId
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:55 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (BOOL)generatesBulletins
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:60 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)signingIdentityPersistentReference
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:69 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)setSigningIdentityPersistentReference:(id)reference
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:74 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (id)encryptionIdentityPersistentReference
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:78 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)setEncryptionIdentityPersistentReference:(id)reference
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:83 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (id)customSignature
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:87 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)setCustomSignature:(id)signature
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:92 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)monitorFoldersForUpdates:(id)updates
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:102 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)stopMonitoringFoldersForUpdates:(id)updates
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:112 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)stopMonitoringAllFolders
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:117 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (id)foldersTag
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:121 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)folderIDsThatExternalClientsCareAboutWithTag:(id *)tag
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:127 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)folderIDsThatExternalClientsCareAboutForDataclasses:(int64_t)dataclasses withTag:(id *)tag
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:133 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:139 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (BOOL)reattemptInvitationLinkageForMetaData:(id)data inFolderWithId:(id)id
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:145 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)unactionableICSRepresentationForMetaData:(id)data inFolderWithId:(id)id outSummary:(id *)summary
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:150 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)performMoveRequests:(id)requests consumer:(id)consumer
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:239 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)performFetchAttachmentRequest:(id)request consumer:(id)consumer
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:246 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)performFetchMessageSearchResultRequests:(id)requests consumer:(id)consumer
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:252 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (int)performResolveRecipientsRequest:(id)request consumer:(id)consumer
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:258 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)performSearchQuery:(id)query
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:274 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)cancelSearchQuery:(id)query
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:279 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)cancelAllSearchQueries
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:284 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (BOOL)searchQueriesRunning
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:289 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (id)draftsFolder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:313 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (void)setAccount:(id)account
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:321 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)shutdown
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:325 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_daemonDiedNotification:(id)notification
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:332 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_folderUpdatedNotification:(id)notification
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:337 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_newASPolicyKeyNotification:(id)notification
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:341 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_folderHierarchyChanged
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:345 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_foldersThatExternalClientsCareAboutChanged
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:349 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (void)_accountPasswordChanged
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASAccountActor.m" lineNumber:353 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (ASAccountActor)initWithDAAccount:(id)account
{
  accountCopy = account;
  v5 = +[DAAccountLoader sharedInstance];
  v6 = sharedDAAccountStore();
  v7 = [v6 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C00]];
  [v5 loadFrameworkForACAccountType:v7];

  v8 = [objc_alloc(NSClassFromString(&cfstr_Asconcreteacco.isa)) initWithDAAccount:accountCopy];
  return v8;
}

@end