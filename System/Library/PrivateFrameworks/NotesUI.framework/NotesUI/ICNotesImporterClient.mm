@interface ICNotesImporterClient
- (ICNotesImporterClient)init;
- (void)archiveEvernoteNotesFromFileURL:(id)l completionBlock:(id)block;
- (void)cleanupArchiveId:(id)id completionBlock:(id)block;
- (void)countEvernoteNotesFromFileURL:(id)l completionBlock:(id)block;
- (void)parseHTMLStringFromEvernoteContentString:(id)string completionBlock:(id)block;
- (void)parseTitleFromHTMLString:(id)string completionBlock:(id)block;
- (void)resumeConnectionIfNeeded;
- (void)suspendConnectionIfNeeded;
- (void)unarchiveEvernoteNoteFromArchiveId:(id)id noteArchiveId:(id)archiveId completionBlock:(id)block;
- (void)unarchiveEvernoteResourceFromArchiveId:(id)id resourceArchiveId:(id)archiveId completionBlock:(id)block;
@end

@implementation ICNotesImporterClient

- (ICNotesImporterClient)init
{
  v7.receiver = self;
  v7.super_class = ICNotesImporterClient;
  v2 = [(ICNotesImporterClient *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.notes.NotesImporter", v3);
    requestCountQueue = v2->_requestCountQueue;
    v2->_requestCountQueue = v4;

    v2->_requestCount = 0;
  }

  return v2;
}

- (void)parseHTMLStringFromEvernoteContentString:(id)string completionBlock:(id)block
{
  blockCopy = block;
  stringCopy = string;
  [(ICNotesImporterClient *)self resumeConnectionIfNeeded];
  connectionToService = self->_connectionToService;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__ICNotesImporterClient_parseHTMLStringFromEvernoteContentString_completionBlock___block_invoke;
  v14[3] = &unk_1E846B048;
  v14[4] = self;
  v9 = blockCopy;
  v15 = v9;
  v10 = [(NSXPCConnection *)connectionToService remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__ICNotesImporterClient_parseHTMLStringFromEvernoteContentString_completionBlock___block_invoke_8;
  v12[3] = &unk_1E846B070;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 parseHTMLStringFromEvernoteContentString:stringCopy completionBlock:v12];
}

void __82__ICNotesImporterClient_parseHTMLStringFromEvernoteContentString_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Import");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __82__ICNotesImporterClient_parseHTMLStringFromEvernoteContentString_completionBlock___block_invoke_cold_1();
  }

  [*(a1 + 32) suspendConnectionIfNeeded];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void __82__ICNotesImporterClient_parseHTMLStringFromEvernoteContentString_completionBlock___block_invoke_8(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) suspendConnectionIfNeeded];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)countEvernoteNotesFromFileURL:(id)l completionBlock:(id)block
{
  blockCopy = block;
  lCopy = l;
  [(ICNotesImporterClient *)self resumeConnectionIfNeeded];
  remoteObjectProxy = [(NSXPCConnection *)self->_connectionToService remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__ICNotesImporterClient_countEvernoteNotesFromFileURL_completionBlock___block_invoke;
  v14[3] = &unk_1E846B048;
  v14[4] = self;
  v9 = blockCopy;
  v15 = v9;
  v10 = [remoteObjectProxy remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__ICNotesImporterClient_countEvernoteNotesFromFileURL_completionBlock___block_invoke_10;
  v12[3] = &unk_1E846B098;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 countEvernoteNotesFromFileURL:lCopy completionBlock:v12];
}

void __71__ICNotesImporterClient_countEvernoteNotesFromFileURL_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Import");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __82__ICNotesImporterClient_parseHTMLStringFromEvernoteContentString_completionBlock___block_invoke_cold_1();
  }

  [*(a1 + 32) suspendConnectionIfNeeded];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

