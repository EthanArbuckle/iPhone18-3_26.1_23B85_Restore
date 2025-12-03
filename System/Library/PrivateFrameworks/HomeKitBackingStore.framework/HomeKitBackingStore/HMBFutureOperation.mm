@interface HMBFutureOperation
+ (id)logCategory;
- (HMBFutureOperation)initWithBlock:(id)block;
- (void)cancelWithError:(id)error;
- (void)main;
@end

@implementation HMBFutureOperation

- (void)main
{
  block = [(HMBFutureOperation *)self block];
  v4 = block[2]();

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __26__HMBFutureOperation_main__block_invoke;
  v8[3] = &unk_2786E1398;
  v8[4] = self;
  v5 = [v4 addSuccessBlock:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__HMBFutureOperation_main__block_invoke_2;
  v7[3] = &unk_2786E13E8;
  v7[4] = self;
  v6 = [v4 addFailureBlock:v7];
}

void __26__HMBFutureOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 finish];
  v5 = [*(a1 + 32) future];
  [v5 finishWithResult:v4];
}

- (void)cancelWithError:(id)error
{
  v6.receiver = self;
  v6.super_class = HMBFutureOperation;
  errorCopy = error;
  [(HMFOperation *)&v6 cancelWithError:errorCopy];
  v5 = [(HMBFutureOperation *)self future:v6.receiver];
  [v5 finishWithError:errorCopy];
}

- (HMBFutureOperation)initWithBlock:(id)block
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = HMBFutureOperation;
  v5 = [(HMFOperation *)&v11 initWithTimeout:0.0];
  if (v5)
  {
    v6 = MEMORY[0x231885A30](blockCopy);
    block = v5->_block;
    v5->_block = v6;

    v8 = objc_alloc_init(MEMORY[0x277D2C900]);
    future = v5->_future;
    v5->_future = v8;
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_4100 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_4100, &__block_literal_global_4101);
  }

  v3 = logCategory__hmf_once_v1_4102;

  return v3;
}

uint64_t __33__HMBFutureOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_4102;
  logCategory__hmf_once_v1_4102 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end