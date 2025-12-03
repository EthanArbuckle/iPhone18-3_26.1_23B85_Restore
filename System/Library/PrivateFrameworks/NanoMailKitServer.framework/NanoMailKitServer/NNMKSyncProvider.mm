@interface NNMKSyncProvider
+ (BOOL)prepareForSystemAppDeletion:(id *)deletion;
- (BOOL)_verifyDatabaseOkForFullSyncVersion:(unint64_t)version;
- (BOOL)_verifyDatabaseOkForFullSyncVersion:(unint64_t)version mailbox:(id)mailbox;
- (BOOL)containsSyncedMailbox:(id)mailbox;
- (BOOL)isMessageOkForSyncedMailboxes:(id)mailboxes;
- (BOOL)isPaired;
- (BOOL)organizeByThread;
- (BOOL)setupPairedDeviceRegistry;
- (BOOL)syncStateManagerShouldAddFavoriteSubsectionForMailboxId:(id)id;
- (NNMKMailboxSelection)mailboxSelection;
- (NNMKPairedDeviceInfo)pairedDeviceInfo;
- (NNMKSyncProvider)initWithDelegate:(id)delegate;
- (NNMKSyncProvider)initWithDelegate:(id)delegate syncStateManager:(id)manager directoryProvider:(id)provider;
- (NNMKSyncProviderDelegate)delegate;
- (id)_bbSubsectionIdsForMessage:(id)message;
- (id)_createDefaultSyncStateManager;
- (id)_handleFetchRequest:(id)request shouldResumeSync:(BOOL *)sync;
- (id)_initialSyncForMailbox:(id)mailbox messages:(id)messages;
- (id)_legacy_sendFirstMessages:(id)messages syncedMailbox:(id)mailbox;
- (id)_messageProtobufForMessage:(id)message;
- (id)_sendFirstMessages:(id)messages mailboxes:(id)mailboxes;
- (id)_watchAccounts;
- (id)bulletinFlagsForMessageStatus:(unint64_t)status dateReceived:(id)received messageWillBeAddedToSyncProvider:(BOOL)provider mailboxId:(id)id;
- (id)requestWatchAccounts;
- (id)syncedMailboxes;
- (id)watchAccounts;
- (void)_addAttachmentData:(id)data forMessageId:(id)id contentId:(id)contentId mailbox:(id)mailbox;
- (void)_addMessageContent:(id)content forMessage:(id)message mailbox:(id)mailbox;
- (void)_addMessages:(id)messages mailbox:(id)mailbox;
- (void)_checkBatchFetchedMessages;
- (void)_checkConnectivityBasedSuspensionTimer:(BOOL)timer;
- (void)_deleteMessagesWithIds:(id)ids mailbox:(id)mailbox;
- (void)_fastForwardToFullSyncVersion:(unint64_t)version;
- (void)_handleDidFailSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code;
- (void)_handleDidPairWithNewDevice;
- (void)_handleDidUnpair;
- (void)_handleFetchRequestFromWatch:(id)watch;
- (void)_handleHaltSyncForMailbox:(id)mailbox;
- (void)_handleMailboxesDesync;
- (void)_markConversationIdForNotify:(id)notify messages:(id)messages mailbox:(id)mailbox;
- (void)_notifyDelegateThatMessagesStatusWereUpdated:(id)updated;
- (void)_replyWithMessagesToResend:(id)resend includesProtectedMessages:(BOOL)messages mailbox:(id)mailbox;
- (void)_replyWithMoreMessages:(id)messages forConversationWithId:(id)id mailbox:(id)mailbox;
- (void)_replyWithMoreMessages:(id)messages forDateReceivedBefore:(id)before mailbox:(id)mailbox messagesForSpecialMailbox:(unint64_t)specialMailbox;
- (void)_reportMessageContentDownloadFailureForMessageId:(id)id mailbox:(id)mailbox;
- (void)_requestDelegateForAccounts;
- (void)_requestDelegateForFetchForMailboxes:(id)mailboxes;
- (void)_requestDelegateForFirstMessagesForMailboxes:(id)mailboxes;
- (void)_requestDelegateForMessagesToSendAsFetchResponseForMessageIds:(id)ids;
- (void)_requestDelegateForMoreMessagesBeforeDateReceived:(id)received forConversationWithId:(id)id mailbox:(id)mailbox;
- (void)_requestDelegateForMoreMessagesWithMailbox:(id)mailbox beforeDate:(id)date messagesForspecialMailboxFilterType:(unint64_t)type;
- (void)_requestDelegateForResendingAccountWithId:(id)id;
- (void)_requestDelegateForResendingMessagesWithIds:(id)ids;
- (void)_requestDelegateForVIPList:(id)list;
- (void)_requestDelegateToSendComposedMessage:(id)message;
- (void)_requestDelegateToStopDownloadingAllMessageElements;
- (void)_requestDelegateToStopDownloadingMessageElementsForMessageWithId:(id)id;
- (void)_sendStandaloneAccountIdentity:(id)identity resendInterval:(unint64_t)interval;
- (void)_sendUpdatedMailboxSelection:(unint64_t)selection resendInterval:(unint64_t)interval;
- (void)_sendWatchAccountStatusRequest;
- (void)_shouldHandleForwardForNotification:(id)notification withCompletion:(id)completion;
- (void)_stopTaks;
- (void)_storeScreenRelatedValues;
- (void)_triggerFullSyncForMailbox:(id)mailbox;
- (void)_triggerFullSyncForMailboxes:(id)mailboxes;
- (void)_triggerInitialSyncToRecoverFromSyncVersionMismatch;
- (void)_triggerInitialSyncTrackingProgress:(BOOL)progress;
- (void)_updateMailboxSelection:(id)selection notifyClient:(BOOL)client;
- (void)_updateMessagesStatus:(id)status mailbox:(id)mailbox;
- (void)_verifyPairingForcingSync:(BOOL)sync;
- (void)accountsSyncServiceServer:(id)server didChangeAccountSourceType:(id)type;
- (void)accountsSyncServiceServer:(id)server didReceivedAccountAuthenticationStatus:(id)status requestTime:(double)time;
- (void)accountsSyncServiceServer:(id)server didSendProtobufSuccessfullyWithIDSIdentifier:(id)identifier;
- (void)addAttachmentData:(id)data forMessageId:(id)id contentId:(id)contentId loadedProtected:(BOOL)protected;
- (void)addImageAttachment:(id)attachment forMessageId:(id)id contentId:(id)contentId loadedProtected:(BOOL)protected;
- (void)addMessageContent:(id)content forMessage:(id)message loadedProtected:(BOOL)protected;
- (void)addMessages:(id)messages;
- (void)addUpdateOrDeleteAccounts:(id)accounts;
- (void)batchRequestHandlerDidTimeoutFetchRequest:(id)request;
- (void)dealloc;
- (void)deleteMessagesWithIds:(id)ids;
- (void)fetchesSyncServiceServer:(id)server didNotifyAboutWebKitStatus:(id)status;
- (void)fetchesSyncServiceServer:(id)server didNotifyInitialSyncFinished:(id)finished;
- (void)fetchesSyncServiceServer:(id)server didRequestContent:(id)content;
- (void)fetchesSyncServiceServer:(id)server didRequestFetch:(id)fetch;
- (void)fetchesSyncServiceServer:(id)server didRequestFetchInBatch:(id)batch;
- (void)fetchesSyncServiceServer:(id)server didRequestFullSync:(id)sync;
- (void)fetchesSyncServiceServer:(id)server didRequestHaltSync:(id)sync;
- (void)fetchesSyncServiceServer:(id)server didRequestMoreMessages:(id)messages;
- (void)fetchesSyncServiceServer:(id)server didRequestMoreMessagesForConversation:(id)conversation;
- (void)fetchesSyncServiceServer:(id)server didRequestMoreMessagesInBatch:(id)batch;
- (void)fetchesSyncServiceServer:(id)server didSendProtobufSuccessfullyWithIDSIdentifier:(id)identifier;
- (void)markConversationIdForNotNotify:(id)notify;
- (void)markConversationIdForNotify:(id)notify messages:(id)messages includesProtectedMessages:(BOOL)protectedMessages;
- (void)messageContentSyncServiceServer:(id)server didSendProtobufSuccessfullyWithIDSIdentifier:(id)identifier;
- (void)messagesSyncServiceServer:(id)server didDeleteMessages:(id)messages;
- (void)messagesSyncServiceServer:(id)server didMoveMessages:(id)messages;
- (void)messagesSyncServiceServer:(id)server didRecieveAttachmentsAtURL:(id)l composedMessageId:(id)id;
- (void)messagesSyncServiceServer:(id)server didRequestCompactMessages:(id)messages;
- (void)messagesSyncServiceServer:(id)server didRequestSendMessage:(id)message;
- (void)messagesSyncServiceServer:(id)server didSendProtobufSuccessfullyWithIDSIdentifier:(id)identifier;
- (void)messagesSyncServiceServer:(id)server didUpdateMailboxSelection:(id)selection;
- (void)messagesSyncServiceServer:(id)server didUpdateMessagesStatus:(id)status;
- (void)messagesSyncServiceServer:(id)server didWarnMessagesFilteredOut:(id)out;
- (void)messagesSyncServiceServerConnectivityChanged:(id)changed;
- (void)messagesSyncServiceServerSpaceBecameAvailable:(id)available;
- (void)notifyFetchCompleted;
- (void)notifyFetchCompletedForMailboxId:(id)id error:(id)error;
- (void)replyWithAccountToResend:(id)resend;
- (void)replyWithAccounts:(id)accounts;
- (void)replyWithFirstMessages:(id)messages includesProtectedMessages:(BOOL)protectedMessages mailboxes:(id)mailboxes organizedByThread:(BOOL)thread;
- (void)replyWithMessageSendingProgress:(int64_t)progress forComposedMessageId:(id)id;
- (void)replyWithMessagesToResend:(id)resend includesProtectedMessages:(BOOL)messages;
- (void)replyWithMessagesToSendAsFetchResponse:(id)response includesProtectedMessages:(BOOL)messages;
- (void)replyWithMoreMessages:(id)messages context:(id)context;
- (void)reportMessageContentDownloadFailureForMessageId:(id)id;
- (void)reportWillDownloadFirstMessages;
- (void)resendObjectsForIDSIdentifier:(id)identifier;
- (void)resendScheduler:(id)scheduler didRequestRetryFullSyncForMailboxes:(id)mailboxes;
- (void)resendScheduler:(id)scheduler didRequestRetrySendingAccountIdentifier:(id)identifier resendInterval:(unint64_t)interval;
- (void)resendScheduler:(id)scheduler didRequestRetrySendingComposeMessageProgress:(int64_t)progress messageId:(id)id resendInterval:(unint64_t)interval;
- (void)resendScheduler:(id)scheduler didRequestRetrySendingDeletionForAccountWithId:(id)id resendInterval:(unint64_t)interval;
- (void)resendScheduler:(id)scheduler didRequestRetrySendingMailboxSelectionWithResendInterval:(unint64_t)interval;
- (void)resendScheduler:(id)scheduler didRequestRetrySendingMessageDeletions:(id)deletions deletionsMessageIds:(id)ids resendInterval:(unint64_t)interval;
- (void)resendScheduler:(id)scheduler didRequestRetrySendingVIPListWithResendInterval:(unint64_t)interval;
- (void)setOrganizeByThread:(BOOL)thread;
- (void)setupPairedDeviceRegistry;
- (void)syncStandaloneAccountIdentity:(id)identity;
- (void)syncStateManager:(id)manager handleForwardForNotification:(id)notification completion:(id)completion;
- (void)syncStateManagerDidBeginSyncSession:(id)session syncSessionType:(id)type syncSessionIdentifier:(id)identifier;
- (void)syncStateManagerDidChangePairedDevice:(id)device;
- (void)syncStateManagerDidInvalidateSyncSession:(id)session syncSessionIdentifier:(id)identifier;
- (void)syncStateManagerDidUnpair:(id)unpair;
- (void)tearDown;
- (void)trackerDidFinishSendingInitialSyncContentToPairedDevice:(id)device;
- (void)updateConversationId:(id)id mute:(BOOL)mute;
- (void)updateMailboxSelection:(id)selection;
- (void)updateMessagesStatus:(id)status;
- (void)updateVIPSenderList:(id)list requestContext:(id)context;
@end

@implementation NNMKSyncProvider

+ (BOOL)prepareForSystemAppDeletion:(id *)deletion
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  pairingStorePath = [mEMORY[0x277D2BCF8] pairingStorePath];

  if (pairingStorePath)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:pairingStorePath isDirectory:1];
    v7 = [v6 URLByAppendingPathComponent:@"NanoMail/registry.sqlite" isDirectory:0];
    uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [defaultManager removeItemAtURL:uRLByDeletingLastPathComponent error:deletion];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (NNMKSyncProvider)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = objc_alloc_init(NNMKDirectoryProvider);
  v6 = [(NNMKSyncProvider *)self initWithDelegate:delegateCopy syncStateManager:0 directoryProvider:v5];

  return v6;
}

- (NNMKSyncProvider)initWithDelegate:(id)delegate syncStateManager:(id)manager directoryProvider:(id)provider
{
  delegateCopy = delegate;
  managerCopy = manager;
  providerCopy = provider;
  v11 = dispatch_queue_create("com.apple.nanomail.providerQueue", 0);
  v19.receiver = self;
  v19.super_class = NNMKSyncProvider;
  v12 = [(NNMKSyncEndpoint *)&v19 initWithQueue:v11];
  if (v12)
  {
    nnmk_setupLoggingSubsystems();
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v12->_providerQueue, v11);
    providerQueue = v12->_providerQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__NNMKSyncProvider_initWithDelegate_syncStateManager_directoryProvider___block_invoke;
    block[3] = &unk_279936098;
    v16 = v12;
    v17 = providerCopy;
    v18 = managerCopy;
    dispatch_sync(providerQueue, block);
  }

  return v12;
}

void __72__NNMKSyncProvider_initWithDelegate_syncStateManager_directoryProvider___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(NNMKSyncSessionController);
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  *(v3 + 144) = v2;

  objc_storeStrong((*(a1 + 32) + 152), *(a1 + 40));
  v5 = [*(*(a1 + 32) + 152) pairedDeviceRegistryPath];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v6 fileExistsAtPath:v5 isDirectory:0];

    if (v7)
    {
      v8 = [[NNMKDeviceSyncRegistry alloc] initWithPath:v5];
      v9 = *(a1 + 32);
      v10 = *(v9 + 72);
      *(v9 + 72) = v8;
    }
  }

  v11 = objc_alloc_init(NNMKSyncController);
  v12 = *(a1 + 32);
  v13 = *(v12 + 136);
  *(v12 + 136) = v11;

  [*(*(a1 + 32) + 136) setDelegate:?];
  v14 = *(a1 + 48);
  v15 = v14;
  if (!v14)
  {
    v15 = [*(a1 + 32) _createDefaultSyncStateManager];
  }

  objc_storeStrong((*(a1 + 32) + 64), v15);
  if (!v14)
  {
  }

  [*(*(a1 + 32) + 64) setDelegate:?];
  v16 = objc_alloc_init(NNMKSyncPersistenceHandler);
  v17 = *(a1 + 32);
  v18 = *(v17 + 80);
  *(v17 + 80) = v16;

  [*(*(a1 + 32) + 80) setDelegate:?];
  [*(*(a1 + 32) + 80) setSyncController:*(*(a1 + 32) + 136)];
  [*(*(a1 + 32) + 80) setSyncStateManager:*(*(a1 + 32) + 64)];
  [*(*(a1 + 32) + 80) setSessionController:*(*(a1 + 32) + 144)];
  v19 = objc_alloc_init(NNMKInitialSyncProgressTracker);
  v20 = *(a1 + 32);
  v21 = *(v20 + 168);
  *(v20 + 168) = v19;

  [*(*(a1 + 32) + 168) setExecutionQueue:*(*(a1 + 32) + 56)];
  [*(*(a1 + 32) + 168) setDelegate:?];
  [*(*(a1 + 32) + 168) setSyncStateManager:*(*(a1 + 32) + 64)];
  v22 = objc_alloc_init(NNMKResendScheduler);
  v23 = *(a1 + 32);
  v24 = *(v23 + 160);
  *(v23 + 160) = v22;

  [*(*(a1 + 32) + 160) setDelegate:?];
  [*(*(a1 + 32) + 160) setSyncController:*(*(a1 + 32) + 136)];
  v25 = objc_alloc_init(NNMKBatchRequestHandler);
  v26 = *(a1 + 32);
  v27 = *(v26 + 176);
  *(v26 + 176) = v25;

  [*(*(a1 + 32) + 176) setDelegate:?];
  [*(*(a1 + 32) + 176) setResendScheduler:*(*(a1 + 32) + 160)];
  [*(*(a1 + 32) + 176) setSyncController:*(*(a1 + 32) + 136)];
  [*(*(a1 + 32) + 176) setExecutionQueue:*(*(a1 + 32) + 56)];
  [*(*(a1 + 32) + 80) setBatchRequestHandler:*(*(a1 + 32) + 176)];
  v28 = [[NNMKMessagesSyncServiceServer alloc] initWithQueue:*(*(a1 + 32) + 56)];
  v29 = *(a1 + 32);
  v30 = *(v29 + 88);
  *(v29 + 88) = v28;

  [*(*(a1 + 32) + 88) setDelegate:?];
  v31 = [[NNMKMessageContentSyncServiceServer alloc] initWithQueue:*(*(a1 + 32) + 56)];
  v32 = *(a1 + 32);
  v33 = *(v32 + 96);
  *(v32 + 96) = v31;

  [*(*(a1 + 32) + 96) setDelegate:?];
  v34 = [[NNMKAccountsSyncServiceServer alloc] initWithQueue:*(*(a1 + 32) + 56)];
  v35 = *(a1 + 32);
  v36 = *(v35 + 104);
  *(v35 + 104) = v34;

  [*(*(a1 + 32) + 104) setDelegate:?];
  v37 = [[NNMKFetchesSyncServiceServer alloc] initWithQueue:*(*(a1 + 32) + 56)];
  v38 = *(a1 + 32);
  v39 = *(v38 + 112);
  *(v38 + 112) = v37;

  [*(*(a1 + 32) + 112) setDelegate:?];
  v40 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B19F000, v40, OS_LOG_TYPE_DEFAULT, "SyncProvider Created...", buf, 2u);
  }

  [*(*(a1 + 32) + 72) resetSyncRequestedFromMailboxes];
  if ([*(*(a1 + 32) + 72) recreatedFromScratch])
  {
    v41 = [*(a1 + 32) providerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__NNMKSyncProvider_initWithDelegate_syncStateManager_directoryProvider___block_invoke_16;
    block[3] = &unk_279935CB0;
    v45 = *(a1 + 32);
    dispatch_async(v41, block);
  }

  [*(a1 + 32) _checkConnectivityBasedSuspensionTimer:{objc_msgSend(*(a1 + 32), "_isConnectedToWatch")}];
  v42 = [*(a1 + 32) sessionController];
  [v42 setDeviceInStandalone:{objc_msgSend(*(a1 + 32), "_isConnectedToWatch") ^ 1}];

  [*(a1 + 32) _verifyPairingForcingSync:0];
  v43 = [*(a1 + 32) resendScheduler];
  [v43 forceRetryingAllPendingIDSMessages];
}

uint64_t __72__NNMKSyncProvider_initWithDelegate_syncStateManager_directoryProvider___block_invoke_16(uint64_t a1)
{
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "Triggering #initial-sync because database was created from scratch.", v4, 2u);
  }

  return [*(a1 + 32) _triggerInitialSync];
}

- (void)dealloc
{
  [(NNMKBatchRequestHandler *)self->_batchRequestHandler cancelFetchTimeout];
  pairedDeviceRegistry = self->_pairedDeviceRegistry;
  self->_pairedDeviceRegistry = 0;

  syncStateManager = self->_syncStateManager;
  self->_syncStateManager = 0;

  objc_storeWeak(&self->_delegate, 0);
  v5.receiver = self;
  v5.super_class = NNMKSyncProvider;
  [(NNMKSyncEndpoint *)&v5 dealloc];
}

- (void)tearDown
{
  pairedDeviceRegistry = self->_pairedDeviceRegistry;
  self->_pairedDeviceRegistry = 0;
  MEMORY[0x2821F96F8]();
}

- (void)_triggerInitialSyncToRecoverFromSyncVersionMismatch
{
  if (self->_triggeredInitialSyncToRecoverFromSyncVersionMismatch)
  {
    v3 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_25B19F000, v3, OS_LOG_TYPE_DEFAULT, "Ignoring #initial-sync request. Already one in progress.", v4, 2u);
    }
  }

  else
  {
    self->_triggeredInitialSyncToRecoverFromSyncVersionMismatch = 1;

    [(NNMKSyncProvider *)self _triggerInitialSync];
  }
}

- (void)_triggerInitialSyncTrackingProgress:(BOOL)progress
{
  progressCopy = progress;
  v18 = *MEMORY[0x277D85DE8];
  v5 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    pairedDeviceRegistry = self->_pairedDeviceRegistry;
    v7 = v5;
    v16 = 134217984;
    fullSyncVersion = [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry fullSyncVersion];
    _os_log_impl(&dword_25B19F000, v7, OS_LOG_TYPE_DEFAULT, "#initial-sync triggered. (Previous #sync-version: %lu)", &v16, 0xCu);
  }

  if (progressCopy)
  {
    initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
    [initialSyncProgressTracker startTrackingInitialSync];
  }

  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry cleanUpForInitialSync];
  v9 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_pairedDeviceRegistry;
    v11 = v9;
    fullSyncVersion2 = [(NNMKDeviceSyncRegistry *)v10 fullSyncVersion];
    v16 = 134217984;
    fullSyncVersion = fullSyncVersion2;
    _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "Incrementing #sync-version. %lu", &v16, 0xCu);
  }

  v13 = objc_alloc_init(NNMKProtoPrepareForFullSyncRequest);
  [(NNMKProtoPrepareForFullSyncRequest *)v13 setFullSyncVersion:[(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion]];
  [(NNMKFetchesSyncServiceServer *)self->_fetchesSyncService requestPrepareForFullSync:v13];
  [(NNMKSyncProvider *)self _requestDelegateForAccounts];
  v14 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_25B19F000, v14, OS_LOG_TYPE_DEFAULT, "Requesting VIP List due to #initial-sync", &v16, 2u);
  }

  [(NNMKSyncProvider *)self _requestDelegateForVIPList:0];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)replyWithAccounts:(id)accounts
{
  accountsCopy = accounts;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__NNMKSyncProvider_replyWithAccounts___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = accountsCopy;
  v6 = accountsCopy;
  dispatch_async(providerQueue, v7);
}

void __38__NNMKSyncProvider_replyWithAccounts___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 72))
  {
    v2 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = v2;
      v16 = 134217984;
      v17 = [v3 count];
      _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "Received accounts from MobileMail to sync to watch. %lu accounts.", &v16, 0xCu);
    }

    *(*(a1 + 32) + 42) = 0;
    [*(*(a1 + 32) + 72) deleteAllMailboxes];
    [*(*(a1 + 32) + 72) beginUpdates];
    v5 = [*(a1 + 32) persistenceHandler];
    v6 = [v5 persistAccounts:*(a1 + 40)];

    v7 = [*(a1 + 40) nnmk_map:&__block_literal_global_9];
    v8 = [*(*(a1 + 32) + 104) sendInitialAccountsSync:v6];
    v9 = [*(a1 + 32) resendScheduler];
    [v9 registerIDSIdentifier:v8 objectIds:v7 type:@"Account" resendInterval:0];

    [*(*(a1 + 32) + 72) endUpdates];
    v10 = [*(a1 + 32) initialSyncProgressTracker];
    [v10 updateProgressWithAccountsSent];

    [*(a1 + 32) _sendUpdatedMailboxSelection:{objc_msgSend(*(*(a1 + 32) + 72), "fullSyncVersion")}];
    v11 = [*(a1 + 32) syncController];
    v12 = [v11 mailboxesToSync];

    if ([v12 count])
    {
      v13 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_25B19F000, v13, OS_LOG_TYPE_DEFAULT, "Triggering #full-sync for mailboxes due to initial account sync.", &v16, 2u);
      }

      [*(a1 + 32) _triggerFullSyncForMailboxes:v12];
    }

    else
    {
      v14 = [*(a1 + 32) initialSyncProgressTracker];
      [v14 finishedSendingInitialSyncContentToPairedDevice];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_triggerFullSyncForMailbox:(id)mailbox
{
  v8[1] = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  v5 = mailboxCopy;
  if (mailboxCopy)
  {
    v8[0] = mailboxCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [(NNMKSyncProvider *)self _triggerFullSyncForMailboxes:v6];
  }

  else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKSyncProvider _triggerFullSyncForMailbox:];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_triggerFullSyncForMailboxes:(id)mailboxes
{
  v38 = *MEMORY[0x277D85DE8];
  mailboxesCopy = mailboxes;
  if ([mailboxesCopy count])
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(mailboxesCopy, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = mailboxesCopy;
    v6 = mailboxesCopy;
    v28 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (!v28)
    {
      goto LABEL_16;
    }

    v7 = *v30;
    selfCopy = self;
    while (1)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        pairedDeviceRegistry = self->_pairedDeviceRegistry;
        mailboxId = [v9 mailboxId];
        v12 = [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry mailboxWithId:mailboxId];

        LOBYTE(mailboxId) = [v12 syncRequested];
        v13 = qword_28144D620;
        v14 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
        if (mailboxId)
        {
          if (!v14)
          {
            goto LABEL_14;
          }

          resendScheduler = v13;
          mailboxId2 = [v9 mailboxId];
          *buf = 138543362;
          v34 = mailboxId2;
          _os_log_impl(&dword_25B19F000, resendScheduler, OS_LOG_TYPE_DEFAULT, "It will not request #full-sync for mailbox, because it has already been requested before. %{public}@", buf, 0xCu);
        }

        else
        {
          if (v14)
          {
            v17 = self->_pairedDeviceRegistry;
            v18 = v13;
            fullSyncVersion = [(NNMKDeviceSyncRegistry *)v17 fullSyncVersion];
            [v9 mailboxId];
            v20 = v7;
            v21 = v6;
            v23 = v22 = v5;
            *buf = 134218242;
            v34 = fullSyncVersion;
            v35 = 2114;
            v36 = v23;
            _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "#full-sync triggered for mailbox. Requesting messages from MobileMail (#sync-version: %lu, mailbox:%{public}@).", buf, 0x16u);

            v5 = v22;
            v6 = v21;
            v7 = v20;
            self = selfCopy;
          }

          [v5 addObject:v9];
          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry cleanUpForFullSyncWithMailbox:v9];
          [v9 setSyncRequested:1];
          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry updateSyncRequestedForMailbox:v9];
          resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
          mailboxId2 = [v9 mailboxId];
          [resendScheduler deletePendingIDSMessagesForMailboxId:mailboxId2];
        }

LABEL_14:
      }

      v28 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (!v28)
      {
LABEL_16:

        if ([v5 count])
        {
          resendScheduler2 = [(NNMKSyncProvider *)self resendScheduler];
          [resendScheduler2 resetInitialSyncResendInterval];

          [(NNMKSyncProvider *)self _requestDelegateForFirstMessagesForMailboxes:v5];
        }

        mailboxesCopy = v26;
        goto LABEL_21;
      }
    }
  }

  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKSyncProvider _triggerFullSyncForMailboxes:];
  }

LABEL_21:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)replyWithFirstMessages:(id)messages includesProtectedMessages:(BOOL)protectedMessages mailboxes:(id)mailboxes organizedByThread:(BOOL)thread
{
  messagesCopy = messages;
  mailboxesCopy = mailboxes;
  providerQueue = self->_providerQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__NNMKSyncProvider_replyWithFirstMessages_includesProtectedMessages_mailboxes_organizedByThread___block_invoke;
  v14[3] = &unk_279936690;
  v14[4] = self;
  v15 = messagesCopy;
  threadCopy = thread;
  v16 = mailboxesCopy;
  v12 = mailboxesCopy;
  v13 = messagesCopy;
  dispatch_async(providerQueue, v14);
}

