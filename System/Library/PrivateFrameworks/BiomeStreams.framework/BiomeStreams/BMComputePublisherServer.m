@interface BMComputePublisherServer
- (BMComputePublisherServer)initWithQueue:(id)a3 domain:(unint64_t)a4 delegate:(id)a5;
- (BMComputePublisherServer)initWithQueue:(id)a3 listener:(id)a4 domain:(unint64_t)a5 delegate:(id)a6 computePublisherStreamName:(id)a7;
- (BMComputePublisherServerDelegate)delegate;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSString)description;
- (id)subscriptionsForStream:(id)a3;
- (void)_addSubscription:(id)a3;
- (void)_handlePublisherAction:(unsigned int)a3 token:(unint64_t)a4 descriptor:(id)a5;
- (void)_removeActiveSubscriptionMarkersForSubscription:(id)a3;
- (void)_removeSubscriptionWithIdentifier:(id)a3 client:(id)a4;
- (void)_removeSubscriptionWithToken:(unint64_t)a3;
- (void)activateWithCompletion:(id)a3;
- (void)receiveInputForSubscription:(id)a3 streamIdentifier:(id)a4 timestamp:(id)a5 storeEvent:(id)a6;
- (void)subscribe:(id)a3;
- (void)unsubscribeWithIdentifier:(id)a3;
@end

@implementation BMComputePublisherServer

- (BMComputePublisherServer)initWithQueue:(id)a3 domain:(unint64_t)a4 delegate:(id)a5
{
  v10 = a3;
  v11 = a5;
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v12 = MEMORY[0x1E698E8D0];
  }

  else
  {
    v12 = MEMORY[0x1E698E8E8];
  }

  v5 = *v12;
LABEL_6:
  v13 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v5];
  if (a4 == 1)
  {
    v14 = +[BMDaemon systemComputePublisherStreamName];
    goto LABEL_10;
  }

  if (!a4)
  {
    v14 = +[BMDaemon userComputePublisherStreamName];
LABEL_10:
    v6 = v14;
  }

  v15 = [(BMComputePublisherServer *)self initWithQueue:v10 listener:v13 domain:a4 delegate:v11 computePublisherStreamName:v6];

  return v15;
}

- (BMComputePublisherServer)initWithQueue:(id)a3 listener:(id)a4 domain:(unint64_t)a5 delegate:(id)a6 computePublisherStreamName:(id)a7
{
  v49 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  dispatch_assert_queue_V2(v13);
  v47.receiver = self;
  v47.super_class = BMComputePublisherServer;
  v17 = [(BMComputePublisherServer *)&v47 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_queue, a3);
    v18->_domain = a5;
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    subscriptions = v18->_subscriptions;
    v18->_subscriptions = v19;

    v21 = [BMComputePublisherStorage alloc];
    v22 = *MEMORY[0x1E698E948];
    v23 = [(BMComputePublisherStorage *)v21 initWithUseCase:*MEMORY[0x1E698E948] domain:1 isClient:0];
    systemStorage = v18->_systemStorage;
    v18->_systemStorage = v23;

    v25 = [[BMComputePublisherStorage alloc] initWithUseCase:v22 domain:0 isClient:0];
    userStorage = v18->_userStorage;
    v18->_userStorage = v25;

    v27 = [[BMComputeSubscriptionMarkerManager alloc] initWithUserStorage:v18->_userStorage systemStorage:v18->_systemStorage domain:v18->_domain];
    subscriptionMarkerManager = v18->_subscriptionMarkerManager;
    v18->_subscriptionMarkerManager = v27;

    v29 = [(BMComputePublisherServer *)v18 storage];
    v46 = 0;
    v30 = [v29 readNonWakingSubscriptions:&v46];
    v31 = v46;

    if (v30)
    {
      [(NSMutableArray *)v18->_subscriptions addObjectsFromArray:v30];
    }

    else
    {
      v32 = __biome_log_for_category();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherServer initWithQueue:listener:domain:delegate:computePublisherStreamName:];
      }
    }

    objc_storeWeak(&v18->_delegate, v15);
    v33 = v16;
    [v16 UTF8String];
    v34 = xpc_event_publisher_create();
    publisher = v18->_publisher;
    v18->_publisher = v34;

    objc_initWeak(&location, v18);
    v36 = v18->_publisher;
    objc_copyWeak(&v44, &location);
    xpc_event_publisher_set_handler();
    v37 = v18->_publisher;
    xpc_event_publisher_set_error_handler();
    objc_storeStrong(&v18->_listener, a4);
    [(NSXPCListener *)v18->_listener _setQueue:v13];
    [(NSXPCListener *)v18->_listener setDelegate:v18];
    v38 = BMComputePublisherInterface();
    interface = v18->_interface;
    v18->_interface = v38;

    v40 = __biome_log_for_category();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v41 = [v14 serviceName];
      [BMComputePublisherServer initWithQueue:v16 listener:v41 domain:buf delegate:v40 computePublisherStreamName:?];
    }

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  v42 = *MEMORY[0x1E69E9840];
  return v18;
}

