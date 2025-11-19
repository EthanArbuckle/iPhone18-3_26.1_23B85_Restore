@interface CPLChangeSession
+ (id)platformImplementationProtocol;
+ (id)stateDescriptionForState:(unint64_t)a3;
- (CPLChangeSession)init;
- (CPLChangeSession)initWithLibraryManager:(id)a3;
- (NSString)description;
- (id)createSessionContext;
- (void)beginSessionWithKnownLibraryVersion:(id)a3 resetTracker:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)finalizeWithCompletionHandler:(id)a3;
- (void)tearDownWithCompletionHandler:(id)a3;
@end

@implementation CPLChangeSession

- (NSString)description
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [objc_opt_class() shortDescription];
  v4 = [v2 initWithFormat:@"[%@ session]", v3];

  return v4;
}

- (void)tearDownWithCompletionHandler:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLSessionOSLogDomain_22797();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = self;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Tearing down %@", buf, 0xCu);
    }
  }

  v6 = [(CPLChangeSession *)self platformObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__CPLChangeSession_tearDownWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E861AA50;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [v6 tearDownWithCompletionHandler:v9];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __50__CPLChangeSession_tearDownWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setState:6];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)finalizeWithCompletionHandler:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLSessionOSLogDomain_22797();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
    }
  }

  if ([(CPLChangeSession *)self state]== 6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLSessionOSLogDomain_22797();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [objc_opt_class() stateDescriptionForState:{-[CPLChangeSession state](self, "state")}];
        *buf = 138412290;
        v17 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Trying to begin a session that has already been finalized (state: %@)", buf, 0xCu);
      }
    }

    v10 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to begin a session that has already been finalized"];
    v5[2](v5, v10);
  }

  else
  {
    if ([(CPLChangeSession *)self state]== 1)
    {
      [(CPLChangeSession *)self setState:5];
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLSessionOSLogDomain_22797();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = self;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEBUG, "%@ finalizing", buf, 0xCu);
      }
    }

    v12 = [(CPLChangeSession *)self platformObject];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__CPLChangeSession_finalizeWithCompletionHandler___block_invoke;
    v14[3] = &unk_1E861B618;
    v14[4] = self;
    v15 = v5;
    [v12 finalizeWithCompletionHandler:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __50__CPLChangeSession_finalizeWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) setState:6];
  [*(*(a1 + 32) + 32) discardCurrentSession];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLSessionOSLogDomain_22797();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "%@ finalized with error %@", &v7, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)beginSessionWithKnownLibraryVersion:(id)a3 resetTracker:(id)a4 completionHandler:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLSessionOSLogDomain_22797();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412290;
      v26 = v13;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
    }
  }

  if ([(CPLChangeSession *)self state])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLSessionOSLogDomain_22797();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [objc_opt_class() stateDescriptionForState:{-[CPLChangeSession state](self, "state")}];
        *buf = 138412290;
        v26 = v15;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Trying to begin a session that has already started (state: %@)", buf, 0xCu);
      }
    }

    v16 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to begin a session that has already started"];
    v11[2](v11, v16);
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLSessionOSLogDomain_22797();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v26 = self;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEBUG, "%@ starting with known library version %@", buf, 0x16u);
      }
    }

    v16 = [(CPLChangeSession *)self createSessionContext];
    v18 = v10;
    if (!v10)
    {
      v18 = +[CPLResetTracker currentTracker];
    }

    [v16 setResetTracker:v18];
    v19 = [(CPLChangeSession *)self platformObject];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __87__CPLChangeSession_beginSessionWithKnownLibraryVersion_resetTracker_completionHandler___block_invoke;
    v21[3] = &unk_1E861FE88;
    v21[4] = self;
    v24 = v10 == 0;
    v10 = v18;
    v22 = v10;
    v23 = v11;
    [v19 beginSessionWithKnownLibraryVersion:v9 context:v16 completionHandler:v21];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __87__CPLChangeSession_beginSessionWithKnownLibraryVersion_resetTracker_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLSessionOSLogDomain_22797();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 32);
        v9 = 138412546;
        v10 = v5;
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "%@ failed to start: %@", &v9, 0x16u);
      }
    }

    [*(a1 + 32) setState:6];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLSessionOSLogDomain_22797();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 32);
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "%@ started", &v9, 0xCu);
      }
    }

    [*(a1 + 32) setState:1];
    if (*(a1 + 56) == 1)
    {
      [CPLResetTracker discardTracker:*(a1 + 40)];
    }
  }

  (*(*(a1 + 48) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

- (id)createSessionContext
{
  v3 = objc_alloc_init(CPLChangeSessionContext);
  [(CPLChangeSessionContext *)v3 setEstimatedInitialSizeForLocalLibrary:[(CPLLibraryManager *)self->_libraryManager estimatedInitialSizeForLocalLibrary]];
  [(CPLChangeSessionContext *)v3 setEstimatedInitialAssetCountForLocalLibrary:[(CPLLibraryManager *)self->_libraryManager estimatedInitialAssetCountForLocalLibrary]];

  return v3;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_state != 6 && (_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLSessionOSLogDomain_22797();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [objc_opt_class() stateDescriptionForState:self->_state];
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_ERROR, "session was not properly finalized. Still in %@ state", buf, 0xCu);
    }
  }

  v6.receiver = self;
  v6.super_class = CPLChangeSession;
  [(CPLChangeSession *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (CPLChangeSession)initWithLibraryManager:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23.receiver = self;
  v23.super_class = CPLChangeSession;
  v7 = [(CPLChangeSession *)&v23 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_libraryManager, a3);
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [v9 UUIDString];
    v11 = [v10 copy];
    sessionIdentifier = v8->_sessionIdentifier;
    v8->_sessionIdentifier = v11;

    v13 = +[CPLPlatform currentPlatform];
    v14 = [v13 newPlatformImplementationForObject:v8];
    platformObject = v8->_platformObject;
    v8->_platformObject = v14;

    if (!v8->_platformObject)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v18 = __CPLSessionOSLogDomain_22797();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = objc_opt_class();
          *buf = 138412290;
          v25 = v19;
          v20 = v19;
          _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "No platform object specified for %@", buf, 0xCu);
        }
      }

      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLChangeSession.m"];
      [v21 handleFailureInMethod:a2 object:v8 file:v22 lineNumber:75 description:{@"No platform object specified for %@", objc_opt_class()}];

      abort();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

- (CPLChangeSession)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLChangeSession.m"];
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:65 description:@"Should not use -init method but -initWithLibraryManager:"];

  abort();
}

+ (id)platformImplementationProtocol
{
  v2 = [objc_opt_class() description];
  v3 = [v2 stringByAppendingString:@"Implementation"];
  v4 = NSProtocolFromString(v3);

  return v4;
}

+ (id)stateDescriptionForState:(unint64_t)a3
{
  if (a3 > 6)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E861FEA8[a3];
  }
}

@end