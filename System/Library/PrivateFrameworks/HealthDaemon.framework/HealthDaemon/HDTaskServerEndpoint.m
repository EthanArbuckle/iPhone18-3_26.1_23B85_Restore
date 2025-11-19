@interface HDTaskServerEndpoint
- (HDProfile)profile;
- (HDTaskServer)taskServer;
- (HDTaskServerDelegate)taskServerDelegate;
- (HDTaskServerEndpoint)initWithTaskServerClass:(Class)a3 taskConfiguration:(id)a4 healthStoreConfiguration:(id)a5 taskUUID:(id)a6 instanceUUID:(id)a7 profile:(id)a8 databaseAccessibilityAssertions:(id)a9 connectionQueue:(id)a10;
- (HDTaskServerEndpointDelegate)delegate;
- (_TtC12HealthDaemon29HDHealthStoreClientAssertions)databaseAccessibilityAssertions;
- (id)exportObjectForListener:(id)a3 client:(id)a4 error:(id *)a5;
- (void)connectionConfiguredForListener:(id)a3 client:(id)a4 exportedObject:(id)a5;
- (void)connectionInvalidatedForListener:(id)a3 client:(id)a4 exportedObject:(id)a5;
- (void)dealloc;
@end

@implementation HDTaskServerEndpoint

- (HDTaskServerEndpoint)initWithTaskServerClass:(Class)a3 taskConfiguration:(id)a4 healthStoreConfiguration:(id)a5 taskUUID:(id)a6 instanceUUID:(id)a7 profile:(id)a8 databaseAccessibilityAssertions:(id)a9 connectionQueue:(id)a10
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v46.receiver = self;
  v46.super_class = HDTaskServerEndpoint;
  v23 = [(HDTaskServerEndpoint *)&v46 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_taskServerClass, a3);
    v25 = [v18 copy];
    taskUUID = v24->_taskUUID;
    v24->_taskUUID = v25;

    v27 = [v19 copy];
    instanceUUID = v24->_instanceUUID;
    v24->_instanceUUID = v27;

    v29 = [v16 copy];
    taskConfiguration = v24->_taskConfiguration;
    v24->_taskConfiguration = v29;

    v31 = [v17 copy];
    healthStoreConfiguration = v24->_healthStoreConfiguration;
    v24->_healthStoreConfiguration = v31;

    objc_storeWeak(&v24->_profile, v20);
    objc_storeWeak(&v24->_databaseAccessibilityAssertions, v21);
    v44 = v18;
    v45 = v20;
    v33 = v16;
    WeakRetained = objc_loadWeakRetained(&v24->_profile);
    [WeakRetained daemon];
    v36 = v35 = v22;
    [v36 connectionManager];
    v37 = v19;
    v39 = v38 = v17;
    v40 = NSStringFromClass(a3);
    v41 = [v39 createAnonymousListenerWithLabel:v40];
    listener = v24->_listener;
    v24->_listener = v41;

    v17 = v38;
    v19 = v37;

    v22 = v35;
    v16 = v33;
    v18 = v44;
    v20 = v45;
    [(HDXPCListener *)v24->_listener setConnectionQueue:v22];
    [(HDXPCListener *)v24->_listener setDelegate:v24];
  }

  return v24;
}

- (void)dealloc
{
  [(HDTaskServerEndpoint *)self invalidate];
  v3.receiver = self;
  v3.super_class = HDTaskServerEndpoint;
  [(HDTaskServerEndpoint *)&v3 dealloc];
}

