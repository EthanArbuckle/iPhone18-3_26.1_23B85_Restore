@interface HMDNFCEventStream
+ (id)logCategory;
- (HMDNFCEventStream)initWithName:(id)a3 workQueue:(id)a4;
- (HMDNFCEventStreamDelegate)delegate;
- (void)_handleXPCEvent:(id)a3;
- (void)start;
@end

@implementation HMDNFCEventStream

- (HMDNFCEventStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleXPCEvent:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x22AAD53D0]();
  if (v5 != MEMORY[0x277D86468])
  {
    v6 = v5;
    v7 = MEMORY[0x277D86480];
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v6 == v7)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        v30 = 138543618;
        v31 = v12;
        v32 = 2112;
        v33 = v4;
        v13 = "%{public}@Received XPC error event: %@";
        v14 = v10;
        v15 = 22;
        goto LABEL_11;
      }
    }

    else if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v12;
      v13 = "%{public}@Received unexpected xpc event type";
      v14 = v10;
      v15 = 12;
LABEL_11:
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, v13, &v30, v15);
    }

    v24 = v8;
LABEL_13:
    objc_autoreleasePoolPop(v24);
    goto LABEL_14;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v30 = 138543618;
    v31 = v19;
    v32 = 2112;
    v33 = v4;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Received XPC dictionary event: %@", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  string = xpc_dictionary_get_string(v4, [@"Payload" UTF8String]);
  if (!string)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = v17;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v29;
      v32 = 2112;
      v33 = @"Payload";
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@No value for '%@' in dictionary event", &v30, 0x16u);
    }

    v24 = v26;
    goto LABEL_13;
  }

  v21 = string;
  v22 = [(HMDNFCEventStream *)v17 delegate];
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:v21];
  [v22 nfcEventStream:v17 didReceiveEvent:v23];

LABEL_14:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Initializing XPC NFC event handler", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDNFCEventStream *)v4 name];
  v8 = [v7 UTF8String];
  v9 = [(HMDNFCEventStream *)v4 workQueue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __26__HMDNFCEventStream_start__block_invoke;
  handler[3] = &unk_27867D068;
  handler[4] = v4;
  xpc_set_event_stream_handler(v8, v9, handler);

  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v10, "version", "v1");
  v11 = [(HMDNFCEventStream *)v4 name];
  [v11 UTF8String];
  [@"NFC" UTF8String];
  xpc_set_event();

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDNFCEventStream)initWithName:(id)a3 workQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HMDNFCEventStream;
  v8 = [(HMDNFCEventStream *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_workQueue, a4);
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_175699 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_175699, &__block_literal_global_175700);
  }

  v3 = logCategory__hmf_once_v6_175701;

  return v3;
}

void __32__HMDNFCEventStream_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6_175701;
  logCategory__hmf_once_v6_175701 = v1;
}

@end