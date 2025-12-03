@interface MFLibraryIMAPStore
+ (id)copyRemoteIDForTemporaryUid:(unsigned int)uid;
+ (id)log;
- (BOOL)_fetchDataForMimePart:(id)part range:(_NSRange)range isComplete:(BOOL *)complete consumer:(id)consumer;
- (BOOL)canCompact;
- (BOOL)canFetchMessageIDs;
- (BOOL)downloadMimePartNumber:(id)number message:(id)message withProgressBlock:(id)block;
- (id)_dataForMessage:(int)message readHeadersOnly:;
- (id)_fetchFullBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download;
- (id)_serverMessageIndexer;
- (id)flagsForRemoteIDs:(id)ds;
- (id)mailboxPersistence;
- (id)messageForRemoteID:(id)d;
- (id)messageIdRollCall:(id)call;
- (id)messagesWithRemoteIDs:(id)ds;
- (id)replayAction:(id)action;
- (int64_t)fetchMessagesWithMessageIDs:(id)ds andSetFlags:(unint64_t)flags;
- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options;
- (uint64_t)close;
- (uint64_t)mailboxRowID;
- (unint64_t)growFetchWindow;
- (unsigned)uidNext;
- (unsigned)uidValidity;
- (void)_handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message;
- (void)close;
- (void)doCompact;
- (void)fetchBodyDataForMessage:(id)message completionHandler:(id)handler;
- (void)reselectMailbox;
- (void)setLibrary:(id)library;
@end

@implementation MFLibraryIMAPStore

+ (id)log
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__MFLibraryIMAPStore_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (log_onceToken_2 != -1)
  {
    dispatch_once(&log_onceToken_2, block);
  }

  v1 = log_log_2;

  return v1;
}

void __25__MFLibraryIMAPStore_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_2;
  log_log_2 = v1;
}

- (id)mailboxPersistence
{
  if (self)
  {
    library = [self library];
    persistence = [library persistence];
    mailboxPersistence = [persistence mailboxPersistence];
  }

  else
  {
    mailboxPersistence = 0;
  }

  return mailboxPersistence;
}

- (uint64_t)mailboxRowID
{
  if (!self)
  {
    return 0;
  }

  mailbox = [self mailbox];
  mailboxRowID = [mailbox mailboxRowID];

  return mailboxRowID;
}

- (void)close
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5 = +[MFInvocationQueue sharedInvocationQueue];
    v4 = [(NSInvocation *)MFMonitoredInvocation mf_invocationWithSelector:a2 target:self];
    [v5 addInvocation:v4];
  }

  else
  {
    [(MFLibraryIMAPStore *)self close];
  }
}

- (void)setLibrary:(id)library
{
  libraryCopy = library;
  library = [(MFLibraryStore *)self library];

  if (library != libraryCopy)
  {
    v15.receiver = self;
    v15.super_class = MFLibraryIMAPStore;
    [(MFLibraryStore *)&v15 setLibrary:libraryCopy];
    if (self)
    {
      taskManager = self->_taskManager;
    }

    else
    {
      taskManager = 0;
    }

    [(MFIMAPMailboxTaskManager *)taskManager setLibrary:libraryCopy];
    if (libraryCopy)
    {
      objc_initWeak(&location, self);
      v8 = MEMORY[0x1E699B7C8];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __33__MFLibraryIMAPStore_setLibrary___block_invoke;
      v11[3] = &unk_1E7AA2CD8;
      objc_copyWeak(v13, &location);
      v13[1] = a2;
      v12 = libraryCopy;
      v9 = [v8 lazyFutureWithBlock:v11];
      serverMessagePersistenceFuture = self->_serverMessagePersistenceFuture;
      self->_serverMessagePersistenceFuture = v9;

      objc_destroyWeak(v13);
      objc_destroyWeak(&location);
    }
  }
}

