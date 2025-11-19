@interface HMITaskServiceClient
- (BOOL)cancelTask:(int)a3;
- (HMITaskServiceClient)init;
- (int)submitTaskWithOptions:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
@end

@implementation HMITaskServiceClient

- (HMITaskServiceClient)init
{
  v8.receiver = self;
  v8.super_class = HMITaskServiceClient;
  v2 = [(HMITaskService *)&v8 initPrivate];
  if (v2)
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
    v5 = [v3 analysisService];
    remote = v2->_remote;
    v2->_remote = v5;
  }

  return v2;
}

- (int)submitTaskWithOptions:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Progress handler is not available in the client task service." userInfo:0];
    objc_exception_throw(v19);
  }

  v11 = v10;
  v12 = [(HMITaskServiceClient *)self remote];
  v13 = [v12 requestResidentMaintenanceWithOptions:v8 andCompletionHandler:v11];

  if (v13 == -1)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
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

- (BOOL)cancelTask:(int)a3
{
  v3 = *&a3;
  v4 = [(HMITaskServiceClient *)self remote];
  [v4 cancelRequest:v3];

  return 1;
}

@end