void __97__NNMKSyncProvider_replyWithFirstMessages_includesProtectedMessages_mailboxes_organizedByThread___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 72);
  v3 = qword_28144D620;
  v4 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = v3;
      v14 = 134217984;
      v15 = [v5 count];
      _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Received first messages from MobileMail (Message count: %lu).", &v14, 0xCu);
    }

    [*(*(a1 + 32) + 72) setOrganizeByThread:*(a1 + 56)];
    if ([*(a1 + 32) _pairedDeviceSupportsMultipleMailboxes])
    {
      v7 = [*(a1 + 32) _sendFirstMessages:*(a1 + 40) mailboxes:*(a1 + 48)];
LABEL_12:
      v12 = [*(a1 + 32) initialSyncProgressTracker];
      [v12 updateProgressWithMessageHeadersSent:v7];

      goto LABEL_13;
    }

    v8 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_25B19F000, v8, OS_LOG_TYPE_DEFAULT, "Paired device does not support multiple mailboxes. Sending first messages to default mailbox.", &v14, 2u);
    }

    v9 = [*(*(a1 + 32) + 72) mailboxWithId:@"-1"];
    if (v9)
    {
      v10 = v9;
      v11 = [*(a1 + 32) _legacy_sendFirstMessages:*(a1 + 40) syncedMailbox:v9];

      v7 = 0;
      goto LABEL_12;
    }

    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __97__NNMKSyncProvider_replyWithFirstMessages_includesProtectedMessages_mailboxes_organizedByThread___block_invoke_cold_1();
    }
  }

  else if (v4)
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_25B19F000, v3, OS_LOG_TYPE_DEFAULT, "No paired device. It won't sync messages for #full-sync.", &v14, 2u);
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
}

- (id)_sendFirstMessages:(id)messages mailboxes:(id)mailboxes
{
  v75 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  mailboxesCopy = mailboxes;
  syncController = [(NNMKSyncProvider *)self syncController];
  v57 = [syncController groupMessagesByMailboxId:messagesCopy];

  v55 = objc_alloc_init(NNMKProtoInitialMessagesSyncBatch);
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(mailboxesCopy, "count")}];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v10 = mailboxesCopy;
  v11 = [v10 countByEnumeratingWithState:&v63 objects:v74 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v64;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v64 != v13)
        {
          objc_enumerationMutation(v10);
        }

        mailboxId = [*(*(&v63 + 1) + 8 * i) mailboxId];
        [v9 addObject:mailboxId];
      }

      v12 = [v10 countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v12);
  }

  v16 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    nnmk_description = [v9 nnmk_description];
    *buf = 138543362;
    v68 = nnmk_description;
    _os_log_impl(&dword_25B19F000, v17, OS_LOG_TYPE_DEFAULT, "Preparing to send #full-sync for mailboxes. %{public}@", buf, 0xCu);
  }

  v52 = messagesCopy;
  v54 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(messagesCopy, "count", v9)}];
  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v10;
  v58 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
  if (v58)
  {
    v56 = *v60;
    do
    {
      for (j = 0; j != v58; ++j)
      {
        if (*v60 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v59 + 1) + 8 * j);
        pairedDeviceRegistry = self->_pairedDeviceRegistry;
        mailboxId2 = [v20 mailboxId];
        v23 = [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry mailboxWithId:mailboxId2];

        if (v23)
        {
          syncActive = [v20 syncActive];
          if (syncActive != [v23 syncActive] || (v25 = objc_msgSend(v20, "syncEnabled"), v25 != objc_msgSend(v23, "syncEnabled")))
          {
            [v20 setSyncActive:{objc_msgSend(v23, "syncActive")}];
            [v20 setSyncEnabled:{objc_msgSend(v23, "syncEnabled")}];
          }
        }

        syncController2 = [(NNMKSyncProvider *)self syncController];
        mailboxId3 = [v20 mailboxId];
        v28 = [v57 objectForKeyedSubscript:mailboxId3];
        v29 = [syncController2 filterMessages:v28 byAlreadySynced:0 byMailbox:v20];

        v30 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v30;
          mailboxId4 = [v20 mailboxId];
          v33 = self->_pairedDeviceRegistry;
          mailboxId5 = [v20 mailboxId];
          v35 = [(NNMKDeviceSyncRegistry *)v33 syncVersionForMailboxId:mailboxId5];
          v36 = [v29 count];
          *buf = 138543874;
          v68 = mailboxId4;
          v69 = 2048;
          v70 = v35;
          v71 = 2048;
          v72 = v36;
          _os_log_impl(&dword_25B19F000, v31, OS_LOG_TYPE_DEFAULT, "Preparing messages to send for mailbox. (Mailbox: %{public}@, #mailbox-sync-version: %lu, Message count: %lu)", buf, 0x20u);
        }

        v37 = [(NNMKSyncProvider *)self _initialSyncForMailbox:v20 messages:v29];
        if (v37)
        {
          [(NNMKProtoInitialMessagesSyncBatch *)v55 addInitialMessagesSync:v37];
          [v54 addObjectsFromArray:v29];
        }

        else
        {
          v38 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v39 = v38;
            mailboxId6 = [v20 mailboxId];
            *buf = 138543362;
            v68 = mailboxId6;
            _os_log_impl(&dword_25B19F000, v39, OS_LOG_TYPE_DEFAULT, "It won't send mailbox on #full-sync. %{public}@", buf, 0xCu);
          }
        }
      }

      v58 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
    }

    while (v58);
  }

  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
  [(NNMKProtoInitialMessagesSyncBatch *)v55 setFullSyncVersion:[(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion]];
  v41 = [(NNMKMessagesSyncServiceServer *)self->_messagesSyncService sendBatchedInitialMessagesSync:v55];
  resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
  v43 = [v51 copy];
  resendScheduler2 = [(NNMKSyncProvider *)self resendScheduler];
  [resendScheduler registerIDSIdentifier:v41 objectIds:v43 type:@"InitialSync" resendInterval:{objc_msgSend(resendScheduler2, "initialSyncResendInterval")}];

  v45 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v46 = v45;
    v47 = [v54 count];
    nnmk_description2 = [v51 nnmk_description];
    *buf = 134218498;
    v68 = v47;
    v69 = 2114;
    v70 = v41;
    v71 = 2114;
    v72 = nnmk_description2;
    _os_log_impl(&dword_25B19F000, v46, OS_LOG_TYPE_DEFAULT, "#full-sync messages sent (%lu messages - IDS identifier: %{public}@ - Mailbox ids: %{public}@).", buf, 0x20u);
  }

  v49 = *MEMORY[0x277D85DE8];

  return v54;
}

- (id)_initialSyncForMailbox:(id)mailbox messages:(id)messages
{
  v57 = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  messagesCopy = messages;
  if (([mailboxCopy syncActive] & 1) != 0 || (objc_msgSend(mailboxCopy, "syncEnabled") & 1) == 0)
  {
    v32 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v32;
      mailboxId = [mailboxCopy mailboxId];
      *buf = 138543874;
      v47 = mailboxId;
      v48 = 2048;
      syncActive = [mailboxCopy syncActive];
      v50 = 2048;
      syncEnabled = [mailboxCopy syncEnabled];
      _os_log_impl(&dword_25B19F000, v33, OS_LOG_TYPE_DEFAULT, "Ignoring MobileMail reply for first messages. Mailbox: %{public}@, active: %lu, enabled: %lu.", buf, 0x20u);
    }

    v8 = 0;
  }

  else
  {
    v8 = objc_alloc_init(NNMKProtoInitialMessagesSync);
    [(NNMKProtoInitialMessagesSync *)v8 setFullSyncVersion:[(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion]];
    v9 = MEMORY[0x277CCAAB0];
    date = [MEMORY[0x277CBEAA8] date];
    v11 = [v9 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
    [(NNMKProtoInitialMessagesSync *)v8 setDateSynced:v11];

    v12 = [NNMKProtoMailbox protoMailboxFromMailbox:mailboxCopy];
    [(NNMKProtoInitialMessagesSync *)v8 setMailbox:v12];

    pairedDeviceRegistry = self->_pairedDeviceRegistry;
    v38 = mailboxCopy;
    mailboxId2 = [mailboxCopy mailboxId];
    [(NNMKProtoInitialMessagesSync *)v8 setMailboxSyncVersion:[(NNMKDeviceSyncRegistry *)pairedDeviceRegistry syncVersionForMailboxId:mailboxId2]];

    [(NNMKProtoInitialMessagesSync *)v8 setOrganizedByThread:[(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry organizeByThread]];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v37 = messagesCopy;
    obj = messagesCopy;
    v15 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      selfCopy = self;
      do
      {
        v18 = 0;
        v40 = v16;
        do
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v42 + 1) + 8 * v18);
          v20 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v21 = v20;
            messageId = [v19 messageId];
            accountId = [v19 accountId];
            [v19 dateReceived];
            v25 = v24 = v8;
            v26 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v19 status]);
            [v19 messageIdHeader];
            v28 = v27 = v17;
            *buf = 138544386;
            v47 = messageId;
            v48 = 2114;
            syncActive = accountId;
            v50 = 2114;
            syncEnabled = v25;
            v52 = 2112;
            v53 = v26;
            v54 = 2114;
            v55 = v28;
            _os_log_impl(&dword_25B19F000, v21, OS_LOG_TYPE_DEFAULT, "Message ADDED (Id: %{public}@ - Account Id: %{public}@ - Date Received: %{public}@ - Status: %@ - Message ID Header %{public}@ - Reason: #full-sync)", buf, 0x34u);

            v17 = v27;
            v8 = v24;
            self = selfCopy;

            v16 = v40;
          }

          v29 = [(NNMKSyncProvider *)self _messageProtobufForMessage:v19, v37];
          [(NNMKProtoInitialMessagesSync *)v8 addInitialMessage:v29];

          v30 = [[NNMKSyncedMessage alloc] initWithMessage:v19];
          batchRequestHandler = [(NNMKSyncProvider *)self batchRequestHandler];
          [batchRequestHandler handleMessageAdded:v19];

          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:v30];
          ++v18;
        }

        while (v16 != v18);
        v16 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
      }

      while (v16);
    }

    mailboxCopy = v38;
    [v38 setSyncActive:1];
    [v38 setSyncRequested:0];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry updateSyncActiveForMailbox:v38];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry updateSyncRequestedForMailbox:v38];
    messagesCopy = v37;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_legacy_sendFirstMessages:(id)messages syncedMailbox:(id)mailbox
{
  v56 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v9, OS_LOG_TYPE_DEFAULT, "Reply from delegate for didRequestFirstMessages but mailbox is already active.", buf, 2u);
    }

    obj = MEMORY[0x277CBEBF8];
  }

  else
  {
    [mailboxCopy setSyncEnabled:1];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry updateSyncEnabledForMailbox:mailboxCopy];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
    syncController = [(NNMKSyncProvider *)self syncController];
    v42 = messagesCopy;
    v11 = [syncController filterMessages:messagesCopy byAlreadySynced:0 byMailbox:mailboxCopy];

    v12 = objc_alloc_init(NNMKProtoInitialMessagesSync);
    [(NNMKProtoInitialMessagesSync *)v12 setFullSyncVersion:[(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion]];
    v13 = MEMORY[0x277CCAAB0];
    date = [MEMORY[0x277CBEAA8] date];
    v15 = [v13 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
    [(NNMKProtoInitialMessagesSync *)v12 setDateSynced:v15];

    v16 = [NNMKProtoMailbox protoMailboxFromMailbox:mailboxCopy];
    [(NNMKProtoInitialMessagesSync *)v12 setMailbox:v16];

    v17 = [NNMKMailbox syncedTypeFromMailbox:mailboxCopy];
    if (mailboxCopy)
    {
      [(NNMKProtoInitialMessagesSync *)v12 setSyncedMailboxType:v17];
      accountId = [mailboxCopy accountId];
      [(NNMKProtoInitialMessagesSync *)v12 setSyncedMailboxAccountId:accountId];

      v19 = [mailboxCopy url];
      absoluteString = [v19 absoluteString];
      [(NNMKProtoInitialMessagesSync *)v12 setSyncedMailboxURL:absoluteString];

      customName = [mailboxCopy customName];
      [(NNMKProtoInitialMessagesSync *)v12 setSyncedMailboxCustomName:customName];
    }

    else
    {
      [(NNMKProtoInitialMessagesSync *)v12 setSyncedMailboxType:0];
    }

    if ([v11 count])
    {
      lastObject = [v11 lastObject];
      v23 = MEMORY[0x277CCAAB0];
      dateReceived = [lastObject dateReceived];
      v24 = [v23 archivedDataWithRootObject:dateReceived requiringSecureCoding:1 error:0];
      [(NNMKProtoInitialMessagesSync *)v12 setDateForRequestingMoreMessages:v24];
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v11;
    v25 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v45;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v45 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v44 + 1) + 8 * i);
          v30 = [(NNMKSyncProvider *)self _messageProtobufForMessage:v29];
          [(NNMKProtoInitialMessagesSync *)v12 addInitialMessage:v30];

          dateReceived = [[NNMKSyncedMessage alloc] initWithMessage:v29 useDefaultMailbox:1];
          batchRequestHandler = [(NNMKSyncProvider *)self batchRequestHandler];
          [batchRequestHandler handleMessageAdded:v29];

          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:dateReceived];
        }

        v26 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v26);
    }

    v32 = [(NNMKMessagesSyncServiceServer *)self->_messagesSyncService sendInitialMessagesSync:v12];
    resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
    if (mailboxCopy)
    {
      dateReceived = [mailboxCopy mailboxId];
      v54 = dateReceived;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    }

    else
    {
      v34 = MEMORY[0x277CBEBF8];
    }

    resendScheduler2 = [(NNMKSyncProvider *)self resendScheduler];
    [resendScheduler registerIDSIdentifier:v32 objectIds:v34 type:@"InitialSync" resendInterval:{objc_msgSend(resendScheduler2, "initialSyncResendInterval")}];

    if (mailboxCopy)
    {
    }

    [mailboxCopy setSyncActive:1];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry updateSyncActiveForMailbox:mailboxCopy];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
    v36 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v36;
      v38 = [obj count];
      mailboxId = [mailboxCopy mailboxId];
      *buf = 134218498;
      v49 = v38;
      v50 = 2114;
      v51 = mailboxId;
      v52 = 2114;
      v53 = v32;
      _os_log_impl(&dword_25B19F000, v37, OS_LOG_TYPE_DEFAULT, "#full-sync messages sent (%lu messages - Mailbox id: %{public}@ IDS identifier: %{public}@).", buf, 0x20u);
    }

    messagesCopy = v42;
  }

  v40 = *MEMORY[0x277D85DE8];

  return obj;
}

- (void)replyWithMoreMessages:(id)messages context:(id)context
{
  messagesCopy = messages;
  contextCopy = context;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__NNMKSyncProvider_replyWithMoreMessages_context___block_invoke;
  block[3] = &unk_279936098;
  block[4] = self;
  v12 = messagesCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = messagesCopy;
  dispatch_async(providerQueue, block);
}

void __50__NNMKSyncProvider_replyWithMoreMessages_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) mailboxes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__NNMKSyncProvider_replyWithMoreMessages_context___block_invoke_2;
  v7[3] = &unk_2799366B8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  [v2 groupMessagesByMailbox:v3 mailboxes:v4 block:v7];
}

void __50__NNMKSyncProvider_replyWithMoreMessages_context___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 conversationId];
  v9 = [v8 length];

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (v9)
  {
    v12 = [v10 conversationId];
    [v11 _replyWithMoreMessages:v7 forConversationWithId:? mailbox:?];
  }

  else
  {
    v12 = [v10 beforeDate];
    [v11 _replyWithMoreMessages:v7 forDateReceivedBefore:v12 mailbox:v6 messagesForSpecialMailbox:{objc_msgSend(*(a1 + 32), "messagesForSpecialMailbox")}];
  }
}

- (void)_replyWithMoreMessages:(id)messages forDateReceivedBefore:(id)before mailbox:(id)mailbox messagesForSpecialMailbox:(unint64_t)specialMailbox
{
  v44 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  beforeCopy = before;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    if (specialMailbox)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v13 = messagesCopy;
      v14 = [v13 countByEnumeratingWithState:&v31 objects:v43 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v32;
        do
        {
          v17 = 0;
          do
          {
            if (*v32 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v31 + 1) + 8 * v17++) setIsSpecialMailboxSpecific:{specialMailbox, v31}];
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v31 objects:v43 count:16];
        }

        while (v15);
      }
    }

    syncController = [(NNMKSyncProvider *)self syncController];
    v19 = [syncController filterMessages:messagesCopy byAlreadySynced:1 byMailbox:mailboxCopy];

    v20 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [v19 count];
      mailboxId = [mailboxCopy mailboxId];
      *buf = 134218754;
      v36 = v22;
      v37 = 2048;
      specialMailboxCopy = specialMailbox;
      v39 = 2114;
      v40 = beforeCopy;
      v41 = 2114;
      v42 = mailboxId;
      _os_log_impl(&dword_25B19F000, v21, OS_LOG_TYPE_DEFAULT, "MobileMail responded for #LOAD_MORE_MESSAGES request. (Message Count: %lu, Special Mailbox Request: %lu, Date Request: %{public}@, Mailbox id: %{public}@)", buf, 0x2Au);
    }

    persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
    v25 = [persistenceHandler addMoreMessages:v19 mailbox:mailboxCopy];

    v26 = [NNMKMessage messageIdsFromMessages:v19];
    v27 = [(NNMKMessagesSyncServiceServer *)self->_messagesSyncService sendMoreMessages:v25];
    resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
    [resendScheduler registerIDSIdentifier:v27 objectIds:v26 type:@"Message" resendInterval:0];

    [(NNMKSyncProvider *)self _requestDelegateForContentForMessageIds:v26 highPriority:0];
  }

  else
  {
    v29 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v29, OS_LOG_TYPE_DEFAULT, "MobileMail responded for #LOAD_MORE_MESSAGES request but we were actually expecting another response.", buf, 2u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_replyWithMoreMessages:(id)messages forConversationWithId:(id)id mailbox:(id)mailbox
{
  v35 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  idCopy = id;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = messagesCopy;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        v15 = 0;
        do
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v28 + 1) + 8 * v15++) setIsThreadSpecific:{1, v28}];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v13);
    }

    syncController = [(NNMKSyncProvider *)self syncController];
    v17 = [syncController filterMessages:v11 byAlreadySynced:1 byMailbox:mailboxCopy];

    v18 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [v17 count];
      *buf = 134217984;
      v33 = v20;
      _os_log_impl(&dword_25B19F000, v19, OS_LOG_TYPE_DEFAULT, "MobileMail responded for #LOAD_MORE_MESSAGES conversation request. (Message count: %lu)", buf, 0xCu);
    }

    persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
    v22 = [persistenceHandler addMoreConversationSpecificMessages:v17 conversationId:idCopy mailbox:mailboxCopy];

    v23 = [NNMKMessage messageIdsFromMessages:v17];
    v24 = [(NNMKMessagesSyncServiceServer *)self->_messagesSyncService sendMoreMessagesForConversation:v22];
    resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
    [resendScheduler registerIDSIdentifier:v24 objectIds:v23 type:@"Message" resendInterval:0];

    [(NNMKSyncProvider *)self _requestDelegateForContentForMessageIds:v23 highPriority:0];
  }

  else
  {
    v26 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v26, OS_LOG_TYPE_DEFAULT, "MobileMail responded for #LOAD_MORE_MESSAGES conversation request but we were actually expecting another response.", buf, 2u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)replyWithMessagesToSendAsFetchResponse:(id)response includesProtectedMessages:(BOOL)messages
{
  responseCopy = response;
  providerQueue = self->_providerQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__NNMKSyncProvider_replyWithMessagesToSendAsFetchResponse_includesProtectedMessages___block_invoke;
  v8[3] = &unk_279935CD8;
  v9 = responseCopy;
  selfCopy = self;
  v7 = responseCopy;
  dispatch_async(providerQueue, v8);
}

uint64_t __85__NNMKSyncProvider_replyWithMessagesToSendAsFetchResponse_includesProtectedMessages___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    *buf = 134217984;
    v20 = [v3 count];
    _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "MobileMail replied with full headers messages for %lu message IDs for #BATCHED_RESPONSE. Checking if we can now send batch back to Watch...", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [*(a1 + 40) batchRequestHandler];
        [v11 handleMessageAdded:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  result = [*(a1 + 40) _checkBatchFetchedMessages];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)replyWithMessagesToResend:(id)resend includesProtectedMessages:(BOOL)messages
{
  resendCopy = resend;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__NNMKSyncProvider_replyWithMessagesToResend_includesProtectedMessages___block_invoke;
  block[3] = &unk_279936708;
  block[4] = self;
  v10 = resendCopy;
  messagesCopy = messages;
  v8 = resendCopy;
  dispatch_async(providerQueue, block);
}

void __72__NNMKSyncProvider_replyWithMessagesToResend_includesProtectedMessages___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__NNMKSyncProvider_replyWithMessagesToResend_includesProtectedMessages___block_invoke_2;
  v4[3] = &unk_2799366E0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 groupMessagesByMailbox:v3 mailboxes:0 block:v4];
}

- (void)_replyWithMessagesToResend:(id)resend includesProtectedMessages:(BOOL)messages mailbox:(id)mailbox
{
  v28 = *MEMORY[0x277D85DE8];
  resendCopy = resend;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
    v10 = [persistenceHandler addMessagesToResend:resendCopy mailbox:mailboxCopy];

    messageIdsWithDefaultPriority = [v10 messageIdsWithDefaultPriority];
    v12 = [messageIdsWithDefaultPriority count];

    if (v12)
    {
      messagesSyncService = self->_messagesSyncService;
      protoMessagesWithDefaultPriority = [v10 protoMessagesWithDefaultPriority];
      v15 = [(NNMKMessagesSyncServiceServer *)messagesSyncService addMessages:protoMessagesWithDefaultPriority notificationPriority:0];

      resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
      messageIdsWithDefaultPriority2 = [v10 messageIdsWithDefaultPriority];
      [resendScheduler registerIDSIdentifier:v15 objectIds:messageIdsWithDefaultPriority2 type:@"Message" resendInterval:{objc_msgSend(v10, "resendInterval")}];

      v18 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        messageIdsWithDefaultPriority3 = [v10 messageIdsWithDefaultPriority];
        v22 = 134218498;
        v23 = [messageIdsWithDefaultPriority3 count];
        v24 = 2114;
        v25 = v15;
        v26 = 2048;
        resendInterval = [v10 resendInterval];
        _os_log_impl(&dword_25B19F000, v19, OS_LOG_TYPE_DEFAULT, "Messages RESENT (Count: %lu - IDS Identifier: %{public}@ - Resend Interval: %lu).", &v22, 0x20u);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)replyWithAccountToResend:(id)resend
{
  resendCopy = resend;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__NNMKSyncProvider_replyWithAccountToResend___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = resendCopy;
  v6 = resendCopy;
  dispatch_async(providerQueue, v7);
}

void __45__NNMKSyncProvider_replyWithAccountToResend___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 72);
  if (v1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = [v3 accountId];
      v5 = [v1 syncedAccountForAccountWithId:v4];

      if (v5 && ([v5 resendRequested] & 1) != 0)
      {
        v6 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 40);
          v8 = v6;
          v9 = [v7 accountId];
          *buf = 138543362;
          v50 = v9;
          _os_log_impl(&dword_25B19F000, v8, OS_LOG_TYPE_DEFAULT, "Account RESENT (Id: %{public}@).", buf, 0xCu);
        }

        [*(*(a1 + 32) + 72) beginUpdates];
        v10 = objc_alloc_init(NNMKProtoAccountAdditionOrUpdate);
        v11 = [*(a1 + 40) accountId];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setAccountId:v11];

        v12 = [*(a1 + 40) displayName];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setDisplayName:v12];

        -[NNMKProtoAccountAdditionOrUpdate setShouldArchive:](v10, "setShouldArchive:", [*(a1 + 40) shouldArchive]);
        -[NNMKProtoAccountAdditionOrUpdate setFullSyncVersion:](v10, "setFullSyncVersion:", [*(*(a1 + 32) + 72) fullSyncVersion]);
        v13 = [*(a1 + 40) username];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setUsername:v13];

        v14 = [*(a1 + 40) localId];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setLocalId:v14];

        v15 = [*(a1 + 40) parentAccountIdentifier];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setParentId:v15];

        v16 = [*(a1 + 40) typeIdentifier];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setTypeIdentifier:v16];

        v17 = [*(a1 + 40) emailAddressToken];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setEmailAddressToken:v17];

        v18 = [*(a1 + 40) pccEmailAddress];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setPccEmailAddress:v18];

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v19 = [*(a1 + 40) emailAddresses];
        v20 = [v19 countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v44;
          do
          {
            v23 = 0;
            do
            {
              if (*v44 != v22)
              {
                objc_enumerationMutation(v19);
              }

              [(NNMKProtoAccountAdditionOrUpdate *)v10 addEmail:*(*(&v43 + 1) + 8 * v23++)];
            }

            while (v21 != v23);
            v21 = [v19 countByEnumeratingWithState:&v43 objects:v48 count:16];
          }

          while (v21);
        }

        v24 = [*(a1 + 40) defaultEmailAddress];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setDefaultEmail:v24];

        v25 = [*(a1 + 32) persistenceHandler];
        v26 = [v25 updateMailboxListForAccount:*(a1 + 40) mailboxListChanged:0];
        [(NNMKProtoAccountAdditionOrUpdate *)v10 setMailboxes:v26];

        v27 = [v5 resendInterval];
        v28 = [*(a1 + 40) displayName];
        [v5 setDisplayName:v28];

        [v5 setShouldArchive:{objc_msgSend(*(a1 + 40), "shouldArchive")}];
        v29 = [*(a1 + 40) emailAddresses];
        [v5 setEmailAddresses:v29];

        v30 = [*(a1 + 40) defaultEmailAddress];
        [v5 setDefaultEmailAddress:v30];

        v31 = [*(a1 + 40) typeIdentifier];
        [v5 setTypeIdentifier:v31];

        v32 = [*(a1 + 40) emailAddressToken];
        [v5 setEmailAddressToken:v32];

        v33 = [*(a1 + 40) pccEmailAddress];
        [v5 setPccEmailAddress:v33];

        [v5 setResendRequested:0];
        [v5 setResendInterval:0];
        [*(*(a1 + 32) + 72) addOrUpdateSyncedAccount:v5];
        v34 = [*(*(a1 + 32) + 104) addOrUpdateAccount:v10];
        v35 = [*(a1 + 32) resendScheduler];
        v36 = [*(a1 + 40) accountId];
        v47 = v36;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
        [v35 registerIDSIdentifier:v34 objectIds:v37 type:@"Account" resendInterval:v27];

        [*(*(a1 + 32) + 72) endUpdates];
      }

      else
      {
        v38 = qword_28144D620;
        if (!os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
LABEL_18:

          goto LABEL_21;
        }

        v39 = *(a1 + 40);
        v10 = v38;
        v40 = [v39 accountId];
        *buf = 138543362;
        v50 = v40;
        _os_log_impl(&dword_25B19F000, &v10->super.super, OS_LOG_TYPE_DEFAULT, "Unexpected reply from delegate for 'account to resend' (Id: %{public}@).", buf, 0xCu);
      }

      goto LABEL_18;
    }

    v41 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v41, OS_LOG_TYPE_DEFAULT, "Account does not exist anymore. It will not resend", buf, 2u);
    }
  }

LABEL_21:
  v42 = *MEMORY[0x277D85DE8];
}

- (void)replyWithMessageSendingProgress:(int64_t)progress forComposedMessageId:(id)id
{
  idCopy = id;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NNMKSyncProvider_replyWithMessageSendingProgress_forComposedMessageId___block_invoke;
  block[3] = &unk_279936218;
  v10 = idCopy;
  progressCopy = progress;
  block[4] = self;
  v8 = idCopy;
  dispatch_async(providerQueue, block);
}

