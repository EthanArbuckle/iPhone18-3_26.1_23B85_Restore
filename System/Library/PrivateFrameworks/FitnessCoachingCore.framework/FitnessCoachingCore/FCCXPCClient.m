@interface FCCXPCClient
- (FCCXPCClient)init;
- (FCCXPCClient)initWithQueue:(id)a3;
- (void)_remoteProxy:(id)a3 errorHandler:(id)a4;
- (void)_setupXPCConnection;
- (void)_transportMessage:(unint64_t)a3 data:(id)a4 completion:(id)a5;
- (void)_transportRequest:(unint64_t)a3 data:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)transportMessage:(unint64_t)a3 data:(id)a4 completion:(id)a5;
- (void)transportRequest:(unint64_t)a3 data:(id)a4 completion:(id)a5;
@end

@implementation FCCXPCClient

- (FCCXPCClient)init
{
  v3 = HKCreateSerialDispatchQueueWithQOSClass();
  v4 = [(FCCXPCClient *)self initWithQueue:v3];

  return v4;
}

- (FCCXPCClient)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCCXPCClient;
  v6 = [(FCCXPCClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, a3);
  }

  [(FCCXPCClient *)v7 _setupXPCConnection];

  return v7;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = FCCXPCClient;
  [(FCCXPCClient *)&v4 dealloc];
}

- (void)_setupXPCConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.fitnesscoachingd" options:0];
  [(NSXPCConnection *)v3 _setQueue:self->_dispatchQueue];
  v4 = FCCDefaultTransportInterface();
  [(NSXPCConnection *)v3 setRemoteObjectInterface:v4];

  [(NSXPCConnection *)v3 setInterruptionHandler:&__block_literal_global_0];
  [(NSXPCConnection *)v3 setInvalidationHandler:&__block_literal_global_300];
  [(NSXPCConnection *)v3 resume];
  connection = self->_connection;
  self->_connection = v3;
}

void __35__FCCXPCClient__setupXPCConnection__block_invoke()
{
  _HKInitializeLogging();
  v0 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
  {
    __35__FCCXPCClient__setupXPCConnection__block_invoke_cold_1(v0);
  }
}

void __35__FCCXPCClient__setupXPCConnection__block_invoke_298()
{
  _HKInitializeLogging();
  v0 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
  {
    __35__FCCXPCClient__setupXPCConnection__block_invoke_298_cold_1(v0);
  }
}

- (void)_remoteProxy:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__FCCXPCClient__remoteProxy_errorHandler___block_invoke;
  block[3] = &unk_27900A220;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

void __42__FCCXPCClient__remoteProxy_errorHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__FCCXPCClient__remoteProxy_errorHandler___block_invoke_2;
  v4[3] = &unk_27900A1D8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  (*(*(a1 + 48) + 16))();
}

void __42__FCCXPCClient__remoteProxy_errorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
  {
    __42__FCCXPCClient__remoteProxy_errorHandler___block_invoke_2_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)transportMessage:(unint64_t)a3 data:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__FCCXPCClient_transportMessage_data_completion___block_invoke;
  v13[3] = &unk_27900A188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

- (void)transportRequest:(unint64_t)a3 data:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__FCCXPCClient_transportRequest_data_completion___block_invoke;
  v13[3] = &unk_27900A188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

- (void)_transportMessage:(unint64_t)a3 data:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__FCCXPCClient__transportMessage_data_completion___block_invoke;
  v14[3] = &unk_27900A248;
  v17 = a3;
  v15 = v8;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__FCCXPCClient__transportMessage_data_completion___block_invoke_2;
  v12[3] = &unk_27900A1D8;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(FCCXPCClient *)self _remoteProxy:v14 errorHandler:v12];
}

- (void)_transportRequest:(unint64_t)a3 data:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__FCCXPCClient__transportRequest_data_completion___block_invoke;
  v14[3] = &unk_27900A248;
  v17 = a3;
  v15 = v8;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__FCCXPCClient__transportRequest_data_completion___block_invoke_2;
  v12[3] = &unk_27900A1D8;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(FCCXPCClient *)self _remoteProxy:v14 errorHandler:v12];
}

void __42__FCCXPCClient__remoteProxy_errorHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24B53B000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch server proxy with error %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end