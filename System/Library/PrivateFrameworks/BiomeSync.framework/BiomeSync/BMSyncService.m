@interface BMSyncService
- (BOOL)triggerCloudKitSyncWithError:(id *)a3;
- (BOOL)triggerRapportSyncWithDeviceIdentifiers:(id)a3 error:(id *)a4;
- (BOOL)triggerRapportSyncWithError:(id *)a3;
- (id)cascadeRapportSyncWithErrors:(id *)a3;
- (id)cloudKitSyncWithErrors:(id *)a3;
- (id)connection;
- (id)peerInformationWithError:(id *)a3;
- (id)rapportSyncWithErrors:(id *)a3;
- (id)remoteDevicesForAccount:(id)a3 error:(id *)a4;
- (id)remoteDevicesWithError:(id *)a3;
- (void)remoteDevicesForAccount:(id)a3 reply:(id)a4;
- (void)remoteDevicesWithReply:(id)a3;
- (void)triggerCloudKitSyncWithReply:(id)a3;
- (void)triggerRapportSyncWithReply:(id)a3;
@end

@implementation BMSyncService

- (id)connection
{
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.biomesyncd.sync" options:0];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853BBE48];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  [v3 setClasses:v7 forSelector:sel_remoteDevicesForAccount_reply_ argumentIndex:0 ofReply:1];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  [v3 setClasses:v11 forSelector:sel_triggerRapportSyncWithReply_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v3 setClasses:v14 forSelector:sel_triggerRapportSyncDeviceIdentifiers_reply_ argumentIndex:0 ofReply:0];

  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
  [v3 setClasses:v18 forSelector:sel_triggerRapportSyncDeviceIdentifiers_reply_ argumentIndex:0 ofReply:1];

  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
  [v3 setClasses:v22 forSelector:sel_triggerCloudKitSyncWithReply_ argumentIndex:0 ofReply:1];

  v23 = MEMORY[0x277CBEB98];
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = [v23 setWithObjects:{v24, v25, objc_opt_class(), 0}];
  [v3 setClasses:v26 forSelector:sel_rapportSyncWithReply_ argumentIndex:1 ofReply:1];

  v27 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];
  [v3 setClasses:v30 forSelector:sel_cascadeRapportSyncWithReply_ argumentIndex:1 ofReply:1];

  v31 = MEMORY[0x277CBEB98];
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = [v31 setWithObjects:{v32, v33, objc_opt_class(), 0}];
  [v3 setClasses:v34 forSelector:sel_cloudKitSyncWithReply_ argumentIndex:1 ofReply:1];

  v35 = MEMORY[0x277CBEB98];
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = [v35 setWithObjects:{v36, v37, objc_opt_class(), 0}];
  [v3 setClasses:v38 forSelector:sel_peerInformationWithReply_ argumentIndex:1 ofReply:1];

  [v2 setRemoteObjectInterface:v3];
  v39 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853BB8C0];
  [v2 setExportedInterface:v39];

  [v2 setExportedObject:self];
  objc_initWeak(&location, v2);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __27__BMSyncService_connection__block_invoke;
  v42[3] = &unk_278D08DC8;
  objc_copyWeak(&v43, &location);
  [v2 setInvalidationHandler:v42];
  [v2 setInterruptionHandler:&__block_literal_global];
  [v2 resume];
  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);

  return v2;
}

void __27__BMSyncService_connection__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _xpcConnection];
    v4 = xpc_connection_copy_invalidation_reason();

    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = "<unknown>";
      if (v4)
      {
        v6 = v4;
      }

      v8 = 136446210;
      v9 = v6;
      _os_log_impl(&dword_241B04000, v5, OS_LOG_TYPE_INFO, "BMSyncService: connection invalidated with reason %{public}s", &v8, 0xCu);
    }

    free(v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __27__BMSyncService_connection__block_invoke_30()
{
  v0 = __biome_log_for_category();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_241B04000, v0, OS_LOG_TYPE_INFO, "BMSyncService: connection interrupted", v1, 2u);
  }
}

- (void)remoteDevicesWithReply:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(BMSyncService *)self connection];
  objc_initWeak(&location, v6);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__BMSyncService_remoteDevicesWithReply___block_invoke;
  v13[3] = &unk_278D08E10;
  v7 = v4;
  v14 = v7;
  objc_copyWeak(&v15, &location);
  v8 = [v6 remoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__BMSyncService_remoteDevicesWithReply___block_invoke_2;
  v10[3] = &unk_278D08E38;
  v9 = v7;
  v11 = v9;
  objc_copyWeak(&v12, &location);
  [v8 remoteDevicesForAccount:0 reply:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v5);
}

void __40__BMSyncService_remoteDevicesWithReply___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, MEMORY[0x277CBEBF8], a2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

void __40__BMSyncService_remoteDevicesWithReply___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

