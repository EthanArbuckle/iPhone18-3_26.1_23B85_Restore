@interface MFMessagePersistence_iOS
+ (OS_os_log)log;
- (BOOL)messageFilesAreClassC;
- (BOOL)messageFilesNeedProtectionClassMigration:(BOOL *)migration;
- (BOOL)persistMessageAuthenticationState:(int64_t)state forMessage:(id)message;
- (MFMessagePersistence_iOS)initWithMailboxPersistence:(id)persistence database:(id)database userProfileProvider:(id)provider blockedSenderManager:(id)manager vipReader:(id)reader hookRegistry:(id)registry library:(id)library;
- (id)_libraryMessageForMessageObjectID:(id)d preferNonOutgoingMessages:(BOOL)messages;
- (id)_requestSummaryForLibraryMessage:(id)message;
- (id)baseMessageForOutgoingMessage:(id)message isDraft:(BOOL)draft;
- (id)cachedDatabaseIDsDictionaryForGlobalMessageIDs:(id)ds;
- (id)collectStatistics;
- (id)createContextForIteration;
- (id)enabledAccountMailboxesExpression;
- (id)expressionForFilteringUnavailableMessages;
- (id)expressionForFindingOnlyJournaledMessages;
- (id)flagsForLegacyFlags:(int64_t)flags numberOfAttachments:(int64_t *)attachments;
- (id)fullDataIfAvailableForMessage:(id)message;
- (id)library;
- (id)libraryMessageForMessageObjectID:(id)d;
- (id)mailboxesQueryExpressionForMailboxDatabaseIDs:(id)ds forExclusion:(BOOL)exclusion;
- (id)messageIDsWithBasePaths:(id)paths;
- (id)persistedMessageForSQLRow:(id)row connection:(id)connection iterationContext:(id)context;
- (id)requestContentForMessageObjectID:(id)d requestID:(unint64_t)iD options:(id)options delegate:(id)delegate completionHandler:(id)handler;
- (id)requestSummaryForMessageObjectID:(id)d;
- (int64_t)globalIDForMessageWithDatabaseID:(int64_t)d mailboxScope:(id *)scope;
- (void)generateSummaryForMessage:(id)message downloadIfNecessary:(BOOL)necessary;
- (void)messageObjectIDForSearchIndexerIdentifier:(id)identifier completionHandler:(id)handler;
- (void)persistenceDidChangeGlobalMessageID:(int64_t)d orConversationID:(int64_t)iD message:(id)message generationWindow:(id)window;
- (void)setContentProtectionForAttachmentFile:(id)file;
- (void)setMigrationIsComplete:(BOOL)complete;
@end

@implementation MFMessagePersistence_iOS

- (id)enabledAccountMailboxesExpression
{
  library = [(MFMessagePersistence_iOS *)&self->super.super.isa library];
  enabledAccountMailboxesExpression = [library enabledAccountMailboxesExpression];

  return enabledAccountMailboxesExpression;
}

- (id)library
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 19);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)createContextForIteration
{
  v2 = objc_opt_new();

  return v2;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__MFMessagePersistence_iOS_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_24 != -1)
  {
    dispatch_once(&log_onceToken_24, block);
  }

  v2 = log_log_24;

  return v2;
}

