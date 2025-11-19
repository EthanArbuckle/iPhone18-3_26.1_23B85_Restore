@interface _CDReceiverNotifier
+ (id)sharedInstance;
- (_CDReceiverNotifier)init;
- (void)_publishXPCEvent:(id)a3 uid:(unsigned int)a4;
- (void)addSubscriber:(id)a3;
- (void)handleXPCNotificationEvent:(id)a3;
- (void)removeSubscriberWithToken:(unint64_t)a3 streamName:(id)a4;
@end

@implementation _CDReceiverNotifier

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken21 != -1)
  {
    +[_CDReceiverNotifier sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_1;

  return v3;
}

- (_CDReceiverNotifier)init
{
  v36.receiver = self;
  v36.super_class = _CDReceiverNotifier;
  v2 = [(_CDReceiverNotifier *)&v36 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(v5, v6);
    queue = v2->_queue;
    v2->_queue = v7;

    LODWORD(v5) = getuid();
    v2->_isRootProcess = v5 == 0;
    v9 = _logChannel();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v10)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_DEFAULT, "Setting up AppIntent/AppActivity XPC event handler", buf, 2u);
      }

      objc_initWeak(buf, v2);
      v11 = v2->_queue;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __27___CDReceiverNotifier_init__block_invoke;
      handler[3] = &unk_1E7369818;
      objc_copyWeak(&v34, buf);
      xpc_set_event_stream_handler("com.apple.coreduet.xpc.receiver", v11, handler);
      v12 = BiomeLibrary();
      v13 = [v12 App];
      v14 = [v13 Intent];
      v15 = [v14 source];
      intentSource = v2->_intentSource;
      v2->_intentSource = v15;

      v17 = BiomeLibrary();
      v18 = [v17 App];
      v19 = [v18 Activity];
      v20 = [v19 source];
      activitySource = v2->_activitySource;
      v2->_activitySource = v20;

      v22 = BiomeLibrary();
      v23 = [v22 App];
      v24 = [v23 RelevantShortcuts];
      relevantShortcutsStream = v2->_relevantShortcutsStream;
      v2->_relevantShortcutsStream = v24;

      objc_destroyWeak(&v34);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v10)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_DEFAULT, "Setting up AppIntent/AppActivity XPC event publisher", buf, 2u);
      }

      v26 = v2->_queue;
      v27 = _logChannel();
      v28 = [_CDXPCEventPublisher eventPublisherWithStreamName:"com.apple.coreduet.xpc.receiver" delegate:v2 queue:v26 log:v27];
      xpcPublisher = v2->_xpcPublisher;
      v2->_xpcPublisher = v28;

      v30 = objc_opt_new();
      subscribers = v2->_subscribers;
      v2->_subscribers = v30;
    }
  }

  return v2;
}

