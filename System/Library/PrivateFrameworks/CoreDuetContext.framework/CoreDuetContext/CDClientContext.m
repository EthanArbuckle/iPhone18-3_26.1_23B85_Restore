@interface CDClientContext
@end

@implementation CDClientContext

void __37___CDClientContext_currentConnection__block_invoke(uint64_t a1)
{
  [*(a1 + 32) unprotectedSetUpXPCConnectionWithEndpoint:*(*(a1 + 32) + 48)];
  v2 = *(*(a1 + 32) + 40);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

void __35___CDClientContext_serverInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D225A8];
  v1 = serverInterface_serverInterface;
  serverInterface_serverInterface = v0;

  v2 = serverInterface_serverInterface;
  v3 = +[_CDContextValue supportedContextValueClasses];
  [v2 setClasses:v3 forSelector:sel_setObject_forPath_handler_ argumentIndex:0 ofReply:0];

  [serverInterface_serverInterface setClass:objc_opt_class() forSelector:sel_setObject_forPath_handler_ argumentIndex:1 ofReply:0];
  v15 = [MEMORY[0x1E695DFA8] setWithObject:objc_opt_class()];
  v4 = +[_CDContextValue supportedContextValueClasses];
  [v15 unionSet:v4];

  [v15 addObject:objc_opt_class()];
  [serverInterface_serverInterface setClasses:v15 forSelector:sel_valuesForPaths_handler_ argumentIndex:0 ofReply:1];
  v5 = serverInterface_serverInterface;
  v6 = +[_CDContextValue supportedContextValueClasses];
  [v5 setClasses:v6 forSelector:sel_addObjects_andRemoveObjects_forArrayAtPath_handler_ argumentIndex:0 ofReply:0];

  v7 = serverInterface_serverInterface;
  v8 = +[_CDContextValue supportedContextValueClasses];
  [v7 setClasses:v8 forSelector:sel_addObjects_andRemoveObjects_forArrayAtPath_handler_ argumentIndex:1 ofReply:0];

  v9 = serverInterface_serverInterface;
  v10 = +[_CDContextValue supportedContextValueClasses];
  [v9 setClasses:v10 forSelector:sel_removeObjectsMatchingPredicate_fromArrayAtPath_handler_ argumentIndex:0 ofReply:1];

  [serverInterface_serverInterface setClass:objc_opt_class() forSelector:sel_propertiesOfPath_handler_ argumentIndex:0 ofReply:0];
  v11 = serverInterface_serverInterface;
  v12 = +[_CDContextValue supportedContextValueClasses];
  [v11 setClasses:v12 forSelector:sel_propertiesOfPath_handler_ argumentIndex:0 ofReply:1];

  [serverInterface_serverInterface setClass:objc_opt_class() forSelector:sel_propertiesOfPath_handler_ argumentIndex:1 ofReply:1];
  v13 = serverInterface_serverInterface;
  v14 = +[_CDContextValue supportedContextValueClasses];
  [v13 setClasses:v14 forSelector:sel_setObject_lastModifiedDate_forContextualKeyPath_handler_ argumentIndex:0 ofReply:0];

  [serverInterface_serverInterface setClass:objc_opt_class() forSelector:sel_setObject_lastModifiedDate_forContextualKeyPath_handler_ argumentIndex:1 ofReply:0];
  [serverInterface_serverInterface setClass:objc_opt_class() forSelector:sel_setObject_lastModifiedDate_forContextualKeyPath_handler_ argumentIndex:2 ofReply:0];
}

void __35___CDClientContext_clientInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D21730];
  v1 = clientInterface_clientInterface;
  clientInterface_clientInterface = v0;

  v2 = MEMORY[0x1E695DFA8];
  v3 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v4 = +[_CDContextValue supportedContextValueClasses];
  [v5 unionSet:v4];

  [clientInterface_clientInterface setClass:objc_opt_class() forSelector:sel_handleContextualChange_info_handler_ argumentIndex:0 ofReply:0];
  [clientInterface_clientInterface setClasses:v5 forSelector:sel_handleContextualChange_info_handler_ argumentIndex:1 ofReply:0];
  [clientInterface_clientInterface setClass:objc_opt_class() forSelector:sel_handleRegistrationCompleted_handler_ argumentIndex:0 ofReply:0];
}

