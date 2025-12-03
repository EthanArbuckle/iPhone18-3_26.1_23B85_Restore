@interface __HMFMessageHandler
+ (id)expiredReceiverTarget;
+ (id)handlerWithReceiver:(id)receiver name:(id)name policies:(id)policies selector:(SEL)selector;
+ (id)logCategory;
- (BOOL)hasReceiver:(id)receiver;
- (BOOL)invokeWithMessage:(id)message;
- (BOOL)isEqual:(id)equal;
- (HMFMessageReceiver)receiver;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (NSUUID)target;
- (OS_dispatch_queue)queue;
- (__HMFMessageHandler)initWithReceiver:(id)receiver name:(id)name policies:(id)policies;
- (id)_canonicalizePolicyList:(id)list;
- (id)logIdentifier;
@end

@implementation __HMFMessageHandler

- (HMFMessageReceiver)receiver
{
  WeakRetained = objc_loadWeakRetained(&self->_receiver);

  return WeakRetained;
}

- (NSUUID)target
{
  WeakRetained = objc_loadWeakRetained(&self->_receiver);
  messageTargetUUID = [WeakRetained messageTargetUUID];
  v4 = messageTargetUUID;
  if (messageTargetUUID)
  {
    expiredReceiverTarget = messageTargetUUID;
  }

  else
  {
    expiredReceiverTarget = [objc_opt_class() expiredReceiverTarget];
  }

  v6 = expiredReceiverTarget;

  return v6;
}

+ (id)expiredReceiverTarget
{
  if (qword_280AFC258 != -1)
  {
    dispatch_once(&qword_280AFC258, &__block_literal_global_37);
  }

  v3 = qword_280AFC260;

  return v3;
}

- (BOOL)invokeWithMessage:(id)message
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

+ (id)handlerWithReceiver:(id)receiver name:(id)name policies:(id)policies selector:(SEL)selector
{
  receiverCopy = receiver;
  nameCopy = name;
  policiesCopy = policies;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = *MEMORY[0x277CBE660];
    v17 = MEMORY[0x277CCACA8];
    v18 = HMFMethodDescription();
    v19 = [v17 stringWithFormat:@"Receiver does not respond to %@", v18];
    v20 = [v15 exceptionWithName:v16 reason:v19 userInfo:0];
    v21 = v20;

    objc_exception_throw(v20);
  }

  v12 = [(__HMFMessageHandler *)[__HMFSelectorMessageHandler alloc] initWithReceiver:receiverCopy name:nameCopy policies:policiesCopy];
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  v12->_selector = selectorCopy;

  return v12;
}

- (__HMFMessageHandler)initWithReceiver:(id)receiver name:(id)name policies:(id)policies
{
  v31 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  nameCopy = name;
  policiesCopy = policies;
  if (!nameCopy)
  {
    _HMFPreconditionFailure(@"name");
  }

  v11 = policiesCopy;
  if (!policiesCopy)
  {
    _HMFPreconditionFailure(@"policies");
  }

  if (receiverCopy)
  {
    v26.receiver = self;
    v26.super_class = __HMFMessageHandler;
    v12 = [(__HMFMessageHandler *)&v26 init];
    v13 = v12;
    if (v12)
    {
      objc_storeWeak(&v12->_receiver, receiverCopy);
      v14 = [HMFObjectCacheNSString hmf_cachedInstanceForString:nameCopy];
      name = v13->_name;
      v13->_name = v14;

      v16 = [(__HMFMessageHandler *)v13 _canonicalizePolicyList:v11];
      v17 = [HMFObjectCacheNSArray hmf_cachedPolicyLists:v16];
      policies = v13->_policies;
      v13->_policies = v17;
    }

    selfCopy = v13;
    v20 = selfCopy;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543618;
      v28 = v23;
      v29 = 2112;
      v30 = 0;
      _os_log_impl(&dword_22ADEC000, v22, OS_LOG_TYPE_ERROR, "%{public}@Invalid receiver: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  name = [(__HMFMessageHandler *)self name];
  target = [(__HMFMessageHandler *)self target];
  uUIDString = [target UUIDString];
  v8 = [v3 stringWithFormat:@"%@ %@(%@)", shortDescription, name, uUIDString];

  return v8;
}

- (NSArray)attributeDescriptions
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  name = [(__HMFMessageHandler *)self name];
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"Name" value:name];
  v19[0] = v5;
  v6 = [HMFAttributeDescription alloc];
  target = [(__HMFMessageHandler *)self target];
  uUIDString = [target UUIDString];
  v9 = [(HMFAttributeDescription *)v6 initWithName:@"Target" value:uUIDString];
  v19[1] = v9;
  v10 = [HMFAttributeDescription alloc];
  policies = [(__HMFMessageHandler *)self policies];
  v12 = [(HMFAttributeDescription *)v10 initWithName:@"Policies" value:policies];
  v19[2] = v12;
  v13 = [HMFAttributeDescription alloc];
  receiver = [(__HMFMessageHandler *)self receiver];
  v15 = [(HMFAttributeDescription *)v13 initWithName:@"Receiver" value:receiver options:1 formatter:0];
  v19[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)hasReceiver:(id)receiver
{
  p_receiver = &self->_receiver;
  receiverCopy = receiver;
  v5 = atomic_load(p_receiver);
  LOBYTE(p_receiver) = v5 == receiverCopy;

  return p_receiver;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && [(NSString *)self->_name isEqualToString:v6[2]])
    {
      v7 = atomic_load(&self->_receiver);
      v8 = atomic_load(v6 + 1);
      if (v7)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      v11 = !v9 && v7 == v8;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (OS_dispatch_queue)queue
{
  receiver = [(__HMFMessageHandler *)self receiver];
  if (objc_opt_respondsToSelector())
  {
    messageReceiveQueue = [receiver messageReceiveQueue];
  }

  else
  {
    messageReceiveQueue = 0;
  }

  return messageReceiveQueue;
}

- (id)_canonicalizePolicyList:(id)list
{
  listCopy = list;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(listCopy, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47____HMFMessageHandler__canonicalizePolicyList___block_invoke;
  v9[3] = &unk_2786E7E28;
  v10 = v5;
  v6 = v5;
  [listCopy enumerateObjectsUsingBlock:v9];
  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_56];

  objc_autoreleasePoolPop(v4);

  return v7;
}

+ (id)logCategory
{
  if (qword_280AFC268 != -1)
  {
    dispatch_once(&qword_280AFC268, &__block_literal_global_58);
  }

  v3 = qword_280AFC270;

  return v3;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  name = [(__HMFMessageHandler *)self name];
  target = [(__HMFMessageHandler *)self target];
  uUIDString = [target UUIDString];
  v7 = [v3 stringWithFormat:@"%@(%@)", name, uUIDString];

  return v7;
}

@end