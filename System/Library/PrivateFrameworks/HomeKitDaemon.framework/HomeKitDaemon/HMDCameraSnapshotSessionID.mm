@interface HMDCameraSnapshotSessionID
- (HMDCameraSnapshotSessionID)initWithAccessory:(id)a3 message:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMDCameraSnapshotSessionID

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDCameraSnapshotSessionID allocWithZone:a3];
  v5 = [(HMDCameraSessionID *)self sessionID];
  v6 = [(HMDCameraSessionID *)self hostProcessBundleIdentifier];
  v7 = [(HMDCameraSessionID *)self isSPIClient];
  v8 = [(HMDCameraSessionID *)self deviceSectionName];
  v9 = [(HMDCameraSessionID *)self description];
  v10 = [(HMDCameraSnapshotSessionID *)self snapshotReason];
  v11 = [(HMDCameraSnapshotSessionID *)self isSnapshotRequestForBulletin];
  v12 = [(HMDCameraSnapshotSessionID *)self snapshotCharacteristicEventUUID];
  v13 = [(HMDCameraSnapshotSessionID *)self streamingTier];
  LOBYTE(v16) = v11;
  v14 = [(HMDCameraSnapshotSessionID *)v4 initWithSessionID:v5 hostProcessBundleIdentifier:v6 isSPIClient:v7 deviceSectionName:v8 description:v9 snapshotReason:v10 snapshotRequestForBulletin:v16 snapshotCharacteristicEventUUID:v12 streamingTier:v13];

  return v14;
}

- (HMDCameraSnapshotSessionID)initWithAccessory:(id)a3 message:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = [v7 stringForKey:@"kCameraSessionID"];
  if (v9)
  {
    v33 = self;
    v32 = [v8 numberForKey:@"kCameraStreamingTierType"];
    v10 = [v8 stringForKey:@"kCameraProactiveSessionID"];
    v11 = MEMORY[0x277CCAB68];
    v34 = v6;
    v12 = [v6 name];
    v13 = [v11 stringWithFormat:@"%@/%@", v12, v9];

    if (v10)
    {
      [v13 appendFormat:@"/%@", v10];
    }

    v14 = [[HMDCameraSessionID alloc] initWithSessionID:v9 message:v8 description:v13];
    v31 = v13;
    v15 = [v8 BOOLForKey:*MEMORY[0x277CCF5B8]];
    v29 = [(HMDCameraSessionID *)v14 sessionID];
    v16 = [(HMDCameraSessionID *)v14 hostProcessBundleIdentifier];
    v30 = v10;
    v17 = [(HMDCameraSessionID *)v14 isSPIClient];
    v18 = [(HMDCameraSessionID *)v14 deviceSectionName];
    [(HMDCameraSessionID *)v14 description];
    v20 = v19 = v9;
    LOBYTE(v28) = v15;
    v21 = [(HMDCameraSnapshotSessionID *)v33 initWithSessionID:v29 hostProcessBundleIdentifier:v16 isSPIClient:v17 deviceSectionName:v18 description:v20 snapshotReason:(v10 != 0) | (v15 & 1) snapshotRequestForBulletin:v28 snapshotCharacteristicEventUUID:v10 streamingTier:v32];

    v9 = v19;
    v22 = v21;
    v6 = v34;
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v21 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v25;
      v37 = 2112;
      v38 = v8;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Snapshot session ID is not present in message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v22 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

@end