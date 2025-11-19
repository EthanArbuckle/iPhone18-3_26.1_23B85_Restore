@interface CDUserContextServerClient
@end

@implementation CDUserContextServerClient

void __45___CDUserContextServerClient_serverInterface__block_invoke()
{
  v35[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D225A8];
  v1 = serverInterface_serverInterface_0;
  serverInterface_serverInterface_0 = v0;

  v34 = MEMORY[0x1E695DFD8];
  v33 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v34 setWithObjects:{v33, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  [serverInterface_serverInterface_0 setClasses:v12 forSelector:sel_addObjects_andRemoveObjects_forArrayAtPath_handler_ argumentIndex:0 ofReply:0];
  [serverInterface_serverInterface_0 setClasses:v12 forSelector:sel_addObjects_andRemoveObjects_forArrayAtPath_handler_ argumentIndex:1 ofReply:0];
  [serverInterface_serverInterface_0 setClass:objc_opt_class() forSelector:sel_removeObjectsMatchingPredicate_fromArrayAtPath_handler_ argumentIndex:0 ofReply:0];
  [serverInterface_serverInterface_0 setClass:objc_opt_class() forSelector:sel_removeObjectsMatchingPredicate_fromArrayAtPath_handler_ argumentIndex:1 ofReply:0];
  [serverInterface_serverInterface_0 setClasses:v12 forSelector:sel_removeObjectsMatchingPredicate_fromArrayAtPath_handler_ argumentIndex:0 ofReply:1];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v13 setWithObjects:{v14, v15, v16, v17, objc_opt_class(), 0}];
  [serverInterface_serverInterface_0 setClasses:v18 forSelector:sel_activateDevices_remoteUserContextProxySourceDeviceUUID_ argumentIndex:0 ofReply:0];
  [serverInterface_serverInterface_0 setClasses:v18 forSelector:sel_deactivateDevices_remoteUserContextProxySourceDeviceUUID_ argumentIndex:0 ofReply:0];
  v19 = serverInterface_serverInterface_0;
  v20 = +[_CDContextValue supportedContextValueClasses];
  [v19 setClasses:v20 forSelector:sel_setObject_forPath_handler_ argumentIndex:0 ofReply:0];

  [serverInterface_serverInterface_0 setClass:objc_opt_class() forSelector:sel_setObject_forPath_handler_ argumentIndex:1 ofReply:0];
  v21 = serverInterface_serverInterface_0;
  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  [v21 setClasses:v24 forSelector:sel_valuesForPaths_handler_ argumentIndex:0 ofReply:0];

  v25 = +[_CDContextValue supportedContextValueClasses];
  v26 = [v25 mutableCopy];

  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  [v26 addObjectsFromArray:v27];

  [serverInterface_serverInterface_0 setClasses:v26 forSelector:sel_valuesForPaths_handler_ argumentIndex:0 ofReply:1];
  v28 = serverInterface_serverInterface_0;
  v29 = +[_CDContextValue supportedContextValueClasses];
  [v28 setClasses:v29 forSelector:sel_setObject_lastModifiedDate_forContextualKeyPath_handler_ argumentIndex:0 ofReply:0];

  [serverInterface_serverInterface_0 setClass:objc_opt_class() forSelector:sel_setObject_lastModifiedDate_forContextualKeyPath_handler_ argumentIndex:1 ofReply:0];
  [serverInterface_serverInterface_0 setClass:objc_opt_class() forSelector:sel_setObject_lastModifiedDate_forContextualKeyPath_handler_ argumentIndex:2 ofReply:0];
  [serverInterface_serverInterface_0 setClass:objc_opt_class() forSelector:sel_propertiesOfPath_handler_ argumentIndex:0 ofReply:0];
  v30 = serverInterface_serverInterface_0;
  v31 = +[_CDContextValue supportedContextValueClasses];
  [v30 setClasses:v31 forSelector:sel_propertiesOfPath_handler_ argumentIndex:0 ofReply:1];

  [serverInterface_serverInterface_0 setClass:objc_opt_class() forSelector:sel_propertiesOfPath_handler_ argumentIndex:1 ofReply:1];
  v32 = *MEMORY[0x1E69E9840];
}