- (MFMessagePersistence_iOS)initWithMailboxPersistence:(id)persistence database:(id)database userProfileProvider:(id)provider blockedSenderManager:(id)manager vipReader:(id)reader hookRegistry:(id)registry library:(id)library
{
  persistenceCopy = persistence;
  databaseCopy = database;
  providerCopy = provider;
  managerCopy = manager;
  readerCopy = reader;
  registryCopy = registry;
  libraryCopy = library;
  v37.receiver = self;
  v37.super_class = MFMessagePersistence_iOS;
  v22 = [(MFMessagePersistence_iOS *)&v37 initWithMailboxPersistence:persistenceCopy database:databaseCopy hookRegistry:registryCopy userProfileProvider:providerCopy blockedSenderManager:managerCopy vipReader:readerCopy gmailLabelPersistence:0];
  v23 = v22;
  if (v22)
  {
    objc_storeWeak(&v22->_library, libraryCopy);
    v24 = [MEMORY[0x1E699B978] operationQueueSchedulerWithMaxConcurrentOperationCount:3];
    networkContentLoadScheduler = v23->_networkContentLoadScheduler;
    v23->_networkContentLoadScheduler = v24;

    v26 = [MEMORY[0x1E699B978] operationQueueSchedulerWithMaxConcurrentOperationCount:3];
    offlineContentLoadScheduler = v23->_offlineContentLoadScheduler;
    v23->_offlineContentLoadScheduler = v26;

    v23->_summaryLock._os_unfair_lock_opaque = 0;
    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    summaryLoaders = v23->_summaryLoaders;
    v23->_summaryLoaders = v28;

    v30 = [objc_alloc(MEMORY[0x1E699B7E0]) initWithCountLimit:500];
    obsoleteGlobalMessageIDToDatabaseIDMap = v23->_obsoleteGlobalMessageIDToDatabaseIDMap;
    v23->_obsoleteGlobalMessageIDToDatabaseIDMap = v30;

    v32 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v33 = dispatch_queue_attr_make_with_qos_class(v32, QOS_CLASS_USER_INITIATED, 0);
    v34 = dispatch_queue_create("SummaryLoaderQueue", v33);
    requestSummaryQueue = v23->_requestSummaryQueue;
    v23->_requestSummaryQueue = v34;

    [registryCopy registerMessageChangeHookResponder:v23];
  }

  return v23;
}

- (id)messageIDsWithBasePaths:(id)paths
{
  v27[2] = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27[0] = @"global_message_id";
  v27[1] = @"mailbox";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v7 = [v6 componentsJoinedByString:{@", "}];

  v8 = objc_alloc(MEMORY[0x1E699B948]);
  v9 = [MEMORY[0x1E699B8C8] column:v7];
  v10 = [v8 initWithResult:v9 table:@"messages"];

  v11 = [MEMORY[0x1E699B8C8] column:@"global_message_id"];
  v12 = [v11 in:pathsCopy];
  [v10 setWhere:v12];

  database = [(MFMessagePersistence_iOS *)self database];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMessagePersistence_iOS messageIDsWithBasePaths:]"];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __52__MFMessagePersistence_iOS_messageIDsWithBasePaths___block_invoke;
  v22[3] = &unk_1E7AA3C20;
  v15 = v10;
  v23 = v15;
  selfCopy = self;
  v16 = v5;
  v25 = v16;
  v17 = pathsCopy;
  v26 = v17;
  [database __performReadWithCaller:v14 usingBlock:v22];

  v18 = v26;
  v19 = v16;

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)baseMessageForOutgoingMessage:(id)message isDraft:(BOOL)draft
{
  draftCopy = draft;
  messageData = [message messageData];
  v6 = [(MFMessage *)MFMailMessage messageWithRFC822Data:messageData];

  if (draftCopy)
  {
    [v6 markAsViewed];
    [v6 setMessageFlags:{objc_msgSend(v6, "messageFlags") | 0x40}];
    senders = [v6 senders];
    firstObject = [senders firstObject];
    v9 = [MailAccount accountContainingEmailAddress:firstObject];

    v10 = [v9 mailboxUidOfType:5 createIfNeeded:1];
    v11 = [v9 storeForMailboxUid:v10];
    [v11 openSynchronously];
  }

  return v6;
}

