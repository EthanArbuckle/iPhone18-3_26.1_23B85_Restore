@interface EMOutgoingMessageRepository
+ (NSXPCInterface)remoteInterface;
+ (OS_os_log)log;
+ (id)signpostLog;
- (BOOL)isProcessing;
- (BOOL)outboxContainsMessageFromAccount:(id)account;
- (EMOutgoingMessageRepository)initWithRemoteConnection:(id)connection;
- (id)removeSendLaterDateFromMessage:(id)message draftsMailboxObjectID:(id)d;
- (id)saveDraftMessage:(id)message mailboxObjectID:(id)d previousDraftObjectID:(id)iD;
- (id)saveSendLaterMessage:(id)message sendLaterDate:(id)date;
- (id)updateSendLaterDate:(id)date message:(id)message;
- (unint64_t)numberOfPendingMessages;
- (unint64_t)signpostID;
- (void)_restartObservingUnsentChangesIfNecessary;
- (void)_startObservingUnsentChangesIfNecessary;
- (void)addOutgoingMessageRepositoryObserver:(id)observer;
- (void)cancelLastDelayedMessage:(id)message;
- (void)dealloc;
- (void)deleteDraftsInMailbox:(id)mailbox documentID:(id)d previousDraftObjectID:(id)iD;
- (void)hasDelayedMessagesDidChange:(BOOL)change;
- (void)numberOfPendingMessagesChanged:(id)changed;
- (void)processAllQueuedMessages;
- (void)removeOutgoingMessageRepositoryObserver:(id)observer;
- (void)resumeDeliveryQueue;
- (void)scheduleAlarmForSendLaterDate:(id)date completion:(id)completion;
- (void)suspendDeliveryQueue;
- (void)updateObserversForHasDelayedMessagesDidChange;
- (void)updateObserversForPendingMessagesChange;
@end

@implementation EMOutgoingMessageRepository

+ (NSXPCInterface)remoteInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4630940];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_numberOfPendingMessagesChanged_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F46422D0];
  [v4 setInterface:v2 forSelector:sel_startObservingPendingMessageChangesWithChangeObserver_observationIdentifier_ argumentIndex:0 ofReply:0];

  return v4;
}

- (void)_startObservingUnsentChangesIfNecessary
{
  registrationCancelable = [(EMOutgoingMessageRepository *)self registrationCancelable];

  if (!registrationCancelable)
  {
    atomic_store(1u, &self->_hasStartedObservingUnsentChanges);
    connection = [(EMOutgoingMessageRepository *)self connection];
    v5 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_164];

    v6 = [[EMObjectID alloc] initAsEphemeralID:1];
    [v5 startObservingPendingMessageChangesWithChangeObserver:self observationIdentifier:v6];
    v7 = MEMORY[0x1E699B7F8];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __70__EMOutgoingMessageRepository__startObservingUnsentChangesIfNecessary__block_invoke_167;
    v14 = &unk_1E826C148;
    v8 = v5;
    v15 = v8;
    v9 = v6;
    v16 = v9;
    v10 = [v7 tokenWithCancelationBlock:&v11];
    [(EMOutgoingMessageRepository *)self setRegistrationCancelable:v10, v11, v12, v13, v14];
  }
}

- (void)updateObserversForPendingMessagesChange
{
  v15 = *MEMORY[0x1E69E9840];
  pendingMessages = [(EMOutgoingMessageRepository *)self pendingMessages];
  unsignedIntegerValue = [pendingMessages unsignedIntegerValue];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  observers = [(EMOutgoingMessageRepository *)self observers];
  v6 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(observers);
        }

        [*(*(&v10 + 1) + 8 * v8++) numberOfPendingMessagesChanged:unsignedIntegerValue];
      }

      while (v6 != v8);
      v6 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__EMOutgoingMessageRepository_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_29 != -1)
  {
    dispatch_once(&log_onceToken_29, block);
  }

  v2 = log_log_29;

  return v2;
}

void __34__EMOutgoingMessageRepository_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_29;
  log_log_29 = v1;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__EMOutgoingMessageRepository_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_2 != -1)
  {
    dispatch_once(&signpostLog_onceToken_2, block);
  }

  v2 = signpostLog_log_2;

  return v2;
}

