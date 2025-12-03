@interface EDMessageChangeManager
+ (OS_os_log)log;
+ (id)signpostLog;
- (BOOL)_hookResponderRespondsToRequiredMethods:(id)methods;
- (BOOL)_needToStoreServerMessagesForMailboxURL:(id)l;
- (BOOL)_persistFlagChangeResults:(id)results forFlagChangeAction:(id)action;
- (BOOL)_persistResults:(id)results forFlagChangeAction:(id)action;
- (BOOL)_persistResults:(id)results forLabelChangeAction:(id)action;
- (BOOL)_persistResults:(id)results forTransferAction:(id)action;
- (BOOL)mailboxURL:(id)l isInSameAccountAsMailboxURL:(id)rL;
- (BOOL)mailboxURLIsInRemoteAccount:(id)account;
- (BOOL)persistResults:(id)results forAction:(id)action;
- (EDMessageAuthenticator)messageAuthenticator;
- (EDMessageCategorizer)messageCategorizer;
- (EDMessageChangeHookResponder)hookResponder;
- (EDMessageChangeManager)initWithDatabase:(id)database localActionPersistence:(id)persistence messagePersistence:(id)messagePersistence serverMessagePersistenceFactory:(id)factory readLaterPersistence:(id)laterPersistence categoryPersistence:(id)categoryPersistence bimiManager:(id)manager hookResponder:(id)self0 hookRegistry:(id)self1;
- (id)_applyReadLaterDate:(id)date displayDate:(id)displayDate toMessages:(id)messages changeIsRemote:(BOOL)remote;
- (id)_findDestinationMessagesFromCompletedItems:(id)items notInServerMessages:(id)messages;
- (id)_handleDuplicateServerMessage:(id)message serverMessagePersistence:(id)persistence;
- (id)_truncateReadLaterDate:(id)date;
- (id)accountForMailboxURL:(id)l;
- (id)addLabels:(id)labels removeLabels:(id)removeLabels forMessages:(id)messages;
- (id)addNewMessages:(id)messages mailboxURL:(id)l userInitiated:(BOOL)initiated;
- (id)applyFlagChange:(id)change toMessages:(id)messages;
- (id)applyReadLaterDate:(id)date displayDate:(id)displayDate toMessages:(id)messages;
- (id)reflectNewMessages:(id)messages mailboxURL:(id)l;
- (unint64_t)signpostID;
- (unsigned)_bucketSignatureMessageCount:(unint64_t)count;
- (void)_addLogMassDeletion:(unint64_t)deletion;
- (void)_clearFollowUpsFromThreadsForMessages:(id)messages;
- (void)_deleteDestinationMessagesFromCompletedItems:(id)items notInServerMessages:(id)messages;
- (void)_generateFakeSummariesIfNeededForMessages:(id)messages flagChange:(id)change;
- (void)_handleFailedCopyItems:(id)items transferAction:(id)action generationWindow:(id)window;
- (void)_handleFailedDownload:(id)download generationWindow:(id)window;
- (void)_reflectFlagChanges:(id)changes messages:(id)messages remoteIDs:(id)ds mailboxURL:(id)l;
- (void)_registerStateCaptureHandler;
- (void)_resetLocalFlagsToServerFlagsForMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l;
- (void)_resetLocalLabelsToServerLabelsForMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l;
- (void)_storeServerMessages:(id)messages mailboxURL:(id)l generationWindow:(id)window;
- (void)applyFlagChange:(id)change toAllMessagesFromMailboxes:(id)mailboxes exceptMessages:(id)messages;
- (void)applyFollowUp:(id)up toMessages:(id)messages withNegativeFeedbackForSuggestions:(BOOL)suggestions;
- (void)dealloc;
- (void)deleteAllMessageFromMailboxes:(id)mailboxes exceptMessages:(id)messages;
- (void)deleteLocalMessageActionsWithIDs:(id)ds;
- (void)deleteMessages:(id)messages;
- (void)didReflectNewMessages:(id)messages;
- (void)reflectAddedLabels:(id)labels removedLabels:(id)removedLabels forMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l;
- (void)reflectAllMessagesDeletedInMailboxURL:(id)l;
- (void)reflectDeletedAllClearedMessagesInMailboxURL:(id)l;
- (void)reflectDeletedMessages:(id)messages;
- (void)reflectDeletedMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l;
- (void)reflectFlagChanges:(id)changes forMessages:(id)messages;
- (void)reflectFlagChanges:(id)changes forMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l;
- (void)reflectSortedFlagChanges:(id)changes mailboxURL:(id)l;
- (void)remindMeCloudStorageChangedWithAddedOrChangedItems:(id)items deletedItems:(id)deletedItems;
- (void)test_tearDown;
- (void)transferAllMessagesFromMailboxes:(id)mailboxes exceptMessages:(id)messages transferType:(int64_t)type destinationMailboxURL:(id)l userInitiated:(BOOL)initiated;
@end

@implementation EDMessageChangeManager

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__EDMessageChangeManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_59 != -1)
  {
    dispatch_once(&log_onceToken_59, block);
  }

  v2 = log_log_59;

  return v2;
}

void __29__EDMessageChangeManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_59;
  log_log_59 = v1;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EDMessageChangeManager_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_3 != -1)
  {
    dispatch_once(&signpostLog_onceToken_3, block);
  }

  v2 = signpostLog_log_3;

  return v2;
}

void __37__EDMessageChangeManager_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_3;
  signpostLog_log_3 = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EDMessageChangeManager)initWithDatabase:(id)database localActionPersistence:(id)persistence messagePersistence:(id)messagePersistence serverMessagePersistenceFactory:(id)factory readLaterPersistence:(id)laterPersistence categoryPersistence:(id)categoryPersistence bimiManager:(id)manager hookResponder:(id)self0 hookRegistry:(id)self1
{
  databaseCopy = database;
  persistenceCopy = persistence;
  messagePersistenceCopy = messagePersistence;
  factoryCopy = factory;
  laterPersistenceCopy = laterPersistence;
  managerCopy = manager;
  responderCopy = responder;
  registryCopy = registry;
  v35.receiver = self;
  v35.super_class = EDMessageChangeManager;
  v19 = [(EDMessageChangeManager *)&v35 init];
  p_isa = &v19->super.isa;
  v21 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_database, database);
    objc_storeStrong(p_isa + 9, persistence);
    objc_storeStrong(p_isa + 7, messagePersistence);
    objc_storeStrong(p_isa + 3, factory);
    objc_storeStrong(p_isa + 2, laterPersistence);
    objc_storeStrong(p_isa + 4, manager);
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_UTILITY, 0);
    v24 = dispatch_queue_create("com.apple.email.EDMessageChangeManager", v23);
    markAllWorkQueue = v21->_markAllWorkQueue;
    v21->_markAllWorkQueue = v24;

    if (![(EDMessageChangeManager *)v21 _hookResponderRespondsToRequiredMethods:responderCopy])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v21 file:@"EDMessageChangeManager.m" lineNumber:130 description:@"HookResponder does not respond to all of the methods required by the EDMessageChangeManager."];
    }

    objc_storeWeak(p_isa + 8, responderCopy);
    [registryCopy registerCloudStorageChangeHookResponder:v21];
  }

  return v21;
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageChangeManager.m" lineNumber:143 description:{@"%s can only be called from unit tests", "-[EDMessageChangeManager test_tearDown]"}];
  }

  markAllWorkQueue = [(EDMessageChangeManager *)self markAllWorkQueue];
  dispatch_sync(markAllWorkQueue, &__block_literal_global_52);
}

id __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mailbox];
  v3 = [v2 URL];

  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  return v3;
}

void __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DFB0] null];

  if (v7 == v5)
  {

    v5 = 0;
  }

  v8 = [*(a1 + 32) messagesToJournalForMessages:v6 inMailbox:v5];

  v9 = [*(a1 + 32) mailboxURL:v5 isInSameAccountAsMailboxURL:*(a1 + 40)];
  v10 = v9;
  v11 = *(a1 + 88);
  if (v11 == 1)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (v12 != 1)
  {
LABEL_9:
    if (v5)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if ([*(a1 + 32) mailboxIsAllMail:v5])
  {
    v11 = [*(a1 + 32) mailboxPartOfAllMail:*(a1 + 40)] ^ 1;
    goto LABEL_9;
  }

  v11 = 1;
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (*(a1 + 88) == 1)
  {
    v11 = 0;
  }

LABEL_12:
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__22;
  v40[4] = __Block_byref_object_dispose__22;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__22;
  v38[4] = __Block_byref_object_dispose__22;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_45;
  v21[3] = &unk_1E8253B60;
  v31 = *(a1 + 96);
  v13 = v5;
  v22 = v13;
  v20 = *(a1 + 32);
  v14 = *(a1 + 48);
  v32 = v11;
  v27 = v40;
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  *&v17 = v15;
  *(&v17 + 1) = v16;
  *&v18 = v20;
  *(&v18 + 1) = v14;
  v23 = v18;
  v24 = v17;
  v33 = *(a1 + 104);
  v34 = v10;
  v28 = v38;
  v35 = *(a1 + 105);
  v25 = *(a1 + 64);
  v26 = *(a1 + 72);
  v19 = *(a1 + 80);
  v29 = v36;
  v30 = v19;
  [v8 ef_enumerateObjectsInBatchesOfSize:25 block:v21];

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);

  _Block_object_dispose(v40, 8);
}

void __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_45(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDMessageChangeManager signpostLog];
  v5 = v4;
  v6 = *(a1 + 120);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(v3, "count")}];
    v8 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:*(a1 + 32)];
    *buf = 67109378;
    v42 = v7;
    v43 = 2114;
    v44 = v8;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v5, OS_SIGNPOST_EVENT, v6, "EDMessageChangeManagerTransferMessages", "Begin Processing batch of %u messages for sourceMailboxURL %{public}@", buf, 0x12u);
  }

  v9 = [*(a1 + 40) database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager transferMessages:transferType:destinationMailboxURL:userInitiated:oldMessagesByNewMessage:]_block_invoke"];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_2_47;
  v28[3] = &unk_1E8253B38;
  v37 = *(a1 + 120);
  v27 = *(a1 + 32);
  v11 = v27.i64[0];
  v29 = vextq_s8(v27, v27, 8uLL);
  v12 = *(a1 + 48);
  v38 = *(a1 + 128);
  v13 = *(a1 + 88);
  v30 = v12;
  v34 = v13;
  v14 = v3;
  v31 = v14;
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v39 = *(a1 + 136);
  v40 = *(a1 + 137);
  v35 = *(a1 + 96);
  v17 = *(a1 + 72);
  v18 = *(a1 + 80);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  *&v20 = v15;
  *(&v20 + 1) = v16;
  v32 = v20;
  v33 = v19;
  v36 = *(a1 + 104);
  [v9 __performWriteWithCaller:v10 usingBlock:v28];

  if (*(*(*(a1 + 96) + 8) + 40))
  {
    [*(a1 + 40) checkForNewActionsInMailboxID:{objc_msgSend(*(a1 + 40), "mailboxDatabaseIDForURL:")}];
  }

  v21 = +[EDMessageChangeManager signpostLog];
  v22 = v21;
  v23 = *(a1 + 120);
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    v24 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(v14, "count")}];
    v25 = *(a1 + 32);
    *buf = 67109378;
    v42 = v24;
    v43 = 2112;
    v44 = v25;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v22, OS_SIGNPOST_EVENT, v23, "EDMessageChangeManagerTransferMessages", "End Processing batch of %u messages for sourceMailboxURL %@", buf, 0x12u);
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_2_47(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v54 = a2;
  v3 = +[EDMessageChangeManager signpostLog];
  v4 = v3;
  v5 = *(a1 + 128);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v4, OS_SIGNPOST_EVENT, v5, "EDMessageChangeManagerTransferMessages", "Begin database write connection", buf, 2u);
  }

  v6 = [*(a1 + 32) mailboxURLIsInRemoteAccount:*(a1 + 40)];
  [*(a1 + 48) insertGeneration:{objc_msgSend(v54, "transactionGeneration")}];
  v7 = *(a1 + 136);
  if (v7 == 3)
  {
    v8 = 1;
  }

  else
  {
    v9 = objc_opt_new();
    v10 = *(*(a1 + 96) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v8 = [*(a1 + 32) persistNewMessages:*(a1 + 56) mailboxURL:*(a1 + 64) oldMessagesByNewMessage:*(*(*(a1 + 96) + 8) + 40) fromSyncing:0];
    [*(a1 + 72) addEntriesFromDictionary:*(*(*(a1 + 96) + 8) + 40)];
    v7 = *(a1 + 136);
  }

  if ((*(a1 + 144) | v6))
  {
    v52 = v8;
    v12 = 0;
    if (v7 != 3 && ((v6 ^ 1) & 1) == 0)
    {
      v12 = *(a1 + 145) ^ 1;
    }

    if (v6)
    {
      v14 = v7 == 1 || v7 == 3;
    }

    else
    {
      v14 = 0;
    }

    v49 = objc_opt_new();
    v50 = objc_opt_new();
    v15 = objc_opt_new();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_48;
    aBlock[3] = &unk_1E8253AC8;
    v73 = v12 & 1;
    aBlock[4] = *(a1 + 32);
    v16 = v49;
    v70 = v16;
    v74 = *(a1 + 144);
    v71 = v50;
    v51 = v14;
    v75 = v14;
    v17 = v15;
    v18 = v71;
    v53 = v17;
    v72 = v17;
    v8 = v52;
    v19 = _Block_copy(aBlock);
    v20 = *(*(*(a1 + 96) + 8) + 40);
    if (v20)
    {
      [v20 enumerateKeysAndObjectsUsingBlock:v19];
    }

    else
    {
      v48 = v18;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v21 = *(a1 + 56);
      v22 = [v21 countByEnumeratingWithState:&v65 objects:v77 count:16];
      if (v22)
      {
        v23 = *v66;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v66 != v23)
            {
              objc_enumerationMutation(v21);
            }

            (*(v19 + 2))(v19, 0, *(*(&v65 + 1) + 8 * i), 0);
          }

          v22 = [v21 countByEnumeratingWithState:&v65 objects:v77 count:16];
        }

        while (v22);
      }

      v8 = v52;
      v18 = v48;
    }

    v25 = [v16 count];
    v26 = (a1 + 40);
    if (!v25)
    {
      if ([v18 count])
      {
        if (*(a1 + 145))
        {
          v26 = (a1 + 40);
        }

        else
        {
          v26 = (a1 + 64);
        }
      }

      else
      {
        v26 = (a1 + 40);
        if (!v51)
        {
LABEL_36:
          if (*(*(*(a1 + 104) + 8) + 40))
          {
            v27 = objc_alloc(MEMORY[0x1E699B350]);
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 3221225472;
            v55[2] = __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_3;
            v55[3] = &unk_1E8253AF0;
            v56 = v16;
            v57 = v18;
            v58 = v53;
            v59 = *(a1 + 40);
            v63 = *(a1 + 144);
            v28 = *(a1 + 64);
            v29 = *(a1 + 104);
            v60 = v28;
            v61 = v29;
            v64 = *(a1 + 146);
            v62 = *(a1 + 136);
            v30 = [v27 initWithBuilder:v55];
            v31 = [*(a1 + 32) localActionPersistence];
            v8 = [v31 persistTransferAction:v30];
          }

          v7 = *(a1 + 136);
          goto LABEL_39;
        }
      }
    }

    objc_storeStrong((*(*(a1 + 104) + 8) + 40), *v26);
    goto LABEL_36;
  }

