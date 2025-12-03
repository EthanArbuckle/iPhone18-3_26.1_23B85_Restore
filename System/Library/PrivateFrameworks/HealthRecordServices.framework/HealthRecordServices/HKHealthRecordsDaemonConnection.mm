@interface HKHealthRecordsDaemonConnection
+ (id)sharedConnection;
- (HKHealthRecordsDaemonConnection)initWithListenerEndpoint:(id)endpoint;
- (id)endpointForServiceIdentifier:(id)identifier error:(id *)error;
- (id)exportedInterface;
- (void)dealloc;
- (void)fetchEndpointForServiceIdentifier:(id)identifier endpointHandler:(id)handler errorHandler:(id)errorHandler;
@end

@implementation HKHealthRecordsDaemonConnection

+ (id)sharedConnection
{
  os_unfair_lock_lock(&sharedConnection_lock);
  WeakRetained = objc_loadWeakRetained(&sharedConnection_sharedConnection);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(HKHealthRecordsDaemonConnection);
    objc_storeWeak(&sharedConnection_sharedConnection, WeakRetained);
  }

  os_unfair_lock_unlock(&sharedConnection_lock);

  return WeakRetained;
}

- (HKHealthRecordsDaemonConnection)initWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v12.receiver = self;
  v12.super_class = HKHealthRecordsDaemonConnection;
  v5 = [(HKHealthRecordsDaemonConnection *)&v12 init];
  if (v5)
  {
    v6 = HKCreateSerialDispatchQueue();
    clientQueue = v5->_clientQueue;
    v5->_clientQueue = v6;

    v8 = objc_alloc(MEMORY[0x277CCDE80]);
    if (endpointCopy)
    {
      v9 = [v8 initWithListenerEndpoint:endpointCopy];
    }

    else
    {
      v9 = [v8 initWithMachServiceName:@"com.apple.healthrecordsd" options:4096];
    }

    connection = v5->_connection;
    v5->_connection = v9;

    [(_HKXPCConnection *)v5->_connection setExportedObject:v5];
    [(_HKXPCConnection *)v5->_connection resume];
  }

  return v5;
}

- (void)dealloc
{
  [(_HKXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = HKHealthRecordsDaemonConnection;
  [(HKHealthRecordsDaemonConnection *)&v3 dealloc];
}

- (void)fetchEndpointForServiceIdentifier:(id)identifier endpointHandler:(id)handler errorHandler:(id)errorHandler
{
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  connection = self->_connection;
  identifierCopy = identifier;
  v12 = [(_HKXPCConnection *)connection remoteObjectProxyWithErrorHandler:errorHandlerCopy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__HKHealthRecordsDaemonConnection_fetchEndpointForServiceIdentifier_endpointHandler_errorHandler___block_invoke;
  v15[3] = &unk_2796DBE50;
  v16 = handlerCopy;
  v17 = errorHandlerCopy;
  v13 = errorHandlerCopy;
  v14 = handlerCopy;
  [v12 remote_fetchEndpointForServiceIdentifier:identifierCopy completion:v15];
}

uint64_t __98__HKHealthRecordsDaemonConnection_fetchEndpointForServiceIdentifier_endpointHandler_errorHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (id)endpointForServiceIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  connection = self->_connection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__HKHealthRecordsDaemonConnection_endpointForServiceIdentifier_error___block_invoke;
  v15[3] = &unk_2796DBE78;
  v15[4] = &v16;
  v8 = [(_HKXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__HKHealthRecordsDaemonConnection_endpointForServiceIdentifier_error___block_invoke_2;
  v14[3] = &unk_2796DBEA0;
  v14[4] = &v22;
  v14[5] = &v16;
  [v8 remote_fetchEndpointForServiceIdentifier:identifierCopy completion:v14];
  v9 = v17[5];
  v10 = v9;
  if (v9)
  {
    if (error)
    {
      v11 = v9;
      *error = v10;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v12 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __70__HKHealthRecordsDaemonConnection_endpointForServiceIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (id)exportedInterface
{
  v2 = objc_alloc_init(MEMORY[0x277CCAE90]);

  return v2;
}

@end