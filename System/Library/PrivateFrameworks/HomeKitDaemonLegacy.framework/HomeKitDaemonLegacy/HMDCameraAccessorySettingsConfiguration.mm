@interface HMDCameraAccessorySettingsConfiguration
- (HMDCameraAccessorySettingsConfiguration)initWithCameraAccessory:(id)a3;
@end

@implementation HMDCameraAccessorySettingsConfiguration

- (HMDCameraAccessorySettingsConfiguration)initWithCameraAccessory:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMDCameraAccessorySettingsConfiguration;
  v5 = [(HMDCameraAccessorySettingsConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [v4 cameraProfileSettingsManager];
    v7 = [v6 currentSettings];

    v5->_isRecordingCapable = [v4 isCameraRecordingFeatureSupported];
    v8 = [v4 cameraProfileSettingsManager];
    v5->_isRecordingEnabled = [v8 isRecordingEnabled];

    v5->_recordingEventTriggers = [v7 recordingEventTriggers];
    v9 = [v7 activityZones];
    v5->_numActivityZones = [v9 count];

    v5->_inclusionZone = [v7 areActivityZonesIncludedForSignificantEventDetection];
    v10 = [v7 notificationSettings];
    v5->_smartBulletinBoardNotificationEnabled = [v10 isSmartBulletinBoardNotificationEnabled];

    v11 = [v7 notificationSettings];
    v5->_reachabilityNotificationEnabled = [v11 isReachabilityEventNotificationEnabled];
  }

  return v5;
}

@end