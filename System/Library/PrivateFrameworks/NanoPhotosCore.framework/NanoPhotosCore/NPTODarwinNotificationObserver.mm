@interface NPTODarwinNotificationObserver
- (NPTODarwinNotificationObserver)initWithNotificationName:(id)name queue:(id)queue block:(id)block;
- (void)dealloc;
@end

@implementation NPTODarwinNotificationObserver

- (NPTODarwinNotificationObserver)initWithNotificationName:(id)name queue:(id)queue block:(id)block
{
  nameCopy = name;
  queueCopy = queue;
  blockCopy = block;
  v19.receiver = self;
  v19.super_class = NPTODarwinNotificationObserver;
  v11 = [(NPTODarwinNotificationObserver *)&v19 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_4;
  }

  v11->_notificationToken = -1;
  uTF8String = [nameCopy UTF8String];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __71__NPTODarwinNotificationObserver_initWithNotificationName_queue_block___block_invoke;
  handler[3] = &unk_27995B7F0;
  v18 = blockCopy;
  v14 = notify_register_dispatch(uTF8String, v12 + 2, queueCopy, handler);

  if (v14)
  {
    v15 = 0;
  }

  else
  {
LABEL_4:
    v15 = v12;
  }

  return v15;
}

uint64_t __71__NPTODarwinNotificationObserver_initWithNotificationName_queue_block___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dealloc
{
  notify_cancel(self->_notificationToken);
  v3.receiver = self;
  v3.super_class = NPTODarwinNotificationObserver;
  [(NPTODarwinNotificationObserver *)&v3 dealloc];
}

@end