uint64_t __71__ICNotesImporterClient_countEvernoteNotesFromFileURL_completionBlock___block_invoke_10(uint64_t a1)
{
  [*(a1 + 32) suspendConnectionIfNeeded];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)parseTitleFromHTMLString:(id)string completionBlock:(id)block
{
  blockCopy = block;
  stringCopy = string;
  [(ICNotesImporterClient *)self resumeConnectionIfNeeded];
  remoteObjectProxy = [(NSXPCConnection *)self->_connectionToService remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__ICNotesImporterClient_parseTitleFromHTMLString_completionBlock___block_invoke;
  v14[3] = &unk_1E846B048;
  v14[4] = self;
  v9 = blockCopy;
  v15 = v9;
  v10 = [remoteObjectProxy remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__ICNotesImporterClient_parseTitleFromHTMLString_completionBlock___block_invoke_12;
  v12[3] = &unk_1E846B070;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 parseTitleFromHTMLString:stringCopy completionBlock:v12];
}

void __66__ICNotesImporterClient_parseTitleFromHTMLString_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Import");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __82__ICNotesImporterClient_parseHTMLStringFromEvernoteContentString_completionBlock___block_invoke_cold_1();
  }

  [*(a1 + 32) suspendConnectionIfNeeded];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void __66__ICNotesImporterClient_parseTitleFromHTMLString_completionBlock___block_invoke_12(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) suspendConnectionIfNeeded];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)archiveEvernoteNotesFromFileURL:(id)l completionBlock:(id)block
{
  blockCopy = block;
  lCopy = l;
  [(ICNotesImporterClient *)self resumeConnectionIfNeeded];
  remoteObjectProxy = [(NSXPCConnection *)self->_connectionToService remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__ICNotesImporterClient_archiveEvernoteNotesFromFileURL_completionBlock___block_invoke;
  v14[3] = &unk_1E846B048;
  v14[4] = self;
  v9 = blockCopy;
  v15 = v9;
  v10 = [remoteObjectProxy remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__ICNotesImporterClient_archiveEvernoteNotesFromFileURL_completionBlock___block_invoke_13;
  v12[3] = &unk_1E846B0C0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 archiveEvernoteNotesFromFileURL:lCopy completionBlock:v12];
}

void __73__ICNotesImporterClient_archiveEvernoteNotesFromFileURL_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Import");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __82__ICNotesImporterClient_parseHTMLStringFromEvernoteContentString_completionBlock___block_invoke_cold_1();
  }

  [*(a1 + 32) suspendConnectionIfNeeded];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __73__ICNotesImporterClient_archiveEvernoteNotesFromFileURL_completionBlock___block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) suspendConnectionIfNeeded];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