void __45___CDUserContextServerClient_clientInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D21730];
  v1 = clientInterface_clientInterface_0;
  clientInterface_clientInterface_0 = v0;

  v2 = MEMORY[0x1E695DFA8];
  v3 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v4 = +[_CDContextValue supportedContextValueClasses];
  [v5 unionSet:v4];

  [clientInterface_clientInterface_0 setClass:objc_opt_class() forSelector:sel_handleContextualChange_info_handler_ argumentIndex:0 ofReply:0];
  [clientInterface_clientInterface_0 setClasses:v5 forSelector:sel_handleContextualChange_info_handler_ argumentIndex:1 ofReply:0];
  [clientInterface_clientInterface_0 setClass:objc_opt_class() forSelector:sel_handleRegistrationCompleted_handler_ argumentIndex:0 ofReply:0];
}

void __71___CDUserContextServerClient_initForService_withConnection_andContext___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = os_transaction_create();
  v3 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __71___CDUserContextServerClient_initForService_withConnection_andContext___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (v5 && WeakRetained)
  {
    [v5 deregisterAllCallbacks:0];
    v7 = [v6 wakingRegistrations];
    objc_sync_enter(v7);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v6 wakingRegistrations];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [WeakRetained addOpenRegistration:*(*(&v13 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    objc_sync_exit(v7);
    [WeakRetained clientWasInterrupted:v6];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __58___CDUserContextServerClient__hasKnowledgeOfPath_handler___block_invoke(uint64_t a1)
{
  v2 = +[_CDDevice localDevice];
  v3 = [v2 deviceID];
  v4 = [*(a1 + 32) deviceID];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    [_CDContextMonitorManager activateMonitorForKeyPath:*(a1 + 32)];
    v6 = *(a1 + 48);
    v7 = [*(*(a1 + 40) + 32) hasKnowledgeOfContextualKeyPath:*(a1 + 32)];
    v8 = *(v6 + 16);

    v8(v6, v7);
  }

  else
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58___CDUserContextServerClient__hasKnowledgeOfPath_handler___block_invoke_2;
    v11[3] = &unk_1E7886BF0;
    v12 = *(a1 + 48);
    [v9 _valueForRemotePath:v10 handler:v11];
  }
}

void __56___CDUserContextServerClient__propertiesOfPath_handler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 value];
  v4 = [v3 lastModifiedDate];

  (*(v2 + 16))(v2, v5, v4);
}

void __52___CDUserContextServerClient__valueForPath_handler___block_invoke(uint64_t a1)
{
  v2 = +[_CDDevice localDevice];
  v3 = [v2 deviceID];
  v4 = [*(a1 + 32) deviceID];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    [_CDContextMonitorManager activateMonitorForKeyPath:*(a1 + 32)];
    v9 = [*(*(a1 + 40) + 32) propertiesForContextualKeyPath:*(a1 + 32)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);

    [v6 _valueForRemotePath:v7 handler:v8];
  }
}

void __62___CDUserContextServerClient__propertiesOfRemotePath_handler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 value];
  v4 = [v3 lastModifiedDate];

  (*(v2 + 16))(v2, v5, v4);
}

void __58___CDUserContextServerClient__valueForRemotePath_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58___CDUserContextServerClient__valueForRemotePath_handler___block_invoke_2;
  v8[3] = &unk_1E7886338;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

void __58___CDUserContextServerClient__valueForRemotePath_handler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __58___CDUserContextServerClient__valueForRemotePath_handler___block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = [*(*(a1 + 40) + 32) propertiesForContextualKeyPath:*(a1 + 48)];
  v11 = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __58___CDUserContextServerClient__valueForRemotePath_handler___block_invoke_2_cold_2((a1 + 48), v10);
  }

  (*(*(a1 + 56) + 16))();
}

