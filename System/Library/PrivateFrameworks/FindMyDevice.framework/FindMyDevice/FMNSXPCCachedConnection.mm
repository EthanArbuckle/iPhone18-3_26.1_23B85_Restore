@interface FMNSXPCCachedConnection
- (FMNSXPCCachedConnection)initWithFMNSXPCConnection:(id)connection;
- (id)remoteObjectProxy;
- (void)_invalidate;
- (void)addFailureBlock:(id)block;
- (void)invalidate;
@end

@implementation FMNSXPCCachedConnection

- (id)remoteObjectProxy
{
  connection = [(FMNSXPCCachedConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  serialQueue = [(FMNSXPCCachedConnection *)self serialQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__FMNSXPCCachedConnection_invalidate__block_invoke;
  v4[3] = &unk_1E86BD6C0;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __37__FMNSXPCCachedConnection_invalidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidate];
}

- (void)_invalidate
{
  connection = [(FMNSXPCCachedConnection *)self connection];
  if (connection)
  {
  }

  else
  {
    failureBlock = [(FMNSXPCCachedConnection *)self failureBlock];

    if (!failureBlock)
    {
      return;
    }
  }

  [(FMNSXPCCachedConnection *)self setFailureBlock:0];
  [(FMNSXPCCachedConnection *)self setConnection:0];
  didInvalidate = [(FMNSXPCCachedConnection *)self didInvalidate];

  if (didInvalidate)
  {
    didInvalidate2 = [(FMNSXPCCachedConnection *)self didInvalidate];
    didInvalidate2[2]();

    [(FMNSXPCCachedConnection *)self setDidInvalidate:0];
  }
}

- (FMNSXPCCachedConnection)initWithFMNSXPCConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = FMNSXPCCachedConnection;
  v5 = [(FMNSXPCCachedConnection *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(FMNSXPCCachedConnection *)v5 setConnection:connectionCopy];
    v7 = dispatch_queue_create("FMNSXPCCachedConnectionSerialQueue", 0);
    [(FMNSXPCCachedConnection *)v6 setSerialQueue:v7];
  }

  return v6;
}

- (void)addFailureBlock:(id)block
{
  blockCopy = block;
  [(FMNSXPCCachedConnection *)self setFailureBlock:blockCopy];
  objc_initWeak(&location, self);
  connection = [(FMNSXPCCachedConnection *)self connection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__FMNSXPCCachedConnection_addFailureBlock___block_invoke;
  v6[3] = &unk_1E86BD698;
  objc_copyWeak(&v7, &location);
  [connection addFailureBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __43__FMNSXPCCachedConnection_addFailureBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained serialQueue];
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__FMNSXPCCachedConnection_addFailureBlock___block_invoke_2;
    v6[3] = &unk_1E86BD670;
    v6[4] = WeakRetained;
    v6[5] = a2;
    dispatch_async(v4, v6);
  }
}

void __43__FMNSXPCCachedConnection_addFailureBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) failureBlock];
  v3 = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__FMNSXPCCachedConnection_addFailureBlock___block_invoke_3;
  v6[3] = &unk_1E86BD648;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

uint64_t __43__FMNSXPCCachedConnection_addFailureBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

@end