@interface NPTONotificationCenter
- (NPTODarwinNotificationObserver)observerForName:(void *)a3 queue:(void *)a4 block:;
- (void)initWithDevice:(void *)a1;
- (void)postNotificationName:(uint64_t)a1;
@end

@implementation NPTONotificationCenter

- (void)initWithDevice:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = NPTONotificationCenter;
    a1 = objc_msgSendSuper2(&v8, sel_init);
    if (a1)
    {
      v4 = [v3 pairingID];
      v5 = [v4 UUIDString];
      v6 = a1[1];
      a1[1] = v5;
    }
  }

  return a1;
}

- (NPTODarwinNotificationObserver)observerForName:(void *)a3 queue:(void *)a4 block:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = [a3 underlyingQueue];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = dispatch_get_global_queue(0, 0);
    }

    v12 = v11;

    v13 = [NPTODarwinNotificationObserver alloc];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__NPTONotificationCenter_observerForName_queue_block___block_invoke;
    v15[3] = &unk_27995B818;
    v16 = v7;
    v17 = v8;
    a1 = [(NPTODarwinNotificationObserver *)v13 initWithNotificationName:v16 queue:v12 block:v15];
  }

  return a1;
}

uint64_t __54__NPTONotificationCenter_observerForName_queue_block___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = nanophotos_log_sync();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25B657000, v2, OS_LOG_TYPE_DEFAULT, "[NotificationCenter] Received notitication %@", &v6, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)postNotificationName:(uint64_t)a1
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = nanophotos_log_sync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 8);
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_25B657000, v4, OS_LOG_TYPE_DEFAULT, "[NotificationCenter] Posting notitication %@ for device %@", &v7, 0x16u);
    }

    notify_post([v3 UTF8String]);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end