LABEL_39:
  if (v7 == 3 || ((v32 = v7 == 1, v7 != 1) ? (v33 = 1) : (v33 = v6), (v33 & 1) == 0))
  {
    v39 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v39, OS_LOG_TYPE_DEFAULT, "Deleting the source library messages if necessary", buf, 2u);
    }

    v34 = [*(a1 + 56) ef_filter:&__block_literal_global_418];
    v40 = [*(a1 + 32) hookResponder];
    [v40 persistenceWillChangeFlags:*(a1 + 80) messages:v34];

    v41 = [*(a1 + 32) applyFlagChange:*(a1 + 80) toMessagesInDatabase:*(a1 + 56)];
    v42 = [*(a1 + 32) hookResponder];
    [v42 persistenceIsChangingFlags:*(a1 + 80) messages:v34 generationWindow:*(a1 + 48)];

    [*(a1 + 32) deletePersistedMessages:v34];
    [*(a1 + 88) addObjectsFromArray:v34];
    goto LABEL_50;
  }

  if (v32)
  {
    v34 = [*(a1 + 56) ef_filter:&__block_literal_global_418];
    v35 = [*(a1 + 32) hookResponder];
    [v35 persistenceWillChangeFlags:*(a1 + 80) messages:v34];

    v36 = [*(a1 + 32) applyFlagChange:*(a1 + 80) toMessagesInDatabase:*(a1 + 56)];
    v37 = [*(a1 + 32) hookResponder];
    [v37 persistenceIsChangingFlags:*(a1 + 80) messages:v34 generationWindow:*(a1 + 48)];

    v38 = [v34 ef_filter:&__block_literal_global_58];
    [*(a1 + 32) deletePersistedMessages:v38];
    [*(a1 + 88) addObjectsFromArray:v34];

LABEL_50:
  }

  if (v8 && (*(*(*(a1 + 112) + 8) + 24) != 1 || (*(*(*(a1 + 120) + 8) + 24) & 1) == 0) && [*(a1 + 56) ef_any:&__block_literal_global_62_0])
  {
    if ((*(*(*(a1 + 112) + 8) + 24) & 1) == 0 && *(a1 + 40))
    {
      [*(a1 + 32) resetStatusCountsForMailboxWithURL:?];
      *(*(*(a1 + 112) + 8) + 24) = 1;
    }

    if ((*(*(*(a1 + 120) + 8) + 24) & 1) == 0 && *(a1 + 64))
    {
      [*(a1 + 32) resetStatusCountsForMailboxWithURL:?];
      *(*(*(a1 + 120) + 8) + 24) = 1;
    }
  }

  v43 = +[EDMessageChangeManager signpostLog];
  v44 = v43;
  v45 = *(a1 + 128);
  if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v44, OS_SIGNPOST_EVENT, v45, "EDMessageChangeManagerTransferMessages", "End database write connection", buf, 2u);
  }

  v46 = *MEMORY[0x1E69E9840];
  return v8;
}

void __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E699B358]);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_2_50;
  v15 = &unk_1E8253AA0;
  v8 = v6;
  v16 = v8;
  v9 = v5;
  v17 = v9;
  v10 = [v7 initWithBuilder:&v12];
  if (*(a1 + 64) == 1 && ([*(a1 + 32) haveCompleteMIMEForMessage:{v9, v12, v13, v14, v15, v16}] & 1) == 0)
  {
    v11 = 40;
    goto LABEL_8;
  }

  if (*(a1 + 65))
  {
    v11 = 48;
LABEL_8:
    [*(a1 + v11) addObject:{v10, v12, v13, v14, v15}];
    goto LABEL_9;
  }

  if (*(a1 + 66) == 1)
  {
    v11 = 56;
    goto LABEL_8;
  }

LABEL_9:
}

void __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_2_50(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSourceMessage:*(a1 + 32)];
  [v3 setDestinationMessage:*(a1 + 40)];
}

void __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setItemsToDownload:*(a1 + 32)];
  [v4 setItemsToCopy:*(a1 + 40)];
  [v4 setItemsToDelete:*(a1 + 48)];
  [v4 setSourceMailboxURL:*(a1 + 56)];
  if (*(a1 + 88) == 1)
  {
    v3 = *(a1 + 64);
  }

  else
  {
    v3 = 0;
  }

  [v4 setDestinationMailboxURL:v3];
  [v4 setMailboxURL:*(*(*(a1 + 72) + 8) + 40)];
  [v4 setUserInitiated:*(a1 + 89)];
  [v4 setTransferType:*(a1 + 80)];
}

BOOL __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_55(uint64_t a1, void *a2)
{
  v2 = [a2 remoteID];
  v3 = [v2 length] != 0;

  return v3;
}

uint64_t __116__EDMessageChangeManager_transferMessages_transferType_destinationMailboxURL_userInitiated_oldMessagesByNewMessage___block_invoke_2_59(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 read];

  return v3 ^ 1u;
}

- (unsigned)_bucketSignatureMessageCount:(unint64_t)count
{
  if (count <= 0x64)
  {
    v3 = 100;
  }

  else
  {
    v3 = 200;
  }

  if (count <= 0x12B)
  {
    v4 = v3;
  }

  else
  {
    v4 = 300;
  }

  if (count <= 0x1F3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 500;
  }

  if (count <= 0x3E7)
  {
    return v5;
  }

  else
  {
    return 1000;
  }
}

- (void)_addLogMassDeletion:(unint64_t)deletion
{
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v7 = *MEMORY[0x1E699ABA0];
  v8 = [em_userDefaults objectForKey:*MEMORY[0x1E699ABA0]];
  v19 = [v5 initWithArray:v8];

  if ([v19 count])
  {
    lastObject = [v19 lastObject];
    v10 = [lastObject objectForKey:*MEMORY[0x1E699ABA8]];
    if (!v10)
    {
      v11 = [lastObject objectForKey:*MEMORY[0x1E699ABB8]];

      if (v11)
      {
        goto LABEL_5;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Large Google Message Deletion: The user has selected to transfer %u messages", -[EDMessageChangeManager _bucketSignatureMessageCount:](self, "_bucketSignatureMessageCount:", deletion)];
      mEMORY[0x1E699B780] = [MEMORY[0x1E699B780] sharedReporter];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      [mEMORY[0x1E699B780] reportIssueType:v18 description:v10];
    }

LABEL_5:
  }

  if ([v19 count] >= 0x1F)
  {
    [v19 removeObjectsInRange:{0, 2}];
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [MEMORY[0x1E695DF00] now];
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E699ABB0]];

  [v19 addObject:v12];
  em_userDefaults2 = [MEMORY[0x1E695E000] em_userDefaults];
  v15 = [v19 copy];
  [em_userDefaults2 setValue:v15 forKey:v7];

  [(EDMessageChangeManager *)self _registerStateCaptureHandler];
}

- (void)_registerStateCaptureHandler
{
  v3 = *MEMORY[0x1E699ABA0];
  v4 = EFLogRegisterStateCaptureBlock();
  [(EDMessageChangeManager *)self setStateCancelable:?];
}

id __54__EDMessageChangeManager__registerStateCaptureHandler__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] em_userDefaults];
  v1 = [v0 objectForKey:*MEMORY[0x1E699ABA0]];

  return v1;
}

- (void)deleteAllMessageFromMailboxes:(id)mailboxes exceptMessages:(id)messages
{
  v13 = *MEMORY[0x1E69E9840];
  mailboxesCopy = mailboxes;
  messagesCopy = messages;
  v8 = [mailboxesCopy ef_map:&__block_literal_global_77_1];
  v9 = +[EDMessageChangeManager log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Deleting all message from %{public}@", &v11, 0xCu);
  }

  [(EDMessageChangeManager *)self transferAllMessagesFromMailboxes:mailboxesCopy exceptMessages:messagesCopy transferType:3 destinationMailboxURL:0 userInitiated:0];
  v10 = *MEMORY[0x1E69E9840];
}

id __71__EDMessageChangeManager_deleteAllMessageFromMailboxes_exceptMessages___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:a2];

  return v2;
}

- (void)transferAllMessagesFromMailboxes:(id)mailboxes exceptMessages:(id)messages transferType:(int64_t)type destinationMailboxURL:(id)l userInitiated:(BOOL)initiated
{
  v45 = *MEMORY[0x1E69E9840];
  mailboxesCopy = mailboxes;
  messagesCopy = messages;
  lCopy = l;
  v12 = +[EDMessageChangeManager signpostLog];
  v13 = os_signpost_id_generate(v12);

  v14 = +[EDMessageChangeManager signpostLog];
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v16 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(messagesCopy, "count")}];
    v17 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:lCopy];
    *buf = 67240450;
    v42 = v16;
    v43 = 2114;
    v44 = v17;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "EDMessageChangeManagerTransferAllMessages", "Begin transfer all NumberOfMessages=%{public,signpost.telemetry:number1}u messages to destinationMailbox=%{public}@ enableTelemetry=YES ", buf, 0x12u);
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __123__EDMessageChangeManager_transferAllMessagesFromMailboxes_exceptMessages_transferType_destinationMailboxURL_userInitiated___block_invoke;
  v37[3] = &unk_1E8253C18;
  v37[4] = self;
  typeCopy = type;
  v18 = lCopy;
  v38 = v18;
  initiatedCopy = initiated;
  v19 = [(EDMessageChangeManager *)self iterateMessagesInMailboxURLs:mailboxesCopy excludingMessages:messagesCopy batchSize:256 returnMessagesForFlagChange:0 handler:v37];
  markAllWorkQueue = [(EDMessageChangeManager *)self markAllWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__EDMessageChangeManager_transferAllMessagesFromMailboxes_exceptMessages_transferType_destinationMailboxURL_userInitiated___block_invoke_3;
  block[3] = &unk_1E8251600;
  v21 = mailboxesCopy;
  typeCopy2 = type;
  v31 = v21;
  selfCopy = self;
  v22 = v18;
  v33 = v22;
  v23 = v19;
  v34 = v23;
  initiatedCopy2 = initiated;
  dispatch_sync(markAllWorkQueue, block);

  v24 = +[EDMessageChangeManager signpostLog];
  v25 = v24;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v25, OS_SIGNPOST_INTERVAL_END, v13, "EDMessageChangeManagerTransferAllMessages", "", buf, 2u);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __123__EDMessageChangeManager_transferAllMessagesFromMailboxes_exceptMessages_transferType_destinationMailboxURL_userInitiated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) markAllWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__EDMessageChangeManager_transferAllMessagesFromMailboxes_exceptMessages_transferType_destinationMailboxURL_userInitiated___block_invoke_2;
  block[3] = &unk_1E8253BF0;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v10 = *(a1 + 48);
  v9 = v5;
  v11 = *(a1 + 56);
  v6 = v3;
  dispatch_async(v4, block);
}

void __123__EDMessageChangeManager_transferAllMessagesFromMailboxes_exceptMessages_transferType_destinationMailboxURL_userInitiated___block_invoke_3(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = *v24;
    v5 = *MEMORY[0x1E699A698];
    v16 = v18;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = *(a1 + 64);
        if (v8 == 1)
        {
          if ([*(a1 + 40) mailboxIsAllMail:{*(*(&v23 + 1) + 8 * i), v16}])
          {
            v8 = [*(a1 + 40) mailboxPartOfAllMail:*(a1 + 48)] ^ 1;
          }

          else
          {
            v8 = 1;
          }
        }

        [*(a1 + 40) resetStatusCountsForMailboxWithURL:{v7, v16}];
        if (*(a1 + 48))
        {
          [*(a1 + 40) resetStatusCountsForMailboxWithURL:?];
        }

        v9 = [*(a1 + 56) objectForKeyedSubscript:v7];
        v10 = [v7 ef_hasScheme:v5];
        if (v9)
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        if (v11 == 1 && ([v9 isEqualToString:@"1"] & 1) == 0)
        {
          v12 = objc_alloc(MEMORY[0x1E699B370]);
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v18[0] = __123__EDMessageChangeManager_transferAllMessagesFromMailboxes_exceptMessages_transferType_destinationMailboxURL_userInitiated___block_invoke_4;
          v18[1] = &unk_1E8253C40;
          v18[2] = v7;
          v19 = *(a1 + 48);
          v21 = v8;
          v22 = *(a1 + 72);
          v20 = v9;
          v13 = [v12 initWithBuilder:v17];
          v14 = [*(a1 + 40) localActionPersistence];
          [v14 persistTransferUndownloadedAction:v13];

          [*(a1 + 40) checkForNewActionsInMailboxID:{objc_msgSend(*(a1 + 40), "mailboxDatabaseIDForURL:", v7)}];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v3);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __123__EDMessageChangeManager_transferAllMessagesFromMailboxes_exceptMessages_transferType_destinationMailboxURL_userInitiated___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setMailboxURL:*(a1 + 32)];
  [v3 setSourceMailboxURL:*(a1 + 32)];
  [v3 setDestinationMailboxURL:*(a1 + 40)];
  [v3 setTransferType:*(a1 + 56)];
  [v3 setUserInitiated:*(a1 + 64)];
  [v3 setOldestPersistedRemoteID:*(a1 + 48)];
}

- (id)addNewMessages:(id)messages mailboxURL:(id)l userInitiated:(BOOL)initiated
{
  v40 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  lCopy = l;
  v26 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  v9 = +[EDMessageChangeManager log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [messagesCopy count];
    v11 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:lCopy];
    *buf = 134218242;
    v37 = v10;
    v38 = 2114;
    v39 = v11;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Adding %lu new messages to %{public}@", buf, 0x16u);
  }

  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  LOBYTE(hookResponder) = [(EDMessageChangeManager *)self mailboxURLIsInRemoteAccount:lCopy];
  v13 = objc_opt_new();
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __66__EDMessageChangeManager_addNewMessages_mailboxURL_userInitiated___block_invoke;
  v28[3] = &unk_1E8253CE0;
  v28[4] = self;
  v15 = lCopy;
  v29 = v15;
  v16 = v13;
  v30 = v16;
  v17 = v26;
  v31 = v17;
  v18 = v14;
  v32 = v18;
  v19 = messagesCopy;
  v33 = v19;
  v34 = hookResponder;
  initiatedCopy = initiated;
  [v19 ef_enumerateObjectsInBatchesOfSize:25 block:v28];
  if ([v18 count])
  {
    [(EDMessageChangeManager *)self willStartPersistenceDidAddMessages:v16];
    hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder2 persistenceDidAddMessages:v18 generationWindow:v17];

    [(EDMessageChangeManager *)self didFinishPersistenceDidAddMessages:v16];
  }

  hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder3 persistenceDidFinishUpdates];

  v22 = v33;
  v23 = v18;

  v24 = *MEMORY[0x1E69E9840];
  return v18;
}

void __66__EDMessageChangeManager_addNewMessages_mailboxURL_userInitiated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager addNewMessages:mailboxURL:userInitiated:]_block_invoke"];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __66__EDMessageChangeManager_addNewMessages_mailboxURL_userInitiated___block_invoke_2;
  v16 = &unk_1E8253CB8;
  v17 = *(a1 + 32);
  v6 = v3;
  v18 = v6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v19 = v12;
  v20 = v11;
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  [v4 __performWriteWithCaller:v5 usingBlock:&v13];

  if (*(a1 + 80) == 1)
  {
    [*(a1 + 32) checkForNewActionsInMailboxID:{objc_msgSend(*(a1 + 32), "mailboxDatabaseIDForURL:", *(a1 + 40), v13, v14, v15, v16, v17, v18, v19, v20)}];
  }
}

uint64_t __66__EDMessageChangeManager_addNewMessages_mailboxURL_userInitiated___block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v19 = objc_opt_new();
  v3 = [*(a1 + 32) persistNewMessages:*(a1 + 40) mailboxURL:*(a1 + 48) oldMessagesByNewMessage:v19 fromSyncing:0];
  [*(a1 + 56) addEntriesFromDictionary:v19];
  v21 = [v19 allKeys];
  [*(a1 + 64) insertGeneration:{objc_msgSend(v20, "transactionGeneration")}];
  [*(a1 + 72) addObjectsFromArray:v21];
  if (v3)
  {
    if ([*(a1 + 80) ef_any:&__block_literal_global_85_0])
    {
      [*(a1 + 32) resetStatusCountsForMailboxWithURL:*(a1 + 48)];
    }

    if (*(a1 + 88) == 1)
    {
      v4 = objc_opt_new();
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v5 = v21;
      v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v6)
      {
        v7 = *v28;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v28 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v27 + 1) + 8 * i);
            v10 = objc_alloc(MEMORY[0x1E699B358]);
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __66__EDMessageChangeManager_addNewMessages_mailboxURL_userInitiated___block_invoke_4;
            v26[3] = &unk_1E8253C68;
            v26[4] = v9;
            v11 = [v10 initWithBuilder:v26];
            [v4 addObject:v11];
          }

          v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v6);
      }

      v12 = objc_alloc(MEMORY[0x1E699B350]);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __66__EDMessageChangeManager_addNewMessages_mailboxURL_userInitiated___block_invoke_5;
      v22[3] = &unk_1E8253C90;
      v13 = v4;
      v23 = v13;
      v24 = *(a1 + 48);
      v25 = *(a1 + 89);
      v14 = [v12 initWithBuilder:v22];
      v15 = [*(a1 + 32) localActionPersistence];
      v16 = [v15 persistTransferAction:v14];
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __66__EDMessageChangeManager_addNewMessages_mailboxURL_userInitiated___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 read];

  return v3 ^ 1u;
}

