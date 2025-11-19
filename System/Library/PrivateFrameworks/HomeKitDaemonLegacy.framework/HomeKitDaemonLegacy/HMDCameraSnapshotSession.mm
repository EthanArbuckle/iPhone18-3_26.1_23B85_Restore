@interface HMDCameraSnapshotSession
+ (id)logCategory;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)dealloc;
- (void)respondWithPayload:(id)a3 error:(id)a4;
@end

@implementation HMDCameraSnapshotSession

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCameraSnapshotSession *)self sessionID];
  v5 = [v3 initWithName:@"ID" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)logIdentifier
{
  v2 = [(HMDCameraSnapshotSession *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (void)respondWithPayload:(id)a3 error:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v6 = a4;
  v7 = [(HMDCameraSnapshotSession *)self sessionMessages];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(HMDCameraSnapshotSession *)self sessionID];
    [v9 markMilestoneFor:@"SentSnapshotResponse"];

    v10 = [(HMDCameraSnapshotSession *)self snapshotMetrics];
    [v10 setError:v6];

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
          v17 = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v20 = v19 = self;
            v21 = [v15 shortDescription];
            *buf = 138544130;
            v32 = v20;
            v33 = 2112;
            v34 = v21;
            v35 = 2112;
            v36 = v26;
            v37 = 2112;
            v38 = v6;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Responding to %@ with payload: %@, error: %@", buf, 0x2Au);

            self = v19;
            v13 = v24;
          }

          objc_autoreleasePoolPop(v16);
          [v15 respondWithPayload:v26 error:v6];
        }

        v12 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v12);
    }

    v22 = [(HMDCameraSnapshotSession *)self sessionMessages];
    [v22 removeAllObjects];
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
  if (logCategory__hmf_once_t1_118492 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_118492, &__block_literal_global_118493);
  }

  v3 = logCategory__hmf_once_v2_118494;

  return v3;
}

uint64_t __39__HMDCameraSnapshotSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_118494;
  logCategory__hmf_once_v2_118494 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end