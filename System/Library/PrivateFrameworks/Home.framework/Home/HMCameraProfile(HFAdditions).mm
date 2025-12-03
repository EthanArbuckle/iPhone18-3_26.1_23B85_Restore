@interface HMCameraProfile(HFAdditions)
+ (uint64_t)hf_cameraAccessModeSelectedOptionForCameraProfiles:()HFAdditions presenceType:;
- (BOOL)hf_cameraIsNotSetToRecord;
- (BOOL)hf_hasDoorbellService;
- (BOOL)hf_supportsBidirectionalAudio;
- (HFCameraManager)hf_cameraManager;
- (id)hf_doorbellChimeMuteCharacteristic;
- (id)hf_doorbellNotificationBulletin;
- (id)hf_faceCropImageForSignificantEvent:()HFAdditions;
- (id)hf_significantEventWithIdentifier:()HFAdditions;
- (uint64_t)hf_shouldDisableLiveStream;
- (uint64_t)hf_supportsReachabilityNotifications;
- (uint64_t)hf_supportsRecordingEvents;
- (unint64_t)hf_thermalShutdownMode;
- (void)hf_updateDoorbellChime:()HFAdditions;
@end

@implementation HMCameraProfile(HFAdditions)

- (HFCameraManager)hf_cameraManager
{
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v4 = [[HFCameraManager alloc] initWithCameraProfile:self];
    objc_setAssociatedObject(self, a2, v4, 1);
  }

  return v4;
}

