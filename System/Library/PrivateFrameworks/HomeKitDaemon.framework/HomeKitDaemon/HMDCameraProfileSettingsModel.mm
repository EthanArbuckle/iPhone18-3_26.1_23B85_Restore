@interface HMDCameraProfileSettingsModel
+ (id)hmbProperties;
- (BOOL)accessModeChangeNotificationEnabled;
- (BOOL)activityZonesIncludedForSignificantEventDetection;
- (BOOL)hasAnyNotificationFieldsSet;
- (BOOL)reachabilityEventNotificationEnabled;
- (HMDBulletinBoardNotification)smartBulletinBoardNotification;
- (NSSet)activityZones;
- (int64_t)version;
- (unint64_t)accessModeAtHome;
- (unint64_t)accessModeNotAtHome;
- (unint64_t)mostPrivateAccessMode;
- (unint64_t)recordingEventTriggers;
- (void)setAccessModeAtHome:(unint64_t)home;
- (void)setAccessModeNotAtHome:(unint64_t)home;
- (void)setActivityZones:(id)zones;
- (void)setRecordingEventTriggers:(unint64_t)triggers;
- (void)setVersion:(int64_t)version;
@end

@implementation HMDCameraProfileSettingsModel

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_112312 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_112312, &__block_literal_global_112313);
  }

  v3 = hmbProperties__properties_112314;

  return v3;
}

void __46__HMDCameraProfileSettingsModel_hmbProperties__block_invoke()
{
  v29[10] = *MEMORY[0x277D85DE8];
  v28[0] = @"versionField";
  v24 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v29[0] = v24;
  v28[1] = @"accessModeAtHomeField";
  v23 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v29[1] = v23;
  v28[2] = @"accessModeNotAtHomeField";
  v22 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v29[2] = v22;
  v28[3] = @"recordingStorageDurationField";
  v21 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v29[3] = v21;
  v28[4] = @"recordingEventTriggersField";
  v20 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v29[4] = v20;
  v28[5] = @"smartBulletinBoardNotificationDataField";
  v0 = MEMORY[0x277D170B8];
  v1 = objc_opt_class();
  v19 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v27 = v19;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v17 = [v0 fieldWithClass:v1 options:v18];
  v29[5] = v17;
  v28[6] = @"accessModeChangeNotificationEnabledField";
  v2 = MEMORY[0x277D170B8];
  v3 = objc_opt_class();
  v4 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v26 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v6 = [v2 fieldWithClass:v3 options:v5];
  v29[6] = v6;
  v28[7] = @"reachabilityEventNotificationEnabledField";
  v7 = MEMORY[0x277D170B8];
  v8 = objc_opt_class();
  v9 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v25 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v11 = [v7 fieldWithClass:v8 options:v10];
  v29[7] = v11;
  v28[8] = @"activityZonesField";
  v12 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v29[8] = v12;
  v28[9] = @"activityZonesIncludedForSignificantEventDetectionField";
  v13 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v29[9] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
  v15 = hmbProperties__properties_112314;
  hmbProperties__properties_112314 = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)activityZonesIncludedForSignificantEventDetection
{
  activityZonesIncludedForSignificantEventDetectionField = [(HMDCameraProfileSettingsModel *)self activityZonesIncludedForSignificantEventDetectionField];
  bOOLValue = [activityZonesIncludedForSignificantEventDetectionField BOOLValue];

  return bOOLValue;
}