- (void)unarchiveEvernoteNoteFromArchiveId:(id)id noteArchiveId:(id)archiveId completionBlock:(id)block
{
  blockCopy = block;
  archiveIdCopy = archiveId;
  idCopy = id;
  [(ICNotesImporterClient *)self resumeConnectionIfNeeded];
  remoteObjectProxy = [(NSXPCConnection *)self->_connectionToService remoteObjectProxy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__ICNotesImporterClient_unarchiveEvernoteNoteFromArchiveId_noteArchiveId_completionBlock___block_invoke;
  v17[3] = &unk_1E846B048;
  v17[4] = self;
  v12 = blockCopy;
  v18 = v12;
  v13 = [remoteObjectProxy remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__ICNotesImporterClient_unarchiveEvernoteNoteFromArchiveId_noteArchiveId_completionBlock___block_invoke_15;
  v15[3] = &unk_1E846B0E8;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 unarchiveEvernoteNoteFromArchiveId:idCopy noteArchiveId:archiveIdCopy completionBlock:v15];
}

void __90__ICNotesImporterClient_unarchiveEvernoteNoteFromArchiveId_noteArchiveId_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Import");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __82__ICNotesImporterClient_parseHTMLStringFromEvernoteContentString_completionBlock___block_invoke_cold_1();
  }

  [*(a1 + 32) suspendConnectionIfNeeded];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void __90__ICNotesImporterClient_unarchiveEvernoteNoteFromArchiveId_noteArchiveId_completionBlock___block_invoke_15(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) suspendConnectionIfNeeded];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)unarchiveEvernoteResourceFromArchiveId:(id)id resourceArchiveId:(id)archiveId completionBlock:(id)block
{
  blockCopy = block;
  archiveIdCopy = archiveId;
  idCopy = id;
  [(ICNotesImporterClient *)self resumeConnectionIfNeeded];
  remoteObjectProxy = [(NSXPCConnection *)self->_connectionToService remoteObjectProxy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __98__ICNotesImporterClient_unarchiveEvernoteResourceFromArchiveId_resourceArchiveId_completionBlock___block_invoke;
  v17[3] = &unk_1E846B048;
  v17[4] = self;
  v12 = blockCopy;
  v18 = v12;
  v13 = [remoteObjectProxy remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__ICNotesImporterClient_unarchiveEvernoteResourceFromArchiveId_resourceArchiveId_completionBlock___block_invoke_17;
  v15[3] = &unk_1E846B110;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 unarchiveEvernoteResourceFromArchiveId:idCopy resourceArchiveId:archiveIdCopy completionBlock:v15];
}

void __98__ICNotesImporterClient_unarchiveEvernoteResourceFromArchiveId_resourceArchiveId_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Import");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __82__ICNotesImporterClient_parseHTMLStringFromEvernoteContentString_completionBlock___block_invoke_cold_1();
  }

  [*(a1 + 32) suspendConnectionIfNeeded];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void __98__ICNotesImporterClient_unarchiveEvernoteResourceFromArchiveId_resourceArchiveId_completionBlock___block_invoke_17(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) suspendConnectionIfNeeded];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)cleanupArchiveId:(id)id completionBlock:(id)block
{
  blockCopy = block;
  idCopy = id;
  [(ICNotesImporterClient *)self resumeConnectionIfNeeded];
  remoteObjectProxy = [(NSXPCConnection *)self->_connectionToService remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__ICNotesImporterClient_cleanupArchiveId_completionBlock___block_invoke;
  v14[3] = &unk_1E846B048;
  v14[4] = self;
  v9 = blockCopy;
  v15 = v9;
  v10 = [remoteObjectProxy remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__ICNotesImporterClient_cleanupArchiveId_completionBlock___block_invoke_19;
  v12[3] = &unk_1E8468CF8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 cleanupArchiveId:idCopy completionBlock:v12];
}

void __58__ICNotesImporterClient_cleanupArchiveId_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Import");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __82__ICNotesImporterClient_parseHTMLStringFromEvernoteContentString_completionBlock___block_invoke_cold_1();
  }

  [*(a1 + 32) suspendConnectionIfNeeded];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

uint64_t __58__ICNotesImporterClient_cleanupArchiveId_completionBlock___block_invoke_19(uint64_t a1)
{
  [*(a1 + 32) suspendConnectionIfNeeded];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)resumeConnectionIfNeeded
{
  requestCountQueue = [(ICNotesImporterClient *)self requestCountQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__ICNotesImporterClient_resumeConnectionIfNeeded__block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_sync(requestCountQueue, block);
}

uint64_t __49__ICNotesImporterClient_resumeConnectionIfNeeded__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    if (![v2 requestCount])
    {
      [*(*(a1 + 32) + 8) resume];
    }
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    v4 = ICNotesImporterBundleIdentifier();
    v5 = [v3 initWithServiceName:v4];
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5091A40];
    [*(*(a1 + 32) + 8) setRemoteObjectInterface:v8];
    [*(*(a1 + 32) + 8) resume];
  }

  v9 = *(a1 + 32);
  v10 = [v9 requestCount] + 1;

  return [v9 setRequestCount:v10];
}

- (void)suspendConnectionIfNeeded
{
  requestCountQueue = [(ICNotesImporterClient *)self requestCountQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__ICNotesImporterClient_suspendConnectionIfNeeded__block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_sync(requestCountQueue, block);
}

uint64_t __50__ICNotesImporterClient_suspendConnectionIfNeeded__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) requestCount];
  if (result)
  {
    [*(a1 + 32) setRequestCount:{objc_msgSend(*(a1 + 32), "requestCount") - 1}];
    result = [*(a1 + 32) requestCount];
    if (!result)
    {
      v3 = *(*(a1 + 32) + 8);

      return [v3 suspend];
    }
  }

  return result;
}

@end