void __69___CDUserContextServerClient_handlePreviouslyFiredRegistration_info___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) identifier];
    v4 = [*(a1 + 32) clientIdentifier];
    *buf = 138412546;
    v13 = v3;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_1A9611000, v2, OS_LOG_TYPE_INFO, "Sending previously fired registration %@ to %{public}@", buf, 0x16u);
  }

  v5 = [*(*(a1 + 40) + 40) synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_125];
  v6 = [*(a1 + 32) identifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69___CDUserContextServerClient_handlePreviouslyFiredRegistration_info___block_invoke_126;
  v9[3] = &unk_1E7886CB0;
  v7 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  [v5 handleContextualChange:v6 info:v7 handler:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __69___CDUserContextServerClient_handlePreviouslyFiredRegistration_info___block_invoke_123(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __69___CDUserContextServerClient_handlePreviouslyFiredRegistration_info___block_invoke_123_cold_1();
  }
}

void __69___CDUserContextServerClient_handlePreviouslyFiredRegistration_info___block_invoke_126(uint64_t a1, char a2)
{
  v4 = [*(*(a1 + 32) + 40) _queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69___CDUserContextServerClient_handlePreviouslyFiredRegistration_info___block_invoke_2;
  v9[3] = &unk_1E7886C88;
  v11 = a2;
  v5 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  v6 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_0;
  block[3] = &unk_1E7886668;
  v13 = v6;
  v14 = v7;
  v8 = v6;
  dispatch_async(v4, block);
}

void __69___CDUserContextServerClient_handlePreviouslyFiredRegistration_info___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = *(a1 + 40);

    [v3 registerCallback:v4];
  }

  else
  {
    v5 = [v3[3] persistence];
    [v5 deleteRegistration:*(a1 + 40)];
  }
}

void __47___CDUserContextServerClient_registerCallback___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained performRegistrationCallbackWithRegistration:v6 info:v4];
}

void __47___CDUserContextServerClient_registerCallback___block_invoke_2(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) predicate];
  v4 = [v3 keyPaths];

  v5 = [v4 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [_CDContextMonitorManager activateMonitorForKeyPath:*(*(&v32 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v6);
  }

  v9 = [*(*(a1 + 40) + 24) persistence];
  [v9 saveRegistration:*(a1 + 32)];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [*(a1 + 32) predicate];
  v11 = [v10 keyPaths];

  v12 = [v11 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * j);
        v17 = [*(*(a1 + 40) + 24) persistence];
        v18 = [*(*(a1 + 40) + 32) propertiesForContextualKeyPath:v16];
        [v17 saveValue:v18 forKeyPath:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v13);
  }

  [*(*(a1 + 40) + 32) registerCallback:*(a1 + 32)];
  v19 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [*v2 identifier];
    v21 = [*v2 clientIdentifier];
    *buf = 138412546;
    v37 = v20;
    v38 = 2114;
    v39 = v21;
    _os_log_impl(&dword_1A9611000, v19, OS_LOG_TYPE_INFO, "Sending registration completed for registration %@ to %{public}@", buf, 0x16u);
  }

  v22 = *(*(a1 + 40) + 40);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __47___CDUserContextServerClient_registerCallback___block_invoke_130;
  v26[3] = &unk_1E7886808;
  v27 = *(a1 + 32);
  v23 = [v22 remoteObjectProxyWithErrorHandler:v26];
  if (v23)
  {
    v24 = [*v2 identifier];
    [v23 handleRegistrationCompleted:v24 handler:&__block_literal_global_133];
  }

  else
  {
    v24 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __47___CDUserContextServerClient_registerCallback___block_invoke_2_cold_1(v2);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __47___CDUserContextServerClient_registerCallback___block_invoke_130(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __47___CDUserContextServerClient_registerCallback___block_invoke_130_cold_1();
  }
}

void __47___CDUserContextServerClient_registerCallback___block_invoke_131(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __47___CDUserContextServerClient_registerCallback___block_invoke_131_cold_1();
    }
  }
}

void __47___CDUserContextServerClient_registerCallback___block_invoke_134()
{
  v0 = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __47___CDUserContextServerClient_registerCallback___block_invoke_134_cold_1();
  }
}

void __79___CDUserContextServerClient_performRegistrationCallbackWithRegistration_info___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v2 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v4 = [*(a1 + 32) clientIdentifier];
    *buf = 138412546;
    v16 = v3;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&dword_1A9611000, v2, OS_LOG_TYPE_DEFAULT, "Sending fired registration %@ to %{public}@", buf, 0x16u);
  }

  v5 = [*(*(a1 + 40) + 40) synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_139];
  v6 = [*(a1 + 32) identifier];
  v7 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79___CDUserContextServerClient_performRegistrationCallbackWithRegistration_info___block_invoke_140;
  v10[3] = &unk_1E7886850;
  v10[4] = &v11;
  [v5 handleContextualChange:v6 info:v7 handler:v10];

  if (*(a1 + 32) && *(v12 + 24) == 1)
  {
    v8 = [*(*(a1 + 40) + 24) persistence];
    [v8 deleteRegistration:*(a1 + 32)];

    [*(a1 + 40) deregisterCallback:*(a1 + 32)];
  }

  _Block_object_dispose(&v11, 8);
  v9 = *MEMORY[0x1E69E9840];
}