void __66__EDMessageChangeManager_addNewMessages_mailboxURL_userInitiated___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setItemsToCopy:*(a1 + 32)];
  [v3 setDestinationMailboxURL:*(a1 + 40)];
  [v3 setMailboxURL:*(a1 + 40)];
  [v3 setUserInitiated:*(a1 + 48)];
  [v3 setTransferType:2];
}

- (void)deleteMessages:(id)messages
{
  v10 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v5 = +[EDMessageChangeManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = [messagesCopy count];
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Deleting %lu messages", &v8, 0xCu);
  }

  v6 = [(EDMessageChangeManager *)self transferMessages:messagesCopy transferType:3 destinationMailboxURL:0 userInitiated:0];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)applyFlagChange:(id)change toAllMessagesFromMailboxes:(id)mailboxes exceptMessages:(id)messages
{
  v38 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  mailboxesCopy = mailboxes;
  messagesCopy = messages;
  v27 = [mailboxesCopy ef_map:&__block_literal_global_87_0];
  v10 = +[EDMessageChangeManager log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [changeCopy ef_publicDescription];
    *buf = 138543618;
    *v37 = ef_publicDescription;
    *&v37[8] = 2114;
    *&v37[10] = v27;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Setting flags %{public}@ on all message for mailboxes %{public}@", buf, 0x16u);
  }

  v12 = +[EDMessageChangeManager signpostLog];
  v13 = os_signpost_id_generate(v12);

  v14 = +[EDMessageChangeManager signpostLog];
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v16 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(messagesCopy, "count")}];
    v17 = [changeCopy hash];
    *buf = 67240448;
    *v37 = v16;
    *&v37[4] = 2050;
    *&v37[6] = v17;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "EDMessageChangeManagerChangeFlagAllMessages", "Begin flag change NumberOfMessages=%{public,signpost.telemetry:number1}u messages to FlagChange=%{public,signpost.telemetry:number2}lu enableTelemetry=YES ", buf, 0x12u);
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __84__EDMessageChangeManager_applyFlagChange_toAllMessagesFromMailboxes_exceptMessages___block_invoke_88;
  v34[3] = &unk_1E8253D08;
  v34[4] = self;
  v18 = changeCopy;
  v35 = v18;
  v19 = [(EDMessageChangeManager *)self iterateMessagesInMailboxURLs:mailboxesCopy excludingMessages:messagesCopy batchSize:256 returnMessagesForFlagChange:v18 handler:v34];
  markAllWorkQueue = [(EDMessageChangeManager *)self markAllWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__EDMessageChangeManager_applyFlagChange_toAllMessagesFromMailboxes_exceptMessages___block_invoke_3;
  block[3] = &unk_1E8250AB8;
  v21 = mailboxesCopy;
  v30 = v21;
  v22 = v18;
  v31 = v22;
  selfCopy = self;
  v23 = v19;
  v33 = v23;
  dispatch_sync(markAllWorkQueue, block);

  v24 = +[EDMessageChangeManager signpostLog];
  v25 = v24;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v25, OS_SIGNPOST_INTERVAL_END, v13, "EDMessageChangeManagerChangeFlagAllMessages", "", buf, 2u);
  }

  v26 = *MEMORY[0x1E69E9840];
}

id __84__EDMessageChangeManager_applyFlagChange_toAllMessagesFromMailboxes_exceptMessages___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:a2];

  return v2;
}

void __84__EDMessageChangeManager_applyFlagChange_toAllMessagesFromMailboxes_exceptMessages___block_invoke_88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) markAllWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__EDMessageChangeManager_applyFlagChange_toAllMessagesFromMailboxes_exceptMessages___block_invoke_2;
  block[3] = &unk_1E8250720;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

void __84__EDMessageChangeManager_applyFlagChange_toAllMessagesFromMailboxes_exceptMessages___block_invoke_3(id *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = *v21;
    v5 = *MEMORY[0x1E699A698];
    v15 = v17;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        if (([a1[5] readChanged] & 1) != 0 || objc_msgSend(a1[5], "deletedChanged"))
        {
          [a1[6] resetStatusCountsForMailboxWithURL:v7];
        }

        v8 = [a1[7] objectForKeyedSubscript:v7];
        v9 = [v7 ef_hasScheme:v5];
        if (v8)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        if (v10 == 1 && ([v8 isEqualToString:@"1"] & 1) == 0)
        {
          v11 = objc_alloc(MEMORY[0x1E699B280]);
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v17[0] = __84__EDMessageChangeManager_applyFlagChange_toAllMessagesFromMailboxes_exceptMessages___block_invoke_4;
          v17[1] = &unk_1E8253D30;
          v17[2] = v7;
          v18 = a1[5];
          v19 = v8;
          v12 = [v11 initWithBuilder:v16];
          v13 = [a1[6] localActionPersistence];
          [v13 persistFlagChangeUndownloadedAction:v12];

          [a1[6] checkForNewActionsInMailboxID:{objc_msgSend(a1[6], "mailboxDatabaseIDForURL:", v7)}];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v3);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __84__EDMessageChangeManager_applyFlagChange_toAllMessagesFromMailboxes_exceptMessages___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  [v3 setMailboxURL:a1[4]];
  [v3 setFlagChange:a1[5]];
  [v3 setOldestPersistedRemoteID:a1[6]];
}

- (id)applyFlagChange:(id)change toMessages:(id)messages
{
  v57 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  messagesCopy = messages;
  v7 = [messagesCopy count];
  readChanged = [changeCopy readChanged];
  v9 = &stru_1F45B4608;
  if (readChanged)
  {
    v9 = @"[ReadFlags] ";
  }

  v38 = v9;
  v10 = +[EDMessageChangeManager log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [changeCopy ef_publicDescription];
    *buf = 138543874;
    *&buf[4] = v38;
    *&buf[12] = 2114;
    *&buf[14] = ef_publicDescription;
    *&buf[22] = 2048;
    v54 = v7;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Setting flags %{public}@ on %lu messages", buf, 0x20u);
  }

  v37 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  v12 = +[EDMessageChangeManager signpostLog];
  v13 = os_signpost_id_generate(v12);

  v14 = +[EDMessageChangeManager signpostLog];
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v16 = [MEMORY[0x1E699B858] bucketMessageCount:v7];
    v17 = [changeCopy hash];
    *buf = 67240448;
    *&buf[4] = v16;
    *&buf[8] = 2050;
    *&buf[10] = v17;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "EDMessageChangeManagerChangeFlagMessages", "Begin flag change NumberOfMessages=%{public,signpost.telemetry:number1}u messages to FlagChange=%{public,signpost.telemetry:number2}lu enableTelemetry=YES ", buf, 0x12u);
  }

  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  v19 = [messagesCopy ef_filter:&__block_literal_global_93];
  v20 = [v19 ef_groupBy:&__block_literal_global_96];

  allValues = [v20 allValues];
  ef_flatten = [allValues ef_flatten];
  v23 = [ef_flatten count];

  if (v23 != v7)
  {
    v24 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(EDMessageChangeManager *)v23 applyFlagChange:v7 toMessages:v24];
    }
  }

  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  v26 = [messagesCopy ef_filter:&__block_literal_global_418];
  [hookResponder2 persistenceWillChangeFlags:changeCopy messages:v26];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v54 = __Block_byref_object_copy__22;
  v55 = __Block_byref_object_dispose__22;
  array = [MEMORY[0x1E695DF70] array];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__22;
  v51 = __Block_byref_object_dispose__22;
  array2 = [MEMORY[0x1E695DF70] array];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_97;
  v41[3] = &unk_1E8253DC8;
  v41[4] = self;
  v27 = changeCopy;
  v42 = v27;
  v28 = v38;
  v43 = v28;
  v29 = v37;
  v44 = v29;
  v45 = buf;
  v46 = &v47;
  [v20 enumerateKeysAndObjectsUsingBlock:v41];
  hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder3 persistenceDidChangeFlags:v27 messages:v48[5] generationWindow:v29];

  hookResponder4 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder4 persistenceDidFinishUpdates];

  [(EDMessageChangeManager *)self _generateFakeSummariesIfNeededForMessages:v48[5] flagChange:v27];
  v32 = +[EDMessageChangeManager signpostLog];
  v33 = v32;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *v40 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v33, OS_SIGNPOST_INTERVAL_END, v13, "EDMessageChangeManagerChangeFlagMessages", "", v40, 2u);
  }

  v34 = *(*&buf[8] + 40);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(buf, 8);
  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

BOOL __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mailbox];
  v3 = [v2 URL];
  v4 = v3 != 0;

  return v4;
}

id __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 mailbox];
  v3 = [v2 URL];

  return v3;
}

void __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_97(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) mailboxURLIsInRemoteAccount:v5];
  v8 = [*(a1 + 32) database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager applyFlagChange:toMessages:]_block_invoke"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_2_98;
  v13[3] = &unk_1E8253DA0;
  v10 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v10;
  v11 = v6;
  v15 = v11;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v19 = *(a1 + 64);
  v12 = v5;
  v18 = v12;
  v20 = v7;
  [v8 __performWriteWithCaller:v9 usingBlock:v13];

  if (v7)
  {
    [*(a1 + 32) checkForNewActionsInMailboxID:{objc_msgSend(*(a1 + 32), "mailboxDatabaseIDForURL:", v12)}];
  }
}

uint64_t __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_2_98(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) applyFlagChange:*(a1 + 40) toMessagesInDatabase:*(a1 + 48)];
  v5 = [v4 count];
  if (v5 != [*(a1 + 48) count])
  {
    v6 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      v8 = [*(a1 + 48) count];
      *buf = 138543874;
      v28 = v7;
      v29 = 2048;
      v30 = v5;
      v31 = 2048;
      v32 = v8;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Applied flag change to %lu of %lu messages", buf, 0x20u);
    }
  }

  v9 = [v4 ef_filter:&__block_literal_global_418];
  if (v5 != [v9 count])
  {
    v10 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_2_98_cold_1(buf, [v9 count], v5, v10);
    }
  }

  [*(a1 + 64) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  [*(*(*(a1 + 80) + 8) + 40) addObjectsFromArray:v4];
  [*(*(*(a1 + 88) + 8) + 40) addObjectsFromArray:v9];
  if ([v4 count])
  {
    v11 = [*(a1 + 32) hookResponder];
    [v11 persistenceIsChangingFlags:*(a1 + 40) messages:v9 generationWindow:*(a1 + 64)];

    if (([*(a1 + 40) readChanged] & 1) != 0 || objc_msgSend(*(a1 + 40), "deletedChanged"))
    {
      [*(a1 + 32) resetStatusCountsForMailboxWithURL:*(a1 + 72)];
    }
  }

  if (*(a1 + 96) == 1 && [v4 count])
  {
    v12 = objc_alloc(MEMORY[0x1E699B270]);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_100;
    v22 = &unk_1E8253D78;
    v13 = *(a1 + 72);
    v14 = *(a1 + 32);
    v23 = v13;
    v24 = v14;
    v25 = *(a1 + 48);
    v26 = *(a1 + 40);
    v15 = [v12 initWithBuilder:&v19];
    v16 = [*(a1 + 32) localActionPersistence];
    [v16 persistFlagChangeAction:v15];
  }

  v17 = *MEMORY[0x1E69E9840];
  return 1;
}

void __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_100(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setMailboxURL:*(a1 + 32)];
  v3 = [*(a1 + 40) messagesToJournalForMessages:*(a1 + 48) inMailbox:*(a1 + 32)];
  [v4 setMessages:v3];

  [v4 setFlagChange:*(a1 + 56)];
}

- (void)applyFollowUp:(id)up toMessages:(id)messages withNegativeFeedbackForSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  v30 = *MEMORY[0x1E69E9840];
  upCopy = up;
  messagesCopy = messages;
  v10 = +[EDMessageChangeManager log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = upCopy;
    *&buf[12] = 2048;
    *&buf[14] = [messagesCopy count];
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Setting follow up dates and json data %{public}@ on %lu messages", buf, 0x16u);
  }

  v11 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  if (suggestionsCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v27 = __Block_byref_object_copy__22;
    v28 = __Block_byref_object_dispose__22;
    serviceForMail = [MEMORY[0x1E69992A0] serviceForMail];
    [*(*&buf[8] + 40) setSyncTimeout:0.1];
    messagePersistence = [(EDMessageChangeManager *)self messagePersistence];
    v14 = [messagePersistence retrieveFollowUpJsonStringForModelEvaluationForSuggestionsForMessages:messagesCopy];

    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__22;
    v22[4] = __Block_byref_object_dispose__22;
    v23 = 0;
    v15 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 count];
      *v24 = 134217984;
      v25 = v16;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Sending negative feedback for follow up to Suggestions for %lu messages", v24, 0xCu);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __86__EDMessageChangeManager_applyFollowUp_toMessages_withNegativeFeedbackForSuggestions___block_invoke;
    v21[3] = &unk_1E8253DF0;
    v21[4] = buf;
    v21[5] = v22;
    [v14 enumerateObjectsUsingBlock:v21];
    _Block_object_dispose(v22, 8);

    _Block_object_dispose(buf, 8);
  }

  messagePersistence2 = [(EDMessageChangeManager *)self messagePersistence];
  [messagePersistence2 persistFollowUp:upCopy forMessages:messagesCopy];

  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder2 persistenceDidUpdateFollowUpForMessages:messagesCopy generationWindow:v11];

  hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder3 persistenceDidFinishUpdates];

  v20 = *MEMORY[0x1E69E9840];
}

void __86__EDMessageChangeManager_applyFollowUp_toMessages_withNegativeFeedbackForSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Suggestions does not respond to selector @selector(reportMailIntelligenceFollowUpUserEngagement:forStringFromFollowUpWarning:error:)", v11, 2u);
    }

    goto LABEL_7;
  }

  v6 = *(a1 + 40);
  v5 = a1 + 40;
  v7 = *(*(*(v5 - 8) + 8) + 40);
  v8 = *(v6 + 8);
  obj = *(v8 + 40);
  v9 = [v7 reportMailIntelligenceFollowUpUserEngagement:0 forStringFromFollowUpWarning:v3 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (*(*(*v5 + 8) + 40))
  {
    v10 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __86__EDMessageChangeManager_applyFollowUp_toMessages_withNegativeFeedbackForSuggestions___block_invoke_cold_1(v5, v10);
    }

LABEL_7:
  }
}

- (id)applyReadLaterDate:(id)date displayDate:(id)displayDate toMessages:(id)messages
{
  v5 = [(EDMessageChangeManager *)self _applyReadLaterDate:date displayDate:displayDate toMessages:messages changeIsRemote:0];

  return v5;
}

- (id)_applyReadLaterDate:(id)date displayDate:(id)displayDate toMessages:(id)messages changeIsRemote:(BOOL)remote
{
  remoteCopy = remote;
  v57 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  displayDateCopy = displayDate;
  messagesCopy = messages;
  v10 = [(EDMessageChangeManager *)self _truncateReadLaterDate:dateCopy];

  v34 = v10;
  if (v10)
  {
    v29 = [objc_alloc(MEMORY[0x1E699AE30]) initWithDate:v10];
  }

  else
  {
    v29 = 0;
  }

  v11 = EDRemindMeLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = displayDateCopy;
    *&buf[22] = 2048;
    v54 = [messagesCopy count];
    LOWORD(v55) = 1024;
    *(&v55 + 2) = remoteCopy;
    _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Setting read later date=%{public}@, displayDate=%{public}@ on %lu messages, changeIsRemote:%{BOOL}d", buf, 0x26u);
  }

  v28 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  v31 = hookResponder;
  [hookResponder persistenceWillBeginUpdates];
  if ([messagesCopy count])
  {
    [hookResponder persistenceWillChangeReadLaterDate:v34 messages:messagesCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__EDMessageChangeManager__applyReadLaterDate_displayDate_toMessages_changeIsRemote___block_invoke;
  aBlock[3] = &unk_1E8251360;
  v13 = displayDateCopy;
  v52 = v13;
  v33 = _Block_copy(aBlock);
  v14 = [messagesCopy ef_filter:v33];
  if ([v14 count])
  {
    [hookResponder persistenceWillUpdateDisplayDateForMessages:v14];
  }

  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v54 = __Block_byref_object_copy__22;
  v55 = __Block_byref_object_dispose__22;
  v56 = 0;
  database = [(EDMessageChangeManager *)self database];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager _applyReadLaterDate:displayDate:toMessages:changeIsRemote:]"];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __84__EDMessageChangeManager__applyReadLaterDate_displayDate_toMessages_changeIsRemote___block_invoke_2;
  v36[3] = &unk_1E8253E18;
  v45 = &v47;
  v17 = v28;
  v37 = v17;
  v18 = messagesCopy;
  v38 = v18;
  v19 = v29;
  v39 = v19;
  v20 = v33;
  v44 = v20;
  v21 = v34;
  v40 = v21;
  selfCopy = self;
  v22 = v13;
  v42 = v22;
  v23 = v31;
  v43 = v23;
  v46 = buf;
  [database __performWriteWithCaller:v16 usingBlock:v36];

  if ([v18 count])
  {
    [v23 persistenceDidChangeReadLaterDate:v21 messages:*(*&buf[8] + 40) changeIsRemote:remoteCopy generationWindow:v17];
  }

  if ([v14 count])
  {
    [v23 persistenceDidUpdateDisplayDateForMessages:v14 changeIsRemote:remoteCopy generation:v48[3]];
  }

  [v23 persistenceDidFinishUpdates];
  v24 = *(*&buf[8] + 40);
  if (!v24)
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  v25 = v24;

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v47, 8);

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

