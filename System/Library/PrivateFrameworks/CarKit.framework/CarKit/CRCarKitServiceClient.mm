@interface CRCarKitServiceClient
+ (id)serviceQueue;
- (CRCarKitServiceClient)init;
- (void)_serviceQueuePerformBlock:(id)block errorHandler:(id)handler;
- (void)_setupConnection;
- (void)dealloc;
- (void)performServiceBlock:(id)block errorHandler:(id)handler;
- (void)performSynchronousServiceBlock:(id)block errorHandler:(id)handler;
@end

@implementation CRCarKitServiceClient

+ (id)serviceQueue
{
  if (serviceQueue_onceToken != -1)
  {
    +[CRCarKitServiceClient serviceQueue];
  }

  v3 = serviceQueue___queue;

  return v3;
}

void __37__CRCarKitServiceClient_serviceQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.carkit.serviceClient", v2);
  v1 = serviceQueue___queue;
  serviceQueue___queue = v0;
}

- (CRCarKitServiceClient)init
{
  v5.receiver = self;
  v5.super_class = CRCarKitServiceClient;
  v2 = [(CRCarKitServiceClient *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRCarKitServiceClient *)v2 _setupConnection];
  }

  return v3;
}

- (void)_setupConnection
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4803828];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v3 setClasses:v6 forSelector:sel_fetchAllVehiclesWithReply_ argumentIndex:0 ofReply:1];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v3 setClasses:v9 forSelector:sel_fetchViewAreasForVehicleIdentifier_reply_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [v3 setClasses:v12 forSelector:sel_saveViewAreas_forVehicleIdentifier_reply_ argumentIndex:0 ofReply:1];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [v3 setClasses:v15 forSelector:sel_saveViewAreas_forVehicleIdentifier_reply_ argumentIndex:0 ofReply:0];

  v16 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.service" options:4096];
  [v16 setRemoteObjectInterface:v3];
  v17 = CarGeneralLogging();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81FC000, v17, OS_LOG_TYPE_DEFAULT, "Connecting to CarKit service.", buf, 2u);
  }

  [v16 resume];
  [(CRCarKitServiceClient *)self setConnection:v16];
}

- (void)dealloc
{
  connection = [(CRCarKitServiceClient *)self connection];
  [connection invalidate];

  v4.receiver = self;
  v4.super_class = CRCarKitServiceClient;
  [(CRCarKitServiceClient *)&v4 dealloc];
}

- (void)performSynchronousServiceBlock:(id)block errorHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  serviceQueue = [objc_opt_class() serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__CRCarKitServiceClient_performSynchronousServiceBlock_errorHandler___block_invoke;
  block[3] = &unk_1E82FBFB8;
  block[4] = self;
  v12 = blockCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = blockCopy;
  dispatch_sync(serviceQueue, block);
}

- (void)_serviceQueuePerformBlock:(id)block errorHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  connection = [(CRCarKitServiceClient *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__CRCarKitServiceClient__serviceQueuePerformBlock_errorHandler___block_invoke;
  v13[3] = &unk_1E82FBF48;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];

  if (blockCopy)
  {
    v11 = CarGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_DEFAULT, "Connecting to CarKit service.", v12, 2u);
    }

    blockCopy[2](blockCopy, v10);
  }
}

void __64__CRCarKitServiceClient__serviceQueuePerformBlock_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__CRCarKitServiceClient__serviceQueuePerformBlock_errorHandler___block_invoke_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)performServiceBlock:(id)block errorHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  serviceQueue = [objc_opt_class() serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CRCarKitServiceClient_performServiceBlock_errorHandler___block_invoke;
  block[3] = &unk_1E82FBFB8;
  block[4] = self;
  v12 = blockCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = blockCopy;
  dispatch_async(serviceQueue, block);
}

void __64__CRCarKitServiceClient__serviceQueuePerformBlock_errorHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "CarKit Service Error: %@", &v2, 0xCu);
}

@end