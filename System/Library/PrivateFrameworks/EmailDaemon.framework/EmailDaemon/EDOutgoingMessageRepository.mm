@interface EDOutgoingMessageRepository
+ (id)log;
+ (id)signpostLog;
- (EDOutgoingMessageRepository)initWithMessagePersistence:(id)persistence messageChangeManager:(id)manager;
- (id)messagesForDocumentID:(id)d mailboxID:(id)iD;
- (id)outgoingMessageFromPersistedMessage:(id)message;
- (unint64_t)signpostID;
- (void)cancelLastDelayedMessage:(id)message;
- (void)cancelObservation:(id)observation;
- (void)deleteDraftsInMailboxID:(id)d documentID:(id)iD previousDraftObjectID:(id)objectID;
- (void)deliverMessage:(id)message usingMailDrop:(BOOL)drop isCancelable:(BOOL)cancelable completion:(id)completion;
- (void)isProcessingWithCompletion:(id)completion;
- (void)numberOfPendingMessagesWithCompletion:(id)completion;
- (void)outboxContainsMessageFromAccountObjectID:(id)d completion:(id)completion;
- (void)performBlock:(id)block;
- (void)removeSendLaterDateFromMessage:(id)message draftsMailboxObjectID:(id)d completion:(id)completion;
- (void)saveDraftMessage:(id)message mailboxID:(id)d previousDraftObjectID:(id)iD completion:(id)completion;
- (void)saveSendLaterMessage:(id)message sendLaterDate:(id)date completion:(id)completion;
- (void)scheduleAlarmForSendLaterDate:(id)date completion:(id)completion;
- (void)startObservingPendingMessageChangesWithChangeObserver:(id)observer observationIdentifier:(id)identifier;
- (void)updateSendLaterDate:(id)date message:(id)message completion:(id)completion;
@end

@implementation EDOutgoingMessageRepository

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__EDOutgoingMessageRepository_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_72 != -1)
  {
    dispatch_once(&log_onceToken_72, block);
  }

  v2 = log_log_72;

  return v2;
}

void __34__EDOutgoingMessageRepository_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_72;
  log_log_72 = v1;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__EDOutgoingMessageRepository_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_6 != -1)
  {
    dispatch_once(&signpostLog_onceToken_6, block);
  }

  v2 = signpostLog_log_6;

  return v2;
}

void __42__EDOutgoingMessageRepository_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_6;
  signpostLog_log_6 = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EDOutgoingMessageRepository)initWithMessagePersistence:(id)persistence messageChangeManager:(id)manager
{
  persistenceCopy = persistence;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = EDOutgoingMessageRepository;
  v9 = [(EDOutgoingMessageRepository *)&v14 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.email.EDOutgoingMessageRepository", v10);
    workQueue = v9->_workQueue;
    v9->_workQueue = v11;

    objc_storeStrong(&v9->_messagePersistence, persistence);
    objc_storeStrong(&v9->_messageChangeManager, manager);
  }

  return v9;
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  v5 = [MEMORY[0x1E699B860] transactionWithDescription:@"com.apple.email.outgoingmessagerepository.deliveryworkblock"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__EDOutgoingMessageRepository_performBlock___block_invoke;
  v9[3] = &unk_1E82518B0;
  v10 = v5;
  v11 = blockCopy;
  v6 = v5;
  v7 = blockCopy;
  v8 = _Block_copy(v9);
  dispatch_async(self->_workQueue, v8);
}

uint64_t __44__EDOutgoingMessageRepository_performBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)saveDraftMessage:(id)message mailboxID:(id)d previousDraftObjectID:(id)iD completion:(id)completion
{
  messageCopy = message;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __91__EDOutgoingMessageRepository_saveDraftMessage_mailboxID_previousDraftObjectID_completion___block_invoke;
  v18[3] = &unk_1E8255400;
  v18[4] = self;
  v19 = iDCopy;
  v20 = messageCopy;
  v21 = dCopy;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = dCopy;
  v16 = messageCopy;
  v17 = iDCopy;
  [(EDOutgoingMessageRepository *)self performBlock:v18];
}

