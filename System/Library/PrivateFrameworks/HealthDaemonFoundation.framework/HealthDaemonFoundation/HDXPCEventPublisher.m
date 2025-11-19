@interface HDXPCEventPublisher
- (HDXPCEventPublisher)initWithStream:(const char *)a3 entitlement:(const char *)a4;
- (void)_handleEventAction:(uint64_t)a3 token:(void *)a4 descriptor:;
- (void)_queue_addSubscriberForToken:(void *)a3 descriptor:;
- (void)_queue_removeSubscriberForToken:(uint64_t)a1;
- (void)_queue_sendEventWithXPCObject:(uint64_t)a1;
- (void)_queue_sendPendingEvents;
- (void)broadcastEvent:(id)a3;
@end

@implementation HDXPCEventPublisher

- (HDXPCEventPublisher)initWithStream:(const char *)a3 entitlement:(const char *)a4
{
  v23.receiver = self;
  v23.super_class = HDXPCEventPublisher;
  v5 = [(HDXPCEventPublisher *)&v23 init];
  if (v5)
  {
    v6 = HKCreateSerialDispatchQueue();
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingEvents = v5->_pendingEvents;
    v5->_pendingEvents = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingSubscribers = v5->_pendingSubscribers;
    v5->_pendingSubscribers = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    subscribers = v5->_subscribers;
    v5->_subscribers = v12;

    v5->_requiredEntitlement = a4;
    if ((HDIsUnitTesting() & 1) == 0)
    {
      v14 = v5->_queue;
      v15 = xpc_event_publisher_create();
      publisher = v5->_publisher;
      v5->_publisher = v15;

      objc_initWeak(&location, v5);
      v17 = v5->_publisher;
      objc_copyWeak(&v21, &location);
      xpc_event_publisher_set_handler();
      v18 = v5->_publisher;
      xpc_event_publisher_set_error_handler();
      v19 = v5->_publisher;
      xpc_event_publisher_activate();
      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  return v5;
}

void __50__HDXPCEventPublisher_initWithStream_entitlement___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDXPCEventPublisher *)WeakRetained _handleEventAction:a2 token:a3 descriptor:v7];
}

void __50__HDXPCEventPublisher_initWithStream_entitlement___block_invoke_2(uint64_t a1, int a2)
{
  _HKInitializeLogging();
  v3 = HKLogInfrastructure();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__HDXPCEventPublisher_initWithStream_entitlement___block_invoke_2_cold_1(a2, v3);
  }
}

void __59__HDXPCEventPublisher__handleEventAction_token_descriptor___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (v2 == 2)
  {
    v10 = *(a1 + 32);
    v11 = *MEMORY[0x277D85DE8];

    [(HDXPCEventPublisher *)v10 _queue_sendPendingEvents];
  }

  else if (v2 == 1)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *MEMORY[0x277D85DE8];

    [(HDXPCEventPublisher *)v7 _queue_removeSubscriberForToken:v8];
  }

  else if (v2)
  {
    _HKInitializeLogging();
    v3 = HKLogInfrastructure();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 56);
      v5 = *(a1 + 48);
      v16[0] = 67109376;
      v16[1] = v4;
      v17 = 2048;
      v18 = v5;
      _os_log_impl(&dword_25156C000, v3, OS_LOG_TYPE_DEFAULT, "Unexpected XPC event action %d from %llu", v16, 0x12u);
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v13 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14 = *(a1 + 32);
    v15 = *MEMORY[0x277D85DE8];

    [(HDXPCEventPublisher *)v14 _queue_addSubscriberForToken:v12 descriptor:v13];
  }
}

void __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke(void *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v6 = HKLogInfrastructure();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = a1[6];
      *buf = 134217984;
      *&buf[4] = v7;
      _os_log_impl(&dword_25156C000, v6, OS_LOG_TYPE_INFO, "Received XPC event reply from %llu", buf, 0xCu);
    }
  }

  v8 = a1 + 6;
  v9 = *(a1[4] + 32);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  LOBYTE(v9) = [v9 containsObject:v10];

  if (v9)
  {
    v11 = *(a1[4] + 32);
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
    [v11 removeObject:v12];

    v13 = MEMORY[0x25307B1F0](v3);
    if (v13 != MEMORY[0x277D86468])
    {
      v14 = v13;
      v15 = MEMORY[0x277D86480];
      _HKInitializeLogging();
      v16 = HKLogInfrastructure();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (v14 == v15)
      {
        if (v17)
        {
          __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke_cold_3(v8, v3);
        }
      }

      else if (v17)
      {
        __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke_cold_2(v8, v14);
      }

LABEL_19:

      goto LABEL_27;
    }

    *buf = 0u;
    v38 = 0u;
    xpc_dictionary_get_audit_token();
    v20 = xpc_copy_code_signing_identity_for_token();
    v21 = *(a1[4] + 48);
    v22 = xpc_copy_entitlement_for_token();
    v23 = v22;
    if (v22)
    {
      if (xpc_BOOL_get_value(v22))
      {
        v24 = [MEMORY[0x277CBEAC0] hd_dictionaryFromXPCObject:a1[5]];
        v25 = *(a1[4] + 40);
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
        [v25 setObject:v24 forKeyedSubscript:v26];

        _HKInitializeLogging();
        v27 = HKLogInfrastructure();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *v8;
          v33 = 136315394;
          v34 = v20;
          v35 = 2048;
          v36 = v28;
          v29 = "Registered XPC event subscriber %s:%llu";
LABEL_25:
          _os_log_impl(&dword_25156C000, v27, OS_LOG_TYPE_DEFAULT, v29, &v33, 0x16u);
          goto LABEL_26;
        }

        goto LABEL_26;
      }
    }

    else
    {
      _HKInitializeLogging();
      v30 = HKLogInfrastructure();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke_cold_4(v20, v8, v30);
      }
    }

    _HKInitializeLogging();
    v27 = HKLogInfrastructure();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *v8;
      v33 = 136315394;
      v34 = v20;
      v35 = 2048;
      v36 = v31;
      v29 = "XPC event client %s:%llu is not entitled for subscription";
      goto LABEL_25;
    }