uint64_t __84__EDMessageChangeManager__applyReadLaterDate_displayDate_toMessages_changeIsRemote___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 displayDate];
    v6 = [v5 isEqualToDate:*(a1 + 32)];
  }

  else
  {
    v5 = [v3 dateReceived];
    v7 = [v4 displayDate];
    v6 = [v5 isEqualToDate:v7];
  }

  return v6 ^ 1u;
}

uint64_t __84__EDMessageChangeManager__applyReadLaterDate_displayDate_toMessages_changeIsRemote___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(*(*(a1 + 96) + 8) + 24) = [v3 transactionGeneration];
  [*(a1 + 32) insertGeneration:*(*(*(a1 + 96) + 8) + 24)];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        [v8 setReadLater:{*(a1 + 48), v18}];
        v9 = [v8 displayDate];
        v10 = (*(*(a1 + 88) + 16))();
        v11 = *(a1 + 64);
        if (*(a1 + 56))
        {
          v12 = [v11 readLaterPersistence];
          [v12 persistReadLaterForMessage:v8 date:*(a1 + 56) displayDate:*(a1 + 72)];
        }

        else
        {
          v12 = [v11 readLaterPersistence];
          [v12 removeReadLaterForMessage:v8];
        }

        if (v10)
        {
          [*(a1 + 80) persistenceIsUpdatingDisplayDateForMessage:v8 fromDate:v9 generation:*(*(*(a1 + 96) + 8) + 24)];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v13 = [*(a1 + 40) copy];
  v14 = *(*(a1 + 104) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)_truncateReadLaterDate:(id)date
{
  dateCopy = date;
  ef_dateWithTruncatedSeconds = [dateCopy ef_dateWithTruncatedSeconds];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [ef_dateWithTruncatedSeconds ef_isLaterThanOrEqualDate:v5];

  v7 = ef_dateWithTruncatedSeconds;
  if ((v6 & 1) == 0)
  {
    v8 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(EDMessageChangeManager *)ef_dateWithTruncatedSeconds _truncateReadLaterDate:dateCopy, v8];
    }

    v7 = dateCopy;
  }

  v9 = v7;

  return v7;
}

- (id)addLabels:(id)labels removeLabels:(id)removeLabels forMessages:(id)messages
{
  labelsCopy = labels;
  removeLabelsCopy = removeLabels;
  messagesCopy = messages;
  v26 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  v13 = [messagesCopy ef_filter:&__block_literal_global_418];
  [hookResponder2 persistenceWillAddLabels:labelsCopy removeLabels:removeLabelsCopy messages:v13];

  v14 = [messagesCopy ef_groupBy:&__block_literal_global_108_0];
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(messagesCopy, "count")}];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __61__EDMessageChangeManager_addLabels_removeLabels_forMessages___block_invoke_2;
  v27[3] = &unk_1E8253E90;
  v27[4] = self;
  v16 = labelsCopy;
  v28 = v16;
  v17 = removeLabelsCopy;
  v29 = v17;
  v18 = v26;
  v30 = v18;
  v19 = v15;
  v31 = v19;
  [v14 enumerateKeysAndObjectsUsingBlock:v27];
  hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
  v21 = [v19 ef_filter:&__block_literal_global_418];
  [hookResponder3 persistenceDidAddLabels:v16 removeLabels:v17 messages:v21 generationWindow:v18];

  hookResponder4 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder4 persistenceDidFinishUpdates];

  v23 = v31;
  v24 = v19;

  return v19;
}

id __61__EDMessageChangeManager_addLabels_removeLabels_forMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mailbox];
  v3 = [v2 URL];

  return v3;
}

void __61__EDMessageChangeManager_addLabels_removeLabels_forMessages___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) mailboxURLIsInRemoteAccount:v5];
  v8 = [*(a1 + 32) database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager addLabels:removeLabels:forMessages:]_block_invoke_2"];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __61__EDMessageChangeManager_addLabels_removeLabels_forMessages___block_invoke_3;
  v16 = &unk_1E8253E68;
  v10 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = v10;
  v19 = *(a1 + 48);
  v11 = v6;
  v20 = v11;
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  v24 = v7;
  v12 = v5;
  v23 = v12;
  [v8 __performWriteWithCaller:v9 usingBlock:&v13];

  if (v7)
  {
    [*(a1 + 32) checkForNewActionsInMailboxID:{objc_msgSend(*(a1 + 32), "mailboxDatabaseIDForURL:", v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22)}];
  }
}

uint64_t __61__EDMessageChangeManager_addLabels_removeLabels_forMessages___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) addLabels:*(a1 + 40) removeLabels:*(a1 + 48) toMessagesInDatabase:*(a1 + 56)];
  [*(a1 + 64) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  [*(a1 + 72) addObjectsFromArray:v4];
  if (*(a1 + 88) == 1 && [*(a1 + 72) count])
  {
    v5 = objc_alloc(MEMORY[0x1E699B2C0]);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __61__EDMessageChangeManager_addLabels_removeLabels_forMessages___block_invoke_4;
    v16 = &unk_1E8253E40;
    v17 = *(a1 + 80);
    v18 = v4;
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v6 = [v5 initWithBuilder:&v13];
    v7 = [*(a1 + 32) localActionPersistence];
    [v7 persistLabelChangeAction:v6];
  }

  v8 = [*(a1 + 32) hookResponder];
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = [v4 ef_filter:&__block_literal_global_418];
  [v8 persistenceIsAddingLabels:v9 removingLabels:v10 messages:v11];

  return 1;
}

void __61__EDMessageChangeManager_addLabels_removeLabels_forMessages___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  [v3 setMailboxURL:a1[4]];
  [v3 setMessages:a1[5]];
  [v3 setLabelsToAdd:a1[6]];
  [v3 setLabelsToRemove:a1[7]];
}

- (id)reflectNewMessages:(id)messages mailboxURL:(id)l
{
  v65 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  lCopy = l;
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  v7 = +[EDMessageChangeManager log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [messagesCopy count];
    v9 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:lCopy];
    *buf = 134218242;
    v59 = v8;
    v60 = 2114;
    v61 = v9;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Adding %lu new messages from server sync to %{public}@", buf, 0x16u);
  }

  if ([messagesCopy count])
  {
    hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder2 persistenceWillAddNewMessages:messagesCopy];
  }

  v38 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  v42 = objc_opt_new();
  if ([(EDMessageChangeManager *)self _needToStoreServerMessagesForMailboxURL:lCopy])
  {
    v11 = objc_opt_new();
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke;
    v51[3] = &unk_1E8253FA8;
    v51[4] = self;
    v52 = v38;
    v53 = lCopy;
    v54 = v42;
    v12 = v11;
    v55 = v12;
    [messagesCopy ef_enumerateObjectsInBatchesOfSize:256 block:v51];
    v13 = v55;
    allKeys = v12;
  }

  else
  {
    [(EDMessageChangeManager *)self persistNewMessages:messagesCopy mailboxURL:lCopy oldMessagesByNewMessage:v42 fromSyncing:1];
    allKeys = [v42 allKeys];
  }

  markAllWorkQueue = [(EDMessageChangeManager *)self markAllWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_117;
  block[3] = &unk_1E8250128;
  block[4] = self;
  v16 = allKeys;
  v50 = v16;
  dispatch_async(markAllWorkQueue, block);

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v16;
  v17 = [obj countByEnumeratingWithState:&v45 objects:v64 count:16];
  if (v17)
  {
    v18 = *v46;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v45 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        readLaterPersistence = [(EDMessageChangeManager *)self readLaterPersistence];
        v44 = 0;
        v23 = [readLaterPersistence cloudStorageReadLaterDateForMessage:v20 displayDate:&v44];
        v24 = v44;

        if (v23 | v24)
        {
          v25 = EDRemindMeLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            messageIDHeaderHash = [v20 messageIDHeaderHash];
            int64Value = [messageIDHeaderHash int64Value];
            *buf = 134218498;
            v59 = int64Value;
            v60 = 2114;
            v61 = v23;
            v62 = 2114;
            v63 = v24;
            _os_log_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_DEFAULT, "Applying to downloaded message: %lld readLaterDate:%{public}@ displayDate:%{public}@", buf, 0x20u);
          }

          if (v23)
          {
            v57 = v20;
            messagePersistence = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
            v29 = [(EDMessageChangeManager *)self _applyReadLaterDate:v23 displayDate:v24 toMessages:messagePersistence changeIsRemote:1];
          }

          else
          {
            if (!v24)
            {
              goto LABEL_21;
            }

            messagePersistence = [(EDMessageChangeManager *)self messagePersistence];
            v56 = v20;
            v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
            [messagePersistence updateDisplayDateForPersistedMessages:v30 displayDate:v24 changeIsRemote:1];
          }
        }

LABEL_21:

        objc_autoreleasePoolPop(v21);
      }

      v17 = [obj countByEnumeratingWithState:&v45 objects:v64 count:16];
    }

    while (v17);
  }

  if ([v42 count] && objc_msgSend(obj, "count"))
  {
    [(EDMessageChangeManager *)self willStartPersistenceDidAddMessages:v42];
    hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder3 persistenceDidAddMessages:obj generationWindow:v39];

    [(EDMessageChangeManager *)self didFinishPersistenceDidAddMessages:v42];
    [(EDMessageChangeManager *)self didReflectNewMessages:obj];
    hookResponder4 = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder4 persistenceDidAddNewMessages:v42];
  }

  hookResponder5 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder5 persistenceDidFinishUpdates];

  [(EDMessageChangeManager *)self _generateFakeSummariesIfNeededForMessages:obj flagChange:0];
  v34 = v50;
  v35 = obj;

  v36 = *MEMORY[0x1E69E9840];
  return obj;
}

void __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager reflectNewMessages:mailboxURL:]_block_invoke"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_2;
  v9[3] = &unk_1E8253F80;
  v6 = a1[5];
  v7 = a1[4];
  v10 = v6;
  v11 = v7;
  v8 = v3;
  v12 = v8;
  v13 = a1[6];
  v14 = a1[7];
  v15 = a1[8];
  [v4 __performWriteWithCaller:v5 usingBlock:v9];
}

uint64_t __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_2(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v40 = a2;
  v41 = objc_opt_new();
  [*(a1 + 32) insertGeneration:{objc_msgSend(v40, "transactionGeneration")}];
  v3 = [*(a1 + 40) persistNewMessages:*(a1 + 48) mailboxURL:*(a1 + 56) oldMessagesByNewMessage:v41 fromSyncing:1];
  [*(a1 + 64) addEntriesFromDictionary:v41];
  v44 = a1;
  if (v3)
  {
    v4 = [*(a1 + 40) bimiManager];
    v5 = *(a1 + 48);
    v64 = 0;
    v6 = [v4 processBIMIHeadersForMessages:v5 evidenceAndMessagesNeedingVerification:&v64];
    v7 = v64;

    v8 = objc_alloc(MEMORY[0x1E695DFA8]);
    v9 = [v6 allValues];
    v10 = [v9 ef_flatten];
    v11 = [v8 initWithArray:v10];

    v12 = [v7 allValues];
    v13 = [v12 ef_flatten];
    [v11 addObjectsFromArray:v13];

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_3;
    v61[3] = &unk_1E8253EB8;
    v15 = v11;
    v62 = v15;
    v16 = v14;
    v63 = v16;
    [v41 enumerateKeysAndObjectsUsingBlock:v61];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_4;
    aBlock[3] = &unk_1E8253EE0;
    v17 = v16;
    v60 = v17;
    v18 = _Block_copy(aBlock);
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_5;
    v57[3] = &unk_1E8253F08;
    v19 = v18;
    v57[4] = *(v44 + 40);
    v58 = v19;
    [v6 enumerateKeysAndObjectsUsingBlock:v57];
    if ([v7 count])
    {
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_6;
      v55[3] = &unk_1E8253F08;
      v20 = v19;
      v55[4] = *(v44 + 40);
      v56 = v20;
      [v7 enumerateKeysAndObjectsUsingBlock:v55];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_7;
      v54[3] = &unk_1E8253F30;
      v54[4] = *(v44 + 40);
      [v40 performBlockAfterTransaction:v54];
    }

    a1 = v44;
  }

  v21 = [*(a1 + 40) serverMessagePersistenceFactory];
  v46 = [v21 serverMessagePersistenceForMailboxURL:*(a1 + 56)];

  v42 = objc_opt_new();
  v43 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v22 = [v41 allKeys];
  obj = v22;
  v23 = [v22 countByEnumeratingWithState:&v50 objects:v69 count:16];
  if (v23)
  {
    v25 = *v51;
    *&v24 = 138543618;
    v39 = v24;
LABEL_7:
    v26 = 0;
    while (1)
    {
      if (*v51 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v50 + 1) + 8 * v26);
      v28 = objc_alloc(MEMORY[0x1E699B320]);
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_8;
      v48[3] = &unk_1E8253F58;
      v48[4] = v27;
      v29 = v46;
      v49 = v29;
      v30 = [v28 initWithIMAPServerMessageBuilder:v48];
      v47 = 0;
      [v29 addServerMessage:v30 invalidMessage:&v47 + 1 duplicateRemoteID:&v47];
      v31 = HIBYTE(v47);
      if (HIBYTE(v47) == 1)
      {
        v32 = +[EDMessageChangeManager log];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:*(v44 + 56)];
          buf = v39;
          v66 = v27;
          v67 = 2114;
          v68 = v33;
          _os_log_error_impl(&dword_1C61EF000, v32, OS_LOG_TYPE_ERROR, "Invalid added message %{public}@ in mailbox %{public}@.", &buf, 0x16u);
        }
      }

      else
      {
        if (v47 != 1)
        {
          [v43 addObject:v27];
          goto LABEL_17;
        }

        v34 = *(v44 + 40);
        v35 = [v27 persistentID];
        v32 = [v34 messageForDatabaseID:{objc_msgSend(v35, "longLongValue")}];

        [v42 addObject:v32];
      }

LABEL_17:
      if (v31)
      {

        v36 = 0;
        goto LABEL_26;
      }

      if (v23 == ++v26)
      {
        v22 = obj;
        v23 = [obj countByEnumeratingWithState:&v50 objects:v69 count:16];
        if (v23)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  if ([v42 count])
  {
    [*(v44 + 40) deletePersistedMessages:v42];
  }

  if ([v43 count])
  {
    [*(v44 + 72) addObjectsFromArray:v43];
  }

  v36 = 1;
LABEL_26:

  v37 = *MEMORY[0x1E69E9840];
  return v36;
}

void __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if ([*(a1 + 32) containsObject:v7])
  {
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
    [*(a1 + 32) removeObject:v7];
    if (![*(a1 + 32) count])
    {
      *a4 = 1;
    }
  }
}

id __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];

  return v2;
}

void __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 ef_compactMap:*(a1 + 40)];
  v6 = [*(a1 + 32) messagePersistence];
  [v6 setBrandIndicatorForMessages:v5 fromPersistedBIMIInfo:v7];
}

void __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 ef_compactMap:*(a1 + 40)];
  v6 = [*(a1 + 32) messagePersistence];
  [v6 addMessagesToVerify:v5 forBrandIndicatorEvidenceDatabaseID:{objc_msgSend(v7, "evidenceDatabaseID")}];
}

