@interface MSConnection
+ (id)sharedConnection;
- (BOOL)dequeueAssetCollectionWithGUIDs:(id)a3 personID:(id)a4 outError:(id *)a5;
- (BOOL)enqueueAssetCollections:(id)a3 personID:(id)a4 outError:(id *)a5;
- (MSConnection)init;
- (id)_machErrorWithUnderlyingError:(id)a3;
- (id)pause;
- (id)serverSideConfigurationForPersonID:(id)a3;
- (void)_waitForMessageToBeSent;
- (void)abortActivitiesForPersonID:(id)a3;
- (void)checkForOutstandingActivities;
- (void)dealloc;
- (void)deleteAssetCollections:(id)a3 personID:(id)a4;
- (void)forgetPersonID:(id)a3;
- (void)handleSubscriptionPushForPersonID:(id)a3;
- (void)pollForSubscriptionUpdatesForPersonID:(id)a3;
- (void)refreshServerSideConfigurationForPersonID:(id)a3;
- (void)resetServerStateForPersonID:(id)a3;
@end

@implementation MSConnection

- (id)_machErrorWithUnderlyingError:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = a3;
  v5 = MSMSLocalizedString(@"ERROR_MACH_FAILURE");
  v6 = [v3 MSErrorWithDomain:@"mstreamdErrorDomain" code:1000 description:v5 underlyingError:v4];

  return v6;
}

- (id)pause
{
  v2 = [[MSClientSidePauseContext alloc] initWithServer:self->_center];

  return v2;
}

- (void)abortActivitiesForPersonID:(id)a3
{
  v4 = a3;
  center = self->_center;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __43__MSConnection_abortActivitiesForPersonID___block_invoke;
  v11 = &unk_2798A4C78;
  v12 = v4;
  v13 = self;
  v6 = v4;
  v7 = [(NSXPCConnection *)center remoteObjectProxyWithErrorHandler:&v8];
  [v7 abortAllActivityForPersonID:{v6, v8, v9, v10, v11}];
  [(MSConnection *)self _waitForMessageToBeSent];
}

void __43__MSConnection_abortActivitiesForPersonID___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) _machErrorWithUnderlyingError:a2];
    v7 = [v6 MSVerboseDescription];
    v8 = 138412546;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Can't abort activities for personID %@: %{public}@", &v8, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)resetServerStateForPersonID:(id)a3
{
  v4 = a3;
  center = self->_center;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__MSConnection_resetServerStateForPersonID___block_invoke;
  v8[3] = &unk_2798A4CA0;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)center remoteObjectProxyWithErrorHandler:v8];
  [v7 resetServerStateForPersonID:v6];
  [(MSConnection *)self _waitForMessageToBeSent];
}

void __44__MSConnection_resetServerStateForPersonID___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not reset server state for personID %@: %{public}@", &v6, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)refreshServerSideConfigurationForPersonID:(id)a3
{
  v4 = a3;
  center = self->_center;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__MSConnection_refreshServerSideConfigurationForPersonID___block_invoke;
  v8[3] = &unk_2798A4CA0;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)center remoteObjectProxyWithErrorHandler:v8];
  [v7 refreshServerSideConfigurationForPersonID:v6];
  [(MSConnection *)self _waitForMessageToBeSent];
}

void __58__MSConnection_refreshServerSideConfigurationForPersonID___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not refresh server side configuration for personID %@: %{public}@", &v6, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)serverSideConfigurationForPersonID:(id)a3
{
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = [(NSMutableDictionary *)self->_serverSideConfig objectForKey:v4];
  v5 = v23[5];
  if (!v5)
  {
    v6 = dispatch_semaphore_create(0);
    center = self->_center;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __51__MSConnection_serverSideConfigurationForPersonID___block_invoke;
    v18[3] = &unk_2798A4CE8;
    v8 = v4;
    v19 = v8;
    v20 = self;
    v9 = v6;
    v21 = v9;
    v10 = [(NSXPCConnection *)center remoteObjectProxyWithErrorHandler:v18];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__MSConnection_serverSideConfigurationForPersonID___block_invoke_78;
    v14[3] = &unk_2798A4D10;
    v17 = &v22;
    v14[4] = self;
    v15 = v8;
    v11 = v9;
    v16 = v11;
    [v10 serverSideConfigurationForPersonID:v15 reply:v14];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);

    v5 = v23[5];
  }

  v12 = v5;
  _Block_object_dispose(&v22, 8);

  return v12;
}

intptr_t __51__MSConnection_serverSideConfigurationForPersonID___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) _machErrorWithUnderlyingError:a2];
    v8 = [v7 MSVerboseDescription];
    v9 = 138412546;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Can't retrieve server-side configuration for personID %@. Error: %{public}@", &v9, 0x16u);
  }

  result = dispatch_semaphore_signal(*(a1 + 48));
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