void __73__NNMKSyncProvider_replyWithMessageSendingProgress_forComposedMessageId___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 72) hasMailboxSyncedActive])
  {
    v2 = *(a1 + 48);
    if (v2 == 0x7FFFFFFF || v2 == -1)
    {
      [*(*(a1 + 32) + 72) removeProgressForComposedMessageWithId:*(a1 + 40)];
    }

    else
    {
      v4 = *(a1 + 40);
      [*(*(a1 + 32) + 72) setProgress:? forComposedMessageWithId:?];
    }

    v5 = objc_alloc_init(NNMKProtoComposedMessageSendingProgressReport);
    [(NNMKProtoComposedMessageSendingProgressReport *)v5 setComposedMessageId:*(a1 + 40)];
    [(NNMKProtoComposedMessageSendingProgressReport *)v5 setProgress:*(a1 + 48)];
    v6 = [*(*(a1 + 32) + 112) reportComposedMessageSendingProgress:v5];
    v7 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      *buf = 138543874;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_25B19F000, v7, OS_LOG_TYPE_DEFAULT, "Sending progress for composed message (Id: %{public}@ - Progress: %li - IDS Identifier: %{public}@)...", buf, 0x20u);
    }

    v10 = [*(a1 + 32) resendScheduler];
    v14 = *(a1 + 40);
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [v10 registerIDSIdentifier:v6 objectIds:v11 type:@"SendingProgress" resendInterval:0];

    if (*(a1 + 48) == -1)
    {
      v12 = +[NNMKAnalytics sharedInstance];
      [v12 reportMessageDeliveryFailedInMode:0];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addMessages:(id)messages
{
  messagesCopy = messages;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__NNMKSyncProvider_addMessages___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = messagesCopy;
  v6 = messagesCopy;
  dispatch_async(providerQueue, v7);
}

void __32__NNMKSyncProvider_addMessages___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__NNMKSyncProvider_addMessages___block_invoke_2;
  v4[3] = &unk_279936730;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 groupMessagesByMailbox:v3 mailboxes:0 block:v4];
}

- (void)_addMessages:(id)messages mailbox:(id)mailbox
{
  v17 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  mailboxCopy = mailbox;
  syncActive = [mailboxCopy syncActive];
  v9 = qword_28144D620;
  if (syncActive)
  {
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      mailboxId = [mailboxCopy mailboxId];
      v13 = 138543618;
      v14 = mailboxId;
      v15 = 2048;
      v16 = [messagesCopy count];
      _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Adding new messages for mailbox. %{public}@ - count: %lu", &v13, 0x16u);
    }

    [(NNMKSyncProvider *)self _addMessages:messagesCopy messagesAreNew:1 mailbox:mailboxCopy];
  }

  else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [(NNMKSyncProvider *)v9 _addMessages:mailboxCopy mailbox:messagesCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateMessagesStatus:(id)status
{
  statusCopy = status;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__NNMKSyncProvider_updateMessagesStatus___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = statusCopy;
  v6 = statusCopy;
  dispatch_async(providerQueue, v7);
}

void __41__NNMKSyncProvider_updateMessagesStatus___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__NNMKSyncProvider_updateMessagesStatus___block_invoke_2;
  v4[3] = &unk_279936730;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 groupMessagesByMailbox:v3 mailboxes:0 block:v4];
}

- (void)_updateMessagesStatus:(id)status mailbox:(id)mailbox
{
  statusCopy = status;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
    v9 = [persistenceHandler updateMessagesStatus:statusCopy mailbox:mailboxCopy];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __50__NNMKSyncProvider__updateMessagesStatus_mailbox___block_invoke;
    v24[3] = &unk_279936758;
    v24[4] = self;
    v10 = MEMORY[0x25F864490](v24);
    messagesSyncService = self->_messagesSyncService;
    protoMessageUpdatesWithNotificationPriority = [v9 protoMessageUpdatesWithNotificationPriority];
    messageIdsWithNotificationPriority = [v9 messageIdsWithNotificationPriority];
    (v10)[2](v10, messagesSyncService, protoMessageUpdatesWithNotificationPriority, messageIdsWithNotificationPriority, 1);

    v14 = self->_messagesSyncService;
    protoMessageUpdatesWithDefaultPriority = [v9 protoMessageUpdatesWithDefaultPriority];
    messageIdsWithDefaultPriority = [v9 messageIdsWithDefaultPriority];
    (v10)[2](v10, v14, protoMessageUpdatesWithDefaultPriority, messageIdsWithDefaultPriority, 0);

    messageIdsToDelete = [v9 messageIdsToDelete];
    v18 = [messageIdsToDelete count];

    if (v18)
    {
      messageIdsToDelete2 = [v9 messageIdsToDelete];
      [(NNMKSyncProvider *)self deleteMessagesWithIds:messageIdsToDelete2];
    }

    messagesToAdd = [v9 messagesToAdd];
    v21 = [messagesToAdd count];

    if (v21)
    {
      messagesToAdd2 = [v9 messagesToAdd];
      [(NNMKSyncProvider *)self _addMessages:messagesToAdd2 messagesAreNew:0 mailbox:mailboxCopy];
    }
  }

  else
  {
    v23 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKSyncProvider *)v23 _updateMessagesStatus:mailboxCopy mailbox:statusCopy];
    }
  }
}

void __50__NNMKSyncProvider__updateMessagesStatus_mailbox___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a4;
  if ([v9 messageStatusUpdatesCount])
  {
    v11 = [v13 updateMessagesStatus:v9 notificationPriority:a5];
    v12 = [*(a1 + 32) resendScheduler];
    [v12 registerIDSIdentifier:v11 objectIds:v10 type:@"Message" resendInterval:0];
  }
}

- (void)deleteMessagesWithIds:(id)ids
{
  idsCopy = ids;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__NNMKSyncProvider_deleteMessagesWithIds___block_invoke;
  v7[3] = &unk_279935CD8;
  v8 = idsCopy;
  selfCopy = self;
  v6 = idsCopy;
  dispatch_async(providerQueue, v7);
}

void __42__NNMKSyncProvider_deleteMessagesWithIds___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(a1 + 40) + 72) syncedMessageForMessageWithId:*(*(&v12 + 1) + 8 * v7)];
        if (v8)
        {
          [v2 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 40) syncController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__NNMKSyncProvider_deleteMessagesWithIds___block_invoke_2;
  v11[3] = &unk_279936730;
  v11[4] = *(a1 + 40);
  [v9 groupMessagesByMailbox:v2 mailboxes:0 block:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __42__NNMKSyncProvider_deleteMessagesWithIds___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [NNMKMessage messageIdsFromMessages:a2];
  [v4 _deleteMessagesWithIds:v6 mailbox:v5];
}

- (void)_deleteMessagesWithIds:(id)ids mailbox:(id)mailbox
{
  idsCopy = ids;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
    v9 = [persistenceHandler deleteMessagesWithIds:idsCopy mailbox:mailboxCopy];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__NNMKSyncProvider__deleteMessagesWithIds_mailbox___block_invoke;
    v17[3] = &unk_279936780;
    v17[4] = self;
    v10 = MEMORY[0x25F864490](v17);
    messagesSyncService = self->_messagesSyncService;
    unprotectedNotificationProtobuf = [v9 unprotectedNotificationProtobuf];
    unprotectedNotificationMessageIds = [v9 unprotectedNotificationMessageIds];
    (v10)[2](v10, messagesSyncService, unprotectedNotificationProtobuf, unprotectedNotificationMessageIds, 1);

    v14 = self->_messagesSyncService;
    unprotectedDefaultProtobuf = [v9 unprotectedDefaultProtobuf];
    unprotectedDefaultMessageIds = [v9 unprotectedDefaultMessageIds];
    (v10)[2](v10, v14, unprotectedDefaultProtobuf, unprotectedDefaultMessageIds, 0);
  }
}

void __51__NNMKSyncProvider__deleteMessagesWithIds_mailbox___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if ([v10 messageDeletionsCount])
  {
    v12 = [v9 deleteMessages:v10 notificationPriority:a5];
    v13 = [*(a1 + 32) resendScheduler];
    [v13 registerIDSIdentifier:v12 objectIds:v11 type:@"Message" resendInterval:0];

    v14 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v27 = v12;
      v28 = 2114;
      v29 = v9;
      _os_log_impl(&dword_25B19F000, v14, OS_LOG_TYPE_DEFAULT, "Deletion operation sent to watch. (IDS Identifier: %{public}@, Channel: %{public}@)", buf, 0x16u);
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(a1 + 32) _requestDelegateToStopDownloadingMessageElementsForMessageWithId:{*(*(&v21 + 1) + 8 * v19++), v21}];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateConversationId:(id)id mute:(BOOL)mute
{
  idCopy = id;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NNMKSyncProvider_updateConversationId_mute___block_invoke;
  block[3] = &unk_279936708;
  block[4] = self;
  v10 = idCopy;
  muteCopy = mute;
  v8 = idCopy;
  dispatch_async(providerQueue, block);
}

void __46__NNMKSyncProvider_updateConversationId_mute___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 72) syncedMessagesForConversationWithId:*(a1 + 40)];
  if ([v3 count])
  {
    v4 = [*(a1 + 32) syncController];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__NNMKSyncProvider_updateConversationId_mute___block_invoke_2;
    v7[3] = &unk_2799367A8;
    v5 = *(a1 + 40);
    v10 = *(a1 + 48);
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    [v4 groupMessagesByMailbox:v3 mailboxes:0 block:v7];
  }

  else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    __46__NNMKSyncProvider_updateConversationId_mute___block_invoke_cold_1(v2);
  }
}

void __46__NNMKSyncProvider_updateConversationId_mute___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 syncActive])
  {
    v5 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v9 = 138543618;
      v10 = v6;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&dword_25B19F000, v5, OS_LOG_TYPE_DEFAULT, "Conversation muted status updated (Id: %{public}@, Muted: %lu).", &v9, 0x16u);
    }

    [*(a1 + 40) _markConversationWithId:*(a1 + 32) forState:2048 include:*(a1 + 48) mailbox:v4];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)markConversationIdForNotify:(id)notify messages:(id)messages includesProtectedMessages:(BOOL)protectedMessages
{
  notifyCopy = notify;
  messagesCopy = messages;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__NNMKSyncProvider_markConversationIdForNotify_messages_includesProtectedMessages___block_invoke;
  block[3] = &unk_279936098;
  v13 = messagesCopy;
  selfCopy = self;
  v15 = notifyCopy;
  v10 = notifyCopy;
  v11 = messagesCopy;
  dispatch_async(providerQueue, block);
}

void __83__NNMKSyncProvider_markConversationIdForNotify_messages_includesProtectedMessages___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 syncController];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __83__NNMKSyncProvider_markConversationIdForNotify_messages_includesProtectedMessages___block_invoke_39;
    v10[3] = &unk_2799366B8;
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v10[4] = *(a1 + 40);
    v11 = v6;
    [v4 groupMessagesByMailbox:v5 mailboxes:0 block:v10];
  }

  else
  {
    v7 = [v2[9] syncedMessagesForConversationWithId:*(a1 + 48)];
    if ([v7 count])
    {
      v8 = [*(a1 + 40) syncController];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __83__NNMKSyncProvider_markConversationIdForNotify_messages_includesProtectedMessages___block_invoke_2;
      v12[3] = &unk_2799366B8;
      v9 = *(a1 + 48);
      v12[4] = *(a1 + 40);
      v13 = v9;
      [v8 groupMessagesByMailbox:v7 mailboxes:0 block:v12];
    }

    else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __83__NNMKSyncProvider_markConversationIdForNotify_messages_includesProtectedMessages___block_invoke_cold_1((a1 + 48));
    }
  }
}

- (void)_markConversationIdForNotify:(id)notify messages:(id)messages mailbox:(id)mailbox
{
  v15 = *MEMORY[0x277D85DE8];
  notifyCopy = notify;
  messagesCopy = messages;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    v11 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = notifyCopy;
      _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "Conversation marked for notify (Id: %{public}@).", &v13, 0xCu);
    }

    [(NNMKSyncProvider *)self _markConversationWithId:notifyCopy forState:128 include:1 mailbox:mailboxCopy];
    if (messagesCopy)
    {
      [(NNMKSyncProvider *)self _addMessages:messagesCopy mailbox:mailboxCopy];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)markConversationIdForNotNotify:(id)notify
{
  notifyCopy = notify;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__NNMKSyncProvider_markConversationIdForNotNotify___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = notifyCopy;
  v6 = notifyCopy;
  dispatch_async(providerQueue, v7);
}

void __51__NNMKSyncProvider_markConversationIdForNotNotify___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 72) syncedMessagesForConversationWithId:*(a1 + 40)];
  if ([v3 count])
  {
    v4 = [*(a1 + 32) syncController];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__NNMKSyncProvider_markConversationIdForNotNotify___block_invoke_2;
    v7[3] = &unk_2799366B8;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    [v4 groupMessagesByMailbox:v3 mailboxes:0 block:v7];
  }

  else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    __46__NNMKSyncProvider_updateConversationId_mute___block_invoke_cold_1(v2);
  }
}

void __51__NNMKSyncProvider_markConversationIdForNotNotify___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 syncActive])
  {
    v5 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_25B19F000, v5, OS_LOG_TYPE_DEFAULT, "Conversation marked for stop notifying (Id: %{public}@).", &v8, 0xCu);
    }

    [*(a1 + 40) _markConversationWithId:*(a1 + 32) forState:128 include:0 mailbox:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addMessageContent:(id)content forMessage:(id)message loadedProtected:(BOOL)protected
{
  contentCopy = content;
  messageCopy = message;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NNMKSyncProvider_addMessageContent_forMessage_loadedProtected___block_invoke;
  block[3] = &unk_279936098;
  block[4] = self;
  v13 = messageCopy;
  v14 = contentCopy;
  v10 = contentCopy;
  v11 = messageCopy;
  dispatch_async(providerQueue, block);
}

void __65__NNMKSyncProvider_addMessageContent_forMessage_loadedProtected___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v3 = (a1 + 40);
  v4 = [*(a1 + 40) mailboxId];
  v5 = [v2 mailboxWithId:v4];

  if (v5)
  {
    [*(a1 + 32) _addMessageContent:*(a1 + 48) forMessage:*(a1 + 40) mailbox:v5];
  }

  else
  {
    v6 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __65__NNMKSyncProvider_addMessageContent_forMessage_loadedProtected___block_invoke_cold_1(v3, v6);
    }
  }
}

- (void)_addMessageContent:(id)content forMessage:(id)message mailbox:(id)mailbox
{
  v72[2] = *MEMORY[0x277D85DE8];
  contentCopy = content;
  messageCopy = message;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    v11 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      mailboxId = [messageCopy mailboxId];
      *buf = 138543362;
      v59 = mailboxId;
      _os_log_impl(&dword_25B19F000, v12, OS_LOG_TYPE_INFO, "Received message content from MobileMail - Id %{public}@", buf, 0xCu);
    }

    messageId = [contentCopy messageId];

    if (messageId)
    {
      v15 = +[NNMKAnalytics sharedInstance];
      [v15 reportOriginalMessageContentSizeInBytes:objc_msgSend(contentCopy source:{"originalContentSize"), 0}];

      persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
      v17 = [persistenceHandler addMessageContent:contentCopy forMessage:messageCopy mailbox:mailboxCopy];

      protoMessageContentSync = [v17 protoMessageContentSync];

      if (!protoMessageContentSync)
      {
        v48 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v49 = v48;
          messageId2 = [contentCopy messageId];
          v51 = [v17 messageDoesNotExist] ^ 1;
          alreadySyncedWithCurrentPriority = [v17 alreadySyncedWithCurrentPriority];
          *buf = 138543874;
          v59 = messageId2;
          v60 = 1024;
          v61 = v51;
          v62 = 1024;
          v63 = alreadySyncedWithCurrentPriority;
          _os_log_impl(&dword_25B19F000, v49, OS_LOG_TYPE_DEFAULT, "Message Content ADDED but not synced (Message Id: %{public}@ Message Had Been Synced: %d, Already Synced With Current Priority: %d).", buf, 0x18u);
        }

        goto LABEL_21;
      }

      contentSyncService = self->_contentSyncService;
      protoMessageContentSync2 = [v17 protoMessageContentSync];
      v57 = -[NNMKMessageContentSyncServiceServer syncMessageContent:notificationPriority:userRequested:](contentSyncService, "syncMessageContent:notificationPriority:userRequested:", protoMessageContentSync2, [v17 isNotificationPriority], objc_msgSend(v17, "isUserRequest"));

      sessionController = [(NNMKSyncProvider *)self sessionController];
      notificationPayloadAcks = [sessionController notificationPayloadAcks];
      messageId3 = [contentCopy messageId];
      v24 = [notificationPayloadAcks objectForKeyedSubscript:messageId3];
      if (v24)
      {
        v25 = v24;
        isNotificationPriority = [v17 isNotificationPriority];

        if (!isNotificationPriority)
        {
LABEL_12:
          resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
          messageId4 = [contentCopy messageId];
          v72[0] = messageId4;
          v36 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v17, "isUserRequest")}];
          stringValue = [v36 stringValue];
          v72[1] = stringValue;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
          [resendScheduler registerIDSIdentifier:v57 objectIds:v38 type:@"MessageContent" resendInterval:{objc_msgSend(v17, "resendInterval")}];

          v39 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            log = v39;
            messageId5 = [contentCopy messageId];
            isNotificationPriority2 = [v17 isNotificationPriority];
            isUserRequest = [v17 isUserRequest];
            textData = [contentCopy textData];
            v42 = [textData length];
            compressedTextDataLength = [v17 compressedTextDataLength];
            protoMessageContentSync3 = [v17 protoMessageContentSync];
            fullSyncVersion = [protoMessageContentSync3 fullSyncVersion];
            *buf = 138544898;
            v59 = messageId5;
            v60 = 1024;
            v61 = isNotificationPriority2;
            v62 = 1024;
            v63 = isUserRequest;
            v64 = 2048;
            v65 = v42;
            v66 = 2048;
            v67 = compressedTextDataLength;
            v68 = 2114;
            v69 = v57;
            v70 = 1024;
            v71 = fullSyncVersion;
            _os_log_impl(&dword_25B19F000, log, OS_LOG_TYPE_DEFAULT, "Message Content ADDED (Id: %{public}@ - Notification Priority: %d - User Requested: %d - Data Length: %lu - Compressed Data Length: %lu - IDS Identifier: %{public}@ (#sync-version: %u)).", buf, 0x3Cu);
          }

          if ([v17 isContentCompletelySynced])
          {
            initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
            messageId6 = [messageCopy messageId];
            [initialSyncProgressTracker updateProgressWithContentCompletelySyncedForMessageId:messageId6];
          }

LABEL_21:
          goto LABEL_22;
        }

        v27 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v27;
          messageId7 = [contentCopy messageId];
          *buf = 138543362;
          v59 = messageId7;
          _os_log_impl(&dword_25B19F000, v28, OS_LOG_TYPE_DEFAULT, "Notifying BulletinDistributor Ping Subscriber that we synced content for notification. (Message Id: %{public}@)", buf, 0xCu);
        }

        sessionController2 = [(NNMKSyncProvider *)self sessionController];
        notificationPayloadAcks2 = [sessionController2 notificationPayloadAcks];
        messageId8 = [contentCopy messageId];
        v33 = [notificationPayloadAcks2 objectForKeyedSubscript:messageId8];
        v33[2](v33, 1);

        sessionController = [(NNMKSyncProvider *)self sessionController];
        notificationPayloadAcks = [sessionController notificationPayloadAcks];
        messageId3 = [contentCopy messageId];
        [notificationPayloadAcks setObject:0 forKeyedSubscript:messageId3];
      }

      goto LABEL_12;
    }

    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider _addMessageContent:forMessage:mailbox:];
    }
  }

LABEL_22:

  v53 = *MEMORY[0x277D85DE8];
}

- (void)reportMessageContentDownloadFailureForMessageId:(id)id
{
  idCopy = id;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__NNMKSyncProvider_reportMessageContentDownloadFailureForMessageId___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(providerQueue, v7);
}

void __68__NNMKSyncProvider_reportMessageContentDownloadFailureForMessageId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v4 = [v2 mailboxForMessageWithId:*(a1 + 40)];

  v3 = v4;
  if (v4)
  {
    [*(a1 + 32) _reportMessageContentDownloadFailureForMessageId:*(a1 + 40) mailbox:v4];
    v3 = v4;
  }
}

- (void)_reportMessageContentDownloadFailureForMessageId:(id)id mailbox:(id)mailbox
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  mailboxCopy = mailbox;
  if ([mailboxCopy syncActive])
  {
    v8 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = idCopy;
      _os_log_impl(&dword_25B19F000, v8, OS_LOG_TYPE_DEFAULT, "Reported failure downloading content for message (Id: %{public}@).", &v19, 0xCu);
    }

    v9 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncedMessageForMessageWithId:idCopy];
    if (v9)
    {
      v10 = objc_alloc_init(NNMKProtoErrorDownloadingContentForMessageWarning);
      syncController = [(NNMKSyncProvider *)self syncController];
      v12 = [syncController watchMessageIdFromMessageId:idCopy];
      [(NNMKProtoErrorDownloadingContentForMessageWarning *)v10 setMessageId:v12];

      mailboxId = [mailboxCopy mailboxId];
      [(NNMKProtoErrorDownloadingContentForMessageWarning *)v10 setMailboxId:mailboxId];

      fetchesSyncService = self->_fetchesSyncService;
      usedNotificationPriorityForMessageSync = [v9 usedNotificationPriorityForMessageSync];
      if ([v9 contentSyncedBecauseUserRequested])
      {
        contentRequestedByUser = 1;
      }

      else
      {
        contentRequestedByUser = [v9 contentRequestedByUser];
      }

      [(NNMKFetchesSyncServiceServer *)fetchesSyncService warnErrorDownloadingContentForMessage:v10 notificationPriority:usedNotificationPriorityForMessageSync userRequested:contentRequestedByUser];
      [v9 setContentRequestedByUser:0];
      initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
      [initialSyncProgressTracker updateProgressWithMessageContentDownloadFailed:idCopy];

      [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:v9];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)addAttachmentData:(id)data forMessageId:(id)id contentId:(id)contentId loadedProtected:(BOOL)protected
{
  dataCopy = data;
  idCopy = id;
  contentIdCopy = contentId;
  providerQueue = self->_providerQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__NNMKSyncProvider_addAttachmentData_forMessageId_contentId_loadedProtected___block_invoke;
  v16[3] = &unk_2799367D0;
  v16[4] = self;
  v17 = idCopy;
  v18 = dataCopy;
  v19 = contentIdCopy;
  v13 = contentIdCopy;
  v14 = dataCopy;
  v15 = idCopy;
  dispatch_async(providerQueue, v16);
}

void __77__NNMKSyncProvider_addAttachmentData_forMessageId_contentId_loadedProtected___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v4 = [v2 mailboxForMessageWithId:*(a1 + 40)];

  v3 = v4;
  if (v4)
  {
    [*(a1 + 32) _addAttachmentData:*(a1 + 48) forMessageId:*(a1 + 40) contentId:*(a1 + 56) mailbox:v4];
    v3 = v4;
  }
}

- (void)addImageAttachment:(id)attachment forMessageId:(id)id contentId:(id)contentId loadedProtected:(BOOL)protected
{
  attachmentCopy = attachment;
  idCopy = id;
  contentIdCopy = contentId;
  providerQueue = self->_providerQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__NNMKSyncProvider_addImageAttachment_forMessageId_contentId_loadedProtected___block_invoke;
  v16[3] = &unk_2799367D0;
  v16[4] = self;
  v17 = idCopy;
  v18 = attachmentCopy;
  v19 = contentIdCopy;
  v13 = contentIdCopy;
  v14 = attachmentCopy;
  v15 = idCopy;
  dispatch_async(providerQueue, v16);
}

void __78__NNMKSyncProvider_addImageAttachment_forMessageId_contentId_loadedProtected___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v4 = [v2 mailboxForMessageWithId:*(a1 + 40)];

  if (v4)
  {
    v3 = UIImageJPEGRepresentation(*(a1 + 48), 0.9);
    [*(a1 + 32) _addAttachmentData:v3 forMessageId:*(a1 + 40) contentId:*(a1 + 56) mailbox:v4];
  }
}

- (void)_addAttachmentData:(id)data forMessageId:(id)id contentId:(id)contentId mailbox:(id)mailbox
{
  v49 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  idCopy = id;
  contentIdCopy = contentId;
  if ([mailbox syncActive])
  {
    if (dataCopy)
    {
      v13 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncedMessageForMessageWithId:idCopy];
      contentSyncedUsingNotificationPriority = [v13 contentSyncedUsingNotificationPriority];
      contentSyncedBecauseUserRequested = [v13 contentSyncedBecauseUserRequested];
      attachmentsContentIdsNotYetSynced = [v13 attachmentsContentIdsNotYetSynced];
      v17 = [attachmentsContentIdsNotYetSynced containsObject:contentIdCopy];

      [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
      if (v13)
      {
        v20 = v17 == 0;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        v21 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          v43 = idCopy;
          v44 = 2114;
          v45 = contentIdCopy;
          v46 = 1024;
          *v47 = v13 != 0;
          *&v47[4] = 1024;
          *&v47[6] = v17;
          _os_log_impl(&dword_25B19F000, v21, OS_LOG_TYPE_DEFAULT, "Attachment ADDED but not synced (Message Id: %{public}@, Content Id: %{public}@, Message Had Been Synced: %d, Attachment Not Yet Synced: %d).", buf, 0x22u);
        }
      }

      else
      {
        if (contentSyncedUsingNotificationPriority)
        {
          v18 = [dataCopy length];
          v19 = 1048576.0;
          v41 = v18 <= 1048576.0;
        }

        else
        {
          v41 = 0;
        }

        v23 = [dataCopy length];
        if (v23 > 2097152.0)
        {
          [MEMORY[0x277CBEA90] data];
        }

        v24 = dataCopy;
        v25 = objc_alloc_init(NNMKProtoAttachmentSync);
        [(NNMKProtoAttachmentSync *)v25 setFullSyncVersion:[(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion]];
        v26 = MEMORY[0x277CCAAB0];
        date = [MEMORY[0x277CBEAA8] date];
        v28 = [v26 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
        [(NNMKProtoAttachmentSync *)v25 setDateSynced:v28];

        syncController = [(NNMKSyncProvider *)self syncController];
        v30 = [syncController watchMessageIdFromMessageId:idCopy];
        [(NNMKProtoAttachmentSync *)v25 setMessageId:v30];

        mailboxId = [v13 mailboxId];
        [(NNMKProtoAttachmentSync *)v25 setMailboxId:mailboxId];

        syncController2 = [(NNMKSyncProvider *)self syncController];
        v33 = [syncController2 watchAttachmentContentIdFromContentId:contentIdCopy];
        [(NNMKProtoAttachmentSync *)v25 setContentId:v33];

        [(NNMKProtoAttachmentSync *)v25 setAttachmentData:v24];
        v34 = [(NNMKMessageContentSyncServiceServer *)self->_contentSyncService syncAttachment:v25 notificationPriority:v41 userRequested:contentSyncedBecauseUserRequested];
        attachmentsContentIdsNotYetSynced2 = [v13 attachmentsContentIdsNotYetSynced];
        [attachmentsContentIdsNotYetSynced2 removeObject:contentIdCopy];

        v36 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v36;
          *buf = 138544130;
          v43 = idCopy;
          v44 = 2114;
          v45 = contentIdCopy;
          v46 = 2048;
          *v47 = [v24 length];
          *&v47[8] = 2114;
          v48 = v34;
          _os_log_impl(&dword_25B19F000, v37, OS_LOG_TYPE_DEFAULT, "Attachment ADDED (Message Id: %{public}@, Content Id: %{public}@, Bytes: %lu, - IDS Identifier: %{public}@).", buf, 0x2Au);
        }
      }

      if ([v13 isContentCompletelySynced])
      {
        initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
        messageId = [v13 messageId];
        [initialSyncProgressTracker updateProgressWithContentCompletelySyncedForMessageId:messageId];
      }

      [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:v13];
      [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
    }

    else
    {
      v22 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v43 = idCopy;
        v44 = 2114;
        v45 = contentIdCopy;
        _os_log_impl(&dword_25B19F000, v22, OS_LOG_TYPE_DEFAULT, "Received data to send = nil. MobileMail probably failed downloading it. Ignoring so we can re-try later upon user request (Message Id: %{public}@ - Content Id: %{public}@).", buf, 0x16u);
      }
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)reportWillDownloadFirstMessages
{
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NNMKSyncProvider_reportWillDownloadFirstMessages__block_invoke;
  block[3] = &unk_279935CB0;
  block[4] = self;
  dispatch_async(providerQueue, block);
}

void __51__NNMKSyncProvider_reportWillDownloadFirstMessages__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 72))
  {
    v2 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "MobileMail will download headers for the messages that are part of the #initial-sync. We're ignoring the download for the sake of reporting to PairedSync. Notifying client that we're done sending everything...", v4, 2u);
    }

    v3 = [*(a1 + 32) initialSyncProgressTracker];
    [v3 finishedSendingInitialSyncContentToPairedDevice];
  }
}

