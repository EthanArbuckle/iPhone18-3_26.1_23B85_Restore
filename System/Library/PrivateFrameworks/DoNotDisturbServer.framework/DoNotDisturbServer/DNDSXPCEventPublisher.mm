@interface DNDSXPCEventPublisher
- (DNDSXPCEventPublisher)initWithStream:(const char *)stream;
- (void)_handleEventAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor;
- (void)_queue_addSubscriberForToken:(unint64_t)token descriptor:(id)descriptor;
- (void)_queue_removeSubscriberForToken:(unint64_t)token;
- (void)_queue_sendEventWithXPCObject:(id)object;
- (void)_queue_sendPendingEvents;
- (void)broadcastEvent:(id)event;
@end

@implementation DNDSXPCEventPublisher

- (DNDSXPCEventPublisher)initWithStream:(const char *)stream
{
  v19.receiver = self;
  v19.super_class = DNDSXPCEventPublisher;
  v3 = [(DNDSXPCEventPublisher *)&v19 init];
  if (v3)
  {
    Serial = BSDispatchQueueCreateSerial();
    queue = v3->_queue;
    v3->_queue = Serial;

    v6 = v3->_queue;
    v7 = xpc_event_publisher_create();
    publisher = v3->_publisher;
    v3->_publisher = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingEvents = v3->_pendingEvents;
    v3->_pendingEvents = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    subscribers = v3->_subscribers;
    v3->_subscribers = v11;

    objc_initWeak(&location, v3);
    v13 = v3->_publisher;
    objc_copyWeak(&v17, &location);
    xpc_event_publisher_set_handler();
    v14 = v3->_publisher;
    xpc_event_publisher_set_error_handler();
    v15 = v3->_publisher;
    xpc_event_publisher_activate();
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __40__DNDSXPCEventPublisher_initWithStream___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleEventAction:a2 token:a3 descriptor:v7];
}

void __40__DNDSXPCEventPublisher_initWithStream___block_invoke_2(uint64_t a1, int a2)
{
  v3 = DNDSLogXPCEventPublisher;
  if (os_log_type_enabled(DNDSLogXPCEventPublisher, OS_LOG_TYPE_ERROR))
  {
    __40__DNDSXPCEventPublisher_initWithStream___block_invoke_2_cold_1(a2, v3);
  }
}

- (void)_handleEventAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor
{
  v23 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v9 = DNDSLogXPCEventPublisher;
  if (os_log_type_enabled(DNDSLogXPCEventPublisher, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    selfCopy = self;
    v19 = 1024;
    actionCopy = action;
    v21 = 2048;
    tokenCopy = token;
    _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_INFO, "%{public}@: Handling XPC event action %d for %llu", buf, 0x1Cu);
  }

  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__DNDSXPCEventPublisher__handleEventAction_token_descriptor___block_invoke;
  v13[3] = &unk_278F8B6F0;
  actionCopy2 = action;
  v14 = descriptorCopy;
  tokenCopy2 = token;
  v13[4] = self;
  v11 = descriptorCopy;
  dispatch_async(queue, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __61__DNDSXPCEventPublisher__handleEventAction_token_descriptor___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (v2 == 2)
  {
    v10 = *(a1 + 32);
    v11 = *MEMORY[0x277D85DE8];

    [v10 _queue_sendPendingEvents];
  }

  else if (v2 == 1)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *MEMORY[0x277D85DE8];

    [v7 _queue_removeSubscriberForToken:v8];
  }

  else if (v2)
  {
    v12 = DNDSLogXPCEventPublisher;
    if (os_log_type_enabled(DNDSLogXPCEventPublisher, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 56);
      v14 = *(a1 + 48);
      v16[0] = 67109376;
      v16[1] = v13;
      v17 = 2048;
      v18 = v14;
      _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Unexpected XPC event action %d from %llu", v16, 0x12u);
    }

    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = *MEMORY[0x277D85DE8];

    [v5 _queue_addSubscriberForToken:v3 descriptor:v4];
  }
}

- (void)_queue_addSubscriberForToken:(unint64_t)token descriptor:(id)descriptor
{
  v15 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  dispatch_assert_queue_V2(self->_queue);
  if (!descriptorCopy || MEMORY[0x24C1F4080](descriptorCopy) != MEMORY[0x277D86468])
  {
LABEL_3:
    v7 = 0;
    goto LABEL_4;
  }

  v7 = _CFXPCCreateCFObjectFromXPCObject();
  if (!v7)
  {
    v12 = DNDSLogXPCEventPublisher;
    if (os_log_type_enabled(DNDSLogXPCEventPublisher, OS_LOG_TYPE_ERROR))
    {
      [DNDSXPCEventPublisher _queue_addSubscriberForToken:v12 descriptor:?];
    }

    goto LABEL_3;
  }

LABEL_4:
  subscribers = self->_subscribers;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:token];
  [(NSMutableDictionary *)subscribers setObject:v7 forKeyedSubscript:v9];

  v10 = DNDSLogXPCEventPublisher;
  if (os_log_type_enabled(DNDSLogXPCEventPublisher, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    tokenCopy = token;
    _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Registered XPC event subscriber %llu", &v13, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeSubscriberForToken:(unint64_t)token
{
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  subscribers = self->_subscribers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:token];
  [(NSMutableDictionary *)subscribers removeObjectForKey:v6];

  v7 = DNDSLogXPCEventPublisher;
  if (os_log_type_enabled(DNDSLogXPCEventPublisher, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    tokenCopy = token;
    _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Removed XPC event subscriber %llu", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_sendPendingEvents
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = self->_pendingEvents;
  pendingEvents = self->_pendingEvents;
  self->_pendingEvents = 0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v3;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(DNDSXPCEventPublisher *)self _queue_sendEventWithXPCObject:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_sendEventWithXPCObject:(id)object
{
  v31 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  dispatch_assert_queue_V2(self->_queue);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [(NSMutableDictionary *)self->_subscribers allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v23;
    *&v7 = 134218240;
    v21 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        publisher = self->_publisher;
        [v11 intValue];
        v13 = xpc_event_publisher_fire();
        v14 = DNDSLogXPCEventPublisher;
        if (v13)
        {
          v15 = v13;
          if (os_log_type_enabled(DNDSLogXPCEventPublisher, OS_LOG_TYPE_ERROR))
          {
            v16 = v14;
            intValue = [v11 intValue];
            *buf = v21;
            v27 = intValue;
            v28 = 1024;
            v29 = v15;
            _os_log_error_impl(&dword_24912E000, v16, OS_LOG_TYPE_ERROR, "Failed to publish XPC event for %ld with error: %d", buf, 0x12u);
          }
        }

        else if (os_log_type_enabled(DNDSLogXPCEventPublisher, OS_LOG_TYPE_INFO))
        {
          v18 = v14;
          intValue2 = [v11 intValue];
          *buf = 134217984;
          v27 = intValue2;
          _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_INFO, "Published XPC event for %ld", buf, 0xCu);
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)broadcastEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__DNDSXPCEventPublisher_broadcastEvent___block_invoke;
  v7[3] = &unk_278F89F48;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_sync(queue, v7);
}

uint64_t __40__DNDSXPCEventPublisher_broadcastEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2[3])
  {
    return [v2[3] addObject:v3];
  }

  else
  {
    return [v2 _queue_sendEventWithXPCObject:v3];
  }
}

void __40__DNDSXPCEventPublisher_initWithStream___block_invoke_2_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Received XPC event error %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end