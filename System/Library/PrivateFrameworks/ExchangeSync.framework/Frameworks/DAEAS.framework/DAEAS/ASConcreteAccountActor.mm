@interface ASConcreteAccountActor
+ (void)_initializeActorRunLoop;
+ (void)_runActorThreadWithStartupLock:(id)lock;
- (ASConcreteAccountActor)initWithDAAccount:(id)account;
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
- (id)inboxFolder;
- (id)mailboxes;
- (id)sentItemsFolder;
- (id)signingIdentityPersistentReference;
- (id)unactionableICSRepresentationForMetaData:(id)data inFolderWithId:(id)id outSummary:(id *)summary;
- (int)mailNumberOfPastDaysToSync;
- (int)performFetchAttachmentRequest:(id)request consumer:(id)consumer;
- (int)performFetchMessageSearchResultRequests:(id)requests consumer:(id)consumer;
- (int)performMailboxRequest:(id)request mailbox:(id)mailbox previousTag:(id)tag clientWinsOnSyncConflict:(BOOL)conflict isUserRequested:(BOOL)requested consumer:(id)consumer;
- (int)performMailboxRequests:(id)requests mailbox:(id)mailbox previousTag:(id)tag clientWinsOnSyncConflict:(BOOL)conflict isUserRequested:(BOOL)requested consumer:(id)consumer;
- (int)performMoveRequests:(id)requests consumer:(id)consumer;
- (int)performResolveRecipientsRequest:(id)request consumer:(id)consumer;
- (int)sendMessageWithRFC822Data:(id)data messageID:(id)d outgoingMessageType:(int)type originalMessageFolderID:(id)iD originalMessageItemID:(id)itemID originalMessageLongID:(id)longID originalAccountID:(id)accountID useSmartTasksIfPossible:(BOOL)self0 isUserRequested:(BOOL)self1 consumer:(id)self2 context:(id)self3;
- (int)sendSmartMessageWithRFC822Data:(id)data messageID:(id)d outgoingMessageType:(int)type originalMessageFolderID:(id)iD originalMessageItemID:(id)itemID originalMessageLongID:(id)longID originalAccountID:(id)accountID replaceOriginalMime:(BOOL)self0 isUserRequested:(BOOL)self1 consumer:(id)self2 context:(id)self3;
- (int)supportsConversations;
- (int)supportsDraftFolderSync;
- (int)supportsEmailFlagging;
- (int)supportsMailboxSearch;
- (int)supportsSmartForwardReply;
- (int)supportsUniqueServerId;
- (void)_daemonDiedNotification:(id)notification;
- (void)_folderHierarchyChanged;
- (void)_folderUpdatedNotification:(id)notification;
- (void)_foldersThatExternalClientsCareAboutChanged;
- (void)_newASPolicyKeyNotification:(id)notification;
- (void)_performAsynchronousSerialOnActorQueue:(id)queue;
- (void)_performSynchronousSerialOnActorQueue:(id)queue;
- (void)_sendFailureToConsumer:(id)consumer;
- (void)cancelAllSearchQueries;
- (void)cancelSearchQuery:(id)query;
- (void)cancelTaskWithID:(int)d;
- (void)disable;
- (void)monitorFoldersForUpdates:(id)updates persistent:(BOOL)persistent;
- (void)performFolderChange:(id)change isUserRequested:(BOOL)requested;
- (void)performSearchQuery:(id)query;
- (void)setAccount:(id)account;
- (void)setCustomSignature:(id)signature;
- (void)setEncryptionIdentityPersistentReference:(id)reference;
- (void)setGeneratesBulletins:(BOOL)bulletins;
- (void)setMailNumberOfPastDaysToSync:(int)sync;
- (void)setSigningIdentityPersistentReference:(id)reference;
- (void)startup;
- (void)stopMonitoringAllFolders;
- (void)stopMonitoringFoldersForUpdates:(id)updates;
@end

@implementation ASConcreteAccountActor

+ (void)_runActorThreadWithStartupLock:(id)lock
{
  lockCopy = lock;
  v3 = objc_autoreleasePoolPush();
  [lockCopy lockWhenCondition:0];
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  __actorRunLoop = CFRetain([currentRunLoop getCFRunLoop]);

  __actorPThread = pthread_self();
  port = [MEMORY[0x277CBEB80] port];
  currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
  [port scheduleInRunLoop:currentRunLoop2 forMode:*MEMORY[0x277CBE640]];

  [lockCopy unlockWithCondition:1];
  currentRunLoop3 = [MEMORY[0x277CBEB88] currentRunLoop];
  [currentRunLoop3 run];

  objc_autoreleasePoolPop(v3);
}

+ (void)_initializeActorRunLoop
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ASConcreteAccountActor__initializeActorRunLoop__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_initializeActorRunLoop_onceToken != -1)
  {
    dispatch_once(&_initializeActorRunLoop_onceToken, block);
  }
}

void __49__ASConcreteAccountActor__initializeActorRunLoop__block_invoke(uint64_t a1)
{
  v4 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
  v2 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:*(a1 + 32) selector:sel__runActorThreadWithStartupLock_ object:v4];
  v3 = _initializeActorRunLoop_actorThread;
  _initializeActorRunLoop_actorThread = v2;

  [_initializeActorRunLoop_actorThread start];
  [v4 lockWhenCondition:1];
  [v4 unlockWithCondition:1];
}

- (void)_performAsynchronousSerialOnActorQueue:(id)queue
{
  queueCopy = queue;
  _actorRunLoop = [objc_opt_class() _actorRunLoop];
  CFRunLoopPerformBlock(_actorRunLoop, *MEMORY[0x277CBF048], queueCopy);

  _actorRunLoop2 = [objc_opt_class() _actorRunLoop];

  CFRunLoopWakeUp(_actorRunLoop2);
}