void __42__EMOutgoingMessageRepository_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_2;
  signpostLog_log_2 = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EMOutgoingMessageRepository)initWithRemoteConnection:(id)connection
{
  connectionCopy = connection;
  v20.receiver = self;
  v20.super_class = EMOutgoingMessageRepository;
  v6 = [(EMOutgoingMessageRepository *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v8 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EMOutgoingMessageRepository" qualityOfService:17];
    scheduler = v7->_scheduler;
    v7->_scheduler = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v7->_observers;
    v7->_observers = v10;

    atomic_store(0, &v7->_hasStartedObservingUnsentChanges);
    v7->_hasDelayedMessages = 0;
    objc_initWeak(&location, v7);
    connection = v7->_connection;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__EMOutgoingMessageRepository_initWithRemoteConnection___block_invoke;
    v17[3] = &unk_1E826C070;
    objc_copyWeak(&v18, &location);
    [(EMRemoteConnection *)connection addResetHandler:v17];
    v13 = v7->_connection;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__EMOutgoingMessageRepository_initWithRemoteConnection___block_invoke_2;
    v15[3] = &unk_1E826C070;
    objc_copyWeak(&v16, &location);
    [(EMRemoteConnection *)v13 addRecoveryHandler:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __56__EMOutgoingMessageRepository_initWithRemoteConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRegistrationCancelable:0];
}

void __56__EMOutgoingMessageRepository_initWithRemoteConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _restartObservingUnsentChangesIfNecessary];
}

- (void)dealloc
{
  [(EFCancelable *)self->_registrationCancelable cancel];
  v3.receiver = self;
  v3.super_class = EMOutgoingMessageRepository;
  [(EMOutgoingMessageRepository *)&v3 dealloc];
}

- (id)saveDraftMessage:(id)message mailboxObjectID:(id)d previousDraftObjectID:(id)iD
{
  v26 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dCopy = d;
  iDCopy = iD;
  promise = [MEMORY[0x1E699B868] promise];
  v12 = +[EMOutgoingMessageRepository signpostLog];
  signpostID = [(EMOutgoingMessageRepository *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 138412290;
    v25 = iDCopy;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v12, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "EMAIL DELIVERY", "Begin Saving Draft %@", buf, 0xCu);
  }

  connection = [(EMOutgoingMessageRepository *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __86__EMOutgoingMessageRepository_saveDraftMessage_mailboxObjectID_previousDraftObjectID___block_invoke;
  v21[3] = &unk_1E826F088;
  v21[4] = self;
  v16 = promise;
  v22 = v16;
  v17 = iDCopy;
  v23 = v17;
  [reattemptingRemoteObjectProxy saveDraftMessage:messageCopy mailboxID:dCopy previousDraftObjectID:v17 completion:v21];

  future = [v16 future];

  v19 = *MEMORY[0x1E69E9840];

  return future;
}

void __86__EMOutgoingMessageRepository_saveDraftMessage_mailboxObjectID_previousDraftObjectID___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) scheduler];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __86__EMOutgoingMessageRepository_saveDraftMessage_mailboxObjectID_previousDraftObjectID___block_invoke_2;
  v13 = &unk_1E826C148;
  v14 = *(a1 + 40);
  v5 = v3;
  v15 = v5;
  [v4 performBlock:&v10];

  v6 = [EMOutgoingMessageRepository signpostLog:v10];
  v7 = [*(a1 + 32) signpostID];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v8 = *(a1 + 48);
    *buf = 138412290;
    v17 = v8;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v6, OS_SIGNPOST_INTERVAL_END, v7, "EMAIL DELIVERY", "End Saving Draft %@", buf, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)saveSendLaterMessage:(id)message sendLaterDate:(id)date
{
  messageCopy = message;
  dateCopy = date;
  promise = [MEMORY[0x1E699B868] promise];
  v9 = +[EMOutgoingMessageRepository signpostLog];
  signpostID = [(EMOutgoingMessageRepository *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v9, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "EMAIL DELIVERY", "Begin Saving Send Later", buf, 2u);
  }

  connection = [(EMOutgoingMessageRepository *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __66__EMOutgoingMessageRepository_saveSendLaterMessage_sendLaterDate___block_invoke;
  v19 = &unk_1E826F0B0;
  selfCopy = self;
  v13 = promise;
  v21 = v13;
  [reattemptingRemoteObjectProxy saveSendLaterMessage:messageCopy sendLaterDate:dateCopy completion:&v16];

  future = [v13 future];

  return future;
}

void __66__EMOutgoingMessageRepository_saveSendLaterMessage_sendLaterDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) scheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__EMOutgoingMessageRepository_saveSendLaterMessage_sendLaterDate___block_invoke_2;
  v9[3] = &unk_1E826C148;
  v10 = *(a1 + 40);
  v5 = v3;
  v11 = v5;
  [v4 performBlock:v9];

  v6 = +[EMOutgoingMessageRepository signpostLog];
  v7 = [*(a1 + 32) signpostID];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v6, OS_SIGNPOST_INTERVAL_END, v7, "EMAIL DELIVERY", "End Saving Send Later", v8, 2u);
  }
}