void __94__BMComputePublisherServer_initWithQueue_listener_domain_delegate_computePublisherStreamName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePublisherAction:a2 token:a3 descriptor:v7];
}

void __94__BMComputePublisherServer_initWithQueue_listener_domain_delegate_computePublisherStreamName___block_invoke_2()
{
  xpc_strerror();
  v0 = __biome_log_for_category();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __94__BMComputePublisherServer_initWithQueue_listener_domain_delegate_computePublisherStreamName___block_invoke_2_cold_1();
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [MEMORY[0x1E698E9D8] processWithXPCConnection:v7];
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v9 executableName];
    *buf = 138412546;
    v31 = v11;
    v32 = 1024;
    v33 = [v9 pid];
    _os_log_impl(&dword_1848EE000, v10, OS_LOG_TYPE_INFO, "BMComputePublisherServiceServer received new connection request from %@(%d)", buf, 0x12u);
  }

  v12 = [MEMORY[0x1E698E970] policyForProcess:v9 connectionFlags:0 useCase:*MEMORY[0x1E698E948]];
  v13 = [v12 allowsConnectionToComputePublisherService];
  v14 = __biome_log_for_category();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BMComputePublisherServer listener:v9 shouldAcceptNewConnection:?];
    }

    v16 = [(BMComputePublisherServer *)self queue];
    [v7 _setQueue:v16];

    objc_initWeak(buf, self);
    objc_initWeak(&location, v7);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __63__BMComputePublisherServer_listener_shouldAcceptNewConnection___block_invoke;
    v27[3] = &unk_1E6E53538;
    objc_copyWeak(&v28, &location);
    [v7 setInterruptionHandler:v27];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __63__BMComputePublisherServer_listener_shouldAcceptNewConnection___block_invoke_10;
    v24 = &unk_1E6E53560;
    objc_copyWeak(&v25, buf);
    objc_copyWeak(&v26, &location);
    [v7 setInvalidationHandler:&v21];
    v17 = [(BMComputePublisherServer *)self interface:v21];
    [v7 setExportedInterface:v17];

    [v7 setExportedObject:self];
    v18 = BMComputePublishingInterface();
    [v7 setRemoteObjectInterface:v18];

    [v7 resume];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherServer listener:v9 shouldAcceptNewConnection:?];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v13;
}

