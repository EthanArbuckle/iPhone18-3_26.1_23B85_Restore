@interface _CDInteractionStoreNotifier
+ (_CDInteractionStoreNotifier)sharedInstance;
- (_CDInteractionStoreNotifier)init;
- (id)filterInteractionsForUser:(id)user;
- (void)addSubscriber:(id)subscriber;
- (void)dealloc;
- (void)deleteAll;
- (void)deleted:(id)deleted;
- (void)handleXPCNotificationEvent:(id)event;
- (void)postPackedMechanisms:(unint64_t)mechanisms;
- (void)publishDeletedXPCEvent:(id)event;
- (void)publishRecordedXPCEvent:(id)event;
- (void)recorded:(id)recorded;
- (void)removeSubscriberWithToken:(unint64_t)token streamName:(id)name;
- (void)suspend;
@end

@implementation _CDInteractionStoreNotifier

+ (_CDInteractionStoreNotifier)sharedInstance
{
  if (sharedInstance__pasOnceToken2_0 != -1)
  {
    +[_CDInteractionStoreNotifier sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_3;

  return v3;
}

- (_CDInteractionStoreNotifier)init
{
  v32.receiver = self;
  v32.super_class = _CDInteractionStoreNotifier;
  v2 = [(_CDInteractionStoreNotifier *)&v32 init];
  if (v2)
  {
    if (notify_register_check([@"PSStoreChangedNotificationInternal" UTF8String], &v2->_notifierToken))
    {
      v3 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [_CDInteractionStoreNotifier init];
      }
    }

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    uTF8String = [v5 UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(uTF8String, v7);
    queue = v2->_queue;
    v2->_queue = v8;

    LODWORD(uTF8String) = getuid();
    v2->_isRootProcess = uTF8String == 0;
    v10 = +[_CDLogging interactionChannel];
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (uTF8String)
    {
      if (v11)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_191750000, v10, OS_LOG_TYPE_DEFAULT, "Setting up interaction XPC event handler", buf, 2u);
      }

      objc_initWeak(buf, v2);
      v12 = v2->_queue;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __35___CDInteractionStoreNotifier_init__block_invoke;
      handler[3] = &unk_1E7369818;
      objc_copyWeak(&v30, buf);
      xpc_set_event_stream_handler("com.apple.coreduetinteraction.interaction-recorded", v12, handler);
      v13 = v2->_queue;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __35___CDInteractionStoreNotifier_init__block_invoke_2;
      v27[3] = &unk_1E7369818;
      objc_copyWeak(&v28, buf);
      xpc_set_event_stream_handler("com.apple.coreduetinteraction.interaction-deleted", v13, v27);
      objc_destroyWeak(&v28);
      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v11)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_191750000, v10, OS_LOG_TYPE_DEFAULT, "Setting up interaction XPC event publisher", buf, 2u);
      }

      v14 = v2->_queue;
      v15 = +[_CDLogging interactionChannel];
      v16 = [_CDXPCEventPublisher eventPublisherWithStreamName:"com.apple.coreduetinteraction.interaction-recorded" delegate:v2 queue:v14 log:v15];
      interactionRecordedEventPublisher = v2->_interactionRecordedEventPublisher;
      v2->_interactionRecordedEventPublisher = v16;

      v18 = v2->_queue;
      v19 = +[_CDLogging interactionChannel];
      v20 = [_CDXPCEventPublisher eventPublisherWithStreamName:"com.apple.coreduetinteraction.interaction-deleted" delegate:v2 queue:v18 log:v19];
      interactionDeletedEventPublisher = v2->_interactionDeletedEventPublisher;
      v2->_interactionDeletedEventPublisher = v20;

      v22 = objc_opt_new();
      interactionStoreRecordedEventSubscribersByToken = v2->_interactionStoreRecordedEventSubscribersByToken;
      v2->_interactionStoreRecordedEventSubscribersByToken = v22;

      v24 = objc_opt_new();
      interactionStoreDeletedEventSubscribersByToken = v2->_interactionStoreDeletedEventSubscribersByToken;
      v2->_interactionStoreDeletedEventSubscribersByToken = v24;
    }
  }

  return v2;
}

- (void)dealloc
{
  notifierToken = self->_notifierToken;
  if (notifierToken)
  {
    notify_cancel(notifierToken);
  }

  v4.receiver = self;
  v4.super_class = _CDInteractionStoreNotifier;
  [(_CDInteractionStoreNotifier *)&v4 dealloc];
}

- (void)postPackedMechanisms:(unint64_t)mechanisms
{
  if (notify_set_state(self->_notifierToken, mechanisms))
  {
    v3 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [_CDInteractionStoreNotifier postPackedMechanisms:];
    }
  }

  notify_post([@"PSStoreChangedNotificationInternal" UTF8String]);
}

- (id)filterInteractionsForUser:(id)user
{
  userCopy = user;
  v5 = userCopy;
  if (self->_isRootProcess)
  {
    v6 = userCopy;
  }

  else
  {
    v6 = [userCopy _pas_filteredArrayWithTest:&__block_literal_global_39_1];
  }

  v7 = v6;

  return v7;
}

