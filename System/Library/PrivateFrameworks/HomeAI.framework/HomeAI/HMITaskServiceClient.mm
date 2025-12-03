@interface HMITaskServiceClient
- (BOOL)cancelTask:(int)task;
- (HMITaskServiceClient)init;
- (int)submitTaskWithOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation HMITaskServiceClient

- (HMITaskServiceClient)init
{
  v8.receiver = self;
  v8.super_class = HMITaskServiceClient;
  initPrivate = [(HMITaskService *)&v8 initPrivate];
  if (initPrivate)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getVCPHomeKitAnalysisServiceClass_softClass;
    v13 = getVCPHomeKitAnalysisServiceClass_softClass;
    if (!getVCPHomeKitAnalysisServiceClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getVCPHomeKitAnalysisServiceClass_block_invoke;
      v9[3] = &unk_2787529F8;
      v9[4] = &v10;
      __getVCPHomeKitAnalysisServiceClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    analysisService = [v3 analysisService];
    remote = initPrivate->_remote;
    initPrivate->_remote = analysisService;
  }

  return initPrivate;
}

- (int)submitTaskWithOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v22 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (handlerCopy)
  {
    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Progress handler is not available in the client task service." userInfo:0];
    objc_exception_throw(v19);
  }

  v11 = completionHandlerCopy;
  remote = [(HMITaskServiceClient *)self remote];
  v13 = [remote requestResidentMaintenanceWithOptions:optionsCopy andCompletionHandler:v11];

  if (v13 == -1)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_ERROR, "%{public}@requestResidentMaintenanceWithOptions failed", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  return v13;
}

- (BOOL)cancelTask:(int)task
{
  v3 = *&task;
  remote = [(HMITaskServiceClient *)self remote];
  [remote cancelRequest:v3];

  return 1;
}

@end