@interface HMDCloudLegacyZoneChange
- (BOOL)controllerIdentifierChanged;
- (BOOL)decryptionFailed;
@end

@implementation HMDCloudLegacyZoneChange

- (BOOL)controllerIdentifierChanged
{
  v24 = *MEMORY[0x277D85DE8];
  cloudZone = [(HMDCloudZoneChange *)self cloudZone];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = cloudZone;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
    homeDataObjectID = [v5 homeDataObjectID];
    v8 = [rootGroupChange changeWithObjectID:homeDataObjectID];

    if (v8 && ([v8 isDeleted] & 1) == 0 && (objc_msgSend(v8, "cloudRecord"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "controllerIdentifierChanged"), v9, (v10 & 1) != 0))
    {
      controllerIdentifierChanged = 1;
    }

    else
    {
      rootGroupChange2 = [(HMDCloudZoneChange *)self rootGroupChange];
      homeDataV3ObjectID = [v5 homeDataV3ObjectID];
      v14 = [rootGroupChange2 changeWithObjectID:homeDataV3ObjectID];

      if (v8 && ([v14 isDeleted] & 1) == 0)
      {
        cloudRecord = [v14 cloudRecord];
        controllerIdentifierChanged = [cloudRecord controllerIdentifierChanged];
      }

      else
      {
        controllerIdentifierChanged = 0;
      }
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine cloud zone", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    controllerIdentifierChanged = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return controllerIdentifierChanged;
}

- (BOOL)decryptionFailed
{
  v24 = *MEMORY[0x277D85DE8];
  cloudZone = [(HMDCloudZoneChange *)self cloudZone];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = cloudZone;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    rootGroupChange = [(HMDCloudZoneChange *)self rootGroupChange];
    homeDataObjectID = [v5 homeDataObjectID];
    v8 = [rootGroupChange changeWithObjectID:homeDataObjectID];

    rootGroupChange2 = [(HMDCloudZoneChange *)self rootGroupChange];
    homeDataV3ObjectID = [v5 homeDataV3ObjectID];
    v11 = [rootGroupChange2 changeWithObjectID:homeDataV3ObjectID];

    if (v8)
    {
      if (([v8 isDeleted] & 1) == 0)
      {
        cloudRecord = [v8 cloudRecord];
        decryptionFailed = [cloudRecord decryptionFailed];

        if (decryptionFailed)
        {
          if (!v11)
          {
            decryptionFailed2 = 1;
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
        cloudRecord2 = [v11 cloudRecord];
        decryptionFailed2 = [cloudRecord2 decryptionFailed];

        goto LABEL_16;
      }
    }

    decryptionFailed2 = 0;
    goto LABEL_16;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v18;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine cloud zone", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  decryptionFailed2 = 0;
LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
  return decryptionFailed2;
}

@end