- (void)_publishXPCEvent:(id)a3 uid:(unsigned int)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  obj = self->_subscribers;
  objc_sync_enter(obj);
  v7 = [(NSMutableDictionary *)self->_subscribers allValues];
  v8 = _logChannel();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_CDReceiverNotifier _publishXPCEvent:uid:];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 uid] == a4)
        {
          xpcPublisher = self->_xpcPublisher;
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __44___CDReceiverNotifier__publishXPCEvent_uid___block_invoke;
          v17[3] = &unk_1E73675F8;
          v17[4] = v13;
          [(_CDXPCEventPublisher *)xpcPublisher sendEvent:v6 toSubscriber:v13 handler:v17];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  objc_sync_exit(obj);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)handleXPCNotificationEvent:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _logChannel();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_CDReceiverNotifier handleXPCNotificationEvent:];
  }

  v64 = 0;
  v65 = 0;
  v63 = 0;
  v6 = [_CDXPCCodecs parseNotificationEvent:v4 registrationIdentifier:&v65 info:&v64 error:&v63];
  v7 = v65;
  v8 = v64;
  v9 = v63;
  v10 = _logChannel();
  v11 = v10;
  if (!v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_CDReceiverNotifier handleXPCNotificationEvent:];
    }

    goto LABEL_42;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_CDReceiverNotifier handleXPCNotificationEvent:];
  }

  v12 = [v8 objectForKeyedSubscript:@"_CDAppIntentsKey"];
  if (v12)
  {
  }

  else
  {
    v13 = [v8 objectForKeyedSubscript:@"_CDAppActivitiesKey"];

    if (!v13)
    {
      v29 = [v8 objectForKeyedSubscript:@"_CDAppIntentsDeletedIdentifiersKey"];

      if (v29)
      {
        v11 = [v8 objectForKeyedSubscript:@"_CDAppIntentsDeletedIdentifiersKey"];
        v30 = [v8 objectForKeyedSubscript:@"_CDAppIntentsBundleIDKey"];
        v31 = _logChannel();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [_CDReceiverNotifier handleXPCNotificationEvent:];
        }

        [getBMLibraryStreamsPrunerClass() pruneWithDeletedIntentIdentifiers:v11 bundleId:v30];
      }

      else
      {
        v32 = [v8 objectForKeyedSubscript:@"_CDAppIntentsDeletedGroupIdentifiersKey"];

        if (!v32)
        {
          v35 = [v8 objectForKeyedSubscript:@"_CDAppRelevantShortcutsKey"];

          v36 = _logChannel();
          v11 = v36;
          if (!v35)
          {
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              [_CDReceiverNotifier handleXPCNotificationEvent:];
            }

            goto LABEL_42;
          }

          v47 = v9;
          v48 = v7;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            [_CDReceiverNotifier handleXPCNotificationEvent:];
          }

          v37 = [v8 objectForKeyedSubscript:@"_CDAppRelevantShortcutsKey"];
          v38 = [v8 objectForKeyedSubscript:@"_CDAppRelevantShortcutsBundleIDKey"];
          v39 = [(BMStream *)self->_relevantShortcutsStream pruner];
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __50___CDReceiverNotifier_handleXPCNotificationEvent___block_invoke;
          v53[3] = &unk_1E7369840;
          v46 = v38;
          v54 = v46;
          [v39 deleteEventsPassingTest:v53];

          v40 = [(BMStream *)self->_relevantShortcutsStream source];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v11 = v37;
          v41 = [v11 countByEnumeratingWithState:&v49 objects:v66 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v50;
            do
            {
              for (i = 0; i != v42; ++i)
              {
                if (*v50 != v43)
                {
                  objc_enumerationMutation(v11);
                }

                v45 = [MEMORY[0x1E698EB30] eventWithData:*(*(&v49 + 1) + 8 * i) dataVersion:{objc_msgSend(MEMORY[0x1E698EB30], "latestDataVersion")}];
                [v40 sendEvent:v45];
              }

              v42 = [v11 countByEnumeratingWithState:&v49 objects:v66 count:16];
            }

            while (v42);
          }

LABEL_32:
          v9 = v47;
          v7 = v48;
LABEL_42:

          goto LABEL_43;
        }

        v11 = [v8 objectForKeyedSubscript:@"_CDAppIntentsDeletedGroupIdentifiersKey"];
        v30 = [v8 objectForKeyedSubscript:@"_CDAppIntentsBundleIDKey"];
        v33 = _logChannel();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [_CDReceiverNotifier handleXPCNotificationEvent:];
        }

        [getBMLibraryStreamsPrunerClass() pruneWithDeletedIntentGroupIdentifiers:v11 bundleId:v30];
      }

      goto LABEL_42;
    }
  }

  v14 = [v8 objectForKeyedSubscript:@"_CDAppIntentsKey"];

  v47 = v9;
  v48 = v7;
  if (v14)
  {
    v15 = _logChannel();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [_CDReceiverNotifier handleXPCNotificationEvent:];
    }

    v16 = [v8 objectForKeyedSubscript:@"_CDAppIntentsKey"];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v60;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v60 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [MEMORY[0x1E698EA98] eventWithData:*(*(&v59 + 1) + 8 * j) dataVersion:{objc_msgSend(MEMORY[0x1E698EA98], "latestDataVersion")}];
          [(BMSource *)self->_intentSource sendEvent:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v18);
    }

    v9 = v47;
  }

  v22 = [v8 objectForKeyedSubscript:@"_CDAppActivitiesKey"];

  if (v22)
  {
    v23 = _logChannel();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [_CDReceiverNotifier handleXPCNotificationEvent:];
    }

    v11 = [v8 objectForKeyedSubscript:@"_CDAppActivitiesKey"];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v24 = [v11 countByEnumeratingWithState:&v55 objects:v67 count:16];
    if (!v24)
    {
      goto LABEL_42;
    }

    v25 = v24;
    v26 = *v56;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v56 != v26)
        {
          objc_enumerationMutation(v11);
        }

        v28 = [MEMORY[0x1E698EA88] eventWithData:*(*(&v55 + 1) + 8 * k) dataVersion:{objc_msgSend(MEMORY[0x1E698EA88], "latestDataVersion")}];
        [(BMSource *)self->_activitySource sendEvent:v28];
      }

      v25 = [v11 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v25);
    goto LABEL_32;
  }

