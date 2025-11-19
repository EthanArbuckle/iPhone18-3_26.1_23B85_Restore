@interface CPLDirectChangeSession
+ (id)selfCrashResetReason;
- (BOOL)processSessionContext:(id)a3 inStore:(id)a4 error:(id *)a5;
- (BOOL)tearedDown;
- (CPLDirectChangeSession)initWithAbstractObject:(id)a3;
- (NSString)description;
- (id)clientWorkDescription;
- (void)beginClientWork;
- (void)beginDirectSessionWithKnownLibraryVersion:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)beginSessionWithKnownLibraryVersion:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)discardTentativeResetReason;
- (void)dispatchCallback:(id)a3;
- (void)endClientWork;
- (void)finalizeWithCompletionHandler:(id)a3;
- (void)registerTentativeResetReason;
- (void)tearDownWithCompletionHandler:(id)a3;
@end

@implementation CPLDirectChangeSession

- (CPLDirectChangeSession)initWithAbstractObject:(id)a3
{
  v15.receiver = self;
  v15.super_class = CPLDirectChangeSession;
  v3 = [(CPLDirectChangeSession *)&v15 initWithAbstractObject:a3];
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

    v10 = [(CPLDirectChangeSession *)v3 abstractObject];
    v11 = [v10 libraryManager];
    v12 = [v11 platformObject];
    libraryManager = v3->_libraryManager;
    v3->_libraryManager = v12;
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

- (BOOL)processSessionContext:(id)a3 inStore:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 scopes];
  v10 = [v8 mainScopeIdentifier];

  v11 = [v9 scopeWithIdentifier:v10];

  if (v11 && ((v12 = [v7 estimatedInitialSizeForLocalLibrary], v13 = objc_msgSend(v7, "estimatedInitialAssetCountForLocalLibrary"), v14 = objc_msgSend(v9, "estimatedSizeForScope:", v11), v13 > objc_msgSend(v9, "estimatedAssetCountForScope:", v11)) || v12 > v14))
  {
    v15 = [v9 storeEstimatedSize:v12 estimatedAssetCount:v13 forScope:v11 error:a5];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)beginSessionWithKnownLibraryVersion:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CPLDirectLibraryManager *)self->_libraryManager engineLibrary];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013C358;
  v15[3] = &unk_100274798;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  [v11 beginChangeSessionWithSessionToken:self completionHandler:v15];
}

- (void)beginDirectSessionWithKnownLibraryVersion:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectChangeSession.m"];
  v14 = NSStringFromSelector(a2);
  [v12 handleFailureInMethod:a2 object:self file:v13 lineNumber:101 description:{@"%@ should be implemented by subclasses", v14}];

  abort();
}

- (void)finalizeWithCompletionHandler:(id)a3
{
  v5 = a3;
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

- (void)tearDownWithCompletionHandler:(id)a3
{
  v4 = a3;
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
    v6 = [(CPLDirectLibraryManager *)self->_libraryManager engineLibrary];
    v7 = [v6 store];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013C9A8;
    v10[3] = &unk_10027AE78;
    v8 = v7;
    v11 = v8;
    v12 = self;
    v13 = v4;
    v9 = [v8 performReadTransactionWithBlock:v10];
  }

  else
  {
    v4[2](v4);
  }

  _Block_object_dispose(&v15, 8);
}

- (void)dispatchCallback:(id)a3
{
  v4 = a3;
  callbackQueue = self->_callbackQueue;
  v6 = v4;
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

  v5 = [objc_opt_class() selfCrashResetReason];
  v3 = [CPLResetTracker registerTentativeResetReasonIfCrashing:v5];
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