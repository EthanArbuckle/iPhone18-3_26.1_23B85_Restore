@interface _EMMessageRepositoryMailboxPredictionObserver
- (_EMMessageRepositoryMailboxPredictionObserver)initWithMessageObjectIDs:(id)ds completionHandler:(id)handler;
- (void)_performWithRemoteConnection:(id)connection forRecovery:(BOOL)recovery;
- (void)cancel;
- (void)dealloc;
- (void)mailboxWasPredicted:(id)predicted;
@end

@implementation _EMMessageRepositoryMailboxPredictionObserver

- (_EMMessageRepositoryMailboxPredictionObserver)initWithMessageObjectIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = _EMMessageRepositoryMailboxPredictionObserver;
  v8 = [(_EMMessageRepositoryMailboxPredictionObserver *)&v16 init];
  if (v8)
  {
    v9 = [dsCopy copy];
    messageObjectIDs = v8->_messageObjectIDs;
    v8->_messageObjectIDs = v9;

    v11 = [handlerCopy copy];
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
  cancelationToken = [(_EMMessageRepositoryMailboxPredictionObserver *)self cancelationToken];
  [cancelationToken cancel];
}

- (void)_performWithRemoteConnection:(id)connection forRecovery:(BOOL)recovery
{
  recoveryCopy = recovery;
  connectionCopy = connection;
  cancelationToken = [(_EMMessageRepositoryMailboxPredictionObserver *)self cancelationToken];
  if (([cancelationToken isCanceled] & 1) == 0)
  {
    if (recoveryCopy)
    {
      [cancelationToken removeAllCancelationBlocks];
    }

    remoteObjectProxy = [connectionCopy remoteObjectProxy];
    messageObjectIDs = [(_EMMessageRepositoryMailboxPredictionObserver *)self messageObjectIDs];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __90___EMMessageRepositoryMailboxPredictionObserver__performWithRemoteConnection_forRecovery___block_invoke;
    v10[3] = &unk_1E826CD58;
    v11 = cancelationToken;
    [remoteObjectProxy predictMailboxForMovingMessages:messageObjectIDs withObserver:self completionHandler:v10];
  }
}

- (void)mailboxWasPredicted:(id)predicted
{
  predictedCopy = predicted;
  cancelationToken = [(_EMMessageRepositoryMailboxPredictionObserver *)self cancelationToken];
  isCanceled = [cancelationToken isCanceled];

  if ((isCanceled & 1) == 0)
  {
    cancelationToken2 = [(_EMMessageRepositoryMailboxPredictionObserver *)self cancelationToken];
    [cancelationToken2 cancel];

    completionHandler = [(_EMMessageRepositoryMailboxPredictionObserver *)self completionHandler];
    (completionHandler)[2](completionHandler, predictedCopy);
  }
}

@end