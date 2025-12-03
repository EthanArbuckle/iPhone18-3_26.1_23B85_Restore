@interface CPLChangeSession
+ (id)platformImplementationProtocol;
+ (id)stateDescriptionForState:(unint64_t)state;
- (CPLChangeSession)init;
- (CPLChangeSession)initWithLibraryManager:(id)manager;
- (NSString)description;
- (id)createSessionContext;
- (void)beginSessionWithKnownLibraryVersion:(id)version resetTracker:(id)tracker completionHandler:(id)handler;
- (void)dealloc;
- (void)finalizeWithCompletionHandler:(id)handler;
- (void)tearDownWithCompletionHandler:(id)handler;
@end

@implementation CPLChangeSession

- (NSString)description
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  shortDescription = [objc_opt_class() shortDescription];
  v4 = [v2 initWithFormat:@"[%@ session]", shortDescription];

  return v4;
}

- (void)tearDownWithCompletionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLSessionOSLogDomain_22797();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Tearing down %@", buf, 0xCu);
    }
  }

  platformObject = [(CPLChangeSession *)self platformObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__CPLChangeSession_tearDownWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E861AA50;
  v9[4] = self;
  v10 = handlerCopy;
  v7 = handlerCopy;
  [platformObject tearDownWithCompletionHandler:v9];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __50__CPLChangeSession_tearDownWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setState:6];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)finalizeWithCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLSessionOSLogDomain_22797();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412290;
      selfCopy = v7;
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
        selfCopy = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Trying to begin a session that has already been finalized (state: %@)", buf, 0xCu);
      }
    }

    v10 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to begin a session that has already been finalized"];
    handlerCopy[2](handlerCopy, v10);
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
        selfCopy = self;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEBUG, "%@ finalizing", buf, 0xCu);
      }
    }

    platformObject = [(CPLChangeSession *)self platformObject];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__CPLChangeSession_finalizeWithCompletionHandler___block_invoke;
    v14[3] = &unk_1E861B618;
    v14[4] = self;
    v15 = handlerCopy;
    [platformObject finalizeWithCompletionHandler:v14];
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

- (void)beginSessionWithKnownLibraryVersion:(id)version resetTracker:(id)tracker completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  trackerCopy = tracker;
  handlerCopy = handler;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLSessionOSLogDomain_22797();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412290;
      selfCopy = v13;
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
        selfCopy = v15;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Trying to begin a session that has already started (state: %@)", buf, 0xCu);
      }
    }

    createSessionContext = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to begin a session that has already started"];
    handlerCopy[2](handlerCopy, createSessionContext);
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLSessionOSLogDomain_22797();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        selfCopy = self;
        v27 = 2112;
        v28 = versionCopy;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEBUG, "%@ starting with known library version %@", buf, 0x16u);
      }
    }

    createSessionContext = [(CPLChangeSession *)self createSessionContext];
    v18 = trackerCopy;
    if (!trackerCopy)
    {
      v18 = +[CPLResetTracker currentTracker];
    }

    [createSessionContext setResetTracker:v18];
    platformObject = [(CPLChangeSession *)self platformObject];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __87__CPLChangeSession_beginSessionWithKnownLibraryVersion_resetTracker_completionHandler___block_invoke;
    v21[3] = &unk_1E861FE88;
    v21[4] = self;
    v24 = trackerCopy == 0;
    trackerCopy = v18;
    v22 = trackerCopy;
    v23 = handlerCopy;
    [platformObject beginSessionWithKnownLibraryVersion:versionCopy context:createSessionContext completionHandler:v21];
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

- (CPLChangeSession)initWithLibraryManager:(id)manager
{
  v26 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v23.receiver = self;
  v23.super_class = CPLChangeSession;
  v7 = [(CPLChangeSession *)&v23 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_libraryManager, manager);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v11 = [uUIDString copy];
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

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLChangeSession.m"];
      [currentHandler handleFailureInMethod:a2 object:v8 file:v22 lineNumber:75 description:{@"No platform object specified for %@", objc_opt_class()}];

      abort();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

- (CPLChangeSession)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLChangeSession.m"];
  [currentHandler handleFailureInMethod:a2 object:self file:v5 lineNumber:65 description:@"Should not use -init method but -initWithLibraryManager:"];

  abort();
}

+ (id)platformImplementationProtocol
{
  v2 = [objc_opt_class() description];
  v3 = [v2 stringByAppendingString:@"Implementation"];
  v4 = NSProtocolFromString(v3);

  return v4;
}

+ (id)stateDescriptionForState:(unint64_t)state
{
  if (state > 6)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E861FEA8[state];
  }
}

@end