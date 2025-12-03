@interface CPLDirectChangeSession
+ (id)selfCrashResetReason;
- (BOOL)processSessionContext:(id)context inStore:(id)store error:(id *)error;
- (BOOL)tearedDown;
- (CPLDirectChangeSession)initWithAbstractObject:(id)object;
- (NSString)description;
- (id)clientWorkDescription;
- (void)beginClientWork;
- (void)beginDirectSessionWithKnownLibraryVersion:(id)version context:(id)context completionHandler:(id)handler;
- (void)beginSessionWithKnownLibraryVersion:(id)version context:(id)context completionHandler:(id)handler;
- (void)discardTentativeResetReason;
- (void)dispatchCallback:(id)callback;
- (void)endClientWork;
- (void)finalizeWithCompletionHandler:(id)handler;
- (void)registerTentativeResetReason;
- (void)tearDownWithCompletionHandler:(id)handler;
@end

@implementation CPLDirectChangeSession

- (CPLDirectChangeSession)initWithAbstractObject:(id)object
{
  v15.receiver = self;
  v15.super_class = CPLDirectChangeSession;
  v3 = [(CPLDirectChangeSession *)&v15 initWithAbstractObject:object];
  if (v3)
  {
    v4 = CPLCopyDefaultSerialQueueAttributes();
    v5 = dispatch_queue_create("com.apple.cpl.session.lock", v4);
    lock = v3->_lock;
    v3->_lock = v5;

    v7 = CPLCopyDefaultSerialQueueAttributes();
    v8 = dispatch_queue_create("com.apple.cpl.session.callback", v7);
    callbackQueue = v3->_callbackQueue;
    v3->_callbackQueue = v8;

    abstractObject = [(CPLDirectChangeSession *)v3 abstractObject];
    libraryManager = [abstractObject libraryManager];
    platformObject = [libraryManager platformObject];
    libraryManager = v3->_libraryManager;
    v3->_libraryManager = platformObject;
  }

  return v3;
}

- (id)clientWorkDescription
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectChangeSession.m"];
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:46 description:{@"%@ should be implemented by subclasses", v6}];

  abort();
}

- (void)beginClientWork
{
  lock = self->_lock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C07C;
  block[3] = &unk_100271F40;
  block[4] = self;
  dispatch_sync(lock, block);
}

- (BOOL)processSessionContext:(id)context inStore:(id)store error:(id *)error
{
  contextCopy = context;
  storeCopy = store;
  scopes = [storeCopy scopes];
  mainScopeIdentifier = [storeCopy mainScopeIdentifier];

  v11 = [scopes scopeWithIdentifier:mainScopeIdentifier];

  if (v11 && ((v12 = [contextCopy estimatedInitialSizeForLocalLibrary], v13 = objc_msgSend(contextCopy, "estimatedInitialAssetCountForLocalLibrary"), v14 = objc_msgSend(scopes, "estimatedSizeForScope:", v11), v13 > objc_msgSend(scopes, "estimatedAssetCountForScope:", v11)) || v12 > v14))
  {
    v15 = [scopes storeEstimatedSize:v12 estimatedAssetCount:v13 forScope:v11 error:error];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)beginSessionWithKnownLibraryVersion:(id)version context:(id)context completionHandler:(id)handler
{
  versionCopy = version;
  contextCopy = context;
  handlerCopy = handler;
  engineLibrary = [(CPLDirectLibraryManager *)self->_libraryManager engineLibrary];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013C358;
  v15[3] = &unk_100274798;
  v15[4] = self;
  v16 = versionCopy;
  v17 = contextCopy;
  v18 = handlerCopy;
  v12 = contextCopy;
  v13 = versionCopy;
  v14 = handlerCopy;
  [engineLibrary beginChangeSessionWithSessionToken:self completionHandler:v15];
}

- (void)beginDirectSessionWithKnownLibraryVersion:(id)version context:(id)context completionHandler:(id)handler
{
  versionCopy = version;
  contextCopy = context;
  handlerCopy = handler;
  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectChangeSession.m"];
  v14 = NSStringFromSelector(a2);
  [v12 handleFailureInMethod:a2 object:self file:v13 lineNumber:101 description:{@"%@ should be implemented by subclasses", v14}];

  abort();
}

- (void)finalizeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectChangeSession.m"];
  v8 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:105 description:{@"%@ should be implemented by subclasses", v8}];

  abort();
}

- (void)endClientWork
{
  lock = self->_lock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C674;
  block[3] = &unk_100271F40;
  block[4] = self;
  dispatch_sync(lock, block);
}

- (void)tearDownWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(CPLDirectChangeSession *)self discardTentativeResetReason];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  lock = self->_lock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C8D0;
  block[3] = &unk_1002729E8;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(lock, block);
  if (*(v16 + 24) == 1)
  {
    engineLibrary = [(CPLDirectLibraryManager *)self->_libraryManager engineLibrary];
    store = [engineLibrary store];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013C9A8;
    v10[3] = &unk_10027AE78;
    v8 = store;
    v11 = v8;
    selfCopy = self;
    v13 = handlerCopy;
    v9 = [v8 performReadTransactionWithBlock:v10];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }

  _Block_object_dispose(&v15, 8);
}

- (void)dispatchCallback:(id)callback
{
  callbackCopy = callback;
  callbackQueue = self->_callbackQueue;
  v6 = callbackCopy;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C04;
  block[3] = &unk_100271E98;
  v10 = v6;
  v7 = callbackQueue;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v8);
}

- (BOOL)tearedDown
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013CBA4;
  v5[3] = &unk_100272028;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (id)selfCrashResetReason
{
  if (qword_1002D2840 != -1)
  {
    sub_1001B58C4();
  }

  v3 = qword_1002D2848;

  return v3;
}

- (void)registerTentativeResetReason
{
  if (self->_tentativeReason)
  {
    sub_1001B58D8(a2, self);
  }

  selfCrashResetReason = [objc_opt_class() selfCrashResetReason];
  v3 = [CPLResetTracker registerTentativeResetReasonIfCrashing:selfCrashResetReason];
  tentativeReason = self->_tentativeReason;
  self->_tentativeReason = v3;
}

- (void)discardTentativeResetReason
{
  if (self->_tentativeReason)
  {
    [CPLResetTracker discardTentativeResetReason:?];
    tentativeReason = self->_tentativeReason;
    self->_tentativeReason = 0;
  }
}

- (NSString)description
{
  v2 = [[NSString alloc] initWithFormat:@"<%@ %p for %@>", objc_opt_class(), self, self->_libraryManager];

  return v2;
}

@end