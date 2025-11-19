@interface CCSRemoteServiceConnection
- (CCSRemoteServiceConnection)init;
- (void)getEnabledStateOfModuleWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)handleControlCenterOperationType:(int64_t)a3 completionHandler:(id)a4;
- (void)handleIconElementRequest:(id)a3 completionHandler:(id)a4;
- (void)presentModuleWithIdentifier:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)requestAvailableModuleIdentifiersWithCompletionHandler:(id)a3;
- (void)requestDisableModuleWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)requestEnableModuleWithIdentifier:(id)a3 force:(BOOL)a4 completionHandler:(id)a5;
- (void)requestIconElementState:(id)a3 completionHandler:(id)a4;
- (void)resetToDefaultLayoutWithCompletionHandler:(id)a3;
- (void)setVisibility:(BOOL)a3 forModuleWithIdentifier:(id)a4 completionHandler:(id)a5;
@end

@implementation CCSRemoteServiceConnection

- (CCSRemoteServiceConnection)init
{
  v18.receiver = self;
  v18.super_class = CCSRemoteServiceConnection;
  v2 = [(CCSRemoteServiceConnection *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ControlCenter.RemoteServiceConnection", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.ControlCenter.RemoteServiceConnection.callout", v6);
    callOutQueue = v2->_callOutQueue;
    v2->_callOutQueue = v7;

    v9 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.controlcenter.remoteservice" options:0];
    connection = v2->_connection;
    v2->_connection = v9;

    v11 = v2->_connection;
    v12 = CCSRemoteServiceServerInterface();
    [(NSXPCConnection *)v11 setRemoteObjectInterface:v12];

    v13 = v2->_connection;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __34__CCSRemoteServiceConnection_init__block_invoke;
    v17[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v17[4] = v13;
    [(NSXPCConnection *)v13 setInterruptionHandler:v17];
    v14 = v2->_connection;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __34__CCSRemoteServiceConnection_init__block_invoke_4;
    v16[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v16[4] = v13;
    [(NSXPCConnection *)v14 setInvalidationHandler:v16];
    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

void __34__CCSRemoteServiceConnection_init__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = CCSLogRemoteService;
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_24427F000, v2, OS_LOG_TYPE_DEFAULT, "connection interrupted, %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __34__CCSRemoteServiceConnection_init__block_invoke_4(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = CCSLogRemoteService;
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_24427F000, v2, OS_LOG_TYPE_DEFAULT, "connection invalidated, %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)getEnabledStateOfModuleWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    [CCSRemoteServiceConnection getEnabledStateOfModuleWithIdentifier:completionHandler:];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    [CCSRemoteServiceConnection getEnabledStateOfModuleWithIdentifier:completionHandler:];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = _os_activity_create(&dword_24427F000, "com.apple.ControlCenter.RemoteServiceConnection.getEnabledStateOfModule", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CCSRemoteServiceConnection_getEnabledStateOfModuleWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_278E0F318;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  os_activity_apply(v8, block);
}

void __86__CCSRemoteServiceConnection_getEnabledStateOfModuleWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 24);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__CCSRemoteServiceConnection_getEnabledStateOfModuleWithIdentifier_completionHandler___block_invoke_2;
  v9[3] = &unk_278E0F340;
  v9[4] = v3;
  v10 = v2;
  v11 = *(a1 + 48);
  v5 = [v4 remoteObjectProxyWithErrorHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__CCSRemoteServiceConnection_getEnabledStateOfModuleWithIdentifier_completionHandler___block_invoke_19;
  v7[3] = &unk_278E0F390;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  [v5 getEnabledStateOfModuleWithIdentifier:v6 completionHandler:v7];
}

void __86__CCSRemoteServiceConnection_getEnabledStateOfModuleWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CCSRemoteServiceConnection_getEnabledStateOfModuleWithIdentifier_completionHandler___block_invoke_3;
  block[3] = &unk_278E0F318;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __86__CCSRemoteServiceConnection_getEnabledStateOfModuleWithIdentifier_completionHandler___block_invoke_3(uint64_t a1)
{
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
  {
    __86__CCSRemoteServiceConnection_getEnabledStateOfModuleWithIdentifier_completionHandler___block_invoke_3_cold_1(a1);
  }

  return (*(*(a1 + 48) + 16))();
}

void __86__CCSRemoteServiceConnection_getEnabledStateOfModuleWithIdentifier_completionHandler___block_invoke_19(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__CCSRemoteServiceConnection_getEnabledStateOfModuleWithIdentifier_completionHandler___block_invoke_2_20;
  v4[3] = &unk_278E0F368;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

- (void)requestAvailableModuleIdentifiersWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [CCSRemoteServiceConnection requestAvailableModuleIdentifiersWithCompletionHandler:];
  }

  v5 = _os_activity_create(&dword_24427F000, "com.apple.ControlCenter.RemoteServiceConnection.requestAvailableModuleIdentifiersWithCompletionHandler", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__CCSRemoteServiceConnection_requestAvailableModuleIdentifiersWithCompletionHandler___block_invoke;
  v7[3] = &unk_278E0F3B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  os_activity_apply(v5, v7);
}

void __85__CCSRemoteServiceConnection_requestAvailableModuleIdentifiersWithCompletionHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 24);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__CCSRemoteServiceConnection_requestAvailableModuleIdentifiersWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_278E0F3E0;
  v9[4] = v3;
  v10 = v2;
  v5 = [v4 remoteObjectProxyWithErrorHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__CCSRemoteServiceConnection_requestAvailableModuleIdentifiersWithCompletionHandler___block_invoke_22;
  v7[3] = &unk_278E0F430;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v5 requestAvailableModuleIdentifiersWithCompletionHandler:v7];
}

