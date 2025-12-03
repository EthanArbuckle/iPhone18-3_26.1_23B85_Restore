@interface HMMRTCSession
- (HMMRTCSession)initWithUUID:(id)d serviceName:(id)name commonFields:(id)fields backend:(id)backend;
- (void)submitEventWithName:(id)name payload:(id)payload;
@end

@implementation HMMRTCSession

- (void)submitEventWithName:(id)name payload:(id)payload
{
  v28 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  payloadCopy = payload;
  v8 = [payloadCopy mutableCopy];
  [v8 setObject:nameCopy forKeyedSubscript:@"HMFEventName"];
  v9 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v11 = [v9 numberWithDouble:?];
  [v8 setObject:v11 forKeyedSubscript:@"HMFTimestamp"];

  uuid = [(HMMNullRTCSession *)self uuid];
  uUIDString = [uuid UUIDString];
  [v8 setObject:uUIDString forKeyedSubscript:@"HMFSessionIdentifier"];

  commonFields = [(HMMRTCSession *)self commonFields];
  [v8 addEntriesFromDictionary:commonFields];

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    uuid2 = [(HMMNullRTCSession *)selfCopy uuid];
    v22 = 138543874;
    v23 = v18;
    v24 = 2112;
    v25 = uuid2;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_22B074000, v17, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Submitting event: %@", &v22, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  backend = [(HMMRTCSession *)selfCopy backend];
  [backend sendMessage:v8];

  v21 = *MEMORY[0x277D85DE8];
}

- (HMMRTCSession)initWithUUID:(id)d serviceName:(id)name commonFields:(id)fields backend:(id)backend
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  fieldsCopy = fields;
  backendCopy = backend;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543874;
    v24 = v17;
    v25 = 2112;
    v26 = dCopy;
    v27 = 2112;
    v28 = nameCopy;
    _os_log_impl(&dword_22B074000, v16, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Creating session with service name: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v22.receiver = selfCopy;
  v22.super_class = HMMRTCSession;
  v18 = [(HMMNullRTCSession *)&v22 initWithUUID:dCopy serviceName:nameCopy];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_commonFields, fields);
    objc_storeStrong(&v19->_backend, backend);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

@end