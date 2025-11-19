@interface HMDCloudAccount
- (HMDCloudAccount)initWithClientQueue:(id)a3;
- (void)addAccountOperation:(id)a3;
@end

@implementation HMDCloudAccount

- (void)addAccountOperation:(id)a3
{
  v4 = a3;
  v5 = [HMDCloudAccountOperation alloc];
  v6 = [(HMDCloudAccount *)self clientQueue];
  v8 = [(HMDCloudAccountOperation *)v5 initWithBlock:v4 clientQueue:v6];

  v7 = [(HMDCloudAccount *)self queue];
  [v7 addOperation:v8];
}

- (HMDCloudAccount)initWithClientQueue:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = HMDCloudAccount;
  v6 = [(HMDCloudAccount *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientQueue, a3);
    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queue = v7->_queue;
    v7->_queue = v8;

    [(NSOperationQueue *)v7->_queue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v7->_queue setName:@"com.apple.HMDCloudAccount"];
    v10 = v7;
  }

  return v7;
}

@end