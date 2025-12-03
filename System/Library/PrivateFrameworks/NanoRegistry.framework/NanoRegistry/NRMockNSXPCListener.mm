@interface NRMockNSXPCListener
- (NRMockNSXPCListener)initWithMachServiceName:(id)name;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
- (void)suspend;
@end

@implementation NRMockNSXPCListener

- (NRMockNSXPCListener)initWithMachServiceName:(id)name
{
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = NRMockNSXPCListener;
  v6 = [(NRMockNSXPCListener *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.nanoregistry.mockxpclistener.%@", nameCopy];
    v9 = dispatch_queue_create([nameCopy UTF8String], 0);
    queue = v7->_queue;
    v7->_queue = v9;

    [(NRMockNSXPCListener *)v7 suspend];
    v11 = +[NRMockXPCStuff sharedInstance];
    v12 = v11;
    if (v11)
    {
      v13 = v11[2];
    }

    else
    {
      v13 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__NRMockNSXPCListener_initWithMachServiceName___block_invoke;
    block[3] = &unk_1E86DAEE8;
    v17 = v11;
    v18 = nameCopy;
    v19 = v7;
    v14 = v12;
    dispatch_sync(v13, block);
  }

  return v7;
}

uint64_t __47__NRMockNSXPCListener_initWithMachServiceName___block_invoke(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v1 = v1[1];
  }

  return [v1 setObject:a1[6] forKeyedSubscript:a1[5]];
}

- (void)resume
{
  isa = +[NRMockXPCStuff sharedInstance];
  v4 = isa;
  if (isa)
  {
    isa = isa[2].isa;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__NRMockNSXPCListener_resume__block_invoke;
  block[3] = &unk_1E86DAE98;
  block[4] = self;
  dispatch_sync(isa, block);
}

- (void)suspend
{
  isa = +[NRMockXPCStuff sharedInstance];
  v4 = isa;
  if (isa)
  {
    isa = isa[2].isa;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__NRMockNSXPCListener_suspend__block_invoke;
  block[3] = &unk_1E86DAE98;
  block[4] = self;
  dispatch_sync(isa, block);
}

- (void)invalidate
{
  v3 = +[NRMockXPCStuff sharedInstance];
  if (v3)
  {
    v4 = v3[2];
  }

  else
  {
    v4 = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__NRMockNSXPCListener_invalidate__block_invoke;
  v6[3] = &unk_1E86DAF10;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, v6);
}

uint64_t __33__NRMockNSXPCListener_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    *(v2 + 8) = 1;
    dispatch_suspend(*(*(a1 + 32) + 32));
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  result = [v4 removeObjectForKey:*(*(a1 + 32) + 24)];
  *(*(a1 + 32) + 9) = 1;
  return result;
}

- (void)dealloc
{
  isa = +[NRMockXPCStuff sharedInstance];
  v4 = isa;
  if (isa)
  {
    isa = isa[2].isa;
  }

  dispatch_sync(isa, &__block_literal_global_237);

  v5.receiver = self;
  v5.super_class = NRMockNSXPCListener;
  [(NRMockNSXPCListener *)&v5 dealloc];
}

void __60__NRMockNSXPCListener_serverConnectionWithClientConnection___block_invoke(void *a1)
{
  obj = [[NRMockServerNSXPCConnection alloc] initWithListener:a1[4] clientConnection:a1[5]];
  if ([*(a1[4] + 16) listener:? shouldAcceptNewConnection:?])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), obj);
  }
}

@end