void __62___CDClientContext_unprotectedSetUpXPCConnectionWithEndpoint___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(*(a1 + 32) + 104);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(WeakRetained + 6);
      if (!v4)
      {
        v4 = @"com.apple.coreduetd.context";
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A9611000, v3, OS_LOG_TYPE_DEFAULT, "Connection to %@ interrupted", &v6, 0xCu);
    }

    *(WeakRetained + 8) = 1;
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __40___CDClientContext_defaultCallbackQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.cdclientcontext.callbackQueue", v2);
  v1 = defaultCallbackQueue_callbackQueue;
  defaultCallbackQueue_callbackQueue = v0;
}

uint64_t __31___CDClientContext_userContext__block_invoke()
{
  userContext_context = [objc_alloc(objc_opt_class()) initWithEndpoint:0];

  return MEMORY[0x1EEE66BB8]();
}

void __43___CDClientContext_subscribeToEventStreams__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __43___CDClientContext_subscribeToEventStreams__block_invoke_cold_1();
  }

  v2 = *(*(a1 + 32) + 32);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __43___CDClientContext_subscribeToEventStreams__block_invoke_118;
  handler[3] = &unk_1E78867B8;
  objc_copyWeak(&v7, &location);
  xpc_set_event_stream_handler("com.apple.coreduetcontext.mdcs_events", v2, handler);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __43___CDClientContext_subscribeToEventStreams__block_invoke_cold_1();
  }

  v3 = *(*(a1 + 32) + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43___CDClientContext_subscribeToEventStreams__block_invoke_120;
  v4[3] = &unk_1E78867B8;
  objc_copyWeak(&v5, &location);
  xpc_set_event_stream_handler("com.apple.coreduetcontext.client_event_stream", v3, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __43___CDClientContext_subscribeToEventStreams__block_invoke_118(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleMDCSEvent:v3];
}

void __43___CDClientContext_subscribeToEventStreams__block_invoke_120(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleNotificationEvent:v3];
}

void __47___CDClientContext_handleFetchPropertiesEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 104);
  if (v3)
  {
    if (os_log_type_enabled(*(v4 + 104), OS_LOG_TYPE_ERROR))
    {
      __47___CDClientContext_handleFetchPropertiesEvent___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(*(v4 + 104), OS_LOG_TYPE_DEBUG))
  {
    __47___CDClientContext_handleFetchPropertiesEvent___block_invoke_cold_2(v5);
  }

  v6 = [(_CDXPCCodecs *)_CDXPCContextCodecs fetchPropertiesReplyWithEvent:*(a1 + 40) error:v3];
  if (v6)
  {
    xpc_dictionary_send_reply();
  }
}

void __68___CDClientContext_handleSubscribeToContextValueNotificationsEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [_CDXPCContextCodecs subscribeToContextValueNotificationsReplyWithEvent:*(a1 + 32) error:a2];
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_send_reply();
    v2 = v3;
  }
}

void __72___CDClientContext_handleUnsubscribeFromContextValueNotificationsEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [_CDXPCContextCodecs unsubscribeFromContextValueNotificationsReplyWithEvent:*(a1 + 32) error:a2];
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_send_reply();
    v2 = v3;
  }
}

void __41___CDClientContext_handleKeepAliveEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [(_CDXPCCodecs *)_CDXPCContextCodecs keepAliveReplyWithEvent:*(a1 + 32) error:a2];
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_send_reply();
    v2 = v3;
  }
}

void __54___CDClientContext_handleRequestActivateDevicesEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [(_CDXPCCodecs *)_CDXPCContextCodecs requestActivateDevicesReplyWithEvent:*(a1 + 32) error:a2];
  xpc_dictionary_send_reply();
}

void __52___CDClientContext_hasKnowledgeOfContextualKeyPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 104), OS_LOG_TYPE_ERROR))
  {
    __52___CDClientContext_hasKnowledgeOfContextualKeyPath___block_invoke_cold_1(a1);
  }
}

void __88___CDClientContext_objectForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 104), OS_LOG_TYPE_ERROR))
  {
    __88___CDClientContext_objectForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_cold_1(a1);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = *(a1 + 48);
    }

    else
    {
      v6 = [*(a1 + 32) defaultCallbackQueue];
      v4 = *(a1 + 56);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88___CDClientContext_objectForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_131;
    block[3] = &unk_1E7886878;
    v8 = v4;
    dispatch_async(v6, block);
    if (!v5)
    {
    }
  }
}

