@interface ContextSyncClient
- (BOOL)registerForUpdates:(id)a3 withIdentifier:(id)a4 forUseCase:(id)a5 withOptions:(unint64_t)a6 forDeviceTypes:(int64_t)a7 withError:(id *)a8;
- (BOOL)registerForUpdates:(id)a3 withIdentifier:(id)a4 forUseCase:(id)a5 withOptions:(unint64_t)a6 forDevices:(id)a7 withError:(id *)a8;
- (BOOL)unregisterForUpdates:(id)a3 withIdentifier:(id)a4 forUseCase:(id)a5 forDeviceTypes:(int64_t)a6;
- (BOOL)unregisterForUpdates:(id)a3 withIdentifier:(id)a4 forUseCase:(id)a5 forDeviceTypes:(int64_t)a6 withError:(id *)a7;
- (BOOL)unregisterForUpdates:(id)a3 withIdentifier:(id)a4 forUseCase:(id)a5 forDevices:(id)a6 withError:(id *)a7;
- (ContextSyncClient)initWithClientName:(id)a3;
@end

@implementation ContextSyncClient

- (ContextSyncClient)initWithClientName:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = ContextSyncClient;
  v6 = [(ContextSyncClient *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientName, a3);
    v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.biome.ContextSync" options:4096];
    connection = v7->_connection;
    v7->_connection = v8;

    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28578EAA0];
    [(NSXPCConnection *)v7->_connection setRemoteObjectInterface:v10];
    [(NSXPCConnection *)v7->_connection resume];
  }

  return v7;
}

void __102__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_shouldWake_forDeviceTypes_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __102__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_shouldWake_forDeviceTypes_withError___block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __98__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_shouldWake_forDevices_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __102__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_shouldWake_forDeviceTypes_withError___block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __92__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_shouldWake_forDeviceTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __92__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_shouldWake_forDeviceTypes___block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

void __92__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_shouldWake_forDeviceTypes___block_invoke_61(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if ((a2 & 1) == 0)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __92__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_shouldWake_forDeviceTypes___block_invoke_61_cold_1(a1);
    }
  }
}

- (BOOL)registerForUpdates:(id)a3 withIdentifier:(id)a4 forUseCase:(id)a5 withOptions:(unint64_t)a6 forDeviceTypes:(int64_t)a7 withError:(id *)a8
{
  v38 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = __biome_log_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
    *buf = 138412546;
    *&buf[4] = v18;
    *&buf[12] = 2112;
    *&buf[14] = v19;
    _os_log_impl(&dword_244177000, v17, OS_LOG_TYPE_INFO, "Received DSL with options %@ for device types %@", buf, 0x16u);
  }

  if (![BMDistributedContextUtilities isSupportEnabledForBMDSL:v14 useCase:v16 withError:a8])
  {
    goto LABEL_15;
  }

  if (!v15)
  {
    v24 = __biome_log_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [ContextSyncClient registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:];
    }

    [BMDistributedContextUtilities updateDescriptionForError:a8 withErrorCode:5];
LABEL_15:
    v23 = 0;
    goto LABEL_16;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  connection = self->_connection;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __103__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_withOptions_forDeviceTypes_withError___block_invoke;
  v29[3] = &unk_278E07B38;
  v29[5] = buf;
  v29[6] = a2;
  v29[4] = &v30;
  v21 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v29];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __103__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_withOptions_forDeviceTypes_withError___block_invoke_62;
  v28[3] = &unk_278E07B60;
  v28[4] = &v30;
  v28[5] = buf;
  [v21 registerForUpdates:v14 withIdentifier:v15 forUseCase:v16 withOptions:a6 forDeviceTypes:a7 withErrorHandler:v28];

  if ((v31[3] & 1) == 0 && *(*&buf[8] + 40))
  {
    v22 = __biome_log_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [*(*&buf[8] + 40) localizedDescription];
      objc_claimAutoreleasedReturnValue();
      [ContextSyncClient registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:];
    }

    if (a8)
    {
      *a8 = *(*&buf[8] + 40);
    }
  }

  v23 = *(v31 + 24);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v30, 8);
LABEL_16:

  v25 = *MEMORY[0x277D85DE8];
  return v23 & 1;
}