void __85__CCSRemoteServiceConnection_requestAvailableModuleIdentifiersWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__CCSRemoteServiceConnection_requestAvailableModuleIdentifiersWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_278E0F3B8;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __85__CCSRemoteServiceConnection_requestAvailableModuleIdentifiersWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
  {
    __85__CCSRemoteServiceConnection_requestAvailableModuleIdentifiersWithCompletionHandler___block_invoke_3_cold_1(a1);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void __85__CCSRemoteServiceConnection_requestAvailableModuleIdentifiersWithCompletionHandler___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__CCSRemoteServiceConnection_requestAvailableModuleIdentifiersWithCompletionHandler___block_invoke_2_23;
  block[3] = &unk_278E0F408;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)requestEnableModuleWithIdentifier:(id)a3 force:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (![v8 length])
  {
    [CCSRemoteServiceConnection requestEnableModuleWithIdentifier:force:completionHandler:];
  }

  v10 = _os_activity_create(&dword_24427F000, "com.apple.ControlCenter.RemoteServiceConnection.requestEnableModule", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__CCSRemoteServiceConnection_requestEnableModuleWithIdentifier_force_completionHandler___block_invoke;
  v13[3] = &unk_278E0F458;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  os_activity_apply(v10, v13);
}

void __88__CCSRemoteServiceConnection_requestEnableModuleWithIdentifier_force_completionHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 24);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__CCSRemoteServiceConnection_requestEnableModuleWithIdentifier_force_completionHandler___block_invoke_2;
  v10[3] = &unk_278E0F480;
  v10[4] = v3;
  v11 = v2;
  v13 = *(a1 + 56);
  v12 = *(a1 + 48);
  v5 = [v4 remoteObjectProxyWithErrorHandler:v10];
  v6 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__CCSRemoteServiceConnection_requestEnableModuleWithIdentifier_force_completionHandler___block_invoke_31;
  v8[3] = &unk_278E0F4D0;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  [v5 requestEnableModuleWithIdentifier:v7 force:v6 completionHandler:v8];
}

void __88__CCSRemoteServiceConnection_requestEnableModuleWithIdentifier_force_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__CCSRemoteServiceConnection_requestEnableModuleWithIdentifier_force_completionHandler___block_invoke_3;
  v6[3] = &unk_278E0F458;
  v7 = *(a1 + 40);
  v8 = v3;
  v10 = *(a1 + 56);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __88__CCSRemoteServiceConnection_requestEnableModuleWithIdentifier_force_completionHandler___block_invoke_3(uint64_t a1)
{
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
  {
    __88__CCSRemoteServiceConnection_requestEnableModuleWithIdentifier_force_completionHandler___block_invoke_3_cold_1(a1);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 40));
  }

  return result;
}