- (void)recorded:(id)recorded
{
  recordedCopy = recorded;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40___CDInteractionStoreNotifier_recorded___block_invoke;
  v11[3] = &unk_1E7367710;
  v12 = recordedCopy;
  selfCopy = self;
  v6 = v11;
  v7 = queue;
  v8 = recordedCopy;
  v9 = os_transaction_create();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_6;
  block[3] = &unk_1E7367818;
  v15 = v9;
  v16 = v6;
  v10 = v9;
  dispatch_async(v7, block);
}

- (void)deleted:(id)deleted
{
  deletedCopy = deleted;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39___CDInteractionStoreNotifier_deleted___block_invoke;
  v11[3] = &unk_1E7367710;
  v12 = deletedCopy;
  selfCopy = self;
  v6 = v11;
  v7 = queue;
  v8 = deletedCopy;
  v9 = os_transaction_create();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_6;
  block[3] = &unk_1E7367818;
  v15 = v9;
  v16 = v6;
  v10 = v9;
  dispatch_async(v7, block);
}

- (void)deleteAll
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_CDInteractionStoreDeleteAllInteractionsNotification" object:0 userInfo:0];

  defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter2 postNotificationName:@"_CDInteractionStoreDeleteAllInteractionsNotification" object:0 userInfo:0];
}

- (void)suspend
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___CDInteractionStoreNotifier_suspend__block_invoke;
  block[3] = &unk_1E7367440;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)addSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  v5 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "Adding subscriber", buf, 2u);
  }

  streamName = [subscriberCopy streamName];
  token = [subscriberCopy token];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.coreduetinteraction.interaction-recorded"];
  v9 = [v8 isEqualToString:streamName];

  if (v9)
  {
    v10 = self->_interactionStoreRecordedEventSubscribersByToken;
    objc_sync_enter(v10);
    interactionStoreRecordedEventSubscribersByToken = self->_interactionStoreRecordedEventSubscribersByToken;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
    [(NSMutableDictionary *)interactionStoreRecordedEventSubscribersByToken setObject:subscriberCopy forKeyedSubscript:v12];

    v13 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v14 = "Successfully added subscriber for interaction recording";
      v15 = &v21;
LABEL_9:
      _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.coreduetinteraction.interaction-deleted"];
  v17 = [v16 isEqualToString:streamName];

  if (v17)
  {
    v10 = self->_interactionStoreDeletedEventSubscribersByToken;
    objc_sync_enter(v10);
    interactionStoreDeletedEventSubscribersByToken = self->_interactionStoreDeletedEventSubscribersByToken;
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
    [(NSMutableDictionary *)interactionStoreDeletedEventSubscribersByToken setObject:subscriberCopy forKeyedSubscript:v19];

    v13 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
      v14 = "Successfully added subscriber for interaction deletions";
      v15 = &v20;
      goto LABEL_9;
    }

LABEL_10:

    objc_sync_exit(v10);
    goto LABEL_13;
  }

  v10 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(&v10->super.super, OS_LOG_TYPE_ERROR))
  {
    [_CDInteractionStoreNotifier addSubscriber:];
  }

LABEL_13:
}

- (void)removeSubscriberWithToken:(unint64_t)token streamName:(id)name
{
  nameCopy = name;
  v7 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_DEFAULT, "Removing subscriber", buf, 2u);
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.coreduetinteraction.interaction-recorded"];
  v9 = [v8 isEqualToString:nameCopy];

  if (v9)
  {
    v10 = self->_interactionStoreRecordedEventSubscribersByToken;
    objc_sync_enter(v10);
    interactionStoreRecordedEventSubscribersByToken = self->_interactionStoreRecordedEventSubscribersByToken;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
    [(NSMutableDictionary *)interactionStoreRecordedEventSubscribersByToken setObject:0 forKeyedSubscript:v12];

    v13 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v14 = "Successfully removed subscriber for interaction recording";
      v15 = &v21;
LABEL_9:
      _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.coreduetinteraction.interaction-deleted"];
  v17 = [v16 isEqualToString:nameCopy];

  if (v17)
  {
    v10 = self->_interactionStoreDeletedEventSubscribersByToken;
    objc_sync_enter(v10);
    interactionStoreDeletedEventSubscribersByToken = self->_interactionStoreDeletedEventSubscribersByToken;
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
    [(NSMutableDictionary *)interactionStoreDeletedEventSubscribersByToken setObject:0 forKeyedSubscript:v19];

    v13 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
      v14 = "Successfully removed subscriber for interaction deletion";
      v15 = &v20;
      goto LABEL_9;
    }

LABEL_10:

    objc_sync_exit(v10);
    goto LABEL_13;
  }

  v10 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(&v10->super.super, OS_LOG_TYPE_ERROR))
  {
    [_CDInteractionStoreNotifier removeSubscriberWithToken:streamName:];
  }