void __79___CDUserContextServerClient_performRegistrationCallbackWithRegistration_info___block_invoke_137(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __79___CDUserContextServerClient_performRegistrationCallbackWithRegistration_info___block_invoke_137_cold_1();
  }
}

void __70___CDUserContextServerClient_fetchPropertiesOfRemoteKeyPaths_handler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
  }

  [*(a1 + 40) addObject:*(a1 + 48)];
  v3 = [*(a1 + 40) count];
  if (v3 == [*(a1 + 56) count])
  {
    v4 = *(a1 + 64);
    v5 = [*(a1 + 32) anyObject];
    (*(v4 + 16))(v4, v5);
  }
}

void __109___CDUserContextServerClient_fetchPropertiesOfRemoteKeyPaths_remoteUserContextProxySourceDeviceUUID_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E6997908] mdcsChannel];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __109___CDUserContextServerClient_fetchPropertiesOfRemoteKeyPaths_remoteUserContextProxySourceDeviceUUID_handler___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __109___CDUserContextServerClient_fetchPropertiesOfRemoteKeyPaths_remoteUserContextProxySourceDeviceUUID_handler___block_invoke_cold_2(a1);
  }

  (*(*(a1 + 40) + 16))();
}

void __93___CDUserContextServerClient_subscribeToContextValueNotificationsWithRegistration_deviceIDs___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E6997908] mdcsChannel];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (a3)
  {
    if (v6)
    {
      __93___CDUserContextServerClient_subscribeToContextValueNotificationsWithRegistration_deviceIDs___block_invoke_cold_1(a1);
    }
  }

  else if (v6)
  {
    __93___CDUserContextServerClient_subscribeToContextValueNotificationsWithRegistration_deviceIDs___block_invoke_cold_2(a1);
  }
}

void __97___CDUserContextServerClient_unsubscribeFromContextValueNotificationsWithRegistration_deviceIDs___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E6997908] mdcsChannel];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (a3)
  {
    if (v6)
    {
      __97___CDUserContextServerClient_unsubscribeFromContextValueNotificationsWithRegistration_deviceIDs___block_invoke_cold_1(a1);
    }
  }

  else if (v6)
  {
    __97___CDUserContextServerClient_unsubscribeFromContextValueNotificationsWithRegistration_deviceIDs___block_invoke_cold_2(a1);
  }
}

void __87___CDUserContextServerClient_subscribeToDeviceStatusChangeNotificationsForDeviceTypes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [MEMORY[0x1E6997908] mdcsChannel];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __87___CDUserContextServerClient_subscribeToDeviceStatusChangeNotificationsForDeviceTypes___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __87___CDUserContextServerClient_subscribeToDeviceStatusChangeNotificationsForDeviceTypes___block_invoke_cold_2();
  }
}