- (id)updateSendLaterDate:(id)date message:(id)message
{
  dateCopy = date;
  messageCopy = message;
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMOutgoingMessageRepository.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"date"}];
  }

  promise = [MEMORY[0x1E699B868] promise];
  v10 = +[EMOutgoingMessageRepository signpostLog];
  signpostID = [(EMOutgoingMessageRepository *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v10, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "EMAIL DELIVERY", "Begin Saving Send Later", buf, 2u);
  }

  connection = [(EMOutgoingMessageRepository *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__EMOutgoingMessageRepository_updateSendLaterDate_message___block_invoke;
  v18[3] = &unk_1E826F0B0;
  v18[4] = self;
  v14 = promise;
  v19 = v14;
  [reattemptingRemoteObjectProxy updateSendLaterDate:dateCopy message:messageCopy completion:v18];

  future = [v14 future];

  return future;
}

void __59__EMOutgoingMessageRepository_updateSendLaterDate_message___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) scheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__EMOutgoingMessageRepository_updateSendLaterDate_message___block_invoke_2;
  v9[3] = &unk_1E826C148;
  v10 = *(a1 + 40);
  v5 = v3;
  v11 = v5;
  [v4 performBlock:v9];

  v6 = +[EMOutgoingMessageRepository signpostLog];
  v7 = [*(a1 + 32) signpostID];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v6, OS_SIGNPOST_INTERVAL_END, v7, "EMAIL DELIVERY", "End Saving Send Later", v8, 2u);
  }
}

- (id)removeSendLaterDateFromMessage:(id)message draftsMailboxObjectID:(id)d
{
  messageCopy = message;
  dCopy = d;
  promise = [MEMORY[0x1E699B868] promise];
  v9 = +[EMOutgoingMessageRepository signpostLog];
  signpostID = [(EMOutgoingMessageRepository *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v9, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "EMAIL DELIVERY", "Begin Removing Send Later", buf, 2u);
  }

  connection = [(EMOutgoingMessageRepository *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __84__EMOutgoingMessageRepository_removeSendLaterDateFromMessage_draftsMailboxObjectID___block_invoke;
  v19 = &unk_1E826F0B0;
  selfCopy = self;
  v13 = promise;
  v21 = v13;
  [reattemptingRemoteObjectProxy removeSendLaterDateFromMessage:messageCopy draftsMailboxObjectID:dCopy completion:&v16];

  future = [v13 future];

  return future;
}

void __84__EMOutgoingMessageRepository_removeSendLaterDateFromMessage_draftsMailboxObjectID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) scheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__EMOutgoingMessageRepository_removeSendLaterDateFromMessage_draftsMailboxObjectID___block_invoke_2;
  v9[3] = &unk_1E826C148;
  v10 = *(a1 + 40);
  v5 = v3;
  v11 = v5;
  [v4 performBlock:v9];

  v6 = +[EMOutgoingMessageRepository signpostLog];
  v7 = [*(a1 + 32) signpostID];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v6, OS_SIGNPOST_INTERVAL_END, v7, "EMAIL DELIVERY", "End Removing Send Later", v8, 2u);
  }
}

- (void)scheduleAlarmForSendLaterDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  connection = [(EMOutgoingMessageRepository *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__EMOutgoingMessageRepository_scheduleAlarmForSendLaterDate_completion___block_invoke;
  v11[3] = &unk_1E826EAC0;
  v11[4] = self;
  v10 = completionCopy;
  v12 = v10;
  [reattemptingRemoteObjectProxy scheduleAlarmForSendLaterDate:dateCopy completion:v11];
}

void __72__EMOutgoingMessageRepository_scheduleAlarmForSendLaterDate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) scheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__EMOutgoingMessageRepository_scheduleAlarmForSendLaterDate_completion___block_invoke_2;
  v6[3] = &unk_1E826D1F0;
  v8 = *(a1 + 40);
  v5 = v3;
  v7 = v5;
  [v4 performBlock:v6];
}