LABEL_13:
}

- (void)handleXPCNotificationEvent:(id)event
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "Handling notification event", buf, 2u);
  }

  v14 = 0;
  v15 = 0;
  v13 = 0;
  v6 = [_CDXPCCodecs parseNotificationEvent:eventCopy registrationIdentifier:&v15 info:&v14 error:&v13];

  v7 = v15;
  v8 = v14;
  v9 = v13;
  v10 = +[_CDLogging interactionChannel];
  v11 = v10;
  if (!v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_CDInteractionStoreNotifier handleXPCNotificationEvent:v7];
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412547;
    v17 = v7;
    v18 = 2113;
    v19 = v8;
    _os_log_impl(&dword_191750000, v11, OS_LOG_TYPE_DEFAULT, "Received XPC notification event for registration %@: %{private}@", buf, 0x16u);
  }

  if ([@"_CDInteractionStoreRecordedInteractionsNotification" isEqualToString:v7])
  {
    v11 = [v8 objectForKeyedSubscript:@"_CDInteractionsKey"];
    [(_CDInteractionStoreNotifier *)self recorded:v11];
LABEL_12:

    goto LABEL_13;
  }

  if ([@"_CDInteractionStoreDeletedInteractionsNotification" isEqualToString:v7])
  {
    v11 = [v8 objectForKeyedSubscript:@"_CDInteractionsKey"];
    [(_CDInteractionStoreNotifier *)self deleted:v11];
    goto LABEL_12;
  }

LABEL_13:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)publishRecordedXPCEvent:(id)event
{
  v32 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138739971;
    v31 = eventCopy;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_INFO, "Publishing recorded XPC event with interactions %{sensitive}@", buf, 0xCu);
  }

  v6 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    interactionRecordedEventPublisher = self->_interactionRecordedEventPublisher;
    *buf = 138412290;
    v31 = interactionRecordedEventPublisher;
    _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_INFO, "_interactionRecordedEventPublisher %@", buf, 0xCu);
  }

  if (self->_interactionRecordedEventPublisher)
  {
    if (eventCopy)
    {
      v8 = eventCopy;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v28 = @"_CDInteractionsKey";
    v29 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v26 = 0;
    v10 = [_CDXPCCodecs notificationEventWithRegistrationIdentifier:@"_CDInteractionStoreRecordedInteractionsNotification" info:v9 error:&v26];
    v11 = v26;

    v12 = self->_interactionStoreRecordedEventSubscribersByToken;
    objc_sync_enter(v12);
    allValues = [(NSMutableDictionary *)self->_interactionStoreRecordedEventSubscribersByToken allValues];
    v14 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = allValues;
      _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_INFO, "All subscribers %@", buf, 0xCu);
    }

    v20 = eventCopy;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = allValues;
    v16 = [(_CDXPCEventPublisher *)v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v16)
    {
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v22 + 1) + 8 * i);
          [_CDXPCEventPublisher sendEvent:"sendEvent:toSubscriber:handler:" toSubscriber:v10 handler:?];
        }

        v16 = [(_CDXPCEventPublisher *)v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v16);
    }

    eventCopy = v20;
    objc_sync_exit(v12);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)publishDeletedXPCEvent:(id)event
{
  v32 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138739971;
    v31 = eventCopy;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_INFO, "Publishing deleted XPC event with interactions %{sensitive}@", buf, 0xCu);
  }

  v6 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    interactionDeletedEventPublisher = self->_interactionDeletedEventPublisher;
    *buf = 138412290;
    v31 = interactionDeletedEventPublisher;
    _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_INFO, "_interactionDeletedEventPublisher %@", buf, 0xCu);
  }

  if (self->_interactionDeletedEventPublisher)
  {
    if (eventCopy)
    {
      v8 = eventCopy;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v28 = @"_CDInteractionsKey";
    v29 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v26 = 0;
    v10 = [_CDXPCCodecs notificationEventWithRegistrationIdentifier:@"_CDInteractionStoreDeletedInteractionsNotification" info:v9 error:&v26];
    v11 = v26;

    v12 = self->_interactionStoreDeletedEventSubscribersByToken;
    objc_sync_enter(v12);
    allValues = [(NSMutableDictionary *)self->_interactionStoreDeletedEventSubscribersByToken allValues];
    v14 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = allValues;
      _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_INFO, "All subscribers %@", buf, 0xCu);
    }

    v20 = eventCopy;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = allValues;
    v16 = [(_CDXPCEventPublisher *)v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v16)
    {
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v22 + 1) + 8 * i);
          [_CDXPCEventPublisher sendEvent:"sendEvent:toSubscriber:handler:" toSubscriber:v10 handler:?];
        }

        v16 = [(_CDXPCEventPublisher *)v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v16);
    }

    eventCopy = v20;
    objc_sync_exit(v12);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)addSubscriber:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeSubscriberWithToken:streamName:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleXPCNotificationEvent:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0(&dword_191750000, v1, v2, "Failed to parse notification event for registration %@: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

@end