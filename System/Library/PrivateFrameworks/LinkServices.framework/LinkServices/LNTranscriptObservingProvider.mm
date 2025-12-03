@interface LNTranscriptObservingProvider
- (LNTranscriptObservingProvider)initWithObserver:(id)observer;
- (LNTranscriptObservingProviderDelegate)delegate;
- (void)configureConnection:(id)connection;
- (void)startObservingNextActionStreamWithCompletion:(id)completion;
- (void)stopObservingNextActionStreamWithConnectionUUID:(id)d completion:(id)completion;
@end

@implementation LNTranscriptObservingProvider

- (LNTranscriptObservingProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stopObservingNextActionStreamWithConnectionUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = getLNLogCategoryExecution();
  v9 = v8;
  if (d + 1 >= 2 && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v9, OS_SIGNPOST_INTERVAL_BEGIN, d, "stopping observation", "", buf, 2u);
  }

  connection = [(LNTranscriptProvider *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __92__LNTranscriptObservingProvider_stopObservingNextActionStreamWithConnectionUUID_completion___block_invoke;
  v17[3] = &unk_1E74B2848;
  v11 = completionCopy;
  v18 = v11;
  v12 = [connection remoteObjectProxyWithErrorHandler:v17];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__LNTranscriptObservingProvider_stopObservingNextActionStreamWithConnectionUUID_completion___block_invoke_15;
  v14[3] = &unk_1E74B2870;
  v15 = v11;
  dCopy2 = d;
  v13 = v11;
  [v12 stopObservingNextActionStreamWithConnectionUUID:dCopy completion:v14];
}

void __92__LNTranscriptObservingProvider_stopObservingNextActionStreamWithConnectionUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_ERROR, "XPC Error when executing stopObservingNextActionStream. error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __92__LNTranscriptObservingProvider_stopObservingNextActionStreamWithConnectionUUID_completion___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = getLNLogCategoryExecution();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "stopping observation", "", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startObservingNextActionStreamWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = getLNLogCategoryExecution();
  v6 = v5;
  if (&self->super.super.isa + 1 >= 2 && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v6, OS_SIGNPOST_INTERVAL_BEGIN, self, "starting observation", "", buf, 2u);
  }

  *buf = 0;
  v16 = buf;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14892;
  v19 = __Block_byref_object_dispose__14893;
  v20 = 0;
  connection = [(LNTranscriptProvider *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__LNTranscriptObservingProvider_startObservingNextActionStreamWithCompletion___block_invoke;
  v14[3] = &unk_1E74B27F8;
  v14[4] = buf;
  v14[5] = self;
  v8 = [connection remoteObjectProxyWithErrorHandler:v14];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__LNTranscriptObservingProvider_startObservingNextActionStreamWithCompletion___block_invoke_13;
  v10[3] = &unk_1E74B2820;
  v12 = buf;
  selfCopy = self;
  v9 = completionCopy;
  v11 = v9;
  [v8 startObservingNextActionStreamWithCompletion:v10];

  _Block_object_dispose(buf, 8);
}

void __78__LNTranscriptObservingProvider_startObservingNextActionStreamWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_ERROR, "XPC Error when executing startObservingNextActionStream. error: %@", &v12, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"LNTranscriptErrorDomain" code:1000 userInfo:0];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = getLNLogCategoryExecution();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v9, OS_SIGNPOST_INTERVAL_END, v10, "starting observation", "", &v12, 2u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __78__LNTranscriptObservingProvider_startObservingNextActionStreamWithCompletion___block_invoke_13(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(a1[5] + 8) + 40);
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_19763D000, v7, OS_LOG_TYPE_ERROR, "Error when executing startObservingNextActionStream. error: %@", &v13, 0xCu);
    }
  }

  v9 = getLNLogCategoryExecution();
  v10 = v9;
  v11 = a1[6];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v10, OS_SIGNPOST_INTERVAL_END, v11, "starting observation", "", &v13, 2u);
  }

  (*(a1[4] + 16))();
  v12 = *MEMORY[0x1E69E9840];
}

- (void)configureConnection:(id)connection
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = LNTranscriptObservingProvider;
  [(LNTranscriptProvider *)&v13 configureConnection:connectionCopy];
  objc_initWeak(&location, self);
  interruptionHandler = [connectionCopy interruptionHandler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__LNTranscriptObservingProvider_configureConnection___block_invoke;
  v9[3] = &unk_1E74B27C8;
  objc_copyWeak(&v11, &location);
  v6 = interruptionHandler;
  v10 = v6;
  [connectionCopy setInterruptionHandler:v9];
  v7 = LNNextActionObserverXPCInterface();
  [connectionCopy setExportedInterface:v7];

  observer = [(LNTranscriptObservingProvider *)self observer];
  [connectionCopy setExportedObject:observer];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __53__LNTranscriptObservingProvider_configureConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [WeakRetained delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [WeakRetained delegate];
      [v4 observingProviderObservationDidInterrupted:WeakRetained];
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

- (LNTranscriptObservingProvider)initWithObserver:(id)observer
{
  observerCopy = observer;
  v10.receiver = self;
  v10.super_class = LNTranscriptObservingProvider;
  v6 = [(LNTranscriptProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observer, observer);
    v8 = v7;
  }

  return v7;
}

@end