- (void)_performSynchronousSerialOnActorQueue:(id)queue
{
  v25 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  _actorRunLoop = [objc_opt_class() _actorRunLoop];
  _actorPThread = [objc_opt_class() _actorPThread];
  v6 = qos_class_self();
  __qos_class = QOS_CLASS_UNSPECIFIED;
  pthread_get_qos_class_np(_actorPThread, &__qos_class, 0);
  started = 0;
  if (__qos_class < v6)
  {
    started = pthread_override_qos_class_start_np(_actorPThread, v6, 0);
    v8 = DALoggingwithCategory();
    v9 = v8;
    if (started)
    {
      v10 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v8, v10))
      {
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
        *buf = 138412290;
        v24 = v11;
        _os_log_impl(&dword_24A0AC000, v9, v10, "Overriding QoS of actor runloop to: [%@]", buf, 0xCu);
      }
    }

    else
    {
      v12 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v8, *(MEMORY[0x277D03988] + 3)))
      {
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
        *buf = 138412290;
        v24 = v13;
        _os_log_impl(&dword_24A0AC000, v9, v12, "Error overriding actor QoS: [%@]", buf, 0xCu);
      }

      started = 0;
    }
  }

  v14 = dispatch_semaphore_create(0);
  v15 = *MEMORY[0x277CBF048];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ASConcreteAccountActor__performSynchronousSerialOnActorQueue___block_invoke;
  block[3] = &unk_278FC7870;
  v21 = queueCopy;
  v16 = v14;
  v20 = v16;
  v17 = queueCopy;
  CFRunLoopPerformBlock(_actorRunLoop, v15, block);
  CFRunLoopWakeUp(_actorRunLoop);
  dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  if (started)
  {
    pthread_override_qos_class_end_np(started);
  }

  v18 = *MEMORY[0x277D85DE8];
}

intptr_t __64__ASConcreteAccountActor__performSynchronousSerialOnActorQueue___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (id)mailboxes
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__ASConcreteAccountActor_mailboxes__block_invoke;
  v4[3] = &unk_278FC7898;
  v4[4] = self;
  v4[5] = &v5;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __35__ASConcreteAccountActor_mailboxes__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = [*(*(a1 + 32) + 16) mailboxes];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (int)mailNumberOfPastDaysToSync
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__ASConcreteAccountActor_mailNumberOfPastDaysToSync__block_invoke;
  v4[3] = &unk_278FC7898;
  v4[4] = self;
  v4[5] = &v5;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __52__ASConcreteAccountActor_mailNumberOfPastDaysToSync__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    result = [*(*(a1 + 32) + 16) mailNumberOfPastDaysToSync];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (int)supportsMailboxSearch
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__ASConcreteAccountActor_supportsMailboxSearch__block_invoke;
  v4[3] = &unk_278FC7898;
  v4[4] = self;
  v4[5] = &v5;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __47__ASConcreteAccountActor_supportsMailboxSearch__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    result = [*(*(a1 + 32) + 16) supportsMailboxSearch];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (int)supportsEmailFlagging
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__ASConcreteAccountActor_supportsEmailFlagging__block_invoke;
  v4[3] = &unk_278FC7898;
  v4[4] = self;
  v4[5] = &v5;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __47__ASConcreteAccountActor_supportsEmailFlagging__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    result = [*(*(a1 + 32) + 16) supportsEmailFlagging];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (int)supportsConversations
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__ASConcreteAccountActor_supportsConversations__block_invoke;
  v4[3] = &unk_278FC7898;
  v4[4] = self;
  v4[5] = &v5;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __47__ASConcreteAccountActor_supportsConversations__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    result = [*(*(a1 + 32) + 16) supportsConversations];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (int)supportsDraftFolderSync
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__ASConcreteAccountActor_supportsDraftFolderSync__block_invoke;
  v4[3] = &unk_278FC7898;
  v4[4] = self;
  v4[5] = &v5;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __49__ASConcreteAccountActor_supportsDraftFolderSync__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    result = [*(*(a1 + 32) + 16) supportsDraftFolderSync];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (int)supportsSmartForwardReply
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__ASConcreteAccountActor_supportsSmartForwardReply__block_invoke;
  v4[3] = &unk_278FC7898;
  v4[4] = self;
  v4[5] = &v5;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __51__ASConcreteAccountActor_supportsSmartForwardReply__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    result = [*(*(a1 + 32) + 16) supportsSmartForwardReply];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (int)supportsUniqueServerId
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__ASConcreteAccountActor_supportsUniqueServerId__block_invoke;
  v4[3] = &unk_278FC7898;
  v4[4] = self;
  v4[5] = &v5;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __48__ASConcreteAccountActor_supportsUniqueServerId__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    result = [*(*(a1 + 32) + 16) supportsUniqueServerId];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)generatesBulletins
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__ASConcreteAccountActor_generatesBulletins__block_invoke;
  v4[3] = &unk_278FC7898;
  v4[4] = self;
  v4[5] = &v5;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __44__ASConcreteAccountActor_generatesBulletins__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isDisabled] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v2 = [*(a1 + 32) account];
    v4 = [v2 objectForKeyedSubscript:@"kASSupportsGeneratingBulletins"];

    v3 = v4;
    if (v4)
    {
      *(*(*(a1 + 40) + 8) + 24) = [v4 BOOLValue];
      v3 = v4;
    }
  }
}

- (void)setGeneratesBulletins:(BOOL)bulletins
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__ASConcreteAccountActor_setGeneratesBulletins___block_invoke;
  v3[3] = &unk_278FC78C0;
  v3[4] = self;
  bulletinsCopy = bulletins;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v3];
}

void __48__ASConcreteAccountActor_setGeneratesBulletins___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isDisabled] & 1) == 0)
  {
    v5 = @"kASSupportsGeneratingBulletins";
    v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
    v6[0] = v2;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

    [*(*(a1 + 32) + 16) applyNewAccountProperties:v3 saveIfDifferent:1];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)signingIdentityPersistentReference
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__ASConcreteAccountActor_signingIdentityPersistentReference__block_invoke;
  v4[3] = &unk_278FC7898;
  v4[4] = self;
  v4[5] = &v5;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __60__ASConcreteAccountActor_signingIdentityPersistentReference__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = [*(*(a1 + 32) + 16) signingIdentityPersistentReference];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setSigningIdentityPersistentReference:(id)reference
{
  referenceCopy = reference;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__ASConcreteAccountActor_setSigningIdentityPersistentReference___block_invoke;
  v6[3] = &unk_278FC78E8;
  v6[4] = self;
  v7 = referenceCopy;
  v5 = referenceCopy;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v6];
}