void __88___CDClientContext_objectForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_133(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(_CDContextValue);
  v8 = v7;
  if (v5)
  {
    [(_CDContextValue *)v7 setValue:v5];
    v9 = *(*(a1 + 64) + 8);
    v10 = v5;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else
  {
    v12 = [MEMORY[0x1E695DFB0] null];
    [(_CDContextValue *)v8 setValue:v12];

    v13 = *(*(a1 + 64) + 8);
    v11 = *(v13 + 40);
    *(v13 + 40) = 0;
  }

  [(_CDContextValue *)v8 setLastModifiedDate:v6];
  [*(a1 + 32) setCachedValueIfClientHasRegistrations:v8 forKeyPath:*(a1 + 40)];
  v14 = *(a1 + 56);
  if (v14)
  {
    v15 = *(a1 + 48);
    if (v15)
    {
      v16 = *(a1 + 48);
    }

    else
    {
      v16 = [*(a1 + 32) defaultCallbackQueue];
      v14 = *(a1 + 56);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __88___CDClientContext_objectForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_2_134;
    v19[3] = &unk_1E78868C8;
    v17 = v14;
    v18 = *(a1 + 64);
    v20 = v17;
    v21 = v18;
    dispatch_async(v16, v19);
    if (!v15)
    {
    }
  }
}

void __98___CDClientContext_lastModifiedDateForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 104), OS_LOG_TYPE_ERROR))
  {
    __98___CDClientContext_lastModifiedDateForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_cold_1(a1);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = *(a1 + 48);
    }

    else
    {
      v6 = [*(a1 + 32) defaultCallbackQueue];
      v4 = *(a1 + 56);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98___CDClientContext_lastModifiedDateForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_136;
    block[3] = &unk_1E7886878;
    v8 = v4;
    dispatch_async(v6, block);
    if (!v5)
    {
    }
  }
}

void __98___CDClientContext_lastModifiedDateForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) lastModifiedDate];
  (*(v1 + 16))(v1, v2);
}

void __98___CDClientContext_lastModifiedDateForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v7 = a2;
  v8 = objc_alloc_init(_CDContextValue);
  [(_CDContextValue *)v8 setValue:v7];

  [(_CDContextValue *)v8 setLastModifiedDate:v6];
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  [*(a1 + 32) setCachedValueIfClientHasRegistrations:v8 forKeyPath:*(a1 + 40)];
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = *(a1 + 48);
    }

    else
    {
      v11 = [*(a1 + 32) defaultCallbackQueue];
      v9 = *(a1 + 56);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __98___CDClientContext_lastModifiedDateForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_5;
    v14[3] = &unk_1E78868C8;
    v12 = v9;
    v13 = *(a1 + 64);
    v15 = v12;
    v16 = v13;
    dispatch_async(v11, v14);
    if (!v10)
    {
    }
  }
}

void __37___CDClientContext_registerCallback___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1A9611000, "CoreDuet: ClientContext re-register", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  os_activity_scope_leave(&state);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37___CDClientContext_registerCallback___block_invoke_2;
    v6[3] = &unk_1E7886940;
    v6[4] = v5;
    v7 = WeakRetained;
    [v5 retryTimes:3 block:v6];
  }
}

uint64_t __37___CDClientContext_registerCallback___block_invoke_2(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = [*(a1 + 32) currentConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37___CDClientContext_registerCallback___block_invoke_3;
  v8[3] = &unk_1E7886918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v10 = &v11;
  v8[4] = v3;
  v9 = v4;
  v5 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v5 registerCallback:*(a1 + 40)];

  v6 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v6;
}

void __37___CDClientContext_registerCallback___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v4 = *(*(a1 + 32) + 104);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37___CDClientContext_registerCallback___block_invoke_3_cold_1(a1, v4);
    }
  }
}

uint64_t __37___CDClientContext_registerCallback___block_invoke_140(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = [*(a1 + 32) currentConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37___CDClientContext_registerCallback___block_invoke_2_141;
  v8[3] = &unk_1E7886918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v10 = &v11;
  v8[4] = v3;
  v9 = v4;
  v5 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v5 registerCallback:*(a1 + 40)];

  v6 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v6;
}

void __37___CDClientContext_registerCallback___block_invoke_2_141(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v4 = *(*(a1 + 32) + 104);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37___CDClientContext_registerCallback___block_invoke_2_141_cold_1(a1, v4);
    }
  }
}

void __38___CDClientContext_evaluatePredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 104), OS_LOG_TYPE_ERROR))
  {
    __38___CDClientContext_evaluatePredicate___block_invoke_cold_1(a1);
  }
}