void __88__CCSRemoteServiceConnection_requestEnableModuleWithIdentifier_force_completionHandler___block_invoke_31(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__CCSRemoteServiceConnection_requestEnableModuleWithIdentifier_force_completionHandler___block_invoke_2_32;
  block[3] = &unk_278E0F4A8;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __88__CCSRemoteServiceConnection_requestEnableModuleWithIdentifier_force_completionHandler___block_invoke_2_32(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)requestDisableModuleWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    [CCSRemoteServiceConnection requestDisableModuleWithIdentifier:completionHandler:];
  }

  v8 = _os_activity_create(&dword_24427F000, "com.apple.ControlCenter.RemoteServiceConnection.requestDisableModule", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__CCSRemoteServiceConnection_requestDisableModuleWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_278E0F318;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  os_activity_apply(v8, block);
}

void __83__CCSRemoteServiceConnection_requestDisableModuleWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 24);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__CCSRemoteServiceConnection_requestDisableModuleWithIdentifier_completionHandler___block_invoke_2;
  v9[3] = &unk_278E0F340;
  v9[4] = v3;
  v10 = v2;
  v11 = *(a1 + 48);
  v5 = [v4 remoteObjectProxyWithErrorHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__CCSRemoteServiceConnection_requestDisableModuleWithIdentifier_completionHandler___block_invoke_34;
  v7[3] = &unk_278E0F4D0;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  [v5 requestDisableModuleWithIdentifier:v6 completionHandler:v7];
}

void __83__CCSRemoteServiceConnection_requestDisableModuleWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__CCSRemoteServiceConnection_requestDisableModuleWithIdentifier_completionHandler___block_invoke_3;
  block[3] = &unk_278E0F318;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __83__CCSRemoteServiceConnection_requestDisableModuleWithIdentifier_completionHandler___block_invoke_3(uint64_t a1)
{
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
  {
    __83__CCSRemoteServiceConnection_requestDisableModuleWithIdentifier_completionHandler___block_invoke_3_cold_1(a1);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 40));
  }

  return result;
}

void __83__CCSRemoteServiceConnection_requestDisableModuleWithIdentifier_completionHandler___block_invoke_34(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__CCSRemoteServiceConnection_requestDisableModuleWithIdentifier_completionHandler___block_invoke_2_35;
  block[3] = &unk_278E0F4A8;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __83__CCSRemoteServiceConnection_requestDisableModuleWithIdentifier_completionHandler___block_invoke_2_35(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)setVisibility:(BOOL)a3 forModuleWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (![v8 length])
  {
    [CCSRemoteServiceConnection setVisibility:forModuleWithIdentifier:completionHandler:];
  }

  v10 = _os_activity_create(&dword_24427F000, "com.apple.ControlCenter.RemoteServiceConnection.setVisibility", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__CCSRemoteServiceConnection_setVisibility_forModuleWithIdentifier_completionHandler___block_invoke;
  v13[3] = &unk_278E0F458;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  os_activity_apply(v10, v13);
}

void __86__CCSRemoteServiceConnection_setVisibility_forModuleWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 24);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__CCSRemoteServiceConnection_setVisibility_forModuleWithIdentifier_completionHandler___block_invoke_2;
  v10[3] = &unk_278E0F340;
  v10[4] = v3;
  v11 = v2;
  v12 = *(a1 + 48);
  v5 = [v4 remoteObjectProxyWithErrorHandler:v10];
  v6 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__CCSRemoteServiceConnection_setVisibility_forModuleWithIdentifier_completionHandler___block_invoke_36;
  v8[3] = &unk_278E0F4D0;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  [v5 setVisibility:v6 forModuleWithIdentifier:v7 completionHandler:v8];
}