void __64__ASConcreteAccountActor_setSigningIdentityPersistentReference___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isDisabled] & 1) == 0)
  {
    v2 = [*(*(a1 + 32) + 16) signingIdentityPersistentReference];
    if (([v2 isEqualToData:*(a1 + 40)] & 1) == 0)
    {
      [*(*(a1 + 32) + 16) setSigningIdentityPersistentReference:*(a1 + 40)];
      [*(*(a1 + 32) + 16) saveAccountProperties];
    }
  }
}

- (id)encryptionIdentityPersistentReference
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__ASConcreteAccountActor_encryptionIdentityPersistentReference__block_invoke;
  v4[3] = &unk_278FC7898;
  v4[4] = self;
  v4[5] = &v5;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __63__ASConcreteAccountActor_encryptionIdentityPersistentReference__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = [*(*(a1 + 32) + 16) encryptionIdentityPersistentReference];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setEncryptionIdentityPersistentReference:(id)reference
{
  referenceCopy = reference;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__ASConcreteAccountActor_setEncryptionIdentityPersistentReference___block_invoke;
  v6[3] = &unk_278FC78E8;
  v6[4] = self;
  v7 = referenceCopy;
  v5 = referenceCopy;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v6];
}

void __67__ASConcreteAccountActor_setEncryptionIdentityPersistentReference___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isDisabled] & 1) == 0)
  {
    v2 = [*(*(a1 + 32) + 16) encryptionIdentityPersistentReference];
    if (([v2 isEqualToData:*(a1 + 40)] & 1) == 0)
    {
      [*(*(a1 + 32) + 16) setEncryptionIdentityPersistentReference:*(a1 + 40)];
      [*(*(a1 + 32) + 16) saveAccountProperties];
    }
  }
}

- (id)customSignature
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__ASConcreteAccountActor_customSignature__block_invoke;
  v4[3] = &unk_278FC7910;
  v4[4] = self;
  v4[5] = &v5;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __41__ASConcreteAccountActor_customSignature__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) account];
  v3 = [v2 objectForKeyedSubscript:@"kASCustomSignature"];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (![*(*(*(a1 + 40) + 8) + 40) length])
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

- (void)setCustomSignature:(id)signature
{
  signatureCopy = signature;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__ASConcreteAccountActor_setCustomSignature___block_invoke;
  v6[3] = &unk_278FC78E8;
  v6[4] = self;
  v7 = signatureCopy;
  v5 = signatureCopy;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v6];
}

void __45__ASConcreteAccountActor_setCustomSignature___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isDisabled] & 1) == 0)
  {
    v2 = &stru_285D39BD0;
    if (*(a1 + 40))
    {
      v2 = *(a1 + 40);
    }

    v5 = @"kASCustomSignature";
    v6[0] = v2;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    [*(*(a1 + 32) + 16) applyNewAccountProperties:v3 saveIfDifferent:1];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setMailNumberOfPastDaysToSync:(int)sync
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__ASConcreteAccountActor_setMailNumberOfPastDaysToSync___block_invoke;
  v3[3] = &unk_278FC7938;
  v3[4] = self;
  syncCopy = sync;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v3];
}

uint64_t __56__ASConcreteAccountActor_setMailNumberOfPastDaysToSync___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    [*(*(a1 + 32) + 16) setMailNumberOfPastDaysToSync:*(a1 + 40)];
    v3 = *(*(a1 + 32) + 16);

    return [v3 saveAccountProperties];
  }

  return result;
}

- (void)monitorFoldersForUpdates:(id)updates persistent:(BOOL)persistent
{
  updatesCopy = updates;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__ASConcreteAccountActor_monitorFoldersForUpdates_persistent___block_invoke;
  v8[3] = &unk_278FC7960;
  v8[4] = self;
  v9 = updatesCopy;
  persistentCopy = persistent;
  v7 = updatesCopy;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v8];
}

uint64_t __62__ASConcreteAccountActor_monitorFoldersForUpdates_persistent___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 16);
    v5 = *(a1 + 48);

    return [v4 monitorFoldersForUpdates:v3 persistent:v5];
  }

  return result;
}

- (void)stopMonitoringFoldersForUpdates:(id)updates
{
  updatesCopy = updates;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__ASConcreteAccountActor_stopMonitoringFoldersForUpdates___block_invoke;
  v6[3] = &unk_278FC78E8;
  v6[4] = self;
  v7 = updatesCopy;
  v5 = updatesCopy;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v6];
}

uint64_t __58__ASConcreteAccountActor_stopMonitoringFoldersForUpdates___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 16);

    return [v4 stopMonitoringFoldersForUpdates:v3];
  }

  return result;
}

- (void)stopMonitoringAllFolders
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __50__ASConcreteAccountActor_stopMonitoringAllFolders__block_invoke;
  v2[3] = &unk_278FC7988;
  v2[4] = self;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v2];
}

uint64_t __50__ASConcreteAccountActor_stopMonitoringAllFolders__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 16);

    return [v3 stopMonitoringAllFolders];
  }

  return result;
}

- (id)folderIDsThatExternalClientsCareAboutWithTag:(id *)tag
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__ASConcreteAccountActor_folderIDsThatExternalClientsCareAboutWithTag___block_invoke;
  v6[3] = &unk_278FC79B0;
  v6[4] = self;
  v6[5] = &v13;
  v6[6] = &v7;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v6];
  if (tag)
  {
    *tag = v14[5];
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v4;
}

