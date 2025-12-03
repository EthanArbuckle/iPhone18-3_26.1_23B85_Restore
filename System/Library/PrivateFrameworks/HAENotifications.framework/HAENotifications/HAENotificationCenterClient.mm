@interface HAENotificationCenterClient
- (HAENotificationCenterClient)initWithBundleID:(id)d;
- (id)setupConnection;
- (void)addHAENotificationEvent:(id)event;
@end

@implementation HAENotificationCenterClient

- (HAENotificationCenterClient)initWithBundleID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = HAENotificationCenterClient;
  v5 = [(HAENotificationCenterClient *)&v10 init];
  v6 = v5;
  if (v5)
  {
    setupConnection = [(HAENotificationCenterClient *)v5 setupConnection];
    connection = v6->connection;
    v6->connection = setupConnection;

    [(HAENotificationCenterClient *)v6 setBundleID:dCopy];
  }

  return v6;
}

- (void)addHAENotificationEvent:(id)event
{
  v13 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = HAENotificationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = self->bundleID;
    v9 = 138412546;
    v10 = bundleID;
    v11 = 2112;
    v12 = eventCopy;
    _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "Sending event from client %@, %@", &v9, 0x16u);
  }

  v7 = [(NSXPCConnection *)self->connection remoteObjectProxyWithErrorHandler:&__block_literal_global_8];
  [v7 addHAENotificationEvent:eventCopy];

  v8 = *MEMORY[0x277D85DE8];
}

void __55__HAENotificationCenterClient_addHAENotificationEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = HAENotificationsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__HAENotificationCenterClient_addHAENotificationEvent___block_invoke_cold_1(v2, v3);
  }
}

- (id)setupConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.coreaudio.adam.hae.notification" options:4096];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2862CB150];
  [v3 setRemoteObjectInterface:v4];

  [v3 setExportedObject:self];
  objc_initWeak(&location, self);
  [v3 setInterruptionHandler:&__block_literal_global_49];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __46__HAENotificationCenterClient_setupConnection__block_invoke_50;
  v9 = &unk_27969F2D8;
  objc_copyWeak(&v10, &location);
  [v3 setInvalidationHandler:&v6];
  self->connectionDidInvalidate = 0;
  [v3 resume];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v3;
}

void __46__HAENotificationCenterClient_setupConnection__block_invoke()
{
  v0 = HAENotificationsLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __46__HAENotificationCenterClient_setupConnection__block_invoke_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

void __46__HAENotificationCenterClient_setupConnection__block_invoke_50(uint64_t a1)
{
  v2 = HAENotificationsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__HAENotificationCenterClient_setupConnection__block_invoke_50_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 16) = 1;
  }

  else
  {
    v12 = HAENotificationsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __46__HAENotificationCenterClient_setupConnection__block_invoke_50_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }
}

void __55__HAENotificationCenterClient_addHAENotificationEvent___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[HAENotificationCenterClient addHAENotificationEvent:]_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_25081E000, a2, OS_LOG_TYPE_ERROR, "%s error: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end