- (id)exportObjectForListener:(id)a3 client:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [(HDTaskServerEndpoint *)self delegate];
  v9 = [(HDTaskServerEndpoint *)self taskServerDelegate];
  v10 = [HDHealthStoreClient alloc];
  healthStoreConfiguration = self->_healthStoreConfiguration;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v13 = objc_loadWeakRetained(&self->_databaseAccessibilityAssertions);
  v14 = [(HDHealthStoreClient *)v10 initWithXPCClient:v7 configuration:healthStoreConfiguration profile:WeakRetained databaseAccessibilityAssertions:v13];

  taskServerClass = self->_taskServerClass;
  v16 = objc_opt_respondsToSelector();
  v17 = self->_taskServerClass;
  if ((v16 & 1) == 0)
  {
    if (([(objc_class *)v17 instancesRespondToSelector:sel_initWithUUID_configuration_client_delegate_]& 1) == 0)
    {
      goto LABEL_10;
    }

    v24 = [objc_alloc(self->_taskServerClass) initWithUUID:self->_taskUUID configuration:self->_taskConfiguration client:v14 delegate:v9];
    if (!v24)
    {
      goto LABEL_10;
    }

    v20 = v24;
    v22 = 0;
LABEL_9:
    objc_storeWeak(&self->_taskServer, v20);
    goto LABEL_17;
  }

  taskUUID = self->_taskUUID;
  taskConfiguration = self->_taskConfiguration;
  v32 = 0;
  v20 = [(objc_class *)v17 createTaskServerWithUUID:taskUUID configuration:taskConfiguration client:v14 delegate:v9 error:&v32];
  v21 = v32;
  v22 = v21;
  if (v20)
  {
    goto LABEL_9;
  }

  if (!v21)
  {
LABEL_10:
    v25 = MEMORY[0x277CCA9B8];
    v26 = self->_taskServerClass;
    v27 = [(NSUUID *)self->_taskUUID UUIDString];
    v28 = [v25 hk_error:124 format:{@"Failed to create %@ task server (%@)", v26, v27}];
    if (v28)
    {
      v29 = v28;
      if (a5)
      {
        v30 = v28;
        *a5 = v29;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v22 = 0;
    goto LABEL_16;
  }

  if (a5)
  {
    v23 = v21;
    *a5 = v22;
  }

  else
  {
    _HKLogDroppedError();
  }

LABEL_16:
  [v8 taskServerDidFailToInitializeForUUID:self->_taskUUID];
  v20 = 0;
LABEL_17:

  return v20;
}

- (void)connectionConfiguredForListener:(id)a3 client:(id)a4 exportedObject:(id)a5
{
  v6 = a5;
  v7 = [(HDTaskServerEndpoint *)self profile];
  v8 = [(HDTaskServerEndpoint *)self delegate];
  v12 = v6;
  v9 = [v7 daemon];
  v10 = [v9 taskServerRegistry];
  [v10 didCreateTaskServer:v12];

  [v8 taskServerDidFinishInitialization:v12];
  v11 = [v7 daemon];
  [v11 unitTest_taskServerDidInit:v12];
}

- (void)connectionInvalidatedForListener:(id)a3 client:(id)a4 exportedObject:(id)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [(HDTaskServerEndpoint *)self profile];
  v8 = [(HDTaskServerEndpoint *)self delegate];
  v9 = v6;
  [v8 taskServerDidInvalidate:v9];
  v10 = [v7 daemon];
  v11 = [v10 taskServerRegistry];
  [v11 taskServerDidInvalidate:v9];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  taskUUID = self->_taskUUID;
  v16 = @"HDTaskServerUUIDKey";
  v17[0] = taskUUID;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  [v12 postNotificationName:@"HDTaskServerDidInvalidateNotification" object:0 userInfo:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (_TtC12HealthDaemon29HDHealthStoreClientAssertions)databaseAccessibilityAssertions
{
  WeakRetained = objc_loadWeakRetained(&self->_databaseAccessibilityAssertions);

  return WeakRetained;
}

- (HDTaskServer)taskServer
{
  WeakRetained = objc_loadWeakRetained(&self->_taskServer);

  return WeakRetained;
}

- (HDTaskServerEndpointDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HDTaskServerDelegate)taskServerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_taskServerDelegate);

  return WeakRetained;
}

@end