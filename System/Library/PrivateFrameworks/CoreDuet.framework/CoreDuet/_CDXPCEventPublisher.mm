@interface _CDXPCEventPublisher
+ (_CDXPCEventPublisher)eventPublisherWithStreamName:(const char *)name delegate:(id)delegate queue:(id)queue log:(id)log;
+ (_CDXPCEventPublisher)eventPublisherWithStreamName:(const char *)name delegate:(id)delegate queue:(id)queue log:(id)log os_variant_diagnostic_subsystem:(const char *)os_variant_diagnostic_subsystem;
- (_CDXPCEventPublisher)initWithStreamName:(id)name delegate:(id)delegate queue:(id)queue log:(id)log os_variant_diagnostic_subsystem:(const char *)os_variant_diagnostic_subsystem;
- (void)activatePublisherWithStreamName:(const char *)name;
- (void)handleEventWithAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor;
- (void)removeToken:(unint64_t)token;
- (void)sendEvent:(id)event toSubscriber:(id)subscriber handler:(id)handler;
- (void)sendEvent:(id)event toSubscriber:(id)subscriber replyHandler:(id)handler;
@end

@implementation _CDXPCEventPublisher

+ (_CDXPCEventPublisher)eventPublisherWithStreamName:(const char *)name delegate:(id)delegate queue:(id)queue log:(id)log os_variant_diagnostic_subsystem:(const char *)os_variant_diagnostic_subsystem
{
  logCopy = log;
  queueCopy = queue;
  delegateCopy = delegate;
  v14 = objc_alloc(objc_opt_class());
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:name];
  v16 = [v14 initWithStreamName:v15 delegate:delegateCopy queue:queueCopy log:logCopy os_variant_diagnostic_subsystem:os_variant_diagnostic_subsystem];

  [v16 activatePublisherWithStreamName:name];

  return v16;
}

+ (_CDXPCEventPublisher)eventPublisherWithStreamName:(const char *)name delegate:(id)delegate queue:(id)queue log:(id)log
{
  logCopy = log;
  queueCopy = queue;
  delegateCopy = delegate;
  v12 = objc_alloc(objc_opt_class());
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:name];
  v14 = [v12 initWithStreamName:v13 delegate:delegateCopy queue:queueCopy log:logCopy os_variant_diagnostic_subsystem:0];

  [v14 activatePublisherWithStreamName:name];

  return v14;
}

- (_CDXPCEventPublisher)initWithStreamName:(id)name delegate:(id)delegate queue:(id)queue log:(id)log os_variant_diagnostic_subsystem:(const char *)os_variant_diagnostic_subsystem
{
  nameCopy = name;
  delegateCopy = delegate;
  queueCopy = queue;
  logCopy = log;
  v22.receiver = self;
  v22.super_class = _CDXPCEventPublisher;
  v17 = [(_CDXPCEventPublisher *)&v22 init];
  if (v17)
  {
    v18 = objc_opt_new();
    pendingSendEvents = v17->_pendingSendEvents;
    v17->_pendingSendEvents = v18;

    objc_storeStrong(&v17->_streamName, name);
    objc_storeStrong(&v17->_delegate, delegate);
    objc_storeStrong(&v17->_queue, queue);
    objc_storeStrong(&v17->_log, log);
    v20 = "com.apple.CoreDuet";
    if (!os_variant_diagnostic_subsystem)
    {
      v20 = 0;
    }

    v17->_os_variant_diagnostic_subsystem = v20;
  }

  return v17;
}

- (void)activatePublisherWithStreamName:(const char *)name
{
  queue = self->_queue;
  v6 = xpc_event_publisher_create();
  publisher = self->_publisher;
  self->_publisher = v6;

  if (self->_publisher)
  {
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56___CDXPCEventPublisher_activatePublisherWithStreamName___block_invoke;
    v13[3] = &unk_1E7369EE8;
    objc_copyWeak(&v14, &location);
    v8 = MEMORY[0x193B00C50](v13);
    v9 = self->_publisher;
    xpc_event_publisher_set_handler();
    v10 = self->_publisher;
    xpc_event_publisher_set_error_handler();
    v11 = self->_publisher;
    xpc_event_publisher_activate();

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(_CDXPCEventPublisher *)name activatePublisherWithStreamName:?];
    }
  }
}

- (void)handleEventWithAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor
{
  v37 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    if (descriptorCopy)
    {
      v10 = MEMORY[0x193B01150](descriptorCopy);
      v11 = self->_log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        if (!v10)
        {
          goto LABEL_7;
        }

        goto LABEL_5;
      }

      streamName = self->_streamName;
      *buf = 138544130;
      v34 = streamName;
      v35 = 1024;
      *v36 = action;
      *&v36[4] = 2048;
      *&v36[6] = token;
      *&v36[14] = 2080;
      *&v36[16] = v10;
      _os_log_debug_impl(&dword_191750000, v11, OS_LOG_TYPE_DEBUG, "Publisher for stream %{public}@ received xpc event with action %d and token %llu: %s", buf, 0x26u);
      if (v10)
      {
LABEL_5:
        free(v10);
      }
    }

    else
    {
      v27 = self->_streamName;
      *buf = 138543874;
      v34 = v27;
      v35 = 1024;
      *v36 = action;
      *&v36[4] = 2048;
      *&v36[6] = token;
      _os_log_debug_impl(&dword_191750000, log, OS_LOG_TYPE_DEBUG, "Publisher for stream %{public}@ received xpc event with action %d and token %llu", buf, 0x1Cu);
    }
  }

