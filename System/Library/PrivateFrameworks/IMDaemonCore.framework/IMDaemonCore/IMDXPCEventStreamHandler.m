@interface IMDXPCEventStreamHandler
- (IMDXPCEventStreamHandler)init;
- (IMDXPCEventStreamHandler)initWithEventStreamName:(const char *)a3;
- (id)queueForDelegate:(id)a3;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)didReceiveEventWithName:(id)a3 userInfo:(id)a4;
- (void)removeDelegate:(id)a3;
@end

@implementation IMDXPCEventStreamHandler

- (IMDXPCEventStreamHandler)init
{
  [(IMDXPCEventStreamHandler *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (IMDXPCEventStreamHandler)initWithEventStreamName:(const char *)a3
{
  v20.receiver = self;
  v20.super_class = IMDXPCEventStreamHandler;
  v4 = [(IMDXPCEventStreamHandler *)&v20 init];
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 bundleIdentifier];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v5 stringWithFormat:@"%@.%@", v7, v9];
    v11 = NSStringFromSelector(sel_queue);
    v12 = [v5 stringWithFormat:@"%@.%@", v10, v11];

    v13 = dispatch_queue_create([v12 UTF8String], 0);
    queue = v4->_queue;
    v4->_queue = v13;

    v15 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    delegateToQueue = v4->_delegateToQueue;
    v4->_delegateToQueue = v15;

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_22B6CD1A0;
    handler[3] = &unk_278703C10;
    v19 = v4;
    xpc_set_event_stream_handler(a3, MEMORY[0x277D85CD0], handler);
  }

  return v4;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMDXPCEventStreamHandler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6CD40C;
  block[3] = &unk_2787038F8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(IMDXPCEventStreamHandler *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B6CD524;
  v7[3] = &unk_278702FA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (id)queueForDelegate:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_22B4D7840;
  v16 = sub_22B4D7988;
  v17 = 0;
  v5 = [(IMDXPCEventStreamHandler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6CD6BC;
  block[3] = &unk_278702FC8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)didReceiveEventWithName:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMDXPCEventStreamHandler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6CD800;
  block[3] = &unk_2787038F8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

@end