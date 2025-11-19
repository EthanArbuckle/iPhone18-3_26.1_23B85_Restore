@interface LNTranscriptProvider
+ (id)createStreamsWithStreamURL:(id)a3;
- (LNTranscriptProvider)init;
- (NSXPCConnection)connection;
- (id)transcriptPublisherFromDate:(id)a3 error:(id *)a4;
- (void)configureConnection:(id)a3;
- (void)dealloc;
- (void)deleteAllRecordsWithReply:(id)a3;
- (void)deleteRecordsWithMatchingPredicate:(id)a3 reply:(id)a4;
- (void)donateWithActionRecord:(id)a3 reply:(id)a4;
@end

@implementation LNTranscriptProvider

- (LNTranscriptProvider)init
{
  v9.receiver = self;
  v9.super_class = LNTranscriptProvider;
  v2 = [(LNTranscriptProvider *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);
    v5 = dispatch_queue_create("com.apple.link.LNTranscript.internal-queue", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = v2;
  }

  return v2;
}

- (NSXPCConnection)connection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7818;
  v11 = __Block_byref_object_dispose__7819;
  v12 = 0;
  v3 = [(LNTranscriptProvider *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__LNTranscriptProvider_connection__block_invoke;
  v6[3] = &unk_1E74B1598;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__LNTranscriptProvider_connection__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.linkd.transcript" options:0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    [*(a1 + 32) configureConnection:*(*(a1 + 32) + 8)];
    [*(*(a1 + 32) + 8) resume];
    v2 = *(*(a1 + 32) + 8);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = LNTranscriptProvider;
  [(LNTranscriptProvider *)&v3 dealloc];
}

- (void)deleteAllRecordsWithReply:(id)a3
{
  v4 = a3;
  v5 = [(LNTranscriptProvider *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__LNTranscriptProvider_deleteAllRecordsWithReply___block_invoke;
  v11[3] = &unk_1E74B2848;
  v6 = v4;
  v12 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__LNTranscriptProvider_deleteAllRecordsWithReply___block_invoke_28;
  v9[3] = &unk_1E74B1CB8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 deleteAllRecordsWithReply:v9];
}

void __50__LNTranscriptProvider_deleteAllRecordsWithReply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "XPC Error when executing deleteAllRecordsWithReply. error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __50__LNTranscriptProvider_deleteAllRecordsWithReply___block_invoke_28(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "Error when executing deleteAllRecordsWithReply. error: %@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)deleteRecordsWithMatchingPredicate:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNTranscriptProvider *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__LNTranscriptProvider_deleteRecordsWithMatchingPredicate_reply___block_invoke;
  v14[3] = &unk_1E74B2848;
  v9 = v6;
  v15 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__LNTranscriptProvider_deleteRecordsWithMatchingPredicate_reply___block_invoke_26;
  v12[3] = &unk_1E74B14F8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 deleteRecordsWithMatchingPredicate:v7 reply:v12];
}

void __65__LNTranscriptProvider_deleteRecordsWithMatchingPredicate_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "XPC Error when executing deleteRecordsWithMatchingPredicate. error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __65__LNTranscriptProvider_deleteRecordsWithMatchingPredicate_reply___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_19763D000, v7, OS_LOG_TYPE_INFO, "Error when executing deleteRecordsWithMatchingPredicate. error: %@", &v9, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

void __84__LNTranscriptProvider_transcriptPublisherFromDate_toDate_maxEvents_reversed_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_ERROR, "Error when executing requestReadAccessWithReply. error: %@", &v9, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"LNTranscriptErrorDomain" code:1004 userInfo:0];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x1E69E9840];
}

void __84__LNTranscriptProvider_transcriptPublisherFromDate_toDate_maxEvents_reversed_error___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)transcriptPublisherFromDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7818;
  v25 = __Block_byref_object_dispose__7819;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7818;
  v19 = __Block_byref_object_dispose__7819;
  v20 = 0;
  v7 = [(LNTranscriptProvider *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__LNTranscriptProvider_transcriptPublisherFromDate_error___block_invoke;
  v14[3] = &unk_1E74B2658;
  v14[4] = &v15;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__LNTranscriptProvider_transcriptPublisherFromDate_error___block_invoke_22;
  v13[3] = &unk_1E74B2680;
  v13[4] = &v15;
  v13[5] = &v21;
  [v8 requestReadAccessWithReply:v13];

  if (a4)
  {
    v9 = v16[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = [v22[5] url];
  v11 = [LNTranscriptProvider publisherForStream:v10 fromDate:v6 toDate:0 maxEvents:0 reversed:0];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v11;
}

void __58__LNTranscriptProvider_transcriptPublisherFromDate_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_ERROR, "Error when executing requestReadAccessWithReply. error: %@", &v9, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"LNTranscriptErrorDomain" code:1004 userInfo:0];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x1E69E9840];
}

