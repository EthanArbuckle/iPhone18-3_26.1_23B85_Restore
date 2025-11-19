@interface _EMMessageRepositoryMailboxPredictionObserver
- (_EMMessageRepositoryMailboxPredictionObserver)initWithMessageObjectIDs:(id)a3 completionHandler:(id)a4;
- (void)_performWithRemoteConnection:(id)a3 forRecovery:(BOOL)a4;
- (void)cancel;
- (void)dealloc;
- (void)mailboxWasPredicted:(id)a3;
@end

@implementation _EMMessageRepositoryMailboxPredictionObserver

- (_EMMessageRepositoryMailboxPredictionObserver)initWithMessageObjectIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = _EMMessageRepositoryMailboxPredictionObserver;
  v8 = [(_EMMessageRepositoryMailboxPredictionObserver *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    messageObjectIDs = v8->_messageObjectIDs;
    v8->_messageObjectIDs = v9;

    v11 = [v7 copy];
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v11;

    v13 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    cancelationToken = v8->_cancelationToken;
    v8->_cancelationToken = v13;
  }

  return v8;
}

- (void)dealloc
{
  [(_EMMessageRepositoryMailboxPredictionObserver *)self cancel];
  v3.receiver = self;
  v3.super_class = _EMMessageRepositoryMailboxPredictionObserver;
  [(_EMMessageRepositoryMailboxPredictionObserver *)&v3 dealloc];
}

- (void)cancel
{
  v2 = [(_EMMessageRepositoryMailboxPredictionObserver *)self cancelationToken];
  [v2 cancel];
}

- (void)_performWithRemoteConnection:(id)a3 forRecovery:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_EMMessageRepositoryMailboxPredictionObserver *)self cancelationToken];
  if (([v7 isCanceled] & 1) == 0)
  {
    if (v4)
    {
      [v7 removeAllCancelationBlocks];
    }

    v8 = [v6 remoteObjectProxy];
    v9 = [(_EMMessageRepositoryMailboxPredictionObserver *)self messageObjectIDs];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __90___EMMessageRepositoryMailboxPredictionObserver__performWithRemoteConnection_forRecovery___block_invoke;
    v10[3] = &unk_1E826CD58;
    v11 = v7;
    [v8 predictMailboxForMovingMessages:v9 withObserver:self completionHandler:v10];
  }
}

- (void)mailboxWasPredicted:(id)a3
{
  v8 = a3;
  v4 = [(_EMMessageRepositoryMailboxPredictionObserver *)self cancelationToken];
  v5 = [v4 isCanceled];

  if ((v5 & 1) == 0)
  {
    v6 = [(_EMMessageRepositoryMailboxPredictionObserver *)self cancelationToken];
    [v6 cancel];

    v7 = [(_EMMessageRepositoryMailboxPredictionObserver *)self completionHandler];
    (v7)[2](v7, v8);
  }
}

@end