- (void)addUpdateOrDeleteAccounts:(id)accounts
{
  accountsCopy = accounts;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__NNMKSyncProvider_addUpdateOrDeleteAccounts___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = accountsCopy;
  v6 = accountsCopy;
  dispatch_async(providerQueue, v7);
}

void __46__NNMKSyncProvider_addUpdateOrDeleteAccounts___block_invoke(uint64_t a1)
{
  v1 = a1;
  v170 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 72);
  if (!v2)
  {
    goto LABEL_83;
  }

  [v2 beginUpdates];
  v3 = [*(*(v1 + 32) + 72) allSyncedAccountsKeyedByAccountId];
  v136 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v3, "count")}];
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  obj = *(v1 + 40);
  v138 = v1;
  v132 = [obj countByEnumeratingWithState:&v152 objects:v169 count:16];
  v126 = v3;
  if (!v132)
  {
    v127 = 0;
    v128 = 0;
    goto LABEL_52;
  }

  v127 = 0;
  v130 = *v153;
  v128 = 0;
  v4 = 0x277CCA000uLL;
  do
  {
    v5 = 0;
    do
    {
      if (*v153 != v130)
      {
        objc_enumerationMutation(obj);
      }

      v134 = v5;
      v6 = *(*(&v152 + 1) + 8 * v5);
      v7 = [v6 accountId];
      [v136 addObject:v7];

      v8 = [v6 accountId];
      v9 = [v3 objectForKeyedSubscript:v8];

      v151 = 0;
      v10 = [*(v1 + 32) persistenceHandler];
      v137 = [v10 updateMailboxListForAccount:v6 mailboxListChanged:&v151];

      if (!v9)
      {
        v9 = [[NNMKSyncedAccount alloc] initWithAccount:v6];
        v38 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v39 = v38;
          v40 = [v6 accountId];
          v41 = [v6 displayName];
          v42 = [v6 shouldArchive];
          v43 = [v6 emailAddresses];
          v44 = [v43 nnmk_description];
          *buf = 138544130;
          v162 = v40;
          v163 = 2114;
          v164 = v41;
          v165 = 1024;
          *v166 = v42;
          *&v166[4] = 2114;
          *&v166[6] = v44;
          _os_log_impl(&dword_25B19F000, v39, OS_LOG_TYPE_DEFAULT, "Account ADDED (Id: %{public}@ - Display Name: %{public}@ - Should Archive: %d - Email addresses: %{public}@).", buf, 0x26u);

          v1 = v138;
        }

        v128 = 1;
        goto LABEL_31;
      }

      v11 = [(NNMKSyncedAccount *)v9 shouldArchive];
      if (v11 == [v6 shouldArchive])
      {
        v12 = *(v4 + 3240);
        v13 = [(NNMKSyncedAccount *)v9 displayName];
        v14 = [v6 displayName];
        if ([v12 isString:v13 equalToNullableString:v14])
        {
          v15 = *(v4 + 3240);
          v16 = [(NNMKSyncedAccount *)v9 username];
          v17 = [v6 username];
          if ([v15 isString:v16 equalToNullableString:v17])
          {
            v122 = v17;
            v123 = v16;
            v18 = MEMORY[0x277CBEB98];
            v19 = [(NNMKSyncedAccount *)v9 emailAddresses];
            v20 = [v18 setWithArray:v19];
            v21 = MEMORY[0x277CBEB98];
            v22 = v20;
            v23 = [v6 emailAddresses];
            v24 = [v21 setWithArray:v23];
            if ([v22 isEqualToSet:v24])
            {
              v121 = v24;
              v25 = *(v4 + 3240);
              v26 = [(NNMKSyncedAccount *)v9 defaultEmailAddress];
              v27 = [v6 defaultEmailAddress];
              v28 = v25;
              v29 = v27;
              if ([v28 isString:v26 equalToNullableString:v27])
              {
                v118 = v29;
                v119 = v26;
                v120 = v22;
                v30 = *(v4 + 3240);
                v31 = [(NNMKSyncedAccount *)v9 typeIdentifier];
                [v6 typeIdentifier];
                v32 = v117 = v31;
                if ([v30 isString:v31 equalToNullableString:?])
                {
                  v33 = *(v4 + 3240);
                  v34 = [(NNMKSyncedAccount *)v9 emailAddressToken];
                  v115 = [v6 emailAddressToken];
                  v116 = v34;
                  v35 = [v33 isString:v34 equalToNullableString:?];
                  v3 = v126;
                  if (v35)
                  {
                    v113 = *(v4 + 3240);
                    v114 = [(NNMKSyncedAccount *)v9 pccEmailAddress];
                    v36 = [v6 pccEmailAddress];
                    v37 = [v113 isString:v114 equalToNullableString:v36] ^ 1;
                  }

                  else
                  {
                    v37 = 1;
                  }
                }

                else
                {
                  v37 = 1;
                  v3 = v126;
                }

                if (v37)
                {
                  v45 = 1;
                  v1 = v138;
                }

                else
                {
                  v1 = v138;
                  if ((v151 & 1) == 0)
                  {
                    v80 = v137;
                    goto LABEL_39;
                  }

                  v45 = 0;
                }

                goto LABEL_24;
              }

              v24 = v121;
            }

            v3 = v126;
            v17 = v122;
            v16 = v123;
          }

          v1 = v138;
        }
      }

      v45 = 1;
LABEL_24:
      v46 = [v6 displayName];
      [(NNMKSyncedAccount *)v9 setDisplayName:v46];

      v47 = [v6 username];
      [(NNMKSyncedAccount *)v9 setUsername:v47];

      -[NNMKSyncedAccount setShouldArchive:](v9, "setShouldArchive:", [v6 shouldArchive]);
      v48 = [v6 emailAddresses];
      [(NNMKSyncedAccount *)v9 setEmailAddresses:v48];

      v49 = [v6 defaultEmailAddress];
      [(NNMKSyncedAccount *)v9 setDefaultEmailAddress:v49];

      v50 = [v6 typeIdentifier];
      [(NNMKSyncedAccount *)v9 setTypeIdentifier:v50];

      v51 = [v6 emailAddressToken];
      [(NNMKSyncedAccount *)v9 setEmailAddressToken:v51];

      v52 = [v6 pccEmailAddress];
      [(NNMKSyncedAccount *)v9 setPccEmailAddress:v52];

      if (v45)
      {
        v53 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v54 = v53;
          v55 = [v6 accountId];
          v56 = [v6 displayName];
          v57 = [v6 username];
          v58 = [v6 shouldArchive];
          v59 = [v6 emailAddresses];
          v60 = [v59 nnmk_description];
          *buf = 138544386;
          v162 = v55;
          v163 = 2114;
          v164 = v56;
          v165 = 2114;
          *v166 = v57;
          *&v166[8] = 1024;
          *&v166[10] = v58;
          v1 = v138;
          v167 = 2114;
          v168 = v60;
          _os_log_impl(&dword_25B19F000, v54, OS_LOG_TYPE_DEFAULT, "Account UPDATED (Id: %{public}@ - Display Name: %{public}@ - Username: %{public}@ - Should Archive: %d - Email addresses: %{public}@).", buf, 0x30u);
        }
      }

      if (v151 == 1)
      {
        v61 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v62 = v61;
          v63 = [v6 accountId];
          v64 = [v137 count];
          *buf = 138543618;
          v162 = v63;
          v163 = 2048;
          v164 = v64;
          _os_log_impl(&dword_25B19F000, v62, OS_LOG_TYPE_DEFAULT, "Account mailboxes UPDATED (Id: %{public}@ - New Mailboxes Count: %lu).", buf, 0x16u);
        }
      }

      v127 = 1;
LABEL_31:
      v65 = objc_alloc_init(NNMKProtoAccountAdditionOrUpdate);
      v66 = [v6 accountId];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setAccountId:v66];

      v67 = [v6 displayName];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setDisplayName:v67];

      -[NNMKProtoAccountAdditionOrUpdate setShouldArchive:](v65, "setShouldArchive:", [v6 shouldArchive]);
      -[NNMKProtoAccountAdditionOrUpdate setFullSyncVersion:](v65, "setFullSyncVersion:", [*(*(v1 + 32) + 72) fullSyncVersion]);
      v68 = [v6 parentAccountIdentifier];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setParentId:v68];

      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v69 = [v6 emailAddresses];
      v70 = [v69 countByEnumeratingWithState:&v147 objects:v160 count:16];
      if (v70)
      {
        v71 = v70;
        v72 = *v148;
        do
        {
          for (i = 0; i != v71; ++i)
          {
            if (*v148 != v72)
            {
              objc_enumerationMutation(v69);
            }

            [(NNMKProtoAccountAdditionOrUpdate *)v65 addEmail:*(*(&v147 + 1) + 8 * i)];
          }

          v71 = [v69 countByEnumeratingWithState:&v147 objects:v160 count:16];
        }

        while (v71);
      }

      v74 = [v6 defaultEmailAddress];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setDefaultEmail:v74];

      v75 = [v6 username];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setUsername:v75];

      v76 = [v6 localId];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setLocalId:v76];

      v77 = [v6 typeIdentifier];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setTypeIdentifier:v77];

      v78 = [v6 emailAddressToken];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setEmailAddressToken:v78];

      v79 = [v6 pccEmailAddress];
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setPccEmailAddress:v79];

      v80 = v137;
      [(NNMKProtoAccountAdditionOrUpdate *)v65 setMailboxes:v137];
      [*(*(v1 + 32) + 72) addOrUpdateSyncedAccount:v9];
      v81 = [*(*(v1 + 32) + 104) addOrUpdateAccount:v65];
      v82 = [*(v1 + 32) resendScheduler];
      v83 = [v6 accountId];
      v159 = v83;
      v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&v159 count:1];
      [v82 registerIDSIdentifier:v81 objectIds:v84 type:@"Account" resendInterval:0];

LABEL_39:
      v5 = v134 + 1;
      v4 = 0x277CCA000;
    }

    while (v134 + 1 != v132);
    v85 = [obj countByEnumeratingWithState:&v152 objects:v169 count:16];
    v132 = v85;
  }

  while (v85);
LABEL_52:

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v131 = [v3 allKeys];
  v86 = [v131 countByEnumeratingWithState:&v143 objects:v158 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v144;
    obja = *v144;
    do
    {
      v89 = 0;
      v129 = v87;
      do
      {
        if (*v144 != v88)
        {
          objc_enumerationMutation(v131);
        }

        v90 = *(*(&v143 + 1) + 8 * v89);
        if (([v136 containsObject:v90] & 1) == 0)
        {
          v135 = v89;
          v91 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v162 = v90;
            _os_log_impl(&dword_25B19F000, v91, OS_LOG_TYPE_DEFAULT, "Account DELETED (Id: %{public}@).", buf, 0xCu);
          }

          v92 = [*(v1 + 32) sessionController];
          [v92 deleteStandaloneStateForAccountId:v90];

          v93 = objc_alloc_init(NNMKProtoAccountDeletion);
          [(NNMKProtoAccountDeletion *)v93 setAccountId:v90];
          v133 = v93;
          -[NNMKProtoAccountDeletion setFullSyncVersion:](v93, "setFullSyncVersion:", [*(*(v1 + 32) + 72) fullSyncVersion]);
          [*(*(v1 + 32) + 72) removeSyncedAccountForAccountWithId:v90];
          v94 = [*(*(v1 + 32) + 72) mailboxesForAccountId:v90];
          v139 = 0u;
          v140 = 0u;
          v141 = 0u;
          v142 = 0u;
          v95 = [v94 countByEnumeratingWithState:&v139 objects:v157 count:16];
          if (v95)
          {
            v96 = v95;
            v97 = *v140;
            do
            {
              for (j = 0; j != v96; ++j)
              {
                if (*v140 != v97)
                {
                  objc_enumerationMutation(v94);
                }

                v99 = *(*(&v139 + 1) + 8 * j);
                v100 = qword_28144D620;
                if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
                {
                  v101 = v100;
                  v102 = [v99 mailboxId];
                  *buf = 138543618;
                  v162 = v102;
                  v163 = 2114;
                  v164 = v90;
                  _os_log_impl(&dword_25B19F000, v101, OS_LOG_TYPE_DEFAULT, "Mailbox DELETED (Id: %{public}@, Account Id: %{public}@).", buf, 0x16u);

                  v1 = v138;
                }

                v103 = *(*(v1 + 32) + 72);
                v104 = [v99 mailboxId];
                [v103 deleteMailboxWithId:v104 startTransaction:0];
              }

              v96 = [v94 countByEnumeratingWithState:&v139 objects:v157 count:16];
            }

            while (v96);
          }

          v105 = [*(*(v1 + 32) + 104) deleteAccount:v133];
          v106 = [*(v1 + 32) resendScheduler];
          v156 = v90;
          v128 = 1;
          v107 = [MEMORY[0x277CBEA60] arrayWithObjects:&v156 count:1];
          [v106 registerIDSIdentifier:v105 objectIds:v107 type:@"Account" resendInterval:0];

          v88 = obja;
          v3 = v126;
          v87 = v129;
          v89 = v135;
        }

        ++v89;
      }

      while (v89 != v87);
      v87 = [v131 countByEnumeratingWithState:&v143 objects:v158 count:16];
    }

    while (v87);
  }

  [*(*(v1 + 32) + 72) endUpdates];
  if ((v128 | v127))
  {
    v108 = qword_28144D630;
    if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v108, OS_LOG_TYPE_DEFAULT, "Requesting watch accounts authentication status from watch due to account update", buf, 2u);
    }

    [*(v1 + 32) _sendWatchAccountStatusRequest];
  }

  if (v128)
  {
    v109 = [*(v1 + 32) syncController];
    v110 = [v109 mailboxWithId:@"-1"];

    if (v110)
    {
      v111 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B19F000, v111, OS_LOG_TYPE_DEFAULT, "Triggering #initial-sync due to account add or deleted.", buf, 2u);
      }

      [*(v1 + 32) _triggerInitialSync];
    }
  }

LABEL_83:
  v112 = *MEMORY[0x277D85DE8];
}

- (void)updateMailboxSelection:(id)selection
{
  selectionCopy = selection;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__NNMKSyncProvider_updateMailboxSelection___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = selectionCopy;
  v6 = selectionCopy;
  dispatch_async(providerQueue, v7);
}

void __43__NNMKSyncProvider_updateMailboxSelection___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) _isPaired])
  {
    return;
  }

  if (([*(a1 + 32) _pairedDeviceSupportsMultipleMailboxes] & 1) == 0 || !objc_msgSend(*(*(a1 + 32) + 72), "fullSyncVersion"))
  {
    v4 = [*(*(a1 + 32) + 72) mailboxWithId:@"-1"];
    v5 = [v4 url];

    v6 = [*(a1 + 40) mailboxesWithAllMessagesSyncEnabled];
    v7 = [v6 count];

    if (v5)
    {
      v8 = v7 == 1;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v10 = [*(a1 + 40) mailboxesWithAllMessagesSyncEnabled];
      v11 = [v10 firstObject];

      v12 = [v11 url];
      v13 = [v4 url];
      v14 = [v12 isEqual:v13];

      if (v14)
      {
LABEL_18:

        return;
      }
    }

    else if ((v5 != 0) == (v7 == 1))
    {
      v9 = [v4 filterType];
      if (v9 == [*(a1 + 40) aggregatedMailboxesFilterTypes])
      {
        goto LABEL_18;
      }
    }

    v15 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_25B19F000, v15, OS_LOG_TYPE_DEFAULT, "Synced mailbox changed. Triggering #initial-sync", v16, 2u);
    }

    [*(a1 + 32) _triggerInitialSync];
    goto LABEL_18;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  [v2 _updateMailboxSelection:v3 notifyClient:1];
}

- (void)updateVIPSenderList:(id)list requestContext:(id)context
{
  listCopy = list;
  contextCopy = context;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__NNMKSyncProvider_updateVIPSenderList_requestContext___block_invoke;
  block[3] = &unk_279936098;
  v12 = listCopy;
  selfCopy = self;
  v14 = contextCopy;
  v9 = contextCopy;
  v10 = listCopy;
  dispatch_async(providerQueue, block);
}

void __55__NNMKSyncProvider_updateVIPSenderList_requestContext___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v10 = 134217984;
    v11 = [v3 count];
    _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "Received VIP List. Count: %lu", &v10, 0xCu);
  }

  v5 = [*(a1 + 40) accountsSyncService];
  v6 = [NNMKProtoVIPSenderList protoVIPList:*(a1 + 32)];
  v7 = [v5 syncVIPList:v6];

  v8 = [*(a1 + 40) resendScheduler];
  [v8 registerIDSIdentifier:v7 objectIds:0 type:@"VIPList" resendInterval:{objc_msgSend(*(a1 + 48), "resendInterval")}];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateMailboxSelection:(id)selection notifyClient:(BOOL)client
{
  clientCopy = client;
  v71 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  v6 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v68 = clientCopy;
    _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Mailbox selection changed. (Notify client: %lu)", buf, 0xCu);
  }

  v7 = [NNMKMailboxSelection alloc];
  syncEnabledMailboxes = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncEnabledMailboxes];
  v9 = [(NNMKMailboxSelection *)v7 initWithMailboxes:syncEnabledMailboxes];

  if ([(NNMKMailboxSelection *)v9 isEqual:selectionCopy])
  {
    v10 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Requested to udpate mailbox selection, but it has not changed. Ignoring.", buf, 2u);
    }
  }

  else
  {
    if (clientCopy)
    {
      v11 = +[NNMKAnalytics sharedInstance];
      [v11 reportMailboxSelectionChanged:selectionCopy source:0];
    }

    v12 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v68 = selectionCopy;
      v69 = 2114;
      v70 = v9;
      _os_log_impl(&dword_25B19F000, v12, OS_LOG_TYPE_DEFAULT, "New Selection: [%{public}@], Previous Selection: [%{public}@]", buf, 0x16u);
    }

    syncController = [(NNMKSyncProvider *)self syncController];
    v14 = [syncController removeInvalidMailboxesFromMailboxSelection:selectionCopy];

    v53 = v14;
    v15 = [NNMKMailboxSelection mailboxChangesApplyingSelection:v14 previousSelection:v9];
    v16 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      mailboxesToUpdate = [v15 mailboxesToUpdate];
      nnmk_description = [mailboxesToUpdate nnmk_description];
      *buf = 138543362;
      v68 = nnmk_description;
      _os_log_impl(&dword_25B19F000, v17, OS_LOG_TYPE_DEFAULT, "Mailboxes to update. %{public}@", buf, 0xCu);
    }

    v20 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      mailboxesToReSync = [v15 mailboxesToReSync];
      nnmk_description2 = [mailboxesToReSync nnmk_description];
      *buf = 138543362;
      v68 = nnmk_description2;
      _os_log_impl(&dword_25B19F000, v21, OS_LOG_TYPE_DEFAULT, "Mailboxes to re-sync. %{public}@", buf, 0xCu);
    }

    v54 = v9;
    v24 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      mailboxesToDisableSync = [v15 mailboxesToDisableSync];
      nnmk_description3 = [mailboxesToDisableSync nnmk_description];
      *buf = 138543362;
      v68 = nnmk_description3;
      _os_log_impl(&dword_25B19F000, v25, OS_LOG_TYPE_DEFAULT, "Mailboxes to disable sync. %{public}@", buf, 0xCu);
    }

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v55 = v15;
    mailboxesToUpdate2 = [v15 mailboxesToUpdate];
    v29 = [mailboxesToUpdate2 countByEnumeratingWithState:&v61 objects:v66 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v62;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v62 != v31)
          {
            objc_enumerationMutation(mailboxesToUpdate2);
          }

          v33 = *(*(&v61 + 1) + 8 * i);
          pairedDeviceRegistry = self->_pairedDeviceRegistry;
          mailboxId = [v33 mailboxId];
          v36 = [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry mailboxWithId:mailboxId];

          [v33 setSyncActive:{objc_msgSend(v36, "syncActive")}];
          if ([v33 syncRequested])
          {
            [v33 setSyncEnabled:1];
            if (!clientCopy)
            {
              [v33 setSyncRequested:0];
            }
          }

          v37 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v68 = v33;
            _os_log_impl(&dword_25B19F000, v37, OS_LOG_TYPE_DEFAULT, "Updating mailbox. %{public}@", buf, 0xCu);
          }

          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateMailbox:v33];
        }

        v30 = [mailboxesToUpdate2 countByEnumeratingWithState:&v61 objects:v66 count:16];
      }

      while (v30);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    mailboxesToDisableSync2 = [v55 mailboxesToDisableSync];
    v39 = [mailboxesToDisableSync2 countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v58;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v58 != v41)
          {
            objc_enumerationMutation(mailboxesToDisableSync2);
          }

          v43 = *(*(&v57 + 1) + 8 * j);
          v44 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v68 = v43;
            _os_log_impl(&dword_25B19F000, v44, OS_LOG_TYPE_DEFAULT, "Disabling sync for mailbox. %{public}@", buf, 0xCu);
          }

          [v43 setSyncEnabled:0];
          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry updateSyncEnabledForMailbox:v43];
          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry cleanUpForFullSyncWithMailbox:v43];
        }

        v40 = [mailboxesToDisableSync2 countByEnumeratingWithState:&v57 objects:v65 count:16];
      }

      while (v40);
    }

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
    if (clientCopy)
    {
      [(NNMKSyncProvider *)self _sendUpdatedMailboxSelection:[(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion]];
    }

    mailboxesToReSync2 = [v55 mailboxesToReSync];
    v46 = [mailboxesToReSync2 count];

    v9 = v54;
    if (v46)
    {
      v47 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        v48 = v47;
        mailboxesToReSync3 = [v55 mailboxesToReSync];
        nnmk_description4 = [mailboxesToReSync3 nnmk_description];
        *buf = 138543362;
        v68 = nnmk_description4;
        _os_log_impl(&dword_25B19F000, v48, OS_LOG_TYPE_DEFAULT, "Triggering #full-sync for mailboxes due to mailbox-selection changed. %{public}@", buf, 0xCu);
      }

      mailboxesToReSync4 = [v55 mailboxesToReSync];
      [(NNMKSyncProvider *)self _triggerFullSyncForMailboxes:mailboxesToReSync4];
    }

    selectionCopy = v53;
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (void)_sendUpdatedMailboxSelection:(unint64_t)selection resendInterval:(unint64_t)interval
{
  v7 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_25B19F000, v7, OS_LOG_TYPE_DEFAULT, "Sending updated mailbox selection.", v14, 2u);
  }

  v8 = [NNMKMailboxSelection alloc];
  syncEnabledMailboxes = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncEnabledMailboxes];
  v10 = [(NNMKMailboxSelection *)v8 initWithMailboxes:syncEnabledMailboxes];

  v11 = [NNMKProtoMailboxSelection protoMailboxSelectionFromMailboxSelection:v10 fullSyncVersion:selection];
  v12 = [(NNMKMessagesSyncServiceServer *)self->_messagesSyncService updateMailboxSelection:v11];
  resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
  [resendScheduler registerIDSIdentifier:v12 objectIds:0 type:@"MailboxSelection" resendInterval:interval];
}

- (void)notifyFetchCompleted
{
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NNMKSyncProvider_notifyFetchCompleted__block_invoke;
  block[3] = &unk_279935CB0;
  block[4] = self;
  dispatch_async(providerQueue, block);
}

uint64_t __40__NNMKSyncProvider_notifyFetchCompleted__block_invoke(uint64_t a1)
{
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "#FETCH Manual Completed.", v6, 2u);
  }

  v3 = *(*(a1 + 32) + 112);
  v4 = objc_alloc_init(NNMKProtoFetchRequestCompletedNotification);
  [v3 notifyFetchRequestCompleted:v4];

  return [*(a1 + 32) _checkBatchFetchedMessages];
}

- (void)notifyFetchCompletedForMailboxId:(id)id error:(id)error
{
  idCopy = id;
  errorCopy = error;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__NNMKSyncProvider_notifyFetchCompletedForMailboxId_error___block_invoke;
  block[3] = &unk_279936098;
  v12 = idCopy;
  v13 = errorCopy;
  selfCopy = self;
  v9 = errorCopy;
  v10 = idCopy;
  dispatch_async(providerQueue, block);
}

