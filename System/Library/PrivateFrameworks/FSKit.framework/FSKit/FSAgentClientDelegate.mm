@interface FSAgentClientDelegate
- (void)instanceExited:(id)a3 instanceUUID:(id)a4;
@end

@implementation FSAgentClientDelegate

- (void)instanceExited:(id)a3 instanceUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__FSAgentClientDelegate_instanceExited_instanceUUID___block_invoke;
  block[3] = &unk_278FED250;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __53__FSAgentClientDelegate_instanceExited_instanceUUID___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40), *(a1 + 48));
  }

  objc_sync_exit(obj);
}

@end