void __86__CCSRemoteServiceConnection_setVisibility_forModuleWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CCSRemoteServiceConnection_setVisibility_forModuleWithIdentifier_completionHandler___block_invoke_3;
  block[3] = &unk_278E0F318;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __86__CCSRemoteServiceConnection_setVisibility_forModuleWithIdentifier_completionHandler___block_invoke_3(uint64_t a1)
{
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
  {
    __86__CCSRemoteServiceConnection_setVisibility_forModuleWithIdentifier_completionHandler___block_invoke_3_cold_1(a1);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 40));
  }

  return result;
}

void __86__CCSRemoteServiceConnection_setVisibility_forModuleWithIdentifier_completionHandler___block_invoke_36(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CCSRemoteServiceConnection_setVisibility_forModuleWithIdentifier_completionHandler___block_invoke_2_37;
  block[3] = &unk_278E0F4A8;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __86__CCSRemoteServiceConnection_setVisibility_forModuleWithIdentifier_completionHandler___block_invoke_2_37(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)presentModuleWithIdentifier:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_24427F000, "com.apple.ControlCenter.RemoteServiceConnection.presentModuleWithIdentifier", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__CCSRemoteServiceConnection_presentModuleWithIdentifier_options_completionHandler___block_invoke;
  v15[3] = &unk_278E0F4F8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  os_activity_apply(v11, v15);
}

void __84__CCSRemoteServiceConnection_presentModuleWithIdentifier_options_completionHandler___block_invoke(uint64_t a1)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v10 = *(a1 + 32);
  v2 = *(v10 + 24);
  v13[2] = __84__CCSRemoteServiceConnection_presentModuleWithIdentifier_options_completionHandler___block_invoke_2;
  v13[3] = &unk_278E0F520;
  v3 = *(&v10 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v14 = v10;
  v15 = v6;
  v7 = [v2 remoteObjectProxyWithErrorHandler:v13];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__CCSRemoteServiceConnection_presentModuleWithIdentifier_options_completionHandler___block_invoke_38;
  v11[3] = &unk_278E0F4D0;
  v11[4] = *(a1 + 32);
  v12 = *(a1 + 56);
  [v7 presentModuleWithIdentifier:v8 options:v9 completionHandler:v11];
}

void __84__CCSRemoteServiceConnection_presentModuleWithIdentifier_options_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__CCSRemoteServiceConnection_presentModuleWithIdentifier_options_completionHandler___block_invoke_3;
  v6[3] = &unk_278E0F4F8;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __84__CCSRemoteServiceConnection_presentModuleWithIdentifier_options_completionHandler___block_invoke_3(uint64_t a1)
{
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
  {
    __84__CCSRemoteServiceConnection_presentModuleWithIdentifier_options_completionHandler___block_invoke_3_cold_1(a1);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 48));
  }

  return result;
}

void __84__CCSRemoteServiceConnection_presentModuleWithIdentifier_options_completionHandler___block_invoke_38(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__CCSRemoteServiceConnection_presentModuleWithIdentifier_options_completionHandler___block_invoke_2_39;
  block[3] = &unk_278E0F4A8;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __84__CCSRemoteServiceConnection_presentModuleWithIdentifier_options_completionHandler___block_invoke_2_39(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)handleIconElementRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_24427F000, "com.apple.ControlCenter.RemoteServiceConnection.handleIconElementRequest", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CCSRemoteServiceConnection_handleIconElementRequest_completionHandler___block_invoke;
  block[3] = &unk_278E0F318;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  os_activity_apply(v8, block);
}

void __73__CCSRemoteServiceConnection_handleIconElementRequest_completionHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 24);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__CCSRemoteServiceConnection_handleIconElementRequest_completionHandler___block_invoke_2;
  v9[3] = &unk_278E0F340;
  v9[4] = v3;
  v10 = v2;
  v11 = *(a1 + 48);
  v5 = [v4 remoteObjectProxyWithErrorHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__CCSRemoteServiceConnection_handleIconElementRequest_completionHandler___block_invoke_40;
  v7[3] = &unk_278E0F4D0;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  [v5 handleIconElementRequest:v6 completionHandler:v7];
}