uint64_t __71__ASConcreteAccountActor_folderIDsThatExternalClientsCareAboutWithTag___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = [*(*(a1 + 32) + 16) foldersTag];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [*(*(a1 + 32) + 16) folderIdsThatExternalClientsCareAbout];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)folderIDsThatExternalClientsCareAboutForDataclasses:(int64_t)dataclasses withTag:(id *)tag
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__ASConcreteAccountActor_folderIDsThatExternalClientsCareAboutForDataclasses_withTag___block_invoke;
  v7[3] = &unk_278FC79D8;
  v7[4] = self;
  v7[5] = &v14;
  v7[6] = &v8;
  v7[7] = dataclasses;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v7];
  if (tag)
  {
    *tag = v15[5];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

uint64_t __86__ASConcreteAccountActor_folderIDsThatExternalClientsCareAboutForDataclasses_withTag___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = [*(*(a1 + 32) + 16) foldersTag];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [*(*(a1 + 32) + 16) folderIdsThatExternalClientsCareAboutForDataclasses:*(a1 + 56)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag
{
  addedCopy = added;
  deletedCopy = deleted;
  tagCopy = tag;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__ASConcreteAccountActor_setFolderIdsThatExternalClientsCareAboutAdded_deleted_foldersTag___block_invoke;
  v15[3] = &unk_278FC7A00;
  v15[4] = self;
  v19 = &v20;
  v11 = addedCopy;
  v16 = v11;
  v12 = deletedCopy;
  v17 = v12;
  v13 = tagCopy;
  v18 = v13;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v15];
  LOBYTE(self) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return self;
}

uint64_t __91__ASConcreteAccountActor_setFolderIdsThatExternalClientsCareAboutAdded_deleted_foldersTag___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    result = [*(*(a1 + 32) + 16) setFolderIdsThatExternalClientsCareAboutAdded:*(a1 + 40) deleted:*(a1 + 48) foldersTag:*(a1 + 56)];
    *(*(*(a1 + 64) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)reattemptInvitationLinkageForMetaData:(id)data inFolderWithId:(id)id
{
  dataCopy = data;
  idCopy = id;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__ASConcreteAccountActor_reattemptInvitationLinkageForMetaData_inFolderWithId___block_invoke;
  v11[3] = &unk_278FC7A28;
  v11[4] = self;
  v14 = &v15;
  v8 = dataCopy;
  v12 = v8;
  v9 = idCopy;
  v13 = v9;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v11];
  LOBYTE(self) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return self;
}

uint64_t __79__ASConcreteAccountActor_reattemptInvitationLinkageForMetaData_inFolderWithId___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    result = [*(*(a1 + 32) + 16) reattemptInvitationLinkageForMetaData:*(a1 + 40) inFolderWithId:*(a1 + 48)];
    *(*(*(a1 + 56) + 8) + 24) = result;
  }

  return result;
}

- (id)unactionableICSRepresentationForMetaData:(id)data inFolderWithId:(id)id outSummary:(id *)summary
{
  dataCopy = data;
  idCopy = id;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__ASConcreteAccountActor_unactionableICSRepresentationForMetaData_inFolderWithId_outSummary___block_invoke;
  v14[3] = &unk_278FC7A50;
  v14[4] = self;
  v17 = &v19;
  v10 = dataCopy;
  v15 = v10;
  v11 = idCopy;
  v16 = v11;
  v18 = &v25;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v14];
  if (summary)
  {
    *summary = v26[5];
  }

  v12 = v20[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

void __93__ASConcreteAccountActor_unactionableICSRepresentationForMetaData_inFolderWithId_outSummary___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isDisabled] & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 16);
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 64) + 8);
    obj = *(v5 + 40);
    v6 = [v3 unactionableICSRepresentationForMetaData:v2 inFolderWithId:v4 outSummary:&obj];
    objc_storeStrong((v5 + 40), obj);
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)_sendFailureToConsumer:(id)consumer
{
  v3 = MEMORY[0x277CCA9B8];
  consumerCopy = consumer;
  v5 = [v3 errorWithDomain:@"ASAccountActor" code:55 userInfo:0];
  [consumerCopy actionFailed:55 forTask:0 error:v5];
}

- (int)sendMessageWithRFC822Data:(id)data messageID:(id)d outgoingMessageType:(int)type originalMessageFolderID:(id)iD originalMessageItemID:(id)itemID originalMessageLongID:(id)longID originalAccountID:(id)accountID useSmartTasksIfPossible:(BOOL)self0 isUserRequested:(BOOL)self1 consumer:(id)self2 context:(id)self3
{
  dataCopy = data;
  dCopy = d;
  iDCopy = iD;
  itemIDCopy = itemID;
  longIDCopy = longID;
  accountIDCopy = accountID;
  consumerCopy = consumer;
  contextCopy = context;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __225__ASConcreteAccountActor_sendMessageWithRFC822Data_messageID_outgoingMessageType_originalMessageFolderID_originalMessageItemID_originalMessageLongID_originalAccountID_useSmartTasksIfPossible_isUserRequested_consumer_context___block_invoke;
  v36[3] = &unk_278FC7A78;
  v36[4] = self;
  v26 = consumerCopy;
  v37 = v26;
  v27 = dataCopy;
  requestedCopy = requested;
  v38 = v27;
  v45 = &v49;
  v28 = dCopy;
  v39 = v28;
  typeCopy = type;
  v29 = iDCopy;
  v40 = v29;
  v30 = itemIDCopy;
  v41 = v30;
  v31 = longIDCopy;
  v42 = v31;
  v32 = accountIDCopy;
  v43 = v32;
  possibleCopy = possible;
  v33 = contextCopy;
  v44 = v33;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v36];
  LODWORD(self) = *(v50 + 6);

  _Block_object_dispose(&v49, 8);
  return self;
}

uint64_t __225__ASConcreteAccountActor_sendMessageWithRFC822Data_messageID_outgoingMessageType_originalMessageFolderID_originalMessageItemID_originalMessageLongID_originalAccountID_useSmartTasksIfPossible_isUserRequested_consumer_context___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isDisabled])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v2 _sendFailureToConsumer:v3];
  }

  else if (*(a1 + 48))
  {
    v5 = [*(a1 + 32) account];
    [v5 setShouldUseOpportunisticSockets:0];

    v6 = *(a1 + 116);
    v7 = [*(a1 + 32) account];
    [v7 setWasUserInitiated:v6];

    v8 = *(a1 + 40);
    LOBYTE(v11) = *(a1 + 117);
    result = [*(*(a1 + 32) + 16) sendMessageWithRFC822Data:*(a1 + 48) messageID:*(a1 + 56) outgoingMessageType:*(a1 + 112) originalMessageFolderID:*(a1 + 64) originalMessageItemID:*(a1 + 72) originalMessageLongID:*(a1 + 80) originalAccountID:*(a1 + 88) useSmartTasksIfPossible:v11 sourceApplicationBundleIdentifier:0 consumer:v8 context:*(a1 + 96)];
    *(*(*(a1 + 104) + 8) + 24) = result;
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_24A0AC000, v9, v10, "SendMessage with nil data", buf, 2u);
    }

    return [*(a1 + 32) _sendFailureToConsumer:*(a1 + 40)];
  }

  return result;
}

