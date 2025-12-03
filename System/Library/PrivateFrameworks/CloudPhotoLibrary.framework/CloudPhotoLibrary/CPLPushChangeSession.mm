@interface CPLPushChangeSession
- (CPLPushChangeSession)initWithLibraryManager:(id)manager;
- (void)commitChangeBatch:(id)batch completionHandler:(id)handler;
- (void)commitChangeBatch:(id)batch withUnderlyingCompletionHandler:(id)handler;
@end

@implementation CPLPushChangeSession

- (void)commitChangeBatch:(id)batch withUnderlyingCompletionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  handlerCopy = handler;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLSessionOSLogDomain_18244();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      selfCopy = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
    }
  }

  if ([(CPLChangeSession *)self state]!= 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = __CPLSessionOSLogDomain_18244();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [objc_opt_class() stateDescriptionForState:{-[CPLChangeSession state](self, "state")}];
        *buf = 138412290;
        selfCopy = v20;
        _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_ERROR, "can't commit a session that is in %@ state", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLPushChangeSession.m"];
    v23 = [objc_opt_class() stateDescriptionForState:{-[CPLChangeSession state](self, "state")}];
    [currentHandler handleFailureInMethod:a2 object:self file:v22 lineNumber:219 description:{@"can't commit a session that is in %@ state", v23}];

    abort();
  }

  [(CPLChangeSession *)self setState:4];
  Current = CFAbsoluteTimeGetCurrent();
  startWaitingForBatch = self->_startWaitingForBatch;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = __CPLSessionOSLogDomain_18244();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [batchCopy count];
      *buf = 138412802;
      selfCopy = self;
      v30 = 2048;
      v31 = v14;
      v32 = 2112;
      v33 = batchCopy;
      _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEBUG, "%@ committing %lu changes in %@", buf, 0x20u);
    }
  }

  platformObject = [(CPLChangeSession *)self platformObject];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __74__CPLPushChangeSession_commitChangeBatch_withUnderlyingCompletionHandler___block_invoke;
  v24[3] = &unk_1E861F4A0;
  v27 = Current - startWaitingForBatch;
  v24[4] = self;
  v25 = batchCopy;
  v26 = handlerCopy;
  v16 = handlerCopy;
  v17 = batchCopy;
  [platformObject commitChangeBatch:v17 withCompletionHandler:v24];

  v18 = *MEMORY[0x1E69E9840];
}

void __74__CPLPushChangeSession_commitChangeBatch_withUnderlyingCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLSessionOSLogDomain_18244();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 32);
      *v24 = 138412802;
      *&v24[4] = v13;
      *&v24[12] = 2112;
      *&v24[14] = v11;
      *&v24[22] = 2112;
      v25 = v9;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEBUG, "%@ committed to new version %@ with error %@", v24, 0x20u);
    }
  }

  [*(a1 + 32) setState:1];
  if (!v9)
  {
    if (a3)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLSessionOSLogDomain_18244();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 56);
          v16 = *(a1 + 40);
          *v24 = 134218498;
          *&v24[4] = v15;
          *&v24[12] = 2112;
          *&v24[14] = v16;
          *&v24[22] = 2048;
          v25 = a3;
          v17 = "Client pushed (used %.1fs) %@ (%lu spurious changes)";
          v18 = v14;
          v19 = 32;
LABEL_13:
          _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEFAULT, v17, v24, v19);
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLSessionOSLogDomain_18244();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 56);
        v21 = *(a1 + 40);
        *v24 = 134218242;
        *&v24[4] = v20;
        *&v24[12] = 2112;
        *&v24[14] = v21;
        v17 = "Client pushed (used %.1fs) %@";
        v18 = v14;
        v19 = 22;
        goto LABEL_13;
      }

LABEL_14:
    }

    v22 = [*(a1 + 32) libraryManager];
    [v22 _setLibraryVersion:v11];
  }

  *(*(a1 + 32) + 48) = CFAbsoluteTimeGetCurrent();
  (*(*(a1 + 48) + 16))();

  v23 = *MEMORY[0x1E69E9840];
}

- (void)commitChangeBatch:(id)batch completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__CPLPushChangeSession_commitChangeBatch_completionHandler___block_invoke;
  v8[3] = &unk_1E861F478;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(CPLPushChangeSession *)self commitChangeBatch:batch withUnderlyingCompletionHandler:v8];
}

- (CPLPushChangeSession)initWithLibraryManager:(id)manager
{
  v5.receiver = self;
  v5.super_class = CPLPushChangeSession;
  v3 = [(CPLChangeSession *)&v5 initWithLibraryManager:manager];
  if (v3)
  {
    v3->_startWaitingForBatch = CFAbsoluteTimeGetCurrent();
  }

  return v3;
}

@end