void __59__NNMKSyncProvider_notifyFetchCompletedForMailboxId_error___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40) != 0;
    v7 = 138543618;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "#FETCH Manual Completed (mailboxId: %{public}@, error: %d)", &v7, 0x12u);
  }

  v5 = objc_alloc_init(NNMKProtoFetchRequestCompletedNotification);
  [(NNMKProtoFetchRequestCompletedNotification *)v5 setMailboxId:*(a1 + 32)];
  [(NNMKProtoFetchRequestCompletedNotification *)v5 setFailed:*(a1 + 40) != 0];
  [*(*(a1 + 48) + 112) notifyFetchRequestCompleted:v5];
  [*(a1 + 48) _checkBatchFetchedMessages];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)bulletinFlagsForMessageStatus:(unint64_t)status dateReceived:(id)received messageWillBeAddedToSyncProvider:(BOOL)provider mailboxId:(id)id
{
  receivedCopy = received;
  idCopy = id;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  providerQueue = self->_providerQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __106__NNMKSyncProvider_bulletinFlagsForMessageStatus_dateReceived_messageWillBeAddedToSyncProvider_mailboxId___block_invoke;
  v17[3] = &unk_2799367F8;
  v17[4] = self;
  v18 = idCopy;
  providerCopy = provider;
  v20 = &v23;
  statusCopy = status;
  v19 = receivedCopy;
  v13 = receivedCopy;
  v14 = idCopy;
  dispatch_sync(providerQueue, v17);
  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

void __106__NNMKSyncProvider_bulletinFlagsForMessageStatus_dateReceived_messageWillBeAddedToSyncProvider_mailboxId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  v7 = [v2 mailboxWithId:*(a1 + 40)];

  if (*(a1 + 72) == 1 && [v7 syncActive] && objc_msgSend(v7, "filterType") && (objc_msgSend(*(a1 + 32), "syncController"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isValidMessageStatus:forMailbox:", *(a1 + 64), v7), v3, v4))
  {
    if ([v7 filterType] == 64)
    {
      v5 = [*(a1 + 48) nnmk_isToday];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [*(*(*(a1 + 56) + 8) + 40) setObject:v6 forKeyedSubscript:@"MessageWillBeSynced"];
}

- (BOOL)isPaired
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  providerQueue = self->_providerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__NNMKSyncProvider_isPaired__block_invoke;
  v5[3] = &unk_2799362E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(providerQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __28__NNMKSyncProvider_isPaired__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isPaired];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NNMKMailboxSelection)mailboxSelection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  providerQueue = self->_providerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__NNMKSyncProvider_mailboxSelection__block_invoke;
  v5[3] = &unk_2799362E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(providerQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__NNMKSyncProvider_mailboxSelection__block_invoke(uint64_t a1)
{
  v2 = [NNMKMailboxSelection alloc];
  v6 = [*(*(a1 + 32) + 72) syncEnabledMailboxes];
  v3 = [(NNMKMailboxSelection *)v2 initWithMailboxes:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)syncedMailboxes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  providerQueue = self->_providerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__NNMKSyncProvider_syncedMailboxes__block_invoke;
  v5[3] = &unk_2799362E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(providerQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __35__NNMKSyncProvider_syncedMailboxes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) syncEnabledMailboxes];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)containsSyncedMailbox:(id)mailbox
{
  v24 = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  [(NNMKSyncProvider *)self syncedMailboxes];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        mailboxId = [v10 mailboxId];
        mailboxId2 = [v10 mailboxId];
        v13 = [mailboxId isEqual:mailboxId2];

        if (v13)
        {
          LOBYTE(v14) = 1;
          firstObject = v5;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if ([(NNMKSyncProvider *)self _pairedDeviceSupportsMultipleMailboxes])
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    firstObject = [v5 firstObject];
    v18 = [firstObject url];

    if (v18)
    {
      LOBYTE(v14) = 0;
    }

    else
    {
      v14 = [mailboxCopy type] == 1;
    }

LABEL_12:
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)syncStandaloneAccountIdentity:(id)identity
{
  identityCopy = identity;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__NNMKSyncProvider_syncStandaloneAccountIdentity___block_invoke;
  v7[3] = &unk_279935CD8;
  v7[4] = self;
  v8 = identityCopy;
  v6 = identityCopy;
  dispatch_async(providerQueue, v7);
}

- (id)watchAccounts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  providerQueue = self->_providerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__NNMKSyncProvider_watchAccounts__block_invoke;
  v5[3] = &unk_2799362E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(providerQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __33__NNMKSyncProvider_watchAccounts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _watchAccounts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)requestWatchAccounts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  providerQueue = self->_providerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__NNMKSyncProvider_requestWatchAccounts__block_invoke;
  v5[3] = &unk_2799362E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(providerQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__NNMKSyncProvider_requestWatchAccounts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _watchAccounts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NNMKSyncProvider_requestWatchAccounts__block_invoke_2;
  block[3] = &unk_279935CB0;
  block[4] = v5;
  dispatch_async(v6, block);
}

uint64_t __40__NNMKSyncProvider_requestWatchAccounts__block_invoke_2(uint64_t a1)
{
  v2 = qword_28144D630;
  if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "Requesting watch accounts authentication status from watch", v4, 2u);
  }

  return [*(a1 + 32) _sendWatchAccountStatusRequest];
}

- (id)_watchAccounts
{
  allSyncedAccountsKeyedByAccountId = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry allSyncedAccountsKeyedByAccountId];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(allSyncedAccountsKeyedByAccountId, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__NNMKSyncProvider__watchAccounts__block_invoke;
  v9[3] = &unk_279936820;
  v9[4] = self;
  v5 = v4;
  v10 = v5;
  [allSyncedAccountsKeyedByAccountId enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __34__NNMKSyncProvider__watchAccounts__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [a3 account];
  v4 = [*(a1 + 32) sessionController];
  v5 = [v6 accountId];
  [v6 setStandaloneState:{objc_msgSend(v4, "standaloneStateForAccountId:", v5)}];

  [*(a1 + 40) addObject:v6];
}

- (void)_sendStandaloneAccountIdentity:(id)identity resendInterval:(unint64_t)interval
{
  v25 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
  v8 = [persistenceHandler addStandaloneAccountIdentity:identityCopy];

  if (v8)
  {
    v9 = qword_28144D630;
    if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      accountId = [identityCopy accountId];
      *buf = 138543362;
      v24 = accountId;
      _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Sending standalone account identity: %{public}@", buf, 0xCu);
    }

    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    [(NNMKSyncSessionController *)self->_sessionController setAccountAuthRequestLastRequestTime:?];

    sessionController = [(NNMKSyncProvider *)self sessionController];
    syncingAccountIdentityByUsername = [sessionController syncingAccountIdentityByUsername];
    username = [identityCopy username];
    [syncingAccountIdentityByUsername setObject:identityCopy forKeyedSubscript:username];

    accountsSyncService = [(NNMKSyncProvider *)self accountsSyncService];
    v17 = [accountsSyncService sendStandaloneAccountIdentity:v8];

    resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
    username2 = [identityCopy username];
    v22 = username2;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [resendScheduler registerIDSIdentifier:v17 objectIds:v20 type:@"AccountIdentity" resendInterval:interval];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_sendWatchAccountStatusRequest
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  [(NNMKSyncSessionController *)self->_sessionController setAccountAuthRequestLastRequestTime:?];

  accountsSyncService = [(NNMKSyncProvider *)self accountsSyncService];
  persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
  [(NNMKSyncSessionController *)self->_sessionController accountAuthRequestLastRequestTime];
  v5 = [persistenceHandler addAccountAuthenticationStatusRequest:?];
  v6 = [accountsSyncService requestWatchAccountsStatus:v5];
}

- (BOOL)organizeByThread
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  providerQueue = self->_providerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__NNMKSyncProvider_organizeByThread__block_invoke;
  v5[3] = &unk_2799362E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(providerQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __36__NNMKSyncProvider_organizeByThread__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) organizeByThread];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setOrganizeByThread:(BOOL)thread
{
  providerQueue = self->_providerQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__NNMKSyncProvider_setOrganizeByThread___block_invoke;
  v4[3] = &unk_279936848;
  v4[4] = self;
  threadCopy = thread;
  dispatch_sync(providerQueue, v4);
}

void __40__NNMKSyncProvider_setOrganizeByThread___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    v3 = [v2 organizeByThread];
    v4 = *(a1 + 40);
    if (v4 != v3)
    {
      [*(*(a1 + 32) + 72) setOrganizeByThread:v4 & 1];
      v5 = [*(*(a1 + 32) + 72) allSyncedAccountsKeyedByAccountId];
      v6 = [v5 count];

      if (v6)
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 56);
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __40__NNMKSyncProvider_setOrganizeByThread___block_invoke_2;
        v9[3] = &unk_279936848;
        v10 = *(a1 + 40);
        v9[4] = v7;
        dispatch_async(v8, v9);
      }

      else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
      {
        __40__NNMKSyncProvider_setOrganizeByThread___block_invoke_cold_1((a1 + 40));
      }
    }
  }
}

uint64_t __40__NNMKSyncProvider_setOrganizeByThread___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "Triggering #initial-sync because organized by thread flag changed. %lu", &v6, 0xCu);
  }

  result = [*(a1 + 32) _triggerInitialSync];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (NNMKPairedDeviceInfo)pairedDeviceInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  providerQueue = self->_providerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__NNMKSyncProvider_pairedDeviceInfo__block_invoke;
  v5[3] = &unk_2799362E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(providerQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__NNMKSyncProvider_pairedDeviceInfo__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 72) deviceScreenWidth];
  v3 = v2;
  [*(*(a1 + 32) + 72) deviceScreenScale];
  v5 = [NNMKPairedDeviceInfo pairedDeviceInfoWithScreenWidth:v3 screenScale:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(*(a1 + 32) + 72) deviceScreenWidth];
  if (v8 == 0.0 || (result = [*(*(a1 + 32) + 72) deviceScreenScale], v10 != 0.0))
  {
    [*(a1 + 32) _storeScreenRelatedValues];
    [*(*(a1 + 32) + 72) deviceScreenWidth];
    v12 = v11;
    [*(*(a1 + 32) + 72) deviceScreenScale];
    v14 = [NNMKPairedDeviceInfo pairedDeviceInfoWithScreenWidth:v12 screenScale:v13];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)resendObjectsForIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
  [resendScheduler resendObjectsForIDSIdentifier:identifierCopy];
}

- (void)messagesSyncServiceServer:(id)server didSendProtobufSuccessfullyWithIDSIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
  isTrackingInitialSync = [initialSyncProgressTracker isTrackingInitialSync];

  if (isTrackingInitialSync)
  {
    resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
    v9 = [resendScheduler messageTypeForIDSIdentifier:identifierCopy];

    if ([v9 isEqualToString:@"InitialSync"])
    {
      initialSyncProgressTracker2 = [(NNMKSyncProvider *)self initialSyncProgressTracker];
      [initialSyncProgressTracker2 updateProgressWithMessageHeadersArrivedInPairedDevice];

      v11 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = identifierCopy;
        _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "#full-sync sent successfully by IDS (IDS Identifier: %{public}@).", &v14, 0xCu);
      }
    }

    else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
    {
      [NNMKSyncProvider messagesSyncServiceServer:didSendProtobufSuccessfullyWithIDSIdentifier:];
    }
  }

  resendScheduler2 = [(NNMKSyncProvider *)self resendScheduler];
  [resendScheduler2 handleIDSMessageSentSuccessfullyWithId:identifierCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)messagesSyncServiceServerSpaceBecameAvailable:(id)available
{
  v4 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "IDS Reported Space Became Available.", v6, 2u);
  }

  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry prepareIDSIdentifiersForResendForErrorCode:27];
  datesForIDSIdentifiersScheduledToBeResent = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry datesForIDSIdentifiersScheduledToBeResent];
  [(NNMKSyncEndpoint *)self enqueueIDSIdentifiersForResend:datesForIDSIdentifiersScheduledToBeResent];
}

- (void)messagesSyncServiceServerConnectivityChanged:(id)changed
{
  v14 = *MEMORY[0x277D85DE8];
  _isConnectedToWatch = [(NNMKSyncProvider *)self _isConnectedToWatch];
  v5 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_INFO))
  {
    messagesSyncService = self->_messagesSyncService;
    v7 = v5;
    v11[0] = 67109376;
    v11[1] = _isConnectedToWatch;
    v12 = 2048;
    connectivityState = [(NNMKSyncServiceEndpoint *)messagesSyncService connectivityState];
    _os_log_impl(&dword_25B19F000, v7, OS_LOG_TYPE_INFO, "Connectivity changed (Connected: %d - Connectivity type: %lu)", v11, 0x12u);
  }

  sessionController = [(NNMKSyncProvider *)self sessionController];
  [sessionController setDeviceInStandalone:{-[NNMKSyncProvider _isUsingCompaionSync](self, "_isUsingCompaionSync") ^ 1}];

  [(NNMKSyncProvider *)self _checkConnectivityBasedSuspensionTimer:_isConnectedToWatch];
  if (_isConnectedToWatch)
  {
    resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
    [resendScheduler forceRetryingAllPendingIDSMessages];
  }

  else
  {
    [(NNMKSyncEndpoint *)self clearResendQueue];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)messagesSyncServiceServer:(id)server didUpdateMessagesStatus:(id)status
{
  v63 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  pairedDeviceRegistry = self->_pairedDeviceRegistry;
  syncController = [(NNMKSyncProvider *)self syncController];
  messageStatusUpdates = [statusCopy messageStatusUpdates];
  firstObject = [messageStatusUpdates firstObject];
  messageId = [firstObject messageId];
  v11 = [syncController messageIdFromWatchMessageId:messageId];
  v12 = [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry syncedMessageForMessageWithId:v11];

  syncController2 = [(NNMKSyncProvider *)self syncController];
  mailboxId = [v12 mailboxId];
  v15 = [syncController2 mailboxWithId:mailboxId];

  if (v15 && -[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:mailbox:](self, "_verifyDatabaseOkForFullSyncVersion:mailbox:", [statusCopy fullSyncVersion], v15))
  {
    v43 = v15;
    v44 = v12;
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
    v47 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(statusCopy, "messageStatusUpdatesCount")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v45 = statusCopy;
    obj = [statusCopy messageStatusUpdates];
    v16 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = v16;
    v18 = *v49;
    while (1)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v48 + 1) + 8 * i);
        syncController3 = [(NNMKSyncProvider *)self syncController];
        messageId2 = [v20 messageId];
        v23 = [syncController3 messageIdFromWatchMessageId:messageId2];

        v24 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncedMessageForMessageWithId:v23];
        if (!v24)
        {
          v34 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v35 = v34;
            v36 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v20 updatedStatus]);
            *buf = 138543618;
            v53 = v23;
            v54 = 2112;
            v55 = v36;
            _os_log_impl(&dword_25B19F000, v35, OS_LOG_TYPE_DEFAULT, "Message Status UPDATED but we don't have it in our records. Updating anyway... (Id: %{public}@ - Status: %@ - Source: Watch).", buf, 0x16u);
          }

          goto LABEL_17;
        }

        statusVersion = [v20 statusVersion];
        statusVersion2 = [v24 statusVersion];
        v27 = qword_28144D620;
        v28 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
        if (statusVersion2 <= statusVersion)
        {
          if (v28)
          {
            v37 = v27;
            v38 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v20 updatedStatus]);
            *buf = 138543618;
            v53 = v23;
            v54 = 2112;
            v55 = v38;
            _os_log_impl(&dword_25B19F000, v37, OS_LOG_TYPE_DEFAULT, "Message Status UPDATED (Id: %{public}@ - Status: %@ - Source: Watch).", buf, 0x16u);
          }

          [v24 setStatus:{objc_msgSend(v20, "updatedStatus")}];
          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:v24];
LABEL_17:
          v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v20, "updatedStatus")}];
          [v47 setObject:v29 forKeyedSubscript:v23];
          goto LABEL_18;
        }

        if (!v28)
        {
          goto LABEL_19;
        }

        v29 = v27;
        v30 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v20 updatedStatus]);
        v31 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v24 status]);
        statusVersion3 = [v20 statusVersion];
        statusVersion4 = [v24 statusVersion];
        *buf = 138544386;
        v53 = v23;
        v54 = 2112;
        v55 = v30;
        v56 = 2112;
        v57 = v31;
        v58 = 2048;
        v59 = statusVersion3;
        v60 = 2048;
        v61 = statusVersion4;
        _os_log_impl(&dword_25B19F000, v29, OS_LOG_TYPE_DEFAULT, "Message Status UPDATED but version is outdated (Id: %{public}@ - Status: %@ - Local Status: %@ - Client Version: %lu - Local Version: %lu - Source: Watch).", buf, 0x34u);

LABEL_18:
LABEL_19:
      }

      v17 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
      if (!v17)
      {
LABEL_21:

        [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
        if ([v47 count])
        {
          [(NNMKSyncProvider *)self _notifyDelegateThatMessagesStatusWereUpdated:v47];
        }

        v12 = v44;
        statusCopy = v45;
        v15 = v43;
        goto LABEL_26;
      }
    }
  }

  v39 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v40 = v39;
    messageId3 = [v12 messageId];
    *buf = 138543362;
    v53 = messageId3;
    _os_log_impl(&dword_25B19F000, v40, OS_LOG_TYPE_DEFAULT, "Message Status DROPPED (Id: %{public}@ - Source: Watch).", buf, 0xCu);
  }

LABEL_26:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)messagesSyncServiceServer:(id)server didDeleteMessages:(id)messages
{
  v55 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  messageDeletions = [messagesCopy messageDeletions];
  firstObject = [messageDeletions firstObject];
  messageId = [firstObject messageId];

  pairedDeviceRegistry = self->_pairedDeviceRegistry;
  syncController = [(NNMKSyncProvider *)self syncController];
  v11 = [syncController messageIdFromWatchMessageId:messageId];
  v12 = [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry syncedMessageForMessageWithId:v11];

  syncController2 = [(NNMKSyncProvider *)self syncController];
  mailboxId = [v12 mailboxId];
  v15 = [syncController2 mailboxWithId:mailboxId];

  if (-[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:mailbox:](self, "_verifyDatabaseOkForFullSyncVersion:mailbox:", [messagesCopy fullSyncVersion], v15))
  {
    v40 = v15;
    v41 = v12;
    v42 = messageId;
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(messagesCopy, "messageDeletionsCount")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v43 = messagesCopy;
    obj = [messagesCopy messageDeletions];
    v17 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v17)
    {
      v18 = v17;
      v45 = *v47;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v47 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v46 + 1) + 8 * i);
          syncController3 = [(NNMKSyncProvider *)self syncController];
          messageId2 = [v20 messageId];
          v23 = [syncController3 messageIdFromWatchMessageId:messageId2];

          v24 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncedMessageForMessageWithId:v23];
          v25 = qword_28144D620;
          v26 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
          if (v24)
          {
            if (v26)
            {
              v27 = v25;
              deletionState = [v20 deletionState];
              *buf = 138543618;
              v52 = v23;
              v53 = 2048;
              *v54 = deletionState;
              _os_log_impl(&dword_25B19F000, v27, OS_LOG_TYPE_DEFAULT, "Message DELETED from Client (Id: %{public}@ - Deletion State: %lu).", buf, 0x16u);
            }

            [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry removeSyncedMessageForMessageWithId:v23];
            sessionController = [(NNMKSyncProvider *)self sessionController];
            messageIdsToIgnoreStatusUpdates = [sessionController messageIdsToIgnoreStatusUpdates];
            [messageIdsToIgnoreStatusUpdates addObject:v23];
          }

          else if (v26)
          {
            v31 = v25;
            deletionState2 = [v20 deletionState];
            *buf = 138543618;
            v52 = v23;
            v53 = 2048;
            *v54 = deletionState2;
            _os_log_impl(&dword_25B19F000, v31, OS_LOG_TYPE_DEFAULT, "Message DELETED from Client but we don't have it in our records. Deleting anyway... (Id: %{public}@ - Deletion State: %lu).", buf, 0x16u);
          }

          sessionController2 = [(NNMKSyncProvider *)self sessionController];
          notificationPayloadAcks = [sessionController2 notificationPayloadAcks];
          [notificationPayloadAcks removeObjectForKey:v23];

          [(NNMKSyncProvider *)self _requestDelegateToStopDownloadingMessageElementsForMessageWithId:v23];
          v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v20, "deletionState")}];
          [v16 setObject:v35 forKeyedSubscript:v23];
        }

        v18 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v18);
    }

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
    if ([v16 count])
    {
      [(NNMKSyncProvider *)self _notifyDelegateThatMessagesStatusWereUpdated:v16];
    }

    messageId = v42;
    messagesCopy = v43;
    v15 = v40;
    v12 = v41;
  }

  else
  {
    v36 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      v38 = v36;
      mailboxId2 = [v12 mailboxId];
      *buf = 138543874;
      v52 = mailboxId2;
      v53 = 1024;
      *v54 = v15 != 0;
      *&v54[4] = 2114;
      *&v54[6] = messageId;
      _os_log_error_impl(&dword_25B19F000, v38, OS_LOG_TYPE_ERROR, "Ignoring deletion. Mailbox: %{public}@ (exists: %d), messageId: %{public}@", buf, 0x1Cu);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)messagesSyncServiceServer:(id)server didRequestSendMessage:(id)message
{
  v37 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([messageCopy hasComposedMessageId] & 1) != 0 || objc_msgSend(messageCopy, "tosCount") || objc_msgSend(messageCopy, "ccsCount") || (objc_msgSend(messageCopy, "hasSubject"))
  {
    v6 = objc_alloc_init(NNMKComposedMessage);
    if ([messageCopy hasComposedMessageId])
    {
      composedMessageId = [messageCopy composedMessageId];
      [(NNMKComposedMessage *)v6 setComposedMessageId:composedMessageId];
    }

    else
    {
      composedMessageId = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [composedMessageId UUIDString];
      [(NNMKComposedMessage *)v6 setComposedMessageId:uUIDString];
    }

    -[NNMKComposedMessage setSendingType:](v6, "setSendingType:", [messageCopy sendingType]);
    v9 = [messageCopy tos];
    [(NNMKComposedMessage *)v6 setTo:v9];

    v10 = [messageCopy ccs];
    [(NNMKComposedMessage *)v6 setCc:v10];

    subject = [messageCopy subject];
    [(NNMKComposedMessage *)v6 setSubject:subject];

    from = [messageCopy from];
    [(NNMKComposedMessage *)v6 setFrom:from];

    body = [messageCopy body];
    [(NNMKComposedMessage *)v6 setBody:body];

    if ([messageCopy hasReferenceMessageId])
    {
      syncController = [(NNMKSyncProvider *)self syncController];
      referenceMessageId = [messageCopy referenceMessageId];
      v16 = [syncController messageIdFromWatchMessageId:referenceMessageId];
      [(NNMKComposedMessage *)v6 setReferenceMessageId:v16];
    }

    else
    {
      [(NNMKComposedMessage *)v6 setReferenceMessageId:&stru_286C69F68];
    }

    if ([messageCopy hasIncludeAttachments])
    {
      includeAttachments = [messageCopy includeAttachments];
    }

    else
    {
      includeAttachments = 0;
    }

    [(NNMKComposedMessage *)v6 setIncludeAttachments:includeAttachments];
    accountId = [messageCopy accountId];
    [(NNMKComposedMessage *)v6 setAccountId:accountId];

    pairedDeviceRegistry = self->_pairedDeviceRegistry;
    composedMessageId2 = [(NNMKComposedMessage *)v6 composedMessageId];
    [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry setProgress:0 forComposedMessageWithId:composedMessageId2];

    if ([messageCopy includeAttachments])
    {
      v21 = self->_pairedDeviceRegistry;
      composedMessageId3 = [(NNMKComposedMessage *)v6 composedMessageId];
      v23 = [(NNMKDeviceSyncRegistry *)v21 attachmentsForComposedMessageId:composedMessageId3];

      if (!v23)
      {
        [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry storePendingComposedMessage:v6];
        v30 = qword_28144D620;
        if (!os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        v25 = v30;
        composedMessageId4 = [messageCopy composedMessageId];
        v31 = 138543362;
        v32 = composedMessageId4;
        _os_log_impl(&dword_25B19F000, v25, OS_LOG_TYPE_DEFAULT, "Waiting to send Composed Message until attachment recieved (Composed Message Id: %{public}@).", &v31, 0xCu);
        goto LABEL_19;
      }

      [(NNMKComposedMessage *)v6 setAttachments:v23];
    }

    [(NNMKSyncProvider *)self _requestDelegateToSendComposedMessage:v6];
    v24 = qword_28144D620;
    if (!os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:

      goto LABEL_21;
    }

    v25 = v24;
    composedMessageId4 = [(NNMKComposedMessage *)v6 composedMessageId];
    sendingType = [(NNMKComposedMessage *)v6 sendingType];
    referenceMessageId2 = [(NNMKComposedMessage *)v6 referenceMessageId];
    v31 = 138543874;
    v32 = composedMessageId4;
    v33 = 2048;
    v34 = sendingType;
    v35 = 2114;
    v36 = referenceMessageId2;
    _os_log_impl(&dword_25B19F000, v25, OS_LOG_TYPE_DEFAULT, "Composed Message SENT from Client (Composed Message Id: %{public}@, Send Type: %lu - Message Id: %{public}@).", &v31, 0x20u);

LABEL_19:
    goto LABEL_20;
  }

  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKSyncProvider messagesSyncServiceServer:didRequestSendMessage:];
  }

LABEL_21:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)messagesSyncServiceServer:(id)server didUpdateMailboxSelection:(id)selection
{
  selectionCopy = selection;
  if (-[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:](self, "_verifyDatabaseOkForFullSyncVersion:", [selectionCopy fullSyncVersion]))
  {
    mailboxSelection = [selectionCopy mailboxSelection];
    v7 = [NNMKMailboxSelection alloc];
    syncEnabledMailboxes = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncEnabledMailboxes];
    v9 = [(NNMKMailboxSelection *)v7 initWithMailboxes:syncEnabledMailboxes];

    if ([(NNMKMailboxSelection *)v9 isEqual:mailboxSelection])
    {
      v10 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Requested to update mailbox selection but no changes was found. Ignoring.", v14, 2u);
      }
    }

    else
    {
      [(NNMKSyncProvider *)self _updateMailboxSelection:mailboxSelection notifyClient:0];
      delegate = [(NNMKSyncProvider *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        delegate2 = [(NNMKSyncProvider *)self delegate];
        [delegate2 syncProvider:self didUpdateMailboxSelection:mailboxSelection];
      }
    }
  }
}

- (void)messagesSyncServiceServer:(id)server didMoveMessages:(id)messages
{
  v43 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  syncController = [(NNMKSyncProvider *)self syncController];
  mailboxId = [messagesCopy mailboxId];
  v8 = [syncController mailboxWithId:mailboxId];

  v32 = -[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:mailbox:](self, "_verifyDatabaseOkForFullSyncVersion:mailbox:", [messagesCopy fullSyncVersion], v8);
  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = messagesCopy;
  obj = [messagesCopy messageIds];
  v9 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        syncController2 = [(NNMKSyncProvider *)self syncController];
        v15 = [syncController2 messageIdFromWatchMessageId:v13];

        v16 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncedMessageForMessageWithId:v15];
        v17 = qword_28144D620;
        v18 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
        if (v16)
        {
          if (v32)
          {
            if (v18)
            {
              v19 = v17;
              mailboxId2 = [v33 mailboxId];
              *buf = 138543618;
              v39 = v13;
              v40 = 2114;
              v41 = mailboxId2;
              _os_log_impl(&dword_25B19F000, v19, OS_LOG_TYPE_DEFAULT, "Message MOVED from Client (Id: %{public}@ - mailboxId: %{public}@).", buf, 0x16u);
            }

            mailboxId3 = [v33 mailboxId];
            [v16 setMailboxId:mailboxId3];

            [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:v16];
          }

          else
          {
            if (v18)
            {
              v24 = v17;
              mailboxId4 = [v33 mailboxId];
              *buf = 138543618;
              v39 = v13;
              v40 = 2114;
              v41 = mailboxId4;
              _os_log_impl(&dword_25B19F000, v24, OS_LOG_TYPE_DEFAULT, "Message MOVED from Client but new mailbox isn't active so deleting message (Id: %{public}@ - mailboxId: %{public}@).", buf, 0x16u);
            }

            [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry removeSyncedMessageForMessageWithId:v15];
          }
        }

        else if (v18)
        {
          v22 = v17;
          mailboxId5 = [v33 mailboxId];
          *buf = 138543618;
          v39 = v13;
          v40 = 2114;
          v41 = mailboxId5;
          _os_log_impl(&dword_25B19F000, v22, OS_LOG_TYPE_DEFAULT, "Message MOVED but we don't have it in our records. Updating anyway... (Id: %{public}@ - mailboxId: %{public}@ - Source: Watch).", buf, 0x16u);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v10);
  }

  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
  delegate = [(NNMKSyncProvider *)self delegate];
  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    delegate2 = [(NNMKSyncProvider *)self delegate];
    messageIds = [v33 messageIds];
    [delegate2 syncProvider:self didMoveMessageIds:messageIds toMailbox:v8];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)messagesSyncServiceServer:(id)server didRecieveAttachmentsAtURL:(id)l composedMessageId:(id)id
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  idCopy = id;
  v9 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry pendingComposedMessageWithId:idCopy];
  if (v9)
  {
    v10 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry attachmentsFromURL:lCopy];
    [v9 setAttachments:v10];
    [(NNMKSyncProvider *)self _requestDelegateToSendComposedMessage:v9];
    v11 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      composedMessageId = [v9 composedMessageId];
      sendingType = [v9 sendingType];
      referenceMessageId = [v9 referenceMessageId];
      v18 = 138543874;
      v19 = composedMessageId;
      v20 = 2048;
      v21 = sendingType;
      v22 = 2114;
      v23 = referenceMessageId;
      _os_log_impl(&dword_25B19F000, v12, OS_LOG_TYPE_DEFAULT, "Recieved attachments and SENT Composed Message from Client (Composed Message Id: %{public}@, Send Type: %lu - Message Id: %{public}@).", &v18, 0x20u);
    }
  }

  else
  {
    v16 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = idCopy;
      _os_log_impl(&dword_25B19F000, v16, OS_LOG_TYPE_DEFAULT, "Recieved attachments, but waiting for composedMesageId: %{public}@", &v18, 0xCu);
    }

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry saveAttachmentsForComposedMessageId:idCopy temporaryURL:lCopy];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)messagesSyncServiceServer:(id)server didWarnMessagesFilteredOut:(id)out
{
  v29 = *MEMORY[0x277D85DE8];
  outCopy = out;
  syncController = [(NNMKSyncProvider *)self syncController];
  mailboxId = [outCopy mailboxId];
  v8 = [syncController mailboxWithId:mailboxId];

  if (v8 && -[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:mailbox:](self, "_verifyDatabaseOkForFullSyncVersion:mailbox:", [outCopy fullSyncVersion], v8))
  {
    v21 = v8;
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      *buf = 134217984;
      removedMessageIdsCount = [outCopy removedMessageIdsCount];
      _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Messages filtered out. (Count: %lu).", buf, 0xCu);
    }

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    removedMessageIds = [outCopy removedMessageIds];
    v12 = [removedMessageIds countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(removedMessageIds);
          }

          v16 = *(*(&v22 + 1) + 8 * v15);
          pairedDeviceRegistry = self->_pairedDeviceRegistry;
          syncController2 = [(NNMKSyncProvider *)self syncController];
          v19 = [syncController2 messageIdFromWatchMessageId:v16];
          [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry removeSyncedMessageForMessageWithId:v19];

          ++v15;
        }

        while (v13 != v15);
        v13 = [removedMessageIds countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
    v8 = v21;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)messagesSyncServiceServer:(id)server didRequestCompactMessages:(id)messages
{
  messagesCopy = messages;
  syncController = [(NNMKSyncProvider *)self syncController];
  mailboxId = [messagesCopy mailboxId];
  v8 = [syncController mailboxWithId:mailboxId];

  if (v8 && -[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:mailbox:](self, "_verifyDatabaseOkForFullSyncVersion:mailbox:", [messagesCopy fullSyncVersion], v8))
  {
    v9 = MEMORY[0x277CCAAC8];
    v10 = objc_opt_class();
    beforeDateReceived = [messagesCopy beforeDateReceived];
    v12 = [v9 unarchivedObjectOfClass:v10 fromData:beforeDateReceived error:0];

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry removeSyncedMessagesBeforeDateReceived:v12 mailbox:v8];
  }

  else
  {
    v13 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider messagesSyncServiceServer:v13 didRequestCompactMessages:messagesCopy];
    }
  }
}