- (id)expressionForFindingOnlyJournaledMessages
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = MFMessagePersistence_iOS;
  expressionForFilteringUnavailableMessages = [(MFMessagePersistence_iOS *)&v14 expressionForFilteringUnavailableMessages];
  v3 = MEMORY[0x1E699B8F8];
  v4 = MEMORY[0x1E699B8C8];
  messagesTableName = [MEMORY[0x1E699B5C0] messagesTableName];
  v6 = [v4 table:messagesTableName column:@"journaled"];
  v7 = [v6 equalTo:&unk_1F27760F0];
  v8 = [v3 unlikely:v7];

  v9 = MEMORY[0x1E699B898];
  v15[0] = expressionForFilteringUnavailableMessages;
  v15[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v11 = [v9 combined:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)expressionForFilteringUnavailableMessages
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = MFMessagePersistence_iOS;
  expressionForFilteringUnavailableMessages = [(MFMessagePersistence_iOS *)&v14 expressionForFilteringUnavailableMessages];
  v3 = MEMORY[0x1E699B8F8];
  v4 = MEMORY[0x1E699B8C8];
  messagesTableName = [MEMORY[0x1E699B5C0] messagesTableName];
  v6 = [v4 table:messagesTableName column:@"journaled"];
  v7 = [v6 equalTo:&unk_1F2776108];
  v8 = [v3 likely:v7];

  v9 = MEMORY[0x1E699B898];
  v15[0] = expressionForFilteringUnavailableMessages;
  v15[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v11 = [v9 combined:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)requestContentForMessageObjectID:(id)d requestID:(unint64_t)iD options:(id)options delegate:(id)delegate completionHandler:(id)handler
{
  v93 = *MEMORY[0x1E69E9840];
  dCopy = d;
  optionsCopy = options;
  delegateCopy = delegate;
  handlerCopy = handler;
  v65 = dCopy;
  v13 = [(MFMessagePersistence_iOS *)self _libraryMessageForMessageObjectID:dCopy preferNonOutgoingMessages:1];
  if (!v13)
  {
    goto LABEL_5;
  }

  cacheBehavior = [optionsCopy cacheBehavior];
  if (cacheBehavior == 1)
  {
    messageStore = [v13 messageStore];
    [messageStore flushCacheForMessage:v13];
  }

  else if (cacheBehavior == 2)
  {
    messageStore2 = [v13 messageStore];
    [messageStore2 flushCacheForMessage:v13];

    library = [(MFMessagePersistence_iOS *)&self->super.super.isa library];
    v17 = [library dataDirectoryURLForMessage:v13];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:v17 error:0];

    v19 = [(MFMessagePersistence_iOS *)self _libraryMessageForMessageObjectID:dCopy preferNonOutgoingMessages:1];

    v13 = v19;
    if (!v19)
    {
LABEL_5:
      v20 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(MFMessagePersistence_iOS *)dCopy requestContentForMessageObjectID:v20 requestID:v21 options:v22 delegate:v23 completionHandler:v24, v25, v26];
      }

      v27 = [MEMORY[0x1E696ABC0] em_itemNotFoundErrorWithItemID:dCopy];
      v28 = 0;
      handlerCopy[2](handlerCopy, 0, v27);
      goto LABEL_17;
    }
  }

  v30 = EMLogCategoryMessageLoading();
  v59 = v13;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    requestedRepresentation = [optionsCopy requestedRepresentation];
    ef_publicDescription = [v13 ef_publicDescription];
    *buf = 138543874;
    v88 = requestedRepresentation;
    v89 = 2114;
    v90 = ef_publicDescription;
    v91 = 2114;
    v92 = dCopy;
    _os_log_impl(&dword_1B0389000, v30, OS_LOG_TYPE_DEFAULT, "requesting %{public}@ content for message %{public}@ (%{public}@)", buf, 0x20u);
  }

  v58 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:2];
  v33 = [optionsCopy networkUsage] != 0;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v35 = EFBundleIdentifierForXPCConnection();
  v36 = v35;
  if (v35)
  {
    v57 = v35;
  }

  else
  {
    v37 = MEMORY[0x1E696AEC0];
    currentConnection2 = [MEMORY[0x1E696B0B8] currentConnection];
    v57 = [v37 stringWithFormat:@"client_%d", objc_msgSend(currentConnection2, "processIdentifier")];
  }

  v56 = objc_alloc_init(MEMORY[0x1E699B578]);
  WeakRetained = objc_loadWeakRetained(&self->_library);
  persistence = [WeakRetained persistence];
  listUnsubscribeHandler = [persistence listUnsubscribeHandler];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__MFMessagePersistence_iOS_requestContentForMessageObjectID_requestID_options_delegate_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7AA70B0;
  v41 = v59;
  v83 = v41;
  v42 = v58;
  v84 = v42;
  selfCopy = self;
  v86 = handlerCopy;
  v43 = _Block_copy(aBlock);
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __106__MFMessagePersistence_iOS_requestContentForMessageObjectID_requestID_options_delegate_completionHandler___block_invoke_2;
  v69[3] = &unk_1E7AA7100;
  v81 = v33;
  v44 = optionsCopy;
  v70 = v44;
  v45 = v65;
  v71 = v45;
  v27 = v41;
  v72 = v27;
  selfCopy2 = self;
  iDCopy = iD;
  v61 = v56;
  v74 = v61;
  v67 = listUnsubscribeHandler;
  v75 = v67;
  v60 = v57;
  v76 = v60;
  v46 = delegateCopy;
  v77 = v46;
  v55 = v43;
  v79 = v55;
  v47 = v42;
  v78 = v47;
  v62 = _Block_copy(v69);
  v48 = [v44 copyWithBuilder:&__block_literal_global_69_0];
  if (self)
  {
    offlineContentLoadScheduler = self->_offlineContentLoadScheduler;
  }

  else
  {
    offlineContentLoadScheduler = 0;
  }

  v50 = offlineContentLoadScheduler;
  messageTransformer = [(MFMessagePersistence_iOS *)self messageTransformer];
  v52 = [MFMessageContentRequest onScheduler:v50 requestID:iD requestContentForObjectID:v45 messagePersistence:self legacyMessage:v27 messageTransformer:messageTransformer mailDropAttachmentGenerator:v61 listUnsubscribeHandler:v67 clientIdentifier:v60 options:v48 delegate:v46 completionHandler:v62];

  [v47 addChild:v52 withPendingUnitCount:1];
  v28 = v47;

