@interface HMDThreadOperation
+ (id)logCategory;
- (HMDThreadOperation)initWithQueue:(id)queue threadOperationType:(int64_t)type completion:(id)completion;
- (void)cancelWithError:(id)error;
- (void)dispatchAfter:(unint64_t)after block:(id)block;
- (void)dispatchBlock:(id)block;
- (void)executeWithTimeout:(id)timeout completion:(id)completion;
@end

@implementation HMDThreadOperation

- (void)dispatchAfter:(unint64_t)after block:(id)block
{
  blockCopy = block;
  workQueue = [(HMDThreadOperation *)self workQueue];
  dispatch_after(after, workQueue, blockCopy);
}

- (void)dispatchBlock:(id)block
{
  blockCopy = block;
  workQueue = [(HMDThreadOperation *)self workQueue];
  dispatch_async(workQueue, blockCopy);
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__HMDThreadOperation_cancelWithError___block_invoke;
  v6[3] = &unk_27868A750;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  [(HMDThreadOperation *)self dispatchBlock:v6];
}

void __38__HMDThreadOperation_cancelWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) operation];
  v2[2](v2, *(a1 + 40), &__block_literal_global_150854);
}

- (void)executeWithTimeout:(id)timeout completion:(id)completion
{
  timeoutCopy = timeout;
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__HMDThreadOperation_executeWithTimeout_completion___block_invoke;
  aBlock[3] = &unk_27867B828;
  objc_copyWeak(&v19, &location);
  v18 = v21;
  v8 = completionCopy;
  v17 = v8;
  v9 = _Block_copy(aBlock);
  if (timeoutCopy)
  {
    v10 = dispatch_time(0, [timeoutCopy longLongValue]);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__HMDThreadOperation_executeWithTimeout_completion___block_invoke_1;
    v14[3] = &unk_278688B80;
    v15 = v9;
    [(HMDThreadOperation *)self dispatchAfter:v10 block:v14];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__HMDThreadOperation_executeWithTimeout_completion___block_invoke_2;
  v12[3] = &unk_27868A7A0;
  v12[4] = self;
  v11 = v9;
  v13 = v11;
  [(HMDThreadOperation *)self dispatchBlock:v12];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  _Block_object_dispose(v21, 8);
}

void __52__HMDThreadOperation_executeWithTimeout_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = *(*(a1 + 40) + 8);
  if (v3)
  {
    if (*(v5 + 24))
    {
      goto LABEL_10;
    }

    v6 = objc_autoreleasePoolPush();
    v7 = WeakRetained;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Thread operation timeout %@", &v13, 0x16u);
    }
  }

  else
  {
    if (!*(v5 + 24))
    {
LABEL_9:
      *(v5 + 24) = 1;
      (*(*(a1 + 32) + 16))();
      goto LABEL_10;
    }

    v6 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Thread operation response occurred after timeout %@", &v13, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v6);
  v5 = *(*(a1 + 40) + 8);
  if ((*(v5 + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
}

void __52__HMDThreadOperation_executeWithTimeout_completion___block_invoke_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
  (*(v1 + 16))(v1, v2);
}

void __52__HMDThreadOperation_executeWithTimeout_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) operation];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__HMDThreadOperation_executeWithTimeout_completion___block_invoke_3;
  v3[3] = &unk_278688DD0;
  v4 = *(a1 + 40);
  (v2)[2](v2, 0, v3);
}

- (HMDThreadOperation)initWithQueue:(id)queue threadOperationType:(int64_t)type completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = HMDThreadOperation;
  v11 = [(HMDThreadOperation *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_workQueue, queue);
    v13 = _Block_copy(completionCopy);
    operation = v12->_operation;
    v12->_operation = v13;

    v12->_operationType = type;
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_150865 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_150865, &__block_literal_global_4_150866);
  }

  v3 = logCategory__hmf_once_v3_150867;

  return v3;
}

void __33__HMDThreadOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_150867;
  logCategory__hmf_once_v3_150867 = v1;
}

@end