- (void)messageContentSyncServiceServer:(id)server didSendProtobufSuccessfullyWithIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
  isTrackingInitialSync = [initialSyncProgressTracker isTrackingInitialSync];

  if (isTrackingInitialSync)
  {
    resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
    v9 = [resendScheduler objectIdsForPendingIDSIdentifier:identifierCopy];

    if ([v9 count])
    {
      v10 = [v9 objectAtIndexedSubscript:0];
      initialSyncProgressTracker2 = [(NNMKSyncProvider *)self initialSyncProgressTracker];
      [initialSyncProgressTracker2 updateProgressWithMessageContentArrivedInPairedDevice:v10];
    }
  }

  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
  {
    [NNMKSyncProvider messageContentSyncServiceServer:didSendProtobufSuccessfullyWithIDSIdentifier:];
  }

  resendScheduler2 = [(NNMKSyncProvider *)self resendScheduler];
  [resendScheduler2 handleIDSMessageSentSuccessfullyWithId:identifierCopy];
}

- (void)accountsSyncServiceServer:(id)server didSendProtobufSuccessfullyWithIDSIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
  [initialSyncProgressTracker updateProgressWithAccountsArrivedInPairedDevice];

  v7 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = identifierCopy;
    _os_log_impl(&dword_25B19F000, v7, OS_LOG_TYPE_DEFAULT, "Accounts sent successfully by IDS (IDS Identifier: %{public}@).", &v10, 0xCu);
  }

  resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
  [resendScheduler handleIDSMessageSentSuccessfullyWithId:identifierCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)accountsSyncServiceServer:(id)server didChangeAccountSourceType:(id)type
{
  v43 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if (-[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:](self, "_verifyDatabaseOkForFullSyncVersion:", [typeCopy fullSyncVersion]))
  {
    v6 = objc_alloc_init(NNMKAccount);
    accountId = [typeCopy accountId];
    [(NNMKAccount *)v6 setAccountId:accountId];

    -[NNMKAccount setSourceType:](v6, "setSourceType:", [typeCopy sourceType]);
    pairedDeviceRegistry = self->_pairedDeviceRegistry;
    accountId2 = [(NNMKAccount *)v6 accountId];
    v10 = [(NNMKDeviceSyncRegistry *)pairedDeviceRegistry accountSourceTypeForAccountId:accountId2];

    v11 = qword_28144D630;
    if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      accountId3 = [(NNMKAccount *)v6 accountId];
      *buf = 138543874;
      v38 = accountId3;
      v39 = 2048;
      sourceType = [(NNMKAccount *)v6 sourceType];
      v41 = 2048;
      v42 = v10;
      _os_log_impl(&dword_25B19F000, v12, OS_LOG_TYPE_DEFAULT, "Received account source type change from watch. Id: %{public}@, Source Type: %lu, Previous: %lu", buf, 0x20u);
    }

    v14 = self->_pairedDeviceRegistry;
    sourceType2 = [(NNMKAccount *)v6 sourceType];
    accountId4 = [(NNMKAccount *)v6 accountId];
    [(NNMKDeviceSyncRegistry *)v14 updateSourceType:sourceType2 forAccountId:accountId4];

    if (![(NNMKAccount *)v6 sourceType])
    {
      v17 = qword_28144D630;
      if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        accountId5 = [(NNMKAccount *)v6 accountId];
        *buf = 138543362;
        v38 = accountId5;
        _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "Account source type changed back to source type companion. Triggering #full-sync for all synced enabled mailboxes from account id %{public}@", buf, 0xCu);
      }

      v20 = self->_pairedDeviceRegistry;
      accountId6 = [(NNMKAccount *)v6 accountId];
      v22 = [(NNMKDeviceSyncRegistry *)v20 mailboxesForAccountId:accountId6];

      if ([v22 count])
      {
        v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v24 = v22;
        v25 = [v24 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v33;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v33 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v32 + 1) + 8 * i);
              if ([v29 syncEnabled])
              {
                [v23 addObject:v29];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v26);
        }

        [(NNMKSyncProvider *)self _triggerFullSyncForMailboxes:v23];
        [(NNMKSyncProvider *)self _requestDelegateForFetchForMailboxes:v24];
      }
    }
  }

  else
  {
    v30 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider accountsSyncServiceServer:v30 didChangeAccountSourceType:?];
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)accountsSyncServiceServer:(id)server didReceivedAccountAuthenticationStatus:(id)status requestTime:(double)time
{
  v86 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  statusCopy = status;
  v10 = qword_28144D630;
  if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Received watch accounts authentication status from watch.", buf, 2u);
  }

  if (time <= 0.0 || ([(NNMKSyncSessionController *)self->_sessionController accountAuthRequestLastRequestTime], v11 <= time))
  {
    v61 = serverCopy;
    allSyncedAccountsKeyedByAccountId = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry allSyncedAccountsKeyedByAccountId];
    v17 = [allSyncedAccountsKeyedByAccountId mutableCopy];

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke;
    v74[3] = &unk_279936898;
    v21 = v17;
    v75 = v21;
    selfCopy = self;
    v22 = array;
    v77 = v22;
    v23 = array2;
    v78 = v23;
    v59 = v18;
    v79 = v59;
    [statusCopy enumerateKeysAndObjectsUsingBlock:v74];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke_71;
    v70[3] = &unk_2799368C0;
    v70[4] = self;
    v73 = 0;
    v24 = v22;
    v71 = v24;
    v25 = v23;
    v72 = v25;
    v60 = v21;
    [v21 enumerateKeysAndObjectsUsingBlock:v70];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    LOBYTE(v23) = objc_opt_respondsToSelector();

    if (v23)
    {
      v27 = objc_loadWeakRetained(&self->_delegate);
      _watchAccounts = [(NNMKSyncProvider *)self _watchAccounts];
      [v27 syncProvider:self didUpdateWatchAccounts:_watchAccounts];
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v29 = v24;
    v30 = [v29 countByEnumeratingWithState:&v66 objects:v81 count:16];
    v31 = v29;
    if (v30)
    {
      v32 = v30;
      v33 = *v67;
LABEL_11:
      v34 = 0;
      while (1)
      {
        if (*v67 != v33)
        {
          objc_enumerationMutation(v29);
        }

        if ([*(*(&v66 + 1) + 8 * v34) maySupportStandaloneMode])
        {
          break;
        }

        if (v32 == ++v34)
        {
          v32 = [v29 countByEnumeratingWithState:&v66 objects:v81 count:16];
          if (v32)
          {
            goto LABEL_11;
          }

          v31 = v29;
          goto LABEL_22;
        }
      }

      v35 = objc_loadWeakRetained(&self->_delegate);
      v36 = objc_opt_respondsToSelector();

      if ((v36 & 1) == 0)
      {
        goto LABEL_23;
      }

      v37 = qword_28144D630;
      if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v37;
        firstObject = [v29 firstObject];
        accountId = [firstObject accountId];
        firstObject2 = [v29 firstObject];
        standaloneState = [firstObject2 standaloneState];
        *buf = 138543618;
        timeCopy = *&accountId;
        v84 = 2048;
        v85 = standaloneState;
        _os_log_impl(&dword_25B19F000, v38, OS_LOG_TYPE_DEFAULT, "Requesting re-authentication for account: %{public}@ - State: %lu", buf, 0x16u);
      }

      v31 = objc_loadWeakRetained(&self->_delegate);
      firstObject3 = [v29 firstObject];
      [v31 syncProvider:self didRequestReauthenticationForAccount:firstObject3];
    }

LABEL_22:

LABEL_23:
    v58 = v29;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v44 = v25;
    v45 = [v44 countByEnumeratingWithState:&v62 objects:v80 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v63;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v63 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v62 + 1) + 8 * i);
          v50 = objc_loadWeakRetained(&self->_delegate);
          v51 = objc_opt_respondsToSelector();

          if (v51)
          {
            v52 = qword_28144D630;
            if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
            {
              v53 = v52;
              accountId2 = [v49 accountId];
              standaloneState2 = [v49 standaloneState];
              *buf = 138543618;
              timeCopy = *&accountId2;
              v84 = 2048;
              v85 = standaloneState2;
              _os_log_impl(&dword_25B19F000, v53, OS_LOG_TYPE_DEFAULT, "Notifying authentication failed for account: %{public}@ - State: %lu", buf, 0x16u);
            }

            v56 = objc_loadWeakRetained(&self->_delegate);
            [v56 syncProvider:self didFailAuthenticatingAccount:v49];
          }
        }

        v46 = [v44 countByEnumeratingWithState:&v62 objects:v80 count:16];
      }

      while (v46);
    }

    serverCopy = v61;
  }

  else
  {
    v12 = qword_28144D630;
    if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
    {
      sessionController = self->_sessionController;
      v14 = v12;
      [(NNMKSyncSessionController *)sessionController accountAuthRequestLastRequestTime];
      *buf = 134218240;
      timeCopy = time;
      v84 = 2048;
      v85 = v15;
      _os_log_impl(&dword_25B19F000, v14, OS_LOG_TYPE_DEFAULT, "Received outdated accounts status, Ignoring. requestTime: %f, lastRequestTime: %f", buf, 0x16u);
    }
  }

  v57 = *MEMORY[0x277D85DE8];
}

void __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke(id *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] objectForKeyedSubscript:v5];
  if (v7)
  {
    [a1[4] removeObjectForKey:v5];
    v8 = [v7 username];

    if (v8)
    {
      v9 = [a1[5] sessionController];
      v10 = [v9 syncingAccountIdentityByUsername];
      v11 = [v7 username];
      [v10 removeObjectForKey:v11];
    }

    v12 = [a1[5] sessionController];
    v13 = [v7 accountId];
    v14 = [v12 standaloneStateForAccountId:v13];

    v15 = [v6 standaloneState];
    if (v14 != v15)
    {
      v16 = qword_28144D630;
      if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v35 = v5;
        v36 = 2048;
        v37 = v15;
        _os_log_impl(&dword_25B19F000, v16, OS_LOG_TYPE_DEFAULT, "Updating standalone state for account. Account: %{public}@ - State: %lu", buf, 0x16u);
      }

      v17 = [a1[5] sessionController];
      [v17 updateStandaloneState:v15 forAccountId:v5];

      if (v14 == 2 && v15 != 2)
      {
        v18 = 6;
LABEL_15:
        v19 = a1[v18];
        v20 = [v7 account];
        [v19 addObject:v20];

        goto LABEL_16;
      }

      if (v14 == 1 && v15 != 2)
      {
        v18 = 7;
        goto LABEL_15;
      }
    }

LABEL_16:
    v21 = [v7 emailAddressToken];
    if (v21)
    {
      v22 = v21;
      v23 = [v7 emailAddressToken];
      v24 = [v6 emailAddressToken];
      v25 = [v23 isEqualToString:v24];

      if (v25)
      {
LABEL_19:
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
        [a1[8] setObject:v29 forKeyedSubscript:v5];

        goto LABEL_20;
      }
    }

    else
    {
      v31 = [v6 emailAddressToken];

      if (!v31)
      {
        goto LABEL_19;
      }
    }

    v26 = [v6 emailAddressToken];
    [v7 setEmailAddressToken:v26];

    v27 = [v6 pccEmailAddress];
    [v7 setPccEmailAddress:v27];

    [*(a1[5] + 9) addOrUpdateSyncedAccount:v7];
    v28 = [v7 account];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke_68;
    v32[3] = &unk_279936870;
    v33 = v7;
    [NNMKStandaloneAccountHelper saveLocalAccountProperties:v28 withCompletion:v32];

    goto LABEL_19;
  }

  if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
  {
    __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke_cold_1();
  }

LABEL_20:

  v30 = *MEMORY[0x277D85DE8];
}

void __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke_68(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = qword_28144D630;
  if (a2)
  {
    if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 emailAddressToken];
      v11[0] = 67109120;
      v11[1] = v9 != 0;
      _os_log_impl(&dword_25B19F000, v8, OS_LOG_TYPE_DEFAULT, "#cloud-notifications Updated local account properties (hasToken: %d)", v11, 8u);
    }
  }

  else if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
  {
    __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke_68_cold_1(a1, v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) sessionController];
  v8 = [v7 standaloneStateForAccountId:v5];

  if (v8 != *(a1 + 56))
  {
    v9 = qword_28144D630;
    if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 56);
      v21 = 138543618;
      v22 = v5;
      v23 = 2048;
      v24 = v10;
      _os_log_impl(&dword_25B19F000, v9, OS_LOG_TYPE_DEFAULT, "Updating standalone state for account. Account: %{public}@ - State: %lu", &v21, 0x16u);
    }

    v11 = [*(a1 + 32) sessionController];
    [v11 updateStandaloneState:*(a1 + 56) forAccountId:v5];

    v12 = [v6 username];

    if (v12)
    {
      v13 = [*(a1 + 32) sessionController];
      v14 = [v13 syncingAccountIdentityByUsername];
      v15 = [v6 username];
      [v14 removeObjectForKey:v15];
    }

    v16 = [v6 account];
    v17 = [*(a1 + 32) sessionController];
    v18 = [v16 accountId];
    [v16 setStandaloneState:{objc_msgSend(v17, "standaloneStateForAccountId:", v18)}];

    if (v8 == 2)
    {
      v19 = 40;
    }

    else
    {
      if (v8 != 1)
      {
LABEL_11:

        goto LABEL_12;
      }

      v19 = 48;
    }

    [*(a1 + v19) addObject:v16];
    goto LABEL_11;
  }

LABEL_12:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)fetchesSyncServiceServer:(id)server didSendProtobufSuccessfullyWithIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
  [resendScheduler handleIDSMessageSentSuccessfullyWithId:identifierCopy];
}

- (void)fetchesSyncServiceServer:(id)server didRequestFetchInBatch:(id)batch
{
  v44 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  v6 = -[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:](self, "_verifyDatabaseOkForFullSyncVersion:", [batchCopy fullSyncVersion]);
  v7 = qword_28144D620;
  v8 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = v7;
      fetchRequests = [batchCopy fetchRequests];
      *buf = 134217984;
      v40 = [fetchRequests count];
      _os_log_impl(&dword_25B19F000, v9, OS_LOG_TYPE_DEFAULT, "#FETCH requested (Requests: %lu)", buf, 0xCu);
    }

    v11 = MEMORY[0x277CBEB18];
    fetchRequests2 = [batchCopy fetchRequests];
    v13 = [v11 arrayWithCapacity:{objc_msgSend(fetchRequests2, "count")}];

    v14 = MEMORY[0x277CBEB18];
    fetchRequests3 = [batchCopy fetchRequests];
    v33 = [v14 arrayWithCapacity:{objc_msgSend(fetchRequests3, "count")}];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v32 = batchCopy;
    fetchRequests4 = [batchCopy fetchRequests];
    v17 = [fetchRequests4 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(fetchRequests4);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          v34 = 0;
          v22 = [(NNMKSyncProvider *)self _handleFetchRequest:v21 shouldResumeSync:&v34];
          if (v22)
          {
            v23 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              v24 = v23;
              if ([v21 wantsBatchedResponse])
              {
                v25 = @"#BATCHED_RESPONSE";
              }

              else
              {
                v25 = &stru_286C69F68;
              }

              mailboxId = [v22 mailboxId];
              *buf = 138543618;
              v40 = v25;
              v41 = 2114;
              v42 = mailboxId;
              _os_log_impl(&dword_25B19F000, v24, OS_LOG_TYPE_DEFAULT, "Handling #FETCH %{public}@. (Mailbox id: %{public}@)", buf, 0x16u);
            }

            [v13 addObject:v22];
            if (v34 == 1)
            {
              [v33 addObject:v22];
            }
          }
        }

        v18 = [fetchRequests4 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v18);
    }

    batchCopy = v32;
    if ([v32 wantsBatchedResponse])
    {
      batchRequestHandler = [(NNMKSyncProvider *)self batchRequestHandler];
      [batchRequestHandler startFetchTimeout];
    }

    if ([v13 count])
    {
      [(NNMKSyncProvider *)self _requestDelegateForFetchForMailboxes:v13];
    }

    if ([v33 count])
    {
      v28 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B19F000, v28, OS_LOG_TYPE_DEFAULT, "Triggering #full-sync for mailboxes to resume sync due to fetch request.", buf, 2u);
      }

      [(NNMKSyncProvider *)self _triggerFullSyncForMailboxes:v33];
    }

    [(NNMKSyncProvider *)self _verifyPairingForcingSync:0];
  }

  else
  {
    if (v8)
    {
      v29 = v7;
      fetchRequests5 = [batchCopy fetchRequests];
      *buf = 134217984;
      v40 = [fetchRequests5 count];
      _os_log_impl(&dword_25B19F000, v29, OS_LOG_TYPE_DEFAULT, "#FETCH requested but #sync-version verification failed. (Requests: %lu)", buf, 0xCu);
    }

    [(NNMKSyncProvider *)self _verifyPairingForcingSync:1];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)_handleFetchRequest:(id)request shouldResumeSync:(BOOL *)sync
{
  v30 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  syncController = [(NNMKSyncProvider *)self syncController];
  mailboxId = [requestCopy mailboxId];
  v9 = [syncController mailboxWithId:mailboxId];

  if (v9)
  {
    if (![v9 syncActive] || !objc_msgSend(v9, "syncEnabled") || -[NNMKDeviceSyncRegistry isMessagesSyncSuspendedByConnectivity](self->_pairedDeviceRegistry, "isMessagesSyncSuspendedByConnectivity"))
    {
      if ([v9 syncRequested])
      {
        v10 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v10;
          mailboxId2 = [requestCopy mailboxId];
          syncRequestedDate = [v9 syncRequestedDate];
          v26 = 138543618;
          v27 = mailboxId2;
          v28 = 2114;
          v29 = syncRequestedDate;
          _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "Not enabling mailbox because syncRequested for mailbox: %{public}@, request date: %{public}@", &v26, 0x16u);
        }
      }

      else if (sync)
      {
        syncEnabled = [v9 syncEnabled];
        v16 = qword_28144D620;
        v17 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
        if (syncEnabled)
        {
          if (v17)
          {
            v18 = v16;
            mailboxId3 = [requestCopy mailboxId];
            v26 = 138543362;
            v27 = mailboxId3;
            _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "Ending suspensions, as we've received a fetch request for mailbox: %{public}@", &v26, 0xCu);
          }
        }

        else
        {
          if (v17)
          {
            v20 = v16;
            mailboxId4 = [requestCopy mailboxId];
            v26 = 138543362;
            v27 = mailboxId4;
            _os_log_impl(&dword_25B19F000, v20, OS_LOG_TYPE_DEFAULT, "Enabling mailbox due to a fetch request from the mailbox: %{public}@", &v26, 0xCu);
          }

          [v9 setSyncEnabled:1];
          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry updateSyncEnabledForMailbox:v9];
        }

        *sync = 1;
      }

      [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setIsMessagesSyncSuspendedByConnectivity:0];
      [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setDisconnectedSince:0];
    }

    batchRequestHandler = [(NNMKSyncProvider *)self batchRequestHandler];
    [batchRequestHandler handleBatchRequest:requestCopy];

    v23 = v9;
  }

  else
  {
    v14 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider _handleFetchRequest:v14 shouldResumeSync:?];
    }

    [(NNMKSyncProvider *)self _handleMailboxesDesync];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_handleMailboxesDesync
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__NNMKSyncProvider__handleMailboxesDesync__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NNMKSyncProvider__handleMailboxesDesync__block_invoke_2;
  block[3] = &unk_279935CB0;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t __42__NNMKSyncProvider__handleMailboxesDesync__block_invoke_2(uint64_t a1)
{
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "Triggering #initial-sync because of mailbox desync detected", v5, 2u);
  }

  v3 = [MEMORY[0x277CBEAA8] date];
  [*(*(a1 + 32) + 144) setLastSyncDueToMailboxesMismatchRequestTime:v3];

  return [*(a1 + 32) _triggerInitialSync];
}