- (void)setActivityZones:(id)zones
{
  v17 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  v12 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:zonesCopy requiringSecureCoding:1 error:&v12];
  v6 = v12;
  if (v5)
  {
    [(HMDCameraProfileSettingsModel *)self setActivityZonesField:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to encode activity zones: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSSet)activityZones
{
  v24[2] = *MEMORY[0x277D85DE8];
  activityZonesField = [(HMDCameraProfileSettingsModel *)self activityZonesField];

  if (activityZonesField)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v7 = [v5 setWithArray:v6];
    activityZonesField2 = [(HMDCameraProfileSettingsModel *)self activityZonesField];
    v19 = 0;
    v9 = [v4 unarchivedObjectOfClasses:v7 fromData:activityZonesField2 error:&v19];
    v10 = v19;

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v21 = v16;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode activity zones: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v11 = [MEMORY[0x277CBEB98] set];
    }

    v12 = v11;
  }

  else
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HMDBulletinBoardNotification)smartBulletinBoardNotification
{
  v20 = *MEMORY[0x277D85DE8];
  smartBulletinBoardNotificationDataField = [(HMDCameraProfileSettingsModel *)self smartBulletinBoardNotificationDataField];

  if (smartBulletinBoardNotificationDataField)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = objc_opt_class();
    smartBulletinBoardNotificationDataField2 = [(HMDCameraProfileSettingsModel *)self smartBulletinBoardNotificationDataField];
    v15 = 0;
    smartBulletinBoardNotificationDataField = [v4 unarchivedObjectOfClass:v5 fromData:smartBulletinBoardNotificationDataField2 error:&v15];
    v7 = v15;

    if (smartBulletinBoardNotificationDataField)
    {
      v8 = smartBulletinBoardNotificationDataField;
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v17 = v12;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode HMDBulletinBoardNotification: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return smartBulletinBoardNotificationDataField;
}

- (BOOL)reachabilityEventNotificationEnabled
{
  reachabilityEventNotificationEnabledField = [(HMDCameraProfileSettingsModel *)self reachabilityEventNotificationEnabledField];
  bOOLValue = [reachabilityEventNotificationEnabledField BOOLValue];

  return bOOLValue;
}

- (BOOL)accessModeChangeNotificationEnabled
{
  accessModeChangeNotificationEnabledField = [(HMDCameraProfileSettingsModel *)self accessModeChangeNotificationEnabledField];
  bOOLValue = [accessModeChangeNotificationEnabledField BOOLValue];

  return bOOLValue;
}

- (void)setRecordingEventTriggers:(unint64_t)triggers
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:triggers];
  [(HMDCameraProfileSettingsModel *)self setRecordingEventTriggersField:v4];
}

- (unint64_t)recordingEventTriggers
{
  recordingEventTriggersField = [(HMDCameraProfileSettingsModel *)self recordingEventTriggersField];
  unsignedIntegerValue = [recordingEventTriggersField unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setAccessModeNotAtHome:(unint64_t)home
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:home];
  [(HMDCameraProfileSettingsModel *)self setAccessModeNotAtHomeField:v4];
}

- (unint64_t)accessModeNotAtHome
{
  accessModeNotAtHomeField = [(HMDCameraProfileSettingsModel *)self accessModeNotAtHomeField];
  unsignedIntegerValue = [accessModeNotAtHomeField unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setAccessModeAtHome:(unint64_t)home
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:home];
  [(HMDCameraProfileSettingsModel *)self setAccessModeAtHomeField:v4];
}

- (unint64_t)accessModeAtHome
{
  accessModeAtHomeField = [(HMDCameraProfileSettingsModel *)self accessModeAtHomeField];
  unsignedIntegerValue = [accessModeAtHomeField unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setVersion:(int64_t)version
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:version];
  [(HMDCameraProfileSettingsModel *)self setVersionField:v4];
}

- (int64_t)version
{
  versionField = [(HMDCameraProfileSettingsModel *)self versionField];
  integerValue = [versionField integerValue];

  return integerValue;
}

- (unint64_t)mostPrivateAccessMode
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraProfileSettingsModel accessModeAtHome](self, "accessModeAtHome")}];
  v4 = [&unk_283E758C0 indexOfObject:v3];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraProfileSettingsModel accessModeNotAtHome](self, "accessModeNotAtHome")}];
  v6 = [&unk_283E758C0 indexOfObject:v5];

  if (v4 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  v8 = [&unk_283E758C0 objectAtIndex:v7];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)hasAnyNotificationFieldsSet
{
  reachabilityEventNotificationEnabledField = [(HMDCameraProfileSettingsModel *)self reachabilityEventNotificationEnabledField];
  if (reachabilityEventNotificationEnabledField)
  {
    v4 = 1;
  }

  else
  {
    accessModeChangeNotificationEnabledField = [(HMDCameraProfileSettingsModel *)self accessModeChangeNotificationEnabledField];
    if (accessModeChangeNotificationEnabledField)
    {
      v4 = 1;
    }

    else
    {
      smartBulletinBoardNotificationDataField = [(HMDCameraProfileSettingsModel *)self smartBulletinBoardNotificationDataField];
      v4 = smartBulletinBoardNotificationDataField != 0;
    }
  }

  return v4;
}

@end