@interface HMDCameraProfileSettingsModel
+ (id)hmbProperties;
- (BOOL)accessModeChangeNotificationEnabled;
- (BOOL)accessModeIndicatorEnabled;
- (BOOL)activityZonesIncludedForSignificantEventDetection;
- (BOOL)hasAnyNotificationFieldsSet;
- (BOOL)nightVisionModeEnabled;
- (BOOL)periodicSnapshotsAllowed;
- (BOOL)reachabilityEventNotificationEnabled;
- (BOOL)recordingAudioEnabled;
- (BOOL)snapshotsAllowed;
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
  if (hmbProperties_onceToken_73761 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_73761, &__block_literal_global_73762);
  }

  v3 = hmbProperties__properties_73763;

  return v3;
}

void __46__HMDCameraProfileSettingsModel_hmbProperties__block_invoke()
{
  v34[15] = *MEMORY[0x277D85DE8];
  v33[0] = @"versionField";
  v29 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v34[0] = v29;
  v33[1] = @"accessModeAtHomeField";
  v28 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v34[1] = v28;
  v33[2] = @"accessModeNotAtHomeField";
  v27 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v34[2] = v27;
  v33[3] = @"recordingStorageDurationField";
  v26 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v34[3] = v26;
  v33[4] = @"recordingEventTriggersField";
  v25 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v34[4] = v25;
  v33[5] = @"accessModeIndicatorEnabledField";
  v24 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v34[5] = v24;
  v33[6] = @"nightVisionModeEnabledField";
  v23 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v34[6] = v23;
  v33[7] = @"snapshotsAllowedField";
  v22 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v34[7] = v22;
  v33[8] = @"periodicSnapshotsAllowedField";
  v21 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v34[8] = v21;
  v33[9] = @"recordingAudioEnabledField";
  v20 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v34[9] = v20;
  v33[10] = @"smartBulletinBoardNotificationDataField";
  v0 = MEMORY[0x277D170B8];
  v1 = objc_opt_class();
  v19 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v32 = v19;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  v17 = [v0 fieldWithClass:v1 options:v18];
  v34[10] = v17;
  v33[11] = @"accessModeChangeNotificationEnabledField";
  v2 = MEMORY[0x277D170B8];
  v3 = objc_opt_class();
  v4 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v31 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v6 = [v2 fieldWithClass:v3 options:v5];
  v34[11] = v6;
  v33[12] = @"reachabilityEventNotificationEnabledField";
  v7 = MEMORY[0x277D170B8];
  v8 = objc_opt_class();
  v9 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v30 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v11 = [v7 fieldWithClass:v8 options:v10];
  v34[12] = v11;
  v33[13] = @"activityZonesField";
  v12 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v34[13] = v12;
  v33[14] = @"activityZonesIncludedForSignificantEventDetectionField";
  v13 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v34[14] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:15];
  v15 = hmbProperties__properties_73763;
  hmbProperties__properties_73763 = v14;

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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to encode activity zones: %@", buf, 0x16u);
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
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode activity zones: %@", buf, 0x16u);
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
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode HMDBulletinBoardNotification: %@", buf, 0x16u);
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

- (BOOL)recordingAudioEnabled
{
  recordingAudioEnabledField = [(HMDCameraProfileSettingsModel *)self recordingAudioEnabledField];
  bOOLValue = [recordingAudioEnabledField BOOLValue];

  return bOOLValue;
}

- (BOOL)periodicSnapshotsAllowed
{
  periodicSnapshotsAllowedField = [(HMDCameraProfileSettingsModel *)self periodicSnapshotsAllowedField];
  bOOLValue = [periodicSnapshotsAllowedField BOOLValue];

  return bOOLValue;
}

- (BOOL)snapshotsAllowed
{
  snapshotsAllowedField = [(HMDCameraProfileSettingsModel *)self snapshotsAllowedField];
  bOOLValue = [snapshotsAllowedField BOOLValue];

  return bOOLValue;
}

- (BOOL)nightVisionModeEnabled
{
  nightVisionModeEnabledField = [(HMDCameraProfileSettingsModel *)self nightVisionModeEnabledField];
  bOOLValue = [nightVisionModeEnabledField BOOLValue];

  return bOOLValue;
}

- (BOOL)accessModeIndicatorEnabled
{
  accessModeIndicatorEnabledField = [(HMDCameraProfileSettingsModel *)self accessModeIndicatorEnabledField];
  bOOLValue = [accessModeIndicatorEnabledField BOOLValue];

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
  v4 = [&unk_286626F08 indexOfObject:v3];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraProfileSettingsModel accessModeNotAtHome](self, "accessModeNotAtHome")}];
  v6 = [&unk_286626F08 indexOfObject:v5];

  if (v4 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  v8 = [&unk_286626F08 objectAtIndex:v7];
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