LABEL_43:

  v34 = *MEMORY[0x1E69E9840];
}

- (void)addSubscriber:(id)a3
{
  v4 = a3;
  v5 = _logChannel();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "Adding subscriber", buf, 2u);
  }

  v6 = [v4 streamName];
  v7 = [v4 token];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.coreduet.xpc.receiver"];
  v9 = [v8 isEqualToString:v6];

  if (v9)
  {
    v10 = self->_subscribers;
    objc_sync_enter(v10);
    subscribers = self->_subscribers;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v7];
    [(NSMutableDictionary *)subscribers setObject:v4 forKeyedSubscript:v12];

    v13 = _logChannel();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_DEFAULT, "Successfully added subscriber", v14, 2u);
    }

    objc_sync_exit(v10);
  }

  else
  {
    v10 = _logChannel();
    if (os_log_type_enabled(&v10->super.super, OS_LOG_TYPE_ERROR))
    {
      [_CDReceiverNotifier addSubscriber:];
    }
  }
}

- (void)removeSubscriberWithToken:(unint64_t)a3 streamName:(id)a4
{
  v6 = a4;
  v7 = _logChannel();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_DEFAULT, "Removing subscriber", buf, 2u);
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.coreduet.xpc.receiver"];
  v9 = [v8 isEqualToString:v6];

  if (v9)
  {
    v10 = self->_subscribers;
    objc_sync_enter(v10);
    subscribers = self->_subscribers;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    [(NSMutableDictionary *)subscribers setObject:0 forKeyedSubscript:v12];

    v13 = _logChannel();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_DEFAULT, "Successfully removed subscriber for AppIntent recording", v14, 2u);
    }

    objc_sync_exit(v10);
  }

  else
  {
    v10 = _logChannel();
    if (os_log_type_enabled(&v10->super.super, OS_LOG_TYPE_ERROR))
    {
      [_CDReceiverNotifier removeSubscriberWithToken:streamName:];
    }
  }
}

- (void)publishXPCEventForRelevantShortcuts:bundleID:uid:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)publishXPCEventForRelevantShortcuts:bundleID:uid:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Failed to encoding XPC event for Relevant Shortcuts object with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)publishXPCEventForAppIntents:appActivities:uid:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Failed to encoding XPC event for AppIntents/AppActivities object with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)publishXPCEventForDeletedIntentIdentifiers:bundleID:uid:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Failed to encoding XPC event for deleted intent identifiers with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)publishXPCEventForDeletedIntentGroupIdentifiers:bundleID:uid:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Failed to encoding XPC event for deleted intent group identifiers with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_publishXPCEvent:uid:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleXPCNotificationEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleXPCNotificationEvent:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0(&dword_191750000, v0, v1, "Failed to parse notification event for registration %@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)handleXPCNotificationEvent:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleXPCNotificationEvent:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleXPCNotificationEvent:.cold.5()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleXPCNotificationEvent:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleXPCNotificationEvent:.cold.7()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleXPCNotificationEvent:.cold.8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleXPCNotificationEvent:.cold.9()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Invalid XPC event object: %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)addSubscriber:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Unknown event stream name adding subscriber: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeSubscriberWithToken:streamName:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Unknown event stream name removing subscriber: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end