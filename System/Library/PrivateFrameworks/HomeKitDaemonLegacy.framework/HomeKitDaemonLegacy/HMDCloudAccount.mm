@interface HMDCloudAccount
- (HMDCloudAccount)initWithClientQueue:(id)queue;
- (void)addAccountOperation:(id)operation;
@end

@implementation HMDCloudAccount

- (void)addAccountOperation:(id)operation
{
  operationCopy = operation;
  v5 = [HMDCloudAccountOperation alloc];
  clientQueue = [(HMDCloudAccount *)self clientQueue];
  v8 = [(HMDCloudAccountOperation *)v5 initWithBlock:operationCopy clientQueue:clientQueue];

  queue = [(HMDCloudAccount *)self queue];
  [queue addOperation:v8];
}

- (HMDCloudAccount)initWithClientQueue:(id)queue
{
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = HMDCloudAccount;
  v6 = [(HMDCloudAccount *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientQueue, queue);
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