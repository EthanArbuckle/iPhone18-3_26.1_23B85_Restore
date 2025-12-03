@interface HAPSuspendedAccessoryIP
+ (id)logCategory;
- (HAPSuspendedAccessoryIP)initWithName:(id)name identifier:(id)identifier wakeTuples:(id)tuples queue:(id)queue;
- (id)_wakeWithTuple:(id)tuple dnsName:(id)name;
- (id)logIdentifier;
- (void)_closeConnection;
- (void)dealloc;
- (void)wakeWithCompletion:(id)completion;
@end

@implementation HAPSuspendedAccessoryIP

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(HAPSuspendedAccessory *)self identifier];
  v5 = HAPIsInternalBuild();
  if (v5)
  {
    name = [(HAPSuspendedAccessory *)self name];
  }

  else
  {
    name = @"<private>";
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HAPSuspendedAccessory type](self, "type")}];
  v8 = [v3 stringWithFormat:@"%@/%@/%@", identifier, name, v7];

  if (v5)
  {
  }

  return v8;
}

- (void)_closeConnection
{
  if (self->_connection)
  {
    AsyncConnection_Release();
    self->_connection = 0;
  }
}

- (id)_wakeWithTuple:(id)tuple dnsName:(id)name
{
  v47 = *MEMORY[0x277D85DE8];
  tupleCopy = tuple;
  nameCopy = name;
  queue = [(HAPSuspendedAccessory *)self queue];
  dispatch_assert_queue_V2(queue);

  wakeAddress = [tupleCopy wakeAddress];
  v11 = nameCopy | wakeAddress;

  if (v11)
  {
    v13 = objc_alloc(MEMORY[0x277D0F770]);
    v14 = MEMORY[0x277CCACA8];
    v15 = MEMORY[0x231884350](self, a2);
    v16 = [v14 stringWithFormat:@"%@, %s:%ld", v15, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/Accessories/HAPSuspendedAccessory.m", 137];
    v17 = [v13 initWithName:v16];

    v18 = nameCopy;
    wakeAddress2 = [tupleCopy wakeAddress];

    if (wakeAddress2)
    {
      v20 = MEMORY[0x277CCACA8];
      wakeAddress3 = [tupleCopy wakeAddress];
      v22 = [v20 stringWithFormat:@"wake://%@%s%@", wakeAddress3, "\x1E", v18];

      v18 = v22;
    }

    [v18 UTF8String];
    [tupleCopy wakePort];
    [(HAPSuspendedAccessoryIP *)self timeout];
    [(HAPSuspendedAccessory *)self queue];
    v36 = 0;
    v37 = 0;
    v39 = v38 = self;
    v23 = AsyncConnection_Connect();

    if (v23)
    {
      v24 = MEMORY[0x277CCA9B8];
      v25 = [MEMORY[0x277CCA9B8] errorWithOSStatus:{v23, 0, 0, self, v39}];
      v26 = [v24 hapErrorWithCode:1 description:@"Connection failed" reason:0 suggestion:0 underlyingError:v25];
    }

    else
    {
      v26 = 0;
    }

    [v26 domain];

    [v26 code];
    v27 = [[HAPMetricsPowerManagementLogEvent alloc] initForSuspendedAccessory:self];
    v28 = +[HAPMetricsDispatcher sharedInstance];
    [v28 submitLogEvent:v27 error:v26];

    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v32 = v40 = v17;
      identifier = [(HAPSuspendedAccessory *)selfCopy identifier];
      *buf = 138543874;
      v42 = v32;
      v43 = 2112;
      v44 = identifier;
      v45 = 2112;
      v46 = v26;
      _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_INFO, "%{public}@The suspended accessory: '%@' sent wake command with error: %@", buf, 0x20u);

      v17 = v40;
    }

    objc_autoreleasePoolPop(v29);
    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
  }

  v34 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)wakeWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(HAPSuspendedAccessory *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HAPSuspendedAccessoryIP_wakeWithCompletion___block_invoke;
  v7[3] = &unk_2786D65D8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __46__HAPSuspendedAccessoryIP_wakeWithCompletion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) wakeTuples];
  v3 = [v2 count];

  if (v3)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = [*(a1 + 32) wakeTuples];
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      v9 = *v23;
      do
      {
        v10 = 0;
        v11 = v7;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v12 = *(*(&v22 + 1) + 8 * v10);
          v13 = *(a1 + 32);
          v14 = [v13 dnsName];
          v7 = [v13 _wakeWithTuple:v12 dnsName:v14];

          v8 |= v7 == 0;
          ++v10;
          v11 = v7;
        }

        while (v6 != v10);
        v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v6);

      if ((v8 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v7 = v4;
    }

    v7 = 0;
LABEL_15:
    (*(*(a1 + 40) + 16))();

    v19 = *MEMORY[0x277D85DE8];
    return;
  }

  v15 = [*(a1 + 32) dnsName];

  v16 = *(a1 + 40);
  if (v15)
  {
    v17 = *(a1 + 32);
    v21 = [v17 dnsName];
    v18 = [v17 _wakeWithTuple:0 dnsName:?];
    (*(v16 + 16))(v16, v18);
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
    (*(v16 + 16))(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(HAPSuspendedAccessoryIP *)self _closeConnection];
  v3.receiver = self;
  v3.super_class = HAPSuspendedAccessoryIP;
  [(HAPSuspendedAccessoryIP *)&v3 dealloc];
}

- (HAPSuspendedAccessoryIP)initWithName:(id)name identifier:(id)identifier wakeTuples:(id)tuples queue:(id)queue
{
  tuplesCopy = tuples;
  v16.receiver = self;
  v16.super_class = HAPSuspendedAccessoryIP;
  v11 = [(HAPSuspendedAccessory *)&v16 initWithName:name identifier:identifier type:1 queue:queue];
  if (v11)
  {
    v12 = [MEMORY[0x277CBEB98] setWithArray:tuplesCopy];
    allObjects = [v12 allObjects];
    wakeTuples = v11->_wakeTuples;
    v11->_wakeTuples = allObjects;

    v11->_timeout = 10000000000;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1, &__block_literal_global_9763);
  }

  v3 = logCategory__hmf_once_v2;

  return v3;
}

uint64_t __38__HAPSuspendedAccessoryIP_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v2 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end