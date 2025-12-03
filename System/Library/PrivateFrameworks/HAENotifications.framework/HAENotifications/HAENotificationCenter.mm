@interface HAENotificationCenter
+ (BOOL)connectedWiredDeviceIsHeadphone;
+ (BOOL)connectedWiredDeviceIsHeadphoneWithUUID:(id)d;
+ (void)startNotificationCenterServer;
- (HAENotificationCenter)initWithBundleIdentifier:(id)identifier;
- (HAENotificationCenterUserDelegate)delegate;
- (id)addHAENotificationEvent:(id)event error:(id *)error;
- (void)addHAENotificationEvent:(id)event completion:(id)completion;
- (void)setDelegate:(id)delegate;
@end

@implementation HAENotificationCenter

- (HAENotificationCenter)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = HAENotificationCenter;
  v6 = [(HAENotificationCenter *)&v14 init];
  if (v6)
  {
    if (+[HAENDefaults HAENSupportedForCurrentDeviceClass])
    {
      objc_storeStrong(&v6->bundleID, identifier);
      v7 = +[HAENDefaults sharedInstance];
      [v7 getLiveMonitoringThreshold];
      v6->liveThresholdInDBA = v8;

      v9 = +[HAENDefaults sharedInstance];
      [v9 getLiveMonitorTimeWindowInSeconds];
      v6->liveMonitorWindowInSec = v10;

      if (+[HAENDefaults isCurrentProcessMediaserverd])
      {
        v11 = +[HAENotificationCenterServer sharedInstance];
      }

      else
      {
        v11 = [[HAENotificationCenterClient alloc] initWithBundleID:identifierCopy];
      }

      centerDelegate = v6->centerDelegate;
      v6->centerDelegate = v11;
    }

    else
    {
      centerDelegate = v6;
      v6 = 0;
    }
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  v9 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = HAENotificationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = delegateCopy;
    _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "setDelegate %@", &v7, 0xCu);
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addHAENotificationEvent:(id)event completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  completionCopy = completion;
  v8 = +[HAENDefaults sharedInstance];
  isHAENFeatureEnabled = [v8 isHAENFeatureEnabled];

  if (isHAENFeatureEnabled)
  {
    [(HAENotificationCenterDelegate *)self->centerDelegate addHAENotificationEvent:eventCopy];
    if ([eventCopy eventType] == 2003133803)
    {
      v10 = HAENotificationsLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v20 = 138412290;
        v21 = WeakRetained;
        _os_log_impl(&dword_25081E000, v10, OS_LOG_TYPE_DEFAULT, "sending weekly event to healthkit with delegate %@", &v20, 0xCu);
      }

      v12 = +[HAENHealthKitStore sharedInstance];
      v13 = objc_loadWeakRetained(&self->_delegate);
      v14 = [v12 saveNotificationEventToHealthKit:eventCopy withDelegate:v13];

      goto LABEL_16;
    }

    if ([eventCopy eventType] == 1818850917)
    {
      v19 = HAENotificationsLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_25081E000, v19, OS_LOG_TYPE_DEFAULT, "sending loud event to healthkit", &v20, 2u);
      }

      v12 = +[HAENHealthKitStore sharedInstance];
      v14 = [v12 saveNotificationEventToHealthKit:eventCopy];
LABEL_16:

      if (!completionCopy)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v16 = *"pyt!";
    v17 = @"event type not supported";
  }

  else
  {
    v15 = HAENotificationsLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_25081E000, v15, OS_LOG_TYPE_DEFAULT, "error sending HAEN event: HAEN is disabled", &v20, 2u);
    }

    v16 = *"bne!";
    v17 = @"HAEN is disabled";
  }

  v14 = NSErrorWithHAENErrorCode(v16, v17);
  if (completionCopy)
  {
LABEL_10:
    completionCopy[2](completionCopy, v14);
  }

LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)addHAENotificationEvent:(id)event error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v7 = +[HAENDefaults sharedInstance];
  isHAENFeatureEnabled = [v7 isHAENFeatureEnabled];

  if ((isHAENFeatureEnabled & 1) == 0)
  {
    v12 = HAENotificationsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_25081E000, v12, OS_LOG_TYPE_DEFAULT, "error sending HAEN event: HAEN is disabled", &v17, 2u);
    }

    if (!error)
    {
      goto LABEL_16;
    }

    v13 = *"bne!";
    v14 = @"HAEN is disabled";
    goto LABEL_15;
  }

  [(HAENotificationCenterDelegate *)self->centerDelegate addHAENotificationEvent:eventCopy];
  if ([eventCopy eventType] != 2003133803)
  {
    if (!error)
    {
      goto LABEL_16;
    }

    v13 = *"pyt!";
    v14 = @"event type not supported";
LABEL_15:
    NSErrorWithHAENErrorCode(v13, v14);
    *error = v10 = 0;
    goto LABEL_17;
  }

  v9 = [HAENHealthKitStore createHKCategorySampleForEvent:eventCopy];
  if (!v9)
  {
    if (error)
    {
      v13 = *"skh!";
      v14 = @"failed to create hk sample";
      goto LABEL_15;
    }

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v10 = v9;
  v11 = HAENotificationsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v10;
    _os_log_impl(&dword_25081E000, v11, OS_LOG_TYPE_DEFAULT, "created weekly event HKSample %@", &v17, 0xCu);
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (void)startNotificationCenterServer
{
  if (+[HAENDefaults isCurrentProcessMediaserverd](HAENDefaults, "isCurrentProcessMediaserverd") && +[HAENDefaults HAENSupportedForCurrentDeviceClass])
  {
    v2 = HAENotificationsLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25081E000, v2, OS_LOG_TYPE_DEFAULT, "<< Starting HAE Notification Center Server >>", v9, 2u);
    }

    v3 = +[HAENotificationCenterServer sharedInstance];
    v4 = +[HAENotificationCenterManager sharedInstance];
    v5 = +[HAENDefaults sharedInstance];
    v6 = +[HAENLocationGatingHelper sharedInstance];
    v7 = +[HAENVolumeControl sharedInstance];
    v8 = +[HAENStatistics sharedInstance];
  }
}

+ (BOOL)connectedWiredDeviceIsHeadphone
{
  v2 = +[HAENUnknownDeviceManager sharedInstance];
  getDeviceName = [v2 getDeviceName];
  v4 = [HAENotificationCenter connectedWiredDeviceIsHeadphoneWithUUID:getDeviceName];

  return v4;
}

+ (BOOL)connectedWiredDeviceIsHeadphoneWithUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = +[HAENUnknownDeviceManager sharedInstance];
  if ([v4 unknownWiredHeadsetConnectedThroughB204])
  {
    isUSBCPort = [v4 isUSBCPort];
    v6 = +[HAENDefaults sharedInstance];
    v7 = v6;
    if (isUSBCPort)
    {
      isCurrentAudioAccessoryHeadphone = [v6 isCurrentAudioAccessoryHeadphoneWithKey:dCopy];
    }

    else
    {
      isCurrentAudioAccessoryHeadphone = [v6 isCurrentAudioAccessoryHeadphone];
    }

    v9 = isCurrentAudioAccessoryHeadphone;
  }

  else
  {
    v9 = 1;
  }

  v10 = HAENotificationsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    v14 = 138412546;
    v15 = dCopy;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_25081E000, v10, OS_LOG_TYPE_DEFAULT, "wired device [%@] is headphone: %@", &v14, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HAENotificationCenterUserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end