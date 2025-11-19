@interface IPXPCEventStateUpdateStreamSink
- (IPXPCEventStateUpdateStreamSink)initWithQueue:(id)a3 streamName:(id)a4;
- (void)_queue_processPublisherEventAction:(unsigned int)a3 token:(unint64_t)a4 descriptor:(id)a5;
- (void)resume;
- (void)sendUpdateMessage:(id)a3;
- (void)subscriber:(id)a3 firePayload:(id)a4;
- (void)subscriber:(id)a3 firePayload:(id)a4 withReply:(id)a5;
- (void)subscriberFailedHandshake:(id)a3;
@end

@implementation IPXPCEventStateUpdateStreamSink

- (IPXPCEventStateUpdateStreamSink)initWithQueue:(id)a3 streamName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = IPXPCEventStateUpdateStreamSink;
  v9 = [(IPXPCEventStateUpdateStreamSink *)&v22 init];
  if (v9)
  {
    v10 = [v8 copy];
    streamName = v9->_streamName;
    v9->_streamName = v10;

    objc_storeStrong(&v9->_queue, a3);
    [v8 UTF8String];
    queue = v9->_queue;
    v13 = xpc_event_publisher_create();
    publisher = v9->_publisher;
    v9->_publisher = v13;

    objc_initWeak(&location, v9);
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    subscribers = v9->_subscribers;
    v9->_subscribers = v15;

    v17 = v9->_publisher;
    objc_copyWeak(&v20, &location);
    xpc_event_publisher_set_handler();
    v18 = v9->_publisher;
    xpc_event_publisher_set_error_handler();
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __60__IPXPCEventStateUpdateStreamSink_initWithQueue_streamName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_processPublisherEventAction:a2 token:a3 descriptor:v7];
}

void __60__IPXPCEventStateUpdateStreamSink_initWithQueue_streamName___block_invoke_2(uint64_t a1, int a2)
{
  v3 = _IPServerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __60__IPXPCEventStateUpdateStreamSink_initWithQueue_streamName___block_invoke_2_cold_1(a2, v3);
  }
}

- (void)_queue_processPublisherEventAction:(unsigned int)a3 token:(unint64_t)a4 descriptor:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = _IPServerLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = IPXPCCopyDescription(v8);
    v22 = 134218498;
    v23 = a3;
    v24 = 2048;
    v25 = a4;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_254C69000, v9, OS_LOG_TYPE_DEFAULT, "event action: %lld token: %llu descriptor: %@", &v22, 0x20u);
  }

  if (a3 == 1)
  {
    subscribers = self->_subscribers;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
    [(NSMutableDictionary *)subscribers setObject:0 forKeyedSubscript:v17];
LABEL_11:

    goto LABEL_12;
  }

  if (!a3)
  {
    v11 = self->_subscribers;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
    v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];

    if (v13)
    {
      v14 = _IPServerLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [IPXPCEventStateUpdateStreamSink _queue_processPublisherEventAction:a4 token:v14 descriptor:?];
      }

      v15 = self->_subscribers;
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
      [(NSMutableDictionary *)v15 setObject:0 forKeyedSubscript:v16];
    }

    v17 = [[IPXPCEventStateUpdateStreamSubscriber alloc] initWithToken:a4];
    [(IPXPCEventStateUpdateStreamSubscriber *)v17 setDelegate:self];
    v18 = self->_subscribers;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
    [(NSMutableDictionary *)v18 setObject:v17 forKeyedSubscript:v19];

    [(IPXPCEventStateUpdateStreamSubscriber *)v17 beginHandshake];
    goto LABEL_11;
  }

LABEL_12:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)resume
{
  v9 = *MEMORY[0x277D85DE8];
  self->_resumed = 1;
  v3 = _IPServerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    streamName = self->_streamName;
    v7 = 138412290;
    v8 = streamName;
    _os_log_impl(&dword_254C69000, v3, OS_LOG_TYPE_DEFAULT, "Activating publisher for %@", &v7, 0xCu);
  }

  publisher = self->_publisher;
  xpc_event_publisher_activate();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendUpdateMessage:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__IPXPCEventStateUpdateStreamSink_sendUpdateMessage___block_invoke;
  v7[3] = &unk_2797B1E00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __53__IPXPCEventStateUpdateStreamSink_sendUpdateMessage___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 40) allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) sendOrEnqueueUpdateMessage:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)subscriber:(id)a3 firePayload:(id)a4 withReply:(id)a5
{
  publisher = self->_publisher;
  v9 = a5;
  v11 = a4;
  [a3 token];
  queue = self->_queue;
  xpc_event_publisher_fire_with_reply();
}

- (void)subscriber:(id)a3 firePayload:(id)a4
{
  publisher = self->_publisher;
  v6 = a4;
  [a3 token];
  xpc_event_publisher_fire();
}

- (void)subscriberFailedHandshake:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _IPServerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = [v4 token];
    _os_log_impl(&dword_254C69000, v5, OS_LOG_TYPE_DEFAULT, "Subscriber for token %llu failed handshake! Removing tracking.", &v9, 0xCu);
  }

  subscribers = self->_subscribers;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "token")}];
  [(NSMutableDictionary *)subscribers setObject:0 forKeyedSubscript:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __60__IPXPCEventStateUpdateStreamSink_initWithQueue_streamName___block_invoke_2_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_254C69000, a2, OS_LOG_TYPE_FAULT, "Error on XPC event publisher! %{darwin.errno}d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_queue_processPublisherEventAction:(uint64_t)a1 token:(NSObject *)a2 descriptor:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_254C69000, a2, OS_LOG_TYPE_FAULT, "already have a client with token %llu!", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end