@interface CPLPullChangeSession
- (void)acknowledgeChangeBatch:(id)a3 withCompletionHandler:(id)a4;
- (void)getChangeBatchWithCompletionHandler:(id)a3;
@end

@implementation CPLPullChangeSession

- (void)acknowledgeChangeBatch:(id)a3 withCompletionHandler:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLSessionOSLogDomain_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      v30 = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  sentBatchTimeInterval = self->_sentBatchTimeInterval;
  if ([(CPLChangeSession *)self state]== 3)
  {
    if ([(CPLChangeSession *)self state]!= 3)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v20 = __CPLSessionOSLogDomain_0();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = [objc_opt_class() stateDescriptionForState:{-[CPLChangeSession state](self, "state")}];
          *buf = 138412290;
          v30 = v21;
          _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_ERROR, "can't finalize a session that is in %@ state", buf, 0xCu);
        }
      }

      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLPullChangeSession.m"];
      v24 = [objc_opt_class() stateDescriptionForState:{-[CPLChangeSession state](self, "state")}];
      [v22 handleFailureInMethod:a2 object:self file:v23 lineNumber:65 description:{@"can't finalize a session that is in %@ state", v24}];

      abort();
    }

    v13 = Current - sentBatchTimeInterval;
    [(CPLChangeSession *)self setState:4];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLSessionOSLogDomain_0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v30 = self;
        v31 = 2112;
        v32 = v7;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEBUG, "%@ acknowledging %@", buf, 0x16u);
      }
    }

    v15 = [(CPLChangeSession *)self platformObject];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __69__CPLPullChangeSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke;
    v25[3] = &unk_1E861CB58;
    v25[4] = self;
    v28 = v13;
    v26 = v7;
    v27 = v8;
    [v15 acknowledgeChangeBatch:v26 withCompletionHandler:v25];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLSessionOSLogDomain_0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [objc_opt_class() stateDescriptionForState:{-[CPLChangeSession state](self, "state")}];
        *buf = 138412290;
        v30 = v17;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "Trying to acknowledge a batch while session is not waiting for that (state: %@)", buf, 0xCu);
      }
    }

    v18 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to acknowledge a batch while session is not waiting for that"];
    (*(v8 + 2))(v8, v18, 0);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __69__CPLPullChangeSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLSessionOSLogDomain_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v14 = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "%@ acknowledged batch to new version %@ with error %@", &v14, 0x20u);
    }
  }

  [*(a1 + 32) setState:1];
  if (!v5)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLSessionOSLogDomain_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 56);
        v11 = *(a1 + 40);
        v14 = 134218242;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Client acknowledged (used %.1fs) %@", &v14, 0x16u);
      }
    }

    v12 = [*(a1 + 32) libraryManager];
    [v12 _setLibraryVersion:v6];
  }

  (*(*(a1 + 48) + 16))();

  v13 = *MEMORY[0x1E69E9840];
}

- (void)getChangeBatchWithCompletionHandler:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLSessionOSLogDomain_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
    }
  }

  if ([(CPLChangeSession *)self state]== 1)
  {
    [(CPLChangeSession *)self setState:2];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLSessionOSLogDomain_0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = self;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "%@ asking for batches", buf, 0xCu);
      }
    }

    v9 = [(CPLChangeSession *)self platformObject];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__CPLPullChangeSession_getChangeBatchWithCompletionHandler___block_invoke;
    v14[3] = &unk_1E861B578;
    v14[4] = self;
    v15 = v5;
    [v9 getChangeBatchWithCompletionHandler:v14];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLSessionOSLogDomain_0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [objc_opt_class() stateDescriptionForState:{-[CPLChangeSession state](self, "state")}];
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Trying to get change batches while session is not idle (state: %@)", buf, 0xCu);
      }
    }

    v12 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to get change batches while session is not idle"];
    (*(v5 + 2))(v5, v12, 0);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __60__CPLPullChangeSession_getChangeBatchWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_10;
    }

    v7 = __CPLSessionOSLogDomain_0();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v8 = *(a1 + 32);
    *v15 = 138412546;
    *&v15[4] = v8;
    *&v15[12] = 2112;
    *&v15[14] = v5;
    v9 = "%@ got error: %@";
    v10 = v7;
    v11 = 22;
    goto LABEL_8;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_10;
  }

  v7 = __CPLSessionOSLogDomain_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    *v15 = 138412802;
    *&v15[4] = v12;
    *&v15[12] = 2048;
    *&v15[14] = [v6 count];
    *&v15[22] = 2112;
    v16 = v6;
    v9 = "%@ got %lu changes in %@";
    v10 = v7;
    v11 = 32;
LABEL_8:
    _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, v9, v15, v11);
  }

LABEL_9:

LABEL_10:
  if (v6)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  [*(a1 + 32) setState:{v13, *v15, *&v15[16], v16}];
  *(*(a1 + 32) + 48) = CFAbsoluteTimeGetCurrent();
  (*(*(a1 + 40) + 16))();

  v14 = *MEMORY[0x1E69E9840];
}

@end