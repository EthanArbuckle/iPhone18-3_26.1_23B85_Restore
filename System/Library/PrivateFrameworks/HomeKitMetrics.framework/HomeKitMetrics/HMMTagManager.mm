@interface HMMTagManager
+ (id)sharedInstance;
- (HMMTagManager)init;
- (void)registerTagObserver:(id)a3 forTags:(id)a4;
- (void)resetTagDispatcher;
- (void)submitTaggedEvent:(id)a3 processorList:(id)a4;
- (void)unregisterTagObserver:(id)a3 forTags:(id)a4;
@end

@implementation HMMTagManager

- (void)unregisterTagObserver:(id)a3 forTags:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMMTagManager *)self currentDispatcher];
  [v8 unregisterTagObserver:v7 forTags:v6];
}

- (void)registerTagObserver:(id)a3 forTags:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMMTagManager *)self currentDispatcher];
  [v8 registerTagObserver:v7 forTags:v6];
}

- (void)submitTaggedEvent:(id)a3 processorList:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMMTagManager *)self currentDispatcher];
  [v8 submitTaggedEvent:v7 processorList:v6];
}

- (void)resetTagDispatcher
{
  v3 = [HMMTagDispatcher alloc];
  v5 = [(HMMTagManager *)self workQueue];
  v4 = [(HMMTagDispatcher *)v3 initWithWorkQueue:v5];
  [(HMMTagManager *)self setCurrentDispatcher:v4];
}

- (HMMTagManager)init
{
  v12.receiver = self;
  v12.super_class = HMMTagManager;
  v2 = [(HMMTagManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v4 = HMMDispatchQueueName(v2, 0);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);
    v7 = dispatch_queue_create(v4, v6);
    workQueue = v3->_workQueue;
    v3->_workQueue = v7;

    v9 = [[HMMTagDispatcher alloc] initWithWorkQueue:v3->_workQueue];
    currentDispatcher = v3->_currentDispatcher;
    v3->_currentDispatcher = v9;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance__hmf_once_t0_1022 != -1)
  {
    dispatch_once(&sharedInstance__hmf_once_t0_1022, &__block_literal_global_1023);
  }

  v3 = sharedInstance__hmf_once_v1_1024;

  return v3;
}

uint64_t __31__HMMTagManager_sharedInstance__block_invoke()
{
  sharedInstance__hmf_once_v1_1024 = objc_alloc_init(HMMTagManager);

  return MEMORY[0x2821F96F8]();
}

@end