id __33__MFLibraryIMAPStore_setLibrary___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2)
  {
    *a2 = 0;
  }

  v6 = [WeakRetained mailbox];
  v7 = [v6 URL];

  if (!v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Store %@ has no mailboxURL", v5];
    qword_1EB6E7CF0 = [v8 UTF8String];
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 48) object:v5 file:@"LibraryIMAPStore.m" lineNumber:100 description:@"We have a library IMAP store without a mailboxURL"];
  }

  v10 = [*(a1 + 32) persistence];
  v11 = [v10 serverMessagePersistenceFactory];
  v12 = [v5 mailbox];
  v13 = [v12 URL];
  v14 = [v11 serverMessagePersistenceForMailboxURL:v13];

  return v14;
}

- (BOOL)canCompact
{
  v6.receiver = self;
  v6.super_class = MFLibraryIMAPStore;
  if ([(MFLibraryStore *)&v6 canCompact]&& self->super._state == 3)
  {
    account = [(MFLibraryStore *)self account];
    v4 = [account isOffline] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)_serverMessageIndexer
{
  if (self)
  {
    library = [self library];
    persistence = [library persistence];
    serverMessagesIndexer = [persistence serverMessagesIndexer];
  }

  else
  {
    serverMessagesIndexer = 0;
  }

  return serverMessagesIndexer;
}

void __90__MFLibraryIMAPStore_storeSearchResultMatchingQuery_criterion_limit_offset_useLocalIndex___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[MFLibraryIMAPStore log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = [v3 count];
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "Received %lu results from SearchIndexer.", &v9, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [v3 objectForKeyedSubscript:*(a1 + 40)];
  v7 = v6;
  if (!v6)
  {
    v7 = objc_opt_new();
  }

  [v5 finishWithResult:v7];
  if (!v6)
  {
  }

  v8 = *MEMORY[0x1E69E9840];
}

id __90__MFLibraryIMAPStore_storeSearchResultMatchingQuery_criterion_limit_offset_useLocalIndex___block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 uids];
  v6 = [*(a1 + 32) mailbox];
  [v4 addRemoteIDs:v5 mailbox:v6];

  return v4;
}

id __90__MFLibraryIMAPStore_storeSearchResultMatchingQuery_criterion_limit_offset_useLocalIndex___block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(MFLibraryIMAPStore *)*(a1 + 32) _serverMessageIndexer];
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = *(a1 + 40);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __90__MFLibraryIMAPStore_storeSearchResultMatchingQuery_criterion_limit_offset_useLocalIndex___block_invoke_2;
    v13 = &unk_1E7AA2D50;
    v14 = v3;
    v7 = v5;
    v15 = v7;
    [v4 excludeIndexedUIDsInMailbox:v6 fromUIDs:v14 completion:&v10];
    v8 = [v7 future];
  }

  else
  {
    v8 = [MEMORY[0x1E699B7C8] futureWithResult:v3];
  }

  return v8;
}

void __90__MFLibraryIMAPStore_storeSearchResultMatchingQuery_criterion_limit_offset_useLocalIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[MFLibraryIMAPStore log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count") - objc_msgSend(v3, "count")}];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "#search-manager: Filtered out %@ results using SearchIndexer", &v7, 0xCu);
  }

  [*(a1 + 40) finishWithResult:v3];
  v6 = *MEMORY[0x1E69E9840];
}

id __90__MFLibraryIMAPStore_storeSearchResultMatchingQuery_criterion_limit_offset_useLocalIndex___block_invoke_45(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 uids];
  v6 = [*(a1 + 32) mailbox];
  [v4 addRemoteIDs:v5 mailbox:v6];

  return v4;
}

