@interface ICHTMLConverterClient
+ (id)sharedClient;
- (ICHTMLConverterClient)init;
- (id)attributedStringFromHTMLString:(id)string;
- (void)attributedStringFromHTMLString:(id)string baseURL:(id)l timeoutDate:(id)date completionBlock:(id)block;
- (void)dealloc;
- (void)resumeConnectionIfNeeded;
- (void)suspendConnectionIfNeeded;
@end

@implementation ICHTMLConverterClient

+ (id)sharedClient
{
  if (sharedClient_onceToken != -1)
  {
    +[ICHTMLConverterClient sharedClient];
  }

  v3 = sharedClient_sharedClient;

  return v3;
}

uint64_t __37__ICHTMLConverterClient_sharedClient__block_invoke()
{
  sharedClient_sharedClient = objc_alloc_init(ICHTMLConverterClient);

  return MEMORY[0x1EEE66BB8]();
}

- (ICHTMLConverterClient)init
{
  v6.receiver = self;
  v6.super_class = ICHTMLConverterClient;
  v2 = [(ICHTMLConverterClient *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.notes.htmlconverter", v3);
    [(ICHTMLConverterClient *)v2 setRequestCountQueue:v4];

    [(ICHTMLConverterClient *)v2 setRequestCount:0];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connectionToService invalidate];
  v3.receiver = self;
  v3.super_class = ICHTMLConverterClient;
  [(ICHTMLConverterClient *)&v3 dealloc];
}

- (void)attributedStringFromHTMLString:(id)string baseURL:(id)l timeoutDate:(id)date completionBlock:(id)block
{
  stringCopy = string;
  lCopy = l;
  dateCopy = date;
  blockCopy = block;
  [dateCopy timeIntervalSinceNow];
  if (v14 > 0.0)
  {
    v15 = [blockCopy copy];
    [(ICHTMLConverterClient *)self resumeConnectionIfNeeded];
    connectionToService = self->_connectionToService;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __92__ICHTMLConverterClient_attributedStringFromHTMLString_baseURL_timeoutDate_completionBlock___block_invoke;
    v24[3] = &unk_1E846B498;
    v24[4] = self;
    v17 = stringCopy;
    v25 = v17;
    v18 = lCopy;
    v26 = v18;
    v27 = dateCopy;
    v19 = v15;
    v28 = v19;
    v20 = [(NSXPCConnection *)connectionToService remoteObjectProxyWithErrorHandler:v24];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __92__ICHTMLConverterClient_attributedStringFromHTMLString_baseURL_timeoutDate_completionBlock___block_invoke_2;
    v22[3] = &unk_1E846B4C0;
    v22[4] = self;
    v23 = v19;
    v21 = v19;
    [v20 attributedStringFromHTMLString:v17 baseURL:v18 completionBlock:v22];
  }
}

void __92__ICHTMLConverterClient_attributedStringFromHTMLString_baseURL_timeoutDate_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "HTML");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __92__ICHTMLConverterClient_attributedStringFromHTMLString_baseURL_timeoutDate_completionBlock___block_invoke_cold_1(v3, v4);
  }

  v5 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__ICHTMLConverterClient_attributedStringFromHTMLString_baseURL_timeoutDate_completionBlock___block_invoke_10;
  block[3] = &unk_1E846B470;
  v10 = *(a1 + 32);
  v6 = *(&v10 + 1);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v14 = *(a1 + 64);
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
}

void __92__ICHTMLConverterClient_attributedStringFromHTMLString_baseURL_timeoutDate_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) suspendConnectionIfNeeded];
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICNote(HTML) mutableAttributedStringFromHTMLString:v6 readerDelegate:v7];
    }
  }

  if (*(a1 + 40))
  {
    v23 = v6;
    v8 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v5 error:&v23];
    v21 = v23;

    v20 = MEMORY[0x1E695DFA8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v22 = v5;
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v20 setWithObjects:{v9, v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v8 decodeObjectOfClasses:v17 forKey:*MEMORY[0x1E696A508]];
    objc_opt_class();
    v19 = ICDynamicCast();
    [v8 finishDecoding];
    (*(*(a1 + 40) + 16))();

    v5 = v22;
    v6 = v21;
  }
}

- (id)attributedStringFromHTMLString:(id)string
{
  stringCopy = string;
  v5 = os_log_create("com.apple.notes", "HTML");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICHTMLConverterClient *)stringCopy attributedStringFromHTMLString:v5];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__31;
  v20 = __Block_byref_object_dispose__31;
  v21 = 0;
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:10.0];
  v7 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__ICHTMLConverterClient_attributedStringFromHTMLString___block_invoke;
  v12[3] = &unk_1E846B4E8;
  v8 = stringCopy;
  v13 = v8;
  v15 = &v16;
  v9 = v7;
  v14 = v9;
  [(ICHTMLConverterClient *)self attributedStringFromHTMLString:v8 baseURL:0 timeoutDate:v6 completionBlock:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __56__ICHTMLConverterClient_attributedStringFromHTMLString___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "HTML");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __56__ICHTMLConverterClient_attributedStringFromHTMLString___block_invoke_cold_1(a1, v3, v5);
    }

    v6 = *(*(a1 + 48) + 8);
    v7 = v3;
    v5 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) length];
      v9 = 134217984;
      v10 = v8;
      _os_log_impl(&dword_1D4171000, v5, OS_LOG_TYPE_INFO, "Could not convert HTML string (length=%ld) to attributed string", &v9, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)resumeConnectionIfNeeded
{
  requestCountQueue = [(ICHTMLConverterClient *)self requestCountQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__ICHTMLConverterClient_resumeConnectionIfNeeded__block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_sync(requestCountQueue, block);
}

uint64_t __49__ICHTMLConverterClient_resumeConnectionIfNeeded__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    if ([v2 requestCount])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    v4 = ICNoteHTMLConverterBundleIdentifier();
    v5 = [v3 initWithServiceName:v4];
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5091AA0];
    [*(*(a1 + 32) + 8) setRemoteObjectInterface:v8];
  }

  [*(*(a1 + 32) + 8) resume];
LABEL_6:
  v9 = *(a1 + 32);
  v10 = [v9 requestCount] + 1;

  return [v9 setRequestCount:v10];
}

- (void)suspendConnectionIfNeeded
{
  requestCountQueue = [(ICHTMLConverterClient *)self requestCountQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__ICHTMLConverterClient_suspendConnectionIfNeeded__block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_sync(requestCountQueue, block);
}

uint64_t __50__ICHTMLConverterClient_suspendConnectionIfNeeded__block_invoke(uint64_t a1)
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

void __92__ICHTMLConverterClient_attributedStringFromHTMLString_baseURL_timeoutDate_completionBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Error reaching HTML converter service: %@", &v2, 0xCu);
}

- (void)attributedStringFromHTMLString:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = [a1 length];
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "Synchronously converting HTML to attributed string (HTML length=%ld)", &v3, 0xCu);
}

void __56__ICHTMLConverterClient_attributedStringFromHTMLString___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) length];
  v6 = 134218240;
  v7 = v5;
  v8 = 2048;
  v9 = [a2 length];
  _os_log_debug_impl(&dword_1D4171000, a3, OS_LOG_TYPE_DEBUG, "Converted HTML string (length=%ld) to attributed string (length=%ld)", &v6, 0x16u);
}

@end