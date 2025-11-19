@interface HMMRTCSession
- (HMMRTCSession)initWithUUID:(id)a3 serviceName:(id)a4 commonFields:(id)a5 backend:(id)a6;
- (void)submitEventWithName:(id)a3 payload:(id)a4;
@end

@implementation HMMRTCSession

- (void)submitEventWithName:(id)a3 payload:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 mutableCopy];
  [v8 setObject:v6 forKeyedSubscript:@"HMFEventName"];
  v9 = MEMORY[0x277CCABB0];
  v10 = [MEMORY[0x277CBEAA8] date];
  [v10 timeIntervalSince1970];
  v11 = [v9 numberWithDouble:?];
  [v8 setObject:v11 forKeyedSubscript:@"HMFTimestamp"];

  v12 = [(HMMNullRTCSession *)self uuid];
  v13 = [v12 UUIDString];
  [v8 setObject:v13 forKeyedSubscript:@"HMFSessionIdentifier"];

  v14 = [(HMMRTCSession *)self commonFields];
  [v8 addEntriesFromDictionary:v14];

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [(HMMNullRTCSession *)v16 uuid];
    v22 = 138543874;
    v23 = v18;
    v24 = 2112;
    v25 = v19;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_22B074000, v17, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Submitting event: %@", &v22, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  v20 = [(HMMRTCSession *)v16 backend];
  [v20 sendMessage:v8];

  v21 = *MEMORY[0x277D85DE8];
}

- (HMMRTCSession)initWithUUID:(id)a3 serviceName:(id)a4 commonFields:(id)a5 backend:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543874;
    v24 = v17;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_22B074000, v16, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Creating session with service name: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v22.receiver = v15;
  v22.super_class = HMMRTCSession;
  v18 = [(HMMNullRTCSession *)&v22 initWithUUID:v10 serviceName:v11];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_commonFields, a5);
    objc_storeStrong(&v19->_backend, a6);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

@end