LABEL_17:
  v53 = *MEMORY[0x1E69E9840];

  return v28;
}

- (void)generateSummaryForMessage:(id)message downloadIfNecessary:(BOOL)necessary
{
  v14 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v7 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [messageCopy messageID];
    objc_claimAutoreleasedReturnValue();
    [MFMessagePersistence_iOS generateSummaryForMessage:downloadIfNecessary:];
  }

  if (self)
  {
    requestSummaryQueue = self->_requestSummaryQueue;
  }

  else
  {
    requestSummaryQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__MFMessagePersistence_iOS_generateSummaryForMessage_downloadIfNecessary___block_invoke;
  block[3] = &unk_1E7AA7148;
  block[4] = self;
  v12 = messageCopy;
  necessaryCopy = necessary;
  v9 = messageCopy;
  dispatch_async(requestSummaryQueue, block);

  v10 = *MEMORY[0x1E69E9840];
}

- (id)requestSummaryForMessageObjectID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [(MFMessagePersistence_iOS *)self libraryMessageForMessageObjectID:dCopy];
  if (v5)
  {
    v6 = [(MFMessagePersistence_iOS *)self _requestSummaryForLibraryMessage:v5];
  }

  else
  {
    v7 = +[MFMessagePersistence_iOS log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = dCopy;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_INFO, "Cannot create summary loader. No Library Message for object ID: %@", &v10, 0xCu);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_requestSummaryForLibraryMessage:(id)message
{
  messageCopy = message;
  summaryLoaderProvider = [(MFMessagePersistence_iOS *)self summaryLoaderProvider];
  v6 = [summaryLoaderProvider messageSummaryLoaderForMessage:messageCopy];

  requestSummary = [v6 requestSummary];

  return v6;
}

- (id)libraryMessageForMessageObjectID:(id)d
{
  v3 = [(MFMessagePersistence_iOS *)self _libraryMessageForMessageObjectID:d preferNonOutgoingMessages:0];

  return v3;
}

- (id)_libraryMessageForMessageObjectID:(id)d preferNonOutgoingMessages:(BOOL)messages
{
  messagesCopy = messages;
  v14[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14[0] = dCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v8 = [(MFMessagePersistence_iOS *)self persistedMessagesForMessageObjectIDs:v7 requireProtectedData:0 temporarilyUnavailableMessageObjectIDs:0];

  if (!messagesCopy || ([v8 ef_firstObjectPassingTest:&__block_literal_global_77], (firstObject = objc_claimAutoreleasedReturnValue()) == 0))
  {
    firstObject = [v8 firstObject];
  }

  mailbox = [firstObject mailbox];
  store = [mailbox store];
  [firstObject setMessageStore:store];

  v12 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)cachedDatabaseIDsDictionaryForGlobalMessageIDs:(id)ds
{
  v19 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(EFLazyCache *)self->_obsoleteGlobalMessageIDToDatabaseIDMap cachedObjectForKey:v10, v14];
        if (v11)
        {
          [v5 setObject:v10 forKeyedSubscript:v11];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setContentProtectionForAttachmentFile:(id)file
{
  v11[4] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  if (_os_feature_enabled_impl())
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [fileCopy path];
  v11[0] = 0;
  v7 = [defaultManager mf_protectFileAtPath:path withClass:v4 error:v11];
  v8 = v11[0];

  if ((v7 & 1) == 0)
  {
    v9 = +[MFMessagePersistence_iOS log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [fileCopy path];
      objc_claimAutoreleasedReturnValue();
      [MFMessagePersistence_iOS setContentProtectionForAttachmentFile:];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (int64_t)globalIDForMessageWithDatabaseID:(int64_t)d mailboxScope:(id *)scope
{
  v37[1] = *MEMORY[0x1E69E9840];
  v7 = scope != 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__17;
  v31 = __Block_byref_object_dispose__17;
  v32 = 0;
  database = [(MFMessagePersistence_iOS *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMessagePersistence_iOS globalIDForMessageWithDatabaseID:mailboxScope:]"];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __74__MFMessagePersistence_iOS_globalIDForMessageWithDatabaseID_mailboxScope___block_invoke;
  v25[3] = &unk_1E7AA71B8;
  v26 = v7;
  v25[4] = self;
  v25[5] = &v33;
  v25[6] = &v27;
  v25[7] = d;
  [database __performReadWithCaller:v9 usingBlock:v25];

  if (scope)
  {
    if (v34[3])
    {
      if (v28[5])
      {
        v10 = objc_alloc(MEMORY[0x1E695DFF8]);
        v11 = [v10 initWithString:v28[5]];
        v12 = [objc_alloc(MEMORY[0x1E699AD20]) initWithURL:v11];
        v13 = MEMORY[0x1E699AD28];
        v37[0] = v12;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
        *scope = [v13 mailboxScopeForMailboxObjectIDs:v14 forExclusion:0];
      }

      else
      {
        *scope = [MEMORY[0x1E699AD28] noMailboxesScope];
        v15 = +[MFMessagePersistence_iOS log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(MFMessagePersistence_iOS *)d globalIDForMessageWithDatabaseID:v15 mailboxScope:v16, v17, v18, v19, v20, v21];
        }
      }
    }

    else
    {
      *scope = 0;
    }
  }

  v22 = v34[3];
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)mailboxesQueryExpressionForMailboxDatabaseIDs:(id)ds forExclusion:(BOOL)exclusion
{
  exclusionCopy = exclusion;
  dsCopy = ds;
  if (exclusionCopy)
  {
    v6 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"mailbox"];
    [v6 notIn:dsCopy];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"mailbox"];
    [v6 in:dsCopy];
  }
  v7 = ;

  return v7;
}

- (id)flagsForLegacyFlags:(int64_t)flags numberOfAttachments:(int64_t *)attachments
{
  if (flags >> 10 == 63)
  {
    v4 = 0;
  }

  else
  {
    v4 = flags >> 10;
  }

  *attachments = v4;
  return MFFlagsObjectForFlags(flags);
}

- (BOOL)persistMessageAuthenticationState:(int64_t)state forMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = MFMessagePersistence_iOS;
  v7 = [(MFMessagePersistence_iOS *)&v9 persistMessageAuthenticationState:state forMessage:messageCopy];
  if (v7)
  {
    [messageCopy setAuthenticationState:state];
  }

  return v7;
}

- (void)messageObjectIDForSearchIndexerIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  library = [(MFMessagePersistence_iOS *)&self->super.super.isa library];
  persistence = [library persistence];

  serverMessagesIndexer = [persistence serverMessagesIndexer];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__MFMessagePersistence_iOS_messageObjectIDForSearchIndexerIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_1E7AA7230;
  v11 = handlerCopy;
  v12[4] = self;
  v13 = v11;
  [serverMessagesIndexer lookUpIdentifier:identifierCopy completion:v12];
}

- (id)fullDataIfAvailableForMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFMessagePersistence_iOS.m" lineNumber:458 description:@"Unexpected message class"];
  }

  v10 = 0;
  v6 = [messageCopy messageDataIsComplete:&v10 downloadIfNecessary:0];
  v7 = v6;
  if ((v10 & 1) == 0)
  {

    v7 = 0;
  }

  return v7;
}