void __63__BMComputePublisherServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 138412290;
    v6 = WeakRetained;
    _os_log_impl(&dword_1848EE000, v2, OS_LOG_TYPE_DEFAULT, "BMComputePublisherServiceServer connection %@ interrupted", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __63__BMComputePublisherServer_listener_shouldAcceptNewConnection___block_invoke_10(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _xpcConnection];

    if (v5)
    {
      v6 = [v4 _xpcConnection];
      v7 = xpc_connection_copy_invalidation_reason();

      if (v7)
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
      }

      else
      {
        v5 = @"<unknown>";
      }

      free(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v42 = v4;
    v43 = 2114;
    v44 = v5;
    _os_log_impl(&dword_1848EE000, v8, OS_LOG_TYPE_INFO, "BMComputePublisherServiceServer connection %@ invalidated because %{public}@", buf, 0x16u);
  }

  v30 = v5;

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = [WeakRetained subscriptions];
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = [v15 connection];

        if (v16 == v4)
        {
          v17 = objc_alloc(MEMORY[0x1E698F0F8]);
          v18 = [v15 identifier];
          v19 = [v15 client];
          v20 = [v17 initWithFirst:v18 second:v19];

          [v9 addObject:v20];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = v9;
  v22 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v31 + 1) + 8 * j);
        v27 = [v26 first];
        v28 = [v26 second];
        [WeakRetained _removeSubscriptionWithIdentifier:v27 client:v28];
      }

      v23 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v23);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)subscribe:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BMComputePublisherServer subscribe:];
  }

  if (v4)
  {
    v7 = [v4 identifier];
    IsPathSafe = BMIdentifierIsPathSafe();

    if (IsPathSafe)
    {
      v9 = [MEMORY[0x1E698E898] currentProcessValidator];
      v10 = [v4 graph];
      v11 = [v9 isExecutionAllowedForGraph:v10];

      if (v11)
      {
        v12 = [MEMORY[0x1E696B0B8] currentConnection];
        if (!v12)
        {
          v13 = __biome_log_for_category();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [BMComputePublisherServer subscribe:];
          }

          goto LABEL_36;
        }

        v13 = [MEMORY[0x1E698E9D8] processWithXPCConnection:v12];
        v14 = MEMORY[0x1E698E970];
        v15 = [v4 useCase];
        v16 = [v14 policyForProcess:v13 connectionFlags:0 useCase:v15];

        v17 = [v4 postMigrationStreamIdentifiers];
        v18 = [v16 allowsComputePublisherAccessToStreams:v17];

        if ((v18 & 1) == 0)
        {
          v35 = __biome_log_for_category();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            [BMComputePublisherServer subscribe:v4];
          }

          goto LABEL_35;
        }

        v19 = [v13 identifier];
        [v4 setClient:v19];

        [v4 setConnection:v12];
        if (([v4 waking] & 1) == 0)
        {
          v20 = [(BMComputePublisherServer *)self subscriptions];
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __38__BMComputePublisherServer_subscribe___block_invoke;
          v48[3] = &unk_1E6E53588;
          v21 = v4;
          v49 = v21;
          v22 = [v20 indexesOfObjectsPassingTest:v48];

          if ([v22 count])
          {
            v38 = v16;
            v39 = v13;
            v23 = __biome_log_for_category();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v21 client];
              v25 = [v21 identifier];
              *buf = 138412546;
              v52 = v24;
              v53 = 2112;
              v54 = v25;
              _os_log_impl(&dword_1848EE000, v23, OS_LOG_TYPE_DEFAULT, "Found matching unclaimed subscription for %@:%@", buf, 0x16u);
            }

            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v26 = [(BMComputePublisherServer *)self subscriptions];
            v37 = v22;
            v27 = [v26 objectsAtIndexes:v22];

            v28 = [v27 countByEnumeratingWithState:&v44 objects:v50 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v45;
              do
              {
                for (i = 0; i != v29; ++i)
                {
                  if (*v45 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v44 + 1) + 8 * i);
                  [v32 setConnection:v12];
                  if ([v32 pendingDemand])
                  {
                    v33 = [(BMComputePublisherServer *)self queue];
                    block[0] = MEMORY[0x1E69E9820];
                    block[1] = 3221225472;
                    block[2] = __38__BMComputePublisherServer_subscribe___block_invoke_16;
                    block[3] = &unk_1E6E52980;
                    v41 = v21;
                    v42 = self;
                    v43 = v32;
                    dispatch_async(v33, block);
                  }

                  v34 = [(BMComputePublisherServer *)self delegate];
                  [v34 publisherServer:self didClaimSubscription:v32];
                }

                v29 = [v27 countByEnumeratingWithState:&v44 objects:v50 count:16];
              }

              while (v29);
            }

            v13 = v39;
            v16 = v38;
            goto LABEL_35;
          }
        }

        [(BMComputePublisherServer *)self _addSubscription:v4];
LABEL_35:

LABEL_36:
        goto LABEL_37;
      }

      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherServer subscribe:v4];
      }
    }

    else
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherServer subscribe:v4];
      }
    }
  }

  else
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherServer subscribe:];
    }
  }

LABEL_37:

  v36 = *MEMORY[0x1E69E9840];
}