- (int)sendSmartMessageWithRFC822Data:(id)data messageID:(id)d outgoingMessageType:(int)type originalMessageFolderID:(id)iD originalMessageItemID:(id)itemID originalMessageLongID:(id)longID originalAccountID:(id)accountID replaceOriginalMime:(BOOL)self0 isUserRequested:(BOOL)self1 consumer:(id)self2 context:(id)self3
{
  dataCopy = data;
  dCopy = d;
  iDCopy = iD;
  itemIDCopy = itemID;
  longIDCopy = longID;
  accountIDCopy = accountID;
  consumerCopy = consumer;
  contextCopy = context;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __226__ASConcreteAccountActor_sendSmartMessageWithRFC822Data_messageID_outgoingMessageType_originalMessageFolderID_originalMessageItemID_originalMessageLongID_originalAccountID_replaceOriginalMime_isUserRequested_consumer_context___block_invoke;
  v36[3] = &unk_278FC7AA0;
  v36[4] = self;
  v26 = consumerCopy;
  v37 = v26;
  typeCopy = type;
  v27 = itemIDCopy;
  v38 = v27;
  v28 = iDCopy;
  v39 = v28;
  v29 = longIDCopy;
  requestedCopy = requested;
  v40 = v29;
  v45 = &v49;
  v30 = dataCopy;
  v41 = v30;
  v31 = dCopy;
  v42 = v31;
  v32 = accountIDCopy;
  v43 = v32;
  mimeCopy = mime;
  v33 = contextCopy;
  v44 = v33;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v36];
  LODWORD(self) = *(v50 + 6);

  _Block_object_dispose(&v49, 8);
  return self;
}

uint64_t __226__ASConcreteAccountActor_sendSmartMessageWithRFC822Data_messageID_outgoingMessageType_originalMessageFolderID_originalMessageItemID_originalMessageLongID_originalAccountID_replaceOriginalMime_isUserRequested_consumer_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isDisabled];
  v3 = *(a1 + 32);
  if (!v2)
  {
    v6 = [v3[2] protocol];
    v7 = [v6 useSmartMailTasks];

    if (v7)
    {
      if (*(a1 + 112) && (*(a1 + 48) && *(a1 + 56) || *(a1 + 64)))
      {
        v8 = [*(a1 + 32) account];
        [v8 setShouldUseOpportunisticSockets:0];

        v9 = *(a1 + 116);
        v10 = [*(a1 + 32) account];
        [v10 setWasUserInitiated:v9];

        v11 = *(a1 + 40);
        LOBYTE(v16) = *(a1 + 117);
        result = [*(*(a1 + 32) + 16) sendSmartMessageWithRFC822Data:*(a1 + 72) messageID:*(a1 + 80) outgoingMessageType:*(a1 + 112) originalMessageFolderID:*(a1 + 56) originalMessageItemID:*(a1 + 48) originalMessageLongID:*(a1 + 64) originalAccountID:*(a1 + 88) replaceOriginalMime:v16 sourceApplicationBundleIdentifier:0 consumer:v11 context:*(a1 + 96)];
        *(*(*(a1 + 104) + 8) + 24) = result;
        return result;
      }

      v12 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277D03988] + 3);
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_16;
      }

      *buf = 0;
      v14 = "Incorrect parameters for smart message";
      v15 = buf;
    }

    else
    {
      v12 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277D03988] + 3);
      if (!os_log_type_enabled(v12, v13))
      {
LABEL_16:

        return [*(a1 + 32) _sendFailureToConsumer:*(a1 + 40)];
      }

      v18 = 0;
      v14 = "Account does not support smart message";
      v15 = &v18;
    }

    _os_log_impl(&dword_24A0AC000, v12, v13, v14, v15, 2u);
    goto LABEL_16;
  }

  v4 = *(a1 + 40);

  return [v3 _sendFailureToConsumer:v4];
}

- (int)performMailboxRequest:(id)request mailbox:(id)mailbox previousTag:(id)tag clientWinsOnSyncConflict:(BOOL)conflict isUserRequested:(BOOL)requested consumer:(id)consumer
{
  requestCopy = request;
  mailboxCopy = mailbox;
  tagCopy = tag;
  consumerCopy = consumer;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __118__ASConcreteAccountActor_performMailboxRequest_mailbox_previousTag_clientWinsOnSyncConflict_isUserRequested_consumer___block_invoke;
  v23[3] = &unk_278FC7AC8;
  v23[4] = self;
  v18 = consumerCopy;
  requestedCopy = requested;
  v24 = v18;
  v28 = &v31;
  v19 = requestCopy;
  v25 = v19;
  v20 = mailboxCopy;
  v26 = v20;
  v21 = tagCopy;
  v27 = v21;
  conflictCopy = conflict;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v23];
  LODWORD(self) = *(v32 + 6);

  _Block_object_dispose(&v31, 8);
  return self;
}

uint64_t __118__ASConcreteAccountActor_performMailboxRequest_mailbox_previousTag_clientWinsOnSyncConflict_isUserRequested_consumer___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isDisabled])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v2 _sendFailureToConsumer:v3];
  }

  else
  {
    if (*(a1 + 80) == 1)
    {
      v5 = [*(a1 + 32) account];
      [v5 setShouldUseOpportunisticSockets:0];

      v6 = [*(a1 + 32) account];
      [v6 setWasUserInitiated:1];
    }

    result = [*(*(a1 + 32) + 16) performMailboxRequest:*(a1 + 48) mailbox:*(a1 + 56) previousTag:*(a1 + 64) clientWinsOnSyncConflict:*(a1 + 81) consumer:*(a1 + 40)];
    *(*(*(a1 + 72) + 8) + 24) = result;
  }

  return result;
}