- (void)deleteDraftsInMailbox:(id)mailbox documentID:(id)d previousDraftObjectID:(id)iD
{
  v22 = *MEMORY[0x1E69E9840];
  mailboxCopy = mailbox;
  dCopy = d;
  iDCopy = iD;
  v12 = iDCopy;
  if (dCopy)
  {
    v13 = mailboxCopy == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 && !iDCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMOutgoingMessageRepository.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"(mailboxObjectID && documentID) || objectID"}];
  }

  v14 = +[EMOutgoingMessageRepository log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v12;
    _os_log_impl(&dword_1C6655000, v14, OS_LOG_TYPE_DEFAULT, "Begin Deleting Drafts In Mailbox %@", buf, 0xCu);
  }

  connection = [(EMOutgoingMessageRepository *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  [reattemptingRemoteObjectProxy deleteDraftsInMailboxID:mailboxCopy documentID:dCopy previousDraftObjectID:v12];

  v17 = +[EMOutgoingMessageRepository log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v12;
    _os_log_impl(&dword_1C6655000, v17, OS_LOG_TYPE_DEFAULT, "End Deleting Drafts In Mailbox %@", buf, 0xCu);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __73__EMOutgoingMessageRepository_deliverMessage_usingMailDrop_isCancelable___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) scheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__EMOutgoingMessageRepository_deliverMessage_usingMailDrop_isCancelable___block_invoke_2;
  v7[3] = &unk_1E826D498;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = *(a1 + 48);
  v6 = v3;
  v10 = v6;
  [v4 performBlock:v7];
}

uint64_t __73__EMOutgoingMessageRepository_deliverMessage_usingMailDrop_isCancelable___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[EMOutgoingMessageRepository signpostLog];
  v3 = [*(a1 + 32) signpostID];
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v4 = [*(a1 + 40) originalMessageID];
    v7 = 138412290;
    v8 = v4;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v2, OS_SIGNPOST_INTERVAL_END, v3, "EMAIL DELIVERY", "End Message Delivery %@", &v7, 0xCu);
  }

  result = [*(a1 + 48) finishWithResult:*(a1 + 56)];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)cancelLastDelayedMessage:(id)message
{
  messageCopy = message;
  v5 = +[EMOutgoingMessageRepository signpostLog];
  signpostID = [(EMOutgoingMessageRepository *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v5, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "UNDO SEND", "Begin Cancelling Last Pending Message", buf, 2u);
  }

  connection = [(EMOutgoingMessageRepository *)self connection];
  reattemptingRemoteObjectProxy = [connection reattemptingRemoteObjectProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__EMOutgoingMessageRepository_cancelLastDelayedMessage___block_invoke;
  v10[3] = &unk_1E826E798;
  v10[4] = self;
  v9 = messageCopy;
  v11 = v9;
  [reattemptingRemoteObjectProxy cancelLastDelayedMessage:v10];
}

uint64_t __56__EMOutgoingMessageRepository_cancelLastDelayedMessage___block_invoke(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = +[EMOutgoingMessageRepository signpostLog];
  v5 = [*(a1 + 32) signpostID];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v4, OS_SIGNPOST_INTERVAL_END, v5, "UNDO SEND", "End Cancelling Last Pending Message (success:%{BOOL}d)", v8, 8u);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)outboxContainsMessageFromAccount:(id)account
{
  v31 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v5 = +[EMOutgoingMessageRepository signpostLog];
  signpostID = [(EMOutgoingMessageRepository *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    ef_publicDescription = [accountCopy ef_publicDescription];
    *buf = 138412290;
    v28 = ef_publicDescription;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v5, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "EMAIL DELIVERY", "Begin Outbox Query For Account %@", buf, 0xCu);
  }

  connection = [(EMOutgoingMessageRepository *)self connection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64__EMOutgoingMessageRepository_outboxContainsMessageFromAccount___block_invoke;
  v21[3] = &unk_1E826D7A0;
  v9 = accountCopy;
  v22 = v9;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v21];
  objectID = [v9 objectID];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__EMOutgoingMessageRepository_outboxContainsMessageFromAccount___block_invoke_150;
  v20[3] = &unk_1E826F100;
  v20[4] = &v23;
  [v10 outboxContainsMessageFromAccountObjectID:objectID completion:v20];

  v12 = +[EMOutgoingMessageRepository signpostLog];
  signpostID2 = [(EMOutgoingMessageRepository *)self signpostID];
  if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    ef_publicDescription2 = [v9 ef_publicDescription];
    v15 = ef_publicDescription2;
    if (*(v24 + 24))
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    *buf = 138412546;
    v28 = ef_publicDescription2;
    v29 = 2112;
    v30 = v16;
    _os_signpost_emit_with_name_impl(&dword_1C6655000, v12, OS_SIGNPOST_INTERVAL_END, signpostID2, "EMAIL DELIVERY", "End Outbox Query For Account %@: Contains Messages : %@", buf, 0x16u);
  }

  v17 = *(v24 + 24);
  _Block_object_dispose(&v23, 8);

  v18 = *MEMORY[0x1E69E9840];
  return v17 & 1;
}

