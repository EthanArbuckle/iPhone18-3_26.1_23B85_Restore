@interface __HMDHomeAdministratorReceiver
+ (id)logCategory;
- (HMDHomeAdministratorHandler)handler;
- (HMFMessageReceiver)receiver;
- (NSUUID)messageTargetUUID;
- (__HMDHomeAdministratorReceiver)initWithReceiver:(id)receiver handler:(id)handler;
- (id)logIdentifier;
- (id)shortDescription;
- (void)__handleRemoteMessage:(id)message;
- (void)__handleXPCMessage:(id)message;
- (void)dealloc;
- (void)registerForMessage:(id)message policies:(id)policies;
@end

@implementation __HMDHomeAdministratorReceiver

- (HMDHomeAdministratorHandler)handler
{
  WeakRetained = objc_loadWeakRetained(&self->_handler);

  return WeakRetained;
}

- (HMFMessageReceiver)receiver
{
  WeakRetained = objc_loadWeakRetained(&self->_receiver);

  return WeakRetained;
}

- (void)__handleRemoteMessage:(id)message
{
  messageCopy = message;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)logIdentifier
{
  receiver = [(__HMDHomeAdministratorReceiver *)self receiver];
  messageTargetUUID = [receiver messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];

  return uUIDString;
}

- (NSUUID)messageTargetUUID
{
  WeakRetained = objc_loadWeakRetained(&self->_receiver);
  messageTargetUUID = [WeakRetained messageTargetUUID];

  return messageTargetUUID;
}

- (void)__handleXPCMessage:(id)message
{
  v17 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  receiver = [(__HMDHomeAdministratorReceiver *)self receiver];

  if (receiver)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      v13 = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = shortDescription;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Locally dispatching message: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    handler = [(__HMDHomeAdministratorReceiver *)selfCopy handler];
    [handler dispatchMessage:messageCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessage:(id)message policies:(id)policies
{
  if (message && policies)
  {
    messageCopy = message;
    v9 = [policies hmf_objectsPassingTest:&__block_literal_global_127_169706];
    handler = [(__HMDHomeAdministratorReceiver *)self handler];
    dispatcher = [handler dispatcher];
    [dispatcher registerForMessage:messageCopy receiver:self policies:v9 selector:sel___handleXPCMessage_];
  }
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_receiver);
  v6 = [v3 stringWithFormat:@"%@(%@)", v4, objc_opt_class()];

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  v4 = objc_loadWeakRetained(&self->_receiver);
  [WeakRetained deregisterReceiver:v4];

  dispatcher = [WeakRetained dispatcher];
  [dispatcher deregisterReceiver:self];

  v6.receiver = self;
  v6.super_class = __HMDHomeAdministratorReceiver;
  [(__HMDHomeAdministratorReceiver *)&v6 dealloc];
}

- (__HMDHomeAdministratorReceiver)initWithReceiver:(id)receiver handler:(id)handler
{
  receiverCopy = receiver;
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = __HMDHomeAdministratorReceiver;
  v8 = [(__HMDHomeAdministratorReceiver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_receiver, receiverCopy);
    objc_storeWeak(&v9->_handler, handlerCopy);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16_169718 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16_169718, &__block_literal_global_132_169719);
  }

  v3 = logCategory__hmf_once_v17_169720;

  return v3;
}

@end