void __91__EDOutgoingMessageRepository_saveDraftMessage_mailboxID_previousDraftObjectID_completion___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = +[EDOutgoingMessageRepository signpostLog];
  v3 = [*(a1 + 32) signpostID];
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v4 = *(a1 + 40);
    *buf = 138412290;
    v47 = v4;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v2, OS_SIGNPOST_EVENT, v3, "EMAIL DELIVERY", "Begin Saving Draft %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) messagePersistence];
  v6 = [v5 baseMessageForOutgoingMessage:*(a1 + 48) isDraft:1];

  v7 = [v6 headers];
  v36 = [v7 firstHeaderForKey:*MEMORY[0x1E699B1C0]];

  v8 = [*(a1 + 32) messagesForDocumentID:v36 mailboxID:*(a1 + 56)];
  v9 = [*(a1 + 32) messageChangeManager];
  v45 = v6;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v11 = [*(a1 + 56) url];
  v37 = [v9 addNewMessages:v10 mailboxURL:v11 userInitiated:1];

  v12 = MEMORY[0x1E699AD28];
  v44 = *(a1 + 56);
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v14 = [v12 mailboxScopeForMailboxObjectIDs:v13 forExclusion:0];

  v15 = [*(a1 + 32) messagePersistence];
  v35 = [v15 messagesForPersistedMessages:v37 mailboxScope:v14];

  if ([v8 count])
  {
    v16 = [*(a1 + 32) messageChangeManager];
    [v16 deleteMessages:v8];
  }

  if (*(a1 + 40))
  {
    v17 = [*(a1 + 32) messagePersistence];
    v43 = *(a1 + 40);
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    v19 = [v17 persistedMessagesForMessageObjectIDs:v18 requireProtectedData:0 temporarilyUnavailableMessageObjectIDs:0];

    v20 = [*(a1 + 32) messageChangeManager];
    [v20 deleteMessages:v19];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v21 = v35;
  v22 = [v21 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v22)
  {
    v23 = *v39;
    do
    {
      v24 = 0;
      do
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v38 + 1) + 8 * v24);
        v26 = [*(a1 + 32) messagePersistence];
        v27 = [v25 objectID];
        v28 = [v26 requestSummaryForMessageObjectID:v27];

        ++v24;
      }

      while (v22 != v24);
      v22 = [v21 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v22);
  }

  v29 = +[EDOutgoingMessageRepository signpostLog];
  v30 = [*(a1 + 32) signpostID];
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    v31 = *(a1 + 40);
    *buf = 138412290;
    v47 = v31;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v29, OS_SIGNPOST_EVENT, v30, "EMAIL DELIVERY", "End Saving Draft %@", buf, 0xCu);
  }

  v32 = *(a1 + 64);
  v33 = [v21 firstObject];
  (*(v32 + 16))(v32, v33);

  v34 = *MEMORY[0x1E69E9840];
}

- (void)saveSendLaterMessage:(id)message sendLaterDate:(id)date completion:(id)completion
{
  messageCopy = message;
  dateCopy = date;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__EDOutgoingMessageRepository_saveSendLaterMessage_sendLaterDate_completion___block_invoke;
  v14[3] = &unk_1E8253348;
  v14[4] = self;
  v15 = dateCopy;
  v16 = messageCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = messageCopy;
  v13 = dateCopy;
  [(EDOutgoingMessageRepository *)self performBlock:v14];
}