LABEL_7:
  if (action)
  {
    if (action == 1)
    {
      v21 = self->_log;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [_CDXPCEventPublisher handleEventWithAction:token token:v21 descriptor:?];
      }

      [(_CDXPCEventPublisher *)self removeToken:token];
    }

    else if (action == 2)
    {
      v12 = self->_log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [_CDXPCEventPublisher handleEventWithAction:v12 token:? descriptor:?];
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      pendingSendEvents = selfCopy->_pendingSendEvents;
      if (pendingSendEvents)
      {
        v15 = pendingSendEvents;
        v16 = selfCopy->_pendingSendEvents;
        selfCopy->_pendingSendEvents = 0;

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v17 = v15;
        v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v18)
        {
          v19 = *v29;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v29 != v19)
              {
                objc_enumerationMutation(v17);
              }

              (*(*(*(&v28 + 1) + 8 * i) + 16))(*(*(&v28 + 1) + 8 * i));
            }

            v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v18);
        }
      }

      objc_sync_exit(selfCopy);
    }
  }

  else
  {
    v22 = getuid();
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v26 = self->_streamName;
      *buf = 138543874;
      v34 = v26;
      v35 = 2048;
      *v36 = v22;
      *&v36[8] = 2048;
      *&v36[10] = token;
      _os_log_debug_impl(&dword_191750000, v23, OS_LOG_TYPE_DEBUG, "Publisher for stream %{public}@ received new subscription for uid %lld with token %llu", buf, 0x20u);
    }

    [(_CDXPCEventPublisher *)self addToken:token descriptor:descriptorCopy userID:v22];
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)sendEvent:(id)event toSubscriber:(id)subscriber handler:(id)handler
{
  v46 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  subscriberCopy = subscriber;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_pendingSendEvents)
  {
    v12 = selfCopy->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [_CDXPCCodecs messageTypeFromEvent:eventCopy];
      v14 = v13;
      v15 = @"unknown";
      if (v13)
      {
        v15 = v13;
      }

      *buf = 138412290;
      v39 = v15;
      _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_INFO, "Pending %@ sendEvent until barrier is received.", buf, 0xCu);
    }

    objc_initWeak(buf, selfCopy);
    pendingSendEvents = selfCopy->_pendingSendEvents;
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __55___CDXPCEventPublisher_sendEvent_toSubscriber_handler___block_invoke;
    v33 = &unk_1E73675A8;
    objc_copyWeak(&v37, buf);
    v34 = eventCopy;
    v35 = subscriberCopy;
    v36 = handlerCopy;
    v17 = MEMORY[0x193B00C50](&v30);
    [(NSMutableArray *)pendingSendEvents addObject:v17, v30, v31, v32, v33];

    objc_destroyWeak(&v37);
    objc_destroyWeak(buf);
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
    {
      os_variant_diagnostic_subsystem = selfCopy->_os_variant_diagnostic_subsystem;
      if (os_variant_has_internal_diagnostics())
      {
        v19 = MEMORY[0x193B01150](eventCopy);
        log = selfCopy->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          streamName = selfCopy->_streamName;
          v27 = log;
          *buf = 138544130;
          v39 = streamName;
          v40 = 2114;
          v41 = subscriberCopy;
          v42 = 1024;
          count = xpc_dictionary_get_count(eventCopy);
          v44 = 2080;
          v45 = v19;
          _os_log_debug_impl(&dword_191750000, v27, OS_LOG_TYPE_DEBUG, "Sending event on stream %{public}@ to subscriber %{public}@ with %d keys: %s", buf, 0x26u);
        }

        if (v19)
        {
          free(v19);
        }
      }

      else
      {
        v21 = selfCopy->_log;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v28 = selfCopy->_streamName;
          v29 = v21;
          *buf = 138543874;
          v39 = v28;
          v40 = 2114;
          v41 = subscriberCopy;
          v42 = 1024;
          count = xpc_dictionary_get_count(eventCopy);
          _os_log_debug_impl(&dword_191750000, v29, OS_LOG_TYPE_DEBUG, "Sending event on stream %{public}@ to subscriber %{public}@ with %d keys", buf, 0x1Cu);
        }
      }
    }

    [subscriberCopy token];
    publisher = selfCopy->_publisher;
    if (xpc_event_publisher_fire())
    {
      v23 = selfCopy->_log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [_CDXPCEventPublisher sendEvent:selfCopy toSubscriber:v23 handler:?];
      }

      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduetd" code:3 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v24);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)sendEvent:(id)event toSubscriber:(id)subscriber replyHandler:(id)handler
{
  v46[2] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  subscriberCopy = subscriber;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_pendingSendEvents)
  {
    v12 = selfCopy->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [_CDXPCCodecs messageTypeFromEvent:eventCopy];
      v14 = v13;
      v15 = @"unknown";
      if (v13)
      {
        v15 = v13;
      }

      *buf = 138412290;
      v42 = v15;
      _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_DEFAULT, "Pending %@ sendEvent until barrier is received.", buf, 0xCu);
    }

    objc_initWeak(buf, selfCopy);
    pendingSendEvents = selfCopy->_pendingSendEvents;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __60___CDXPCEventPublisher_sendEvent_toSubscriber_replyHandler___block_invoke;
    v36[3] = &unk_1E73675A8;
    objc_copyWeak(&v40, buf);
    v37 = eventCopy;
    v38 = subscriberCopy;
    v39 = handlerCopy;
    v17 = MEMORY[0x193B00C50](v36);
    [(NSMutableArray *)pendingSendEvents addObject:v17];

    objc_destroyWeak(&v40);
    objc_destroyWeak(buf);
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_DEBUG))
    {
      os_variant_diagnostic_subsystem = selfCopy->_os_variant_diagnostic_subsystem;
      if (os_variant_has_internal_diagnostics())
      {
        v19 = MEMORY[0x193B01150](eventCopy);
        log = selfCopy->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          streamName = selfCopy->_streamName;
          v33 = log;
          *buf = 138544130;
          v42 = streamName;
          v43 = 2114;
          v44 = subscriberCopy;
          v45 = 1024;
          LODWORD(v46[0]) = xpc_dictionary_get_count(eventCopy);
          WORD2(v46[0]) = 2080;
          *(v46 + 6) = v19;
          _os_log_debug_impl(&dword_191750000, v33, OS_LOG_TYPE_DEBUG, "Sending event on stream %{public}@ to subscriber %{public}@ with %d keys: %s", buf, 0x26u);
        }

        if (v19)
        {
          free(v19);
        }
      }

      else
      {
        v21 = selfCopy->_log;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v34 = selfCopy->_streamName;
          v35 = v21;
          *buf = 138543874;
          v42 = v34;
          v43 = 2114;
          v44 = subscriberCopy;
          v45 = 1024;
          LODWORD(v46[0]) = xpc_dictionary_get_count(eventCopy);
          _os_log_debug_impl(&dword_191750000, v35, OS_LOG_TYPE_DEBUG, "Sending event on stream %{public}@ to subscriber %{public}@ with %d keys", buf, 0x1Cu);
        }
      }
    }

    [subscriberCopy token];
    publisher = selfCopy->_publisher;
    queue = selfCopy->_queue;
    v24 = subscriberCopy;
    v25 = handlerCopy;
    if (xpc_event_publisher_fire_with_reply())
    {
      v26 = selfCopy->_log;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v29 = selfCopy->_streamName;
        v30 = v26;
        v31 = xpc_strerror();
        *buf = 138543874;
        v42 = v29;
        v43 = 2112;
        v44 = v24;
        v45 = 2080;
        v46[0] = v31;
        _os_log_error_impl(&dword_191750000, v30, OS_LOG_TYPE_ERROR, "Failed to send event on stream %{public}@ to subscriber %@: %s", buf, 0x20u);
      }

      v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduetd" code:3 userInfo:0];
      v25[2](v25, 0, v27);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)removeToken:(unint64_t)token
{
  if (self->_delegate)
  {
    queue = self->_queue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __36___CDXPCEventPublisher_removeToken___block_invoke;
    v4[3] = &unk_1E7368B18;
    v4[4] = self;
    v4[5] = token;
    dispatch_async(queue, v4);
  }
}

- (void)activatePublisherWithStreamName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136446210;
  v4 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Failed to create publisher for stream %{public}s", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)handleEventWithAction:(uint64_t)a1 token:(uint64_t)a2 descriptor:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v5 = 138543618;
  v6 = v3;
  v7 = 2048;
  v8 = a2;
  _os_log_debug_impl(&dword_191750000, log, OS_LOG_TYPE_DEBUG, "Publisher for stream %{public}@ removing subscription with token %llu", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)handleEventWithAction:(uint64_t)a1 token:(NSObject *)a2 descriptor:.cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v4 = 138543362;
  v5 = v2;
  _os_log_debug_impl(&dword_191750000, a2, OS_LOG_TYPE_DEBUG, "Publisher for stream %{public}@ received initial barrier", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)sendEvent:(uint64_t)a1 toSubscriber:(void *)a2 handler:.cold.1(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = a2;
  xpc_strerror();
  OUTLINED_FUNCTION_0_27();
  _os_log_error_impl(&dword_191750000, v3, OS_LOG_TYPE_ERROR, "Failed to send event to stream %{public}@: %s", v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

@end