@interface HMDCloudLegacyZoneChange
- (BOOL)controllerIdentifierChanged;
- (BOOL)decryptionFailed;
@end

@implementation HMDCloudLegacyZoneChange

- (BOOL)controllerIdentifierChanged
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudZoneChange *)self cloudZone];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [(HMDCloudZoneChange *)self rootGroupChange];
    v7 = [v5 homeDataObjectID];
    v8 = [v6 changeWithObjectID:v7];

    if (v8 && ([v8 isDeleted] & 1) == 0 && (objc_msgSend(v8, "cloudRecord"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "controllerIdentifierChanged"), v9, (v10 & 1) != 0))
    {
      v11 = 1;
    }

    else
    {
      v12 = [(HMDCloudZoneChange *)self rootGroupChange];
      v13 = [v5 homeDataV3ObjectID];
      v14 = [v12 changeWithObjectID:v13];

      if (v8 && ([v14 isDeleted] & 1) == 0)
      {
        v19 = [v14 cloudRecord];
        v11 = [v19 controllerIdentifierChanged];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine cloud zone", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v11 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)decryptionFailed
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudZoneChange *)self cloudZone];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [(HMDCloudZoneChange *)self rootGroupChange];
    v7 = [v5 homeDataObjectID];
    v8 = [v6 changeWithObjectID:v7];

    v9 = [(HMDCloudZoneChange *)self rootGroupChange];
    v10 = [v5 homeDataV3ObjectID];
    v11 = [v9 changeWithObjectID:v10];

    if (v8)
    {
      if (([v8 isDeleted] & 1) == 0)
      {
        v12 = [v8 cloudRecord];
        v13 = [v12 decryptionFailed];

        if (v13)
        {
          if (!v11)
          {
            v14 = 1;
LABEL_16:

            goto LABEL_17;
          }

          goto LABEL_14;
        }
      }
    }

    else if (v11)
    {
LABEL_14:
      if (([v11 isDeleted] & 1) == 0)
      {
        v21 = [v11 cloudRecord];
        v14 = [v21 decryptionFailed];

        goto LABEL_16;
      }
    }

    v14 = 0;
    goto LABEL_16;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v18;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine cloud zone", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  v14 = 0;
LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

@end