void __77__EDOutgoingMessageRepository_saveSendLaterMessage_sendLaterDate_completion___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = +[EDOutgoingMessageRepository signpostLog];
  v3 = [*(a1 + 32) signpostID];
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v4 = *(a1 + 40);
    *buf = 138543362;
    v35 = v4;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v2, OS_SIGNPOST_INTERVAL_BEGIN, v3, "EMAIL DELIVERY", "Begin saving outgoing message for outgoing message for %{public}@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) messagePersistence];
  v6 = [v5 baseMessageForOutgoingMessage:*(a1 + 48) isDraft:1];

  v7 = +[EDOutgoingMessageRepository signpostLog];
  v8 = [*(a1 + 32) signpostID];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v9 = *(a1 + 40);
    *buf = 138543362;
    v35 = v9;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v7, OS_SIGNPOST_INTERVAL_END, v8, "EMAIL DELIVERY", "Base message for %{public}@ was created", buf, 0xCu);
  }

  v10 = [*(a1 + 32) messageChangeManager];
  v33 = v6;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v12 = [*(a1 + 32) urlForSendLaterFolder];
  v13 = [v10 addNewMessages:v11 mailboxURL:v12 userInitiated:1];

  v14 = objc_alloc(MEMORY[0x1E699AD20]);
  v15 = [*(a1 + 32) urlForSendLaterFolder];
  v16 = [v14 initWithURL:v15];

  v17 = MEMORY[0x1E699AD28];
  v32 = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v19 = [v17 mailboxScopeForMailboxObjectIDs:v18 forExclusion:0];

  v20 = [*(a1 + 32) messagePersistence];
  v21 = [v20 messagesForPersistedMessages:v13 mailboxScope:v19];

  v22 = +[EDOutgoingMessageRepository signpostLog];
  v23 = [*(a1 + 32) signpostID];
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    v24 = [v13 count];
    *buf = 134217984;
    v35 = v24;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v22, OS_SIGNPOST_INTERVAL_END, v23, "EMAIL DELIVERY", "%lu of messages are to be returned in completion", buf, 0xCu);
  }

  v25 = [*(a1 + 32) messagePersistence];
  [v25 persistSendLaterForMessages:v13 date:*(a1 + 40)];

  v26 = +[EDOutgoingMessageRepository signpostLog];
  v27 = [*(a1 + 32) signpostID];
  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    v28 = *(a1 + 40);
    *buf = 138543362;
    v35 = v28;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v26, OS_SIGNPOST_INTERVAL_END, v27, "EMAIL DELIVERY", "End saving outgoing message for message at for %{public}@", buf, 0xCu);
  }

  v29 = *(a1 + 56);
  if (v29)
  {
    v30 = [v21 firstObject];
    (*(v29 + 16))(v29, v30);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)updateSendLaterDate:(id)date message:(id)message completion:(id)completion
{
  dateCopy = date;
  messageCopy = message;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__EDOutgoingMessageRepository_updateSendLaterDate_message_completion___block_invoke;
  v14[3] = &unk_1E8253348;
  v14[4] = self;
  v15 = messageCopy;
  v16 = dateCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = dateCopy;
  v13 = messageCopy;
  [(EDOutgoingMessageRepository *)self performBlock:v14];
}

void __70__EDOutgoingMessageRepository_updateSendLaterDate_message_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = +[EDOutgoingMessageRepository signpostLog];
  v3 = [*(a1 + 32) signpostID];
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v4 = [*(a1 + 40) documentID];
    v5 = *(a1 + 48);
    *buf = 138412546;
    v19 = v4;
    v20 = 2114;
    v21 = v5;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v2, OS_SIGNPOST_INTERVAL_BEGIN, v3, "EMAIL DELIVERY", "Begin editing outgoing message for documentID %@ at for %{public}@", buf, 0x16u);
  }

  v6 = [*(a1 + 32) messagePersistence];
  v7 = [*(a1 + 40) objectID];
  v17 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v9 = [v6 persistedMessagesForObjectIDs:v8 requireProtectedData:0];

  v10 = [*(a1 + 32) messagePersistence];
  [v10 persistSendLaterForMessages:v9 date:*(a1 + 48)];

  v11 = +[EDOutgoingMessageRepository signpostLog];
  v12 = [*(a1 + 32) signpostID];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = [*(a1 + 40) documentID];
    v14 = *(a1 + 48);
    *buf = 138412546;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v11, OS_SIGNPOST_INTERVAL_END, v12, "EMAIL DELIVERY", "End editing outgoing message for documentID %@ at for %{public}@", buf, 0x16u);
  }

  v15 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();

  v16 = *MEMORY[0x1E69E9840];
}

