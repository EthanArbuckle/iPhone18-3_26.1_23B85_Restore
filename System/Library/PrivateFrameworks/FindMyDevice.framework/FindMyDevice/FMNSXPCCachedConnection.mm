@interface FMNSXPCCachedConnection
- (FMNSXPCCachedConnection)initWithFMNSXPCConnection:(id)a3;
- (id)remoteObjectProxy;
- (void)_invalidate;
- (void)addFailureBlock:(id)a3;
- (void)invalidate;
@end

@implementation FMNSXPCCachedConnection

- (id)remoteObjectProxy
{
  v2 = [(FMNSXPCCachedConnection *)self connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  v3 = [(FMNSXPCCachedConnection *)self serialQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__FMNSXPCCachedConnection_invalidate__block_invoke;
  v4[3] = &unk_1E86BD6C0;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

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
  v3 = [(FMNSXPCCachedConnection *)self connection];
  if (v3)
  {
  }

  else
  {
    v4 = [(FMNSXPCCachedConnection *)self failureBlock];

    if (!v4)
    {
      return;
    }
  }

  [(FMNSXPCCachedConnection *)self setFailureBlock:0];
  [(FMNSXPCCachedConnection *)self setConnection:0];
  v5 = [(FMNSXPCCachedConnection *)self didInvalidate];

  if (v5)
  {
    v6 = [(FMNSXPCCachedConnection *)self didInvalidate];
    v6[2]();

    [(FMNSXPCCachedConnection *)self setDidInvalidate:0];
  }
}

- (FMNSXPCCachedConnection)initWithFMNSXPCConnection:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FMNSXPCCachedConnection;
  v5 = [(FMNSXPCCachedConnection *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(FMNSXPCCachedConnection *)v5 setConnection:v4];
    v7 = dispatch_queue_create("FMNSXPCCachedConnectionSerialQueue", 0);
    [(FMNSXPCCachedConnection *)v6 setSerialQueue:v7];
  }

  return v6;
}

- (void)addFailureBlock:(id)a3
{
  v4 = a3;
  [(FMNSXPCCachedConnection *)self setFailureBlock:v4];
  objc_initWeak(&location, self);
  v5 = [(FMNSXPCCachedConnection *)self connection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__FMNSXPCCachedConnection_addFailureBlock___block_invoke;
  v6[3] = &unk_1E86BD698;
  objc_copyWeak(&v7, &location);
  [v5 addFailureBlock:v6];

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