intptr_t __51__MSConnection_serverSideConfigurationForPersonID___block_invoke_78(void *a1, void *a2)
{
  v3 = [a2 objectForKey:@"retval"];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(a1[4] + 16) setValue:*(*(a1[7] + 8) + 40) forKey:a1[5]];
  v6 = a1[6];

  return dispatch_semaphore_signal(v6);
}

- (void)forgetPersonID:(id)a3
{
  v4 = a3;
  center = self->_center;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__MSConnection_forgetPersonID___block_invoke;
  v8[3] = &unk_2798A4CA0;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)center remoteObjectProxyWithErrorHandler:v8];
  [v7 forgetEverythingForPersonID:v6];
  [(MSConnection *)self _waitForMessageToBeSent];
}

void __31__MSConnection_forgetPersonID___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not send message to forget personID %@: %{public}@", &v6, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleSubscriptionPushForPersonID:(id)a3
{
  v4 = a3;
  center = self->_center;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__MSConnection_handleSubscriptionPushForPersonID___block_invoke;
  v8[3] = &unk_2798A4CA0;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)center remoteObjectProxyWithErrorHandler:v8];
  [v7 pollForSubscriptionUpdatesTriggeredByPushNotificationForPersonID:v6];
  [(MSConnection *)self _waitForMessageToBeSent];
}

void __50__MSConnection_handleSubscriptionPushForPersonID___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not handle subscription push for personID %@: %{public}@", &v6, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)checkForOutstandingActivities
{
  v3 = [(NSXPCConnection *)self->_center remoteObjectProxyWithErrorHandler:&__block_literal_global_101];
  [v3 retryOutstandingActivities];
  [(MSConnection *)self _waitForMessageToBeSent];
}

void __45__MSConnection_checkForOutstandingActivities__block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = a2;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not checkForOutstandingActivities: %{public}@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)pollForSubscriptionUpdatesForPersonID:(id)a3
{
  v4 = a3;
  center = self->_center;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__MSConnection_pollForSubscriptionUpdatesForPersonID___block_invoke;
  v8[3] = &unk_2798A4CA0;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)center remoteObjectProxyWithErrorHandler:v8];
  [v7 pollForSubscriptionUpdatesForPersonID:v6];
  [(MSConnection *)self _waitForMessageToBeSent];
}

void __54__MSConnection_pollForSubscriptionUpdatesForPersonID___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not poll for subscription updates for personID %@: %{public}@", &v6, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)deleteAssetCollections:(id)a3 personID:(id)a4
{
  v6 = a3;
  v7 = a4;
  center = self->_center;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __48__MSConnection_deleteAssetCollections_personID___block_invoke;
  v15 = &unk_2798A4C78;
  v16 = v6;
  v17 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [(NSXPCConnection *)center remoteObjectProxyWithErrorHandler:&v12];
  [v11 deleteAssetCollections:v10 personID:{v9, v12, v13, v14, v15}];
  [(MSConnection *)self _waitForMessageToBeSent];
}

void __48__MSConnection_deleteAssetCollections_personID___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138543874;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    v11 = 2114;
    v12 = a2;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not delete asset collections %{public}@ for personID %@: %{public}@", &v7, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)dequeueAssetCollectionWithGUIDs:(id)a3 personID:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  v10 = dispatch_semaphore_create(0);
  center = self->_center;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __66__MSConnection_dequeueAssetCollectionWithGUIDs_personID_outError___block_invoke;
  v26[3] = &unk_2798A4C28;
  v30 = &v31;
  v26[4] = self;
  v12 = v8;
  v27 = v12;
  v13 = v9;
  v28 = v13;
  v14 = v10;
  v29 = v14;
  v15 = [(NSXPCConnection *)center remoteObjectProxyWithErrorHandler:v26];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __66__MSConnection_dequeueAssetCollectionWithGUIDs_personID_outError___block_invoke_77;
  v22 = &unk_2798A4C50;
  v24 = &v31;
  v25 = &v37;
  v16 = v14;
  v23 = v16;
  [v15 dequeueAssetCollectionWithGUIDs:v12 personID:v13 reply:&v19];
  dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  if (a5 && v32[5])
  {
    *a5 = [(MSConnection *)self _machErrorWithUnderlyingError:v19, v20, v21, v22];
  }

  v17 = *(v38 + 24);

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v17;
}

intptr_t __66__MSConnection_dequeueAssetCollectionWithGUIDs_personID_outError___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) _machErrorWithUnderlyingError:a2];
    v4 = *(*(a1 + 64) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(*(*(a1 + 64) + 8) + 40);
      v11 = 138543874;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not dequeue asset collections %{public}@ for personID %@: %{public}@", &v11, 0x20u);
    }
  }

  result = dispatch_semaphore_signal(*(a1 + 56));
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