- (void)removeSendLaterDateFromMessage:(id)message draftsMailboxObjectID:(id)d completion:(id)completion
{
  messageCopy = message;
  dCopy = d;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__EDOutgoingMessageRepository_removeSendLaterDateFromMessage_draftsMailboxObjectID_completion___block_invoke;
  v14[3] = &unk_1E8253348;
  v14[4] = self;
  v15 = messageCopy;
  v16 = dCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = dCopy;
  v13 = messageCopy;
  [(EDOutgoingMessageRepository *)self performBlock:v14];
}

void __95__EDOutgoingMessageRepository_removeSendLaterDateFromMessage_draftsMailboxObjectID_completion___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = +[EDOutgoingMessageRepository signpostLog];
  v3 = [*(a1 + 32) signpostID];
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v4 = [*(a1 + 40) documentID];
    *buf = 138412290;
    v27 = v4;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v2, OS_SIGNPOST_INTERVAL_BEGIN, v3, "EMAIL DELIVERY", "Begin removing send later date for message with documentID %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) messagePersistence];
  v6 = [*(a1 + 40) objectID];
  v25 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v8 = [v5 persistedMessagesForObjectIDs:v7 requireProtectedData:0];

  v9 = [*(a1 + 32) messagePersistence];
  [v9 persistSendLaterForMessages:v8 date:0];

  v10 = [*(a1 + 32) messageChangeManager];
  v11 = [*(a1 + 48) url];
  v12 = [v10 moveMessages:v8 destinationMailboxURL:v11 userInitiated:1];

  v13 = MEMORY[0x1E699AD28];
  v24 = *(a1 + 48);
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v15 = [v13 mailboxScopeForMailboxObjectIDs:v14 forExclusion:0];

  v16 = [*(a1 + 32) messagePersistence];
  v17 = [v16 messagesForPersistedMessages:v12 mailboxScope:v15];

  v18 = +[EDOutgoingMessageRepository signpostLog];
  v19 = [*(a1 + 32) signpostID];
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    v20 = [*(a1 + 40) documentID];
    *buf = 138412290;
    v27 = v20;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v18, OS_SIGNPOST_INTERVAL_END, v19, "EMAIL DELIVERY", "End removing send later date for message for documentID %@", buf, 0xCu);
  }

  v21 = *(a1 + 56);
  v22 = [v17 firstObject];
  (*(v21 + 16))(v21, v22);

  v23 = *MEMORY[0x1E69E9840];
}

- (void)scheduleAlarmForSendLaterDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  [(EDOutgoingMessageRepository *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDOutgoingMessageRepository scheduleAlarmForSendLaterDate:completion:]", "EDOutgoingMessageRepository.m", 129, "0");
}

- (void)deleteDraftsInMailboxID:(id)d documentID:(id)iD previousDraftObjectID:(id)objectID
{
  dCopy = d;
  iDCopy = iD;
  objectIDCopy = objectID;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__EDOutgoingMessageRepository_deleteDraftsInMailboxID_documentID_previousDraftObjectID___block_invoke;
  v14[3] = &unk_1E8250AB8;
  v15 = objectIDCopy;
  selfCopy = self;
  v17 = dCopy;
  v18 = iDCopy;
  v11 = iDCopy;
  v12 = dCopy;
  v13 = objectIDCopy;
  [(EDOutgoingMessageRepository *)self performBlock:v14];
}

