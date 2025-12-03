@interface HMDMessageHandlerQueuedMessage
+ (id)logCategory;
- (HMDMessageHandlerQueuedMessage)initWithMessage:(id)message timeInterval:(double)interval;
- (HMDMessageHandlerQueuedMessageDelegate)delegate;
- (NSString)name;
- (NSUUID)identifier;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)resumeTimer;
- (void)suspendTimer;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDMessageHandlerQueuedMessage

- (HMDMessageHandlerQueuedMessageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  message = [(HMDMessageHandlerQueuedMessage *)self message];
  identifier = [message identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDMessageHandlerQueuedMessage *)self identifier];
  v5 = [v3 initWithName:@"identifier" value:identifier];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMDMessageHandlerQueuedMessage *)self name];
  v8 = [v6 initWithName:@"name" value:name];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)timerDidFire:(id)fire
{
  v15 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  delegate = [(HMDMessageHandlerQueuedMessage *)self delegate];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = delegate;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did trigger message handler queued message with delegate: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [delegate didTriggerMessageHandlerQueuedMessage:selfCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (NSString)name
{
  message = [(HMDMessageHandlerQueuedMessage *)self message];
  name = [message name];

  return name;
}

- (NSUUID)identifier
{
  message = [(HMDMessageHandlerQueuedMessage *)self message];
  identifier = [message identifier];

  return identifier;
}

- (void)suspendTimer
{
  timer = [(HMDMessageHandlerQueuedMessage *)self timer];
  [timer suspend];
}

- (void)resumeTimer
{
  timer = [(HMDMessageHandlerQueuedMessage *)self timer];
  [timer resume];
}

- (HMDMessageHandlerQueuedMessage)initWithMessage:(id)message timeInterval:(double)interval
{
  messageCopy = message;
  v8 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:2 options:interval];
  v12.receiver = self;
  v12.super_class = HMDMessageHandlerQueuedMessage;
  v9 = [(HMDMessageHandlerQueuedMessage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_message, message);
    objc_storeStrong(&v10->_timer, v8);
    [(HMFTimer *)v10->_timer setDelegate:v10];
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_93402 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_93402, &__block_literal_global_93403);
  }

  v3 = logCategory__hmf_once_v2_93404;

  return v3;
}

uint64_t __45__HMDMessageHandlerQueuedMessage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_93404;
  logCategory__hmf_once_v2_93404 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end