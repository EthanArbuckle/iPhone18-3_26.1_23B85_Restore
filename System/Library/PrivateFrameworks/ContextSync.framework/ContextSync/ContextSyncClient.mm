@interface ContextSyncClient
- (BOOL)registerForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case withOptions:(unint64_t)options forDeviceTypes:(int64_t)types withError:(id *)error;
- (BOOL)registerForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case withOptions:(unint64_t)options forDevices:(id)devices withError:(id *)error;
- (BOOL)unregisterForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case forDeviceTypes:(int64_t)types;
- (BOOL)unregisterForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case forDeviceTypes:(int64_t)types withError:(id *)error;
- (BOOL)unregisterForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case forDevices:(id)devices withError:(id *)error;
- (ContextSyncClient)initWithClientName:(id)name;
@end

@implementation ContextSyncClient

- (ContextSyncClient)initWithClientName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = ContextSyncClient;
  v6 = [(ContextSyncClient *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientName, name);
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

- (BOOL)registerForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case withOptions:(unint64_t)options forDeviceTypes:(int64_t)types withError:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  identifierCopy = identifier;
  caseCopy = case;
  v17 = __biome_log_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options];
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:types];
    *buf = 138412546;
    *&buf[4] = v18;
    *&buf[12] = 2112;
    *&buf[14] = v19;
    _os_log_impl(&dword_244177000, v17, OS_LOG_TYPE_INFO, "Received DSL with options %@ for device types %@", buf, 0x16u);
  }

  if (![BMDistributedContextUtilities isSupportEnabledForBMDSL:updatesCopy useCase:caseCopy withError:error])
  {
    goto LABEL_15;
  }

  if (!identifierCopy)
  {
    v24 = __biome_log_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [ContextSyncClient registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:];
    }

    [BMDistributedContextUtilities updateDescriptionForError:error withErrorCode:5];
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
  [v21 registerForUpdates:updatesCopy withIdentifier:identifierCopy forUseCase:caseCopy withOptions:options forDeviceTypes:types withErrorHandler:v28];

  if ((v31[3] & 1) == 0 && *(*&buf[8] + 40))
  {
    v22 = __biome_log_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [*(*&buf[8] + 40) localizedDescription];
      objc_claimAutoreleasedReturnValue();
      [ContextSyncClient registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:];
    }

    if (error)
    {
      *error = *(*&buf[8] + 40);
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

- (BOOL)registerForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case withOptions:(unint64_t)options forDevices:(id)devices withError:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  identifierCopy = identifier;
  caseCopy = case;
  devicesCopy = devices;
  v19 = __biome_log_for_category();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options];
    *buf = 138412546;
    *&buf[4] = v20;
    *&buf[12] = 2112;
    *&buf[14] = devicesCopy;
    _os_log_impl(&dword_244177000, v19, OS_LOG_TYPE_INFO, "Received DSL with options %@ for devices %@", buf, 0x16u);
  }

  if (![BMDistributedContextUtilities isSupportEnabledForBMDSL:updatesCopy useCase:caseCopy withError:error])
  {
    goto LABEL_15;
  }

  if (!identifierCopy)
  {
    v25 = __biome_log_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ContextSyncClient registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:];
    }

    [BMDistributedContextUtilities updateDescriptionForError:error withErrorCode:5];
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
  [v22 registerForUpdates:updatesCopy withIdentifier:identifierCopy forUseCase:caseCopy withOptions:options forDevices:devicesCopy withErrorHandler:v28];

  if ((v31[3] & 1) == 0 && *(*&buf[8] + 40))
  {
    v23 = __biome_log_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [*(*&buf[8] + 40) localizedDescription];
      objc_claimAutoreleasedReturnValue();
      [ContextSyncClient registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:];
    }

    if (error)
    {
      *error = *(*&buf[8] + 40);
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

- (BOOL)unregisterForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case forDeviceTypes:(int64_t)types withError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  identifierCopy = identifier;
  caseCopy = case;
  v16 = __biome_log_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:types];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_244177000, v16, OS_LOG_TYPE_INFO, "Client unregistered DSL for devices types %@", &buf, 0xCu);
  }

  if (![BMDistributedContextUtilities isSupportEnabledForBMDSL:updatesCopy useCase:caseCopy withError:error])
  {
    goto LABEL_15;
  }

  if (!identifierCopy)
  {
    v22 = __biome_log_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ContextSyncClient registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:];
    }

    [BMDistributedContextUtilities updateDescriptionForError:error withErrorCode:5];
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
  [v19 unregisterForUpdates:updatesCopy withIdentifier:identifierCopy forUseCase:caseCopy forDeviceTypes:types withErrorHandler:v25];

  if ((v28[3] & 1) == 0 && *(*(&buf + 1) + 40))
  {
    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [*(*(&buf + 1) + 40) localizedDescription];
      objc_claimAutoreleasedReturnValue();
      [ContextSyncClient registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:];
    }

    if (error)
    {
      *error = *(*(&buf + 1) + 40);
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

- (BOOL)unregisterForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case forDevices:(id)devices withError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  identifierCopy = identifier;
  caseCopy = case;
  devicesCopy = devices;
  v17 = __biome_log_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = devicesCopy;
    _os_log_impl(&dword_244177000, v17, OS_LOG_TYPE_INFO, "Client unregistered DSL for devices types %@", &buf, 0xCu);
  }

  if (![BMDistributedContextUtilities isSupportEnabledForBMDSL:updatesCopy useCase:caseCopy withError:error])
  {
    goto LABEL_15;
  }

  if (!identifierCopy)
  {
    v22 = __biome_log_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ContextSyncClient registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:];
    }

    [BMDistributedContextUtilities updateDescriptionForError:error withErrorCode:5];
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
  [v19 unregisterForUpdates:updatesCopy withIdentifier:identifierCopy forUseCase:caseCopy forDevices:devicesCopy withErrorHandler:v25];

  if ((v28[3] & 1) == 0 && *(*(&buf + 1) + 40))
  {
    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [*(*(&buf + 1) + 40) localizedDescription];
      objc_claimAutoreleasedReturnValue();
      [ContextSyncClient registerForUpdates:withIdentifier:forUseCase:shouldWake:forDeviceTypes:withError:];
    }

    if (error)
    {
      *error = *(*(&buf + 1) + 40);
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

- (BOOL)unregisterForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case forDeviceTypes:(int64_t)types
{
  v29 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  identifierCopy = identifier;
  caseCopy = case;
  v14 = __biome_log_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:types];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v15;
    _os_log_impl(&dword_244177000, v14, OS_LOG_TYPE_INFO, "Client unregistered DSL for devices types %@", &buf, 0xCu);
  }

  if (![BMDistributedContextUtilities isSupportEnabledForBMDSL:updatesCopy useCase:caseCopy withError:0])
  {
    goto LABEL_9;
  }

  if (!identifierCopy)
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
  v23 = identifierCopy;
  [v17 unregisterForUpdates:updatesCopy withIdentifier:v23 forUseCase:caseCopy forDeviceTypes:types withErrorHandler:v22];

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