- (id)_dataForMessage:(int)message readHeadersOnly:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (([v5 hasTemporaryUid] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
LABEL_9:
      self = 0;
      goto LABEL_10;
    }

    messageData = [v6 messageData];
    self = messageData;
    if (message && messageData)
    {
      mf_rangeOfRFC822HeaderData = [messageData mf_rangeOfRFC822HeaderData];
      if (mf_rangeOfRFC822HeaderData != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = [self mf_subdataWithRange:{mf_rangeOfRFC822HeaderData, v8}];

        self = v10;
        goto LABEL_10;
      }

      v11 = +[MFLibraryIMAPStore log];
      [MFLibraryIMAPStore _dataForMessage:v11 readHeadersOnly:self];
      goto LABEL_9;
    }
  }

LABEL_10:

  return self;
}

- (BOOL)downloadMimePartNumber:(id)number message:(id)message withProgressBlock:(id)block
{
  numberCopy = number;
  messageCopy = message;
  blockCopy = block;
  v11 = messageCopy;
  if ([v11 conformsToProtocol:&unk_1F2786168])
  {
    if (self)
    {
      taskManager = self->_taskManager;
    }

    else
    {
      taskManager = 0;
    }

    v13 = [(MFIMAPMailboxTaskManager *)taskManager downloadMimePartNumber:numberCopy message:v11 withProgressBlock:blockCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __64__MFLibraryIMAPStore_fetchBodyDataForMessage_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = [v5 mf_rangeOfRFC822HeaderData];
    v10 = v8 + v9;
    if (v10 <= [v5 length])
    {
      v11 = [v5 mf_subdataWithRange:{v10, objc_msgSend(v5, "length") - v10}];
      if (v11)
      {
        v12 = +[MFLibraryIMAPStore log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v11 length];
          v14 = [v5 length];
          v15 = [*(a1 + 32) ef_publicDescription];
          v16 = [*(a1 + 32) messageSize];
          v20 = 134218754;
          v21 = v13;
          v22 = 2048;
          v23 = v14;
          v24 = 2114;
          v25 = v15;
          v26 = 2048;
          v27 = v16;
          _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "Caching body data of length %lu from total data of length %lu for message %{public}@ (messageSize = %lu)", &v20, 0x2Au);
        }

        v17 = [objc_alloc(MEMORY[0x1E69AD6E8]) initWithData:v11 partial:0 incomplete:0];
        v18 = [*(a1 + 40) _cachedBodyDataContainerForMessage:*(a1 + 32) valueIfNotPresent:v17];
        (*(*(a1 + 48) + 16))();

        v7 = 0;
      }

      else
      {
        v7 = [[MFError alloc] initWithDomain:@"MFMessageErrorDomain" code:1029 userInfo:0];
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      v7 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message
{
  messagesCopy = messages;
  flagsCopy = flags;
  messageCopy = message;
  v12.receiver = self;
  v12.super_class = MFLibraryIMAPStore;
  [(MFLibraryStore *)&v12 _handleFlagsChangedForMessages:messagesCopy flags:flagsCopy oldFlagsByMessage:messageCopy];
  if (self)
  {
    taskManager = self->_taskManager;
  }

  else
  {
    taskManager = 0;
  }

  [(MFIMAPMailboxTaskManager *)taskManager handleFlagsChangedForMessages:messagesCopy flags:flagsCopy oldFlagsByMessage:messageCopy];
}

- (id)messageForRemoteID:(id)d
{
  dCopy = d;
  library = [(MFLibraryStore *)self library];
  mailbox = [(MFLibraryStore *)self mailbox];
  uRLString = [mailbox URLString];
  v8 = [library messageWithRemoteID:dCopy inRemoteMailbox:uRLString];

  [v8 setMessageStore:self];

  return v8;
}

- (id)messagesWithRemoteIDs:(id)ds
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:ds];
  mailbox = [(MFLibraryStore *)self mailbox];
  v6 = [(MFLibraryStore *)self copyMessagesWithRemoteIDs:v4 options:7346239 inMailbox:mailbox];

  return v6;
}

- (id)flagsForRemoteIDs:(id)ds
{
  dsCopy = ds;
  library = [(MFLibraryStore *)self library];
  mailbox = [(MFLibraryStore *)self mailbox];
  uRLString = [mailbox URLString];
  v8 = [library flagsForRemoteIDs:dsCopy inRemoteMailbox:uRLString];

  return v8;
}

+ (id)copyRemoteIDForTemporaryUid:(unsigned int)uid
{
  if (copyRemoteIDForTemporaryUid__sRemoteIDHandlerPred != -1)
  {
    +[MFLibraryIMAPStore copyRemoteIDForTemporaryUid:];
  }

  v4 = __50__MFLibraryIMAPStore_copyRemoteIDForTemporaryUid___block_invoke_2(copyRemoteIDForTemporaryUid__sRemoteIDHandler, uid);
  v5 = [v4 copy];

  return v5;
}

void __50__MFLibraryIMAPStore_copyRemoteIDForTemporaryUid___block_invoke()
{
  v0 = copyRemoteIDForTemporaryUid__sRemoteIDHandler;
  copyRemoteIDForTemporaryUid__sRemoteIDHandler = &__block_literal_global_67;
}

id __50__MFLibraryIMAPStore_copyRemoteIDForTemporaryUid___block_invoke_2(uint64_t a1, unsigned int a2)
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"temp-%lu", a2];

  return v2;
}