LABEL_26:

    free(v20);
    goto LABEL_27;
  }

  _HKInitializeLogging();
  v18 = HKLogInfrastructure();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

  if (v19)
  {
    v16 = HKLogInfrastructure();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke_cold_1(a1 + 6, v16);
    }

    goto LABEL_19;
  }

LABEL_27:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)broadcastEvent:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HDXPCEventPublisher_broadcastEvent___block_invoke;
  v7[3] = &unk_2796BDA28;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __38__HDXPCEventPublisher_broadcastEvent___block_invoke(uint64_t a1)
{
  xpc_dictionary_set_BOOL(*(a1 + 32), *MEMORY[0x277CCCF80], 1);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v2 + 24))
  {
    v4 = *(v2 + 24);

    [v4 addObject:v3];
  }

  else
  {
    v5 = *(a1 + 32);

    [(HDXPCEventPublisher *)v2 _queue_sendEventWithXPCObject:v5];
  }
}

- (void)_handleEventAction:(uint64_t)a3 token:(void *)a4 descriptor:
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (a1)
  {
    _HKInitializeLogging();
    v8 = HKLogInfrastructure();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      v10 = HKLogInfrastructure();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        v18 = a1;
        v19 = 1024;
        v20 = a2;
        v21 = 2048;
        v22 = a3;
        _os_log_impl(&dword_25156C000, v10, OS_LOG_TYPE_INFO, "%{public}@: Handling XPC event action %d for %llu", buf, 0x1Cu);
      }
    }

    v11 = *(a1 + 8);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__HDXPCEventPublisher__handleEventAction_token_descriptor___block_invoke;
    v13[3] = &unk_2796BDB30;
    v16 = a2;
    v13[4] = a1;
    v15 = a3;
    v14 = v7;
    dispatch_async(v11, v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_queue_addSubscriberForToken:(void *)a3 descriptor:
{
  v5 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    [v6 addObject:v7];

    v8 = xpc_dictionary_create(0, 0, 0);
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = v5;
    xpc_event_publisher_fire_with_reply();
  }
}

- (void)_queue_removeSubscriberForToken:(uint64_t)a1
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    [v4 removeObject:v5];

    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    [v6 removeObjectForKey:v7];

    _HKInitializeLogging();
    v8 = HKLogInfrastructure();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = a2;
      _os_log_impl(&dword_25156C000, v8, OS_LOG_TYPE_DEFAULT, "Removed XPC event subscriber %llu", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_sendPendingEvents
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v2 = *(a1 + 24);
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(HDXPCEventPublisher *)a1 _queue_sendEventWithXPCObject:?];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_sendEventWithXPCObject:(uint64_t)a1
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [*(a1 + 40) allKeys];
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (!v5)
    {
      goto LABEL_17;
    }

    v7 = v5;
    v8 = *v22;
    *&v6 = 134218240;
    v20 = v6;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v11 = *(a1 + 16);
        [v10 intValue];
        v12 = xpc_event_publisher_fire();
        _HKInitializeLogging();
        v13 = HKLogInfrastructure();
        v14 = v13;
        if (v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v17 = [v10 intValue];
            *buf = v20;
            v26 = v17;
            v27 = 1024;
            v28 = v12;
            _os_log_error_impl(&dword_25156C000, v14, OS_LOG_TYPE_ERROR, "Failed to publish XPC event for %ld with error: %d", buf, 0x12u);
          }

LABEL_10:

          goto LABEL_11;
        }

        v15 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

        if (v15)
        {
          v14 = HKLogInfrastructure();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v16 = [v10 intValue];
            *buf = 134217984;
            v26 = v16;
            _os_log_impl(&dword_25156C000, v14, OS_LOG_TYPE_INFO, "Published XPC event for %ld", buf, 0xCu);
          }

          goto LABEL_10;
        }

LABEL_11:
        ++v9;
      }

      while (v7 != v9);
      v18 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
      v7 = v18;
      if (!v18)
      {
LABEL_17:

        break;
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __50__HDXPCEventPublisher_initWithStream_entitlement___block_invoke_2_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_25156C000, a2, OS_LOG_TYPE_ERROR, "Received XPC event error %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_25156C000, a2, OS_LOG_TYPE_DEBUG, "XPC event client %llu unsubscribed before replying to ping", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke_cold_2(uint64_t *a1, xpc_type_t type)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  xpc_type_get_name(type);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_25156C000, v3, v4, "XPC event client %llu replied with unexpected type %s", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke_cold_3(uint64_t *a1, xpc_object_t xdict)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  xpc_dictionary_get_string(xdict, *MEMORY[0x277D86400]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_25156C000, v3, v4, "XPC event client %llu replied with error: %s", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void __63__HDXPCEventPublisher__queue_addSubscriberForToken_descriptor___block_invoke_cold_4(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 136315394;
  v6 = a1;
  v7 = 2048;
  v8 = v3;
  _os_log_error_impl(&dword_25156C000, log, OS_LOG_TYPE_ERROR, "XPC event entitlement not found for %s:%llu", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end