void __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_7(uint64_t a1)
{
  v1 = [*(a1 + 32) bimiManager];
  [v1 downloadAndVerifyIndicatorsIfNeeded];
}

void __56__EDMessageChangeManager_reflectNewMessages_mailboxURL___block_invoke_8(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) remoteID];
  [v7 setImapUID:uidFromString(v3)];

  v4 = [*(a1 + 32) persistentID];
  [v7 setMessagePersistentID:v4];

  v5 = [*(a1 + 32) flags];
  [v7 setServerFlags:v5];

  if ([*(a1 + 40) supportsLabels])
  {
    v6 = [*(a1 + 32) labels];
    [v7 setLabels:v6];
  }
}

- (void)_generateFakeSummariesIfNeededForMessages:(id)messages flagChange:(id)change
{
  messagesCopy = messages;
  changeCopy = change;
  if ([MEMORY[0x1E699ACE8] preferenceEnabled:50] && (!changeCopy || objc_msgSend(changeCopy, "flaggedChanged")))
  {
    v8 = dispatch_time(0, 3000000000);
    markAllWorkQueue = [(EDMessageChangeManager *)self markAllWorkQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__EDMessageChangeManager__generateFakeSummariesIfNeededForMessages_flagChange___block_invoke;
    v10[3] = &unk_1E8250128;
    v11 = messagesCopy;
    selfCopy = self;
    dispatch_after(v8, markAllWorkQueue, v10);
  }
}

void __79__EDMessageChangeManager__generateFakeSummariesIfNeededForMessages_flagChange___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = *(a1 + 32);
  v1 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v1)
  {
    v2 = *v28;
    do
    {
      v3 = 0;
      do
      {
        if (*v28 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v27 + 1) + 8 * v3);
        v5 = objc_alloc(MEMORY[0x1E696AAB0]);
        v6 = MEMORY[0x1E696AEC0];
        v7 = [v4 subject];
        v8 = [v7 subjectString];
        v9 = [v6 stringWithFormat:@"Top line summary for %@", v8];
        v10 = [v5 initWithString:v9];

        v11 = objc_alloc(MEMORY[0x1E696AAB0]);
        v12 = MEMORY[0x1E696AEC0];
        v13 = [v4 subject];
        v14 = [v13 subjectString];
        v15 = [v12 stringWithFormat:@"Synopsis for %@", v14];
        v16 = [v11 initWithString:v15];

        v17 = [v4 subject];
        v18 = [v17 subjectString];
        if ([v18 hasPrefix:@"Urgent"])
        {
          v19 = 1;
        }

        else
        {
          v20 = [v4 flags];
          v19 = [v20 flagged];
        }

        v21 = [objc_alloc(MEMORY[0x1E699AD48]) initWithGlobalMessageID:{objc_msgSend(v4, "globalMessageID")}];
        v22 = [objc_alloc(MEMORY[0x1E699ACB8]) initWithTopLine:v10 synopsis:v16 urgent:v19 messageItemID:v21];
        v23 = [*(a1 + 40) messagePersistence];
        [v23 setGeneratedSummary:v22 forPersistedMessage:v4 forceUpdateUrgent:1];

        ++v3;
      }

      while (v1 != v3);
      v1 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v1);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)didReflectNewMessages:(id)messages
{
  v28[1] = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v5 = [messagesCopy ef_filter:&__block_literal_global_133];
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    mailbox = [v6 mailbox];

    v7 = objc_alloc(MEMORY[0x1E699AD20]);
    v8 = [mailbox URL];
    v9 = [v7 initWithURL:v8];

    v10 = MEMORY[0x1E699AD28];
    v28[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v12 = [v10 mailboxScopeForMailboxObjectIDs:v11 forExclusion:0];

    messagePersistence = [(EDMessageChangeManager *)self messagePersistence];
    v14 = [messagePersistence messagesForPersistedMessages:v5 mailboxScope:v12];

    v15 = [v14 ef_compactMap:&__block_literal_global_138];
    keyPathForRecentEmails = [MEMORY[0x1E6997A68] keyPathForRecentEmails];
    v17 = [v15 copy];
    userContext = [MEMORY[0x1E6997A60] userContext];
    [userContext setObject:v17 forKeyedSubscript:keyPathForRecentEmails];

    v19 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v14 count];
      ef_publicDescription = [v9 ef_publicDescription];
      *buf = 134218242;
      v25 = v20;
      v26 = 2114;
      v27 = ef_publicDescription;
      _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "Notifying CoreDuet about %lu new messages in %{public}@", buf, 0x16u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

BOOL __48__EDMessageChangeManager_didReflectNewMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mailbox];
  v3 = [v2 type] == 7;

  return v3;
}

id __48__EDMessageChangeManager_didReflectNewMessages___block_invoke_2(uint64_t a1, void *a2)
{
  v31[3] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [v2 objectID];
  v5 = [v4 serializedRepresentation];
  v6 = [MEMORY[0x1E6997A68] identifierKey];
  [v3 setObject:v5 forKeyedSubscript:v6];

  v7 = [MEMORY[0x1E6997A68] incomingKey];
  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v7];

  v8 = [v2 subject];
  v9 = [v8 subjectWithoutPrefix];
  v10 = [MEMORY[0x1E6997A68] subjectKey];
  [v3 setObject:v9 forKeyedSubscript:v10];

  v11 = [v2 senderAddress];
  v12 = [v11 emailAddressValue];
  v13 = [v12 simpleAddress];
  v14 = [MEMORY[0x1E6997A68] senderKey];
  [v3 setObject:v13 forKeyedSubscript:v14];

  v15 = [v2 toList];
  v16 = [v15 ef_compactMap:&__block_literal_global_145_0];
  v31[0] = v16;
  v17 = [v2 ccList];
  v18 = [v17 ef_compactMap:&__block_literal_global_145_0];
  v31[1] = v18;
  v19 = [v2 bccList];
  v20 = [v19 ef_compactMap:&__block_literal_global_145_0];
  v31[2] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
  v22 = [v21 ef_uniquifyWithComparator:&__block_literal_global_148_0];

  v23 = [MEMORY[0x1E6997A68] recipientsKey];
  [v3 setObject:v22 forKeyedSubscript:v23];

  v24 = [v2 mailboxes];
  v25 = [v24 firstObject];
  v26 = [v25 accountIdentifier];
  v27 = [v26 representedObjectID];
  v28 = [MEMORY[0x1E6997A68] accountIdentifierKey];
  [v3 setObject:v27 forKeyedSubscript:v28];

  v29 = *MEMORY[0x1E69E9840];

  return v3;
}

id __48__EDMessageChangeManager_didReflectNewMessages___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 emailAddressValue];
  v3 = [v2 simpleAddress];

  return v3;
}

- (void)reflectDeletedMessages:(id)messages
{
  messagesCopy = messages;
  firstObject = [messagesCopy firstObject];
  mailbox = [firstObject mailbox];
  v8 = [mailbox URL];
  v9 = [(EDMessageChangeManager *)self _needToStoreServerMessagesForMailboxURL:v8];

  if (v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageChangeManager.m" lineNumber:1058 description:@"Calling reflectFlagChanges:forMessages: on IMAP"];
  }

  v10 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  database = [(EDMessageChangeManager *)self database];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager reflectDeletedMessages:]"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __49__EDMessageChangeManager_reflectDeletedMessages___block_invoke;
  v19[3] = &unk_1E8250440;
  v14 = v10;
  v20 = v14;
  selfCopy = self;
  v15 = messagesCopy;
  v22 = v15;
  [database __performWriteWithCaller:v13 usingBlock:v19];

  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder2 persistenceDidDeleteMessages:v15 generationWindow:v14];

  hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder3 persistenceDidFinishUpdates];
}

uint64_t __49__EDMessageChangeManager_reflectDeletedMessages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  [*(a1 + 40) deletePersistedMessages:*(a1 + 48)];

  return 1;
}

- (void)reflectDeletedMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l
{
  dsCopy = ds;
  lCopy = l;
  v8 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  v10 = [(EDMessageChangeManager *)self _needToStoreServerMessagesForMailboxURL:lCopy];
  v11 = v10;
  if (v10)
  {
    serverMessagePersistenceFactory = [(EDMessageChangeManager *)self serverMessagePersistenceFactory];
    v13 = [serverMessagePersistenceFactory serverMessagePersistenceForMailboxURL:lCopy];
  }

  else
  {
    v13 = 0;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__EDMessageChangeManager_reflectDeletedMessagesWithRemoteIDs_mailboxURL___block_invoke;
  v18[3] = &unk_1E8254038;
  v18[4] = self;
  v14 = lCopy;
  v19 = v14;
  v15 = v8;
  v20 = v15;
  v22 = v11;
  v16 = v13;
  v21 = v16;
  [dsCopy ef_enumerateObjectsInBatchesOfSize:25 block:v18];
  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder2 persistenceDidFinishUpdates];
}

void __73__EDMessageChangeManager_reflectDeletedMessagesWithRemoteIDs_mailboxURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__22;
  v20 = __Block_byref_object_dispose__22;
  v21 = 0;
  v4 = [*(a1 + 32) database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager reflectDeletedMessagesWithRemoteIDs:mailboxURL:]_block_invoke"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__EDMessageChangeManager_reflectDeletedMessagesWithRemoteIDs_mailboxURL___block_invoke_2;
  v9[3] = &unk_1E8254010;
  v6 = *(a1 + 32);
  v14 = &v16;
  v9[4] = v6;
  v7 = v3;
  v10 = v7;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v15 = *(a1 + 64);
  v13 = *(a1 + 56);
  [v4 __performWriteWithCaller:v5 usingBlock:v9];

  v8 = [*(a1 + 32) hookResponder];
  [v8 persistenceDidDeleteMessages:v17[5] generationWindow:*(a1 + 48)];

  _Block_object_dispose(&v16, 8);
}

uint64_t __73__EDMessageChangeManager_reflectDeletedMessagesWithRemoteIDs_mailboxURL___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) messagesForRemoteIDs:*(a1 + 40) mailboxURL:*(a1 + 48)];
  v5 = *(*(a1 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(a1 + 56) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  [*(a1 + 32) deletePersistedMessages:*(*(*(a1 + 72) + 8) + 40)];
  if (*(a1 + 80) == 1)
  {
    [*(a1 + 64) deleteServerMessagesWithRemoteIDs:*(a1 + 40)];
  }

  return 1;
}

- (void)reflectAllMessagesDeletedInMailboxURL:(id)l
{
  v43 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (![(EDMessageChangeManager *)self _needToStoreServerMessagesForMailboxURL:?])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageChangeManager.m" lineNumber:1105 description:@"Reflect all deleted server messages for a data source without server messages"];
  }

  v30 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  serverMessagePersistenceFactory = [(EDMessageChangeManager *)self serverMessagePersistenceFactory];
  v31 = [serverMessagePersistenceFactory serverMessagePersistenceForMailboxURL:lCopy];

  while (1)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{1, 0xFFFFFFFFLL}];
    v8 = [v31 serverMessagesForIMAPUIDs:v7 limit:25 returnLastEntries:0];

    if (![v8 count])
    {
      break;
    }

    v9 = objc_opt_new();
    v10 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v12)
    {
      v13 = *v39;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v39 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v38 + 1) + 8 * i);
          remoteID = [v15 remoteID];
          [v9 addObject:remoteID];

          messagePersistentID = [v15 messagePersistentID];

          if (messagePersistentID)
          {
            messagePersistentID2 = [v15 messagePersistentID];
            v19 = -[EDMessageChangeManager messageForDatabaseID:](self, "messageForDatabaseID:", [messagePersistentID2 longLongValue]);
            [v10 addObject:v19];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v12);
    }

    database = [(EDMessageChangeManager *)self database];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager reflectAllMessagesDeletedInMailboxURL:]"];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __64__EDMessageChangeManager_reflectAllMessagesDeletedInMailboxURL___block_invoke;
    v32[3] = &unk_1E8254060;
    v22 = v30;
    v33 = v22;
    v34 = v31;
    v23 = v9;
    v35 = v23;
    selfCopy = self;
    v24 = v10;
    v37 = v24;
    [database __performWriteWithCaller:v21 usingBlock:v32];

    hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder2 persistenceDidDeleteMessages:v24 generationWindow:v22];
  }

  hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder3 persistenceDidFinishUpdates];

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t __64__EDMessageChangeManager_reflectAllMessagesDeletedInMailboxURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  [*(a1 + 40) deleteServerMessagesWithRemoteIDs:*(a1 + 48)];
  [*(a1 + 56) deletePersistedMessages:*(a1 + 64)];

  return 1;
}

- (void)reflectDeletedAllClearedMessagesInMailboxURL:(id)l
{
  lCopy = l;
  if ([(EDMessageChangeManager *)self _needToStoreServerMessagesForMailboxURL:?])
  {
    v21 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
    hookResponder = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder persistenceWillBeginUpdates];

    serverMessagePersistenceFactory = [(EDMessageChangeManager *)self serverMessagePersistenceFactory];
    v6 = [serverMessagePersistenceFactory serverMessagePersistenceForMailboxURL:lCopy];

    v7 = MEMORY[0x1E695DF70];
    deleteAllClearedUIDMessages = [v6 deleteAllClearedUIDMessages];
    v9 = [v7 arrayWithArray:deleteAllClearedUIDMessages];

    while ([v9 count])
    {
      v10 = [v9 count];
      if (v10 >= 0xC8)
      {
        v11 = 200;
      }

      else
      {
        v11 = v10;
      }

      v12 = [v9 subarrayWithRange:{0, v11}];
      [v9 removeObjectsInRange:{0, v11}];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __71__EDMessageChangeManager_reflectDeletedAllClearedMessagesInMailboxURL___block_invoke;
      v26[3] = &unk_1E8254088;
      v26[4] = self;
      v13 = [v12 ef_compactMap:v26];
      database = [(EDMessageChangeManager *)self database];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager reflectDeletedAllClearedMessagesInMailboxURL:]"];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __71__EDMessageChangeManager_reflectDeletedAllClearedMessagesInMailboxURL___block_invoke_2;
      v22[3] = &unk_1E8250440;
      v16 = v21;
      v23 = v16;
      selfCopy = self;
      v17 = v13;
      v25 = v17;
      [database __performWriteWithCaller:v15 usingBlock:v22];

      hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
      [hookResponder2 persistenceDidDeleteMessages:v17 generationWindow:v16];
    }

    hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder3 persistenceDidFinishUpdates];
  }
}

id __71__EDMessageChangeManager_reflectDeletedAllClearedMessagesInMailboxURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 longLongValue];
  if (v4)
  {
    v5 = [*(a1 + 32) messageForDatabaseID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __71__EDMessageChangeManager_reflectDeletedAllClearedMessagesInMailboxURL___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  [*(a1 + 40) deletePersistedMessages:*(a1 + 48)];

  return 1;
}

- (void)reflectFlagChanges:(id)changes forMessages:(id)messages
{
  changesCopy = changes;
  messagesCopy = messages;
  firstObject = [messagesCopy firstObject];
  mailbox = [firstObject mailbox];
  v10 = [mailbox URL];
  v11 = [(EDMessageChangeManager *)self _needToStoreServerMessagesForMailboxURL:v10];

  if (v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageChangeManager.m" lineNumber:1175 description:@"Calling reflectFlagChanges:forMessages: on IMAP"];
  }

  [(EDMessageChangeManager *)self _reflectFlagChanges:changesCopy messages:messagesCopy remoteIDs:0 mailboxURL:0];
}

- (void)reflectFlagChanges:(id)changes forMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l
{
  changesCopy = changes;
  dsCopy = ds;
  lCopy = l;
  v10 = [(EDMessageChangeManager *)self messagesForRemoteIDs:dsCopy mailboxURL:lCopy];
  [(EDMessageChangeManager *)self _reflectFlagChanges:changesCopy messages:v10 remoteIDs:dsCopy mailboxURL:lCopy];
}

- (void)_reflectFlagChanges:(id)changes messages:(id)messages remoteIDs:(id)ds mailboxURL:(id)l
{
  changesCopy = changes;
  messagesCopy = messages;
  dsCopy = ds;
  lCopy = l;
  v14 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  if ([messagesCopy count])
  {
    hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder2 persistenceWillChangeFlags:changesCopy messages:messagesCopy];
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__22;
  v38 = __Block_byref_object_dispose__22;
  v39 = 0;
  database = [(EDMessageChangeManager *)self database];
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager _reflectFlagChanges:messages:remoteIDs:mailboxURL:]"];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __76__EDMessageChangeManager__reflectFlagChanges_messages_remoteIDs_mailboxURL___block_invoke;
  v26[3] = &unk_1E82540B0;
  v19 = v14;
  v27 = v19;
  selfCopy = self;
  v20 = lCopy;
  v29 = v20;
  v21 = dsCopy;
  v30 = v21;
  v22 = changesCopy;
  v31 = v22;
  v23 = messagesCopy;
  v32 = v23;
  v33 = &v34;
  [database __performWriteWithCaller:v18 usingBlock:v26];

  if ([v23 count])
  {
    hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder3 persistenceDidChangeFlags:v22 messages:v35[5] generationWindow:v19];
  }

  hookResponder4 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder4 persistenceDidFinishUpdates];

  _Block_object_dispose(&v34, 8);
}

