@interface HMITaskService
+ (id)allowedClasses;
+ (id)taskService;
+ (id)taskServiceClient;
- (BOOL)cancelTask:(int)task;
- (id)initPrivate;
- (int)submitTask:(id)task progressHandler:(id)handler completionHander:(id)hander;
- (int)submitTaskWithOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation HMITaskService

+ (id)taskService
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HMITaskService_taskService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (taskService_onceToken != -1)
  {
    dispatch_once(&taskService_onceToken, block);
  }

  v2 = taskService_server;

  return v2;
}

void __29__HMITaskService_taskService__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_22D12F000, v4, OS_LOG_TYPE_INFO, "%{public}@Initializing HMITaskServiceServer", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = objc_alloc_init(HMITaskServiceServer);
  v7 = taskService_server;
  taskService_server = v6;
}

+ (id)taskServiceClient
{
  v3 = +[HMIPreference sharedInstance];
  v4 = [v3 BOOLPreferenceForKey:@"taskServiceRunLocally" defaultValue:0];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__HMITaskService_taskServiceClient__block_invoke;
  v7[3] = &__block_descriptor_41_e5_v8__0l;
  v8 = v4;
  v7[4] = self;
  if (taskServiceClient_onceToken != -1)
  {
    dispatch_once(&taskServiceClient_onceToken, v7);
  }

  v5 = taskServiceClient_client;

  return v5;
}

void __35__HMITaskService_taskServiceClient__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2 == 1)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@RUNNING TASK SERVICE LOCALLY: returning taskService", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v8 = +[HMITaskService taskService];
  }

  else
  {
    if (v6)
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@Initializing HMITaskServiceClient", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v8 = objc_alloc_init(HMITaskServiceClient);
  }

  v10 = taskServiceClient_client;
  taskServiceClient_client = v8;
}

+ (id)allowedClasses
{
  v6[8] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v6[4] = objc_opt_class();
  v6[5] = objc_opt_class();
  v6[6] = objc_opt_class();
  v6[7] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:8];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)initPrivate
{
  v3.receiver = self;
  v3.super_class = HMITaskService;
  return [(HMITaskService *)&v3 init];
}

- (int)submitTaskWithOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler
{
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (BOOL)cancelTask:(int)task
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (int)submitTask:(id)task progressHandler:(id)handler completionHander:(id)hander
{
  taskCopy = task;
  handlerCopy = handler;
  handerCopy = hander;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

@end