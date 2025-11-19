@interface MFLibraryIMAPStore
+ (id)copyRemoteIDForTemporaryUid:(unsigned int)a3;
+ (id)log;
- (BOOL)_fetchDataForMimePart:(id)a3 range:(_NSRange)a4 isComplete:(BOOL *)a5 consumer:(id)a6;
- (BOOL)canCompact;
- (BOOL)canFetchMessageIDs;
- (BOOL)downloadMimePartNumber:(id)a3 message:(id)a4 withProgressBlock:(id)a5;
- (id)_dataForMessage:(int)a3 readHeadersOnly:;
- (id)_fetchFullBodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 downloadIfNecessary:(BOOL)a5 didDownload:(BOOL *)a6;
- (id)_serverMessageIndexer;
- (id)flagsForRemoteIDs:(id)a3;
- (id)mailboxPersistence;
- (id)messageForRemoteID:(id)a3;
- (id)messageIdRollCall:(id)a3;
- (id)messagesWithRemoteIDs:(id)a3;
- (id)replayAction:(id)a3;
- (int64_t)fetchMessagesWithMessageIDs:(id)a3 andSetFlags:(unint64_t)a4;
- (int64_t)fetchNumMessages:(unint64_t)a3 preservingUID:(id)a4 options:(unint64_t)a5;
- (uint64_t)close;
- (uint64_t)mailboxRowID;
- (unint64_t)growFetchWindow;
- (unsigned)uidNext;
- (unsigned)uidValidity;
- (void)_handleFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5;
- (void)close;
- (void)doCompact;
- (void)fetchBodyDataForMessage:(id)a3 completionHandler:(id)a4;
- (void)reselectMailbox;
- (void)setLibrary:(id)a3;
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
  if (a1)
  {
    v1 = [a1 library];
    v2 = [v1 persistence];
    v3 = [v2 mailboxPersistence];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)mailboxRowID
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 mailbox];
  v2 = [v1 mailboxRowID];

  return v2;
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

- (void)setLibrary:(id)a3
{
  v5 = a3;
  v6 = [(MFLibraryStore *)self library];

  if (v6 != v5)
  {
    v15.receiver = self;
    v15.super_class = MFLibraryIMAPStore;
    [(MFLibraryStore *)&v15 setLibrary:v5];
    if (self)
    {
      taskManager = self->_taskManager;
    }

    else
    {
      taskManager = 0;
    }

    [(MFIMAPMailboxTaskManager *)taskManager setLibrary:v5];
    if (v5)
    {
      objc_initWeak(&location, self);
      v8 = MEMORY[0x1E699B7C8];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __33__MFLibraryIMAPStore_setLibrary___block_invoke;
      v11[3] = &unk_1E7AA2CD8;
      objc_copyWeak(v13, &location);
      v13[1] = a2;
      v12 = v5;
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
    v3 = [(MFLibraryStore *)self account];
    v4 = [v3 isOffline] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)_serverMessageIndexer
{
  if (a1)
  {
    v1 = [a1 library];
    v2 = [v1 persistence];
    v3 = [v2 serverMessagesIndexer];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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

- (id)_dataForMessage:(int)a3 readHeadersOnly:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (([v5 hasTemporaryUid] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
LABEL_9:
      a1 = 0;
      goto LABEL_10;
    }

    v7 = [v6 messageData];
    a1 = v7;
    if (a3 && v7)
    {
      v9 = [v7 mf_rangeOfRFC822HeaderData];
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = [a1 mf_subdataWithRange:{v9, v8}];

        a1 = v10;
        goto LABEL_10;
      }

      v11 = +[MFLibraryIMAPStore log];
      [MFLibraryIMAPStore _dataForMessage:v11 readHeadersOnly:a1];
      goto LABEL_9;
    }
  }

LABEL_10:

  return a1;
}

- (BOOL)downloadMimePartNumber:(id)a3 message:(id)a4 withProgressBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
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

    v13 = [(MFIMAPMailboxTaskManager *)taskManager downloadMimePartNumber:v8 message:v11 withProgressBlock:v10];
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

- (void)_handleFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12.receiver = self;
  v12.super_class = MFLibraryIMAPStore;
  [(MFLibraryStore *)&v12 _handleFlagsChangedForMessages:v8 flags:v9 oldFlagsByMessage:v10];
  if (self)
  {
    taskManager = self->_taskManager;
  }

  else
  {
    taskManager = 0;
  }

  [(MFIMAPMailboxTaskManager *)taskManager handleFlagsChangedForMessages:v8 flags:v9 oldFlagsByMessage:v10];
}

- (id)messageForRemoteID:(id)a3
{
  v4 = a3;
  v5 = [(MFLibraryStore *)self library];
  v6 = [(MFLibraryStore *)self mailbox];
  v7 = [v6 URLString];
  v8 = [v5 messageWithRemoteID:v4 inRemoteMailbox:v7];

  [v8 setMessageStore:self];

  return v8;
}

- (id)messagesWithRemoteIDs:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  v5 = [(MFLibraryStore *)self mailbox];
  v6 = [(MFLibraryStore *)self copyMessagesWithRemoteIDs:v4 options:7346239 inMailbox:v5];

  return v6;
}