uint64_t __76__EDMessageChangeManager__reflectFlagChanges_messages_remoteIDs_mailboxURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  if ([*(a1 + 40) _needToStoreServerMessagesForMailboxURL:*(a1 + 48)] && objc_msgSend(*(a1 + 56), "count"))
  {
    v4 = [*(a1 + 40) serverMessagePersistenceFactory];
    v5 = [v4 serverMessagePersistenceForMailboxURL:*(a1 + 48)];

    [v5 applyFlagChange:*(a1 + 64) toMessagesWithRemoteIDs:*(a1 + 56)];
  }

  if ([*(a1 + 72) count])
  {
    v6 = [*(a1 + 40) applyFlagChange:*(a1 + 64) toMessagesInDatabase:*(a1 + 72)];
    v7 = *(*(a1 + 80) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if ([*(*(*(a1 + 80) + 8) + 40) count])
    {
      v9 = [*(a1 + 40) hookResponder];
      [v9 persistenceIsChangingFlags:*(a1 + 64) messages:*(*(*(a1 + 80) + 8) + 40) generationWindow:*(a1 + 32)];
    }
  }

  return 1;
}

- (void)reflectSortedFlagChanges:(id)changes mailboxURL:(id)l
{
  v48 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  lCopy = l;
  v5 = [changesCopy count];
  if (lCopy && v5)
  {
    v29 = changesCopy;
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v29, "count")}];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v29;
    v7 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v7)
    {
      v8 = *v43;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v43 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v42 + 1) + 8 * i);
          first = [v10 first];
          unsignedIntegerValue = [first unsignedIntegerValue];

          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __groupFlagChangesByChange_block_invoke;
          v41[3] = &unk_1E82542D0;
          v41[4] = v10;
          v13 = [v6 indexOfObjectPassingTest:v41];
          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v14 = MEMORY[0x1E699B848];
            v15 = [MEMORY[0x1E696AD50] indexSetWithIndex:unsignedIntegerValue];
            second = [v10 second];
            v17 = [v14 pairWithFirst:v15 second:second];
            [v6 addObject:v17];
          }

          else
          {
            v15 = [v6 objectAtIndexedSubscript:v13];
            second = [v15 first];
            [second addIndex:unsignedIntegerValue];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v7);
    }

    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obja = v6;
    v18 = [obja countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v18)
    {
      v19 = *v38;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(obja);
          }

          v21 = *(*(&v37 + 1) + 8 * j);
          v22 = MEMORY[0x1E695DF70];
          first2 = [v21 first];
          v24 = [v22 arrayWithCapacity:{objc_msgSend(first2, "count")}];

          first3 = [v21 first];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __62__EDMessageChangeManager_reflectSortedFlagChanges_mailboxURL___block_invoke;
          v35[3] = &unk_1E82540D8;
          v26 = v24;
          v36 = v26;
          [first3 enumerateIndexesUsingBlock:v35];

          second2 = [v21 second];
          [(EDMessageChangeManager *)self reflectFlagChanges:second2 forMessagesWithRemoteIDs:v26 mailboxURL:lCopy];
        }

        v18 = [obja countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v18);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __62__EDMessageChangeManager_reflectSortedFlagChanges_mailboxURL___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a2];
  [v2 addObject:?];
}

- (void)reflectAddedLabels:(id)labels removedLabels:(id)removedLabels forMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l
{
  labelsCopy = labels;
  removedLabelsCopy = removedLabels;
  dsCopy = ds;
  lCopy = l;
  v30 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  v14 = [(EDMessageChangeManager *)self hookResponder:lCopy];
  [v14 persistenceWillBeginUpdates];

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__22;
  v54 = __Block_byref_object_dispose__22;
  v55 = 0;
  database = [(EDMessageChangeManager *)self database];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager reflectAddedLabels:removedLabels:forMessagesWithRemoteIDs:mailboxURL:]"];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __95__EDMessageChangeManager_reflectAddedLabels_removedLabels_forMessagesWithRemoteIDs_mailboxURL___block_invoke;
  v46[3] = &unk_1E8254100;
  v49 = &v50;
  v46[4] = self;
  v17 = dsCopy;
  v47 = v17;
  v18 = lCopy;
  v48 = v18;
  [database __performReadWithCaller:v16 usingBlock:v46];

  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillAddLabels:labelsCopy removeLabels:removedLabelsCopy messages:v51[5]];

  v20 = [(EDMessageChangeManager *)self _needToStoreServerMessagesForMailboxURL:v18];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__22;
  v44 = __Block_byref_object_dispose__22;
  v45 = 0;
  database2 = [(EDMessageChangeManager *)self database];
  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager reflectAddedLabels:removedLabels:forMessagesWithRemoteIDs:mailboxURL:]"];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __95__EDMessageChangeManager_reflectAddedLabels_removedLabels_forMessagesWithRemoteIDs_mailboxURL___block_invoke_2;
  v31[3] = &unk_1E8254128;
  v23 = v30;
  v39 = v20;
  v32 = v23;
  selfCopy = self;
  v24 = v18;
  v34 = v24;
  v25 = labelsCopy;
  v35 = v25;
  v26 = removedLabelsCopy;
  v36 = v26;
  v27 = v17;
  v37 = v27;
  v38 = &v40;
  [database2 __performWriteWithCaller:v22 usingBlock:v31];

  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder2 persistenceDidAddLabels:v25 removeLabels:v26 messages:v41[5] generationWindow:v23];

  hookResponder3 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder3 persistenceDidFinishUpdates];

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v50, 8);
}

uint64_t __95__EDMessageChangeManager_reflectAddedLabels_removedLabels_forMessagesWithRemoteIDs_mailboxURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messagesForRemoteIDs:*(a1 + 40) mailboxURL:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 1;
}

uint64_t __95__EDMessageChangeManager_reflectAddedLabels_removedLabels_forMessagesWithRemoteIDs_mailboxURL___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  if (*(a1 + 88) == 1)
  {
    v4 = [*(a1 + 40) serverMessagePersistenceFactory];
    v5 = [v4 serverMessagePersistenceForMailboxURL:*(a1 + 48)];

    [v5 addLabels:*(a1 + 56) removeLabels:*(a1 + 64) toMessagesWithRemoteIDs:*(a1 + 72)];
  }

  v6 = [*(a1 + 40) messagesForRemoteIDs:*(a1 + 72) mailboxURL:*(a1 + 48)];
  v7 = *(*(a1 + 80) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(a1 + 40) addLabels:*(a1 + 56) removeLabels:*(a1 + 64) toMessagesInDatabase:*(*(*(a1 + 80) + 8) + 40)];
  return 1;
}

- (BOOL)persistResults:(id)results forAction:(id)action
{
  resultsCopy = results;
  actionCopy = action;
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(EDMessageChangeManager *)self _persistResults:resultsCopy forFlagChangeAction:actionCopy];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_10;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_7;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_10:
          localActionPersistence = [(EDMessageChangeManager *)self localActionPersistence];
          persistentID = [actionCopy persistentID];
          [localActionPersistence removeMessageAction:{objc_msgSend(persistentID, "databaseID")}];

          v9 = 0;
        }

        else
        {
          localActionPersistence = [(EDMessageChangeManager *)self localActionPersistence];
          v9 = [localActionPersistence updateTransferUndownloadedMessageAction:actionCopy withResults:resultsCopy];
        }

        goto LABEL_8;
      }

      [(EDMessageChangeManager *)self _persistResults:resultsCopy forLabelChangeAction:actionCopy];
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v9 = [(EDMessageChangeManager *)self _persistResults:resultsCopy forTransferAction:actionCopy];
LABEL_8:
  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder2 persistenceDidFinishUpdates];

  return v9;
}

- (void)deleteLocalMessageActionsWithIDs:(id)ds
{
  dsCopy = ds;
  hookResponder = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder persistenceWillBeginUpdates];

  localActionPersistence = [(EDMessageChangeManager *)self localActionPersistence];
  [localActionPersistence removeMessageActions:dsCopy];

  hookResponder2 = [(EDMessageChangeManager *)self hookResponder];
  [hookResponder2 persistenceDidFinishUpdates];
}

- (BOOL)_persistResults:(id)results forLabelChangeAction:(id)action
{
  v33 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  actionCopy = action;
  remoteIDs = [actionCopy remoteIDs];
  allObjects = [remoteIDs allObjects];
  v10 = [allObjects mutableCopy];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  messages = [actionCopy messages];
  v12 = [messages countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = *v29;
    do
    {
      v14 = 0;
      do
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(messages);
        }

        remoteID = [*(*(&v28 + 1) + 8 * v14) remoteID];
        if ([remoteID length])
        {
          [v10 addObject:remoteID];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [messages countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  database = [(EDMessageChangeManager *)self database];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager _persistResults:forLabelChangeAction:]"];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __63__EDMessageChangeManager__persistResults_forLabelChangeAction___block_invoke;
  v23[3] = &unk_1E8254150;
  v18 = resultsCopy;
  v24 = v18;
  selfCopy = self;
  v19 = actionCopy;
  v26 = v19;
  v20 = v10;
  v27 = v20;
  [database __performWriteWithCaller:v17 usingBlock:v23];

  v21 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __63__EDMessageChangeManager__persistResults_forLabelChangeAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 56);
    v5 = [*(a1 + 48) mailboxURL];
    [v3 _resetLocalLabelsToServerLabelsForMessagesWithRemoteIDs:v4 mailboxURL:v5];
  }

  else
  {
    v6 = [*(a1 + 40) serverMessagePersistenceFactory];
    v7 = [*(a1 + 48) mailboxURL];
    v5 = [v6 serverMessagePersistenceForMailboxURL:v7];

    v8 = [*(a1 + 48) labelsToAdd];
    v9 = [*(a1 + 48) labelsToRemove];
    [v5 addLabels:v8 removeLabels:v9 toMessagesWithRemoteIDs:*(a1 + 56)];
  }

  v10 = [*(a1 + 40) localActionPersistence];
  v11 = [*(a1 + 48) persistentID];
  [v10 removeMessageAction:{objc_msgSend(v11, "databaseID")}];

  return 1;
}

- (void)_resetLocalLabelsToServerLabelsForMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l
{
  v35 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  lCopy = l;
  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  selfCopy = self;
  serverMessagePersistenceFactory = [(EDMessageChangeManager *)self serverMessagePersistenceFactory];
  v7 = [serverMessagePersistenceFactory serverMessagePersistenceForMailboxURL:lCopy];

  v21 = v7;
  [v7 serverMessagesForRemoteIDs:dsCopy];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v8)
  {
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        messagePersistentID = [v11 messagePersistentID];
        v13 = -[EDMessageChangeManager messageForDatabaseID:](selfCopy, "messageForDatabaseID:", [messagePersistentID longLongValue]);

        if (v13)
        {
          labels = [v13 labels];
          labels2 = [v11 labels];
          v16 = [MEMORY[0x1E695DFA8] setWithSet:labels2];
          [v16 minusSet:labels];
          v17 = [MEMORY[0x1E695DFA8] setWithSet:labels];
          [v17 minusSet:labels2];
          v32[0] = MEMORY[0x1E695E118];
          v32[1] = MEMORY[0x1E695E110];
          v33[0] = v16;
          v33[1] = v17;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
          v19 = [v25 objectForKeyedSubscript:v18];
          if (!v19)
          {
            v19 = objc_opt_new();
            [v25 setObject:v19 forKeyedSubscript:v18];
          }

          [v19 addObject:v13];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v8);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __93__EDMessageChangeManager__resetLocalLabelsToServerLabelsForMessagesWithRemoteIDs_mailboxURL___block_invoke;
  v27[3] = &unk_1E8254178;
  v27[4] = selfCopy;
  [v25 enumerateKeysAndObjectsUsingBlock:v27];

  v20 = *MEMORY[0x1E69E9840];
}

void __93__EDMessageChangeManager__resetLocalLabelsToServerLabelsForMessagesWithRemoteIDs_mailboxURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [v10 objectForKeyedSubscript:MEMORY[0x1E695E118]];
  v8 = [v10 objectForKeyedSubscript:MEMORY[0x1E695E110]];
  v9 = [v6 addLabels:v7 removeLabels:v8 toMessagesInDatabase:v5];
}

- (BOOL)_persistResults:(id)results forFlagChangeAction:(id)action
{
  v36 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  actionCopy = action;
  v25 = resultsCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(EDMessageChangeManager *)self _persistFlagChangeResults:resultsCopy forFlagChangeAction:actionCopy];
  }

  else
  {
    remoteIDs = [actionCopy remoteIDs];
    allObjects = [remoteIDs allObjects];
    v11 = [allObjects mutableCopy];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    messages = [actionCopy messages];
    v13 = [messages countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v13)
    {
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(messages);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          remoteID = [v16 remoteID];
          v18 = [remoteID length];

          if (v18)
          {
            remoteID2 = [v16 remoteID];
            [v11 addObject:remoteID2];
          }
        }

        v13 = [messages countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v13);
    }

    database = [(EDMessageChangeManager *)self database];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager _persistResults:forFlagChangeAction:]"];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __62__EDMessageChangeManager__persistResults_forFlagChangeAction___block_invoke;
    v26[3] = &unk_1E8254150;
    v27 = v25;
    selfCopy = self;
    v29 = actionCopy;
    v22 = v11;
    v30 = v22;
    [database __performWriteWithCaller:v21 usingBlock:v26];

    v8 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __62__EDMessageChangeManager__persistResults_forFlagChangeAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 56);
    v5 = [*(a1 + 48) mailboxURL];
    [v3 _resetLocalFlagsToServerFlagsForMessagesWithRemoteIDs:v4 mailboxURL:v5];
    v6 = v5;
  }

  else
  {
    v7 = [*(a1 + 40) serverMessagePersistenceFactory];
    v8 = [*(a1 + 48) mailboxURL];
    v6 = [v7 serverMessagePersistenceForMailboxURL:v8];

    v9 = [*(a1 + 48) flagChange];
    [v6 applyFlagChange:v9 toMessagesWithRemoteIDs:*(a1 + 56)];
  }

  v10 = [*(a1 + 40) localActionPersistence];
  v11 = [*(a1 + 48) persistentID];
  [v10 removeMessageAction:{objc_msgSend(v11, "databaseID")}];

  return 1;
}