- (void)fetchesSyncServiceServer:(id)server didRequestFetch:(id)fetch
{
  v24 = *MEMORY[0x277D85DE8];
  fetchCopy = fetch;
  fullSyncVersion = [fetchCopy fullSyncVersion];
  syncController = [(NNMKSyncProvider *)self syncController];
  mailboxId = [fetchCopy mailboxId];
  v9 = [syncController mailboxWithId:mailboxId];
  LOBYTE(fullSyncVersion) = [(NNMKSyncProvider *)self _verifyDatabaseOkForFullSyncVersion:fullSyncVersion mailbox:v9];

  if (fullSyncVersion)
  {
    v19 = 0;
    v10 = [(NNMKSyncProvider *)self _handleFetchRequest:fetchCopy shouldResumeSync:&v19];
    if ([fetchCopy wantsBatchedResponse])
    {
      batchRequestHandler = [(NNMKSyncProvider *)self batchRequestHandler];
      [batchRequestHandler startFetchTimeout];
    }

    if (v10)
    {
      v21 = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
      [(NNMKSyncProvider *)self _requestDelegateForFetchForMailboxes:v12];

      if (v19 == 1)
      {
        v13 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B19F000, v13, OS_LOG_TYPE_DEFAULT, "Triggering #full-sync for mailboxes to resume sync due to fetch request.", buf, 2u);
        }

        v20 = v10;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
        [(NNMKSyncProvider *)self _triggerFullSyncForMailboxes:v14];
      }
    }

    [(NNMKSyncProvider *)self _verifyPairingForcingSync:0];
  }

  else
  {
    v15 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      mailboxId2 = [fetchCopy mailboxId];
      *buf = 138543362;
      v23 = mailboxId2;
      _os_log_impl(&dword_25B19F000, v16, OS_LOG_TYPE_DEFAULT, "Fetch Requested but #sync-version verification failed. (Mailbox: %{public}@)", buf, 0xCu);
    }

    [(NNMKSyncProvider *)self _verifyPairingForcingSync:1];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)fetchesSyncServiceServer:(id)server didRequestMoreMessagesInBatch:(id)batch
{
  v17 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  if (-[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:](self, "_verifyDatabaseOkForFullSyncVersion:", [batchCopy fullSyncVersion]))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    moreMessagesRequests = [batchCopy moreMessagesRequests];
    v7 = [moreMessagesRequests countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(moreMessagesRequests);
          }

          [(NNMKSyncProvider *)self _handleFetchRequestFromWatch:*(*(&v12 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [moreMessagesRequests countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKSyncProvider fetchesSyncServiceServer:didRequestMoreMessagesInBatch:];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)fetchesSyncServiceServer:(id)server didRequestMoreMessages:(id)messages
{
  messagesCopy = messages;
  syncController = [(NNMKSyncProvider *)self syncController];
  mailboxId = [messagesCopy mailboxId];
  v8 = [syncController mailboxWithId:mailboxId];

  if (-[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:mailbox:](self, "_verifyDatabaseOkForFullSyncVersion:mailbox:", [messagesCopy fullSyncVersion], v8))
  {
    [(NNMKSyncProvider *)self _handleFetchRequestFromWatch:messagesCopy];
  }

  else
  {
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider fetchesSyncServiceServer:v9 didRequestMoreMessages:messagesCopy];
    }
  }
}

- (void)_handleFetchRequestFromWatch:(id)watch
{
  v31 = *MEMORY[0x277D85DE8];
  watchCopy = watch;
  filterType = [watchCopy filterType];
  syncController = [(NNMKSyncProvider *)self syncController];
  mailboxId = [watchCopy mailboxId];
  v8 = [syncController mailboxWithId:mailboxId];

  if (v8)
  {
    v9 = filterType;
    filterType2 = [v8 filterType];
    if (filterType)
    {
      v11 = filterType2 == filterType;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    if (!v11)
    {
      [v8 setFilterType:filterType];
    }

    v13 = MEMORY[0x277CCAAC8];
    v14 = objc_opt_class();
    beforeDateReceived = [watchCopy beforeDateReceived];
    v16 = [v13 unarchivedObjectOfClass:v14 fromData:beforeDateReceived error:0];

    v17 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      mailboxId2 = [v8 mailboxId];
      v25 = 138543874;
      v26 = v16;
      v27 = 2048;
      v28 = v9;
      v29 = 2114;
      v30 = mailboxId2;
      _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "#LOAD_MORE_MESSAGES Requested (Date Request: %{public}@, Filter type: %lu, Mailbox: %{public}@)", &v25, 0x20u);
    }

    if (v12)
    {
      filterType3 = [v8 filterType];
    }

    else
    {
      filterType3 = 0;
    }

    [(NNMKSyncProvider *)self _requestDelegateForMoreMessagesWithMailbox:v8 beforeDate:v16 messagesForspecialMailboxFilterType:filterType3];
  }

  else
  {
    v21 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      mailboxId3 = [watchCopy mailboxId];
      v25 = 138543362;
      v26 = mailboxId3;
      _os_log_impl(&dword_25B19F000, v22, OS_LOG_TYPE_DEFAULT, "No mailbox found. #LOAD_MORE_MESSAGES request will be ignored. Id: %{public}@", &v25, 0xCu);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)fetchesSyncServiceServer:(id)server didRequestMoreMessagesForConversation:(id)conversation
{
  v19 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  syncController = [(NNMKSyncProvider *)self syncController];
  mailboxId = [conversationCopy mailboxId];
  v8 = [syncController mailboxWithId:mailboxId];

  if (-[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:mailbox:](self, "_verifyDatabaseOkForFullSyncVersion:mailbox:", [conversationCopy fullSyncVersion], v8) && -[NNMKDeviceSyncRegistry organizeByThread](self->_pairedDeviceRegistry, "organizeByThread"))
  {
    conversationId = [conversationCopy conversationId];
    v10 = MEMORY[0x277CCAAC8];
    v11 = objc_opt_class();
    beforeDateReceived = [conversationCopy beforeDateReceived];
    v13 = [v10 unarchivedObjectOfClass:v11 fromData:beforeDateReceived error:0];

    v14 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = conversationId;
      _os_log_impl(&dword_25B19F000, v14, OS_LOG_TYPE_DEFAULT, "#LOAD_MORE_MESSAGES Requested (Conversation Id: %{public}@)", &v17, 0xCu);
    }

    [(NNMKSyncProvider *)self _requestDelegateForMoreMessagesBeforeDateReceived:v13 forConversationWithId:conversationId mailbox:v8];
  }

  else
  {
    v15 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider fetchesSyncServiceServer:v15 didRequestMoreMessagesForConversation:?];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)fetchesSyncServiceServer:(id)server didRequestContent:(id)content
{
  v26 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  syncController = [(NNMKSyncProvider *)self syncController];
  messageId = [contentCopy messageId];
  v8 = [syncController messageIdFromWatchMessageId:messageId];

  v9 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncedMessageForMessageWithId:v8];
  mailboxId = [v9 mailboxId];

  syncController2 = [(NNMKSyncProvider *)self syncController];
  v12 = [syncController2 mailboxWithId:mailboxId];

  if (-[NNMKSyncProvider _verifyDatabaseOkForFullSyncVersion:mailbox:](self, "_verifyDatabaseOkForFullSyncVersion:mailbox:", [contentCopy fullSyncVersion], v12))
  {
    v13 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncedMessageForMessageWithId:v8];
    if (v13)
    {
      if (([contentCopy highPriority] & 1) != 0 || (objc_msgSend(v13, "contentSynced") & 1) == 0)
      {
        v17 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          v20 = 138543618;
          v21 = v8;
          v22 = 1024;
          highPriority = [contentCopy highPriority];
          _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "Message Content Requested (Id: %{public}@, High Priority: %d).", &v20, 0x12u);
        }

        if ([contentCopy highPriority] && (objc_msgSend(v13, "contentRequestedByUser") & 1) == 0)
        {
          [v13 setContentRequestedByUser:1];
          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:v13];
        }

        -[NNMKSyncProvider _requestDelegateForContentForMessageWithId:highPriority:](self, "_requestDelegateForContentForMessageWithId:highPriority:", v8, [contentCopy highPriority]);
      }

      else
      {
        v14 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v20 = 138543618;
          v21 = v8;
          v22 = 1024;
          highPriority = [contentCopy highPriority];
          _os_log_impl(&dword_25B19F000, v15, OS_LOG_TYPE_DEFAULT, "Message Content Requested but not processed, as it has been requested multiple times (Id: %{public}@, High Priority: %d).", &v20, 0x12u);
        }
      }
    }
  }

  else
  {
    v16 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      v20 = 138543874;
      v21 = mailboxId;
      v22 = 1024;
      highPriority = v12 != 0;
      v24 = 2114;
      v25 = v8;
      _os_log_error_impl(&dword_25B19F000, v16, OS_LOG_TYPE_ERROR, "Ignoring did request content. Mailbox %{public}@ (exists: %d), messageId: %{public}@", &v20, 0x1Cu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)fetchesSyncServiceServer:(id)server didRequestFullSync:(id)sync
{
  v16 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  syncCopy = sync;
  v8 = syncCopy;
  if (self->_pairedDeviceRegistry)
  {
    -[NNMKSyncProvider _fastForwardToFullSyncVersion:](self, "_fastForwardToFullSyncVersion:", [syncCopy fullSyncVersion]);
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v14 = 134217984;
      fullSyncVersion = [v8 fullSyncVersion];
      _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "#full-sync requested (Version in Client: %lu). Triggering #initial-sync...", &v14, 0xCu);
    }

    [(NNMKSyncProvider *)self _triggerInitialSync];
  }

  else
  {
    v11 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v14 = 134217984;
      fullSyncVersion = [v8 fullSyncVersion];
      _os_log_impl(&dword_25B19F000, v12, OS_LOG_TYPE_DEFAULT, "#full-sync requested, but we haven't detected any pairing yet. Ignoring the #full-sync request and waiting... (Version in Client: %lu)", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)fetchesSyncServiceServer:(id)server didRequestHaltSync:(id)sync
{
  v32 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  syncCopy = sync;
  pairedDeviceRegistry = self->_pairedDeviceRegistry;
  v9 = qword_28144D620;
  v10 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
  if (pairedDeviceRegistry)
  {
    if (v10)
    {
      v11 = v9;
      *buf = 134217984;
      fullSyncVersion = [syncCopy fullSyncVersion];
      _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "halt-sync requested (Version in Client: %lu). Triggering...", buf, 0xCu);
    }

    mailboxId = [syncCopy mailboxId];

    if (mailboxId)
    {
      syncController = [(NNMKSyncProvider *)self syncController];
      mailboxId2 = [syncCopy mailboxId];
      activeMailboxes = [syncController mailboxWithId:mailboxId2];

      if (activeMailboxes)
      {
        [(NNMKSyncProvider *)self _handleHaltSyncForMailbox:activeMailboxes];
      }

      else
      {
        v21 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
          mailboxId3 = [syncCopy mailboxId];
          *buf = 138543362;
          fullSyncVersion = mailboxId3;
          _os_log_impl(&dword_25B19F000, v22, OS_LOG_TYPE_DEFAULT, "halt-sync requested for unknown mailbox %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      activeMailboxes = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry activeMailboxes];
      v17 = [activeMailboxes countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v26;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v26 != v19)
            {
              objc_enumerationMutation(activeMailboxes);
            }

            [(NNMKSyncProvider *)self _handleHaltSyncForMailbox:*(*(&v25 + 1) + 8 * i)];
          }

          v18 = [activeMailboxes countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v18);
      }
    }
  }

  else if (v10)
  {
    v16 = v9;
    *buf = 134217984;
    fullSyncVersion = [syncCopy fullSyncVersion];
    _os_log_impl(&dword_25B19F000, v16, OS_LOG_TYPE_DEFAULT, "halt-sync requested, but we haven't detected any pairing yet. Ignoring the halt sync request and waiting... (Version in Client: %lu)", buf, 0xCu);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleHaltSyncForMailbox:(id)mailbox
{
  v14 = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  if ([mailboxCopy syncEnabled] && (objc_msgSend(mailboxCopy, "syncActive") & 1) == 0)
  {
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      mailboxId = [mailboxCopy mailboxId];
      v12 = 138543362;
      v13 = mailboxId;
      _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring halt-sync request. Mailbox is not active. (Mailbox Id: %{public}@)", &v12, 0xCu);
    }
  }

  else
  {
    v5 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      mailboxId2 = [mailboxCopy mailboxId];
      v12 = 138543362;
      v13 = mailboxId2;
      _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "halt-sync started for mailbox. (Mailbox id: %{public}@)", &v12, 0xCu);
    }

    [mailboxCopy setSyncActive:0];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry updateSyncActiveForMailbox:mailboxCopy];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry cleanUpForFullSyncWithMailbox:mailboxCopy];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchesSyncServiceServer:(id)server didNotifyInitialSyncFinished:(id)finished
{
  v19 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
  if ([initialSyncProgressTracker isTrackingInitialSync])
  {
    fullSyncVersion = [finishedCopy fullSyncVersion];
    fullSyncVersion2 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion];

    if (fullSyncVersion2 == fullSyncVersion)
    {
      initialSyncProgressTracker2 = [(NNMKSyncProvider *)self initialSyncProgressTracker];
      [initialSyncProgressTracker2 syncCompleted];

      goto LABEL_7;
    }
  }

  else
  {
  }

  v10 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    initialSyncProgressTracker3 = [(NNMKSyncProvider *)self initialSyncProgressTracker];
    isTrackingInitialSync = [initialSyncProgressTracker3 isTrackingInitialSync];
    fullSyncVersion3 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion];
    v16[0] = 67109376;
    v16[1] = isTrackingInitialSync;
    v17 = 2048;
    v18 = fullSyncVersion3;
    _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "#initial-sync finished notification received. However, we're no longer waiting for it. Ignoring... (Tracking: %d - Current #sync-version: %lu)", v16, 0x12u);
  }

LABEL_7:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fetchesSyncServiceServer:(id)server didNotifyAboutWebKitStatus:(id)status
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(status, "supportsWebKit", server)}];
  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setSupportsWebKit:v5];
}

- (void)syncStateManagerDidUnpair:(id)unpair
{
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NNMKSyncProvider_syncStateManagerDidUnpair___block_invoke;
  block[3] = &unk_279935CB0;
  block[4] = self;
  dispatch_async(providerQueue, block);
}

uint64_t __46__NNMKSyncProvider_syncStateManagerDidUnpair___block_invoke(uint64_t a1)
{
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE Unpairing detected. Triggering verification to insure we don't stop sync'ing if we still have another device we're talking to...", v4, 2u);
  }

  return [*(a1 + 32) _verifyPairingForcingSync:0];
}

- (void)syncStateManagerDidChangePairedDevice:(id)device
{
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NNMKSyncProvider_syncStateManagerDidChangePairedDevice___block_invoke;
  block[3] = &unk_279935CB0;
  block[4] = self;
  dispatch_async(providerQueue, block);
}

uint64_t __58__NNMKSyncProvider_syncStateManagerDidChangePairedDevice___block_invoke(uint64_t a1)
{
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE Paired device changed. Handling as unpaired...", v4, 2u);
  }

  [*(a1 + 32) _handleDidUnpair];
  return [*(a1 + 32) _verifyPairingForcingSync:0];
}

- (void)syncStateManagerDidBeginSyncSession:(id)session syncSessionType:(id)type syncSessionIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__NNMKSyncProvider_syncStateManagerDidBeginSyncSession_syncSessionType_syncSessionIdentifier___block_invoke;
  block[3] = &unk_279936098;
  block[4] = self;
  v13 = typeCopy;
  v14 = identifierCopy;
  v10 = identifierCopy;
  v11 = typeCopy;
  dispatch_async(providerQueue, block);
}

void __94__NNMKSyncProvider_syncStateManagerDidBeginSyncSession_syncSessionType_syncSessionIdentifier___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 152) pairedDeviceRegistryPath];
  v3 = qword_28144D620;
  v4 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v12 = 138543618;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_25B19F000, v3, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE New session began, but we're already paired. (Type: %{public}@, Session ID: %{public}@). Responding with success...", &v12, 0x16u);
    }

    v7 = [*(a1 + 32) initialSyncProgressTracker];
    [v7 startTrackingInitialSync];

    v8 = [*(a1 + 32) initialSyncProgressTracker];
    [v8 syncCompleted];
  }

  else
  {
    if (v4)
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_25B19F000, v3, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE New session began, requesting #initial-sync (Type: %{public}@, Session ID: %{public}@). Triggering #initial-sync...", &v12, 0x16u);
    }

    [*(a1 + 32) _handleDidPairWithNewDevice];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)syncStateManagerDidInvalidateSyncSession:(id)session syncSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  providerQueue = self->_providerQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__NNMKSyncProvider_syncStateManagerDidInvalidateSyncSession_syncSessionIdentifier___block_invoke;
  v8[3] = &unk_279935CD8;
  v9 = identifierCopy;
  selfCopy = self;
  v7 = identifierCopy;
  dispatch_async(providerQueue, v8);
}

uint64_t __83__NNMKSyncProvider_syncStateManagerDidInvalidateSyncSession_syncSessionIdentifier___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_25B19F000, v2, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE Session invalidate. Invalidating #full-sync (Session ID: %{public}@). We'll verify if everything seems alright...", &v6, 0xCu);
  }

  result = [*(a1 + 40) _verifyPairingForcingSync:0];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)syncStateManagerShouldAddFavoriteSubsectionForMailboxId:(id)id
{
  v3 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry mailboxWithId:id];
  v4 = [v3 type] != 1;

  return v4;
}

- (void)_handleDidPairWithNewDevice
{
  v3 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B19F000, v3, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE New Pairing Detected. Will trigger #initial-sync.", buf, 2u);
  }

  if ([(NNMKSyncProvider *)self setupPairedDeviceRegistry])
  {
    [(NNMKSyncProvider *)self _triggerInitialSyncTrackingProgress:1];
    [(NNMKSyncProvider *)self _storeScreenRelatedValues];
  }

  else
  {
    v4 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE No device registry path found. Unpairing...", v5, 2u);
    }

    [(NNMKSyncProvider *)self _handleDidUnpair];
  }
}

- (BOOL)setupPairedDeviceRegistry
{
  pairingStorePath = [(NNMKSyncStateManager *)self->_syncStateManager pairingStorePath];
  v4 = pairingStorePath;
  if (pairingStorePath)
  {
    v5 = [pairingStorePath stringByAppendingPathComponent:@"NanoMail/registry.sqlite"];
    v6 = v5 != 0;
    if (v5)
    {
      v7 = [[NNMKDeviceSyncRegistry alloc] initWithPath:v5];
      pairedDeviceRegistry = self->_pairedDeviceRegistry;
      self->_pairedDeviceRegistry = v7;

      [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setOrganizeByThread:1];
      [(NNMKDirectoryProvider *)self->_directoryProvider setPairedDeviceRegistryPath:v5];
    }
  }

  else
  {
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider setupPairedDeviceRegistry];
    }

    initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
    [initialSyncProgressTracker startTrackingInitialSync];

    initialSyncProgressTracker2 = [(NNMKSyncProvider *)self initialSyncProgressTracker];
    [initialSyncProgressTracker2 syncFailedWithError:@"PairedDeviceRegistry returned no devices."];

    v6 = 0;
  }

  return v6;
}

- (void)_handleDidUnpair
{
  pairedDeviceRegistry = self->_pairedDeviceRegistry;
  self->_pairedDeviceRegistry = 0;

  [(NNMKDirectoryProvider *)self->_directoryProvider setPairedDeviceRegistryPath:0];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  sessionController = [(NNMKSyncProvider *)self sessionController];
  [sessionController setMessageIdsToIgnoreStatusUpdates:v4];

  sessionController2 = [(NNMKSyncProvider *)self sessionController];
  notificationPayloadAcks = [sessionController2 notificationPayloadAcks];
  [notificationPayloadAcks removeAllObjects];

  [(NNMKSyncProvider *)self _requestDelegateToStopDownloadingAllMessageElements];
  [(NNMKBatchRequestHandler *)self->_batchRequestHandler cancelFetchTimeout];
  batchRequestHandler = self->_batchRequestHandler;

  [(NNMKBatchRequestHandler *)batchRequestHandler reset];
}

- (void)_verifyPairingForcingSync:(BOOL)sync
{
  syncCopy = sync;
  v31 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
  {
    [NNMKSyncProvider _verifyPairingForcingSync:];
  }

  pairedDeviceRegistryPath = [(NNMKDirectoryProvider *)self->_directoryProvider pairedDeviceRegistryPath];
  pairingStorePath = [(NNMKSyncStateManager *)self->_syncStateManager pairingStorePath];
  _isPaired = [(NNMKSyncProvider *)self _isPaired];
  if (pairingStorePath)
  {
    v8 = pairedDeviceRegistryPath == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [pairedDeviceRegistryPath hasPrefix:pairingStorePath] ^ 1;
  }

  isInitialSyncRestricted = [(NNMKSyncStateManager *)self->_syncStateManager isInitialSyncRestricted];
  if ((((pairingStorePath != 0) ^ _isPaired) & 1) == 0 && !v9)
  {
    if (_isPaired && syncCopy)
    {
      if ([(NNMKSyncProvider *)self _pairedDeviceSupportsMultipleMailboxes])
      {
        v11 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE We are paired, but force re-sync was requested. Triggering #initial-sync", &v24, 2u);
        }

        [(NNMKSyncProvider *)self _triggerInitialSyncToRecoverFromSyncVersionMismatch];
      }

      else
      {
        syncEnabledMailboxes = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncEnabledMailboxes];
        v21 = [syncEnabledMailboxes count];

        if (!v21)
        {
          v22 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v24) = 0;
            _os_log_impl(&dword_25B19F000, v22, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE We should be paired, but we don't have any synced mailbox. Forcing #initial-sync", &v24, 2u);
          }

          [(NNMKSyncProvider *)self _triggerInitialSync];
        }
      }
    }

    else
    {
      v14 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        syncStateManager = self->_syncStateManager;
        v16 = v14;
        pairingStorePath2 = [(NNMKSyncStateManager *)syncStateManager pairingStorePath];
        LODWORD(v24) = 67240962;
        HIDWORD(v24) = _isPaired;
        v25 = 1026;
        v26 = pairingStorePath != 0;
        v27 = 1024;
        v28 = syncCopy;
        v29 = 2114;
        v30 = pairingStorePath2;
        _os_log_impl(&dword_25B19F000, v16, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE State has not changed. Initial sync will not be triggered (paired: %{public}d, should: %{public}d, force: %{piblic}d). SyncStateManager.pairingStorePath %{public}@", &v24, 0x1Eu);
      }
    }

    goto LABEL_38;
  }

  if (pairingStorePath)
  {
    if (_isPaired)
    {
      v12 = qword_28144D620;
      if (!os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
LABEL_37:
        [(NNMKSyncProvider *)self _handleDidPairWithNewDevice];
        goto LABEL_38;
      }

      LOWORD(v24) = 0;
      v13 = "#PAIRING_STATE Pairing verification determined we're paired with a new device. Will start syncing with new device...";
LABEL_20:
      _os_log_impl(&dword_25B19F000, v12, OS_LOG_TYPE_DEFAULT, v13, &v24, 2u);
      goto LABEL_37;
    }

    if (!isInitialSyncRestricted)
    {
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
      {
        [NNMKSyncProvider _verifyPairingForcingSync:];
      }

      goto LABEL_37;
    }

    if (syncCopy && ![(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry isMessagesSyncSuspendedByConnectivity])
    {
      v12 = qword_28144D620;
      if (!os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      LOWORD(v24) = 0;
      v13 = "#PAIRING_STATE Pairing verification determined we're paired and we should force syncing, even though PairedSync hasn't told Mail to start yet. Will force syncing...";
      goto LABEL_20;
    }

    v19 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_25B19F000, v19, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE Pairing verification determined we're paired. However, we're waiting for PairedSync to tell us to start syncing. Waiting...", &v24, 2u);
    }
  }

  else
  {
    v18 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "#PAIRING_STATE Pairing verification determined we're no longer paired. Will unpair...", &v24, 2u);
    }

    [(NNMKSyncProvider *)self _handleDidUnpair];
  }

LABEL_38:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_storeScreenRelatedValues
{
  pairedDeviceScreenSize = [(NNMKSyncStateManager *)self->_syncStateManager pairedDeviceScreenSize];
  v9 = pairedDeviceScreenSize;
  if (pairedDeviceScreenSize)
  {
    [pairedDeviceScreenSize CGSizeValue];
  }

  else
  {
    v4 = 200.0;
  }

  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setDeviceScreenWidth:v4];
  pairedDeviceScreenScale = [(NNMKSyncStateManager *)self->_syncStateManager pairedDeviceScreenScale];
  v6 = pairedDeviceScreenScale;
  if (pairedDeviceScreenScale)
  {
    [pairedDeviceScreenScale floatValue];
    v8 = v7;
  }

  else
  {
    v8 = 2.0;
  }

  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setDeviceScreenScale:v8];
  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setProtectedContentChannelSupported:[(NNMKSyncStateManager *)self->_syncStateManager pairedDeviceSupportsMailContentProtectedChannel]];
}

- (void)resendScheduler:(id)scheduler didRequestRetryFullSyncForMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  v6 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Triggering #full-sync for mailboxes due to retry.", v7, 2u);
  }

  [(NNMKSyncProvider *)self _triggerFullSyncForMailboxes:mailboxesCopy];
}

- (void)resendScheduler:(id)scheduler didRequestRetrySendingMailboxSelectionWithResendInterval:(unint64_t)interval
{
  fullSyncVersion = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion];

  [(NNMKSyncProvider *)self _sendUpdatedMailboxSelection:fullSyncVersion resendInterval:interval];
}

- (void)resendScheduler:(id)scheduler didRequestRetrySendingMessageDeletions:(id)deletions deletionsMessageIds:(id)ids resendInterval:(unint64_t)interval
{
  v44 = *MEMORY[0x277D85DE8];
  deletionsCopy = deletions;
  idsCopy = ids;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v34 = deletionsCopy;
  obj = [deletionsCopy allKeys];
  v10 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v36;
    *&v11 = 138543362;
    v31 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry mailboxWithId:v15, v31];
        if (v16)
        {
          v17 = [v34 objectForKeyedSubscript:v15];
          [v17 setFullSyncVersion:{-[NNMKDeviceSyncRegistry fullSyncVersion](self->_pairedDeviceRegistry, "fullSyncVersion")}];
          v18 = MEMORY[0x277CCAAB0];
          date = [MEMORY[0x277CBEAA8] date];
          v20 = [v18 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
          [v17 setDateSynced:v20];

          mailboxId = [v16 mailboxId];
          [v17 setMailboxId:mailboxId];

          pairedDeviceRegistry = self->_pairedDeviceRegistry;
          mailboxId2 = [v16 mailboxId];
          [v17 setMailboxSyncVersion:{-[NNMKDeviceSyncRegistry syncVersionForMailboxId:](pairedDeviceRegistry, "syncVersionForMailboxId:", mailboxId2)}];

          v24 = [(NNMKMessagesSyncServiceServer *)self->_messagesSyncService deleteMessages:v17 notificationPriority:0];
          resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
          [resendScheduler registerIDSIdentifier:v24 objectIds:idsCopy type:@"Message" resendInterval:interval];

          v26 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v26;
            nnmk_description = [idsCopy nnmk_description];
            *buf = 138543618;
            v40 = v24;
            v41 = 2114;
            v42 = nnmk_description;
            _os_log_impl(&dword_25B19F000, v27, OS_LOG_TYPE_DEFAULT, "Retrying sending message deletions. (IDS Identifier: %{public}@, deletions: %{public}@)", buf, 0x16u);
          }
        }

        else
        {
          v29 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v31;
            v40 = v15;
            _os_log_impl(&dword_25B19F000, v29, OS_LOG_TYPE_DEFAULT, "Mailbox does not exist anymore. Ignoring resend deletion. %{public}@", buf, 0xCu);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v12);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)resendScheduler:(id)scheduler didRequestRetrySendingAccountIdentifier:(id)identifier resendInterval:(unint64_t)interval
{
  identifierCopy = identifier;
  sessionController = [(NNMKSyncProvider *)self sessionController];
  syncingAccountIdentityByUsername = [sessionController syncingAccountIdentityByUsername];
  v10 = [syncingAccountIdentityByUsername objectForKeyedSubscript:identifierCopy];

  if (v10)
  {
    [(NNMKSyncProvider *)self _sendStandaloneAccountIdentity:v10 resendInterval:interval];
  }

  else
  {
    if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider resendScheduler:didRequestRetrySendingAccountIdentifier:resendInterval:];
    }

    pairedDeviceRegistry = [(NNMKSyncProvider *)self pairedDeviceRegistry];
    v12 = [pairedDeviceRegistry accountIdForUsername:identifierCopy];

    sessionController2 = [(NNMKSyncProvider *)self sessionController];
    [sessionController2 updateStandaloneState:0 forAccountId:v12];
  }
}