- (int)performMailboxRequests:(id)requests mailbox:(id)mailbox previousTag:(id)tag clientWinsOnSyncConflict:(BOOL)conflict isUserRequested:(BOOL)requested consumer:(id)consumer
{
  requestsCopy = requests;
  mailboxCopy = mailbox;
  tagCopy = tag;
  consumerCopy = consumer;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __119__ASConcreteAccountActor_performMailboxRequests_mailbox_previousTag_clientWinsOnSyncConflict_isUserRequested_consumer___block_invoke;
  v23[3] = &unk_278FC7AF0;
  v23[4] = self;
  v18 = consumerCopy;
  v24 = v18;
  v19 = tagCopy;
  v25 = v19;
  v20 = requestsCopy;
  requestedCopy = requested;
  v26 = v20;
  v28 = &v31;
  v21 = mailboxCopy;
  v27 = v21;
  conflictCopy = conflict;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v23];
  LODWORD(self) = *(v32 + 6);

  _Block_object_dispose(&v31, 8);
  return self;
}

uint64_t __119__ASConcreteAccountActor_performMailboxRequests_mailbox_previousTag_clientWinsOnSyncConflict_isUserRequested_consumer___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isDisabled])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *MEMORY[0x277D85DE8];

    return [v2 _sendFailureToConsumer:v3];
  }

  else
  {
    v6 = *(a1 + 48);
    if (!v6 || ![v6 length] || objc_msgSend(*(a1 + 48), "isEqualToString:", @"0"))
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = *(a1 + 56);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        while (2)
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            if ([*(*(&v15 + 1) + 8 * v11) requestType] != 1)
            {

              result = [*(a1 + 32) _sendFailureToConsumer:*(a1 + 40)];
              goto LABEL_21;
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

    if (*(a1 + 80) == 1)
    {
      v12 = [*(a1 + 32) account];
      [v12 setShouldUseOpportunisticSockets:0];

      v13 = [*(a1 + 32) account];
      [v13 setWasUserInitiated:1];
    }

    result = [*(*(a1 + 32) + 16) performMailboxRequests:*(a1 + 56) mailbox:*(a1 + 64) previousTag:*(a1 + 48) clientWinsOnSyncConflict:*(a1 + 81) consumer:{*(a1 + 40), v15}];
    *(*(*(a1 + 72) + 8) + 24) = result;
LABEL_21:
    v14 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (int)performMoveRequests:(id)requests consumer:(id)consumer
{
  requestsCopy = requests;
  consumerCopy = consumer;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__ASConcreteAccountActor_performMoveRequests_consumer___block_invoke;
  v11[3] = &unk_278FC7B18;
  v11[4] = self;
  v8 = consumerCopy;
  v12 = v8;
  v14 = &v15;
  v9 = requestsCopy;
  v13 = v9;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v11];
  LODWORD(self) = *(v16 + 6);

  _Block_object_dispose(&v15, 8);
  return self;
}

uint64_t __55__ASConcreteAccountActor_performMoveRequests_consumer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isDisabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);

    return [v3 _sendFailureToConsumer:v4];
  }

  else
  {
    [v3[2] setShouldUseOpportunisticSockets:0];
    result = [*(*(a1 + 32) + 16) performMoveRequests:*(a1 + 48) consumer:*(a1 + 40)];
    *(*(*(a1 + 56) + 8) + 24) = result;
  }

  return result;
}

- (int)performFetchAttachmentRequest:(id)request consumer:(id)consumer
{
  requestCopy = request;
  consumerCopy = consumer;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__ASConcreteAccountActor_performFetchAttachmentRequest_consumer___block_invoke;
  v11[3] = &unk_278FC7B40;
  v11[4] = self;
  v8 = consumerCopy;
  v12 = v8;
  v9 = requestCopy;
  v13 = v9;
  v14 = &v15;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v11];
  LODWORD(self) = *(v16 + 6);

  _Block_object_dispose(&v15, 8);
  return self;
}

void __65__ASConcreteAccountActor_performFetchAttachmentRequest_consumer___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isDisabled])
  {
    v2 = *(a1 + 40);
    v4 = [*(a1 + 48) attachmentName];
    v3 = [*(a1 + 48) messageID];
    [v2 attachmentFetchCompletedWithStatus:55 forAttachmentNamed:v4 ofMessageWithServerID:v3 dataWasBase64:0];
  }

  else
  {
    [*(*(a1 + 32) + 16) setShouldUseOpportunisticSockets:0];
    *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 16) performFetchAttachmentRequest:*(a1 + 48) consumer:*(a1 + 40)];
  }
}

- (int)performFetchMessageSearchResultRequests:(id)requests consumer:(id)consumer
{
  requestsCopy = requests;
  consumerCopy = consumer;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__ASConcreteAccountActor_performFetchMessageSearchResultRequests_consumer___block_invoke;
  v11[3] = &unk_278FC7B18;
  v11[4] = self;
  v8 = consumerCopy;
  v12 = v8;
  v14 = &v15;
  v9 = requestsCopy;
  v13 = v9;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v11];
  LODWORD(self) = *(v16 + 6);

  _Block_object_dispose(&v15, 8);
  return self;
}

uint64_t __75__ASConcreteAccountActor_performFetchMessageSearchResultRequests_consumer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isDisabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);

    return [v3 _sendFailureToConsumer:v4];
  }

  else
  {
    [v3[2] setShouldUseOpportunisticSockets:0];
    result = [*(*(a1 + 32) + 16) performFetchMessageSearchResultRequests:*(a1 + 48) consumer:*(a1 + 40)];
    *(*(*(a1 + 56) + 8) + 24) = result;
  }

  return result;
}

- (int)performResolveRecipientsRequest:(id)request consumer:(id)consumer
{
  requestCopy = request;
  consumerCopy = consumer;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__ASConcreteAccountActor_performResolveRecipientsRequest_consumer___block_invoke;
  v11[3] = &unk_278FC7B18;
  v11[4] = self;
  v8 = consumerCopy;
  v12 = v8;
  v14 = &v15;
  v9 = requestCopy;
  v13 = v9;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v11];
  LODWORD(self) = *(v16 + 6);

  _Block_object_dispose(&v15, 8);
  return self;
}