- (BOOL)_persistFlagChangeResults:(id)results forFlagChangeAction:(id)action
{
  v96 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  actionCopy = action;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  remoteIDs = [actionCopy remoteIDs];
  v7 = [remoteIDs countByEnumeratingWithState:&v85 objects:v95 count:16];
  if (v7)
  {
    v8 = *v86;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v86 != v8)
        {
          objc_enumerationMutation(remoteIDs);
        }

        v10 = *(*(&v85 + 1) + 8 * i);
        v11 = uidFromString(v10);
        if (v11 - 1 > 0xFFFFFFFD)
        {
          v12 = +[EDMessageChangeManager log];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *v91 = v10;
            _os_log_error_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_ERROR, "Invalid UID (%{public}@) in flag change action.", buf, 0xCu);
          }
        }

        else
        {
          [indexSet addIndex:v11];
        }
      }

      v7 = [remoteIDs countByEnumeratingWithState:&v85 objects:v95 count:16];
    }

    while (v7);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  messages = [actionCopy messages];
  v14 = [messages countByEnumeratingWithState:&v81 objects:v94 count:16];
  if (v14)
  {
    v15 = *v82;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v82 != v15)
        {
          objc_enumerationMutation(messages);
        }

        v17 = *(*(&v81 + 1) + 8 * j);
        remoteID = [v17 remoteID];
        v19 = uidFromString(remoteID);

        if (v19 - 1 > 0xFFFFFFFD)
        {
          v20 = +[EDMessageChangeManager log];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            remoteID2 = [v17 remoteID];
            [(EDMessageChangeManager *)remoteID2 _persistFlagChangeResults:v92 forFlagChangeAction:&v93, v20];
          }
        }

        else
        {
          [indexSet addIndex:v19];
        }
      }

      v14 = [messages countByEnumeratingWithState:&v81 objects:v94 count:16];
    }

    while (v14);
  }

  v22 = [indexSet count];
  remoteIDs2 = [actionCopy remoteIDs];
  v24 = v22 == [remoteIDs2 count];

  if (!v24)
  {
    v25 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v57 = [indexSet count];
      remoteIDs3 = [actionCopy remoteIDs];
      v59 = [remoteIDs3 count];
      remoteIDs4 = [actionCopy remoteIDs];
      v61 = [remoteIDs4 count];
      *buf = 67109376;
      *v91 = v57 - v59;
      *&v91[4] = 1024;
      *&v91[6] = v61;
      _os_log_error_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_ERROR, "%d of %d UIDs in flag change action were invalid.", buf, 0xEu);
    }
  }

  completedUIDs = [resultsCopy completedUIDs];
  v27 = [completedUIDs isEqualToIndexSet:indexSet];

  if (v27)
  {
    v28 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [indexSet count];
      *buf = 67109120;
      *v91 = v29;
      _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_INFO, "All %d UIDs in flag change action were completed.", buf, 8u);
    }

    remoteIDs5 = [actionCopy remoteIDs];
    allObjects = [remoteIDs5 allObjects];
    v32 = [allObjects mutableCopy];

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    messages2 = [actionCopy messages];
    v34 = [messages2 countByEnumeratingWithState:&v77 objects:v89 count:16];
    if (v34)
    {
      v35 = *v78;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v78 != v35)
          {
            objc_enumerationMutation(messages2);
          }

          v37 = *(*(&v77 + 1) + 8 * k);
          remoteID3 = [v37 remoteID];
          v39 = [remoteID3 length];

          if (v39)
          {
            remoteID4 = [v37 remoteID];
            [v32 addObject:remoteID4];
          }
        }

        v34 = [messages2 countByEnumeratingWithState:&v77 objects:v89 count:16];
      }

      while (v34);
    }

    database = [(EDMessageChangeManager *)self database];
    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager _persistFlagChangeResults:forFlagChangeAction:]"];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __72__EDMessageChangeManager__persistFlagChangeResults_forFlagChangeAction___block_invoke;
    v72[3] = &unk_1E8254150;
    v73 = resultsCopy;
    selfCopy = self;
    v75 = actionCopy;
    v76 = v32;
    [database __performWriteWithCaller:v42 usingBlock:v72];
  }

  else
  {
    v43 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      completedUIDs2 = [resultsCopy completedUIDs];
      v45 = [completedUIDs2 count];
      v46 = [indexSet count];
      *buf = 67109376;
      *v91 = v45;
      *&v91[4] = 1024;
      *&v91[6] = v46;
      _os_log_impl(&dword_1C61EF000, v43, OS_LOG_TYPE_INFO, "%d of %d UIDs in flag change action were completed.", buf, 0xEu);
    }

    v47 = MEMORY[0x1E695DF70];
    completedUIDs3 = [resultsCopy completedUIDs];
    v32 = [v47 arrayWithCapacity:{objc_msgSend(completedUIDs3, "count")}];

    completedUIDs4 = [resultsCopy completedUIDs];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __72__EDMessageChangeManager__persistFlagChangeResults_forFlagChangeAction___block_invoke_167;
    v71[3] = &unk_1E82540D8;
    v71[4] = v32;
    [completedUIDs4 enumerateIndexesUsingBlock:v71];

    v50 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:indexSet];
    completedUIDs5 = [resultsCopy completedUIDs];
    [v50 removeIndexes:completedUIDs5];

    database2 = [(EDMessageChangeManager *)self database];
    v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager _persistFlagChangeResults:forFlagChangeAction:]"];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __72__EDMessageChangeManager__persistFlagChangeResults_forFlagChangeAction___block_invoke_2;
    v65[3] = &unk_1E8254060;
    v66 = resultsCopy;
    selfCopy2 = self;
    v68 = actionCopy;
    v69 = v32;
    v54 = v50;
    v70 = v54;
    [database2 __performWriteWithCaller:v53 usingBlock:v65];
  }

  v55 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __72__EDMessageChangeManager__persistFlagChangeResults_forFlagChangeAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 56);
    v5 = [*(a1 + 48) mailboxURL];
    [v3 _resetLocalFlagsToServerFlagsForMessagesWithRemoteIDs:v4 mailboxURL:v5];
    v6 = v5;
  }

  else
  {
    v7 = [*(a1 + 40) serverMessagePersistenceFactory];
    v8 = [*(a1 + 48) mailboxURL];
    v6 = [v7 serverMessagePersistenceForMailboxURL:v8];

    v9 = [*(a1 + 48) flagChange];
    [v6 applyFlagChange:v9 toMessagesWithRemoteIDs:*(a1 + 56)];
  }

  v10 = [*(a1 + 40) localActionPersistence];
  v11 = [*(a1 + 48) persistentID];
  [v10 removeMessageAction:{objc_msgSend(v11, "databaseID")}];

  return 1;
}

void __72__EDMessageChangeManager__persistFlagChangeResults_forFlagChangeAction___block_invoke_167(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", a2];
  [v2 addObject:?];
}

uint64_t __72__EDMessageChangeManager__persistFlagChangeResults_forFlagChangeAction___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 56);
    v5 = [*(a1 + 48) mailboxURL];
    [v3 _resetLocalFlagsToServerFlagsForMessagesWithRemoteIDs:v4 mailboxURL:v5];
    v6 = v5;
  }

  else
  {
    v7 = [*(a1 + 40) serverMessagePersistenceFactory];
    v8 = [*(a1 + 48) mailboxURL];
    v6 = [v7 serverMessagePersistenceForMailboxURL:v8];

    v9 = [*(a1 + 48) flagChange];
    [v6 applyFlagChange:v9 toMessagesWithRemoteIDs:*(a1 + 56)];
  }

  v10 = [*(a1 + 40) localActionPersistence];
  [v10 updateFlagChangeAction:*(a1 + 48) withRemainingUIDs:*(a1 + 64)];

  return 1;
}

- (void)_clearFollowUpsFromThreadsForMessages:(id)messages
{
  v55 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  if ([messagesCopy count])
  {
    context = objc_autoreleasePoolPush();
    v3 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v54 = [messagesCopy count];
      _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Starting to clear follow-ups from threads of %lu incoming messages.", buf, 0xCu);
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = messagesCopy;
    v5 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v5)
    {
      v6 = *v48;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v48 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v47 + 1) + 8 * i);
          v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v8, "conversationID")}];
          v10 = [v4 objectForKeyedSubscript:v9];

          if (!v10 || ([v8 dateReceived], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "ef_isEarlierThanDate:", v11), v11, v12))
          {
            dateReceived = [v8 dateReceived];
            v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v8, "conversationID")}];
            [v4 setObject:dateReceived forKeyedSubscript:v14];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v5);
    }

    allKeys = [v4 allKeys];
    v15 = objc_alloc(MEMORY[0x1E695DFD8]);
    v16 = [obj ef_map:&__block_literal_global_175];
    v40 = [v15 initWithArray:v16];

    messagePersistence = [(EDMessageChangeManager *)self messagePersistence];
    v36 = [messagePersistence persistedMessageIDsForMessagesWithFollowUpsForConversationIDs:allKeys];

    messagePersistence2 = [(EDMessageChangeManager *)self messagePersistence];
    v34 = [messagePersistence2 persistedMessagesForDatabaseIDs:v36 requireProtectedData:0 temporarilyUnavailableDatabaseIDs:0];

    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obja = v34;
    v19 = [obja countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v19)
    {
      v20 = *v44;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v44 != v20)
          {
            objc_enumerationMutation(obja);
          }

          v22 = *(*(&v43 + 1) + 8 * j);
          dateReceived2 = [v22 dateReceived];
          v24 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v22, "conversationID")}];
          v25 = [v4 objectForKeyedSubscript:v24];
          v26 = [dateReceived2 ef_isEarlierThanDate:v25];

          if (v26)
          {
            v27 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v22, "globalMessageID")}];
            v28 = [v40 containsObject:v27];

            if ((v28 & 1) == 0)
            {
              [v39 addObject:v22];
            }
          }
        }

        v19 = [obja countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v19);
    }

    messagePersistence3 = [(EDMessageChangeManager *)self messagePersistence];
    [messagePersistence3 persistFollowUp:0 forMessages:v39];

    v30 = +[EDMessageChangeManager log];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v39 count];
      *buf = 134217984;
      v54 = v31;
      _os_log_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_DEFAULT, "Finished clearing %lu follow-ups.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(context);
  }

  v32 = *MEMORY[0x1E69E9840];
}

id __64__EDMessageChangeManager__clearFollowUpsFromThreadsForMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "globalMessageID")}];

  return v3;
}

- (void)_resetLocalFlagsToServerFlagsForMessagesWithRemoteIDs:(id)ds mailboxURL:(id)l
{
  v30 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  lCopy = l;
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  serverMessagePersistenceFactory = [(EDMessageChangeManager *)self serverMessagePersistenceFactory];
  v7 = [serverMessagePersistenceFactory serverMessagePersistenceForMailboxURL:lCopy];

  v20 = v7;
  [v7 serverMessagesForRemoteIDs:dsCopy];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v8 = v26 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        messagePersistentID = [v12 messagePersistentID];
        v14 = -[EDMessageChangeManager messageForDatabaseID:](self, "messageForDatabaseID:", [messagePersistentID longLongValue]);

        if (v14)
        {
          flags = [v14 flags];
          serverFlags = [v12 serverFlags];
          if (([flags isEqual:serverFlags] & 1) == 0)
          {
            v17 = [MEMORY[0x1E699B300] changeFrom:flags to:serverFlags];
            v18 = [v23 objectForKeyedSubscript:v17];
            if (!v18)
            {
              v18 = objc_opt_new();
              [v23 setObject:v18 forKeyedSubscript:v17];
            }

            [v18 addObject:v14];
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __91__EDMessageChangeManager__resetLocalFlagsToServerFlagsForMessagesWithRemoteIDs_mailboxURL___block_invoke;
  v24[3] = &unk_1E82541A0;
  v24[4] = self;
  [v23 enumerateKeysAndObjectsUsingBlock:v24];

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)_persistResults:(id)results forTransferAction:(id)action
{
  resultsCopy = results;
  actionCopy = action;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v8 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  database = [(EDMessageChangeManager *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMessageChangeManager _persistResults:forTransferAction:]"];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __60__EDMessageChangeManager__persistResults_forTransferAction___block_invoke;
  v20 = &unk_1E82530D0;
  v11 = v8;
  v21 = v11;
  v12 = resultsCopy;
  v22 = v12;
  selfCopy = self;
  v13 = actionCopy;
  v24 = v13;
  v25 = &v31;
  v26 = &v27;
  [database __performWriteWithCaller:v10 usingBlock:&v17];

  error = [v12 error];

  if (error)
  {
    [(EDMessageChangeManager *)self displayErrorForTransferAction:v13 withResults:v12];
  }

  if (*(v28 + 24) == 1)
  {
    *(v32 + 24) = 0;
    [(EDMessageChangeManager *)self actionHasChangedAccount:v13];
  }

  v15 = *(v32 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v15;
}

uint64_t __60__EDMessageChangeManager__persistResults_forTransferAction___block_invoke(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  v4 = [*(a1 + 40) failedItems];
  v5 = [v4 count];

  if (v5)
  {
    if ([*(a1 + 40) phaseForResults] == 3 || objc_msgSend(*(a1 + 40), "phaseForResults") == 4)
    {
      v6 = *(a1 + 48);
      v7 = [*(a1 + 40) failedItems];
      [v6 _handleFailedCopyItems:v7 transferAction:*(a1 + 56) generationWindow:*(a1 + 32)];
LABEL_5:

      goto LABEL_6;
    }

    if ([*(a1 + 40) phaseForResults] == 1)
    {
      v30 = *(a1 + 48);
      v7 = [*(a1 + 40) failedItems];
      [v30 _handleFailedDownload:v7 generationWindow:*(a1 + 32)];
      goto LABEL_5;
    }
  }

LABEL_6:
  v8 = [*(a1 + 40) completedItems];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [*(a1 + 40) phaseForResults];
    v11 = *(a1 + 40);
    if (v10 == 1)
    {
      v12 = [v11 downloadedDataByCopyItems];
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __60__EDMessageChangeManager__persistResults_forTransferAction___block_invoke_2;
      v69[3] = &unk_1E82541C8;
      v69[4] = *(a1 + 48);
      [v12 enumerateKeysAndObjectsUsingBlock:v69];
    }

    else if ([v11 phaseForResults] == 3)
    {
      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        v13 = [*(a1 + 56) mailboxURL];
        v14 = [*(a1 + 56) destinationMailboxURL];
        v15 = [v13 isEqual:v14];

        if (v15)
        {
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v16 = [*(a1 + 40) completedItems];
          v17 = [v16 countByEnumeratingWithState:&v65 objects:v72 count:16];
          if (v17)
          {
            v18 = *v66;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v66 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(a1 + 48);
                v21 = [*(*(&v65 + 1) + 8 * i) destinationMessage];
                [v20 messageWasAppended:v21];
              }

              v17 = [v16 countByEnumeratingWithState:&v65 objects:v72 count:16];
            }

            while (v17);
          }
        }
      }

      v22 = *(a1 + 48);
      v23 = [*(a1 + 56) destinationMailboxURL];
      LODWORD(v22) = [v22 _needToStoreServerMessagesForMailboxURL:v23];

      if (v22)
      {
        v24 = *(a1 + 48);
        v25 = [*(a1 + 40) createdServerMessages];
        v26 = [*(a1 + 56) destinationMailboxURL];
        [v24 _storeServerMessages:v25 mailboxURL:v26 generationWindow:*(a1 + 32)];

        v27 = *(a1 + 48);
        v28 = [*(a1 + 40) completedItems];
        v29 = [*(a1 + 40) createdServerMessages];
        [v27 _deleteDestinationMessagesFromCompletedItems:v28 notInServerMessages:v29];
      }

      else
      {
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v43 = [*(a1 + 40) createdServerMessages];
        v44 = [v43 countByEnumeratingWithState:&v61 objects:v71 count:16];
        if (v44)
        {
          v45 = *v62;
          do
          {
            for (j = 0; j != v44; ++j)
            {
              if (*v62 != v45)
              {
                objc_enumerationMutation(v43);
              }

              v47 = *(*(&v61 + 1) + 8 * j);
              v48 = *(a1 + 48);
              v49 = [v47 remoteID];
              v50 = [v47 messagePersistentID];
              [v48 setRemoteID:v49 onMessageWithDatabaseID:{objc_msgSend(v50, "longLongValue")}];
            }

            v44 = [v43 countByEnumeratingWithState:&v61 objects:v71 count:16];
          }

          while (v44);
        }
      }
    }

    else if ([*(a1 + 40) phaseForResults] == 4)
    {
      v31 = *(a1 + 48);
      v32 = [*(a1 + 56) sourceMailboxURL];
      LODWORD(v31) = [v31 _needToStoreServerMessagesForMailboxURL:v32];

      if (v31)
      {
        v33 = objc_opt_new();
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v34 = [*(a1 + 40) completedItems];
        v35 = [v34 countByEnumeratingWithState:&v57 objects:v70 count:16];
        if (v35)
        {
          v36 = *v58;
          do
          {
            for (k = 0; k != v35; ++k)
            {
              if (*v58 != v36)
              {
                objc_enumerationMutation(v34);
              }

              v38 = [*(*(&v57 + 1) + 8 * k) sourceRemoteID];
              if (v38)
              {
                [v33 addObject:v38];
              }
            }

            v35 = [v34 countByEnumeratingWithState:&v57 objects:v70 count:16];
          }

          while (v35);
        }

        v39 = [*(a1 + 48) serverMessagePersistenceFactory];
        v40 = [*(a1 + 56) mailboxURL];
        v41 = [v39 serverMessagePersistenceForMailboxURL:v40];

        v42 = [objc_alloc(MEMORY[0x1E699B300]) initWithBuilder:&__block_literal_global_182];
        [v41 applyFlagChange:v42 toMessagesWithRemoteIDs:v33];
      }
    }
  }

  v51 = [*(a1 + 56) mailboxURL];
  v52 = [*(a1 + 48) localActionPersistence];
  *(*(*(a1 + 64) + 8) + 24) = [v52 updateTransferAction:*(a1 + 56) withResults:*(a1 + 40)];

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v53 = *(a1 + 48);
    v54 = [*(a1 + 56) mailboxURL];
    *(*(*(a1 + 72) + 8) + 24) = [v53 mailboxURL:v54 isInSameAccountAsMailboxURL:v51] ^ 1;
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  v55 = *MEMORY[0x1E69E9840];
  return 1;
}