- (void)resendScheduler:(id)scheduler didRequestRetrySendingVIPListWithResendInterval:(unint64_t)interval
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(NNMKRequestContext);
  [(NNMKRequestContext *)v6 setResendInterval:interval];
  v7 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    intervalCopy = interval;
    _os_log_impl(&dword_25B19F000, v7, OS_LOG_TYPE_DEFAULT, "Requesting VIP List to retry. Resend Interval: %lu", &v9, 0xCu);
  }

  [(NNMKSyncProvider *)self _requestDelegateForVIPList:v6];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)resendScheduler:(id)scheduler didRequestRetrySendingDeletionForAccountWithId:(id)id resendInterval:(unint64_t)interval
{
  v16[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v8 = objc_alloc_init(NNMKProtoAccountDeletion);
  [(NNMKProtoAccountDeletion *)v8 setAccountId:idCopy];
  v9 = [(NNMKAccountsSyncServiceServer *)self->_accountsSyncService deleteAccount:v8];
  resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
  v16[0] = idCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [resendScheduler registerIDSIdentifier:v9 objectIds:v11 type:@"Account" resendInterval:interval];

  v12 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v9;
    _os_log_impl(&dword_25B19F000, v12, OS_LOG_TYPE_DEFAULT, "Retrying sending deletion for account. (IDS Identifier: %{public}@)", &v14, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)resendScheduler:(id)scheduler didRequestRetrySendingComposeMessageProgress:(int64_t)progress messageId:(id)id resendInterval:(unint64_t)interval
{
  v21[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v10 = objc_alloc_init(NNMKProtoComposedMessageSendingProgressReport);
  [(NNMKProtoComposedMessageSendingProgressReport *)v10 setComposedMessageId:idCopy];
  [(NNMKProtoComposedMessageSendingProgressReport *)v10 setProgress:progress];
  v11 = [(NNMKFetchesSyncServiceServer *)self->_fetchesSyncService reportComposedMessageSendingProgress:v10];
  resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
  v21[0] = idCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  [resendScheduler registerIDSIdentifier:v11 objectIds:v13 type:@"SendingProgress" resendInterval:interval];

  if (progress == -1)
  {
    v14 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      v18 = idCopy;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_25B19F000, v14, OS_LOG_TYPE_DEFAULT, "Failing composed message, as we restarted before even adding the message to the Outbox queue. (Composed Message Id: %{public}@ - IDS Identifier: %{public}@).", &v17, 0x16u);
    }
  }

  v15 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v11;
    _os_log_impl(&dword_25B19F000, v15, OS_LOG_TYPE_DEFAULT, "Retrying sending compose message progress. (IDS Identifier: %{public}@)", &v17, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_verifyDatabaseOkForFullSyncVersion:(unint64_t)version mailbox:(id)mailbox
{
  v16 = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  v7 = mailboxCopy;
  if (mailboxCopy && ([mailboxCopy syncActive] & 1) != 0)
  {
    v8 = [(NNMKSyncProvider *)self _verifyDatabaseOkForFullSyncVersion:version];
  }

  else
  {
    [(NNMKSyncProvider *)self _fastForwardToFullSyncVersion:version];
    v9 = qword_28144D620;
    v8 = 0;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      mailboxId = [v7 mailboxId];
      v14 = 138543362;
      v15 = mailboxId;
      _os_log_impl(&dword_25B19F000, v10, OS_LOG_TYPE_DEFAULT, "Message received but sync isn't active. (Mailbox id: %{public}@) Discarding...", &v14, 0xCu);

      v8 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_verifyDatabaseOkForFullSyncVersion:(unint64_t)version
{
  v23 = *MEMORY[0x277D85DE8];
  fullSyncVersion = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion];
  v6 = fullSyncVersion;
  if (fullSyncVersion <= version)
  {
    if (fullSyncVersion >= version)
    {
      goto LABEL_14;
    }

    v12 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      v15 = v12;
      v17 = 134218496;
      versionCopy = version;
      v19 = 2048;
      versionCopy3 = v6;
      v21 = 2048;
      _isPaired = [(NNMKSyncProvider *)self _isPaired];
      _os_log_error_impl(&dword_25B19F000, v15, OS_LOG_TYPE_ERROR, "Client has a #sync-version higher than what the server has (Version in Client: %lu - Local: %lu - Paired: %lu). Triggering #initial-sync...", &v17, 0x20u);
    }

    [(NNMKSyncProvider *)self _fastForwardToFullSyncVersion:version];
    [(NNMKSyncProvider *)self _triggerInitialSyncToRecoverFromSyncVersionMismatch];
    v13 = +[NNMKAnalytics sharedInstance];
    [v13 reportFullSyncRequestedFromDevice:1 corruptionDetected:0 migrationRelated:0 idsFailureRelated:0 fullSyncVersionMatchRelated:1];

    _isPaired2 = [(NNMKSyncProvider *)self _isPaired];
    if (_isPaired2)
    {
LABEL_14:
      LOBYTE(_isPaired2) = 1;
    }
  }

  else
  {
    if (version - fullSyncVersion >= 0)
    {
      v7 = version - fullSyncVersion;
    }

    else
    {
      v7 = fullSyncVersion - version;
    }

    fullSyncRecoveredInThisSession = self->_fullSyncRecoveredInThisSession;
    v9 = qword_28144D620;
    _isPaired2 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
    if (!fullSyncRecoveredInThisSession && v7 >= 3)
    {
      if (_isPaired2)
      {
        v17 = 134218240;
        versionCopy = v6;
        v19 = 2048;
        versionCopy3 = version;
        _os_log_impl(&dword_25B19F000, v9, OS_LOG_TYPE_DEFAULT, "Received message that has a #sync-version so distant from the local one that we're triggering a #initial-sync. (Local: %lu - Client: %lu).", &v17, 0x16u);
      }

      self->_fullSyncRecoveredInThisSession = 1;
      [(NNMKSyncProvider *)self _triggerInitialSyncToRecoverFromSyncVersionMismatch];
      v11 = +[NNMKAnalytics sharedInstance];
      [v11 reportFullSyncRequestedFromDevice:1 corruptionDetected:0 migrationRelated:0 idsFailureRelated:0 fullSyncVersionMatchRelated:1];

      goto LABEL_17;
    }

    if (_isPaired2)
    {
      v17 = 134218240;
      versionCopy = v6;
      v19 = 2048;
      versionCopy3 = version;
      _os_log_impl(&dword_25B19F000, v9, OS_LOG_TYPE_DEFAULT, "Message discarded because #sync-version is different (Local: %lu - Client: %lu).", &v17, 0x16u);
LABEL_17:
      LOBYTE(_isPaired2) = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return _isPaired2;
}

void __69__NNMKSyncProvider__markConversationWithId_forState_include_mailbox___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a4;
  if ([v9 messageStatusUpdatesCount])
  {
    v11 = [v13 updateMessagesStatus:v9 notificationPriority:a5];
    v12 = [*(a1 + 32) resendScheduler];
    [v12 registerIDSIdentifier:v11 objectIds:v10 type:@"Message" resendInterval:0];
  }
}

- (id)_bbSubsectionIdsForMessage:(id)message
{
  messageCopy = message;
  v4 = MEMORY[0x277CBEB58];
  accountId = [messageCopy accountId];
  v6 = [v4 setWithObject:accountId];

  if ([messageCopy checkState:64])
  {
    [v6 addObject:@"com.apple.mobilemail.bulletin-subsection.VIP"];
  }

  if ([messageCopy checkState:128])
  {
    [v6 addObject:@"com.apple.mobilemail.bulletin-subsection.ThreadNotify"];
  }

  return v6;
}

- (void)syncStateManager:(id)manager handleForwardForNotification:(id)notification completion:(id)completion
{
  notificationCopy = notification;
  completionCopy = completion;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__NNMKSyncProvider_syncStateManager_handleForwardForNotification_completion___block_invoke;
  block[3] = &unk_2799368E8;
  block[4] = self;
  v13 = notificationCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = notificationCopy;
  dispatch_async(providerQueue, block);
}

- (void)_shouldHandleForwardForNotification:(id)notification withCompletion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  completionCopy = completion;
  request = [notificationCopy request];
  content = [request content];
  userInfo = [content userInfo];
  v11 = [userInfo objectForKeyedSubscript:@"com.apple.mail.nanoMessageId"];

  if (v11)
  {
    if (completionCopy)
    {
      pairedDeviceRegistry = [(NNMKSyncProvider *)self pairedDeviceRegistry];
      v13 = [pairedDeviceRegistry syncedMessageForMessageWithId:v11];

      if (v13)
      {
        pairedDeviceRegistry2 = [(NNMKSyncProvider *)self pairedDeviceRegistry];
        mailboxId = [v13 mailboxId];
        request2 = [pairedDeviceRegistry2 mailboxWithId:mailboxId];

        accountId = [request2 accountId];
      }

      else
      {
        request2 = [notificationCopy request];
        content2 = [request2 content];
        userInfo2 = [content2 userInfo];
        accountId = [userInfo2 objectForKeyedSubscript:@"com.apple.mail.accountReference"];
      }

      pairedDeviceRegistry3 = [(NNMKSyncProvider *)self pairedDeviceRegistry];
      v22 = [pairedDeviceRegistry3 syncedAccountForAccountWithId:accountId];

      if ([v22 sourceType])
      {
        v23 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          accountId2 = [v22 accountId];
          v39 = 138543618;
          v40 = v11;
          v41 = 2114;
          v42 = accountId2;
          _os_log_impl(&dword_25B19F000, v24, OS_LOG_TYPE_DEFAULT, "#BulletinDistributor Suppressing notification for message because account is in standalone mode. Message Id: %{public}@ - Account Id: %{public}@", &v39, 0x16u);
        }

        completionCopy[2](completionCopy, 0);
      }

      else
      {
        pairedDeviceRegistry = self->_pairedDeviceRegistry;
        if (pairedDeviceRegistry && ([(NNMKDeviceSyncRegistry *)pairedDeviceRegistry syncedMessageForMessageWithId:v11], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v28 = v27;
          if ([v27 contentSyncedUsingNotificationPriority])
          {
            v29 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              v39 = 138543362;
              v40 = v11;
              _os_log_impl(&dword_25B19F000, v29, OS_LOG_TYPE_DEFAULT, "#BulletinDistributor Ping Subscriber asked us to notify them back when we added content for a message, but we already sync'ed the content through the high priority channel for this message. Notifying back... (Message Id: %{public}@)", &v39, 0xCu);
            }

            completionCopy[2](completionCopy, 1);
          }

          else
          {
            usedNotificationPriorityForMessageSync = [v28 usedNotificationPriorityForMessageSync];
            v34 = qword_28144D620;
            if (usedNotificationPriorityForMessageSync)
            {
              if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
              {
                v39 = 138543362;
                v40 = v11;
                _os_log_impl(&dword_25B19F000, v34, OS_LOG_TYPE_DEFAULT, "#BulletinDistributor Ping Subscriber asked us to notify them back when we added content for a message. We already have the message. Waiting for the content... (Message Id: %{public}@)", &v39, 0xCu);
              }
            }

            else
            {
              if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
              {
                [NNMKSyncProvider _shouldHandleForwardForNotification:withCompletion:];
              }

              [v28 setUsedNotificationPriorityForMessageSync:1];
              if ([v28 contentSynced])
              {
                [v28 setContentSyncedBecauseUserRequested:0];
                [v28 setContentSynced:0];
                [(NNMKSyncProvider *)self _requestDelegateForContentForMessageWithId:v11 highPriority:1];
              }

              [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:v28];
            }

            v35 = MEMORY[0x25F864490](completionCopy);
            sessionController = [(NNMKSyncProvider *)self sessionController];
            notificationPayloadAcks = [sessionController notificationPayloadAcks];
            [notificationPayloadAcks setObject:v35 forKeyedSubscript:v11];
          }
        }

        else
        {
          v30 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v39 = 138543362;
            v40 = v11;
            _os_log_impl(&dword_25B19F000, v30, OS_LOG_TYPE_DEFAULT, "#BulletinDistributor Ping Subscriber asked us to notify them back when we added content for a message. Waiting... (Message Id: %{public}@)", &v39, 0xCu);
          }

          v28 = MEMORY[0x25F864490](completionCopy);
          sessionController2 = [(NNMKSyncProvider *)self sessionController];
          notificationPayloadAcks2 = [sessionController2 notificationPayloadAcks];
          [notificationPayloadAcks2 setObject:v28 forKeyedSubscript:v11];
        }
      }
    }

    else
    {
      v18 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_INFO))
      {
        v39 = 138543362;
        v40 = v11;
        _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_INFO, "#BulletinDistributor Ping Subscriber asked us to notify them back when we added content for a message, but the ack handler was NULL. Ignoring... (Message Id: %{public}@)", &v39, 0xCu);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKSyncProvider _shouldHandleForwardForNotification:withCompletion:];
    }

    completionCopy[2](completionCopy, 1);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_fastForwardToFullSyncVersion:(unint64_t)version
{
  v17 = *MEMORY[0x277D85DE8];
  pairedDeviceRegistry = self->_pairedDeviceRegistry;
  if (pairedDeviceRegistry)
  {
    if ([(NNMKDeviceSyncRegistry *)pairedDeviceRegistry fullSyncVersion]< version)
    {
      *&v6 = 134218240;
      v12 = v6;
      do
      {
        v7 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v8 = self->_pairedDeviceRegistry;
          v9 = v7;
          fullSyncVersion = [(NNMKDeviceSyncRegistry *)v8 fullSyncVersion];
          *buf = v12;
          v14 = version + 1;
          v15 = 2048;
          v16 = fullSyncVersion;
          _os_log_impl(&dword_25B19F000, v9, OS_LOG_TYPE_DEFAULT, "Fast forwarding #sync-version (To: %lu - Current: %lu).", buf, 0x16u);
        }

        [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setFullSyncVersion:version, v12];
        [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry cleanUpForInitialSync];
      }

      while ([(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion]< version);
    }
  }

  else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKSyncProvider _fastForwardToFullSyncVersion:];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_stopTaks
{
  [(NNMKSyncServiceEndpoint *)self->_messagesSyncService resetRepeatPreventionHistory];
  [(NNMKSyncServiceEndpoint *)self->_contentSyncService resetRepeatPreventionHistory];
  [(NNMKSyncServiceEndpoint *)self->_fetchesSyncService resetRepeatPreventionHistory];
  [(NNMKSyncServiceEndpoint *)self->_accountsSyncService resetRepeatPreventionHistory];
  sessionController = [(NNMKSyncProvider *)self sessionController];
  notificationPayloadAcks = [sessionController notificationPayloadAcks];
  [notificationPayloadAcks removeAllObjects];

  [(NNMKSyncProvider *)self _requestDelegateToStopDownloadingAllMessageElements];
}

- (BOOL)isMessageOkForSyncedMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  providerQueue = self->_providerQueue;
  v14 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__NNMKSyncProvider_isMessageOkForSyncedMailboxes___block_invoke;
  block[3] = &unk_279936290;
  v9 = mailboxesCopy;
  v10 = &v11;
  block[4] = self;
  v6 = mailboxesCopy;
  dispatch_sync(providerQueue, block);
  LOBYTE(providerQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return providerQueue;
}

void __50__NNMKSyncProvider_isMessageOkForSyncedMailboxes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncController];
  *(*(*(a1 + 48) + 8) + 24) = [v2 doesMessageBelongToSyncedMailboxes:*(a1 + 40)];
}

- (id)_messageProtobufForMessage:(id)message
{
  messageCopy = message;
  persistenceHandler = [(NNMKSyncProvider *)self persistenceHandler];
  v6 = [persistenceHandler protoMessageFromMessage:messageCopy];

  return v6;
}

- (void)_checkConnectivityBasedSuspensionTimer:(BOOL)timer
{
  timerCopy = timer;
  disconnectedSince = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry disconnectedSince];

  if (((disconnectedSince != 0) ^ timerCopy))
  {
    if (timerCopy)
    {
      return;
    }

    goto LABEL_14;
  }

  v6 = qword_28144D620;
  if (!timerCopy)
  {
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Is now disconnected. Initiating timer to suspend sync.", buf, 2u);
    }

    date = [MEMORY[0x277CBEAA8] date];
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setDisconnectedSince:date];

LABEL_14:
    disconnectedSince2 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry disconnectedSince];

    if (disconnectedSince2)
    {
      v10 = MEMORY[0x277CBEAA8];
      v11 = *&kIntervalBeforeSuspendingDueToLackOfConnectivity;
      disconnectedSince3 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry disconnectedSince];
      v13 = [v10 dateWithTimeInterval:disconnectedSince3 sinceDate:v11];

      [v13 timeIntervalSinceNow];
      v15 = dispatch_time(0, (v14 * 1000000000.0));
      providerQueue = self->_providerQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__NNMKSyncProvider__checkConnectivityBasedSuspensionTimer___block_invoke;
      block[3] = &unk_279935CB0;
      block[4] = self;
      dispatch_after(v15, providerQueue, block);
    }

    return;
  }

  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
  {
    [NNMKSyncProvider _checkConnectivityBasedSuspensionTimer:];
  }

  [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setDisconnectedSince:0];
  if ([(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry isMessagesSyncSuspendedByConnectivity])
  {
    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry setIsMessagesSyncSuspendedByConnectivity:0];
    v7 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v7, OS_LOG_TYPE_DEFAULT, "Sync was suspending due to lack of connectivity. We're connected now, so resuming...", buf, 2u);
    }

    [(NNMKSyncProvider *)self _verifyPairingForcingSync:1];
  }
}

void __59__NNMKSyncProvider__checkConnectivityBasedSuspensionTimer___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 72) disconnectedSince];
  if (v2)
  {
    v3 = v2;
    v4 = [*(*(a1 + 32) + 72) isMessagesSyncSuspendedByConnectivity];

    if ((v4 & 1) == 0)
    {
      v5 = MEMORY[0x277CBEAA8];
      v6 = *&kIntervalBeforeSuspendingDueToLackOfConnectivity;
      v7 = [*(*(a1 + 32) + 72) disconnectedSince];
      v8 = [v5 dateWithTimeInterval:v7 sinceDate:v6];

      v9 = [MEMORY[0x277CBEAA8] date];
      v10 = [v9 compare:v8];

      if (v10 != -1)
      {
        v11 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "Suspending sync due to lack of connectivity...", buf, 2u);
        }

        [*(*(a1 + 32) + 72) setIsMessagesSyncSuspendedByConnectivity:1];
        v12 = +[NNMKAnalytics sharedInstance];
        [v12 reportHaltSyncRequestedFromSource:0];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v13 = [*(*(a1 + 32) + 72) activeMailboxes];
        v14 = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v20;
          do
          {
            v17 = 0;
            do
            {
              if (*v20 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [*(a1 + 32) _handleHaltSyncForMailbox:*(*(&v19 + 1) + 8 * v17++)];
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
          }

          while (v15);
        }

        [*(a1 + 32) _stopTaks];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)batchRequestHandlerDidTimeoutFetchRequest:(id)request
{
  v4 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25B19F000, v4, OS_LOG_TYPE_DEFAULT, "#FETCH #BATCHED_RESPONSE timed out. It will check if headers are available to respond back.", v5, 2u);
  }

  [(NNMKSyncProvider *)self _checkBatchFetchedMessages];
}

- (void)_checkBatchFetchedMessages
{
  v61 = *MEMORY[0x277D85DE8];
  batchRequestHandler = [(NNMKSyncProvider *)self batchRequestHandler];
  checkBatchFetchedMessages = [batchRequestHandler checkBatchFetchedMessages];

  fetchResults = [checkBatchFetchedMessages fetchResults];
  v6 = [fetchResults count];

  if (v6)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v48 = checkBatchFetchedMessages;
    fetchResults2 = [checkBatchFetchedMessages fetchResults];
    v8 = [fetchResults2 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v54;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v54 != v10)
          {
            objc_enumerationMutation(fetchResults2);
          }

          v12 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(*(&v53 + 1) + 8 * i);
            v14 = v12;
            mailboxId = [v13 mailboxId];
            *buf = 138543362;
            v59 = mailboxId;
            _os_log_impl(&dword_25B19F000, v14, OS_LOG_TYPE_DEFAULT, "Responding for #FETCH #BATCHED_RESPONSE request. (Mailbox id: %{public}@)", buf, 0xCu);
          }
        }

        v9 = [fetchResults2 countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v9);
    }

    checkBatchFetchedMessages = v48;
    fetchResults3 = [v48 fetchResults];
    v17 = [fetchResults3 count];

    if (v17 == 1)
    {
      messagesSyncService = self->_messagesSyncService;
      fetchResults4 = [v48 fetchResults];
      firstObject = [(NNMKProtoCoalescedBatchedFetchResult *)fetchResults4 firstObject];
      v21 = [(NNMKMessagesSyncServiceServer *)messagesSyncService sendBatchedFetchResult:firstObject];
    }

    else
    {
      fetchResults4 = objc_alloc_init(NNMKProtoCoalescedBatchedFetchResult);
      fetchResults5 = [v48 fetchResults];
      v23 = [fetchResults5 mutableCopy];
      [(NNMKProtoCoalescedBatchedFetchResult *)fetchResults4 setFetchResults:v23];

      v24 = [(NNMKMessagesSyncServiceServer *)self->_messagesSyncService sendCoalescedBatchedFetchResult:fetchResults4];
    }

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry beginUpdates];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    messageIdsForRequestingContentDownload = [v48 messageIdsForRequestingContentDownload];
    v26 = [messageIdsForRequestingContentDownload countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v50;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v50 != v28)
          {
            objc_enumerationMutation(messageIdsForRequestingContentDownload);
          }

          v30 = [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry syncedMessageForMessageWithId:*(*(&v49 + 1) + 8 * j)];
          [v30 setContentRequestedByUser:1];
          [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry addOrUpdateSyncedMessage:v30];
        }

        v27 = [messageIdsForRequestingContentDownload countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v27);
    }

    [(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry endUpdates];
    v31 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      messageIdsForRequestingContentDownload2 = [v48 messageIdsForRequestingContentDownload];
      v34 = [messageIdsForRequestingContentDownload2 count];
      *buf = 134217984;
      v59 = v34;
      _os_log_impl(&dword_25B19F000, v32, OS_LOG_TYPE_DEFAULT, "Requesting message body for %lu most recent headers for #BATCHED_RESPONSE.", buf, 0xCu);
    }

    messageIdsForRequestingContentDownload3 = [v48 messageIdsForRequestingContentDownload];
    [(NNMKSyncProvider *)self _requestDelegateForContentForMessageIds:messageIdsForRequestingContentDownload3 highPriority:1];
  }

  missingMessageHeaderIds = [checkBatchFetchedMessages missingMessageHeaderIds];
  v37 = [missingMessageHeaderIds count];

  if (v37)
  {
    v38 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
      missingMessageHeaderIds2 = [checkBatchFetchedMessages missingMessageHeaderIds];
      v41 = [missingMessageHeaderIds2 count];
      *buf = 134217984;
      v59 = v41;
      _os_log_impl(&dword_25B19F000, v39, OS_LOG_TYPE_DEFAULT, "Requesting message headers from MobileMail to respond for #BATCHED_RESPONSE. %li", buf, 0xCu);
    }

    missingMessageHeaderIds3 = [checkBatchFetchedMessages missingMessageHeaderIds];
    [(NNMKSyncProvider *)self _requestDelegateForMessagesToSendAsFetchResponseForMessageIds:missingMessageHeaderIds3];
  }

  mailboxesToTriggerFullSync = [checkBatchFetchedMessages mailboxesToTriggerFullSync];
  v44 = [mailboxesToTriggerFullSync count];

  if (v44)
  {
    v45 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B19F000, v45, OS_LOG_TYPE_DEFAULT, "Triggering #full-sync because we exceeded attempts for requesting missing headers for #BATCHED_RESPONSE.", buf, 2u);
    }

    mailboxesToTriggerFullSync2 = [checkBatchFetchedMessages mailboxesToTriggerFullSync];
    [(NNMKSyncProvider *)self _triggerFullSyncForMailboxes:mailboxesToTriggerFullSync2];
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidFailSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code
{
  identifierCopy = identifier;
  initialSyncProgressTracker = [(NNMKSyncProvider *)self initialSyncProgressTracker];
  [initialSyncProgressTracker syncFailedWithError:@"IDS failed sending messages."];

  resendScheduler = [(NNMKSyncProvider *)self resendScheduler];
  [resendScheduler handleIDSMessageFailedWithId:identifierCopy errorCode:code];
}

- (void)_notifyDelegateThatMessagesStatusWereUpdated:(id)updated
{
  updatedCopy = updated;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProvider:self didUpdateMessagesStatus:updatedCopy];
}

- (void)_requestDelegateForAccounts
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProviderDidRequestAccounts:self];
}

- (void)_requestDelegateForVIPList:(id)list
{
  listCopy = list;
  delegate = [(NNMKSyncProvider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(NNMKSyncProvider *)self delegate];
    [delegate2 syncProvider:self didRequestVIPSenderListWithRequestContext:listCopy];
  }
}

- (void)_requestDelegateForMoreMessagesWithMailbox:(id)mailbox beforeDate:(id)date messagesForspecialMailboxFilterType:(unint64_t)type
{
  v14[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  mailboxCopy = mailbox;
  v10 = objc_alloc_init(NNMKRequestContext);
  [(NNMKRequestContext *)v10 setBeforeDate:dateCopy];

  [(NNMKRequestContext *)v10 setCount:20];
  v14[0] = mailboxCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  [(NNMKRequestContext *)v10 setMailboxes:v11];
  [(NNMKRequestContext *)v10 setMessagesForSpecialMailbox:type];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProvider:self didRequestMessagesWithContext:v10];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_requestDelegateForMoreMessagesBeforeDateReceived:(id)received forConversationWithId:(id)id mailbox:(id)mailbox
{
  v15[1] = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  idCopy = id;
  mailboxCopy = mailbox;
  if (mailboxCopy)
  {
    v11 = objc_alloc_init(NNMKRequestContext);
    [(NNMKRequestContext *)v11 setBeforeDate:receivedCopy];
    [(NNMKRequestContext *)v11 setCount:20];
    v15[0] = mailboxCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [(NNMKRequestContext *)v11 setMailboxes:v12];

    [(NNMKRequestContext *)v11 setConversationId:idCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained syncProvider:self didRequestMessagesWithContext:v11];
  }

  else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKSyncProvider _requestDelegateForMoreMessagesBeforeDateReceived:forConversationWithId:mailbox:];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_requestDelegateForFirstMessagesForMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  if (os_log_type_enabled(__logCategories, OS_LOG_TYPE_DEBUG))
  {
    [NNMKSyncProvider _requestDelegateForFirstMessagesForMailboxes:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProvider:self didRequestFirstMessages:20 mailboxes:mailboxesCopy];
}

- (void)_requestDelegateToStopDownloadingMessageElementsForMessageWithId:(id)id
{
  idCopy = id;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProvider:self didRequestStopDownloadingMessageElementsForMessageWithId:idCopy];
}

- (void)_requestDelegateToStopDownloadingAllMessageElements
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProviderDidRequestStopDownloadingAllMessageElements:self];
}

- (void)_requestDelegateForFetchForMailboxes:(id)mailboxes
{
  v20 = *MEMORY[0x277D85DE8];
  mailboxesCopy = mailboxes;
  delegate = [(NNMKSyncProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(NNMKSyncProvider *)self delegate];
    [delegate2 syncProvider:self didRequestFetchForMailboxes:mailboxesCopy];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    delegate2 = mailboxesCopy;
    v8 = [delegate2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(delegate2);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained syncProviderDidRequestFetch:self forConversationId:0 mailbox:{v12, v15}];

          ++v11;
        }

        while (v9 != v11);
        v9 = [delegate2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_requestDelegateToSendComposedMessage:(id)message
{
  messageCopy = message;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProvider:self didRequestSendComposedMessage:messageCopy];
}

- (void)_requestDelegateForResendingMessagesWithIds:(id)ids
{
  idsCopy = ids;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProvider:self didRequestResendMessagesWithIds:idsCopy];
}

- (void)_requestDelegateForResendingAccountWithId:(id)id
{
  idCopy = id;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProvider:self didRequestResendAccountWithId:idCopy];
}

- (void)trackerDidFinishSendingInitialSyncContentToPairedDevice:(id)device
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(NNMKProtoInitialContentSyncCompletedNotification);
  [(NNMKProtoInitialContentSyncCompletedNotification *)v4 setFullSyncVersion:[(NNMKDeviceSyncRegistry *)self->_pairedDeviceRegistry fullSyncVersion]];
  v5 = [(NNMKMessageContentSyncServiceServer *)self->_contentSyncService notifyInitialContentSyncCompleted:v4];
  v6 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Notifying client that all content has been sync'ed (IDS Identifier: %{public}@)...", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_requestDelegateForMessagesToSendAsFetchResponseForMessageIds:(id)ids
{
  idsCopy = ids;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncProvider:self didRequestMessagesToSendAsFetchResponseForMessageIds:idsCopy];
}

- (id)_createDefaultSyncStateManager
{
  v2 = objc_alloc_init(NNMKSyncStateManager);

  return v2;
}

- (NNMKSyncProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_triggerFullSyncForMailbox:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_triggerFullSyncForMailboxes:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __97__NNMKSyncProvider_replyWithFirstMessages_includesProtectedMessages_mailboxes_organizedByThread___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_addMessages:(uint64_t)a3 mailbox:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 mailboxId];
  v7 = [NNMKMessage messageIdsFromMessages:a3];
  v8 = [v7 nnmk_description];
  v10 = 138543618;
  v11 = v6;
  v12 = 2114;
  v13 = v8;
  _os_log_error_impl(&dword_25B19F000, v5, OS_LOG_TYPE_ERROR, "Dropping messages to add because mailbox is not active. (Mailbox: %{public}@ - Messages: %{public}@)", &v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateMessagesStatus:(uint64_t)a3 mailbox:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 mailboxId];
  v7 = [a2 syncRequested];
  v8 = [a2 syncRequestedDate];
  v9 = [NNMKMessage messageIdsFromMessages:a3];
  v10 = [v9 nnmk_description];
  v12 = 138544130;
  v13 = v6;
  v14 = 2048;
  v15 = v7;
  v16 = 2114;
  v17 = v8;
  v18 = 2114;
  v19 = v10;
  _os_log_error_impl(&dword_25B19F000, v5, OS_LOG_TYPE_ERROR, "Dropping messages to update because mailbox is not active. (Mailbox: %{public}@ - Sync Requested: %lu - Request Date - %{public}@ - Messages: %{public}@)", &v12, 0x2Au);

  v11 = *MEMORY[0x277D85DE8];
}

void __46__NNMKSyncProvider_updateConversationId_mute___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void __83__NNMKSyncProvider_markConversationIdForNotify_messages_includesProtectedMessages___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void __65__NNMKSyncProvider_addMessageContent_forMessage_loadedProtected___block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_5() mailboxId];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_addMessageContent:forMessage:mailbox:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__NNMKSyncProvider_setOrganizeByThread___block_invoke_cold_1(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)messagesSyncServiceServer:didSendProtobufSuccessfullyWithIDSIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)messagesSyncServiceServer:didRequestSendMessage:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)messagesSyncServiceServer:(void *)a1 didRequestCompactMessages:(void *)a2 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 mailboxId];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0(&dword_25B19F000, v5, v6, "Ignoring compact request. Mailbox: %{public}@ (exists: %d)", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)messageContentSyncServiceServer:didSendProtobufSuccessfullyWithIDSIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)accountsSyncServiceServer:(void *)a1 didChangeAccountSourceType:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_5() fullSyncVersion];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __97__NNMKSyncProvider_accountsSyncServiceServer_didReceivedAccountAuthenticationStatus_requestTime___block_invoke_68_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_5() emailAddressToken];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 8u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleFetchRequest:(void *)a1 shouldResumeSync:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5() mailboxId];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)fetchesSyncServiceServer:didRequestMoreMessagesInBatch:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchesSyncServiceServer:(void *)a1 didRequestMoreMessages:(void *)a2 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 mailboxId];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0(&dword_25B19F000, v5, v6, "Ignoring #LOAD_MORE_MESSAGES request. Mailbox: %{public}@ (exists: %d)", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)fetchesSyncServiceServer:(void *)a1 didRequestMoreMessagesForConversation:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5() mailboxId];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setupPairedDeviceRegistry
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_verifyPairingForcingSync:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_verifyPairingForcingSync:.cold.2()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)resendScheduler:didRequestRetrySendingAccountIdentifier:resendInterval:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_shouldHandleForwardForNotification:withCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_shouldHandleForwardForNotification:withCompletion:.cold.2()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_fastForwardToFullSyncVersion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_checkConnectivityBasedSuspensionTimer:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_requestDelegateForMoreMessagesBeforeDateReceived:forConversationWithId:mailbox:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_requestDelegateForFirstMessagesForMailboxes:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end