void __64__EMOutgoingMessageRepository_outboxContainsMessageFromAccount___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = +[EMOutgoingMessageRepository log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) ef_publicDescription];
    __64__EMOutgoingMessageRepository_outboxContainsMessageFromAccount___block_invoke_cold_1(v3, v5, v2);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)suspendDeliveryQueue
{
  v3 = +[EMOutgoingMessageRepository log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "Begin Suspending Delivery Queue", v6, 2u);
  }

  connection = [(EMOutgoingMessageRepository *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy suspendDeliveryQueue];
}

- (void)resumeDeliveryQueue
{
  v3 = +[EMOutgoingMessageRepository log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "Resuming Delivery Queue", v6, 2u);
  }

  connection = [(EMOutgoingMessageRepository *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy resumeDeliveryQueue];
}

- (void)processAllQueuedMessages
{
  v3 = +[EMOutgoingMessageRepository log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "Trigger Processing Queued Delivery Messages", v6, 2u);
  }

  connection = [(EMOutgoingMessageRepository *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy processAllQueuedMessages];
}

- (BOOL)isProcessing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  connection = [(EMOutgoingMessageRepository *)self connection];
  v3 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_40];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__EMOutgoingMessageRepository_isProcessing__block_invoke_157;
  v5[3] = &unk_1E826F100;
  v5[4] = &v6;
  [v3 isProcessingWithCompletion:v5];

  LOBYTE(connection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return connection;
}

void __43__EMOutgoingMessageRepository_isProcessing__block_invoke()
{
  v0 = +[EMOutgoingMessageRepository log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __43__EMOutgoingMessageRepository_isProcessing__block_invoke_cold_1(v0);
  }
}

- (unint64_t)numberOfPendingMessages
{
  v29 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = 0;
  scheduler = [(EMOutgoingMessageRepository *)self scheduler];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__EMOutgoingMessageRepository_numberOfPendingMessages__block_invoke;
  v20[3] = &unk_1E826F128;
  v20[4] = self;
  v20[5] = &v21;
  [scheduler performSyncBlock:v20];

  v4 = v22[5];
  if (v4)
  {
    unsignedIntValue = [v4 unsignedIntValue];
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v6 = +[EMOutgoingMessageRepository signpostLog];
    signpostID = [(EMOutgoingMessageRepository *)self signpostID];
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6655000, v6, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "EMAIL DELIVERY", "Begin Query For Number of Pending Messages", buf, 2u);
    }

    connection = [(EMOutgoingMessageRepository *)self connection];
    v9 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_160_0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__EMOutgoingMessageRepository_numberOfPendingMessages__block_invoke_161;
    v15[3] = &unk_1E826F150;
    v15[4] = &v16;
    [v9 numberOfPendingMessagesWithCompletion:v15];

    v10 = +[EMOutgoingMessageRepository signpostLog];
    signpostID2 = [(EMOutgoingMessageRepository *)self signpostID];
    if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v12 = v17[3];
      *buf = 134217984;
      v28 = v12;
      _os_signpost_emit_with_name_impl(&dword_1C6655000, v10, OS_SIGNPOST_INTERVAL_END, signpostID2, "EMAIL DELIVERY", "End Query For Number of Pending Messages with result %lu", buf, 0xCu);
    }

    unsignedIntValue = v17[3];
    _Block_object_dispose(&v16, 8);
  }

  _Block_object_dispose(&v21, 8);

  v13 = *MEMORY[0x1E69E9840];
  return unsignedIntValue;
}