- (id)flagsForRemoteIDs:(id)a3
{
  v4 = a3;
  v5 = [(MFLibraryStore *)self library];
  v6 = [(MFLibraryStore *)self mailbox];
  v7 = [v6 URLString];
  v8 = [v5 flagsForRemoteIDs:v4 inRemoteMailbox:v7];

  return v8;
}

+ (id)copyRemoteIDForTemporaryUid:(unsigned int)a3
{
  if (copyRemoteIDForTemporaryUid__sRemoteIDHandlerPred != -1)
  {
    +[MFLibraryIMAPStore copyRemoteIDForTemporaryUid:];
  }

  v4 = __50__MFLibraryIMAPStore_copyRemoteIDForTemporaryUid___block_invoke_2(copyRemoteIDForTemporaryUid__sRemoteIDHandler, a3);
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
  v2 = self;
  v3 = [(MFLibraryIMAPStore *)self mailboxPersistence];
  LODWORD(v2) = [v3 uidNextForMailbox:-[MFLibraryIMAPStore mailboxRowID](v2)];

  return v2;
}

- (unsigned)uidValidity
{
  v2 = self;
  v3 = [(MFLibraryIMAPStore *)self mailboxPersistence];
  LODWORD(v2) = [v3 uidValidityForMailbox:-[MFLibraryIMAPStore mailboxRowID](v2)];

  return v2;
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
  v2 = self;
  if (self)
  {
    self = self->_taskManager;
  }

  [(MFLibraryIMAPStore *)self growFetchWindow];
  v4.receiver = v2;
  v4.super_class = MFLibraryIMAPStore;
  return [(MFLibraryStore *)&v4 growFetchWindow];
}

- (int64_t)fetchMessagesWithMessageIDs:(id)a3 andSetFlags:(unint64_t)a4
{
  v6 = a3;
  if (self)
  {
    taskManager = self->_taskManager;
  }

  else
  {
    taskManager = 0;
  }

  v8 = [(MFIMAPMailboxTaskManager *)taskManager fetchMessagesWithMessageIDs:v6 andSetFlags:a4];

  return v8;
}

- (int64_t)fetchNumMessages:(unint64_t)a3 preservingUID:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  if (self)
  {
    taskManager = self->_taskManager;
  }

  else
  {
    taskManager = 0;
  }

  v10 = [(MFIMAPMailboxTaskManager *)taskManager fetchNumMessages:a3 preservingUID:v8 options:a5];

  return v10;
}

- (id)messageIdRollCall:(id)a3
{
  v4 = a3;
  if (self)
  {
    taskManager = self->_taskManager;
  }

  else
  {
    taskManager = 0;
  }

  v6 = [(MFIMAPMailboxTaskManager *)taskManager messageIdRollCall:v4];

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

- (BOOL)_fetchDataForMimePart:(id)a3 range:(_NSRange)a4 isComplete:(BOOL *)a5 consumer:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  v12 = a6;
  v17 = 0;
  if (self)
  {
    taskManager = self->_taskManager;
  }

  else
  {
    taskManager = 0;
  }

  v14 = [(MFIMAPMailboxTaskManager *)taskManager fetchDataForMimePart:v11 range:location isComplete:length consumer:&v17, v12];
  v15 = v14 ^ 1;
  if (!a5)
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    *a5 = v17;
  }

  return v14;
}

- (void)fetchBodyDataForMessage:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v14 = self;
  v15 = v7;
  v13 = v6;
  v10 = v6;
  v11 = v7;
  [(MFIMAPMailboxTaskManager *)v9 fetchDataForMessage:v10 completionHandler:v12];
}

- (id)_fetchFullBodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 downloadIfNecessary:(BOOL)a5 didDownload:(BOOL *)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (self)
  {
    taskManager = self->_taskManager;
  }

  else
  {
    taskManager = 0;
  }

  v11 = taskManager;
  v12 = [(MFIMAPMailboxTaskManager *)v11 fetchDataForMessage:v9 didDownload:a6];

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
        v19 = [v9 ef_publicDescription];
        *buf = 134218754;
        v27 = v25;
        v28 = 2048;
        v29 = v24;
        v30 = 2114;
        v31 = v19;
        v32 = 2048;
        v33 = [v9 messageSize];
        _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "Caching body data of length %lu from total data of length %lu for message %{public}@ (messageSize = %lu)", buf, 0x2Au);
      }

      v20 = [objc_alloc(MEMORY[0x1E69AD6E8]) initWithData:v17 partial:0 incomplete:0];
      v21 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:v9 valueIfNotPresent:v20];
      if (a6)
      {
        *a6 = 1;
      }
    }

    if (a4)
    {
      *a4 = [v12 mf_subdataWithRange:{v13, v15}];
    }
  }

  else
  {
    v17 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)replayAction:(id)a3
{
  v4 = a3;
  if (self)
  {
    taskManager = self->_taskManager;
  }

  else
  {
    taskManager = 0;
  }

  v6 = [(MFIMAPMailboxTaskManager *)taskManager replayAction:v4];

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
  if (a1)
  {
    a1 = a1[16];
  }

  return [a1 close];
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