void __56___CDClientContext_handleContextualChange_info_handler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) informativeCallback];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  __CDCLIENTCONTEXT_IS_CALLING_OUT_TO_CLIENT_BLOCK__(v4);
}

uint64_t __56___CDClientContext_handleContextualChange_info_handler___block_invoke_145(void *a1)
{
  v2 = a1[4];
  v3 = __CDCLIENTCONTEXT_IS_CALLING_OUT_TO_CLIENT_BLOCK__(a1[7]);
  result = (*(a1[8] + 16))();
  if ((v3 & 1) == 0)
  {
    v5 = a1[5];
    v6 = a1[6];

    return [v5 cleanupInternalReferencesToRegistration:v6];
  }

  return result;
}

void __92___CDClientContext_setObject_forContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 104), OS_LOG_TYPE_ERROR))
  {
    __92___CDClientContext_setObject_forContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_cold_1(a1);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = *(a1 + 56);
    }

    else
    {
      v6 = [*(a1 + 32) defaultCallbackQueue];
      v4 = *(a1 + 64);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92___CDClientContext_setObject_forContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_146;
    block[3] = &unk_1E7886878;
    v8 = v4;
    dispatch_async(v6, block);
    if (!v5)
    {
    }
  }
}

void __92___CDClientContext_setObject_forContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_147(uint64_t a1, char a2)
{
  *(*(*(a1 + 64) + 8) + 24) = a2;
  v2 = *(a1 + 56);
  if (v2)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(a1 + 32);
    }

    else
    {
      v5 = [*(a1 + 40) defaultCallbackQueue];
      v2 = *(a1 + 56);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __92___CDClientContext_setObject_forContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_2;
    v9[3] = &unk_1E78869E0;
    v6 = v2;
    v7 = *(a1 + 64);
    v11 = v6;
    v12 = v7;
    v8 = *(a1 + 48);
    v9[4] = *(a1 + 40);
    v10 = v8;
    dispatch_async(v5, v9);
    if (!v4)
    {
    }
  }
}

void __92___CDClientContext_setObject_forContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[7] + 8) + 24);
  (*(a1[6] + 16))();
  v3 = *(a1[4] + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = a1[5];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1A9611000, v3, OS_LOG_TYPE_INFO, "Finished completion handler after setting object for key path: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __89___CDClientContext_addObjects_toArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 104), OS_LOG_TYPE_ERROR))
  {
    __89___CDClientContext_addObjects_toArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_cold_1(a1);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = *(a1 + 56);
    }

    else
    {
      v6 = [*(a1 + 32) defaultCallbackQueue];
      v4 = *(a1 + 64);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89___CDClientContext_addObjects_toArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_148;
    block[3] = &unk_1E7886878;
    v8 = v4;
    dispatch_async(v6, block);
    if (!v5)
    {
    }
  }
}

void __89___CDClientContext_addObjects_toArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_149(uint64_t a1, char a2)
{
  *(*(*(a1 + 64) + 8) + 24) = a2;
  v2 = *(a1 + 56);
  if (v2)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(a1 + 32);
    }

    else
    {
      v5 = [*(a1 + 40) defaultCallbackQueue];
      v2 = *(a1 + 56);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __89___CDClientContext_addObjects_toArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_2;
    v9[3] = &unk_1E78869E0;
    v6 = v2;
    v7 = *(a1 + 64);
    v11 = v6;
    v12 = v7;
    v8 = *(a1 + 48);
    v9[4] = *(a1 + 40);
    v10 = v8;
    dispatch_async(v5, v9);
    if (!v4)
    {
    }
  }
}

void __89___CDClientContext_addObjects_toArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[7] + 8) + 24);
  (*(a1[6] + 16))();
  v3 = *(a1[4] + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = a1[5];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1A9611000, v3, OS_LOG_TYPE_INFO, "Finished completion handler after adding objects to key path: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __94___CDClientContext_removeObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 104), OS_LOG_TYPE_ERROR))
  {
    __94___CDClientContext_removeObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_cold_1(a1);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = *(a1 + 56);
    }

    else
    {
      v6 = [*(a1 + 32) defaultCallbackQueue];
      v4 = *(a1 + 64);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94___CDClientContext_removeObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_150;
    block[3] = &unk_1E7886878;
    v8 = v4;
    dispatch_async(v6, block);
    if (!v5)
    {
    }
  }
}