- (BOOL)hf_supportsBidirectionalAudio
{
  speakerControl = [self speakerControl];
  if (speakerControl)
  {
    microphoneControl = [self microphoneControl];
    v4 = microphoneControl != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)hf_supportsRecordingEvents
{
  userSettings = [self userSettings];
  supportedFeatures = [userSettings supportedFeatures];

  return (supportedFeatures >> 1) & 1;
}

- (uint64_t)hf_shouldDisableLiveStream
{
  if (+[HFUtilities isPressDemoModeEnabled])
  {
    return 1;
  }

  userSettings = [self userSettings];
  currentAccessMode = [userSettings currentAccessMode];

  isCameraManuallyDisabled = 1;
  if (currentAccessMode && currentAccessMode != 3)
  {
    userSettings2 = [self userSettings];
    isCameraManuallyDisabled = [userSettings2 isCameraManuallyDisabled];
  }

  if (currentAccessMode && currentAccessMode != 3)
  {
  }

  return isCameraManuallyDisabled;
}

- (unint64_t)hf_thermalShutdownMode
{
  accessory = [self accessory];
  services = [accessory services];
  v3 = [services na_firstObjectPassingTest:&__block_literal_global_84];

  if (([v3 lastKnownOperatingStateAbnormalReasons] & 2) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = ([v3 lastKnownOperatingStateAbnormalReasons] >> 2) & 1;
  }

  return v4;
}

- (BOOL)hf_cameraIsNotSetToRecord
{
  userSettings = [self userSettings];
  if ([userSettings accessModeForPresenceType:3] == 2)
  {
    v3 = 0;
  }

  else
  {
    userSettings2 = [self userSettings];
    v3 = [userSettings2 accessModeForPresenceType:4] != 2;
  }

  return v3;
}

- (BOOL)hf_hasDoorbellService
{
  accessory = [self accessory];
  v2 = [accessory hf_serviceOfType:*MEMORY[0x277CD0E38]];
  v3 = v2 != 0;

  return v3;
}

- (uint64_t)hf_supportsReachabilityNotifications
{
  result = [self hf_supportsRecordingEvents];
  if (result)
  {
    accessory = [self accessory];
    home = [accessory home];
    hf_supportsReachabilityNotifications = [home hf_supportsReachabilityNotifications];

    return hf_supportsReachabilityNotifications;
  }

  return result;
}

- (id)hf_doorbellNotificationBulletin
{
  accessory = [self accessory];
  v2 = [accessory hf_serviceOfType:*MEMORY[0x277CD0E38]];
  bulletinBoardNotification = [v2 bulletinBoardNotification];

  return bulletinBoardNotification;
}

- (id)hf_doorbellChimeMuteCharacteristic
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  accessory = [self accessory];
  services = [accessory services];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__HMCameraProfile_HFAdditions__hf_doorbellChimeMuteCharacteristic__block_invoke;
  v5[3] = &unk_277DF9E30;
  v5[4] = &v6;
  [services enumerateObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)hf_updateDoorbellChime:()HFAdditions
{
  v21 = *MEMORY[0x277D85DE8];
  accessory = [self accessory];
  home = [accessory home];

  hf_doorbellChimeMuteCharacteristic = [self hf_doorbellChimeMuteCharacteristic];
  v8 = MEMORY[0x277CBEC38];
  if (a3)
  {
    v8 = MEMORY[0x277CBEC28];
  }

  v9 = v8;
  v10 = HFLogForCategory(0xEuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18[0] = 67109378;
    v18[1] = [v9 BOOLValue];
    v19 = 2112;
    v20 = hf_doorbellChimeMuteCharacteristic;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Attempt to update doorbell chime - should mute = %{BOOL}d for characteristic:%@", v18, 0x12u);
  }

  if (hf_doorbellChimeMuteCharacteristic)
  {
    hf_characteristicValueManager = [home hf_characteristicValueManager];
    v12 = objc_opt_new();
    [hf_characteristicValueManager beginTransactionWithReason:@"HFDoorbellMute-Toggle" readPolicy:v12 logger:0];

    v13 = objc_alloc_init(HFCharacteristicValueSet);
    [(HFCharacteristicValueSet *)v13 setValue:v9 forCharacteristic:hf_doorbellChimeMuteCharacteristic];
    hf_characteristicValueManager2 = [home hf_characteristicValueManager];
    v15 = [hf_characteristicValueManager2 writeValuesForCharacteristics:v13];

    hf_characteristicValueManager3 = [home hf_characteristicValueManager];
    [hf_characteristicValueManager3 commitTransactionWithReason:@"HFDoorbellMute-Toggle"];
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (uint64_t)hf_cameraAccessModeSelectedOptionForCameraProfiles:()HFAdditions presenceType:
{
  v26[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26[0] = @"HFCameraStreamingOptionOff";
  v26[1] = @"HFCameraStreamingOptionDetectActivity";
  v26[2] = @"HFCameraStreamingOptionStream";
  v26[3] = @"HFCameraStreamingOptionStreamAndRecord";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        userSettings = [*(*(&v21 + 1) + 8 * i) userSettings];
        v13 = [userSettings accessModeForPresenceType:a4];

        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __96__HMCameraProfile_HFAdditions__hf_cameraAccessModeSelectedOptionForCameraProfiles_presenceType___block_invoke;
        v20[3] = &__block_descriptor_40_e18_B16__0__NSString_8l;
        v20[4] = v13;
        v14 = [v6 na_firstObjectPassingTest:v20];
        if ([v6 indexOfObject:v14] > v9)
        {
          v9 = [v6 indexOfObject:v14];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v15 = [v6 objectAtIndex:v9];
  v16 = cameraStreamingOptionFromString(v15);

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)hf_significantEventWithIdentifier:()HFAdditions
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HMCameraProfile_HFAdditions__hf_significantEventWithIdentifier___block_invoke;
  v9[3] = &unk_277DF8428;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v10 = v6;
  v7 = [v5 futureWithBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

- (id)hf_faceCropImageForSignificantEvent:()HFAdditions
{
  v4 = a3;
  v5 = MEMORY[0x277D2C900];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__HMCameraProfile_HFAdditions__hf_faceCropImageForSignificantEvent___block_invoke;
  v14[3] = &unk_277DF61F0;
  v14[4] = self;
  v6 = v4;
  v15 = v6;
  v7 = [v5 futureWithCompletionHandlerAdapterBlock:v14];
  v8 = [v7 flatMap:&__block_literal_global_53_0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__HMCameraProfile_HFAdditions__hf_faceCropImageForSignificantEvent___block_invoke_3;
  v12[3] = &unk_277DF2D08;
  v13 = v6;
  v9 = v6;
  v10 = [v8 addFailureBlock:v12];

  return v10;
}

@end