void __58__LNTranscriptProvider_transcriptPublisherFromDate_error___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __70__LNTranscriptProvider_donateActionRecordData_writeImmediately_reply___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "XPC Error when executing donateActionRecordData. error: %@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = getLNLogCategoryExecution();
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v6, OS_SIGNPOST_INTERVAL_END, v7, "donating", "", &v9, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __70__LNTranscriptProvider_donateActionRecordData_writeImmediately_reply___block_invoke_20(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "Error when executing donateActionRecordData. error: %@", &v9, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
  v5 = getLNLogCategoryExecution();
  v6 = v5;
  v7 = *(a1 + 48);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v6, OS_SIGNPOST_INTERVAL_END, v7, "donating", "", &v9, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)donateWithActionRecord:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = getLNLogCategoryExecution();
  v9 = v8;
  if (a3 + 1 >= 2 && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v9, OS_SIGNPOST_INTERVAL_BEGIN, a3, "donating", "", buf, 2u);
  }

  v10 = [(LNTranscriptProvider *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__LNTranscriptProvider_donateWithActionRecord_reply___block_invoke;
  v17[3] = &unk_1E74B2870;
  v11 = v6;
  v18 = v11;
  v19 = a3;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__LNTranscriptProvider_donateWithActionRecord_reply___block_invoke_19;
  v14[3] = &unk_1E74B14D0;
  v15 = v11;
  v16 = a3;
  v14[4] = self;
  v13 = v11;
  [v12 donateWithActionRecord:v7 reply:v14];
}

void __53__LNTranscriptProvider_donateWithActionRecord_reply___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "XPC Error when executing donateWithActionRecord. error: %@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = getLNLogCategoryExecution();
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v6, OS_SIGNPOST_INTERVAL_END, v7, "donating", "", &v9, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __53__LNTranscriptProvider_donateWithActionRecord_reply___block_invoke_19(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "Error when executing donateWithActionRecord. error: %@", &v9, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
  v5 = getLNLogCategoryExecution();
  v6 = v5;
  v7 = *(a1 + 48);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v6, OS_SIGNPOST_INTERVAL_END, v7, "donating", "", &v9, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)configureConnection:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() xpcInterface];
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v5];

  objc_initWeak(&location, self);
  connection = self->_connection;
  v7 = [(LNTranscriptProvider *)self queue];
  [(NSXPCConnection *)connection _setQueue:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__LNTranscriptProvider_configureConnection___block_invoke;
  v10[3] = &unk_1E74B2438;
  objc_copyWeak(&v11, &location);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__LNTranscriptProvider_configureConnection___block_invoke_17;
  v8[3] = &unk_1E74B2438;
  objc_copyWeak(&v9, &location);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __44__LNTranscriptProvider_configureConnection___block_invoke(uint64_t a1)
{
  v2 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_19763D000, v2, OS_LOG_TYPE_ERROR, "XPC connection has been interrupted", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 1) invalidate];
    v5 = v4[1];
    v4[1] = 0;
  }
}

void __44__LNTranscriptProvider_configureConnection___block_invoke_17(uint64_t a1)
{
  v2 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_19763D000, v2, OS_LOG_TYPE_INFO, "XPC connection has been invalidated", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 1);
    *(WeakRetained + 1) = 0;
  }
}

+ (id)createStreamsWithStreamURL:(id)a3
{
  v3 = a3;
  v4 = [v3 URLByDeletingLastPathComponent];
  v5 = [v4 path];

  v6 = [v3 lastPathComponent];
  if ([v6 isEqualToString:@"Special"])
  {
    v7 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_19763D000, v7, OS_LOG_TYPE_INFO, "Using class D protection for special stream.", v14, 2u);
    }

    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

  v9 = [MEMORY[0x1E698F130] newPrivateStreamDefaultConfigurationWithStoreBasePath:v5 protectionClass:v8];
  v10 = objc_alloc(MEMORY[0x1E698F318]);
  v11 = [v3 lastPathComponent];
  v12 = [v10 initWithPrivateStreamIdentifier:v11 storeConfig:v9 eventDataClass:0];

  return v12;
}

@end