void __94___CDClientContext_removeObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_151(uint64_t a1, char a2)
{
  v18 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 64) + 8) + 24) = a2;
  v3 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&dword_1A9611000, v3, OS_LOG_TYPE_INFO, "Done removing object from keypath: %@", buf, 0xCu);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(a1 + 48);
    }

    else
    {
      v7 = [*(a1 + 32) defaultCallbackQueue];
      v5 = *(a1 + 56);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __94___CDClientContext_removeObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_152;
    v12[3] = &unk_1E78869E0;
    v8 = v5;
    v9 = *(a1 + 64);
    v14 = v8;
    v15 = v9;
    v10 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v10;
    dispatch_async(v7, v12);
    if (!v6)
    {
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __94___CDClientContext_removeObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_152(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[7] + 8) + 24);
  (*(a1[6] + 16))();
  v3 = *(a1[4] + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = a1[5];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1A9611000, v3, OS_LOG_TYPE_INFO, "Finished completion handler after removing object from keypath: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __111___CDClientContext_removeObjectsMatchingPredicate_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 104), OS_LOG_TYPE_ERROR))
  {
    __111___CDClientContext_removeObjectsMatchingPredicate_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_cold_1(a1);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = *(a1 + 56);
    }

    else
    {
      v6 = [*(a1 + 32) defaultCallbackQueue];
      v4 = *(a1 + 64);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __111___CDClientContext_removeObjectsMatchingPredicate_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_153;
    block[3] = &unk_1E7886878;
    v8 = v4;
    dispatch_async(v6, block);
    if (!v5)
    {
    }
  }
}

void __111___CDClientContext_removeObjectsMatchingPredicate_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_154(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  v5 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_1A9611000, v5, OS_LOG_TYPE_INFO, "Done removing objects matching predicate from keypath: %@", buf, 0xCu);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = *(a1 + 48);
    }

    else
    {
      v9 = [*(a1 + 32) defaultCallbackQueue];
      v7 = *(a1 + 56);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __111___CDClientContext_removeObjectsMatchingPredicate_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_155;
    v14[3] = &unk_1E7886A58;
    v18 = v7;
    v10 = v4;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v15 = v10;
    v16 = v11;
    v17 = v12;
    dispatch_async(v9, v14);
    if (!v8)
    {
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __111___CDClientContext_removeObjectsMatchingPredicate_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_155(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  (*(a1[7] + 16))();
  v3 = *(a1[5] + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = a1[6];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1A9611000, v3, OS_LOG_TYPE_INFO, "Finished completion handler after removing objects matching predicate from keypath: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __108___CDClientContext_addObjects_andRemoveObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 104), OS_LOG_TYPE_ERROR))
  {
    __108___CDClientContext_addObjects_andRemoveObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_cold_1(a1);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = *(a1 + 64);
    }

    else
    {
      v6 = [*(a1 + 32) defaultCallbackQueue];
      v4 = *(a1 + 72);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __108___CDClientContext_addObjects_andRemoveObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_157;
    block[3] = &unk_1E7886878;
    v8 = v4;
    dispatch_async(v6, block);
    if (!v5)
    {
    }
  }
}

void __108___CDClientContext_addObjects_andRemoveObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_158(uint64_t a1, char a2)
{
  v18 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 64) + 8) + 24) = a2;
  v3 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&dword_1A9611000, v3, OS_LOG_TYPE_INFO, "Done adding to and removing from keypath: %@", buf, 0xCu);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(a1 + 48);
    }

    else
    {
      v7 = [*(a1 + 32) defaultCallbackQueue];
      v5 = *(a1 + 56);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __108___CDClientContext_addObjects_andRemoveObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_159;
    v12[3] = &unk_1E78869E0;
    v8 = v5;
    v9 = *(a1 + 64);
    v14 = v8;
    v15 = v9;
    v10 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v10;
    dispatch_async(v7, v12);
    if (!v6)
    {
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __108___CDClientContext_addObjects_andRemoveObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_159(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[7] + 8) + 24);
  (*(a1[6] + 16))();
  v3 = *(a1[4] + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = a1[5];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1A9611000, v3, OS_LOG_TYPE_INFO, "Finished completion handler after adding to and removing from keypath: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __66___CDClientContext_valuesForKeyPaths_inContextsMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 104), OS_LOG_TYPE_ERROR))
  {
    __66___CDClientContext_valuesForKeyPaths_inContextsMatchingPredicate___block_invoke_cold_1();
  }
}

void __79___CDClientContext_valuesForKeyPaths_synchronous_responseQueue_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 104), OS_LOG_TYPE_ERROR))
  {
    __79___CDClientContext_valuesForKeyPaths_synchronous_responseQueue_withCompletion___block_invoke_cold_1();
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(a1 + 40);
    }

    else
    {
      v6 = [*(a1 + 32) defaultCallbackQueue];
      v4 = *(a1 + 48);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79___CDClientContext_valuesForKeyPaths_synchronous_responseQueue_withCompletion___block_invoke_161;
    block[3] = &unk_1E7886878;
    v8 = v4;
    dispatch_async(v6, block);
    if (!v5)
    {
    }
  }
}