- (void)remoteDevicesForAccount:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(BMSyncService *)self connection];
  objc_initWeak(&location, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__BMSyncService_remoteDevicesForAccount_reply___block_invoke;
  v16[3] = &unk_278D08E10;
  v10 = v7;
  v17 = v10;
  objc_copyWeak(&v18, &location);
  v11 = [v9 remoteObjectProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__BMSyncService_remoteDevicesForAccount_reply___block_invoke_2;
  v13[3] = &unk_278D08E38;
  v12 = v10;
  v14 = v12;
  objc_copyWeak(&v15, &location);
  [v11 remoteDevicesForAccount:v6 reply:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v8);
}

void __47__BMSyncService_remoteDevicesForAccount_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, MEMORY[0x277CBEBF8], a2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

void __47__BMSyncService_remoteDevicesForAccount_reply___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

- (void)triggerRapportSyncWithReply:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(BMSyncService *)self connection];
  objc_initWeak(&location, v6);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__BMSyncService_triggerRapportSyncWithReply___block_invoke;
  v13[3] = &unk_278D08E10;
  v7 = v4;
  v14 = v7;
  objc_copyWeak(&v15, &location);
  v8 = [v6 remoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__BMSyncService_triggerRapportSyncWithReply___block_invoke_2;
  v10[3] = &unk_278D08E10;
  v9 = v7;
  v11 = v9;
  objc_copyWeak(&v12, &location);
  [v8 triggerRapportSyncWithReply:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v5);
}

void __45__BMSyncService_triggerRapportSyncWithReply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

void __45__BMSyncService_triggerRapportSyncWithReply___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

- (void)triggerCloudKitSyncWithReply:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(BMSyncService *)self connection];
  objc_initWeak(&location, v6);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__BMSyncService_triggerCloudKitSyncWithReply___block_invoke;
  v13[3] = &unk_278D08E10;
  v7 = v4;
  v14 = v7;
  objc_copyWeak(&v15, &location);
  v8 = [v6 remoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__BMSyncService_triggerCloudKitSyncWithReply___block_invoke_2;
  v10[3] = &unk_278D08E10;
  v9 = v7;
  v11 = v9;
  objc_copyWeak(&v12, &location);
  [v8 triggerCloudKitSyncWithReply:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v5);
}

void __46__BMSyncService_triggerCloudKitSyncWithReply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

void __46__BMSyncService_triggerCloudKitSyncWithReply___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

- (id)remoteDevicesWithError:(id *)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [(BMSyncService *)self connection];
  objc_initWeak(&location, v6);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__BMSyncService_remoteDevicesWithError___block_invoke;
  v13[3] = &unk_278D08E60;
  v13[4] = &v16;
  objc_copyWeak(&v14, &location);
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__BMSyncService_remoteDevicesWithError___block_invoke_2;
  v11[3] = &unk_278D08E88;
  v11[4] = &v22;
  v11[5] = &v16;
  objc_copyWeak(&v12, &location);
  [v7 remoteDevicesForAccount:0 reply:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(v5);
  if (a3)
  {
    v8 = v17[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v9;
}

void __40__BMSyncService_remoteDevicesWithError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

void __40__BMSyncService_remoteDevicesWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained invalidate];
}

- (id)remoteDevicesForAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [(BMSyncService *)self connection];
  objc_initWeak(&location, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__BMSyncService_remoteDevicesForAccount_error___block_invoke;
  v15[3] = &unk_278D08E60;
  v15[4] = &v18;
  objc_copyWeak(&v16, &location);
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__BMSyncService_remoteDevicesForAccount_error___block_invoke_2;
  v13[3] = &unk_278D08E88;
  v13[4] = &v24;
  v13[5] = &v18;
  objc_copyWeak(&v14, &location);
  [v9 remoteDevicesForAccount:v6 reply:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(v7);
  if (a4)
  {
    v10 = v19[5];
    if (v10)
    {
      *a4 = v10;
    }
  }

  v11 = v25[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v11;
}

void __47__BMSyncService_remoteDevicesForAccount_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

void __47__BMSyncService_remoteDevicesForAccount_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained invalidate];
}

- (BOOL)triggerRapportSyncWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [(BMSyncService *)self connection];
  objc_initWeak(&location, v6);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__BMSyncService_triggerRapportSyncWithError___block_invoke;
  v13[3] = &unk_278D08E60;
  v13[4] = &v16;
  objc_copyWeak(&v14, &location);
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__BMSyncService_triggerRapportSyncWithError___block_invoke_2;
  v11[3] = &unk_278D08E60;
  v11[4] = &v16;
  objc_copyWeak(&v12, &location);
  [v7 triggerRapportSyncWithReply:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(v5);
  v8 = v17[5];
  if (a3 && v8)
  {
    *a3 = v8;
    v8 = v17[5];
  }

  v9 = v8 == 0;
  _Block_object_dispose(&v16, 8);

  return v9;
}

void __45__BMSyncService_triggerRapportSyncWithError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

void __45__BMSyncService_triggerRapportSyncWithError___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