uint64_t __67__ASConcreteAccountActor_performResolveRecipientsRequest_consumer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isDisabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);

    return [v3 _sendFailureToConsumer:v4];
  }

  else
  {
    [v3[2] setShouldUseOpportunisticSockets:0];
    result = [*(*(a1 + 32) + 16) performResolveRecipientsRequest:*(a1 + 48) consumer:*(a1 + 40)];
    *(*(*(a1 + 56) + 8) + 24) = result;
  }

  return result;
}

- (void)performFolderChange:(id)change isUserRequested:(BOOL)requested
{
  changeCopy = change;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__ASConcreteAccountActor_performFolderChange_isUserRequested___block_invoke;
  v8[3] = &unk_278FC7960;
  v8[4] = self;
  v9 = changeCopy;
  requestedCopy = requested;
  v7 = changeCopy;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v8];
}

void __62__ASConcreteAccountActor_performFolderChange_isUserRequested___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isDisabled])
  {
    v8 = [*(a1 + 40) consumer];
    v2 = *(a1 + 40);
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASAccountActor" code:55 userInfo:0];
    [v8 folderChange:v2 finishedWithStatus:55 error:v3];
  }

  else
  {
    if (*(a1 + 48) == 1)
    {
      v4 = [*(a1 + 32) account];
      [v4 setShouldUseOpportunisticSockets:0];

      v5 = [*(a1 + 32) account];
      [v5 setWasUserInitiated:1];
    }

    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 16);

    [v7 performFolderChange:v6];
  }
}

- (void)cancelTaskWithID:(int)d
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__ASConcreteAccountActor_cancelTaskWithID___block_invoke;
  v3[3] = &unk_278FC7938;
  v3[4] = self;
  dCopy = d;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v3];
}

uint64_t __43__ASConcreteAccountActor_cancelTaskWithID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 16);
    v4 = *(a1 + 40);

    return [v3 cancelTaskWithID:v4];
  }

  return result;
}

- (void)performSearchQuery:(id)query
{
  queryCopy = query;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__ASConcreteAccountActor_performSearchQuery___block_invoke;
  v6[3] = &unk_278FC78E8;
  v6[4] = self;
  v7 = queryCopy;
  v5 = queryCopy;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v6];
}

void __45__ASConcreteAccountActor_performSearchQuery___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isDisabled])
  {
    v6 = [*(a1 + 40) consumer];
    v2 = *(a1 + 40);
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASAccountActor" code:55 userInfo:0];
    [v6 searchQuery:v2 finishedWithError:v3];
  }

  else
  {
    [*(*(a1 + 32) + 16) setShouldUseOpportunisticSockets:0];
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 16);

    [v5 performSearchQuery:v4];
  }
}

- (void)cancelSearchQuery:(id)query
{
  queryCopy = query;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__ASConcreteAccountActor_cancelSearchQuery___block_invoke;
  v6[3] = &unk_278FC78E8;
  v6[4] = self;
  v7 = queryCopy;
  v5 = queryCopy;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v6];
}

uint64_t __44__ASConcreteAccountActor_cancelSearchQuery___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 16);

    return [v4 cancelSearchQuery:v3];
  }

  return result;
}

- (void)cancelAllSearchQueries
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__ASConcreteAccountActor_cancelAllSearchQueries__block_invoke;
  v2[3] = &unk_278FC7988;
  v2[4] = self;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v2];
}

uint64_t __48__ASConcreteAccountActor_cancelAllSearchQueries__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 16);

    return [v3 cancelAllSearchQueries];
  }

  return result;
}

- (BOOL)searchQueriesRunning
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__ASConcreteAccountActor_searchQueriesRunning__block_invoke;
  v4[3] = &unk_278FC7898;
  v4[4] = self;
  v4[5] = &v5;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __46__ASConcreteAccountActor_searchQueriesRunning__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    result = [*(*(a1 + 32) + 16) searchQueriesRunning];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (id)inboxFolder
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__ASConcreteAccountActor_inboxFolder__block_invoke;
  v4[3] = &unk_278FC7898;
  v4[4] = self;
  v4[5] = &v5;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __37__ASConcreteAccountActor_inboxFolder__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = [*(*(a1 + 32) + 16) inboxFolder];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)sentItemsFolder
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__ASConcreteAccountActor_sentItemsFolder__block_invoke;
  v4[3] = &unk_278FC7898;
  v4[4] = self;
  v4[5] = &v5;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __41__ASConcreteAccountActor_sentItemsFolder__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = [*(*(a1 + 32) + 16) sentItemsFolder];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)deletedItemsFolder
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__ASConcreteAccountActor_deletedItemsFolder__block_invoke;
  v4[3] = &unk_278FC7898;
  v4[4] = self;
  v4[5] = &v5;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __44__ASConcreteAccountActor_deletedItemsFolder__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = [*(*(a1 + 32) + 16) deletedItemsFolder];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)draftsFolder
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__ASConcreteAccountActor_draftsFolder__block_invoke;
  v4[3] = &unk_278FC7898;
  v4[4] = self;
  v4[5] = &v5;
  [(ASConcreteAccountActor *)self _performSynchronousSerialOnActorQueue:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __38__ASConcreteAccountActor_draftsFolder__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = [*(*(a1 + 32) + 16) draftsFolder];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (ASConcreteAccountActor)initWithDAAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = ASConcreteAccountActor;
  v7 = [(ASConcreteAccountActor *)&v9 init];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASConcreteAccountActor *)a2 initWithDAAccount:v7, accountCopy];
    }

    objc_storeStrong(&v7->_account, account);
    [(ASConcreteAccountActor *)v7 startup];
  }

  return v7;
}

- (void)startup
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __33__ASConcreteAccountActor_startup__block_invoke;
  v2[3] = &unk_278FC7988;
  v2[4] = self;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v2];
}

