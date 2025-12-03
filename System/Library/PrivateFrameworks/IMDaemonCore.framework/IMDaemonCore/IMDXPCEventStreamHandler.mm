@interface IMDXPCEventStreamHandler
- (IMDXPCEventStreamHandler)init;
- (IMDXPCEventStreamHandler)initWithEventStreamName:(const char *)name;
- (id)queueForDelegate:(id)delegate;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)didReceiveEventWithName:(id)name userInfo:(id)info;
- (void)removeDelegate:(id)delegate;
@end

@implementation IMDXPCEventStreamHandler

- (IMDXPCEventStreamHandler)init
{
  [(IMDXPCEventStreamHandler *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (IMDXPCEventStreamHandler)initWithEventStreamName:(const char *)name
{
  v20.receiver = self;
  v20.super_class = IMDXPCEventStreamHandler;
  v4 = [(IMDXPCEventStreamHandler *)&v20 init];
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v6 bundleIdentifier];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v5 stringWithFormat:@"%@.%@", bundleIdentifier, v9];
    v11 = NSStringFromSelector(sel_queue);
    v12 = [v5 stringWithFormat:@"%@.%@", v10, v11];

    v13 = dispatch_queue_create([v12 UTF8String], 0);
    queue = v4->_queue;
    v4->_queue = v13;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    delegateToQueue = v4->_delegateToQueue;
    v4->_delegateToQueue = weakToStrongObjectsMapTable;

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_22B6CD1A0;
    handler[3] = &unk_278703C10;
    v19 = v4;
    xpc_set_event_stream_handler(name, MEMORY[0x277D85CD0], handler);
  }

  return v4;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  queue = [(IMDXPCEventStreamHandler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6CD40C;
  block[3] = &unk_2787038F8;
  block[4] = self;
  v12 = queueCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = queueCopy;
  dispatch_async(queue, block);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(IMDXPCEventStreamHandler *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B6CD524;
  v7[3] = &unk_278702FA0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(queue, v7);
}

- (id)queueForDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_22B4D7840;
  v16 = sub_22B4D7988;
  v17 = 0;
  queue = [(IMDXPCEventStreamHandler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6CD6BC;
  block[3] = &unk_278702FC8;
  v10 = delegateCopy;
  v11 = &v12;
  block[4] = self;
  v6 = delegateCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)didReceiveEventWithName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  queue = [(IMDXPCEventStreamHandler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6CD800;
  block[3] = &unk_2787038F8;
  block[4] = self;
  v12 = nameCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = nameCopy;
  dispatch_sync(queue, block);
}

@end