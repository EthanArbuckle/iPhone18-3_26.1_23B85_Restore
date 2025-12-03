@interface NPTONotificationCenter
- (NPTODarwinNotificationObserver)observerForName:(void *)name queue:(void *)queue block:;
- (void)initWithDevice:(void *)device;
- (void)postNotificationName:(uint64_t)name;
@end

@implementation NPTONotificationCenter

- (void)initWithDevice:(void *)device
{
  v3 = a2;
  if (device)
  {
    v8.receiver = device;
    v8.super_class = NPTONotificationCenter;
    device = objc_msgSendSuper2(&v8, sel_init);
    if (device)
    {
      pairingID = [v3 pairingID];
      uUIDString = [pairingID UUIDString];
      v6 = device[1];
      device[1] = uUIDString;
    }
  }

  return device;
}

- (NPTODarwinNotificationObserver)observerForName:(void *)name queue:(void *)queue block:
{
  v7 = a2;
  queueCopy = queue;
  if (self)
  {
    underlyingQueue = [name underlyingQueue];
    v10 = underlyingQueue;
    if (underlyingQueue)
    {
      v11 = underlyingQueue;
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
    v17 = queueCopy;
    self = [(NPTODarwinNotificationObserver *)v13 initWithNotificationName:v16 queue:v12 block:v15];
  }

  return self;
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

- (void)postNotificationName:(uint64_t)name
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (name)
  {
    v4 = nanophotos_log_sync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(name + 8);
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