void __33__ASConcreteAccountActor_startup__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isDisabled] & 1) == 0)
  {
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 addObserver:*(a1 + 32) selector:sel__daemonDiedNotification_ name:*MEMORY[0x277D038F8] object:0];

    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:*(a1 + 32) selector:sel__folderUpdatedNotification_ name:*MEMORY[0x277D038F0] object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:*(a1 + 32) selector:sel__newASPolicyKeyNotification_ name:*MEMORY[0x277D038B8] object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), _folderHierarchyChanged, @"ASAccountFolderHierarchyExternallyChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    v7 = *(a1 + 32);

    CFNotificationCenterAddObserver(v6, v7, _foldersThatExternalClientsCareAboutChanged, @"ASAccountFoldersThatExternalClientsCareAboutExternallyChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ASConcreteAccountActor_setAccount___block_invoke;
  v7[3] = &unk_278FC7B68;
  v8 = accountCopy;
  selfCopy = self;
  v10 = a2;
  v6 = accountCopy;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v7];
}

void __37__ASConcreteAccountActor_setAccount___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  v2 = (a1 + 40);
  if (*(a1 + 32) != *(*(a1 + 40) + 16))
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *v2;
      v7 = *(*v2 + 16);
      v8 = *v1;
      v12 = 134218498;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_24A0AC000, v4, v5, "ASAccountActor %p setAccount.  Old Account: %@, New Account: %@", &v12, 0x20u);
    }

    v9 = *v1;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __37__ASConcreteAccountActor_setAccount___block_invoke_cold_1(a1, v2, v1);
    }

    v10 = [*(*v2 + 16) existingTaskManager];
    [v10 shutdown];

    objc_storeStrong((*v2 + 16), *v1);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)disable
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __33__ASConcreteAccountActor_disable__block_invoke;
  v2[3] = &unk_278FC7988;
  v2[4] = self;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v2];
}

void __33__ASConcreteAccountActor_disable__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isDisabled])
  {
    v2 = DALoggingwithCategory();
    v3 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v2, v3))
    {
      *buf = 0;
      _os_log_impl(&dword_24A0AC000, v2, v3, "shutdown called on Zombie ASActor", buf, 2u);
    }
  }

  else
  {
    v9.receiver = *(a1 + 32);
    v9.super_class = ASConcreteAccountActor;
    objc_msgSendSuper2(&v9, sel_disable);
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:*(a1 + 32) name:*MEMORY[0x277D038B8] object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:*(a1 + 32) name:*MEMORY[0x277D038F0] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:*(a1 + 32) name:*MEMORY[0x277D038F8] object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, *(a1 + 32), @"ASAccountFolderHierarchyExternallyChangedNotification", 0);
    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v8, *(a1 + 32), @"ASAccountFoldersThatExternalClientsCareAboutExternallyChangedNotification", 0);
    v2 = [*(*(a1 + 32) + 16) existingTaskManager];
    [v2 shutdown];
  }
}

- (void)_daemonDiedNotification:(id)notification
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__ASConcreteAccountActor__daemonDiedNotification___block_invoke;
  v3[3] = &unk_278FC7988;
  v3[4] = self;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v3];
}

uint64_t __50__ASConcreteAccountActor__daemonDiedNotification___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 16);

    return [v3 _daemonDied];
  }

  return result;
}

- (void)_folderUpdatedNotification:(id)notification
{
  notificationCopy = notification;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__ASConcreteAccountActor__folderUpdatedNotification___block_invoke;
  v6[3] = &unk_278FC78E8;
  v6[4] = self;
  v7 = notificationCopy;
  v5 = notificationCopy;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v6];
}

void __53__ASConcreteAccountActor__folderUpdatedNotification___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isDisabled] & 1) == 0)
  {
    v2 = [*(a1 + 40) userInfo];
    v7 = [v2 objectForKeyedSubscript:*MEMORY[0x277D038C8]];

    v3 = [*(*(a1 + 32) + 16) accountID];
    v4 = [v7 isEqualToString:v3];

    if (v4)
    {
      v5 = [*(a1 + 40) userInfo];
      v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D038D0]];

      [*(*(a1 + 32) + 16) _foldersUpdated:v6];
    }
  }
}

- (void)_newASPolicyKeyNotification:(id)notification
{
  notificationCopy = notification;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__ASConcreteAccountActor__newASPolicyKeyNotification___block_invoke;
  v6[3] = &unk_278FC78E8;
  v6[4] = self;
  v7 = notificationCopy;
  v5 = notificationCopy;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v6];
}

void __54__ASConcreteAccountActor__newASPolicyKeyNotification___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isDisabled] & 1) == 0)
  {
    v2 = [*(a1 + 40) object];
    v3 = [*(*(a1 + 32) + 16) accountID];
    v4 = [v2 isEqualToString:v3];

    if (v4)
    {
      v5 = [*(a1 + 40) userInfo];
      v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277D038A0]];

      if (v9)
      {
        v6 = [*(*(a1 + 32) + 16) policyManager];
        [v6 policyFailedToUpdate];
      }

      else
      {
        v7 = [*(a1 + 40) userInfo];
        v6 = [v7 objectForKeyedSubscript:*MEMORY[0x277D038B0]];

        v8 = [*(*(a1 + 32) + 16) policyManager];
        [v8 policyKeyChanged:v6];
      }
    }
  }
}

- (void)_folderHierarchyChanged
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __49__ASConcreteAccountActor__folderHierarchyChanged__block_invoke;
  v2[3] = &unk_278FC7988;
  v2[4] = self;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v2];
}

uint64_t __49__ASConcreteAccountActor__folderHierarchyChanged__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 16);

    return [v3 _folderHierarchyChanged];
  }

  return result;
}

- (void)_foldersThatExternalClientsCareAboutChanged
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __69__ASConcreteAccountActor__foldersThatExternalClientsCareAboutChanged__block_invoke;
  v2[3] = &unk_278FC7988;
  v2[4] = self;
  [(ASConcreteAccountActor *)self _performAsynchronousSerialOnActorQueue:v2];
}

uint64_t __69__ASConcreteAccountActor__foldersThatExternalClientsCareAboutChanged__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisabled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 16);

    return [v3 _foldersThatExternalClientsCareAboutChanged];
  }

  return result;
}

- (void)initWithDAAccount:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"ASConcreteAccountActor.m" lineNumber:745 description:{@"account %@ must be of the correct class.", a3}];
}

void __37__ASConcreteAccountActor_setAccount___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 48) object:*a2 file:@"ASConcreteAccountActor.m" lineNumber:792 description:{@"account %@ must be of the correct class.", *a3}];
}

@end