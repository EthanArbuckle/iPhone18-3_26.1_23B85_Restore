@interface __HMFNetAddressMonitor
- (__HMFNetAddressMonitor)initWithNetAddress:(id)a3;
- (__HMFNetAddressMonitor)initWithNetService:(id)a3;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (id)shortDescription;
- (unint64_t)reachabilityPath;
- (void)dealloc;
@end

@implementation __HMFNetAddressMonitor

- (__HMFNetAddressMonitor)initWithNetService:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (__HMFNetAddressMonitor)initWithNetAddress:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v36.receiver = self;
  v36.super_class = __HMFNetAddressMonitor;
  v7 = [(HMFNetMonitor *)&v36 initWithNetAddress:v6];
  v8 = v7;
  if (!v7)
  {
LABEL_16:
    v32 = v8;
    goto LABEL_22;
  }

  v9 = HMFDispatchQueueName(v7, 0);
  v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v11 = dispatch_queue_create(v9, v10);
  queue = v8->_queue;
  v8->_queue = v11;

  objc_storeStrong(&v8->_netAddress, a3);
  if (v6)
  {
    v13 = *MEMORY[0x277CBECE8];
    v14 = [v6 addressString];
    v8->_networkReachabilityRef = SCNetworkReachabilityCreateWithName(v13, [v14 UTF8String]);

    if (v8->_networkReachabilityRef)
    {
LABEL_4:
      memset(&context, 0, sizeof(context));
      v15 = [[HMFWeakObject alloc] initWithWeakObject:v8];
      context.info = v15;
      context.retain = MEMORY[0x277CBE558];
      context.release = MEMORY[0x277CBE550];
      SCNetworkReachabilitySetCallback(v8->_networkReachabilityRef, _networkReachabilityChangeCallback, &context);
      SCNetworkReachabilitySetDispatchQueue(v8->_networkReachabilityRef, v8->_queue);
      flags = 0;
      v16 = SCNetworkReachabilityGetFlags(v8->_networkReachabilityRef, &flags);
      v17 = objc_autoreleasePoolPush();
      v18 = v8;
      v19 = HMFGetOSLogHandle();
      v20 = v19;
      if (v16)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier(v18);
          v22 = __SCNetworkReachabilityFlagsToString(flags);
          *buf = 138543618;
          v38 = v21;
          v39 = 2112;
          v40 = v22;
          _os_log_impl(&dword_22ADEC000, v20, OS_LOG_TYPE_INFO, "%{public}@Initial flags: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v23 = flags;
        v18->_currentNetworkFlags = flags;
        v18->super._reachable = (v23 & 2) != 0;
      }

      else
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier(v18);
          *buf = 138543362;
          v38 = v31;
          _os_log_impl(&dword_22ADEC000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to get initial reachability", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
      }

      goto LABEL_16;
    }
  }

  else
  {
    *&context.version = xmmword_22AE829D0;
    v24 = SCNetworkReachabilityCreateWithAddress(0, &context);
    v8->_networkReachabilityRef = v24;
    if (v24)
    {
      goto LABEL_4;
    }
  }

  v25 = objc_autoreleasePoolPush();
  v26 = v8;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier(v26);
    if (v6)
    {
      v29 = MEMORY[0x277CCACA8];
      v3 = [v6 addressString];
      v30 = [v29 stringWithFormat:@"for %@", v3];
    }

    else
    {
      v30 = &stru_283EBDA30;
    }

    LODWORD(context.version) = 138543618;
    *(&context.version + 4) = v28;
    WORD2(context.info) = 2112;
    *(&context.info + 6) = v30;
    _os_log_impl(&dword_22ADEC000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create network reachability monitor%@.", &context, 0x16u);
    if (v6)
    {
    }
  }

  objc_autoreleasePoolPop(v25);
  v32 = 0;
LABEL_22:

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

- (void)dealloc
{
  networkReachabilityRef = self->_networkReachabilityRef;
  if (networkReachabilityRef)
  {
    SCNetworkReachabilitySetCallback(networkReachabilityRef, 0, 0);
    SCNetworkReachabilitySetDispatchQueue(self->_networkReachabilityRef, 0);
    CFRelease(self->_networkReachabilityRef);
    self->_networkReachabilityRef = 0;
  }

  v4.receiver = self;
  v4.super_class = __HMFNetAddressMonitor;
  [(__HMFNetAddressMonitor *)&v4 dealloc];
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(__HMFNetAddressMonitor *)self netAddress];
  if (v5)
  {
    v6 = [(__HMFNetAddressMonitor *)self netAddress];
    v7 = [v6 addressString];
    v8 = [v3 stringWithFormat:@"%@ '%@'", v4, v7];
  }

  else
  {
    v8 = [v3 stringWithFormat:@"%@ '%@'", v4, @"localhost"];
  }

  return v8;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  v4 = [(__HMFNetAddressMonitor *)self netAddress];
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"Address" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (unint64_t)reachabilityPath
{
  os_unfair_lock_lock_with_options();
  currentNetworkFlags = self->_currentNetworkFlags;
  v4 = 2;
  if ((currentNetworkFlags & 0x40000) != 0)
  {
    v4 = 3;
  }

  if ((currentNetworkFlags & 2) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  os_unfair_lock_unlock(&self->super._lock);
  return v5;
}

- (id)logIdentifier
{
  v3 = [(__HMFNetAddressMonitor *)self netAddress];
  if (v3)
  {
    v4 = [(__HMFNetAddressMonitor *)self netAddress];
    v5 = [v4 addressString];
  }

  else
  {
    v5 = @"localhost";
  }

  return v5;
}

@end