intptr_t __66__MSConnection_dequeueAssetCollectionWithGUIDs_personID_outError___block_invoke_77(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"error"];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 objectForKey:@"retval"];

  *(*(a1[6] + 8) + 24) = [v7 BOOLValue];
  v8 = a1[4];

  return dispatch_semaphore_signal(v8);
}

- (BOOL)enqueueAssetCollections:(id)a3 personID:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  v10 = dispatch_semaphore_create(0);
  center = self->_center;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __58__MSConnection_enqueueAssetCollections_personID_outError___block_invoke;
  v26[3] = &unk_2798A4C28;
  v30 = &v31;
  v26[4] = self;
  v12 = v8;
  v27 = v12;
  v13 = v9;
  v28 = v13;
  v14 = v10;
  v29 = v14;
  v15 = [(NSXPCConnection *)center remoteObjectProxyWithErrorHandler:v26];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __58__MSConnection_enqueueAssetCollections_personID_outError___block_invoke_75;
  v22 = &unk_2798A4C50;
  v24 = &v31;
  v25 = &v37;
  v16 = v14;
  v23 = v16;
  [v15 enqueueAssetCollections:v12 personID:v13 reply:&v19];
  dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  if (a5 && v32[5])
  {
    *a5 = [(MSConnection *)self _machErrorWithUnderlyingError:v19, v20, v21, v22];
  }

  v17 = *(v38 + 24);

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v17;
}

intptr_t __58__MSConnection_enqueueAssetCollections_personID_outError___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) _machErrorWithUnderlyingError:a2];
    v4 = *(*(a1 + 64) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(*(*(a1 + 64) + 8) + 40);
      v11 = 138543874;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not enqueue asset collections %{public}@ for personID %@: %{public}@", &v11, 0x20u);
    }
  }

  result = dispatch_semaphore_signal(*(a1 + 56));
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

intptr_t __58__MSConnection_enqueueAssetCollections_personID_outError___block_invoke_75(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"error"];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 objectForKey:@"retval"];

  *(*(a1[6] + 8) + 24) = [v7 BOOLValue];
  v8 = a1[4];

  return dispatch_semaphore_signal(v8);
}

- (void)dealloc
{
  notify_cancel(self->_serverSideConfigNotificationToken);
  v3.receiver = self;
  v3.super_class = MSConnection;
  [(MSConnection *)&v3 dealloc];
}

- (MSConnection)init
{
  v14.receiver = self;
  v14.super_class = MSConnection;
  v2 = [(MSConnection *)&v14 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.mediastream.mstreamd" options:0];
    center = v2->_center;
    v2->_center = v3;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2869BE420];
    [(NSXPCConnection *)v2->_center setRemoteObjectInterface:v5];
    [(NSXPCConnection *)v2->_center resume];
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    serverSideConfig = v2->_serverSideConfig;
    v2->_serverSideConfig = v6;

    v8 = dispatch_queue_create("com.apple.MediaStream.MSConnection._serverSideConfigQueue", 0);
    serverSideConfigQueue = v2->_serverSideConfigQueue;
    v2->_serverSideConfigQueue = v8;

    v10 = v2->_serverSideConfigQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __20__MSConnection_init__block_invoke;
    handler[3] = &unk_2798A4DF8;
    v13 = v2;
    notify_register_dispatch("MSServerSideConfigurationDidChangeNotification", &v2->_serverSideConfigNotificationToken, v10, handler);
  }

  return v2;
}

void __20__MSConnection_init__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeAllObjects];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Sending local notification that server-side config has changed.", v3, 2u);
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"MSCServerSideConfigurationDidChangeNotification" object:*(a1 + 32)];
}

- (void)_waitForMessageToBeSent
{
  v3 = dispatch_semaphore_create(0);
  center = self->_center;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__MSConnection__waitForMessageToBeSent__block_invoke;
  v6[3] = &unk_2798A5010;
  v7 = v3;
  v5 = v3;
  [(NSXPCConnection *)center addBarrierBlock:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

+ (id)sharedConnection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MSConnection_sharedConnection__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedConnection_once != -1)
  {
    dispatch_once(&sharedConnection_once, block);
  }

  v2 = sharedConnection_conn;

  return v2;
}

uint64_t __32__MSConnection_sharedConnection__block_invoke(uint64_t a1)
{
  if (MSMediaStreamInitialize_once != -1)
  {
    dispatch_once(&MSMediaStreamInitialize_once, &__block_literal_global_231);
  }

  v2 = +[MSMSPlatform thePlatform];
  MSCoreMediaStreamInitialize();

  sharedConnection_conn = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

@end