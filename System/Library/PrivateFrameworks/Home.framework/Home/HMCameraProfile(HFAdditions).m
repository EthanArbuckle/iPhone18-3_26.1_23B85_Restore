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
  v4 = objc_getAssociatedObject(a1, a2);
  if (!v4)
  {
    v4 = [[HFCameraManager alloc] initWithCameraProfile:a1];
    objc_setAssociatedObject(a1, a2, v4, 1);
  }

  return v4;
}

- (BOOL)hf_supportsBidirectionalAudio
{
  v2 = [a1 speakerControl];
  if (v2)
  {
    v3 = [a1 microphoneControl];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)hf_supportsRecordingEvents
{
  v1 = [a1 userSettings];
  v2 = [v1 supportedFeatures];

  return (v2 >> 1) & 1;
}

- (uint64_t)hf_shouldDisableLiveStream
{
  if (+[HFUtilities isPressDemoModeEnabled])
  {
    return 1;
  }

  v4 = [a1 userSettings];
  v5 = [v4 currentAccessMode];

  v3 = 1;
  if (v5 && v5 != 3)
  {
    v1 = [a1 userSettings];
    v3 = [v1 isCameraManuallyDisabled];
  }

  if (v5 && v5 != 3)
  {
  }

  return v3;
}

- (unint64_t)hf_thermalShutdownMode
{
  v1 = [a1 accessory];
  v2 = [v1 services];
  v3 = [v2 na_firstObjectPassingTest:&__block_literal_global_84];

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
  v2 = [a1 userSettings];
  if ([v2 accessModeForPresenceType:3] == 2)
  {
    v3 = 0;
  }

  else
  {
    v4 = [a1 userSettings];
    v3 = [v4 accessModeForPresenceType:4] != 2;
  }

  return v3;
}

- (BOOL)hf_hasDoorbellService
{
  v1 = [a1 accessory];
  v2 = [v1 hf_serviceOfType:*MEMORY[0x277CD0E38]];
  v3 = v2 != 0;

  return v3;
}

- (uint64_t)hf_supportsReachabilityNotifications
{
  result = [a1 hf_supportsRecordingEvents];
  if (result)
  {
    v3 = [a1 accessory];
    v4 = [v3 home];
    v5 = [v4 hf_supportsReachabilityNotifications];

    return v5;
  }

  return result;
}

- (id)hf_doorbellNotificationBulletin
{
  v1 = [a1 accessory];
  v2 = [v1 hf_serviceOfType:*MEMORY[0x277CD0E38]];
  v3 = [v2 bulletinBoardNotification];

  return v3;
}

- (id)hf_doorbellChimeMuteCharacteristic
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  v1 = [a1 accessory];
  v2 = [v1 services];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__HMCameraProfile_HFAdditions__hf_doorbellChimeMuteCharacteristic__block_invoke;
  v5[3] = &unk_277DF9E30;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)hf_updateDoorbellChime:()HFAdditions
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [a1 accessory];
  v6 = [v5 home];

  v7 = [a1 hf_doorbellChimeMuteCharacteristic];
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
    v20 = v7;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Attempt to update doorbell chime - should mute = %{BOOL}d for characteristic:%@", v18, 0x12u);
  }

  if (v7)
  {
    v11 = [v6 hf_characteristicValueManager];
    v12 = objc_opt_new();
    [v11 beginTransactionWithReason:@"HFDoorbellMute-Toggle" readPolicy:v12 logger:0];

    v13 = objc_alloc_init(HFCharacteristicValueSet);
    [(HFCharacteristicValueSet *)v13 setValue:v9 forCharacteristic:v7];
    v14 = [v6 hf_characteristicValueManager];
    v15 = [v14 writeValuesForCharacteristics:v13];

    v16 = [v6 hf_characteristicValueManager];
    [v16 commitTransactionWithReason:@"HFDoorbellMute-Toggle"];
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

        v12 = [*(*(&v21 + 1) + 8 * i) userSettings];
        v13 = [v12 accessModeForPresenceType:a4];

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
  objc_initWeak(&location, a1);
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
  v14[4] = a1;
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