void __73__CCSRemoteServiceConnection_handleIconElementRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CCSRemoteServiceConnection_handleIconElementRequest_completionHandler___block_invoke_3;
  block[3] = &unk_278E0F318;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __73__CCSRemoteServiceConnection_handleIconElementRequest_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = CCSLogRemoteService;
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
  {
    __73__CCSRemoteServiceConnection_handleIconElementRequest_completionHandler___block_invoke_3_cold_1(a1, v2);
  }

  v3 = *(a1 + 40);
  return (*(*(a1 + 48) + 16))();
}

void __73__CCSRemoteServiceConnection_handleIconElementRequest_completionHandler___block_invoke_40(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CCSRemoteServiceConnection_handleIconElementRequest_completionHandler___block_invoke_2_41;
  block[3] = &unk_278E0F4A8;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)handleControlCenterOperationType:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = _os_activity_create(&dword_24427F000, "com.apple.ControlCenter.RemoteServiceConnection.handleControlCenterOperationType", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__CCSRemoteServiceConnection_handleControlCenterOperationType_completionHandler___block_invoke;
  block[3] = &unk_278E0F548;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  os_activity_apply(v7, block);
}

void __81__CCSRemoteServiceConnection_handleControlCenterOperationType_completionHandler___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 24);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__CCSRemoteServiceConnection_handleControlCenterOperationType_completionHandler___block_invoke_2;
  v10[3] = &unk_278E0F3E0;
  v10[4] = v3;
  v11 = v2;
  v5 = [v4 remoteObjectProxyWithErrorHandler:v10];
  v6 = a1[5];
  v7 = a1[6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__CCSRemoteServiceConnection_handleControlCenterOperationType_completionHandler___block_invoke_42;
  v8[3] = &unk_278E0F4D0;
  v8[4] = a1[4];
  v9 = v6;
  [v5 handleControlCenterOperationType:v7 completionHandler:v8];
}

void __81__CCSRemoteServiceConnection_handleControlCenterOperationType_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__CCSRemoteServiceConnection_handleControlCenterOperationType_completionHandler___block_invoke_3;
  v6[3] = &unk_278E0F3B8;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __81__CCSRemoteServiceConnection_handleControlCenterOperationType_completionHandler___block_invoke_3(uint64_t a1)
{
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
  {
    __81__CCSRemoteServiceConnection_handleControlCenterOperationType_completionHandler___block_invoke_3_cold_1(a1);
  }

  v2 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

void __81__CCSRemoteServiceConnection_handleControlCenterOperationType_completionHandler___block_invoke_42(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__CCSRemoteServiceConnection_handleControlCenterOperationType_completionHandler___block_invoke_2_43;
  block[3] = &unk_278E0F4A8;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)requestIconElementState:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_24427F000, "com.apple.ControlCenter.RemoteServiceConnection.requestIconElementState", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CCSRemoteServiceConnection_requestIconElementState_completionHandler___block_invoke;
  block[3] = &unk_278E0F5C0;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  os_activity_apply(v8, block);
}

void __72__CCSRemoteServiceConnection_requestIconElementState_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__CCSRemoteServiceConnection_requestIconElementState_completionHandler___block_invoke_2;
  v8[3] = &unk_278E0F3E0;
  v8[4] = v2;
  v9 = *(a1 + 48);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__CCSRemoteServiceConnection_requestIconElementState_completionHandler___block_invoke_44;
  v6[3] = &unk_278E0F598;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  [v4 requestIconElementState:v5 completionHandler:v6];
}

void __72__CCSRemoteServiceConnection_requestIconElementState_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__CCSRemoteServiceConnection_requestIconElementState_completionHandler___block_invoke_3;
  v6[3] = &unk_278E0F3B8;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __72__CCSRemoteServiceConnection_requestIconElementState_completionHandler___block_invoke_3(uint64_t a1)
{
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
  {
    __72__CCSRemoteServiceConnection_requestIconElementState_completionHandler___block_invoke_3_cold_1(a1);
  }

  v2 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

void __72__CCSRemoteServiceConnection_requestIconElementState_completionHandler___block_invoke_44(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CCSRemoteServiceConnection_requestIconElementState_completionHandler___block_invoke_2_45;
  block[3] = &unk_278E0F570;
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)resetToDefaultLayoutWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_24427F000, "com.apple.ControlCenter.RemoteServiceConnection.resetToDefaultLayout", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__CCSRemoteServiceConnection_resetToDefaultLayoutWithCompletionHandler___block_invoke;
  v7[3] = &unk_278E0F3B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  os_activity_apply(v5, v7);
}