uint64_t __38__BMComputePublisherServer_subscribe___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isUnclaimed])
  {
    v4 = [v3 identifier];
    v5 = [*(a1 + 32) identifier];
    if ([v4 isEqualToString:v5])
    {
      v6 = [v3 client];
      v7 = [*(a1 + 32) client];
      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __38__BMComputePublisherServer_subscribe___block_invoke_16(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1848EE000, v2, OS_LOG_TYPE_DEFAULT, "Notify subscriber that there was pending demand from new events while subscription was unclaimed: %@", &v6, 0xCu);
  }

  result = [*(a1 + 40) receiveInputForSubscription:*(a1 + 48) streamIdentifier:0 timestamp:0 storeEvent:0];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)unsubscribeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BMComputePublisherServer unsubscribeWithIdentifier:];
  }

  if (v4)
  {
    v7 = MEMORY[0x1E698E9D8];
    v8 = [MEMORY[0x1E696B0B8] currentConnection];
    v9 = [v7 processWithXPCConnection:v8];

    v10 = [v9 identifier];
    v11 = [(BMComputePublisherServer *)self storage];
    [v11 removeNonWakingSubscriptionWithIdentifier:v4 client:v10];

    [(BMComputePublisherServer *)self _removeSubscriptionWithIdentifier:v4 client:v10];
  }

  else
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherServer unsubscribeWithIdentifier:];
    }
  }
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BMComputePublisherServer activateWithCompletion:?];
  }

  [(BMComputePublisherServer *)self setActivationCompletion:v4];
  v7 = [(BMComputePublisherServer *)self listener];
  [v7 activate];

  v8 = [(BMComputePublisherServer *)self publisher];
  xpc_event_publisher_activate();
}

- (void)_handlePublisherAction:(unsigned int)a3 token:(unint64_t)a4 descriptor:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(v9);

  switch(a3)
  {
    case 2u:
      v19 = __biome_log_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_1848EE000, v19, OS_LOG_TYPE_INFO, "BMComputePublisher initial barrier", &v24, 2u);
      }

      v20 = [(BMComputePublisherServer *)self activationCompletion];

      if (v20)
      {
        v21 = [(BMComputePublisherServer *)self activationCompletion];
        v21[2]();

        [(BMComputePublisherServer *)self setActivationCompletion:0];
      }

      break;
    case 1u:
      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
        v24 = 138412290;
        v25 = v18;
        _os_log_impl(&dword_1848EE000, v17, OS_LOG_TYPE_INFO, "BMComputePublisher remove publisher for token %@", &v24, 0xCu);
      }

      [(BMComputePublisherServer *)self _removeSubscriptionWithToken:a4];
      break;
    case 0u:
      v10 = MEMORY[0x1865F7C40](v8);
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
        v24 = 138412546;
        v25 = v12;
        v26 = 2080;
        v27 = v10;
        _os_log_impl(&dword_1848EE000, v11, OS_LOG_TYPE_INFO, "BMComputePublisher add publisher for token %@ descriptor: %s", &v24, 0x16u);
      }

      v13 = [[BMComputeSubscription alloc] initWithToken:a4 descriptor:v8];
      if (v13)
      {
        v14 = [MEMORY[0x1E698E898] currentProcessValidator];
        v15 = [(BMComputeSubscription *)v13 graph];
        v16 = [v14 isExecutionAllowedForGraph:v15];

        if (v16)
        {
          [(BMComputePublisherServer *)self _addSubscription:v13];
LABEL_21:
          free(v10);

          break;
        }

        v22 = __biome_log_for_category();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [BMComputePublisherServer subscribe:v13];
        }
      }

      else
      {
        v22 = __biome_log_for_category();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [BMComputePublisherServer _handlePublisherAction:token:descriptor:];
        }
      }

      goto LABEL_21;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_addSubscription:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(v5);

  if (!v4)
  {
    [BMComputePublisherServer _addSubscription:];
  }

  v6 = [(BMComputePublisherServer *)self subscriptions];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __45__BMComputePublisherServer__addSubscription___block_invoke;
  v44[3] = &unk_1E6E53588;
  v7 = v4;
  v45 = v7;
  v8 = [v6 indexesOfObjectsPassingTest:v44];

  if ([v8 count])
  {
    v9 = [(BMComputePublisherServer *)self subscriptions];
    v10 = [v9 objectsAtIndexes:v8];

    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 identifier];
      *buf = 138412546;
      v49 = v12;
      v50 = 2112;
      v51 = v10;
      _os_log_impl(&dword_1848EE000, v11, OS_LOG_TYPE_DEFAULT, "Warning: clearing unexpected subscriptions for identifier %@ while adding new subscription. %@", buf, 0x16u);
    }

    v13 = [(BMComputePublisherServer *)self storage];
    v14 = [v7 identifier];
    v15 = [v7 client];
    [v13 removeBookmarkFileForSubscriptionWithIdentifier:v14 client:v15];

    v16 = [(BMComputePublisherServer *)self subscriptions];
    [v16 removeObjectsAtIndexes:v8];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v17 = [v7 postMigrationStreamIdentifiers];
    v18 = [v17 countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v41;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v40 + 1) + 8 * i);
          v23 = [(BMComputePublisherServer *)self subscriptionMarkerManager];
          [v23 removeSubscriptionWithStreamIdentifier:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v19);
    }
  }

  v24 = [(BMComputePublisherServer *)self subscriptions];
  [v24 addObject:v7];

  if (([v7 waking] & 1) == 0)
  {
    v25 = [(BMComputePublisherServer *)self storage];
    [v25 writeNonWakingSubscription:v7];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = [v7 postMigrationStreamIdentifiers];
  v27 = [v26 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v37;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v36 + 1) + 8 * j);
        v32 = [(BMComputePublisherServer *)self subscriptionMarkerManager];
        [v32 addSubscriptionWithStreamIdentifier:v31];
      }

      v28 = [v26 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v28);
  }

  v33 = [(BMComputePublisherServer *)self delegate];
  [v33 publisherServer:self didAddSubscription:v7];

  v34 = __biome_log_for_category();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v7;
    _os_log_impl(&dword_1848EE000, v34, OS_LOG_TYPE_DEFAULT, "_addSubscription added subscription: %@", buf, 0xCu);
  }

  v35 = *MEMORY[0x1E69E9840];
}