void __88__EDOutgoingMessageRepository_deleteDraftsInMailboxID_documentID_previousDraftObjectID___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = +[EDOutgoingMessageRepository log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *v2;
      v21 = 138412290;
      v22 = v4;
      _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Deleting Draft %@", &v21, 0xCu);
    }

    v5 = [*(a1 + 40) messagePersistence];
    v27[0] = *(a1 + 32);
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v7 = [v5 persistedMessagesForMessageObjectIDs:v6 requireProtectedData:0 temporarilyUnavailableMessageObjectIDs:0];

    if ([v7 count])
    {
      v8 = [*(a1 + 40) messageChangeManager];
      [v8 deleteMessages:v7];
    }

    else
    {
      v8 = +[EDOutgoingMessageRepository log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __88__EDOutgoingMessageRepository_deleteDraftsInMailboxID_documentID_previousDraftObjectID___block_invoke_cold_1(v2, v8);
      }
    }
  }

  v9 = (a1 + 48);
  if (*(a1 + 48))
  {
    v10 = (a1 + 56);
    if (*(a1 + 56))
    {
      v11 = [*(a1 + 40) messagesForDocumentID:? mailboxID:?];
      v12 = +[EDOutgoingMessageRepository log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *v10;
        v14 = *v9;
        v21 = 138412546;
        v22 = v13;
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Deleting draft messages for documentID %@ in mailboxID %@", &v21, 0x16u);
      }

      if ([v11 count])
      {
        v15 = +[EDOutgoingMessageRepository log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v11 count];
          v17 = *v10;
          v18 = *v9;
          v21 = 134218498;
          v22 = v16;
          v23 = 2112;
          v24 = v17;
          v25 = 2112;
          v26 = v18;
          _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Deleting %lu messages for documentID %@ in mailboxID %@", &v21, 0x20u);
        }

        v19 = [*(a1 + 40) messageChangeManager];
        [v19 deleteMessages:v11];
      }

      else
      {
        v19 = +[EDOutgoingMessageRepository log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          __88__EDOutgoingMessageRepository_deleteDraftsInMailboxID_documentID_previousDraftObjectID___block_invoke_cold_2((a1 + 56), (a1 + 48), v19);
        }
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)deliverMessage:(id)message usingMailDrop:(BOOL)drop isCancelable:(BOOL)cancelable completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  [(EDOutgoingMessageRepository *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDOutgoingMessageRepository deliverMessage:usingMailDrop:isCancelable:completion:]", "EDOutgoingMessageRepository.m", 158, "0");
}

- (id)outgoingMessageFromPersistedMessage:(id)message
{
  messageCopy = message;
  [(EDOutgoingMessageRepository *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDOutgoingMessageRepository outgoingMessageFromPersistedMessage:]", "EDOutgoingMessageRepository.m", 162, "0");
}

- (void)cancelLastDelayedMessage:(id)message
{
  messageCopy = message;
  [(EDOutgoingMessageRepository *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDOutgoingMessageRepository cancelLastDelayedMessage:]", "EDOutgoingMessageRepository.m", 166, "0");
}

- (void)isProcessingWithCompletion:(id)completion
{
  completionCopy = completion;
  [(EDOutgoingMessageRepository *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDOutgoingMessageRepository isProcessingWithCompletion:]", "EDOutgoingMessageRepository.m", 170, "0");
}

- (void)numberOfPendingMessagesWithCompletion:(id)completion
{
  completionCopy = completion;
  [(EDOutgoingMessageRepository *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDOutgoingMessageRepository numberOfPendingMessagesWithCompletion:]", "EDOutgoingMessageRepository.m", 174, "0");
}

- (void)outboxContainsMessageFromAccountObjectID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  [(EDOutgoingMessageRepository *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDOutgoingMessageRepository outboxContainsMessageFromAccountObjectID:completion:]", "EDOutgoingMessageRepository.m", 178, "0");
}

- (id)messagesForDocumentID:(id)d mailboxID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  [(EDOutgoingMessageRepository *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDOutgoingMessageRepository messagesForDocumentID:mailboxID:]", "EDOutgoingMessageRepository.m", 194, "0");
}

- (void)startObservingPendingMessageChangesWithChangeObserver:(id)observer observationIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  [(EDOutgoingMessageRepository *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDOutgoingMessageRepository startObservingPendingMessageChangesWithChangeObserver:observationIdentifier:]", "EDOutgoingMessageRepository.m", 198, "0");
}

- (void)cancelObservation:(id)observation
{
  observationCopy = observation;
  [(EDOutgoingMessageRepository *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDOutgoingMessageRepository cancelObservation:]", "EDOutgoingMessageRepository.m", 202, "0");
}

void __88__EDOutgoingMessageRepository_deleteDraftsInMailboxID_documentID_previousDraftObjectID___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Unable to find persisted message for draft: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __88__EDOutgoingMessageRepository_deleteDraftsInMailboxID_documentID_previousDraftObjectID___block_invoke_cold_2(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Unable to find persisted message for draft documentID %@ in mailboxID %@", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end