void __79___CDClientContext_valuesForKeyPaths_synchronous_responseQueue_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(a1 + 32);
    }

    else
    {
      v7 = [*(a1 + 40) defaultCallbackQueue];
      v5 = *(a1 + 56);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79___CDClientContext_valuesForKeyPaths_synchronous_responseQueue_withCompletion___block_invoke_3;
    v11[3] = &unk_1E78869E0;
    v8 = v5;
    v9 = *(a1 + 64);
    v13 = v8;
    v14 = v9;
    v10 = *(a1 + 48);
    v11[4] = *(a1 + 40);
    v12 = v10;
    dispatch_async(v7, v11);
    if (!v6)
    {
    }
  }
}

void __79___CDClientContext_valuesForKeyPaths_synchronous_responseQueue_withCompletion___block_invoke_3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[7] + 8) + 40);
  (*(a1[6] + 16))();
  v3 = *(a1[4] + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = a1[5];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1A9611000, v3, OS_LOG_TYPE_INFO, "Finished completion handler after getting values for key paths: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __68___CDClientContext_setObject_lastModifiedDate_forContextualKeyPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 104), OS_LOG_TYPE_ERROR))
  {
    __68___CDClientContext_setObject_lastModifiedDate_forContextualKeyPath___block_invoke_cold_1(a1);
  }
}

void __75___CDClientContext_activateDevices_remoteUserContextProxySourceDeviceUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 104), OS_LOG_TYPE_ERROR))
  {
    __75___CDClientContext_activateDevices_remoteUserContextProxySourceDeviceUUID___block_invoke_cold_1();
  }
}

void __77___CDClientContext_deactivateDevices_remoteUserContextProxySourceDeviceUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 104), OS_LOG_TYPE_ERROR))
  {
    __77___CDClientContext_deactivateDevices_remoteUserContextProxySourceDeviceUUID___block_invoke_cold_1();
  }
}

void __43___CDClientContext_subscribeToEventStreams__block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_1A9611000, MEMORY[0x1E69E9C10], v0, "Registering xpc_set_event_stream_handler(%s", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __47___CDClientContext_handleFetchPropertiesEvent___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Failed to fetch properties: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __52___CDClientContext_hasKnowledgeOfContextualKeyPath___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __88___CDClientContext_objectForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __98___CDClientContext_lastModifiedDateForContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __37___CDClientContext_registerCallback___block_invoke_3_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = [v2 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8(&dword_1A9611000, v5, v6, "Error re-registering %@ (%@)", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __37___CDClientContext_registerCallback___block_invoke_2_141_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = [v2 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8(&dword_1A9611000, v5, v6, "Error registering %@ (%@)", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __38___CDClientContext_evaluatePredicate___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __92___CDClientContext_setObject_forContextualKeyPath_synchronous_responseQueue_withCompletion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __89___CDClientContext_addObjects_toArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __94___CDClientContext_removeObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __111___CDClientContext_removeObjectsMatchingPredicate_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __108___CDClientContext_addObjects_andRemoveObjects_fromArrayAtKeyPath_synchronous_responseQueue_withCompletion___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(OUTLINED_FUNCTION_5(a1, *MEMORY[0x1E69E9840]) + 56);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
  v7 = *MEMORY[0x1E69E9840];
}

void __66___CDClientContext_valuesForKeyPaths_inContextsMatchingPredicate___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "error getting values for key paths: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __79___CDClientContext_valuesForKeyPaths_synchronous_responseQueue_withCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "error getting values for key paths : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __68___CDClientContext_setObject_lastModifiedDate_forContextualKeyPath___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(OUTLINED_FUNCTION_5(a1, *MEMORY[0x1E69E9840]) + 56);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
  v7 = *MEMORY[0x1E69E9840];
}

void __75___CDClientContext_activateDevices_remoteUserContextProxySourceDeviceUUID___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "error activating devices: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __77___CDClientContext_deactivateDevices_remoteUserContextProxySourceDeviceUUID___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "error deactivating devices: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end