uint64_t __45__BMComputePublisherServer__addSubscription___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) identifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 client];
    v7 = [*(a1 + 32) client];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_removeSubscriptionWithToken:(unint64_t)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(BMComputePublisherServer *)self subscriptions];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __57__BMComputePublisherServer__removeSubscriptionWithToken___block_invoke;
  v38[3] = &__block_descriptor_40_e38_B32__0__BMComputeSubscription_8Q16_B24l;
  v38[4] = a3;
  v7 = [v6 indexesOfObjectsPassingTest:v38];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = [(BMComputePublisherServer *)self subscriptions];
  v9 = [v8 objectsAtIndexes:v7];

  v10 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      v13 = 0;
      do
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v34 + 1) + 8 * v13);
        v15 = [(BMComputePublisherServer *)self storage];
        v16 = [v14 identifier];
        v17 = [v14 client];
        [v15 removeBookmarkFileForSubscriptionWithIdentifier:v16 client:v17];

        [(BMComputePublisherServer *)self _removeActiveSubscriptionMarkersForSubscription:v14];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v11);
  }

  v18 = [(BMComputePublisherServer *)self subscriptions];
  v19 = [v18 objectsAtIndexes:v7];

  v20 = [(BMComputePublisherServer *)self subscriptions];
  [v20 removeObjectsAtIndexes:v7];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = v19;
  v22 = [v21 countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v31;
    do
    {
      v25 = 0;
      do
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v30 + 1) + 8 * v25);
        v27 = [(BMComputePublisherServer *)self delegate];
        [v27 publisherServer:self didRemoveSubscription:v26];

        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v30 objects:v41 count:16];
    }

    while (v23);
  }

  v28 = __biome_log_for_category();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v21;
    _os_log_impl(&dword_1848EE000, v28, OS_LOG_TYPE_DEFAULT, "_removeSubscriptionWithToken removed subscriptions: %@", buf, 0xCu);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_removeSubscriptionWithIdentifier:(id)a3 client:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(v8);

  if (!v6)
  {
    [BMComputePublisherServer _removeSubscriptionWithIdentifier:client:];
  }

  v9 = [(BMComputePublisherServer *)self subscriptions];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __69__BMComputePublisherServer__removeSubscriptionWithIdentifier_client___block_invoke;
  v40[3] = &unk_1E6E535D0;
  v10 = v6;
  v41 = v10;
  v11 = v7;
  v42 = v11;
  v12 = [v9 indexesOfObjectsPassingTest:v40];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = [(BMComputePublisherServer *)self subscriptions];
  v14 = [v13 objectsAtIndexes:v12];

  v15 = [v14 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      v18 = 0;
      do
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(BMComputePublisherServer *)self _removeActiveSubscriptionMarkersForSubscription:*(*(&v36 + 1) + 8 * v18++)];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v16);
  }

  v19 = [(BMComputePublisherServer *)self storage];
  [v19 removeBookmarkFileForSubscriptionWithIdentifier:v10 client:v11];

  v20 = [(BMComputePublisherServer *)self subscriptions];
  v21 = [v20 objectsAtIndexes:v12];

  v22 = [(BMComputePublisherServer *)self subscriptions];
  [v22 removeObjectsAtIndexes:v12];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = v21;
  v24 = [v23 countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v33;
    do
    {
      v27 = 0;
      do
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v32 + 1) + 8 * v27);
        v29 = [(BMComputePublisherServer *)self delegate];
        [v29 publisherServer:self didRemoveSubscription:v28];

        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v25);
  }

  v30 = __biome_log_for_category();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v23;
    _os_log_impl(&dword_1848EE000, v30, OS_LOG_TYPE_DEFAULT, "_removeSubscriptionWithIdentifier removed subscriptions: %@", buf, 0xCu);
  }

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t __69__BMComputePublisherServer__removeSubscriptionWithIdentifier_client___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 client];
    v6 = [v5 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_removeActiveSubscriptionMarkersForSubscription:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(v5);

  if (!v4)
  {
    [BMComputePublisherServer _removeActiveSubscriptionMarkersForSubscription:];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v4 postMigrationStreamIdentifiers];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [(BMComputePublisherServer *)self subscriptionMarkerManager];
        [v12 removeSubscriptionWithStreamIdentifier:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)subscriptionsForStream:(id)a3
{
  v4 = a3;
  v5 = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(v5);

  if (!v4)
  {
    [BMComputePublisherServer subscriptionsForStream:];
  }

  v6 = [(BMComputePublisherServer *)self subscriptions];
  v7 = MEMORY[0x1E696AE18];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__BMComputePublisherServer_subscriptionsForStream___block_invoke;
  v12[3] = &unk_1E6E535F8;
  v13 = v4;
  v8 = v4;
  v9 = [v7 predicateWithBlock:v12];
  v10 = [v6 filteredArrayUsingPredicate:v9];

  return v10;
}

uint64_t __51__BMComputePublisherServer_subscriptionsForStream___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 postMigrationStreamIdentifiers];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (void)receiveInputForSubscription:(id)a3 streamIdentifier:(id)a4 timestamp:(id)a5 storeEvent:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(v14);

  if (!v10)
  {
    [BMComputePublisherServer receiveInputForSubscription:streamIdentifier:timestamp:storeEvent:];
  }

  v15 = __biome_log_for_category();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [BMComputePublisherServer receiveInputForSubscription:streamIdentifier:timestamp:storeEvent:];
  }

  v16 = 0;
  if (v11)
  {
    if (v13)
    {
      v31 = 0;
      v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v31];
      v17 = v31;
      if (v17)
      {
        empty = v17;
        v19 = __biome_log_for_category();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [BMComputePublisherServer receiveInputForSubscription:streamIdentifier:timestamp:storeEvent:];
        }

LABEL_16:

        goto LABEL_20;
      }
    }
  }

  if ([v10 waking])
  {
    empty = xpc_dictionary_create_empty();
    v20 = [v10 identifier];
    xpc_dictionary_set_string(empty, "identifier", [v20 UTF8String]);

    if (v12)
    {
      [v12 doubleValue];
      xpc_dictionary_set_double(empty, "timestamp", v21);
    }

    if (v16)
    {
      xpc_dictionary_set_data(empty, "event", [v16 bytes], objc_msgSend(v16, "length"));
      xpc_dictionary_set_string(empty, "stream", [v11 UTF8String]);
    }

    v19 = [(BMComputePublisherServer *)self publisher];
    [v10 token];
    xpc_event_publisher_fire();
    goto LABEL_16;
  }

  empty = [v10 connection];
  if (empty)
  {
    v22 = [v10 connection];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __94__BMComputePublisherServer_receiveInputForSubscription_streamIdentifier_timestamp_storeEvent___block_invoke;
    v29 = &unk_1E6E53620;
    v23 = v10;
    v30 = v23;
    v24 = [v22 remoteObjectProxyWithErrorHandler:&v26];

    v25 = [v23 identifier];
    [v24 receiveInputForIdentifier:v25 streamIdentifier:v11 storeEvent:v13];
  }

  else
  {
    [v10 setPendingDemand:1];
  }

LABEL_20:
}

void __94__BMComputePublisherServer_receiveInputForSubscription_streamIdentifier_timestamp_storeEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __94__BMComputePublisherServer_receiveInputForSubscription_streamIdentifier_timestamp_storeEvent___block_invoke_cold_1();
  }
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  domain = self->_domain;
  v7 = BMStringForServiceDomain();
  v8 = [(BMComputePublisherServer *)self listener];
  v9 = [v8 serviceName];
  v10 = [v3 initWithFormat:@"%@ for domain: %@, listener: %@", v5, v7, v9];

  return v10;
}

- (BMComputePublisherServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end