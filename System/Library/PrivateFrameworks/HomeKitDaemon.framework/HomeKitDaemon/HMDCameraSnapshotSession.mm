@interface HMDCameraSnapshotSession
+ (id)logCategory;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)dealloc;
- (void)respondWithPayload:(id)payload error:(id)error;
@end

@implementation HMDCameraSnapshotSession

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  sessionID = [(HMDCameraSnapshotSession *)self sessionID];
  v5 = [v3 initWithName:@"ID" value:sessionID];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraSnapshotSession *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (void)respondWithPayload:(id)payload error:(id)error
{
  v40 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  errorCopy = error;
  sessionMessages = [(HMDCameraSnapshotSession *)self sessionMessages];
  v8 = [sessionMessages count];

  if (v8)
  {
    sessionID = [(HMDCameraSnapshotSession *)self sessionID];
    [sessionID markMilestoneFor:@"SentSnapshotResponse"];

    snapshotMetrics = [(HMDCameraSnapshotSession *)self snapshotMetrics];
    [snapshotMetrics setError:errorCopy];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(HMDCameraSnapshotSession *)self sessionMessages];
    v11 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      v24 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          selfCopy = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v20 = v19 = self;
            shortDescription = [v15 shortDescription];
            *buf = 138544130;
            v32 = v20;
            v33 = 2112;
            v34 = shortDescription;
            v35 = 2112;
            v36 = payloadCopy;
            v37 = 2112;
            v38 = errorCopy;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Responding to %@ with payload: %@, error: %@", buf, 0x2Au);

            self = v19;
            v13 = v24;
          }

          objc_autoreleasePoolPop(v16);
          [v15 respondWithPayload:payloadCopy error:errorCopy];
        }

        v12 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v12);
    }

    sessionMessages2 = [(HMDCameraSnapshotSession *)self sessionMessages];
    [sessionMessages2 removeAllObjects];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1039];
  [(HMDCameraSnapshotSession *)self respondWithPayload:0 error:v3];

  v4.receiver = self;
  v4.super_class = HMDCameraSnapshotSession;
  [(HMDCameraSnapshotSession *)&v4 dealloc];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_178059 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_178059, &__block_literal_global_178060);
  }

  v3 = logCategory__hmf_once_v2_178061;

  return v3;
}

void __39__HMDCameraSnapshotSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_178061;
  logCategory__hmf_once_v2_178061 = v1;
}

@end