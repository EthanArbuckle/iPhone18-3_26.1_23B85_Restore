@interface HMDBackingStoreOperation
+ (id)logCategory;
- (HMDBackingStoreOperation)initWithResultBlock:(id)a3;
- (NSString)description;
- (id)logIdentifier;
- (void)main;
@end

@implementation HMDBackingStoreOperation

- (id)logIdentifier
{
  v2 = [(HMDBackingStoreOperation *)self operationUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HMDBackingStoreOperation *)self operationUUID];
  v7 = [v6 UUIDString];
  v8 = [v3 stringWithFormat:@"<%@: %@>", v5, v7];

  return v8;
}

- (void)main
{
  v5 = [(HMDBackingStoreOperation *)self mainReturningError];
  v3 = [(HMDBackingStoreOperation *)self resultBlock];

  if (v3)
  {
    v4 = [(HMDBackingStoreOperation *)self resultBlock];
    (v4)[2](v4, v5);
  }
}

- (HMDBackingStoreOperation)initWithResultBlock:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMDBackingStoreOperation;
  v5 = [(HMDBackingStoreOperation *)&v13 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    resultBlock = v5->_resultBlock;
    v5->_resultBlock = v6;

    v8 = [MEMORY[0x277CCAD78] UUID];
    operationUUID = v5->_operationUUID;
    v5->_operationUUID = v8;

    operationFinishBlock = v5->_operationFinishBlock;
    v5->_operationFinishBlock = &__block_literal_global_199717;

    v11 = v5;
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_199724 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_199724, &__block_literal_global_5_199725);
  }

  v3 = logCategory__hmf_once_v1_199726;

  return v3;
}

void __39__HMDBackingStoreOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_199726;
  logCategory__hmf_once_v1_199726 = v1;
}

@end