void __54___CDUserContextServerClient__valuesForPaths_handler___block_invoke(void *a1)
{
  v2 = (a1 + 5);
  if (*(*(a1[5] + 8) + 40))
  {
    v3 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __54___CDUserContextServerClient__valuesForPaths_handler___block_invoke_cold_1(a1, v2);
    }

    v4 = [*(*(a1[5] + 8) + 40) copy];
    (*(a1[4] + 16))();
    v5 = *(a1[5] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  if (v8)
  {
    *(v7 + 40) = 0;
  }
}

void __54___CDUserContextServerClient__valuesForPaths_handler___block_invoke_149(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v16 = *v24;
    do
    {
      v4 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v23 + 1) + 8 * v4);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __54___CDUserContextServerClient__valuesForPaths_handler___block_invoke_2;
        v18[3] = &unk_1E7886E10;
        v18[4] = *(a1 + 40);
        v18[5] = v5;
        v6 = *(a1 + 80);
        v20 = *(a1 + 64);
        v22 = v6;
        v17 = *(a1 + 48);
        v7 = v17;
        v19 = v17;
        v21 = *(a1 + 72);
        v8 = MEMORY[0x1AC5886D0](v18);
        v9 = +[_CDDevice localDevice];
        v10 = [v9 deviceID];
        v11 = [v5 deviceID];
        v12 = [v10 isEqualToString:v11];

        if (v12)
        {
          [_CDContextMonitorManager activateMonitorForKeyPath:v5];
          v13 = [*(*(a1 + 40) + 32) propertiesForContextualKeyPath:v5];
          (v8)[2](v8, v13);
        }

        else
        {
          [*(a1 + 40) _valueForRemotePath:v5 handler:v8];
        }

        ++v4;
      }

      while (v3 != v4);
      v3 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v3);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __54___CDUserContextServerClient__valuesForPaths_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___CDUserContextServerClient__valuesForPaths_handler___block_invoke_3;
  block[3] = &unk_1E7886DE8;
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v6 = *(a1 + 80);
  v14 = *(a1 + 64);
  v16 = v6;
  v9 = *(a1 + 48);
  v7 = v9;
  v13 = v9;
  v15 = *(a1 + 72);
  v8 = v3;
  dispatch_sync(v4, block);
}

void __54___CDUserContextServerClient__valuesForPaths_handler___block_invoke_3(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    [*(*(a1[7] + 8) + 40) setObject:v2 forKeyedSubscript:a1[5]];
  }

  if (++*(*(a1[8] + 8) + 24) == a1[10])
  {
    v7 = [*(*(a1[7] + 8) + 40) copy];
    (*(a1[6] + 16))();
    v3 = *(a1[7] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v5 = *(a1[9] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void __71___CDUserContextServerClient_initForService_withConnection_andContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __58___CDUserContextServerClient__valueForRemotePath_handler___block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, a2, a3, "Unable to fetch properties of remote key path: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __58___CDUserContextServerClient__valueForRemotePath_handler___block_invoke_2_cold_2(void **a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _CDRedactedObjectForKeyPath(*a1, a2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __69___CDUserContextServerClient_handlePreviouslyFiredRegistration_info___block_invoke_123_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Error communicating with client for handlePreviouslyFiredRegistration: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __47___CDUserContextServerClient_registerCallback___block_invoke_2_cold_1(id *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*a1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __47___CDUserContextServerClient_registerCallback___block_invoke_130_cold_1()
{
  OUTLINED_FUNCTION_10();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(v0 + 32) identifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __47___CDUserContextServerClient_registerCallback___block_invoke_134_cold_1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __79___CDUserContextServerClient_performRegistrationCallbackWithRegistration_info___block_invoke_137_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Error communicating with client for performRegistrationCallbackWithRegistration: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __109___CDUserContextServerClient_fetchPropertiesOfRemoteKeyPaths_remoteUserContextProxySourceDeviceUUID_handler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Failed to fetch properties of remote key paths: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __109___CDUserContextServerClient_fetchPropertiesOfRemoteKeyPaths_remoteUserContextProxySourceDeviceUUID_handler___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3(a1);
  v2 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void __93___CDUserContextServerClient_subscribeToContextValueNotificationsWithRegistration_deviceIDs___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3(a1);
  v2 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void __93___CDUserContextServerClient_subscribeToContextValueNotificationsWithRegistration_deviceIDs___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3(a1);
  v2 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void __97___CDUserContextServerClient_unsubscribeFromContextValueNotificationsWithRegistration_deviceIDs___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3(a1);
  v3 = _CDPrettyPrintCollection();
  v4 = *(a1 + 40);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __97___CDUserContextServerClient_unsubscribeFromContextValueNotificationsWithRegistration_deviceIDs___block_invoke_cold_2(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3(a1);
  v3 = _CDPrettyPrintCollection();
  v4 = *(a1 + 40);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __87___CDUserContextServerClient_subscribeToDeviceStatusChangeNotificationsForDeviceTypes___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "Failed to subscribe to device status change notifications: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __87___CDUserContextServerClient_subscribeToDeviceStatusChangeNotificationsForDeviceTypes___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __54___CDUserContextServerClient__valuesForPaths_handler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{*(a1 + 56) - objc_msgSend(*(*(*a2 + 8) + 40), "count")}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

@end