void __72__CCSRemoteServiceConnection_resetToDefaultLayoutWithCompletionHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 24);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__CCSRemoteServiceConnection_resetToDefaultLayoutWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_278E0F3E0;
  v9[4] = v3;
  v10 = v2;
  v5 = [v4 remoteObjectProxyWithErrorHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__CCSRemoteServiceConnection_resetToDefaultLayoutWithCompletionHandler___block_invoke_47;
  v7[3] = &unk_278E0F4D0;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v5 resetToDefaultLayoutWithCompletionHandler:v7];
}

void __72__CCSRemoteServiceConnection_resetToDefaultLayoutWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__CCSRemoteServiceConnection_resetToDefaultLayoutWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_278E0F3B8;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __72__CCSRemoteServiceConnection_resetToDefaultLayoutWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
  {
    __72__CCSRemoteServiceConnection_resetToDefaultLayoutWithCompletionHandler___block_invoke_3_cold_1(a1);
  }

  v2 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

void __72__CCSRemoteServiceConnection_resetToDefaultLayoutWithCompletionHandler___block_invoke_47(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CCSRemoteServiceConnection_resetToDefaultLayoutWithCompletionHandler___block_invoke_2_48;
  block[3] = &unk_278E0F4A8;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)getEnabledStateOfModuleWithIdentifier:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3_0();
  [v0 handleFailureInMethod:@"[identifier length] > 0" object:? file:? lineNumber:? description:?];
}

- (void)getEnabledStateOfModuleWithIdentifier:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3_0();
  [v0 handleFailureInMethod:@"completionHandler != nil" object:? file:? lineNumber:? description:?];
}

void __86__CCSRemoteServiceConnection_getEnabledStateOfModuleWithIdentifier_completionHandler___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestAvailableModuleIdentifiersWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3_0();
  [v0 handleFailureInMethod:@"completionHandler != nil" object:? file:? lineNumber:? description:?];
}

void __85__CCSRemoteServiceConnection_requestAvailableModuleIdentifiersWithCompletionHandler___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestEnableModuleWithIdentifier:force:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3_0();
  [v0 handleFailureInMethod:@"[identifier length] > 0" object:? file:? lineNumber:? description:?];
}

void __88__CCSRemoteServiceConnection_requestEnableModuleWithIdentifier_force_completionHandler___block_invoke_3_cold_1(uint64_t a1)
{
  *(OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]) + 56);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestDisableModuleWithIdentifier:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3_0();
  [v0 handleFailureInMethod:@"[identifier length] > 0" object:? file:? lineNumber:? description:?];
}

void __83__CCSRemoteServiceConnection_requestDisableModuleWithIdentifier_completionHandler___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setVisibility:forModuleWithIdentifier:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3_0();
  [v0 handleFailureInMethod:@"[identifier length] > 0" object:? file:? lineNumber:? description:?];
}

void __86__CCSRemoteServiceConnection_setVisibility_forModuleWithIdentifier_completionHandler___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__CCSRemoteServiceConnection_presentModuleWithIdentifier_options_completionHandler___block_invoke_3_cold_1(uint64_t a1)
{
  v1 = *(OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]) + 48);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __73__CCSRemoteServiceConnection_handleIconElementRequest_completionHandler___block_invoke_3_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 description];
  v6 = *(a1 + 40);
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_24427F000, v4, OS_LOG_TYPE_ERROR, "Failed to handle iconElementRequest for request: %@ error=%@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __81__CCSRemoteServiceConnection_handleControlCenterOperationType_completionHandler___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__CCSRemoteServiceConnection_requestIconElementState_completionHandler___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__CCSRemoteServiceConnection_resetToDefaultLayoutWithCompletionHandler___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end