void __103__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_withOptions_forDeviceTypes_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __102__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_shouldWake_forDeviceTypes_withError___block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)registerForUpdates:(id)a3 withIdentifier:(id)a4 forUseCase:(id)a5 withOptions:(unint64_t)a6 forDevices:(id)a7 withError:(id *)a8
{
  v38 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = __biome_log_for_category();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
    *buf = 138412546;
    *&buf[4] = v20;
    *&buf[12] = 2112;
    *&buf[14] = v18;
    _os_log_impl(&dword_244177000, v19, OS_LOG_TYPE_INFO, "Received DSL with options %@ for devices %@", buf, 0x16u);
  }

  if (![BMDistributedContextUtilities isSupportEnabledForBMDSL:v15 useCase:v17 withError:a8])
  {
    goto LABEL_15;
  }

  if (!v16)
  {
    v25 = __biome_log_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ContextSyncClient registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:];
    }

    [BMDistributedContextUtilities updateDescriptionForError:a8 withErrorCode:5];
LABEL_15:
    v24 = 0;
    goto LABEL_16;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  connection = self->_connection;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __99__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_withOptions_forDevices_withError___block_invoke;
  v29[3] = &unk_278E07B38;
  v29[5] = buf;
  v29[6] = a2;
  v29[4] = &v30;
  v22 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v29];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __99__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_withOptions_forDevices_withError___block_invoke_63;
  v28[3] = &unk_278E07B60;
  v28[4] = &v30;
  v28[5] = buf;
  [v22 registerForUpdates:v15 withIdentifier:v16 forUseCase:v17 withOptions:a6 forDevices:v18 withErrorHandler:v28];

  if ((v31[3] & 1) == 0 && *(*&buf[8] + 40))
  {
    v23 = __biome_log_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [*(*&buf[8] + 40) localizedDescription];
      objc_claimAutoreleasedReturnValue();
      [ContextSyncClient registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:];
    }

    if (a8)
    {
      *a8 = *(*&buf[8] + 40);
    }
  }

  v24 = *(v31 + 24);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v30, 8);
LABEL_16:

  v26 = *MEMORY[0x277D85DE8];
  return v24 & 1;
}

void __99__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_withOptions_forDevices_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __102__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_shouldWake_forDeviceTypes_withError___block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)unregisterForUpdates:(id)a3 withIdentifier:(id)a4 forUseCase:(id)a5 forDeviceTypes:(int64_t)a6 withError:(id *)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = __biome_log_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_244177000, v16, OS_LOG_TYPE_INFO, "Client unregistered DSL for devices types %@", &buf, 0xCu);
  }

  if (![BMDistributedContextUtilities isSupportEnabledForBMDSL:v13 useCase:v15 withError:a7])
  {
    goto LABEL_15;
  }

  if (!v14)
  {
    v22 = __biome_log_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ContextSyncClient registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:];
    }

    [BMDistributedContextUtilities updateDescriptionForError:a7 withErrorCode:5];
LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  connection = self->_connection;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __93__ContextSyncClient_unregisterForUpdates_withIdentifier_forUseCase_forDeviceTypes_withError___block_invoke;
  v26[3] = &unk_278E07B38;
  v26[5] = &buf;
  v26[6] = a2;
  v26[4] = &v27;
  v19 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v26];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __93__ContextSyncClient_unregisterForUpdates_withIdentifier_forUseCase_forDeviceTypes_withError___block_invoke_64;
  v25[3] = &unk_278E07B60;
  v25[4] = &v27;
  v25[5] = &buf;
  [v19 unregisterForUpdates:v13 withIdentifier:v14 forUseCase:v15 forDeviceTypes:a6 withErrorHandler:v25];

  if ((v28[3] & 1) == 0 && *(*(&buf + 1) + 40))
  {
    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [*(*(&buf + 1) + 40) localizedDescription];
      objc_claimAutoreleasedReturnValue();
      [ContextSyncClient registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:];
    }

    if (a7)
    {
      *a7 = *(*(&buf + 1) + 40);
    }
  }

  v21 = *(v28 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v27, 8);
LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

void __93__ContextSyncClient_unregisterForUpdates_withIdentifier_forUseCase_forDeviceTypes_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __102__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_shouldWake_forDeviceTypes_withError___block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)unregisterForUpdates:(id)a3 withIdentifier:(id)a4 forUseCase:(id)a5 forDevices:(id)a6 withError:(id *)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = __biome_log_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v16;
    _os_log_impl(&dword_244177000, v17, OS_LOG_TYPE_INFO, "Client unregistered DSL for devices types %@", &buf, 0xCu);
  }

  if (![BMDistributedContextUtilities isSupportEnabledForBMDSL:v13 useCase:v15 withError:a7])
  {
    goto LABEL_15;
  }

  if (!v14)
  {
    v22 = __biome_log_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ContextSyncClient registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:];
    }

    [BMDistributedContextUtilities updateDescriptionForError:a7 withErrorCode:5];
LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  connection = self->_connection;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __89__ContextSyncClient_unregisterForUpdates_withIdentifier_forUseCase_forDevices_withError___block_invoke;
  v26[3] = &unk_278E07B38;
  v26[5] = &buf;
  v26[6] = a2;
  v26[4] = &v27;
  v19 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v26];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __89__ContextSyncClient_unregisterForUpdates_withIdentifier_forUseCase_forDevices_withError___block_invoke_65;
  v25[3] = &unk_278E07B60;
  v25[4] = &v27;
  v25[5] = &buf;
  [v19 unregisterForUpdates:v13 withIdentifier:v14 forUseCase:v15 forDevices:v16 withErrorHandler:v25];

  if ((v28[3] & 1) == 0 && *(*(&buf + 1) + 40))
  {
    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [*(*(&buf + 1) + 40) localizedDescription];
      objc_claimAutoreleasedReturnValue();
      [ContextSyncClient registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:];
    }

    if (a7)
    {
      *a7 = *(*(&buf + 1) + 40);
    }
  }

  v21 = *(v28 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v27, 8);
LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

void __89__ContextSyncClient_unregisterForUpdates_withIdentifier_forUseCase_forDevices_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __102__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_shouldWake_forDeviceTypes_withError___block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)unregisterForUpdates:(id)a3 withIdentifier:(id)a4 forUseCase:(id)a5 forDeviceTypes:(int64_t)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = __biome_log_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v15;
    _os_log_impl(&dword_244177000, v14, OS_LOG_TYPE_INFO, "Client unregistered DSL for devices types %@", &buf, 0xCu);
  }

  if (![BMDistributedContextUtilities isSupportEnabledForBMDSL:v11 useCase:v13 withError:0])
  {
    goto LABEL_9;
  }

  if (!v12)
  {
    v19 = __biome_log_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ContextSyncClient registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:];
    }

LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x2020000000;
  v28 = 0;
  connection = self->_connection;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __83__ContextSyncClient_unregisterForUpdates_withIdentifier_forUseCase_forDeviceTypes___block_invoke;
  v25[3] = &unk_278E07B88;
  v25[4] = &buf;
  v25[5] = a2;
  v17 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v25];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __83__ContextSyncClient_unregisterForUpdates_withIdentifier_forUseCase_forDeviceTypes___block_invoke_66;
  v22[3] = &unk_278E07BB0;
  p_buf = &buf;
  v23 = v12;
  [v17 unregisterForUpdates:v11 withIdentifier:v23 forUseCase:v13 forDeviceTypes:a6 withErrorHandler:v22];

  v18 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
LABEL_10:

  v20 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

void __83__ContextSyncClient_unregisterForUpdates_withIdentifier_forUseCase_forDeviceTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __92__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_shouldWake_forDeviceTypes___block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

void __83__ContextSyncClient_unregisterForUpdates_withIdentifier_forUseCase_forDeviceTypes___block_invoke_66(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if ((a2 & 1) == 0)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __83__ContextSyncClient_unregisterForUpdates_withIdentifier_forUseCase_forDeviceTypes___block_invoke_66_cold_1(a1);
    }
  }
}

- (void)registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_3(&dword_244177000, v3, v4, "Error: %@", v5);
}

void __102__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_shouldWake_forDeviceTypes_withError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  v0 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_8(v1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_244177000, v4, v5, "%@ Error: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __92__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_shouldWake_forDeviceTypes___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(v0 + 40));
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_244177000, v2, v3, "%@ Error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __92__ContextSyncClient_registerForUpdates_withIdentifier_forUseCase_shouldWake_forDeviceTypes___block_invoke_61_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10(&dword_244177000, v2, v3, "Error registering %@ error %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __83__ContextSyncClient_unregisterForUpdates_withIdentifier_forUseCase_forDeviceTypes___block_invoke_66_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10(&dword_244177000, v2, v3, "Error unregistering %@ error %@");
  v4 = *MEMORY[0x277D85DE8];
}

@end