void __54__EMOutgoingMessageRepository_numberOfPendingMessages__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingMessages];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __54__EMOutgoingMessageRepository_numberOfPendingMessages__block_invoke_158()
{
  v0 = +[EMOutgoingMessageRepository log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __54__EMOutgoingMessageRepository_numberOfPendingMessages__block_invoke_158_cold_1(v0);
  }
}

- (void)_restartObservingUnsentChangesIfNecessary
{
  v2 = atomic_load(&self->_hasStartedObservingUnsentChanges);
  if (v2)
  {
    [(EMOutgoingMessageRepository *)self _startObservingUnsentChangesIfNecessary];
  }
}

void __70__EMOutgoingMessageRepository__startObservingUnsentChangesIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[EMOutgoingMessageRepository log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __63__EMMailboxRepository__startObservingMailboxChangesIfNecessary__block_invoke_cold_1(v2, v3);
  }
}

- (void)numberOfPendingMessagesChanged:(id)changed
{
  changedCopy = changed;
  scheduler = [(EMOutgoingMessageRepository *)self scheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__EMOutgoingMessageRepository_numberOfPendingMessagesChanged___block_invoke;
  v7[3] = &unk_1E826C148;
  v7[4] = self;
  v6 = changedCopy;
  v8 = v6;
  [scheduler performBlock:v7];
}

void __62__EMOutgoingMessageRepository_numberOfPendingMessagesChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingMessages];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    [*(a1 + 32) setPendingMessages:*(a1 + 40)];
    v4 = *(a1 + 32);

    [v4 updateObserversForPendingMessagesChange];
  }
}

- (void)hasDelayedMessagesDidChange:(BOOL)change
{
  scheduler = [(EMOutgoingMessageRepository *)self scheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__EMOutgoingMessageRepository_hasDelayedMessagesDidChange___block_invoke;
  v6[3] = &unk_1E826CE48;
  v6[4] = self;
  changeCopy = change;
  [scheduler performBlock:v6];
}

uint64_t __59__EMOutgoingMessageRepository_hasDelayedMessagesDidChange___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) hasDelayedMessages];
  if (*(a1 + 40) != result)
  {
    [*(a1 + 32) setHasDelayedMessages:?];
    v3 = *(a1 + 32);

    return [v3 updateObserversForHasDelayedMessagesDidChange];
  }

  return result;
}

- (void)addOutgoingMessageRepositoryObserver:(id)observer
{
  observerCopy = observer;
  scheduler = [(EMOutgoingMessageRepository *)self scheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__EMOutgoingMessageRepository_addOutgoingMessageRepositoryObserver___block_invoke;
  v7[3] = &unk_1E826C148;
  v7[4] = self;
  v6 = observerCopy;
  v8 = v6;
  [scheduler performBlock:v7];
}

uint64_t __68__EMOutgoingMessageRepository_addOutgoingMessageRepositoryObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 32) pendingMessages];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) pendingMessages];
    [v4 numberOfPendingMessagesChanged:{objc_msgSend(v5, "unsignedIntegerValue")}];
  }

  v6 = *(a1 + 32);

  return [v6 _startObservingUnsentChangesIfNecessary];
}

- (void)removeOutgoingMessageRepositoryObserver:(id)observer
{
  observerCopy = observer;
  scheduler = [(EMOutgoingMessageRepository *)self scheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__EMOutgoingMessageRepository_removeOutgoingMessageRepositoryObserver___block_invoke;
  v7[3] = &unk_1E826C148;
  v7[4] = self;
  v6 = observerCopy;
  v8 = v6;
  [scheduler performBlock:v7];
}

void __71__EMOutgoingMessageRepository_removeOutgoingMessageRepositoryObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)updateObserversForHasDelayedMessagesDidChange
{
  v14 = *MEMORY[0x1E69E9840];
  hasDelayedMessages = [(EMOutgoingMessageRepository *)self hasDelayedMessages];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  observers = [(EMOutgoingMessageRepository *)self observers];
  v5 = [observers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(observers);
        }

        [*(*(&v9 + 1) + 8 * v7++) hasDelayedMessagesDidChange:hasDelayedMessages];
      }

      while (v5 != v7);
      v5 = [observers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __64__EMOutgoingMessageRepository_outboxContainsMessageFromAccount___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "encountered error while looking for outbox messages for account %{public}@", buf, 0xCu);
}

@end