void __60__EDMessageChangeManager__persistResults_forTransferAction___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 destinationMessage];
  [*(a1 + 32) setData:v6 onMessage:v5];
}

- (void)_handleFailedDownload:(id)download generationWindow:(id)window
{
  v21 = *MEMORY[0x1E69E9840];
  downloadCopy = download;
  windowCopy = window;
  if ([downloadCopy count])
  {
    v8 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = downloadCopy;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          destinationMessage = [*(*(&v16 + 1) + 8 * v12) destinationMessage];
          if (destinationMessage)
          {
            [v8 addObject:destinationMessage];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [(EDMessageChangeManager *)self deletePersistedMessages:v8];
    hookResponder = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder persistenceDidDeleteMessages:v8 generationWindow:windowCopy];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_handleFailedCopyItems:(id)items transferAction:(id)action generationWindow:(id)window
{
  v41 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  actionCopy = action;
  windowCopy = window;
  v29 = itemsCopy;
  if ([itemsCopy count])
  {
    sourceMailboxURL = [actionCopy sourceMailboxURL];
    v26 = sourceMailboxURL;
    if (sourceMailboxURL)
    {
      v9 = [(EDMessageChangeManager *)self mailboxURLIsInRemoteAccount:sourceMailboxURL, sourceMailboxURL];
    }

    else
    {
      v9 = 1;
    }

    v32 = objc_opt_new();
    v10 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = itemsCopy;
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v12)
    {
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          if (v9)
          {
            sourceRemoteID = [*(*(&v36 + 1) + 8 * i) sourceRemoteID];
            if (sourceRemoteID)
            {
            }

            else
            {
              sourceMessage = [v15 sourceMessage];
              remoteID = [sourceMessage remoteID];
              v19 = [remoteID length] == 0;

              if (v19)
              {
                continue;
              }
            }
          }

          destinationMessage = [v15 destinationMessage];
          if (destinationMessage)
          {
            [v32 addObject:destinationMessage];
            [v10 setObject:v15 forKeyedSubscript:destinationMessage];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v12);
    }

    if ([actionCopy transferType] == 1 && objc_msgSend(v32, "count"))
    {
      v21 = objc_opt_new();
      sourceMailboxURL2 = [actionCopy sourceMailboxURL];
      v23 = [(EDMessageChangeManager *)self persistNewMessages:v32 mailboxURL:sourceMailboxURL2 oldMessagesByNewMessage:v21 fromSyncing:0];

      if ((v23 & v9) == 1)
      {
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __81__EDMessageChangeManager__handleFailedCopyItems_transferAction_generationWindow___block_invoke;
        v33[3] = &unk_1E8253EB8;
        v34 = v10;
        selfCopy = self;
        [v21 enumerateKeysAndObjectsUsingBlock:v33];
      }
    }

    [(EDMessageChangeManager *)self deletePersistedMessages:v32, v26];
    hookResponder = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder persistenceDidDeleteMessages:v32 generationWindow:windowCopy];
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __81__EDMessageChangeManager__handleFailedCopyItems_transferAction_generationWindow___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a3];
  v6 = [v5 sourceRemoteID];

  v7 = [v15 persistentID];
  v8 = [v7 longLongValue];

  [*(a1 + 40) setRemoteID:v6 onMessageWithDatabaseID:v8];
  v9 = [v15 mailbox];
  v10 = [v9 URL];

  if ([*(a1 + 40) _needToStoreServerMessagesForMailboxURL:v10])
  {
    v11 = [*(a1 + 40) serverMessagePersistenceFactory];
    v12 = [v15 mailbox];
    v13 = [v12 URL];
    v14 = [v11 serverMessagePersistenceForMailboxURL:v13];

    [v14 attachMessage:v8 toServerMessageWithRemoteID:v6];
  }
}

- (void)_storeServerMessages:(id)messages mailboxURL:(id)l generationWindow:(id)window
{
  v45 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  lCopy = l;
  windowCopy = window;
  v29 = lCopy;
  serverMessagePersistenceFactory = [(EDMessageChangeManager *)self serverMessagePersistenceFactory];
  v33 = [serverMessagePersistenceFactory serverMessagePersistenceForMailboxURL:lCopy];

  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = messagesCopy;
  v11 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v11)
  {
    v32 = *v41;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        v39 = 0;
        [v33 addServerMessage:v13 invalidMessage:&v39 + 1 duplicateRemoteID:&v39];
        if (v39 == 1)
        {
          v14 = [(EDMessageChangeManager *)self _handleDuplicateServerMessage:v13 serverMessagePersistence:v33];
          if (v14)
          {
            [v30 addObject:v14];
          }
        }

        else if (HIBYTE(v39) == 1)
        {
          v15 = objc_alloc(MEMORY[0x1E699B320]);
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __75__EDMessageChangeManager__storeServerMessages_mailboxURL_generationWindow___block_invoke;
          v38[3] = &unk_1E8254210;
          v38[4] = v13;
          v16 = [v15 initWithServerMessageBuilder:v38];
          [v33 addServerMessage:v16 invalidMessage:0 duplicateRemoteID:0];
          v17 = objc_alloc(MEMORY[0x1E699B358]);
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __75__EDMessageChangeManager__storeServerMessages_mailboxURL_generationWindow___block_invoke_2;
          v37[3] = &unk_1E8253C68;
          v37[4] = v13;
          v18 = [v17 initWithBuilder:v37];
          v19 = objc_alloc(MEMORY[0x1E699B350]);
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __75__EDMessageChangeManager__storeServerMessages_mailboxURL_generationWindow___block_invoke_3;
          v34[3] = &unk_1E8254238;
          v20 = v18;
          v35 = v20;
          v21 = v29;
          v36 = v21;
          v22 = [v19 initWithBuilder:v34];
          localActionPersistence = [(EDMessageChangeManager *)self localActionPersistence];
          [localActionPersistence persistTransferAction:v22];

          [(EDMessageChangeManager *)self checkForNewActionsInMailboxID:[(EDMessageChangeManager *)self mailboxDatabaseIDForURL:v21]];
        }

        remoteID = [v13 remoteID];
        messagePersistentID = [v13 messagePersistentID];
        -[EDMessageChangeManager setRemoteID:onMessageWithDatabaseID:](self, "setRemoteID:onMessageWithDatabaseID:", remoteID, [messagePersistentID longLongValue]);
      }

      v11 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v11);
  }

  if ([v30 count])
  {
    [(EDMessageChangeManager *)self deletePersistedMessages:v30];
    hookResponder = [(EDMessageChangeManager *)self hookResponder];
    [hookResponder persistenceDidDeleteMessages:v30 generationWindow:windowCopy];
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __75__EDMessageChangeManager__storeServerMessages_mailboxURL_generationWindow___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) remoteID];
  [v5 setRemoteID:v3];

  v4 = [*(a1 + 32) serverFlags];
  [v5 setServerFlags:v4];
}

void __75__EDMessageChangeManager__storeServerMessages_mailboxURL_generationWindow___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) remoteID];
  [v4 setSourceRemoteID:v3];
}

void __75__EDMessageChangeManager__storeServerMessages_mailboxURL_generationWindow___block_invoke_3(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6[0] = *(a1 + 32);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [v3 setItemsToDelete:v4];

  [v3 setSourceMailboxURL:*(a1 + 40)];
  [v3 setMailboxURL:*(a1 + 40)];
  [v3 setUserInitiated:0];
  [v3 setTransferType:3];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_deleteDestinationMessagesFromCompletedItems:(id)items notInServerMessages:(id)messages
{
  v6 = [(EDMessageChangeManager *)self _findDestinationMessagesFromCompletedItems:items notInServerMessages:messages];
  v5 = [v6 ef_filter:&__block_literal_global_418];
  [(EDMessageChangeManager *)self deletePersistedMessages:v5];
}

- (id)_findDestinationMessagesFromCompletedItems:(id)items notInServerMessages:(id)messages
{
  v25 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  messagesCopy = messages;
  if (messagesCopy)
  {
    v6 = [itemsCopy ef_compactMap:&__block_literal_global_186];
    v7 = [v6 mutableCopy];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = messagesCopy;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          messagePersistentID = [*(*(&v20 + 1) + 8 * i) messagePersistentID];
          v13 = messagePersistentID;
          if (messagePersistentID)
          {
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __89__EDMessageChangeManager__findDestinationMessagesFromCompletedItems_notInServerMessages___block_invoke_2;
            v18[3] = &unk_1E8254280;
            v19 = messagePersistentID;
            v14 = [v7 indexOfObjectPassingTest:v18];
            if (v14 != 0x7FFFFFFFFFFFFFFFLL)
            {
              [v7 removeObjectAtIndex:v14];
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

id __89__EDMessageChangeManager__findDestinationMessagesFromCompletedItems_notInServerMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 destinationMessage];

  return v2;
}

uint64_t __89__EDMessageChangeManager__findDestinationMessagesFromCompletedItems_notInServerMessages___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 persistentID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_handleDuplicateServerMessage:(id)message serverMessagePersistence:(id)persistence
{
  v20[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  persistenceCopy = persistence;
  remoteID = [messageCopy remoteID];
  v20[0] = remoteID;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v10 = [persistenceCopy serverMessagesForRemoteIDs:v9];
  firstObject = [v10 firstObject];

  messagePersistentID = [firstObject messagePersistentID];

  if (messagePersistentID)
  {
    messagePersistentID2 = [firstObject messagePersistentID];
    v14 = -[EDMessageChangeManager messageForDatabaseID:](self, "messageForDatabaseID:", [messagePersistentID2 longLongValue]);
  }

  else
  {
    v14 = 0;
  }

  messagePersistentID3 = [messageCopy messagePersistentID];
  longLongValue = [messagePersistentID3 longLongValue];
  remoteID2 = [firstObject remoteID];
  [persistenceCopy attachMessage:longLongValue toServerMessageWithRemoteID:remoteID2];

  v18 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)mailboxURLIsInRemoteAccount:(id)account
{
  accountCopy = account;
  v4 = accountCopy;
  if (accountCopy)
  {
    if ([accountCopy ef_hasScheme:*MEMORY[0x1E699A698]] & 1) != 0 || (objc_msgSend(v4, "ef_hasScheme:", *MEMORY[0x1E699A690]))
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 ef_hasScheme:*MEMORY[0x1E699A688]];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_needToStoreServerMessagesForMailboxURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (lCopy)
  {
    v5 = [lCopy ef_hasScheme:*MEMORY[0x1E699A698]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)mailboxURL:(id)l isInSameAccountAsMailboxURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v7 = rLCopy;
  v8 = 0;
  if (lCopy && rLCopy)
  {
    host = [lCopy host];
    host2 = [v7 host];
    v8 = [host isEqualToString:host2];
  }

  return v8;
}

- (id)accountForMailboxURL:(id)l
{
  lCopy = l;
  [(EDMessageChangeManager *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMessageChangeManager accountForMailboxURL:]", "EDMessageChangeManager.m", 1819, "0");
}

- (BOOL)_hookResponderRespondsToRequiredMethods:(id)methods
{
  methodsCopy = methods;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v4 = objc_opt_respondsToSelector();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)remindMeCloudStorageChangedWithAddedOrChangedItems:(id)items deletedItems:(id)deletedItems
{
  v27 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  deletedItemsCopy = deletedItems;
  v7 = EDRemindMeLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = itemsCopy;
    v25 = 2114;
    v26 = deletedItemsCopy;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Processing remote changes for changed items: %{public}@ deleted items: %{public}@", buf, 0x16u);
  }

  v8 = [itemsCopy mutableCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = deletedItemsCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        null = [MEMORY[0x1E695DFB0] null];
        [v8 setObject:null forKeyedSubscript:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__EDMessageChangeManager_remindMeCloudStorageChangedWithAddedOrChangedItems_deletedItems___block_invoke;
  v17[3] = &unk_1E82542A8;
  v17[4] = self;
  [v8 enumerateKeysAndObjectsUsingBlock:v17];

  v15 = *MEMORY[0x1E69E9840];
}

void __90__EDMessageChangeManager_remindMeCloudStorageChangedWithAddedOrChangedItems_deletedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v26 = v5;
  v7 = [*(a1 + 32) messagePersistence];
  v8 = [v7 globalIDForMessageIDHash:v5];

  v9 = objc_alloc(MEMORY[0x1E699ADA8]);
  v10 = [MEMORY[0x1E699AD28] allMailboxesScope];
  v11 = [v9 initWithGlobalMessageID:v8 mailboxScope:v10];

  v12 = [*(a1 + 32) messagePersistence];
  v37[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  v14 = [v12 persistedMessagesForObjectIDs:v13 requireProtectedData:0];

  if ([v14 count])
  {
    v15 = [v14 firstObject];
    v16 = [v15 readLater];
    v17 = [v16 date];

    v18 = [v14 firstObject];
    v19 = [v18 displayDate];

    v20 = *MEMORY[0x1E699B750];
    if ((*(*MEMORY[0x1E699B750] + 16))(*MEMORY[0x1E699B750], v6))
    {
      v21 = 0;
    }

    else
    {
      v21 = [v6 readLaterDate];
    }

    if ((*(v20 + 16))(v20, v6))
    {
      v22 = 0;
    }

    else
    {
      v22 = [v6 displayDate];
    }

    if ((EFObjectsAreEqual() & 1) == 0)
    {
      v23 = EDRemindMeLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219010;
        v28 = v8;
        v29 = 2114;
        v30 = v21;
        v31 = 2114;
        v32 = v17;
        v33 = 2114;
        v34 = v22;
        v35 = 2114;
        v36 = v19;
        _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "Applying new read later date due to remote change for messages with global message id: %lld, new read later date: %{public}@, old read later date: %{public}@, new display date: %{public}@, old display date: %{public}@", buf, 0x34u);
      }

      if ([v22 isEqualToDate:v19])
      {

        v22 = 0;
      }

      v24 = [*(a1 + 32) _applyReadLaterDate:v21 displayDate:v22 toMessages:v14 changeIsRemote:1];
    }
  }

  else
  {
    v17 = EDRemindMeLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "No persisted messages found for remote changes.", buf, 2u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(EFCancelable *)self->_stateCancelable cancel];
  stateCancelable = self->_stateCancelable;
  self->_stateCancelable = 0;

  v4.receiver = self;
  v4.super_class = EDMessageChangeManager;
  [(EDMessageChangeManager *)&v4 dealloc];
}

- (EDMessageChangeHookResponder)hookResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_hookResponder);

  return WeakRetained;
}

- (EDMessageAuthenticator)messageAuthenticator
{
  WeakRetained = objc_loadWeakRetained(&self->_messageAuthenticator);

  return WeakRetained;
}

- (EDMessageCategorizer)messageCategorizer
{
  WeakRetained = objc_loadWeakRetained(&self->_messageCategorizer);

  return WeakRetained;
}

- (void)applyFlagChange:(os_log_t)log toMessages:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Warning, only changing flags on %lu of %lu messages as some messages were missing mailbox URLs", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __53__EDMessageChangeManager_applyFlagChange_toMessages___block_invoke_2_98_cold_1(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Warning, only converted %lu of %lu to persisted messages", buf, 0x16u);
}

void __86__EDMessageChangeManager_applyFollowUp_toMessages_withNegativeFeedbackForSuggestions___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*(*a1 + 8) + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "ERROR calling the follow up feedback SPI from Suggestions: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_truncateReadLaterDate:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "Skip truncation. truncatedDate:%{public}@ readLaterDate:%{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_persistFlagChangeResults:(void *)a3 forFlagChangeAction:(os_log_t)log .cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Message’s UID (%{public}@) is invalid in flag change action.", buf, 0xCu);
}

@end