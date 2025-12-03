@interface HMDCameraAccessorySettingsConfiguration
- (HMDCameraAccessorySettingsConfiguration)initWithCameraAccessory:(id)accessory;
@end

@implementation HMDCameraAccessorySettingsConfiguration

- (HMDCameraAccessorySettingsConfiguration)initWithCameraAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v13.receiver = self;
  v13.super_class = HMDCameraAccessorySettingsConfiguration;
  v5 = [(HMDCameraAccessorySettingsConfiguration *)&v13 init];
  if (v5)
  {
    cameraProfileSettingsManager = [accessoryCopy cameraProfileSettingsManager];
    currentSettings = [cameraProfileSettingsManager currentSettings];

    v5->_isRecordingCapable = [accessoryCopy isCameraRecordingFeatureSupported];
    cameraProfileSettingsManager2 = [accessoryCopy cameraProfileSettingsManager];
    v5->_isRecordingEnabled = [cameraProfileSettingsManager2 isRecordingEnabled];

    v5->_recordingEventTriggers = [currentSettings recordingEventTriggers];
    activityZones = [currentSettings activityZones];
    v5->_numActivityZones = [activityZones count];

    v5->_inclusionZone = [currentSettings areActivityZonesIncludedForSignificantEventDetection];
    notificationSettings = [currentSettings notificationSettings];
    v5->_smartBulletinBoardNotificationEnabled = [notificationSettings isSmartBulletinBoardNotificationEnabled];

    notificationSettings2 = [currentSettings notificationSettings];
    v5->_reachabilityNotificationEnabled = [notificationSettings2 isReachabilityEventNotificationEnabled];
  }

  return v5;
}

@end