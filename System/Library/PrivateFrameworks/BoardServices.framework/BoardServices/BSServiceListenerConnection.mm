@interface BSServiceListenerConnection
+ (id)_connectionFromIncomingConnection:(char)connection requiresMessagingAfterHandshake:;
- (BOOL)isRevoked;
- (BSXPCDecoding)initiatingContext;
- (id)addEventObserver:(id)observer;
- (void)cancel;
@end

@implementation BSServiceListenerConnection

- (BSXPCDecoding)initiatingContext
{
  v2 = MEMORY[0x1E698E7A8];
  _connection = [(BSServiceConnection *)&self->super.super.isa _connection];
  initiatingContext = [(BSXPCServiceConnection *)_connection initiatingContext];
  v5 = [initiatingContext decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"clientContext"];
  v6 = [v2 coderWithMessage:v5];

  return v6;
}

- (BOOL)isRevoked
{
  _connection = [(BSServiceConnection *)&self->super.super.isa _connection];
  isRevokedPeer = [(BSXPCServiceConnection *)_connection isRevokedPeer];

  return isRevokedPeer;
}

+ (id)_connectionFromIncomingConnection:(char)connection requiresMessagingAfterHandshake:
{
  objc_opt_self();
  initiatingContext = [(BSXPCServiceConnection *)a2 initiatingContext];
  v6 = [initiatingContext decodeStringForKey:@"s"];
  if (v6)
  {
    v7 = objc_opt_new();
    objc_storeStrong((v7 + 16), a2);
    objc_storeStrong((v7 + 24), v6);
    v8 = [initiatingContext decodeStringForKey:@"i"];
    v9 = *(v7 + 32);
    *(v7 + 32) = v8;

    *(v7 + 169) = connection;
    v10 = [(BSServiceConnection *)[BSServiceListenerConnection alloc] _initWithConfiguration:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)addEventObserver:(id)observer
{
  if (self)
  {
    v5 = self->super._name;
  }

  else
  {
    v5 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, observer);
  _connection = [(BSServiceConnection *)&self->super.super.isa _connection];
  v7 = [@"observe-revoked:" stringByAppendingString:v5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__BSServiceListenerConnection_addEventObserver___block_invoke;
  v12[3] = &unk_1E75207D0;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  v8 = [(BSXPCServiceConnection *)_connection addObserverWithReason:v7 forRevocation:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  if (!v8)
  {
LABEL_5:
    v9 = objc_alloc(MEMORY[0x1E698E778]);
    v10 = [@"observe-none:" stringByAppendingString:v5];
    v8 = [v9 initWithReason:v10 invalidatedBlock:&__block_literal_global_1];
  }

  return v8;
}

void __48__BSServiceListenerConnection_addEventObserver___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v4)
  {
    v5 = [BSServiceListenerConnectionRevocationEvent eventForImplicit:?];
    [v4 connection:WeakRetained revokedWithEvent:v5];
  }
}

- (void)cancel
{
  if (self)
  {
    os_unfair_lock_lock(&self->super._lock);
    lock_config = self->super._lock_config;
    self->super._lock_config = 0;

    self->super._lock_invalidated = 1;
    os_unfair_lock_unlock(&self->super._lock);
    connection = self->super._connection;

    [(BSXPCServiceConnection *)connection cancel];
  }
}

@end