- (void)persistenceDidChangeGlobalMessageID:(int64_t)d orConversationID:(int64_t)iD message:(id)message generationWindow:(id)window
{
  messageCopy = message;
  obsoleteGlobalMessageIDToDatabaseIDMap = self->_obsoleteGlobalMessageIDToDatabaseIDMap;
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __106__MFMessagePersistence_iOS_persistenceDidChangeGlobalMessageID_orConversationID_message_generationWindow___block_invoke;
  v13[3] = &unk_1E7AA7258;
  v11 = messageCopy;
  v14 = v11;
  v12 = [(EFLazyCache *)obsoleteGlobalMessageIDToDatabaseIDMap objectForKey:v10 generator:v13];
}

- (id)collectStatistics
{
  v3 = objc_alloc_init(MFMessagePersistenceStatistics_iOS);
  v10.receiver = self;
  v10.super_class = MFMessagePersistence_iOS;
  [(MFMessagePersistence_iOS *)&v10 collectStatisticsWithStatistics:v3];
  database = [(MFMessagePersistence_iOS *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMessagePersistence_iOS collectStatistics]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__MFMessagePersistence_iOS_collectStatistics__block_invoke;
  v8[3] = &unk_1E7AA43C8;
  v6 = v3;
  v9 = v6;
  [database __performReadWithCaller:v5 usingBlock:v8];

  return v6;
}

- (BOOL)messageFilesAreClassC
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    LOBYTE(v3) = ![(MFMessagePersistence_iOS *)self messageFilesNeedProtectionClassMigration:0];
  }

  return v3;
}