- (unsigned)uidNext
{
  selfCopy = self;
  mailboxPersistence = [(MFLibraryIMAPStore *)self mailboxPersistence];
  LODWORD(selfCopy) = [mailboxPersistence uidNextForMailbox:-[MFLibraryIMAPStore mailboxRowID](selfCopy)];

  return selfCopy;
}

- (unsigned)uidValidity
{
  selfCopy = self;
  mailboxPersistence = [(MFLibraryIMAPStore *)self mailboxPersistence];
  LODWORD(selfCopy) = [mailboxPersistence uidValidityForMailbox:-[MFLibraryIMAPStore mailboxRowID](selfCopy)];

  return selfCopy;
}

- (BOOL)canFetchMessageIDs
{
  if (self)
  {
    self = self->_taskManager;
  }

  return [(MFLibraryIMAPStore *)self canFetchMessageIDs];
}

- (unint64_t)growFetchWindow
{
  selfCopy = self;
  if (self)
  {
    self = self->_taskManager;
  }

  [(MFLibraryIMAPStore *)self growFetchWindow];
  v4.receiver = selfCopy;
  v4.super_class = MFLibraryIMAPStore;
  return [(MFLibraryStore *)&v4 growFetchWindow];
}

- (int64_t)fetchMessagesWithMessageIDs:(id)ds andSetFlags:(unint64_t)flags
{
  dsCopy = ds;
  if (self)
  {
    taskManager = self->_taskManager;
  }

  else
  {
    taskManager = 0;
  }

  v8 = [(MFIMAPMailboxTaskManager *)taskManager fetchMessagesWithMessageIDs:dsCopy andSetFlags:flags];

  return v8;
}

- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options
{
  dCopy = d;
  if (self)
  {
    taskManager = self->_taskManager;
  }

  else
  {
    taskManager = 0;
  }

  v10 = [(MFIMAPMailboxTaskManager *)taskManager fetchNumMessages:messages preservingUID:dCopy options:options];

  return v10;
}

- (id)messageIdRollCall:(id)call
{
  callCopy = call;
  if (self)
  {
    taskManager = self->_taskManager;
  }

  else
  {
    taskManager = 0;
  }

  v6 = [(MFIMAPMailboxTaskManager *)taskManager messageIdRollCall:callCopy];

  return v6;
}

- (void)doCompact
{
  if (self)
  {
    self = self->_taskManager;
  }

  [(MFLibraryIMAPStore *)self compact];
}

