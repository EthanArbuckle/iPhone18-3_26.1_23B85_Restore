@interface HKHealthRecordsDaemonConnection
+ (id)sharedConnection;
- (HKHealthRecordsDaemonConnection)initWithListenerEndpoint:(id)a3;
- (id)endpointForServiceIdentifier:(id)a3 error:(id *)a4;
- (id)exportedInterface;
- (void)dealloc;
- (void)fetchEndpointForServiceIdentifier:(id)a3 endpointHandler:(id)a4 errorHandler:(id)a5;
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

- (HKHealthRecordsDaemonConnection)initWithListenerEndpoint:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKHealthRecordsDaemonConnection;
  v5 = [(HKHealthRecordsDaemonConnection *)&v12 init];
  if (v5)
  {
    v6 = HKCreateSerialDispatchQueue();
    clientQueue = v5->_clientQueue;
    v5->_clientQueue = v6;

    v8 = objc_alloc(MEMORY[0x277CCDE80]);
    if (v4)
    {
      v9 = [v8 initWithListenerEndpoint:v4];
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

- (void)fetchEndpointForServiceIdentifier:(id)a3 endpointHandler:(id)a4 errorHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  connection = self->_connection;
  v11 = a3;
  v12 = [(_HKXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__HKHealthRecordsDaemonConnection_fetchEndpointForServiceIdentifier_endpointHandler_errorHandler___block_invoke;
  v15[3] = &unk_2796DBE50;
  v16 = v8;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  [v12 remote_fetchEndpointForServiceIdentifier:v11 completion:v15];
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

- (id)endpointForServiceIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  [v8 remote_fetchEndpointForServiceIdentifier:v6 completion:v14];
  v9 = v17[5];
  v10 = v9;
  if (v9)
  {
    if (a4)
    {
      v11 = v9;
      *a4 = v10;
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