- (BOOL)messageFilesNeedProtectionClassMigration:(BOOL *)migration
{
  database = [(MFMessagePersistence_iOS *)self database];
  v5 = [database valueForProperty:@"FileProtectionClass"];

  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    v7 = _os_feature_enabled_impl();
    v8 = 1;
    if (!v7)
    {
      v8 = 2;
    }

    if (unsignedIntegerValue == v8)
    {
      if (migration)
      {
LABEL_6:
        v9 = 0;
        v10 = 0;
LABEL_17:
        *migration = v9;
        goto LABEL_18;
      }

      goto LABEL_9;
    }

    v11 = _os_feature_enabled_impl();
    v12 = 20;
    if (v11)
    {
      v12 = 10;
    }

    if (unsignedIntegerValue == v12)
    {
      v9 = 1;
      v10 = 1;
      if (!migration)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (migration)
    {
      goto LABEL_6;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_18;
  }

  v10 = 1;
  if (migration)
  {
    v9 = 0;
    goto LABEL_17;
  }

LABEL_18:

  return v10;
}

- (void)setMigrationIsComplete:(BOOL)complete
{
  completeCopy = complete;
  v5 = _os_feature_enabled_impl();
  v6 = 1;
  if (!v5)
  {
    v6 = 2;
  }

  v7 = 20;
  if (v5)
  {
    v7 = 10;
  }

  if (completeCopy)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  database = [(MFMessagePersistence_iOS *)self database];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  [database setValue:v9 forProperty:@"FileProtectionClass"];
}

- (id)persistedMessageForSQLRow:(id)row connection:(id)connection iterationContext:(id)context
{
  rowCopy = row;
  connectionCopy = connection;
  contextCopy = context;
  library = [(MFMessagePersistence_iOS *)&self->super.super.isa library];
  if (self)
  {
    if (qword_1EB6E7F18 != -1)
    {
      dispatch_once(&qword_1EB6E7F18, &__block_literal_global_50);
    }

    self = _MergedGlobals;
  }

  v12 = [library _messageForRow:rowCopy options:self timestamp:mach_absolute_time() connection:connectionCopy isProtectedDataAvailable:objc_msgSend(connectionCopy recipientsCache:{"protectedDatabaseAttached"), contextCopy}];

  mailbox = [v12 mailbox];
  store = [mailbox store];
  [v12 setMessageStore:store];

  return v12;
}

- (void)requestContentForMessageObjectID:(uint64_t)a3 requestID:(uint64_t)a4 options:(uint64_t)a5 delegate:(uint64_t)a6 completionHandler:(uint64_t)a7 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, a2, a3, "requestContent: no library message for objectID %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)generateSummaryForMessage:downloadIfNecessary:.cold.1()
{
  OUTLINED_FUNCTION_1_7();
  *v2 = 138412546;
  *(v2 + 4) = v3;
  *(v2 + 12) = 1024;
  *(v2 + 14) = v1 & 1;
  _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Requesting summary immediately for: %@ (download? %{BOOL}d)", v4, 0x12u);
}

- (void)setContentProtectionForAttachmentFile:.cold.1()
{
  OUTLINED_FUNCTION_1_7();
  *v1 = 138412546;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v3;
  _os_log_error_impl(&dword_1B0389000, v5, OS_LOG_TYPE_ERROR, "Error setting the protection class on %@: %@", v4, 0x16u);
}

- (void)globalIDForMessageWithDatabaseID:(uint64_t)a3 mailboxScope:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, a2, a3, "Could not find mailbox for message with database ID %lld", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

@end