- (BOOL)_fetchDataForMimePart:(id)part range:(_NSRange)range isComplete:(BOOL *)complete consumer:(id)consumer
{
  length = range.length;
  location = range.location;
  partCopy = part;
  consumerCopy = consumer;
  v17 = 0;
  if (self)
  {
    taskManager = self->_taskManager;
  }

  else
  {
    taskManager = 0;
  }

  consumerCopy = [(MFIMAPMailboxTaskManager *)taskManager fetchDataForMimePart:partCopy range:location isComplete:length consumer:&v17, consumerCopy];
  v15 = consumerCopy ^ 1;
  if (!complete)
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    *complete = v17;
  }

  return consumerCopy;
}

- (void)fetchBodyDataForMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  if (self)
  {
    taskManager = self->_taskManager;
  }

  else
  {
    taskManager = 0;
  }

  v9 = taskManager;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__MFLibraryIMAPStore_fetchBodyDataForMessage_completionHandler___block_invoke;
  v12[3] = &unk_1E7AA2DA0;
  selfCopy = self;
  v15 = handlerCopy;
  v13 = messageCopy;
  v10 = messageCopy;
  v11 = handlerCopy;
  [(MFIMAPMailboxTaskManager *)v9 fetchDataForMessage:v10 completionHandler:v12];
}

- (id)_fetchFullBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download
{
  v34 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (self)
  {
    taskManager = self->_taskManager;
  }

  else
  {
    taskManager = 0;
  }

  v11 = taskManager;
  v12 = [(MFIMAPMailboxTaskManager *)v11 fetchDataForMessage:messageCopy didDownload:download];

  if (v12 && (v13 = [v12 mf_rangeOfRFC822HeaderData], v15 = v14, v16 = v13 + v14, v13 + v14 <= objc_msgSend(v12, "length")))
  {
    v17 = [v12 mf_subdataWithRange:{v13 + v15, objc_msgSend(v12, "length") - v16}];
    if (v17)
    {
      v18 = +[MFLibraryIMAPStore log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v17 length];
        v24 = [v12 length];
        ef_publicDescription = [messageCopy ef_publicDescription];
        *buf = 134218754;
        v27 = v25;
        v28 = 2048;
        v29 = v24;
        v30 = 2114;
        v31 = ef_publicDescription;
        v32 = 2048;
        messageSize = [messageCopy messageSize];
        _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "Caching body data of length %lu from total data of length %lu for message %{public}@ (messageSize = %lu)", buf, 0x2Au);
      }

      v20 = [objc_alloc(MEMORY[0x1E69AD6E8]) initWithData:v17 partial:0 incomplete:0];
      v21 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:v20];
      if (download)
      {
        *download = 1;
      }
    }

    if (available)
    {
      *available = [v12 mf_subdataWithRange:{v13, v15}];
    }
  }

  else
  {
    v17 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)replayAction:(id)action
{
  actionCopy = action;
  if (self)
  {
    taskManager = self->_taskManager;
  }

  else
  {
    taskManager = 0;
  }

  v6 = [(MFIMAPMailboxTaskManager *)taskManager replayAction:actionCopy];

  return v6;
}

- (void)reselectMailbox
{
  if (self)
  {
    self = self->_taskManager;
  }

  [(MFLibraryIMAPStore *)self reselectMailbox];
}

- (uint64_t)close
{
  if (self)
  {
    self = self[16];
  }

  return [self close];
}

- (void)storeSearchResultMatchingQuery:(os_log_t)log criterion:(void *)a4 limit:offset:useLocalIndex:.cold.1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "No account identifier for mailbox: %{public}@", buf, 0xCu);
}

- (void)storeSearchResultMatchingQuery:(os_log_t)log criterion:(void *)a4 limit:offset:useLocalIndex:.cold.2(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "No mailbox URL for mailbox: %{public}@", buf, 0xCu);
}

- (void)_dataForMessage:(NSObject *)a1 readHeadersOnly:(void *)a2 .cold.1(NSObject *a1, void *a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B0389000, a1, OS_LOG_TYPE_INFO, "[MFLibraryIMAPStore _dataForMessage:] bad message data", v4, 2u);
  }
}

@end