@interface HMDMessageHandlerQueuedMessage
+ (id)logCategory;
- (HMDMessageHandlerQueuedMessage)initWithMessage:(id)a3 timeInterval:(double)a4;
- (HMDMessageHandlerQueuedMessageDelegate)delegate;
- (NSString)name;
- (NSUUID)identifier;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)resumeTimer;
- (void)suspendTimer;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDMessageHandlerQueuedMessage

- (HMDMessageHandlerQueuedMessageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDMessageHandlerQueuedMessage *)self message];
  v3 = [v2 identifier];
  v4 = [v3 UUIDString];

  return v4;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDMessageHandlerQueuedMessage *)self identifier];
  v5 = [v3 initWithName:@"identifier" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDMessageHandlerQueuedMessage *)self name];
  v8 = [v6 initWithName:@"name" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)timerDidFire:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMessageHandlerQueuedMessage *)self delegate];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did trigger message handler queued message with delegate: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [v5 didTriggerMessageHandlerQueuedMessage:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (NSString)name
{
  v2 = [(HMDMessageHandlerQueuedMessage *)self message];
  v3 = [v2 name];

  return v3;
}

- (NSUUID)identifier
{
  v2 = [(HMDMessageHandlerQueuedMessage *)self message];
  v3 = [v2 identifier];

  return v3;
}

- (void)suspendTimer
{
  v2 = [(HMDMessageHandlerQueuedMessage *)self timer];
  [v2 suspend];
}

- (void)resumeTimer
{
  v2 = [(HMDMessageHandlerQueuedMessage *)self timer];
  [v2 resume];
}

- (HMDMessageHandlerQueuedMessage)initWithMessage:(id)a3 timeInterval:(double)a4
{
  v7 = a3;
  v8 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:2 options:a4];
  v12.receiver = self;
  v12.super_class = HMDMessageHandlerQueuedMessage;
  v9 = [(HMDMessageHandlerQueuedMessage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_message, a3);
    objc_storeStrong(&v10->_timer, v8);
    [(HMFTimer *)v10->_timer setDelegate:v10];
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_140150 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_140150, &__block_literal_global_140151);
  }

  v3 = logCategory__hmf_once_v2_140152;

  return v3;
}

void __45__HMDMessageHandlerQueuedMessage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_140152;
  logCategory__hmf_once_v2_140152 = v1;
}

@end