- (BOOL)triggerRapportSyncWithDeviceIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [(BMSyncService *)self connection];
  objc_initWeak(&location, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__BMSyncService_triggerRapportSyncWithDeviceIdentifiers_error___block_invoke;
  v15[3] = &unk_278D08E60;
  v15[4] = &v18;
  objc_copyWeak(&v16, &location);
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__BMSyncService_triggerRapportSyncWithDeviceIdentifiers_error___block_invoke_2;
  v13[3] = &unk_278D08E60;
  v13[4] = &v18;
  objc_copyWeak(&v14, &location);
  [v9 triggerRapportSyncDeviceIdentifiers:v6 reply:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(v7);
  v10 = v19[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v19[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __63__BMSyncService_triggerRapportSyncWithDeviceIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

void __63__BMSyncService_triggerRapportSyncWithDeviceIdentifiers_error___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

- (BOOL)triggerCloudKitSyncWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [(BMSyncService *)self connection];
  objc_initWeak(&location, v6);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__BMSyncService_triggerCloudKitSyncWithError___block_invoke;
  v13[3] = &unk_278D08E60;
  v13[4] = &v16;
  objc_copyWeak(&v14, &location);
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__BMSyncService_triggerCloudKitSyncWithError___block_invoke_2;
  v11[3] = &unk_278D08E60;
  v11[4] = &v16;
  objc_copyWeak(&v12, &location);
  [v7 triggerCloudKitSyncWithReply:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(v5);
  v8 = v17[5];
  if (a3 && v8)
  {
    *a3 = v8;
    v8 = v17[5];
  }

  v9 = v8 == 0;
  _Block_object_dispose(&v16, 8);

  return v9;
}

void __46__BMSyncService_triggerCloudKitSyncWithError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

void __46__BMSyncService_triggerCloudKitSyncWithError___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

- (id)rapportSyncWithErrors:(id *)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = MEMORY[0x277CBEBF8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [(BMSyncService *)self connection];
  objc_initWeak(&location, v6);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__BMSyncService_rapportSyncWithErrors___block_invoke;
  v13[3] = &unk_278D08E60;
  v13[4] = &v16;
  objc_copyWeak(&v14, &location);
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__BMSyncService_rapportSyncWithErrors___block_invoke_2;
  v11[3] = &unk_278D08EB0;
  v11[4] = &v22;
  v11[5] = &v16;
  objc_copyWeak(&v12, &location);
  [v7 rapportSyncWithReply:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(v5);
  if (a3)
  {
    v8 = v17[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v9;
}

void __39__BMSyncService_rapportSyncWithErrors___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v10 count:1];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];

  v9 = *MEMORY[0x277D85DE8];
}

void __39__BMSyncService_rapportSyncWithErrors___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained invalidate];
}

- (id)cascadeRapportSyncWithErrors:(id *)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = MEMORY[0x277CBEBF8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [(BMSyncService *)self connection];
  objc_initWeak(&location, v6);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__BMSyncService_cascadeRapportSyncWithErrors___block_invoke;
  v13[3] = &unk_278D08E60;
  v13[4] = &v16;
  objc_copyWeak(&v14, &location);
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__BMSyncService_cascadeRapportSyncWithErrors___block_invoke_2;
  v11[3] = &unk_278D08EB0;
  v11[4] = &v22;
  v11[5] = &v16;
  objc_copyWeak(&v12, &location);
  [v7 cascadeRapportSyncWithReply:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(v5);
  if (a3)
  {
    v8 = v17[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v9;
}

void __46__BMSyncService_cascadeRapportSyncWithErrors___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v10 count:1];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];

  v9 = *MEMORY[0x277D85DE8];
}

void __46__BMSyncService_cascadeRapportSyncWithErrors___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained invalidate];
}

- (id)cloudKitSyncWithErrors:(id *)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = MEMORY[0x277CBEBF8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [(BMSyncService *)self connection];
  objc_initWeak(&location, v6);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__BMSyncService_cloudKitSyncWithErrors___block_invoke;
  v13[3] = &unk_278D08E60;
  v13[4] = &v16;
  objc_copyWeak(&v14, &location);
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__BMSyncService_cloudKitSyncWithErrors___block_invoke_2;
  v11[3] = &unk_278D08EB0;
  v11[4] = &v22;
  v11[5] = &v16;
  objc_copyWeak(&v12, &location);
  [v7 cloudKitSyncWithReply:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(v5);
  if (a3)
  {
    v8 = v17[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v9;
}

void __40__BMSyncService_cloudKitSyncWithErrors___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v10 count:1];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];

  v9 = *MEMORY[0x277D85DE8];
}

void __40__BMSyncService_cloudKitSyncWithErrors___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained invalidate];
}

- (id)peerInformationWithError:(id *)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [(BMSyncService *)self connection];
  objc_initWeak(&location, v6);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__BMSyncService_peerInformationWithError___block_invoke;
  v13[3] = &unk_278D08E60;
  v13[4] = &v22;
  objc_copyWeak(&v14, &location);
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__BMSyncService_peerInformationWithError___block_invoke_2;
  v11[3] = &unk_278D08E88;
  v11[4] = &v16;
  v11[5] = &v22;
  objc_copyWeak(&v12, &location);
  [v7 peerInformationWithReply:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(v5);
  if (a3)
  {
    v8 = v23[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v9;
}

void __42__BMSyncService_peerInformationWithError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

void __42__BMSyncService_peerInformationWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained invalidate];
}

@end