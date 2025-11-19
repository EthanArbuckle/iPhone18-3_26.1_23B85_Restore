CFPropertyListRef CMSMNP_CopyNowPlayingAppWasPlayingUponCarPlayDisconnectFromDisk()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyValue(@"nowPlayingAppWasPlayingUponCarPlayDisconnect", @"com.apple.mediaexperience", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void CMSMNP_WriteNowPlayingAppWasPlayingUponCarPlayDisconnectToDisk(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = MEMORY[0x1E695E4D0];
  if (!a1)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  MXCFPreferencesSetAndSynchronizeUserPreference(@"nowPlayingAppWasPlayingUponCarPlayDisconnect", *v3);
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t CMSMNP_SaveCarPlayNowPlayingState()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppDisplayID];
  if ([+[MXSessionManager starkMainAudioIsOwnedByiOSButBorrowedByCar] sharedInstance]
  {
    IsInterrupted = CMSMNP_GetNowPlayingAppIsInterrupted();
  }

  else
  {
    IsInterrupted = CMSMNP_GetNowPlayingAppIsPlaying();
  }

  v2 = IsInterrupted;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMNP_WriteNowPlayingAppWasPlayingUponCarPlayDisconnectToDisk(v2);
  if (v2)
  {
    CMSMNP_WriteNowPlayingAppDisplayIDUponCarPlayDisconnectToDisk(v0);
  }

  result = [+[MXSessionManager setShouldResumeNowPlayingAppOnDelayedCarPlayPortPublication:v6], "setShouldResumeNowPlayingAppOnDelayedCarPlayPortPublication:", 0];
  byte_1EB75E1D9 = 1;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSMNP_WriteNowPlayingAppDisplayIDUponCarPlayDisconnectToDisk(const void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  MXCFPreferencesSetAndSynchronizeUserPreference(@"nowPlayingAppDisplayIDUponCarPlayDisconnect", a1);
  v3 = *MEMORY[0x1E69E9840];
}

CFPropertyListRef CMSMNP_CopyNowPlayingAppDisplayIDUponCarPlayDisconnectFromDisk()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyValue(@"nowPlayingAppDisplayIDUponCarPlayDisconnect", @"com.apple.mediaexperience", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void CMSMNP_ResumeNowPlayingAppOverCarPlay(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v2 = MXGetNotificationSenderQueue();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CMSMNP_ResumeNowPlayingAppOverCarPlay_block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = cf;
  MXDispatchAsync("CMSMNP_ResumeNowPlayingAppOverCarPlay", "CMSessionManager_NowPlaying.m", 476, 0, 0, v2, v3);
}

uint64_t CMSMNP_IsNowPlayingAppPlayingToPort(int a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = CMSMNP_CopyNowPlayingAppSession();
  if (!v2 || (v3 = v2, ([v2 isSharePlayMediaSession] & 1) != 0))
  {
    v4 = 0;
    goto LABEL_25;
  }

  theArray = 0;
  FigRoutingManagerCopyPickedRouteDescriptorsForRoutingContext([v3 routingContextUUID], &theArray);
  if (!theArray)
  {
    Count = 0;
    goto LABEL_13;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  v4 = 0;
  for (i = 0; i != Count; ++i)
  {
    v14 = 0;
    CFArrayGetValueAtIndex(theArray, i);
    FigCFDictionaryGetInt32IfPresent();
    if (v14 == a1)
    {
      v4 = 1;
    }
  }

  if (v4)
  {
    goto LABEL_22;
  }

  v7 = 1;
LABEL_14:
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v7)
  {
    v9 = 0;
    do
    {
      CFArrayGetValueAtIndex(theArray, v9);
      FigCFDictionaryGetInt32IfPresent();
      if (dword_1EB75DE40)
      {
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      ++v9;
    }

    while (Count != v9);
  }

  v4 = 0;
LABEL_22:
  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

LABEL_25:
  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t CMSMDeviceState_Initialize(NSObject *a1)
{
  state64[16] = *MEMORY[0x1E69E9840];
  CFPreferenceBooleanWithDefault = FigGetCFPreferenceBooleanWithDefault();
  if (dword_1EB75DE40)
  {
    LODWORD(valuePtr) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  gDeviceState = CFPreferenceBooleanWithDefault;
  v4 = MGCopyAnswer();
  v5 = FigCFEqual();
  if (v4)
  {
    CFRelease(v4);
  }

  byte_1EB75D326 = v5 != 0;
  v6 = MGCopyAnswer();
  if (v6)
  {
    v7 = v6;
    byte_1EB75D329 = CFBooleanGetValue(v6);
    CFRelease(v7);
  }

  else
  {
    byte_1EB75D329 = 0;
  }

  byte_1EB75D327 = FigDebugIsInternalBuild();
  qword_1EB75D3C0 = FigReentrantMutexCreate();
  v8 = dlopen("/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag", 4);
  sMKBLockStatusHandle = v8;
  if (v8 && (sMKBGetLockStatus = dlsym(v8, "MKBGetDeviceLockState")) != 0)
  {
    if (a1)
    {
LABEL_11:
      v9 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &dword_1EB75D32C, a1, &__block_literal_global_109) == 0;
      goto LABEL_14;
    }
  }

  else
  {
    LODWORD(valuePtr) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (a1)
    {
      goto LABEL_11;
    }
  }

  v9 = 0;
LABEL_14:
  byte_1EB75D330 = v9;
  if (sMKBGetLockStatus)
  {
    v11 = sMKBGetLockStatus(0) != 0;
  }

  else
  {
    v11 = 0;
  }

  FigSimpleMutexLock();
  byte_1EB75D32A = v11;
  FigSimpleMutexUnlock();
  if (a1)
  {
    v12 = notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &dword_1EB75D344, a1, &__block_literal_global_112_0) == 0;
  }

  else
  {
    v12 = 0;
  }

  byte_1EB75D348 = v12;
  state64[0] = 0;
  if (notify_get_state(dword_1EB75D344, state64))
  {
    v13 = 1;
  }

  else
  {
    v13 = state64[0] == 0;
  }

  v14 = !v13;
  byte_1EB75D340 = v14;
  if (a1)
  {
    v15 = notify_register_dispatch("com.apple.backboard.proximity.changed", &dword_1EB75D35C, a1, &__block_literal_global_115) == 0;
  }

  else
  {
    v15 = 0;
  }

  byte_1EB75D360 = v15;
  state64[0] = 0;
  if (notify_get_state(dword_1EB75D35C, state64))
  {
    v16 = 1;
  }

  else
  {
    v16 = state64[0] == 0;
  }

  v17 = !v16;
  byte_1EB75D358 = v17;
  if (a1)
  {
    notify_register_dispatch("com.apple.springboard.ringerstate", &dword_1EB75D364, a1, &__block_literal_global_117);
  }

  if (cmsmdevicestate_RegisterForRingerIsOnNotification_onceToken != -1)
  {
    CMSMDeviceState_Initialize_cold_1();
  }

  if (!MX_FeatureFlags_IsMXSilentModeEnabled())
  {
    cmsmdevicestate_UpdateRingerIsOn();
    v19 = +[MXSessionManager sharedInstance];
    v20 = byte_1EB75D361 == 0;
LABEL_53:
    [(MXSessionManager *)v19 setSilentModeEnabled:v20, v55, v56];
    goto LABEL_54;
  }

  if (byte_1EB75D323 || byte_1EB75D325 || byte_1EB75D326)
  {
    v19 = [MXSessionManager sharedInstance:v55];
    v20 = 0;
    goto LABEL_53;
  }

  if (CMSMDeviceState_DeviceHasHardwareRingerSwitch_once != -1)
  {
    CMSMDeviceState_Initialize_cold_2();
  }

  if (CMSMDeviceState_DeviceHasHardwareRingerSwitch_hasPhysicalSwitch)
  {
    if (BackBoardServicesLibrary_sOnce_0 != -1)
    {
      CMSMDeviceState_Initialize_cold_3();
    }

    if (BackBoardServicesLibrary_sLib_0 && dlsym(BackBoardServicesLibrary_sLib_0, "BKSHIDServicesGetRingerState"))
    {
      v18 = MXGetSerialQueue();
      MXDispatchAsync("CMSMDeviceState_Initialize", "CMSessionManager_DeviceState.m", 355, 0, 0, v18, &__block_literal_global_74);
    }

    else
    {
      LODWORD(valuePtr) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

LABEL_54:
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, &byte_1EB75D36C, cmsmdevicestate_VibrateOnRingChangedNotificationCallback, @"com.apple.springboard.ring-vibrate.changed", 0, 0);
  cmsmdevicestate_UpdateVibrateOnRing();
  v22 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v22, &byte_1EB75D36D, cmsmdevicestate_VibrateOnSilentChangedNotificationCallback, @"com.apple.springboard.silent-vibrate.changed", 0, 0);
  cmsmdevicestate_UpdateVibrateOnSilent();
  CelestialGetModelSpecificName();
  v23 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (v23)
  {
    v24 = v23;
    Value = CFDictionaryGetValue(v23, @"ChangesRingerVolume");
    if (Value && (v26 = Value, v27 = CFGetTypeID(Value), v27 == CFBooleanGetTypeID()))
    {
      v28 = CFBooleanGetValue(v26);
    }

    else
    {
      v28 = 1;
    }

    byte_1EB75D36E = v28;
    CFRelease(v24);
  }

  else
  {
    byte_1EB75D36E = 1;
  }

  v29 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v29, &byte_1EB75D36E, cmsmdevicestate_ButtonsCanChangeRingerVolumeChangedNotificationCallback, @"com.apple.preferences.sounds.buttons-can-change-ringer-volume.changed", 0, 0);
  cmsmdevicestate_UpdateButtonsCanChangeRingerVolume();
  v30 = *MEMORY[0x1E695E8B8];
  v31 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(@"com.apple.Accessibility", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  byte_1EB75D36F = FigGetCFPreferenceNumberWithDefault() != 0;
  v32 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v32, &byte_1EB75D36F, cmsmdevicestate_VibrationDisabledPreferenceChangedNotificationCallback, @"VibrationDisabledPreferenceDidChange", 0, 0);
  state64[0] = MEMORY[0x1E69E9820];
  state64[1] = 3221225472;
  state64[2] = __cmsmdevicestate_RegisterForDeviceIsChargingNotification_block_invoke;
  state64[3] = &unk_1E7AE7CE0;
  state64[4] = a1;
  if (cmsmdevicestate_RegisterForDeviceIsChargingNotification_onceToken != -1)
  {
    dispatch_once(&cmsmdevicestate_RegisterForDeviceIsChargingNotification_onceToken, state64);
  }

  v33 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v33, &byte_1EB75D380, cmsmdevicestate_VoiceOverIsOnChangeCallback, @"com.apple.accessibility.voiceovertouch.status", 0, 0);
  cmsmdevicestate_UpdateVoiceOverIsOn();
  if (byte_1EB75D325 | byte_1EB75D323)
  {
    v34 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v34, &qword_1EB75D398, cmsmdevicestate_AirPlayPrefsChangedCallback, @"com.apple.airplay.prefsChanged", 0, 0);
    v35 = CFPreferencesCopyValue(@"tightSyncUUID", @"com.apple.airplay", v30, v31);
    cmsmdevicestate_UpdateTightSyncUUID(v35);
    CFPreferencesSynchronize(@"com.apple.airplay", v30, v31);
    byte_1EB75D390 = FigGetCFPreferenceNumberWithDefault() == 0;
    valuePtr = 0;
    v36 = CFPreferencesCopyValue(@"persistentGroupSize", @"com.apple.airplay", v30, v31);
    if (v36)
    {
      v37 = v36;
      v38 = CFGetTypeID(v36);
      if (v38 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v37, kCFNumberCFIndexType, &valuePtr);
        v39 = valuePtr;
      }

      else
      {
        v39 = 2 * (v35 != 0);
        valuePtr = v39;
      }

      qword_1EB75D3A0 = v39;
      CFRelease(v37);
    }

    else
    {
      valuePtr = 2 * (v35 != 0);
      qword_1EB75D3A0 = valuePtr;
    }

    if (dword_1EB75DE40)
    {
      *type = 0;
      v58 = OS_LOG_TYPE_DEFAULT;
      v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v41 = *type;
      if (os_log_type_enabled(v40, v58))
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 & 0xFFFFFFFE;
      }

      if (v42)
      {
        if (byte_1EB75D390)
        {
          v43 = "True";
        }

        else
        {
          v43 = "False";
        }

        v60 = 136315906;
        v61 = "cmsmdevicestate_RegisterForAirPlayPrefsChangedNotification";
        v62 = 2114;
        v63 = qword_1EB75D398;
        v64 = 2082;
        v65 = v43;
        v66 = 1026;
        v67 = valuePtr;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v35)
    {
      CFRelease(v35);
    }
  }

  result = MX_FeatureFlags_IsSeparatePlayerProcessEnabled();
  if (result)
  {
    LODWORD(valuePtr) = 0;
    v46 = *MEMORY[0x1E69E98C0];
    global_queue = dispatch_get_global_queue(2, 0);
    result = notify_register_dispatch(v46, &valuePtr, global_queue, &__block_literal_global_177);
    if (result)
    {
      *type = 0;
      v58 = OS_LOG_TYPE_DEFAULT;
      v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v49 = *type;
      if (os_log_type_enabled(v48, v58))
      {
        v50 = v49;
      }

      else
      {
        v50 = v49 & 0xFFFFFFFE;
      }

      if (!v50)
      {
        goto LABEL_96;
      }

      goto LABEL_95;
    }

    if (dword_1EB75DE40)
    {
      *type = 0;
      v58 = OS_LOG_TYPE_DEFAULT;
      v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v52 = *type;
      if (os_log_type_enabled(v51, v58))
      {
        v53 = v52;
      }

      else
      {
        v53 = v52 & 0xFFFFFFFE;
      }

      if (!v53)
      {
        goto LABEL_96;
      }

LABEL_95:
      v60 = 136315138;
      v61 = "cmsmdevicestate_RegisterForDeviceThermalLevelNotification";
      _os_log_send_and_compose_impl();
LABEL_96:
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v54 = *MEMORY[0x1E69E9840];
  return result;
}

void cmsmdevicestate_UpdateRingerIsOn()
{
  if (byte_1EB75D323)
  {
    v2 = 0;
  }

  else
  {
    v2 = byte_1EB75D325 == 0;
  }

  if (v2 && byte_1EB75D326 == 0)
  {
    state64[1] = v0;
    state64[2] = v1;
    state64[0] = 0;
    if (!notify_get_state(dword_1EB75D364, state64))
    {
      byte_1EB75D361 = state64[0] != 0;
    }
  }

  else
  {
    byte_1EB75D361 = 1;
  }
}

uint64_t CMSMDeviceState_DeviceHasHardwareRingerSwitch()
{
  if (CMSMDeviceState_DeviceHasHardwareRingerSwitch_once != -1)
  {
    CMSMDeviceState_DeviceHasHardwareRingerSwitch_cold_1();
  }

  return CMSMDeviceState_DeviceHasHardwareRingerSwitch_hasPhysicalSwitch;
}

void CMSMDeviceState_UpdateDeviceClass()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer();
  if (FigCFEqual())
  {
    byte_1EB75D322 = 1;
  }

  else if (FigCFEqual())
  {
    byte_1EB75D321 = 1;
  }

  else if (FigCFEqual())
  {
    byte_1EB75D323 = 1;
  }

  else if (FigCFEqual())
  {
    byte_1EB75D324 = 1;
  }

  else if (FigCFEqual())
  {
    byte_1EB75D325 = 1;
  }

  if (MGGetProductType() == 4231109337)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    byte_1EB75D328 = 1;
  }

  if (MGGetProductType() == 1908832379)
  {
    if (dword_1EB75DE40)
    {
      v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    byte_1EB75D328 = 1;
  }

  if (v0)
  {
    CFRelease(v0);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void CMSMDeviceState_AddQueueToWatchDogMonitoring(uint64_t a1)
{
  if (CMSMDeviceState_IsAudiomxd_onceToken != -1)
  {
    CMSMDeviceState_AddQueueToWatchDogMonitoring_cold_1();
  }

  if (CMSMDeviceState_IsAudiomxd_sIsAudiomxd)
  {

    MEMORY[0x1EEE508D8](a1);
  }
}

uint64_t CMSMDeviceState_SupportsBeacon()
{
  if (CMSMDeviceState_SupportsBeacon_once != -1)
  {
    CMSMDeviceState_SupportsBeacon_cold_1();
  }

  return CMSMDeviceState_SupportsBeacon_supportsBeaconMode;
}

CFTypeRef CMSMDeviceState_CopyHardwareSafetySession()
{
  if (CMSMDeviceState_CopyHardwareSafetySession_onceToken != -1)
  {
    CMSMDeviceState_CopyHardwareSafetySession_cold_1();
  }

  result = qword_1EB75D3C8;
  if (qword_1EB75D3C8)
  {

    return CFRetain(result);
  }

  return result;
}

void CMSMDeviceState_InterruptAllActiveSessionsAndSystemSounds()
{
  CMSystemSoundMgr_DeactivateAllSystemSounds();
  v0 = CMSMDeviceState_CopyHardwareSafetySession();
  if (v0)
  {
    v1 = v0;
    MXCoreSessionBeginInterruption_WithSecTaskAndFlags(v0[2], 0, 0, 1);

    CFRelease(v1);
  }
}

uint64_t CMSMDeviceState_DeactivateHardwareSafetySession(const __CFString *a1)
{
  v2 = CMSMDeviceState_CopyHardwareSafetySession();
  if (!v2)
  {
    return 4294954315;
  }

  v3 = v2;
  v4 = MXCoreSessionEndInterruption_WithSecTaskAndStatus(v2[2], 0, a1, 1);
  CFRelease(v3);
  return v4;
}

uint64_t CMSMDeviceState_SupportsMediaMultitasking()
{
  if (CMSMDeviceState_SupportsMediaMultitasking_onceToken != -1)
  {
    CMSMDeviceState_SupportsMediaMultitasking_cold_1();
  }

  return CMSMDeviceState_SupportsMediaMultitasking_supportsMediaMultitasking;
}

void CMSMDeviceState_UpdateSmartCoverState(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  byte_1EB75D331 = a1;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
  if (a1)
  {
    v3 = MXGetSerialQueue();
    qword_1EB75D338 = MXDispatchUtilityCreateOneShotTimer(2.0, "CMSMDeviceState_UpdateSmartCoverState", "CMSessionManager_DeviceState.m", 1160, 0, 0, v3, &__block_literal_global_56, 0, 0);
  }

  else if (qword_1EB75D338)
  {
    MXDispatchUtilityCancelTimer(&qword_1EB75D338);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t CMSMDeviceState_UpdateRingerStateForSilentMode(int a1)
{
  byte_1EB75D361 = a1 == 0;
  v1 = +[MXSessionManager sharedInstance];
  v2 = byte_1EB75D361 != 0;

  return [(MXSessionManager *)v1 ringerIsOnChanged:v2];
}

uint64_t CMSMDeviceState_PostRingerStateDarwinNotification(int a1)
{
  v1 = a1 == 0;
  notify_set_state(dword_1EB75D364, a1 != 0);
  notify_post("com.apple.springboard.ringerstate");
  notify_set_state(dword_1EB75D368, v1);

  return notify_post("com.apple.mediaexperience.silentmode");
}

uint64_t cmsmdevicestate_UpdateVibrateOnRing()
{
  v3 = *MEMORY[0x1E69E9840];
  CFPreferencesSynchronize(@"com.apple.springboard", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  result = FigGetCFPreferenceNumberWithDefault();
  byte_1EB75D36C = result != 0;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cmsmdevicestate_UpdateVibrateOnSilent()
{
  v3 = *MEMORY[0x1E69E9840];
  CFPreferencesSynchronize(@"com.apple.springboard", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  result = FigGetCFPreferenceNumberWithDefault();
  byte_1EB75D36D = result != 0;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void *CMSMDeviceState_RegisterForTightSyncUUIDChangeNotification(void *result)
{
  if (byte_1EB75D325)
  {
    off_1EB75D3A8 = result;
  }

  return result;
}

uint64_t CMSMDeviceState_HasMonoSpeakerConfiguration()
{
  if (CMSMDeviceState_HasMonoSpeakerConfiguration_onceToken != -1)
  {
    CMSMDeviceState_HasMonoSpeakerConfiguration_cold_1();
  }

  return CMSMDeviceState_HasMonoSpeakerConfiguration_hasMonoSpeakerConfiguration;
}

void *__BackBoardServicesLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/BackBoardServices.framework/BackBoardServices", 2);
  BackBoardServicesLibrary_sLib_0 = result;
  return result;
}

uint64_t initBKSHIDServicesGetRingerState()
{
  if (BackBoardServicesLibrary_sOnce_0 != -1)
  {
    initBKSHIDServicesGetRingerState_cold_1();
  }

  v0 = dlsym(BackBoardServicesLibrary_sLib_0, "BKSHIDServicesGetRingerState");
  softLinkBKSHIDServicesGetRingerState[0] = v0;

  return v0();
}

uint64_t cmsmdevicestate_VibrationDisabledPreferenceChangedNotificationCallback()
{
  CFPreferencesSynchronize(@"com.apple.Accessibility", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  result = FigGetCFPreferenceNumberWithDefault();
  byte_1EB75D36F = result != 0;
  return result;
}

uint64_t cmsmdevicestate_UpdateVoiceOverIsOn()
{
  v0 = byte_1EB75D380;
  CFPreferencesSynchronize(@"com.apple.Accessibility", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  result = FigGetCFPreferenceNumberWithDefault();
  byte_1EB75D380 = result != 0;
  v2 = off_1EB75D388;
  if (off_1EB75D388)
  {

    return v2(v0);
  }

  return result;
}

void cmsmdevicestate_AirPlayPrefsChangedCallback()
{
  valuePtr[21] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E8B8];
  v1 = *MEMORY[0x1E695E898];
  v2 = CFPreferencesCopyValue(@"tightSyncUUID", @"com.apple.airplay", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (!FigCFEqual())
  {
    cmsmdevicestate_UpdateTightSyncUUID(v2);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (off_1EB75D3A8)
    {
      off_1EB75D3A8(qword_1EB75D398);
    }
  }

  CFPreferencesSynchronize(@"com.apple.airplay", v0, v1);
  v4 = FigGetCFPreferenceNumberWithDefault() == 0;
  if (byte_1EB75D390 != v4)
  {
    byte_1EB75D390 = v4;
    if (dword_1EB75DE40)
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (off_1EB75D3B0)
    {
      off_1EB75D3B0(byte_1EB75D390 == 0, v4);
    }
  }

  valuePtr[0] = 0;
  v6 = CFPreferencesCopyValue(@"persistentGroupSize", @"com.apple.airplay", v0, v1);
  v7 = v6;
  if (v6 && (v8 = CFGetTypeID(v6), v8 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v7, kCFNumberCFIndexType, valuePtr);
    v9 = valuePtr[0];
  }

  else
  {
    v9 = 2 * (v2 != 0);
    valuePtr[0] = v9;
  }

  v10 = qword_1EB75D3A0;
  if (v9 != qword_1EB75D3A0)
  {
    qword_1EB75D3A0 = v9;
    if (dword_1EB75DE40)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (off_1EB75D3B8)
    {
      off_1EB75D3B8(v10, valuePtr[0]);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void cmsmdevicestate_UpdateTightSyncUUID(const void *a1)
{
  v1 = qword_1EB75D398;
  qword_1EB75D398 = a1;
  if (a1)
  {
    CFRetain(a1);
  }

  if (v1)
  {

    CFRelease(v1);
  }
}

__CFString *cmsmdevicestate_GetThermalPressureLevelAsString(int a1)
{
  if (a1 > 29)
  {
    if (a1 == 30)
    {
      return @"Heavy";
    }

    if (a1 != 40)
    {
      if (a1 == 50)
      {
        return @"Sleeping";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%ld)", a1];
    }

    return @"Trapping";
  }

  else
  {
    if (!a1)
    {
      return @"Nominal";
    }

    if (a1 != 10)
    {
      if (a1 == 20)
      {
        return @"Moderate";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%ld)", a1];
    }

    return @"Light";
  }
}

uint64_t cmsmdevicestate_UpdateButtonsCanChangeRingerVolume()
{
  v3 = *MEMORY[0x1E69E9840];
  CFPreferencesSynchronize(@"com.apple.preferences.sounds", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  result = FigGetCFPreferenceNumberWithDefault();
  byte_1EB75D36E = result != 0;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PowerManager_InitializeCPMSForAudio()
{
  v36 = *MEMORY[0x1E69E9840];
  if (sCMSMPowerManagerForAudio_1)
  {
    v0 = 0;
    goto LABEL_47;
  }

  sCMSMPowerManagerForAudio_2 = [MEMORY[0x1E6991F30] sharedCPMSAgent];
  if (sCMSMPowerManagerForAudio_2)
  {
    sCMSMPowerManagerForAudio_5 = vaemCopyCPMSPowerBudgetRangeInMilliWatts(5);
    if (!sCMSMPowerManagerForAudio_5)
    {
      v0 = 4294954513;
      goto LABEL_41;
    }

    *v28 = 0;
    v1 = sCMSMPowerManagerForAudio_2;
    v2 = objc_alloc_init(MEMORY[0x1E6991F38]);
    [v2 setClientId:5];
    [v2 setPowerLevels:sCMSMPowerManagerForAudio_5];
    [v2 setIsContinuous:1];
    [v2 setNotificationCallback:&__block_literal_global_5_2];
    [v2 setGetCurrentPower:&__block_literal_global_75];
    [v2 setPowerBudgetUpdateMinimumPeriod:10];
    v3 = sCMSMPowerManagerForAudio_1;
    if ((sCMSMPowerManagerForAudio_1 & 1) == 0)
    {
      if (![v1 registerClientWithDescription:v2 error:v28])
      {
        v0 = 4294954513;
        goto LABEL_33;
      }

      sCMSMPowerManagerForAudio_1 = 1;
    }

    v31 = 0;
    v4 = sCMSMPowerManagerForAudio_2;
    PowerBudgetRequestDict = PowerManager_CreatePowerBudgetRequestDict(sCMSMPowerManagerForAudio_5, 1);
    if (PowerBudgetRequestDict)
    {
      v6 = PowerBudgetRequestDict;
      v7 = [v4 copyPowerBudgetForRequest:PowerBudgetRequestDict forClient:5 error:&v31];
      if (v7)
      {
        v8 = v7;
        if (sCMSMPowerManagerForAudio_6)
        {
          CFRelease(sCMSMPowerManagerForAudio_6);
        }

        sCMSMPowerManagerForAudio_6 = v8;
        if (dword_1EB75DE40)
        {
          *v30 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v10 = *v30;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v11 = v10;
          }

          else
          {
            v11 = v10 & 0xFFFFFFFE;
          }

          if (v11)
          {
            v32 = 136315394;
            v33 = "powerManager_RequestPowerBudgetFromCPMSForAudioResource";
            v34 = 2114;
            v35 = sCMSMPowerManagerForAudio_6;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CFRelease(v6);
        v0 = PowerManager_SetPowerBudgetOnVAAndSendAcknowledgementToCPMSForResource(5, sCMSMPowerManagerForAudio_2, sCMSMPowerManagerForAudio_6);
        if ((v3 & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_33;
      }

      *v30 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v13 = *v30;
      if (os_log_type_enabled(v12, type))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = [v31 description];
        v32 = 136315394;
        v33 = "powerManager_RequestPowerBudgetFromCPMSForAudioResource";
        v34 = 2114;
        v35 = v15;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      CFRelease(v6);
    }

    LODWORD(v31) = 0;
    v30[0] = OS_LOG_TYPE_DEFAULT;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v17 = v31;
    if (os_log_type_enabled(v16, v30[0]))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v32 = 136315138;
      v33 = "powerManager_RequestInitialBudgetFromCPMSForAudioResource";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v0 = 4294954510;
    if (!v3)
    {
LABEL_39:

      if (sCMSMPowerManagerForAudio_6)
      {
        if (!v0)
        {
          goto LABEL_47;
        }

        goto LABEL_41;
      }

      goto LABEL_48;
    }

LABEL_33:
    LODWORD(v31) = 0;
    v30[0] = OS_LOG_TYPE_DEFAULT;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v20 = v31;
    if (os_log_type_enabled(v19, v30[0]))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFE;
    }

    if (v21)
    {
      v22 = [*v28 description];
      v32 = 136315394;
      v33 = "powerManager_RequestInitialBudgetFromCPMSForAudioResource";
      v34 = 2114;
      v35 = v22;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_39;
  }

LABEL_48:
  v0 = 4294954510;
LABEL_41:
  LODWORD(v31) = 0;
  v28[0] = OS_LOG_TYPE_DEFAULT;
  v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v24 = v31;
  if (os_log_type_enabled(v23, v28[0]))
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 & 0xFFFFFFFE;
  }

  if (v25)
  {
    v32 = 136315394;
    v33 = "PowerManager_InitializeCPMSForAudio";
    v34 = 1024;
    LODWORD(v35) = v0;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_47:
  v26 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1B1947A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CMSystemSoundMgr_Initialize()
{
  v472 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695E480];
  if (!gSystemSoundRingerSettings)
  {
    CelestialGetModelSpecificName();
    v1 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v1)
    {
      v2 = v1;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v2))
      {
        Count = CFDictionaryGetCount(v2);
        v5 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
        v64 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
        values = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
        CFDictionaryGetKeysAndValues(v2, v5, v64);
        v6 = *v0;
        if (Count >= 1)
        {
          v7 = v5;
          v9 = v64;
          v8 = values;
          v10 = Count;
          do
          {
            context = xmmword_1B19D91A0;
            v67 = unk_1B19D91B0;
            v11 = CFStringGetTypeID();
            if (v11 != CFGetTypeID(*v7))
            {
              break;
            }

            v12 = CFDictionaryGetTypeID();
            if (v12 != CFGetTypeID(*v9))
            {
              break;
            }

            *&context = *v7;
            CFDictionaryApplyFunction(*v9, cmsmWordyToCompact, &context);
            if (!BYTE8(v67))
            {
              break;
            }

            *v8++ = CFDataCreate(v6, &context + 8, 8);
            ++v9;
            ++v7;
            --v10;
          }

          while (v10);
        }

        v13 = CFDictionaryCreate(v6, v5, values, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        free(v5);
        free(v64);
        if (values)
        {
          if (Count >= 1)
          {
            v14 = values;
            do
            {
              if (*v14)
              {
                CFRelease(*v14);
              }

              ++v14;
              --Count;
            }

            while (Count);
          }

          free(values);
        }

        v0 = MEMORY[0x1E695E480];
      }

      else
      {
        v13 = 0;
      }

      gSystemSoundRingerSettings = v13;
      CFRelease(v2);
    }
  }

  if (!gSystemSoundAudioBehaviors)
  {
    CelestialGetModelSpecificName();
    v15 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v15)
    {
      v16 = v15;
      v17 = CFDictionaryGetTypeID();
      if (v17 == CFGetTypeID(v16))
      {
        v18 = CFRetain(v16);
      }

      else
      {
        v18 = 0;
      }

      gSystemSoundAudioBehaviors = v18;
      CFRelease(v16);
    }
  }

  if (!gRegionalSystemSoundsThatShareBehaviour)
  {
    CelestialGetModelSpecificName();
    v19 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v19)
    {
      v20 = v19;
      v21 = CFDictionaryGetTypeID();
      if (v21 == CFGetTypeID(v20) && (v22 = MGCopyAnswer()) != 0 && (v23 = v22, v24 = CFBooleanGetValue(v22), CFRelease(v23), v24))
      {
        gCMSS_3 = MGGetBoolAnswer();
        if ((gCMSS_3 & 1) == 0 && dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v27 = MGCopyAnswer();
        if (dword_1EB75DE40)
        {
          v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        Value = CFDictionaryGetValue(v20, v27);
        v26 = Value;
        if (Value)
        {
          CFRetain(Value);
        }

        if (v27)
        {
          CFRelease(v27);
        }
      }

      else
      {
        v26 = 0;
      }

      gRegionalSystemSoundsThatShareBehaviour = v26;
      CFRelease(v20);
    }
  }

  if (!gSystemSoundVibrationPatterns)
  {
    CelestialGetModelSpecificName();
    v30 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v30)
    {
      v31 = v30;
      v32 = CFDictionaryGetTypeID();
      if (v32 == CFGetTypeID(v31))
      {
        v33 = CFRetain(v31);
      }

      else
      {
        v33 = 0;
      }

      gSystemSoundVibrationPatterns = v33;
      CFRelease(v31);
    }
  }

  if (!gSystemSoundRoutingForCategories)
  {
    CelestialGetModelSpecificName();
    v34 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v34)
    {
      v35 = v34;
      v36 = CFDictionaryGetTypeID();
      if (v36 == CFGetTypeID(v35))
      {
        v37 = CFRetain(v35);
      }

      else
      {
        v37 = 0;
      }

      gSystemSoundRoutingForCategories = v37;
      CFRelease(v35);
    }
  }

  if (!gSystemSoundLowersMusicVolume)
  {
    CelestialGetModelSpecificName();
    v38 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v38)
    {
      v39 = v38;
      v40 = CFDictionaryGetTypeID();
      if (v40 == CFGetTypeID(v39))
      {
        v41 = CFRetain(v39);
      }

      else
      {
        v41 = 0;
      }

      gSystemSoundLowersMusicVolume = v41;
      CFRelease(v39);
    }
  }

  if (!gSystemSoundMaxVolume)
  {
    CelestialGetModelSpecificName();
    v42 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v42)
    {
      v43 = v42;
      v44 = CFDictionaryGetTypeID();
      if (v44 == CFGetTypeID(v43))
      {
        v45 = CFRetain(v43);
      }

      else
      {
        v45 = 0;
      }

      gSystemSoundMaxVolume = v45;
      CFRelease(v43);
    }
  }

  if (!gSystemSoundMaxVibrationIntensity)
  {
    CelestialGetModelSpecificName();
    v46 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v46)
    {
      v47 = v46;
      v48 = CFDictionaryGetTypeID();
      if (v48 == CFGetTypeID(v47))
      {
        v49 = CFRetain(v47);
      }

      else
      {
        v49 = 0;
      }

      gSystemSoundMaxVibrationIntensity = v49;
      CFRelease(v47);
    }
  }

  if (!gSystemSoundsWithNoVolumeAdjustment || !gSystemSoundsDoNotObeyAccessibilityVibrationSetting)
  {
    CelestialGetModelSpecificName();
    v50 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v50)
    {
      v51 = v50;
      v52 = CFDictionaryGetTypeID();
      if (v52 == CFGetTypeID(v51))
      {
        v53 = CFDictionaryGetValue(v51, @"NoVolumeAdjustment");
        if (v53)
        {
          v53 = CFRetain(v53);
        }
      }

      else
      {
        v53 = 0;
      }

      gSystemSoundsWithNoVolumeAdjustment = v53;
      v54 = CFDictionaryGetTypeID();
      if (v54 == CFGetTypeID(v51))
      {
        v55 = CFDictionaryGetValue(v51, @"DoNotObeyAccessibilityVibrationSetting");
        if (v55)
        {
          v55 = CFRetain(v55);
        }
      }

      else
      {
        v55 = 0;
      }

      gSystemSoundsDoNotObeyAccessibilityVibrationSetting = v55;
      CFRelease(v51);
    }
  }

  if (!gSystemSoundMinVolume)
  {
    CelestialGetModelSpecificName();
    v56 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v56)
    {
      gSystemSoundMinVolume = v56;
    }
  }

  memset(&keyCallBacks, 0, sizeof(keyCallBacks));
  *&context = 0x1F2895470;
  *(&context + 1) = 0x1F2895470;
  *&v67 = 0x1F2895470;
  *(&v67 + 1) = 0x1F2895470;
  v68 = 0x1F2895470;
  v69 = 0x1F2895470;
  v70 = 0x1F2895230;
  v71 = 0x1F2895470;
  v72 = 0x1F2895470;
  v73 = 0x1F2895470;
  v74 = 0x1F2894F90;
  v75 = 0x1F2894F90;
  v76 = @"SystemSoundPreview";
  v77 = @"MailReceived";
  v78 = @"MailSent";
  v79 = @"VoicemailReceived";
  v80 = @"SMSReceived";
  v81 = @"SMSSent";
  v82 = @"CalendarAlert";
  v83 = @"LowPower";
  v84 = @"SMSReceived_Alert";
  v85 = @"SMSReceived_Alert";
  v86 = @"SMSReceived_Alert";
  v87 = @"SMSReceived_Alert";
  v88 = @"SMSReceived_Alert";
  v89 = @"SMSReceived_Vibrate";
  v90 = @"SMSReceived_Alert";
  v91 = @"SMSReceived_Alert";
  v92 = @"MailSent";
  v93 = @"ReminderAlert";
  v94 = @"MailSent";
  v95 = @"SMSReceived_Alert";
  v96 = @"SMSReceived_Alert";
  v97 = @"SMSReceived_Alert";
  v98 = @"SMSReceived_Alert";
  v99 = @"SMSReceived_Alert";
  v100 = @"SMSReceived_Alert";
  v101 = @"SMSReceived_Alert";
  v102 = @"SMSReceived_Alert";
  v103 = @"SMSReceived_Alert";
  v104 = @"SMSReceived_Alert";
  v105 = @"SMSReceived_Alert";
  v106 = @"SMSReceived_Alert";
  v107 = @"SMSReceived_Alert";
  v108 = @"SMSReceived_Alert";
  v109 = @"SMSReceived_Alert";
  v110 = @"SMSReceived_Alert";
  v111 = @"SMSReceived_Alert";
  v112 = @"USSDAlert";
  v113 = @"SIMToolkitTone";
  v114 = @"SIMToolkitTone";
  v115 = @"SIMToolkitTone";
  v116 = @"SIMToolkitTone";
  v117 = @"SIMToolkitTone";
  v118 = @"PINKeyPressed";
  v119 = @"ScreenLocked";
  v120 = @"FailedUnlock";
  v121 = @"KeyPressed";
  v122 = @"KeyPressed";
  v123 = @"KeyPressed";
  v124 = @"ConnectedToPower";
  v125 = @"RingerSwitchIndication";
  v126 = @"CameraShutter";
  v127 = 0x1F2894FF0;
  v128 = 0x1F2895010;
  v129 = 0x1F2895030;
  v130 = 0x1F2895050;
  v131 = 0x1F2895070;
  v132 = 0x1F2895090;
  v133 = 0x1F28950B0;
  v134 = 0x1F28950D0;
  v135 = 0x1F28950F0;
  v136 = 0x1F2895110;
  v137 = 0x1F2895130;
  v138 = 0x1F2895170;
  v139 = 0x1F2895130;
  v140 = 0x1F2895130;
  v141 = 0x1F2895130;
  v142 = 0x1F2895130;
  v143 = 0x1F2895130;
  v144 = 0x1F2895490;
  v145 = 0x1F2896F70;
  v146 = 0x1F2896F90;
  v147 = 0x1F2896FB0;
  v148 = 0x1F2896FD0;
  v149 = 0x1F2896FF0;
  v150 = 0x1F2897010;
  v151 = 0x1F2897030;
  v152 = 0x1F2897050;
  v153 = 0x1F2897070;
  v154 = 0x1F2895210;
  v155 = 0x1F2895190;
  v156 = 0x1F28951B0;
  v157 = 0x1F28951D0;
  v158 = 0x1F28951F0;
  v159 = @"KeyPressed";
  v160 = @"KeyPressed";
  v161 = @"KeyPressed";
  v162 = 0x1F2895250;
  v163 = 0x1F2895270;
  v164 = 0x1F28954B0;
  v165 = 0x1F2895290;
  v166 = 0x1F28952B0;
  v167 = 0x1F28954B0;
  v168 = 0x1F28952D0;
  v169 = 0x1F28952F0;
  v170 = 0x1F2895470;
  v171 = 0x1F2895470;
  v172 = 0x1F2895310;
  v173 = 0x1F2895330;
  v174 = 0x1F2895350;
  v175 = 0x1F2895370;
  v176 = @"TouchTone";
  v177 = @"TouchTone";
  v178 = @"TouchTone";
  v179 = @"TouchTone";
  v180 = @"TouchTone";
  v181 = @"TouchTone";
  v182 = @"TouchTone";
  v183 = @"TouchTone";
  v184 = @"TouchTone";
  v185 = @"TouchTone";
  v186 = @"TouchTone";
  v187 = @"TouchTone";
  v188 = @"SystemSoundPreview_IgnoreRingerSwitch";
  v189 = @"SystemSoundPreview_IgnoreRingerSwitch";
  v190 = @"SystemSoundPreview_IgnoreRingerSwitch";
  v191 = @"SystemSoundPreview_IgnoreRingerSwitch";
  v192 = @"SystemSoundPreview_IgnoreRingerSwitch";
  v193 = @"SystemSoundPreview";
  v194 = @"KeyPressClickPreview";
  v195 = @"SMSReceived_Selection";
  v196 = @"SMSReceived_Selection";
  v197 = @"SMSReceived_Selection";
  v198 = @"SMSReceived_Selection";
  v199 = @"SMSReceived_Selection";
  v200 = @"SMSReceived_Vibrate";
  v201 = @"SMSReceived_Selection";
  v202 = @"SMSReceived_Selection";
  v203 = @"SystemSoundPreview_IgnoreRingerSwitch";
  v204 = @"SystemSoundPreview_IgnoreRingerSwitch_NoVibe";
  v205 = @"SMSReceived_Selection";
  v206 = @"SMSReceived_Selection";
  v207 = @"SMSReceived_Selection";
  v208 = @"SMSReceived_Selection";
  v209 = @"SMSReceived_Selection";
  v210 = @"SMSReceived_Selection";
  v211 = @"SMSReceived_Selection";
  v212 = @"SMSReceived_Selection";
  v213 = @"SMSReceived_Selection";
  v214 = @"SMSReceived_Selection";
  v215 = @"SMSReceived_Selection";
  v216 = @"SMSReceived_Selection";
  v217 = @"SMSReceived_Selection";
  v218 = @"SMSReceived_Selection";
  v219 = @"SMSReceived_Selection";
  v220 = @"SMSReceived_Selection";
  v221 = @"SMSReceived_Selection";
  v222 = @"RingerVibeChanged";
  v223 = @"SilentVibeChanged";
  v224 = 0x1F2896CD0;
  v225 = @"Headset_StartCall";
  v226 = @"Headset_Redial";
  v227 = @"Headset_AnswerCall";
  v228 = @"Headset_EndCall";
  v229 = @"Headset_CallWaitingActions";
  v230 = @"Headset_TransitionEnd";
  v231 = 0x1F2894FB0;
  v232 = 0x1F2894FD0;
  v233 = 0x1F28917D0;
  v234 = 0x1F28917D0;
  v235 = 0x1F28917D0;
  v236 = 0x1F28953B0;
  v237 = 0x1F28953D0;
  v238 = 0x1F28953F0;
  v239 = 0x1F2895410;
  v240 = 0x1F2895430;
  v241 = 0x1F2895450;
  v242 = 0x1F28954B0;
  v243 = 0x1F28954D0;
  v244 = 0x1F28954D0;
  v245 = 0x1F28954F0;
  v246 = 0x1F2895510;
  v247 = 0x1F2895530;
  v248 = 0x1F2895550;
  v249 = 0x1F2895570;
  v250 = 0x1F2895590;
  v251 = 0x1F28955B0;
  v252 = 0x1F28955D0;
  v253 = 0x1F28955F0;
  v254 = 0x1F2895610;
  v255 = 0x1F2895630;
  v256 = 0x1F2895650;
  v257 = 0x1F2895670;
  v258 = 0x1F2895690;
  v259 = 0x1F28956B0;
  v260 = 0x1F28956D0;
  v261 = 0x1F28956F0;
  v262 = 0x1F2895710;
  v263 = 0x1F2895730;
  v264 = 0x1F2895750;
  v265 = 0x1F2895770;
  v266 = 0x1F2895790;
  v267 = 0x1F28957B0;
  v268 = 0x1F28957D0;
  v269 = 0x1F28957F0;
  v270 = 0x1F2895810;
  v271 = 0x1F2895830;
  v272 = 0x1F2895850;
  v273 = 0x1F2895870;
  v274 = 0x1F2895890;
  v275 = 0x1F28958B0;
  v276 = 0x1F28958D0;
  v277 = 0x1F28958F0;
  v278 = 0x1F2895910;
  v279 = 0x1F2895930;
  v280 = 0x1F2895950;
  v281 = 0x1F2895970;
  v282 = 0x1F2895990;
  v283 = 0x1F28959B0;
  v284 = 0x1F28959D0;
  v285 = 0x1F28959F0;
  v286 = 0x1F2895A10;
  v287 = 0x1F2895A30;
  v288 = 0x1F2895A50;
  v289 = 0x1F2895A70;
  v290 = 0x1F2895A90;
  v291 = 0x1F2895AB0;
  v292 = 0x1F2895AD0;
  v293 = 0x1F2895AF0;
  v294 = 0x1F2895B10;
  v295 = 0x1F2895B30;
  v296 = 0x1F2895B50;
  v297 = 0x1F2895B70;
  v298 = 0x1F2895B90;
  v299 = 0x1F2895BB0;
  v300 = 0x1F2895BD0;
  v301 = 0x1F2895BF0;
  v302 = 0x1F2895C10;
  v303 = 0x1F2895C30;
  v304 = 0x1F2895C50;
  v305 = 0x1F2895C70;
  v306 = 0x1F2895C90;
  v307 = 0x1F2895CB0;
  v308 = 0x1F2895CD0;
  v309 = 0x1F2895CF0;
  v310 = 0x1F2895D10;
  v311 = 0x1F2895D30;
  v312 = 0x1F2895D50;
  v313 = 0x1F2895D70;
  v314 = 0x1F2895D90;
  v315 = 0x1F2895DB0;
  v316 = 0x1F2895DD0;
  v317 = 0x1F2895DF0;
  v318 = 0x1F2895E10;
  v319 = 0x1F2895E30;
  v320 = 0x1F2895E50;
  v321 = 0x1F2895E70;
  v322 = 0x1F2895E90;
  v323 = 0x1F2895EB0;
  v324 = 0x1F2895ED0;
  v325 = 0x1F2895EF0;
  v326 = 0x1F2895F10;
  v327 = 0x1F2895F30;
  v328 = 0x1F2895F50;
  v329 = 0x1F2895F70;
  v330 = 0x1F2895F90;
  v331 = 0x1F2895FB0;
  v332 = 0x1F2895FD0;
  v333 = 0x1F2895FF0;
  v334 = 0x1F2896010;
  v335 = 0x1F2896030;
  v336 = 0x1F2896050;
  v337 = 0x1F2896070;
  v338 = 0x1F2896090;
  v339 = 0x1F28960B0;
  v340 = 0x1F28960D0;
  v341 = 0x1F28960F0;
  v342 = 0x1F2896110;
  v343 = 0x1F2896130;
  v344 = 0x1F2896150;
  v345 = 0x1F2896170;
  v346 = 0x1F2896190;
  v347 = 0x1F28961B0;
  v348 = 0x1F28961D0;
  v349 = 0x1F28961F0;
  v350 = 0x1F2896210;
  v351 = 0x1F2896230;
  v352 = 0x1F2896250;
  v353 = 0x1F2896270;
  v354 = 0x1F2896290;
  v355 = 0x1F28962B0;
  v356 = 0x1F28962D0;
  v357 = 0x1F28962F0;
  v358 = 0x1F2896310;
  v359 = 0x1F2896330;
  v360 = 0x1F2896350;
  v361 = 0x1F2896370;
  v362 = 0x1F2896390;
  v363 = 0x1F28963B0;
  v364 = 0x1F28963D0;
  v365 = 0x1F28963F0;
  v366 = 0x1F2896410;
  v367 = 0x1F2896430;
  v368 = 0x1F2896450;
  v369 = 0x1F2896470;
  v370 = 0x1F2896490;
  v371 = 0x1F28964B0;
  v372 = 0x1F28964D0;
  v373 = 0x1F28964F0;
  v374 = 0x1F2896510;
  v375 = 0x1F2896530;
  v376 = 0x1F2896550;
  v377 = 0x1F2896570;
  v378 = 0x1F2896590;
  v379 = 0x1F28965B0;
  v380 = 0x1F28965D0;
  v381 = 0x1F28965F0;
  v382 = 0x1F2896610;
  v383 = 0x1F2896630;
  v384 = 0x1F2896650;
  v385 = 0x1F2896670;
  v386 = 0x1F2896690;
  v387 = 0x1F28966B0;
  v388 = 0x1F28966D0;
  v389 = 0x1F28966F0;
  v390 = 0x1F2896710;
  v391 = 0x1F2896730;
  v392 = 0x1F2896750;
  v393 = 0x1F2896770;
  v394 = 0x1F2896790;
  v395 = 0x1F28967B0;
  v396 = 0x1F28967D0;
  v397 = 0x1F28967F0;
  v398 = 0x1F2896810;
  v399 = 0x1F2896830;
  v400 = 0x1F2896850;
  v401 = 0x1F2896870;
  v402 = 0x1F2896890;
  v403 = 0x1F28968B0;
  v404 = 0x1F28968D0;
  v405 = 0x1F28968F0;
  v406 = 0x1F2896910;
  v407 = 0x1F2896930;
  v408 = 0x1F2896950;
  v409 = 0x1F2896970;
  v410 = 0x1F2896990;
  v411 = 0x1F28969B0;
  v412 = 0x1F2895390;
  v413 = 0x1F2895470;
  v414 = 0x1F2895470;
  v415 = 0x1F28969D0;
  v416 = 0x1F28969F0;
  v417 = 0x1F2896B30;
  v418 = 0x1F2896B50;
  v419 = 0x1F2896B70;
  v420 = 0x1F2896B90;
  v421 = 0x1F2896BB0;
  v422 = 0x1F2896A10;
  v423 = 0x1F2896A30;
  v424 = 0x1F2896BD0;
  v425 = 0x1F2896BF0;
  v426 = 0x1F2896C10;
  v427 = 0x1F2896C30;
  v428 = 0x1F2896C50;
  v429 = 0x1F2896C70;
  v430 = 0x1F2898130;
  v431 = 0x1F2898150;
  v432 = 0x1F2896A50;
  v433 = 0x1F2896A70;
  v434 = 0x1F2896A90;
  v435 = 0x1F2895C90;
  v436 = 0x1F2896AB0;
  v437 = 0x1F2896AD0;
  v438 = 0x1F2896AF0;
  v439 = 0x1F2896B10;
  v440 = 0x1F2895470;
  v441 = 0x1F2895470;
  v442 = 0x1F2895470;
  v443 = 0x1F2895470;
  v444 = 0x1F2896C90;
  v445 = 0x1F2896CB0;
  v446 = 0x1F2896CF0;
  v447 = 0x1F2896D10;
  v448 = 0x1F2896D30;
  v449 = 0x1F2896D50;
  v450 = 0x1F2896D70;
  v451 = 0x1F2896D90;
  v452 = 0x1F2896DB0;
  v453 = 0x1F2896DD0;
  v454 = 0x1F2896DF0;
  v455 = 0x1F2896E10;
  v456 = 0x1F2896E30;
  v457 = 0x1F2896E50;
  v458 = 0x1F2896E70;
  v459 = 0x1F2896E90;
  v460 = 0x1F2896EB0;
  v461 = 0x1F2896ED0;
  v462 = 0x1F2896EF0;
  v463 = 0x1F2896F10;
  v464 = 0x1F2896F30;
  v465 = 0x1F2896F50;
  v466 = 0x1F2897090;
  v467 = 0x1F28970B0;
  v468 = 0x1F28970D0;
  v57 = *v0;
  v469 = 0x1F28970F0;
  v470 = 0x1F2897110;
  gSystemSoundIDToCategory = CFDictionaryCreate(v57, &cmsmInitializeSSIDCategoryMappings_ssids, &context, 407, &keyCallBacks, MEMORY[0x1E695E9E8]);
  gCMSS_12 = FigReentrantMutexCreate();
  CelestialGetModelSpecificName();
  v58 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (v58)
  {
    v59 = v58;
    v60 = CFDictionaryGetValue(v58, @"DefaultVADToSystemSoundVADVolumeRatio");
    v61 = v60;
    if (v60)
    {
      CFRetain(v60);
    }

    CFRelease(v59);
  }

  else
  {
    v61 = 0;
  }

  gCMSS_4 = v61;
  gCMSS_5 = CFDictionaryCreateMutable(v57, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  gCMSS_6 = CFArrayCreateMutable(v57, 0, MEMORY[0x1E695E9C0]);
  gCMSS_7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!gCMSS_7)
  {
    v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  MXDebugInstallSysdiagnoseBlock(@"CMSessionSystemSoundManagerState", &__block_literal_global_76);
  v63 = *MEMORY[0x1E69E9840];
}

void cmsmPrewarmVibeForSSID(int a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (!gCMSS_6 || !FigVibratorIsVibeSynthEngineAvailable())
  {
    if (!v4)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_19;
    }

    v7 = gCMSS_6;
    if (gCMSS_6)
    {
      v8.length = CFArrayGetCount(gCMSS_6);
    }

    else
    {
      v8.length = 0;
    }

    v8.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v7, v8, v4);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(gCMSS_6, FirstIndexOfValue);
      if (gCMSS_6 && CFArrayGetCount(gCMSS_6))
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        if (dword_1EB75DE40)
        {
          v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigVibratorStopPrewarm(0);
      }
    }

LABEL_18:
    CFRelease(v4);
    goto LABEL_19;
  }

  if (!gCMSS_6 || !CFArrayGetCount(gCMSS_6))
  {
    if (dword_1EB75DE40)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigVibratorStartPrewarm(0);
LABEL_16:
    if (!v4)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (!dword_1EB75DE40)
  {
    goto LABEL_16;
  }

  v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v4)
  {
LABEL_17:
    CFArrayAppendValue(gCMSS_6, v4);
    goto LABEL_18;
  }

LABEL_19:
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t cmsmRemoveSystemSoundAudioCategoriesThatMixIn(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v2 = gCMSS_7;
  if ([+[MXSessionManager defaultVADID] sharedInstance]
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    goto LABEL_11;
  }

  v4 = [v2 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a1)}];
  if (!v4)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_11;
    }

LABEL_10:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_11;
  }

  v5 = v4;
  if (![v4 countForObject:@"KeyPressed"])
  {
    goto LABEL_10;
  }

  [v5 removeObject:@"KeyPressed"];
  if (![v5 count])
  {
    [v2 removeObjectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a1)}];
  }

LABEL_11:
  result = FigSimpleMutexUnlock();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSystemSoundMgr_DeactivateAllSystemSounds()
{
  if (gCMSS_1)
  {
    FigSimpleMutexLock();
    for (i = gCMSS_0; i; i = *i)
    {
      if (*(i + 16) && *(i + 18))
      {
        v1 = *(i + 8);
        if ((v1 - 1103) <= 2)
        {
          cmsmRemoveSystemSoundAudioCategoriesThatMixIn(*(i + 12));
          v1 = *(i + 8);
        }

        cmsmPrewarmAudioForSSID(0, v1, *(i + 12));
        *(i + 18) = 0;
      }

      if (*(i + 17) && *(i + 19))
      {
        cmsmPrewarmVibeForSSID(0, *(i + 8), *(i + 12));
        *(i + 19) = 0;
      }

      CMSMSleep_ReleasePrewarmIdleSleepPreventor(*(i + 8), *(i + 12));
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

const __CFString *CMSystemSoundMgr_SystemSoundMustBeHeard(void *key)
{
  v1 = key;
  Value = CFDictionaryGetValue(gSystemSoundIDToCategory, key);
  if (Value)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1 > 0x1000;
  }

  if (v3)
  {
    Value = @"ThirdPartySystemSound";
  }

  result = CMSystemsoundMgr_GetMappedBehaviorCategory(Value);
  if (result)
  {
    return (CFStringHasSuffix(result, @"AlwaysHeard") != 0);
  }

  return result;
}

uint64_t CMSessionMgrCopySystemSoundAudioBehavior(uint64_t a1, __CFDictionary **a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (a1)
  {
    if (!gSystemSoundAudioBehaviors)
    {
LABEL_38:
      v7 = 0;
      goto LABEL_56;
    }

    v38 = 0;
    FigCFDictionaryGetInt32IfPresent();
    v37 = 0;
    FigCFDictionaryGetInt32IfPresent();
    v36 = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v35 = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v34 = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v33 = 0;
    if (MX_FeatureFlags_IsOnenessEnabled() && !MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled())
    {
      FigCFDictionaryGetBooleanIfPresent();
    }

    v32 = 0;
    FigCFDictionaryGetBooleanIfPresent();
    Value = CFDictionaryGetValue(gSystemSoundIDToCategory, 0);
    if (dword_1EB75DE40)
    {
      LODWORD(v39) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    ApplicationStateForPID = MX_RunningBoardServices_GetApplicationStateForPID(v37, 1);
    *type = 0;
    if (ApplicationStateForPID == 4)
    {
      if (CMSMUtility_FetchBackgroundEntitlement(v37))
      {
        goto LABEL_14;
      }

      ApplicationStateForPID = MX_RunningBoardServices_GetApplicationStateForPID([MXSystemController getPIDToInheritAppStateFromForPID:v37], 1);
    }

    if ((ApplicationStateForPID & 0xFFFFFFF7) == 0)
    {
      goto LABEL_15;
    }

    if (ApplicationStateForPID != 4)
    {
LABEL_21:
      v13 = 0;
LABEL_54:
      v7 = 0;
      goto LABEL_55;
    }

LABEL_14:
    if (CMSMUtility_FetchBackgroundEntitlement(v37))
    {
LABEL_15:
      v9 = v33;
      if (gCMSS_2 != 1)
      {
        *v43 = 0;
        *&v43[8] = v43;
        *&v43[16] = 0x2020000000;
        v44 = 0;
        v39 = 0;
        v40 = &v39;
        v41 = 0x2020000000;
        v42 = 0;
        v10 = MXGetSerialQueue();
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __cmsmSystemSoundShouldPlay_block_invoke;
        v45[3] = &unk_1E7AECB78;
        v46 = 0;
        v47 = v37;
        v48 = v33;
        v49 = v32;
        v50 = v36;
        v51 = v35;
        v52 = v34;
        v45[6] = &type[4];
        v45[7] = type;
        v45[4] = v43;
        v45[5] = &v39;
        MXDispatchAsyncAndWait("cmsmSystemSoundShouldPlay", "CMSessionManager_SystemSounds.m", 3734, 0, 0, v10, v45);
        if (MX_FeatureFlags_IsAsyncDuckingEnabled() && (*(*&v43[8] + 25) & 1) != 0)
        {
          v11 = +[MXSessionManager sharedInstance];
          LODWORD(v12) = 0.5;
          [(MXSessionManager *)v11 sleepForAsyncDucking:1 duration:v12];
        }

        v7 = *(v40 + 6);
        _Block_object_dispose(&v39, 8);
        _Block_object_dispose(v43, 8);
        if (v7)
        {
          v13 = 0;
LABEL_55:
          *a2 = v13;
          goto LABEL_56;
        }

        v9 = v33;
      }

      v14 = CFDictionaryGetValue(gSystemSoundIDToCategory, 0);
      MappedBehaviorCategory = CMSystemsoundMgr_GetMappedBehaviorCategory(v14);
      v16 = cmsmCopySystemSoundAudioBehaviorDictionaryForAudioCategory(MappedBehaviorCategory, v9);
      v13 = v16;
      if (v16)
      {
        v17 = *MEMORY[0x1E695E4D0];
        v18 = *MEMORY[0x1E695E4C0];
        if (type[4])
        {
          v19 = *MEMORY[0x1E695E4D0];
        }

        else
        {
          v19 = *MEMORY[0x1E695E4C0];
        }

        CFDictionarySetValue(v16, @"Audio", v19);
        if (*type != 0.0)
        {
          v20 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, type);
          CFDictionarySetValue(v13, @"AudioVolume", v20);
          if (v20)
          {
            CFRelease(v20);
          }
        }

        v21 = v18;
        if ((type[4] & 2) != 0)
        {
          if (CMSMDeviceState_IsVibrationDisabled() && ([gSystemSoundsDoNotObeyAccessibilityVibrationSetting containsObject:Value] & 1) == 0)
          {
            LODWORD(v39) = 0;
            v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v23 = v39;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v24 = v23;
            }

            else
            {
              v24 = v23 & 0xFFFFFFFE;
            }

            if (v24)
            {
              *v43 = 136315394;
              *&v43[4] = "CMSessionMgrCopySystemSoundAudioBehavior";
              *&v43[12] = 2114;
              *&v43[14] = Value;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v21 = v17;
        }

        CFDictionarySetValue(v13, @"Vibration", v21);
        if ((type[4] & 8) != 0)
        {
          v25 = v17;
        }

        else
        {
          v25 = v18;
        }

        CFDictionarySetValue(v13, @"NeedsFinishCall", v25);
        if ((type[4] & 0x10) != 0)
        {
          v26 = v17;
        }

        else
        {
          v26 = v18;
        }

        CFDictionarySetValue(v13, @"SynchronizedSystemSound", v26);
        if ((type[4] & 0x40) != 0)
        {
          v27 = v17;
        }

        else
        {
          v27 = v18;
        }

        CFDictionarySetValue(v13, @"InterruptCurrentSystemSounds", v27);
        if ((type[4] & 0x80) != 0)
        {
          v28 = v17;
        }

        else
        {
          v28 = v18;
        }

        CFDictionarySetValue(v13, @"NeedsUnduckCall", v28);
        goto LABEL_54;
      }

      goto LABEL_38;
    }

    goto LABEL_21;
  }

  v7 = 4294954316;
LABEL_56:
  objc_autoreleasePoolPop(v4);
  v29 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1B194A970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __CMSessionMgrCopySystemSoundAudioBehavior_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMDeviceState_InterruptAllActiveSessionsAndSystemSounds();
  v1 = *MEMORY[0x1E69E9840];
}

void CMSessionMgrSystemSoundDidFinish(int a1)
{
  v2 = objc_autoreleasePoolPush();
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = MXGetSerialQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CMSessionMgrSystemSoundDidFinish_block_invoke;
  v6[3] = &unk_1E7AEA5E8;
  v7 = a1;
  v6[4] = &v8;
  MXDispatchAsyncAndWait("CMSessionMgrSystemSoundDidFinish", "CMSessionManager_SystemSounds.m", 4258, 0, 0, v3, v6);
  if (*(v9 + 24))
  {
    v4 = +[MXSessionManager sharedInstance];
    LODWORD(v5) = 0.5;
    [(MXSessionManager *)v4 sleepForAsyncDucking:0 duration:v5];
  }

  _Block_object_dispose(&v8, 8);
  objc_autoreleasePoolPop(v2);
}

void sub_1B194ABD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CMSessionMgrSystemSoundDidFinish_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  cmsmSystemSoundDidFinishGuts(*(a1 + 40), 0, (*(*(a1 + 32) + 8) + 24));
  if (*(a1 + 40) == 1061)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMDeviceState_DeactivateHardwareSafetySession(@"resumable.LiquidDetectSystemSoundDisengaged");
  }

  v3 = *MEMORY[0x1E69E9840];
}

void cmsmSystemSoundDidFinishGuts(uint64_t a1, int a2, _BYTE *a3)
{
  v93 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v83 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = gCMSS_8;
  if (gCMSS_8 <= 1)
  {
    v7 = 1;
  }

  gCMSS_8 = v7 - 1;
  FigSimpleMutexLock();
  v8 = dword_1EB75E118;
  if (a1 && !a2)
  {
    if (dword_1EB75E118 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = dword_1EB75E118;
    }

    dword_1EB75E118 = v9 - 1;
  }

  if (!gCMSS_9)
  {
    goto LABEL_25;
  }

  dispatch_source_cancel(gCMSS_9);
  if (gCMSS_9)
  {
    dispatch_release(gCMSS_9);
  }

  v10 = a1 == 1117 || v8 == 0;
  v11 = !v10;
  v12 = gCMSS_11 != a1 && a2 == 0;
  gCMSS_9 = 0;
  if (v12 || v11)
  {
    if (a1 == 1117)
    {
      v15 = cmsmCopySessionsToUnduck(gCMSS_11);
      FigSimpleMutexUnlock();
      if (v15)
      {
        cmsmUnduckSessions(v15, gCMSS_11, a3);
        CFRelease(v15);
      }

      FigSimpleMutexLock();
      goto LABEL_36;
    }

    v13 = 0;
  }

  else
  {
LABEL_25:
    v13 = 1;
  }

  if (a1 != 1117)
  {
    if (v8)
    {
      if (a2 || (v14 = MXGetSerialQueue(), v80[0] = MEMORY[0x1E69E9820], v80[1] = 3221225472, v80[2] = __cmsmSystemSoundDidFinishGuts_block_invoke, v80[3] = &__block_descriptor_36_e5_v8__0l, v81 = a1, (gCMSS_9 = MXDispatchUtilityCreateOneShotTimer(1.0, "cmsmSystemSoundDidFinishGuts", "CMSessionManager_SystemSounds.m", 4471, 0, 0, v14, v80, 0, 0)) != 0))
      {
        if (v13)
        {
          FigSimpleMutexUnlock();
        }

        else
        {
          v48 = cmsmCopySessionsToUnduck(gCMSS_11);
          FigSimpleMutexUnlock();
          if (v48)
          {
            cmsmUnduckSessions(v48, gCMSS_11, a3);
            CFRelease(v48);
          }
        }

        gCMSS_11 = a1;
        goto LABEL_112;
      }
    }
  }

LABEL_36:
  v16 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList:v61];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v76 objects:v92 count:16];
  if (v17)
  {
    v18 = v17;
    v65 = a2;
    v66 = a3;
    v19 = 0;
    v20 = *v77;
    key = a1;
    while (1)
    {
      v21 = 0;
      do
      {
        if (*v77 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v76 + 1) + 8 * v21);
        if (CMSUtility_GetIsActive(v22) && ([v22 currentlyControllingFlags] & 2) != 0)
        {
          if (![v22 hasPhoneCallBehavior] || !FigCFArrayContainsValue())
          {
            goto LABEL_58;
          }

          Value = CFDictionaryGetValue(gSystemSoundIDToCategory, key);
          if (Value)
          {
            v24 = 0;
          }

          else
          {
            v24 = a1 > 0x1000;
          }

          if (v24)
          {
            Value = @"ThirdPartySystemSound";
          }

          if (!Value || (MappedBehaviorCategory = CMSystemsoundMgr_GetMappedBehaviorCategory(Value), CurrentVADForSystemSoundAudioCategory = cmsmGetCurrentVADForSystemSoundAudioCategory(MappedBehaviorCategory, 0), CurrentAudioDestination = CMSUtility_GetCurrentAudioDestination(v22), VADNameForVADID = CMSMUtility_GetVADNameForVADID(CurrentVADForSystemSoundAudioCategory), !CMSMUtility_AreVADsRoutedToTheSamePhysicalDevice(CurrentAudioDestination, VADNameForVADID)))
          {
LABEL_58:
            cmsTryToTakeControl(v22);
LABEL_59:
            v19 = 1;
            goto LABEL_60;
          }

          if (!dword_1EB75DE40)
          {
            goto LABEL_59;
          }

          v29 = a1;
          v83 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v31 = v83;
          if (os_log_type_enabled(v30, type))
          {
            v32 = v31;
          }

          else
          {
            v32 = v31 & 0xFFFFFFFE;
          }

          if (v32)
          {
            v33 = [v22 clientName];
            v84 = 136315394;
            v85 = "cmsmShouldSessionWithRouteControlTryToTakeControl";
            v86 = 2048;
            v87 = v33;
            LODWORD(v64) = 22;
            v62 = &v84;
            _os_log_send_and_compose_impl();
          }

          v19 = 1;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          a1 = v29;
        }

LABEL_60:
        ++v21;
      }

      while (v18 != v21);
      v34 = [v16 countByEnumeratingWithState:&v76 objects:v92 count:16];
      v18 = v34;
      if (!v34)
      {
        a3 = v66;
        a2 = v65;
        if (!v19)
        {
          break;
        }

LABEL_77:

        goto LABEL_110;
      }
    }
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v35 = [v16 countByEnumeratingWithState:&v72 objects:v91 count:{16, v62, v64}];
  if (v35)
  {
    v36 = v35;
    v37 = 0;
    v38 = *v73;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v73 != v38)
        {
          objc_enumerationMutation(v16);
        }

        v40 = *(*(&v72 + 1) + 8 * i);
        if ([v40 systemSoundHasModifiedCurrentlyControllingFlags] && objc_msgSend(v40, "prefersToTakeHWControlFlagsFromAnotherSession") && CMSUtility_GetIsActive(v40))
        {
          [v40 setSystemSoundHasModifiedCurrentlyControllingFlags:0];
          cmsTryToTakeControl(v40);
          v37 = 1;
        }
      }

      v36 = [v16 countByEnumeratingWithState:&v72 objects:v91 count:16];
    }

    while (v36);
    if (v37)
    {
      goto LABEL_77;
    }
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v41 = [v16 countByEnumeratingWithState:&v68 objects:v90 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = 0;
    v44 = *v69;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v69 != v44)
        {
          objc_enumerationMutation(v16);
        }

        v46 = *(*(&v68 + 1) + 8 * j);
        if ([v46 systemSoundHasModifiedCurrentlyControllingFlags] && (objc_msgSend(v46, "prefersToTakeHWControlFlagsFromAnotherSession") & 1) == 0 && CMSUtility_GetIsActive(v46))
        {
          [v46 setSystemSoundHasModifiedCurrentlyControllingFlags:0];
          cmsTryToTakeControl(v46);
          v43 = 1;
        }
      }

      v42 = [v16 countByEnumeratingWithState:&v68 objects:v90 count:16];
    }

    while (v42);
    v47 = v43 != 0;
  }

  else
  {
    v47 = 0;
  }

  if (a2 && !v47)
  {
    PVMSetEnabled(1);
    vaemResetVADCategoryToStandardAVAndDefaultMode();
    v49 = CFDictionaryGetValue(gSystemSoundIDToCategory, a1);
    if (v49)
    {
      v50 = 0;
    }

    else
    {
      v50 = a1 > 0x1000;
    }

    if (v50)
    {
      v49 = @"ThirdPartySystemSound";
    }

    v51 = CMSystemsoundMgr_GetMappedBehaviorCategory(v49);
    v52 = cmsmGetCurrentVADForSystemSoundAudioCategory(v51, 0);
    CurrentRouteTypeForSystemSoundAtIndex = CMSMUtility_GetCurrentRouteTypeForSystemSoundAtIndex(0);
    if (dword_1EB75DE40)
    {
      v83 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v55 = v83;
      if (os_log_type_enabled(v54, type))
      {
        v56 = v55;
      }

      else
      {
        v56 = v55 & 0xFFFFFFFE;
      }

      if (v56)
      {
        v57 = CMSMUtility_GetVADNameForVADID(v52);
        v84 = 136315650;
        v85 = "cmsmSystemSoundDidFinishGuts";
        v86 = 2114;
        v87 = v57;
        v88 = 2114;
        v89 = CurrentRouteTypeForSystemSoundAtIndex;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemSetDeviceVolumeIfNotSet(v52, 0, CurrentRouteTypeForSystemSoundAtIndex, 0, 0.5, 0.0, 0.0);
    VolumeSequenceNumber = CMSMUtility_GetVolumeSequenceNumber();
    PVMSetCurrentCategoryAndMode(@"Audio/Video", 0, VolumeSequenceNumber);
  }

LABEL_110:
  v59 = cmsmCopySessionsToUnduck(a1);
  FigSimpleMutexUnlock();
  if (v59)
  {
    cmsmUnduckSessions(v59, a1, a3);
    CFRelease(v59);
  }

LABEL_112:
  v60 = *MEMORY[0x1E69E9840];
}

void CMSessionMgrSystemSoundUnduckMedia(int a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = MXGetSerialQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CMSessionMgrSystemSoundUnduckMedia_block_invoke;
  v5[3] = &unk_1E7AEA5E8;
  v6 = a1;
  v5[4] = &v7;
  MXDispatchAsyncAndWait("CMSessionMgrSystemSoundUnduckMedia", "CMSessionManager_SystemSounds.m", 4291, 0, 0, v2, v5);
  if (*(v8 + 24))
  {
    v3 = +[MXSessionManager sharedInstance];
    LODWORD(v4) = 0.5;
    [(MXSessionManager *)v3 sleepForAsyncDucking:0 duration:v4];
  }

  _Block_object_dispose(&v7, 8);
}

void sub_1B194B72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CMSessionMgrSystemSoundUnduckMedia_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v4 = cmsmCopySessionsToUnduck(v1);
  FigSimpleMutexUnlock();
  if (v4)
  {
    cmsmUnduckSessions(v4, v1, (v2 + 24));
    CFRelease(v4);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t CMSessionMgrVibrateForSystemSoundWithOptions(int a1, const __CFDictionary *a2)
{
  v4 = objc_autoreleasePoolPush();
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"Duration");
    valuePtr = 0;
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
    }

    v6 = CFDictionaryGetValue(a2, @"Intensity");
    v18 = 0;
    if (v6)
    {
      CFNumberGetValue(v6, kCFNumberFloatType, &v18);
    }

    v7 = CFDictionaryGetValue(a2, @"VibrationPattern");
    v8 = CFDictionaryGetValue(a2, @"Synchronizer");
    if (v8)
    {
      BytePtr = CFDataGetBytePtr(v8);
    }

    else
    {
      BytePtr = 0;
    }

    v11 = CFDictionaryGetValue(a2, @"Loop");
    if (v11)
    {
      v12 = CFBooleanGetValue(v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = CFDictionaryGetValue(a2, @"DidFinishContext");
    v14 = CFDictionaryGetValue(a2, @"CancelCurrentVibePattern");
    if (v14)
    {
      v15 = CFBooleanGetValue(v14);
    }

    else
    {
      v15 = 0;
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v16 = MXGetSerialQueue();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __cmsmVibrateForSystemSoundInternal_block_invoke;
    v20[3] = &unk_1E7AECBA0;
    v21 = a1;
    v20[4] = &v24;
    v20[5] = v7;
    v22 = v12;
    v20[6] = BytePtr;
    v20[7] = v13;
    v23 = v15;
    MXDispatchAsyncAndWait("cmsmVibrateForSystemSoundInternal", "CMSessionManager_SystemSounds.m", 4852, 0, 0, v16, v20);
    v10 = *(v25 + 6);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v10 = 4294954315;
  }

  objc_autoreleasePoolPop(v4);
  return v10;
}

void sub_1B194BAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CMSessionMgrVibratorStopWithOptions(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v3 = MXGetSerialQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CMSessionMgrVibratorStopWithOptions_block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = a1;
  MXDispatchAsyncAndWait("CMSessionMgrVibratorStopWithOptions", "CMSessionManager_SystemSounds.m", 5095, 0, 0, v3, v4);
  objc_autoreleasePoolPop(v2);
}

float CMSystemSoundMgrGetMinVolume(const __CFString *a1)
{
  MappedBehaviorCategory = CMSystemsoundMgr_GetMappedBehaviorCategory(a1);

  return cmsmGetSystemSoundMinVolume(MappedBehaviorCategory);
}

float cmsmGetSystemSoundMinVolume(uint64_t a1)
{
  if (!a1 || (v1 = [gSystemSoundMinVolume objectForKey:a1]) == 0)
  {
    v1 = [gSystemSoundMinVolume objectForKey:@"Default"];
    if (!v1)
    {
      return 0.0;
    }
  }

  v2 = v1;
  CurrentRouteTypeForSystemSoundAtIndex = CMSMUtility_GetCurrentRouteTypeForSystemSoundAtIndex(0);
  v4 = PVMCopyMappedRoute(CurrentRouteTypeForSystemSoundAtIndex);
  if (v4 && (v5 = [v2 objectForKey:v4]) != 0 || (v5 = objc_msgSend(v2, "objectForKey:", @"Default")) != 0)
  {
    [v5 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

void CMSystemSoundMgrGetMaxVolume(const __CFString *a1)
{
  MappedBehaviorCategory = CMSystemsoundMgr_GetMappedBehaviorCategory(a1);

  cmsmGetSystemSoundMaxVolume(MappedBehaviorCategory);
}

void cmsmGetSystemSoundMaxVolume(const void *a1)
{
  *&valuePtr = 1.0;
  SystemSoundMinVolume = cmsmGetSystemSoundMinVolume(a1);
  if (a1 && (v3 = CFDictionaryGetValue(gSystemSoundMaxVolume, a1)) != 0 || (v3 = CFDictionaryGetValue(gSystemSoundMaxVolume, @"Default")) != 0)
  {
    v4 = v3;
    CurrentRouteTypeForSystemSoundAtIndex = CMSMUtility_GetCurrentRouteTypeForSystemSoundAtIndex(0);
    v6 = PVMCopyMappedRoute(CurrentRouteTypeForSystemSoundAtIndex);
    if (!v6 || (Value = CFDictionaryGetValue(v4, v6)) == 0)
    {
      Value = CFDictionaryGetValue(v4, @"Default");
      if (!Value)
      {
        if (!v6)
        {
          return;
        }

        goto LABEL_21;
      }
    }

    CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
    v8 = PVMGetVolumeMultiplier();
    if ([gSystemSoundsWithNoVolumeAdjustment containsObject:a1])
    {
      v8 = 1.0;
      v9 = *&valuePtr;
    }

    else
    {
      v9 = 1.0;
      if (a1 && PVMCategoriesAreEquivalent([[MXSessionManager getUncustomizedCategory:"getUncustomizedCategory:" sharedInstance:0])
      {
        PVMGetThirdPartyVolumeMultiplier();
        v8 = v10;
      }
    }

    if (FigCFEqual())
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v11 = PVMGetVolumePreference(@"Ringtone", 0, v13);
    }

    else
    {
      v11 = *&valuePtr;
    }

    v12 = v8 * v11;
    if (v12 >= v9)
    {
      v12 = v9;
    }

    if (SystemSoundMinVolume > v12)
    {
      v12 = SystemSoundMinVolume;
    }

    *&valuePtr = v12;
    if (v6)
    {
LABEL_21:
      CFRelease(v6);
    }
  }
}

void cmsmWordyToCompact(const __CFString *a1, const void *a2, uint64_t a3)
{
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a1) || (v7 = CFArrayGetTypeID(), v7 != CFGetTypeID(a2)) || (ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a1, @",")) == 0)
  {
    *(a3 + 24) = 0;
    return;
  }

  v9 = ArrayBySeparatingStrings;
  if (CFArrayGetCount(ArrayBySeparatingStrings) != 3)
  {
    goto LABEL_47;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
  v11 = CFArrayGetValueAtIndex(v9, 1);
  v12 = CFArrayGetValueAtIndex(v9, 2);
  v13 = !ValueAtIndex || v11 == 0;
  if (v13 || v12 == 0)
  {
    goto LABEL_47;
  }

  v15 = v12;
  if (CFEqual(ValueAtIndex, @"RingVibrateOff"))
  {
    v16 = 16;
  }

  else if (CFEqual(ValueAtIndex, @"RingVibrateOn"))
  {
    v16 = 32;
  }

  else
  {
    if (!CFEqual(ValueAtIndex, @"RingVibrateIgnore"))
    {
      goto LABEL_47;
    }

    v16 = 48;
  }

  if (CFEqual(v11, @"SilentVibrateOff"))
  {
    v17 = 4;
  }

  else if (CFEqual(v11, @"SilentVibrateOn"))
  {
    v17 = 8;
  }

  else
  {
    if (!CFEqual(v11, @"SilentVibrateIgnore"))
    {
      goto LABEL_47;
    }

    v17 = 12;
  }

  if (CFEqual(v15, @"RingerSwitchOff"))
  {
    v18 = 1;
    goto LABEL_31;
  }

  if (CFEqual(v15, @"RingerSwitchOn"))
  {
    v18 = 2;
    goto LABEL_31;
  }

  if (CFEqual(v15, @"RingerSwitchIgnore"))
  {
    v18 = 3;
LABEL_31:
    Count = CFArrayGetCount(a2);
    if (Count < 1)
    {
      LOBYTE(v21) = 0;
    }

    else
    {
      v20 = Count;
      v31 = v18;
      v32 = v17;
      v21 = 0;
      v22 = 0;
      for (i = 0; i != v20; ++i)
      {
        v24 = CFArrayGetValueAtIndex(a2, i);
        if (!v24 || (v25 = CFStringGetTypeID(), v25 != CFGetTypeID(v24)))
        {
          v22 = 1;
        }

        if (CFEqual(v24, @"Beep"))
        {
          v21 |= 1u;
        }

        else if (CFEqual(v24, @"Vibrate"))
        {
          v21 |= 2u;
        }

        else if (CFEqual(v24, @"Synchronize"))
        {
          v21 |= 0x10u;
        }

        else if (CFEqual(v24, @"Interrupt"))
        {
          v21 |= 0x40u;
        }

        else
        {
          v22 = 1;
        }
      }

      if (v22)
      {
        goto LABEL_47;
      }

      v18 = v31;
      v17 = v32;
    }

    v26 = 0;
    v27 = (a3 + 16);
    do
    {
      if (v26)
      {
        v28 = -3;
      }

      else
      {
        v28 = -2;
      }

      if ((v26 & 2) != 0)
      {
        v29 = -9;
      }

      else
      {
        v29 = -5;
      }

      if (v26 >= 4)
      {
        v30 = -33;
      }

      else
      {
        v30 = -17;
      }

      if ((v29 & v30 & v28 | v16 | v17 | v18) == 0xFFFFFFFF)
      {
        *(v27 - 8) = v21;
        *v27 = 1;
      }

      ++v26;
      ++v27;
    }

    while (v26 != 8);
    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 24) = 0;
LABEL_48:

  CFRelease(v9);
}

const __CFArray *cmsmCopyDestinationsWithoutElement(CFArrayRef theArray, uint64_t a2)
{
  if (!theArray)
  {
    return 0;
  }

  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
  v4 = MutableCopy;
  if (a2 && CFArrayGetCount(MutableCopy) >= 1)
  {
    v5 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(v4, v5);
      if (FigCFEqual())
      {
        break;
      }

      if (++v5 >= CFArrayGetCount(v4))
      {
        return v4;
      }
    }

    CFArrayRemoveValueAtIndex(v4, v5);
  }

  return v4;
}

void __cmsmSystemSoundShouldPlay_block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 73);
  if (cmsmSkipPlayingSystemSound_onceToken != -1)
  {
    __cmsmSystemSoundShouldPlay_block_invoke_cold_1();
  }

  if (gSystemSoundRingerSettings)
  {
    v6 = gSystemSoundRoutingForCategories == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || gSystemSoundLowersMusicVolume == 0 || gSystemSoundMaxVolume == 0)
  {
    goto LABEL_123;
  }

  if (![cmsmSkipPlayingSystemSound_unskippableSystemSounds containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)}])
  {
    if (CMSystemSoundMgr_SystemSoundMustBeHeard(v3))
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    active = cmsmCopyCurrentActiveRouteTypesForSystemSound();
    if (FigCFArrayContainsValue())
    {
      v11 = 1;
      if (!active)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v11 = FigCFArrayContainsValue() != 0;
      if (!active)
      {
LABEL_25:
        if (v5 == 0 || v11)
        {
          if ((v3 - 1393) < 0xFFFFFFFD || v11)
          {
            if ([+[MXSessionManager wombatEnabled] sharedInstance]
            {
              if (dword_1EB75DE40)
              {
LABEL_123:
                v53 = 0;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            else
            {
              v12 = [+[MXSessionManager sharedInstance](MXSessionManager isSessionWithAudioCategoryActive:"isSessionWithAudioCategoryActive:", @"HearingTest"];
              if (v3 == 1169 || !v12)
              {
                if (!MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled())
                {
                  goto LABEL_126;
                }

                v13 = cmsmCopyCurrentActiveRouteTypesForSystemSound();
                CMSMUtility_GetCurrentRouteTypeForSystemSoundAtIndex(0);
                if (FigCFEqual())
                {
                  v14 = vaemContinuityScreenOutputIsConnected() == 0;
                }

                else
                {
                  v14 = 1;
                }

                v52 = v14;
                Value = CFDictionaryGetValue(gSystemSoundIDToCategory, v3);
                if (Value)
                {
                  v16 = 0;
                }

                else
                {
                  v16 = v3 > 0x1000;
                }

                if (v16)
                {
                  Value = @"ThirdPartySystemSound";
                }

                MappedBehaviorCategory = CMSystemsoundMgr_GetMappedBehaviorCategory(Value);
                CurrentVADForSystemSoundAudioCategory = cmsmGetCurrentVADForSystemSoundAudioCategory(MappedBehaviorCategory, 0);
                v19 = [+[MXSessionManager sharedInstance](MXSessionManager speakerAlertVADID];
                if (v13)
                {
                  CFRelease(v13);
                }

                v20 = v52;
                if (CurrentVADForSystemSoundAudioCategory == v19)
                {
                  v20 = 1;
                }

                if ((v20 & 1) == 0)
                {
                  if (dword_1EB75DE40)
                  {
                    goto LABEL_123;
                  }
                }

                else
                {
                  if (FigVAEndpointManagerGetPropertyBoolean(qword_1EB75E090, 0x1F289B490) || !FigCFArrayContainsValue() || !CMSMUtility_SomeClientIsPlaying())
                  {
                    goto LABEL_127;
                  }

LABEL_126:
                  v46 = CFDictionaryGetValue(gSystemSoundIDToCategory, v3);
                  if (v46)
                  {
                    v47 = 0;
                  }

                  else
                  {
                    v47 = v3 > 0x1000;
                  }

                  if (v47)
                  {
                    v46 = @"ThirdPartySystemSound";
                  }

                  v48 = CMSystemsoundMgr_GetMappedBehaviorCategory(v46);
                  v49 = cmsmGetCurrentVADForSystemSoundAudioCategory(v48, v4);
                  IsCategoryInputOnly = CMSMUtility_IsCategoryInputOnly(0);
                  if (vaemIsNotCurrentDeviceFormat(v49, IsCategoryInputOnly))
                  {
                    if (dword_1EB75DE40)
                    {
                      goto LABEL_123;
                    }
                  }

                  else
                  {
LABEL_127:
                    if (!CMSMUtility_IsSomeClientRecording() || !CMSMUtility_IsSomeRecordingSessionPresentThatDisallowsSystemSounds() || cmsmSystemSoundShouldPlayDuringRecording(v3))
                    {
                      goto LABEL_61;
                    }

                    if (v5 != 0 && v11)
                    {
                      if (!dword_1EB75DE40)
                      {
                        goto LABEL_61;
                      }

                      goto LABEL_60;
                    }

                    if (dword_1EB75DE40)
                    {
                      goto LABEL_123;
                    }
                  }
                }
              }

              else if (dword_1EB75DE40)
              {
                goto LABEL_123;
              }
            }
          }

          else if (dword_1EB75DE40)
          {
            goto LABEL_123;
          }
        }

        else if (dword_1EB75DE40)
        {
          goto LABEL_123;
        }

        **(a1 + 48) = 0;
        goto LABEL_104;
      }
    }

    CFRelease(active);
    goto LABEL_25;
  }

  if (!dword_1EB75DE40)
  {
    goto LABEL_61;
  }

LABEL_60:
  v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_61:
  v53 = 0;
  *(*(*(a1 + 32) + 8) + 24) = cmsmGetUpdatedSystemSoundPlayFlags(*(a1 + 64), *(a1 + 68), *(a1 + 74), *(a1 + 75), *(a1 + 76), *(a1 + 56), 0, &v53, *(a1 + 72));
  if (FigGetUpTimeNanoseconds() - UpTimeNanoseconds >= 1000001000)
  {
    v22 = *(a1 + 64);
    v23 = *(*(a1 + 32) + 8);
    if (CMSMDeviceState_ItsAnAppleTV())
    {
      v24 = *(v23 + 24);
      *(v23 + 24) = 0;
      gCMSS_2 = 1;
      if (gCMSS_10)
      {
        dispatch_source_cancel(gCMSS_10);
        if (gCMSS_10)
        {
          dispatch_release(gCMSS_10);
          gCMSS_10 = 0;
        }
      }

      v25 = MXGetSerialQueue();
      gCMSS_10 = MXDispatchUtilityCreateOneShotTimer(0.25, "cmsmRunSystemSoundWatchdogForAppleTV", "CMSessionManager_SystemSounds.m", 3468, 0, 0, v25, &__block_literal_global_200_0, 0, 0);
      if (!gCMSS_10)
      {
        gCMSS_2 = 0;
      }

      if ((v24 & 8) != 0)
      {
        CMSessionMgrSystemSoundDidFinish(v22);
      }
    }
  }

  v26 = *(*(a1 + 32) + 8);
  v27 = *(v26 + 24);
  if (v27)
  {
    ++gCMSS_8;
    v28 = v27 | 8;
  }

  else
  {
    v28 = v27 & 0xFFFFFFF6;
  }

  *(v26 + 24) = v28;
  v29 = *(*(*(a1 + 32) + 8) + 24);
  if ((v29 & 2) != 0)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"VibeWillStart", 0, 0, 1u);
    v29 = *(*(*(a1 + 32) + 8) + 24);
  }

  v31 = *(a1 + 64);
  v32 = v53;
  IsBluetoothSharingSessionEnabledForMediaPlayback = CMSUtility_IsBluetoothSharingSessionEnabledForMediaPlayback();
  if ((v29 & v32 & 1) != 0 && !IsBluetoothSharingSessionEnabledForMediaPlayback)
  {
    v34 = CMSM_IDSConnection_CopySharedAudioRoutePortIDs();
    A2DPPort = cmsmGetA2DPPort(v34);
    if (v34)
    {
      CFRelease(v34);
    }

    if (A2DPPort && vaeDoesPortSupportMultipleConnections(A2DPPort))
    {
      if (vaeDoesBTPortSupportInEarDetection(A2DPPort))
      {
        ShouldBTPortBeTreatedAsInEar = CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(A2DPPort);
      }

      else
      {
        ShouldBTPortBeTreatedAsInEar = 1;
      }
    }

    else
    {
      ShouldBTPortBeTreatedAsInEar = 0;
    }

    if (!CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote())
    {
      if (CMSMDeviceState_ItsAnAppleWatch())
      {
        v37 = v31 == 1413 || v31 == 1403;
        v38 = v37;
      }

      else
      {
        v38 = 1;
      }

      if ((ShouldBTPortBeTreatedAsInEar & v38) == 1 && !vaeGetBTPortOwnsSharedAudioConnection(A2DPPort))
      {
        v44 = CMSM_IDSConnection_CopySharedAudioRoutePortIDs();
        v45 = cmsmGetA2DPPort(v44);
        if (v44)
        {
          CFRelease(v44);
        }

        if (v45)
        {
          *(*(*(a1 + 40) + 8) + 24) = vaeRequestOwnershipOnBTPort(v45);
          if (!*(*(*(a1 + 40) + 8) + 24))
          {
            vaeMakePortRoutable(v45, 1, 0, qword_1EB75E190);
          }
        }
      }
    }
  }

  v39 = *(a1 + 64);
  v40 = CFDictionaryGetValue(gSystemSoundIDToCategory, v39);
  if (v40)
  {
    v41 = 0;
  }

  else
  {
    v41 = v39 > 0x1000;
  }

  if (v41)
  {
    v40 = @"ThirdPartySystemSound";
  }

  CMSystemsoundMgr_GetMappedBehaviorCategory(v40);
  if (dword_1EB75DE40)
  {
    v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  **(a1 + 48) = *(*(*(a1 + 32) + 8) + 24);
LABEL_104:
  v43 = *MEMORY[0x1E69E9840];
}

uint64_t __cmsmSkipPlayingSystemSound_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F28AF728, &unk_1F28AF740, 0}];
  cmsmSkipPlayingSystemSound_unskippableSystemSounds = result;
  return result;
}

uint64_t cmsmSystemSoundShouldPlayDuringRecording(int a1)
{
  result = 1;
  if (a1 <= 1152)
  {
    if (((a1 - 1061) > 0x3D || ((1 << (a1 - 37)) & 0x37FE800000004001) == 0) && (a1 - 30) >= 0xA)
    {
      return 0;
    }
  }

  else if (a1 <= 1262)
  {
    v3 = a1 - 1153;
    if (v3 > 0x3A || ((1 << v3) & 0x7FF800000000003) == 0)
    {
      return 0;
    }
  }

  else if (((a1 - 1364) > 0x28 || ((1 << (a1 - 84)) & 0x1003C00000FLL) == 0) && ((a1 - 1263) > 0xB || ((1 << (a1 + 17)) & 0xF83) == 0) && (a1 - 1556) >= 2)
  {
    return 0;
  }

  return result;
}

BOOL cmsmVibrationForSystemSoundCanBeAlteredBasedOnSystemState(unsigned int a1)
{
  if (a1 > 0x1000)
  {
    return 1;
  }

  result = 1;
  if (a1 - 1000 > 0xF || ((1 << (a1 + 24)) & 0x808B) == 0)
  {
    return a1 == 1106;
  }

  return result;
}

uint64_t cmsmAddPrewarmedAudioCategoriesThatMixIn(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  for (i = gCMSS_0; i; i = *i)
  {
    if (FigCFEqual() && *(i + 12) == a1 && *(i + 18) && (*(i + 8) - 1103) <= 2)
    {
      FigSimpleMutexLock();
      v5 = gCMSS_7;
      if ([+[MXSessionManager defaultVADID]&& v5 sharedInstance]
      {
        v6 = [v5 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a1)}];
        if (!v6)
        {
          v6 = [MEMORY[0x1E696AB50] set];
          [v5 setObject:v6 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a1)}];
        }

        [v6 addObject:a2];
      }

      FigSimpleMutexUnlock();
    }
  }

  return FigSimpleMutexUnlock();
}

float cmsmGetSystemSoundVolumeScalarForCurrentRoute(__CFString *a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (PVMGetEnabled())
  {
    v4 = cmsmCopySystemSoundAudioBehaviorDictionaryForAudioCategory(a1, a2);
    CurrentSystemSoundVADForAudioBehaviour = cmsGetCurrentSystemSoundVADForAudioBehaviour();
    v6 = PVMGetCurrentPreferredRawVolume();
    if (v4)
    {
      CFRelease(v4);
    }

    cmsmGetSystemSoundVolumeScalarForRawVolume(a1, CurrentSystemSoundVADForAudioBehaviour, v6);
    v8 = v7;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v8 = 1.0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

void cmsmGetSystemSoundVolumeScalarForRawVolume(const __CFString *a1, uint64_t a2, float a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  cmsmGetSystemSoundMaxVolume(a1);
  v7 = v6;
  v8 = PVMGetEnabled();
  v9 = v8;
  if (v7 < a3)
  {
    PVMSetEnabled(1);
    v19 = v7;
    v20 = a3;
    v10 = cmsmConvertToDecibelInVAD(a2, &v19);
    if (cmsmConvertToDecibelInVAD(a2, &v20) | v10 || a1 && CFStringHasPrefix(a1, @"JBL") || FigCFEqual())
    {
      v11 = 1.0;
      if (a3 != 0.0)
      {
        v11 = a3;
      }

      v21 = v7 / v11;
      if (!dword_1EB75DE40)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v21 = v19 - v20;
      cf[0] = 0;
      v13 = qword_1EB75E090;
      v14 = *(*(CMBaseObjectGetVTable() + 24) + 8);
      if (v14)
      {
        v14(v13, 0x1F289B9B0, *MEMORY[0x1E695E480], &v21, cf);
        v15 = cf[0];
      }

      else
      {
        v15 = 0;
      }

      ValueFloat32 = MXCFNumberGetValueFloat32(v15);
      v21 = *&ValueFloat32;
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (!dword_1EB75DE40)
      {
        goto LABEL_20;
      }
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_20:
    PVMSetEnabled(v9);
    cmsmGetAdjustedVolumeScalarForReceiverRoutes(v21, a3);
    v18 = *MEMORY[0x1E69E9840];
    return;
  }

  PVMSetEnabled(v8);
  v12 = *MEMORY[0x1E69E9840];

  cmsmGetAdjustedVolumeScalarForReceiverRoutes(1.0, a3);
}

float cmsmGetAdjustedVolumeScalarForReceiverRoutes(float a1, float a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!FigCFArrayContainsValue() && !FigCFArrayContainsValue())
  {
    goto LABEL_13;
  }

  if (a2 <= 0.5)
  {
    v5 = fminf(a1, 0.5);
  }

  else
  {
    v4 = (1.0 - a2);
    if (v4 < 0.3)
    {
      v4 = 0.3;
    }

    v5 = v4 <= a1 ? v4 : a1;
  }

  if (v5 != a1)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
LABEL_13:
    v5 = a1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t cmsmConvertToDecibelInVAD(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 4294954315;
  }

  cf = 0;
  v4 = qword_1EB75E090;
  v5 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (v5)
  {
    v6 = v5(v4, 0x1F289BA70, *MEMORY[0x1E695E480], a1, a2, &cf);
    v7 = cf;
  }

  else
  {
    v7 = 0;
    v6 = 4294954514;
  }

  ValueFloat32 = MXCFNumberGetValueFloat32(v7);
  *a2 = LODWORD(ValueFloat32);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void __cmsmRunSystemSoundWatchdogForAppleTV_block_invoke()
{
  if (gCMSS_10)
  {
    dispatch_source_cancel(gCMSS_10);
    if (gCMSS_10)
    {
      dispatch_release(gCMSS_10);
      gCMSS_10 = 0;
    }
  }

  gCMSS_2 = 0;
}

__CFArray *cmsmCopySessionsToUnduck(unsigned int a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = [[MXDuckingSource alloc] initWithType:0 ID:a1 duckVolume:0.0 duckFadeDuration:0.0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if ([+[MXSessionManager isSessionDucked:"isSessionDucked:duckingSource:"]
        {
          CFArrayAppendValue(Mutable, v8);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void cmsmUnduckSessions(const __CFArray *a1, unsigned int a2, _BYTE *a3)
{
  Count = CFArrayGetCount(a1);
  [+[MXSessionManager sharedInstance](MXSessionManager startAsyncDuckingOperation];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v9 = [[MXDuckingSource alloc] initWithType:0 ID:a2 duckVolume:0.0 duckFadeDuration:0.0];
      [+[MXSessionManager sharedInstance](MXSessionManager unduckVolume:"unduckVolume:sessionCausingUnduck:duckingSource:" sessionCausingUnduck:ValueAtIndex duckingSource:0, v9];
    }
  }

  if (a3)
  {
    [+[MXSessionManager sharedInstance](MXSessionManager mostRecentDuckFadeDuration];
    *a3 |= v10 > 0.0;
  }
}

uint64_t __cmsmSystemSoundDidFinishGuts_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = 0;
  result = cmsmSystemSoundDidFinishGuts(v1, 1, &v5);
  if (v5)
  {
    v3 = +[MXSessionManager sharedInstance];
    LODWORD(v4) = 0.5;
    return [(MXSessionManager *)v3 sleepForAsyncDucking:0 duration:v4];
  }

  return result;
}

uint64_t __cmsmVibrateForSystemSoundInternal_block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        if ([v7 isActive] && objc_msgSend(v7, "isPlaying") && (objc_msgSend(v7, "isVibrating") & 1) != 0)
        {

          result = 4294954313;
          goto LABEL_24;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = *(a1 + 64);
  Value = CFDictionaryGetValue(gSystemSoundIDToCategory, v8);
  if (Value)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 > 0x1000;
  }

  if (v10)
  {
    v11 = @"ThirdPartySystemSound";
  }

  else
  {
    v11 = Value;
  }

  if (v11)
  {
    v12 = gSystemSoundVibrationPatterns == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    goto LABEL_22;
  }

  v15 = *(a1 + 40);
  if (!v15)
  {
    ValueWithDefaultAsFallback = cmsmCFDictionaryGetValueWithDefaultAsFallback(gSystemSoundVibrationPatterns, v11);
    if (!ValueWithDefaultAsFallback)
    {
      if (*(a1 + 64) == 36)
      {
        v15 = 0;
        goto LABEL_30;
      }

LABEL_22:
      result = 4294954315;
      goto LABEL_24;
    }

    v15 = ValueWithDefaultAsFallback;
    if (!CFDictionaryGetCount(ValueWithDefaultAsFallback))
    {
      v15 = 0;
    }
  }

  if (*(a1 + 64) != 36)
  {
    if (v15)
    {
      goto LABEL_34;
    }

    goto LABEL_22;
  }

LABEL_30:
  v17 = MX_FeatureFlags_IsCallConnectHapticsEnabled();
  result = 4294954315;
  if (!v17 || !v15)
  {
    goto LABEL_24;
  }

LABEL_34:
  if (FigCFArrayContainsValue())
  {
    v18 = 1;
  }

  else
  {
    v18 = FigCFArrayContainsValue() != 0;
  }

  if (FigCFArrayContainsValue())
  {
    v19 = 1;
  }

  else
  {
    v19 = FigCFArrayContainsValue() != 0;
  }

  if (CMSMUtility_IsPhoneCallActive() && (v18 || v19) && cmsmVibrationForSystemSoundCanBeAlteredBasedOnSystemState(*(a1 + 64)) && CMSMUtility_VibrationPatternIsActuallyGoingToVibe(v15))
  {
    v20 = v18 ? @"DefaultShort_ReceiverActive" : @"DefaultShort_SpeakerphoneActive";
    v21 = cmsmCFDictionaryGetValueWithDefaultAsFallback(gSystemSoundVibrationPatterns, v20);
    v15 = v21;
    if (v21)
    {
      if (!CFDictionaryGetCount(v21))
      {
        goto LABEL_22;
      }
    }
  }

  v22 = cmsmCopyCurrentActiveRouteTypeAtIndex(0);
  valuePtr = 1065353216;
  if (v22)
  {
    v23 = v22;
    v24 = cmsmCFDictionaryGetValueWithDefaultAsFallback(gSystemSoundMaxVibrationIntensity, v22);
    if (v24)
    {
      CFNumberGetValue(v24, kCFNumberFloatType, &valuePtr);
      v25 = 1;
    }

    else
    {
      v25 = 0;
    }

    CFRelease(v23);
    v26 = *&valuePtr;
  }

  else
  {
    v25 = 0;
    v26 = 1.0;
  }

  result = FigVibratorPlayVibrationWithDictionary(v15, v25, *(a1 + 48), *(a1 + 68), *(a1 + 56), *(a1 + 69), 0, v26);
LABEL_24:
  *(*(*(a1 + 32) + 8) + 24) = result;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

const void *cmsmCFDictionaryGetValueWithDefaultAsFallback(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      result = CFDictionaryGetValue(theDict, a2);
      if (!result)
      {

        return CFDictionaryGetValue(theDict, @"Default");
      }
    }
  }

  return result;
}

uint64_t routingSession_getClassID(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&routingSession_getClassID_sFigRoutingSessionClassDesc, ClassID, 1, a1);
}

uint64_t FigRoutingSessionGetTypeID()
{
  if (_MergedGlobals_11 != -1)
  {
    FigRoutingSessionGetClassID_cold_1();
  }

  v1 = qword_1ED6D2FB0;

  return MEMORY[0x1EEDBB488](v1);
}

uint64_t getAAAudioSessionControlClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__15;
  v0 = getAAAudioSessionControlClass_softClass;
  v7 = __Block_byref_object_dispose__15;
  v8 = getAAAudioSessionControlClass_softClass;
  if (!getAAAudioSessionControlClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getAAAudioSessionControlClass_block_invoke;
    v2[3] = &unk_1E7AE73A0;
    v2[4] = &v3;
    __getAAAudioSessionControlClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B195224C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B19567F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

Class __getAAAudioSessionControlClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AudioAccessoryServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AudioAccessoryServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7AECCE0;
    v7 = 0;
    AudioAccessoryServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AudioAccessoryServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AAAudioSessionControl");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAAAudioSessionControlClass_block_invoke_cold_1();
  }

  getAAAudioSessionControlClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AudioAccessoryServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AudioAccessoryServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B195B298(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x3F8]);
  _Unwind_Resume(a1);
}

__CFString *PowerManager_GetClientTypeFromID(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 6)
  {
    v1 = @"haptics";
  }

  if (a1 == 5)
  {
    return @"audio";
  }

  else
  {
    return v1;
  }
}

CFMutableDictionaryRef PowerManager_CreatePowerBudgetRequestDict(const __CFDictionary *a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    Count = FigCFDictionaryGetCount();
    v13 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(a1, v13, 0);
    if (Count >= 1)
    {
      v5 = v13;
      do
      {
        v6 = *v5;
        if (a1)
        {
          Value = CFDictionaryGetValue(a1, *v5);
          if (Value)
          {
            v8 = Value;
            if (CFArrayGetCount(Value) != 2)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            CFArrayGetValueAtIndex(v8, a2 != 0);
          }

          else
          {
            v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        FigCFDictionarySetValue();
        ++v5;
        --Count;
      }

      while (Count);
    }

    free(v13);
  }

  v11 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void *__getkRTCReportingSessionInfoClientTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoClientType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t RTCReportingLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!RTCReportingLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __RTCReportingLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7AECDA8;
    v6 = 0;
    RTCReportingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = RTCReportingLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!RTCReportingLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __RTCReportingLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RTCReportingLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getkRTCReportingSessionInfoClientVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoClientVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoClientVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingSessionInfoSessionIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoSessionID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingSessionInfoBatchEventSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoBatchEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoBatchEventSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingSessionInfoClientBundleIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoClientBundleID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoClientBundleIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingUserInfoClientNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingUserInfoClientName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingUserInfoClientNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingUserInfoServiceNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingUserInfoServiceName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingUserInfoServiceNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getRTCReportingClass_block_invoke(uint64_t a1)
{
  RTCReportingLibrary();
  result = objc_getClass("RTCReporting");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getRTCReportingClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getRTCReportingClass_block_invoke_cold_1();
    return __getkRTCReportingMessageParametersCategorySymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getkRTCReportingMessageParametersCategorySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingMessageParametersCategory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingMessageParametersCategorySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingMessageParametersTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingMessageParametersType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingMessageParametersTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingMessageParametersPayloadSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingMessageParametersPayload");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingMessageParametersPayloadSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

float FigRoutingSessionManagerGetConfidenceThresholds(float *a1, float *a2)
{
  if (a1)
  {
    routingSessionManager_getConfiguration(&v8);
    FigGetCFPreferenceDoubleWithDefault();
    result = v4;
    *a1 = result;
  }

  if (a2)
  {
    routingSessionManager_getConfiguration(&v7);
    FigGetCFPreferenceDoubleWithDefault();
    result = v6;
    *a2 = result;
  }

  return result;
}

uint64_t FigRoutingSessionManagerCopyLongFormVideoManager(uint64_t a1, CFTypeRef *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (!a2)
  {
    goto LABEL_9;
  }

  if (routingSessionManager_getSingletonQueue_sSingletonQueueOnce != -1)
  {
    FigRoutingSessionManagerCopyLongFormVideoManager_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigRoutingSessionManagerCopyLongFormVideoManager_block_invoke;
  block[3] = &unk_1E7AE73A0;
  block[4] = &v8;
  dispatch_sync(routingSessionManager_getSingletonQueue_sSingletonQueue, block);
  v3 = v9[3];
  if (v3)
  {
    v4 = 0;
    *a2 = CFRetain(v3);
  }

  else
  {
LABEL_9:
    v4 = FigSignalErrorAtGM();
  }

  v5 = v9[3];
  if (v5)
  {
    CFRelease(v5);
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_1B195D93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef __FigRoutingSessionManagerCopyLongFormVideoManager_block_invoke(uint64_t a1)
{
  result = sLongFormVideoManager;
  if (sLongFormVideoManager)
  {
    result = CFRetain(sLongFormVideoManager);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t FigRoutingSessionManagerInit(const void *a1)
{
  if (a1)
  {
    CFRetain(a1);
    if (routingSessionManager_getSingletonQueue_sSingletonQueueOnce != -1)
    {
      FigRoutingSessionManagerInit_cold_1();
    }

    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __FigRoutingSessionManagerInit_block_invoke;
    v3[3] = &__block_descriptor_40_e5_v8__0l;
    v3[4] = a1;
    MXDispatchAsync("FigRoutingSessionManagerInit", "FigRoutingSessionManager.m", 3565, 0, 0, routingSessionManager_getSingletonQueue_sSingletonQueue, v3);
    return 0;
  }

  else
  {
    FigRoutingSessionManagerInit_cold_2(&v4);
    return v4;
  }
}

void __FigRoutingSessionManagerInit_block_invoke(uint64_t a1)
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  if (sLongFormVideoManager)
  {
    goto LABEL_64;
  }

  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 32);
  v4 = objc_autoreleasePoolPush();
  getpid();
  SInt32 = FigCFNumberCreateSInt32();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  FigRoutingSessionManagerGetClassID();
  if (CMDerivedObjectCreate())
  {
    goto LABEL_47;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    v7 = CFRetain(v3);
  }

  else
  {
    v7 = 0;
  }

  *DerivedStorage = v7;
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.coremedia.routing-session-manager.session-expiration", v8);
  *(DerivedStorage + 32) = v9;
  if (!v9)
  {
    __FigRoutingSessionManagerInit_block_invoke_cold_1();
LABEL_47:
    v13 = 0;
    v14 = 0;
    goto LABEL_57;
  }

  v10 = FigSimpleMutexCreate();
  *(DerivedStorage + 40) = v10;
  if (!v10)
  {
    goto LABEL_47;
  }

  Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 104) = Mutable;
  if (!Mutable)
  {
    goto LABEL_47;
  }

  v12 = CFArrayCreate(v2, 0, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 48) = v12;
  if (!v12)
  {
    goto LABEL_47;
  }

  v13 = CFStringCreateWithFormat(v2, 0, @"FigRoutingSessionManager - %p", 0);
  v14 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt();
  LODWORD(valuePtr[0]) = 0;
  getpid();
  v15 = FigCFNumberCreateSInt32();
  CFNumberGetValue(v15, kCFNumberSInt32Type, valuePtr);
  v16 = [MXSystemController alloc];
  v17 = [(MXSystemController *)v16 initWithPID:LODWORD(valuePtr[0])];
  *(DerivedStorage + 16) = v17;
  v18 = v17;

  if (v15)
  {
    CFRelease(v15);
  }

  if (FigRouteDiscovererCreate(v2, v14, (DerivedStorage + 8)))
  {
    goto LABEL_57;
  }

  v19 = *(DerivedStorage + 8);
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v20)
  {
    goto LABEL_57;
  }

  if (v20(v19, @"clientPID", SInt32))
  {
    goto LABEL_57;
  }

  v21 = *(DerivedStorage + 8);
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v22 || v22(v21, @"clientName", v13))
  {
    goto LABEL_57;
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  LODWORD(v54) = 0;
  valuePtr[0] = MEMORY[0x1E69E9820];
  valuePtr[1] = 3221225472;
  valuePtr[2] = __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke;
  valuePtr[3] = &unk_1E7AE73A0;
  valuePtr[4] = &v51;
  if (routingSessionManager_loadAirPlayRoutePredictionFramework_onceToken != -1)
  {
    dispatch_once(&routingSessionManager_loadAirPlayRoutePredictionFramework_onceToken, valuePtr);
  }

  _Block_object_dispose(&v51, 8);
  *(DerivedStorage + 24) = [sARPRoutePredictorClass routePredictor];
  CMNotificationCenterGetDefaultLocalCenter();
  v23 = *DerivedStorage;
  v24 = *(DerivedStorage + 32);
  if (FigNotificationCenterAddWeakListener())
  {
    goto LABEL_57;
  }

  context = v4;
  CMNotificationCenterGetDefaultLocalCenter();
  v25 = *(DerivedStorage + 8);
  v26 = *(DerivedStorage + 32);
  if (FigNotificationCenterAddWeakListener())
  {
    goto LABEL_57;
  }

  v51 = @"SomeLongFormVideoClientIsActiveOverAirPlayVideoDidChange";
  v52 = @"SomeLongFormVideoClientIsPlayingOverAirPlayVideo";
  v53 = @"SomeLongFormVideoClientIsPlayingDidChange";
  v54 = @"SomeSharePlayCapableCallSessionIsActiveDidChange";
  [*(DerivedStorage + 16) setAttributeForKey:@"SubscribeToNotifications" andValue:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v51, 4)}];
  CMNotificationCenterGetDefaultLocalCenter();
  v27 = *(DerivedStorage + 16);
  v28 = *(DerivedStorage + 32);
  if (FigNotificationCenterAddWeakListener())
  {
    goto LABEL_57;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v29 = *(DerivedStorage + 16);
  if (FigNotificationCenterAddWeakListener())
  {
    goto LABEL_57;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v30 = *(DerivedStorage + 16);
  if (FigNotificationCenterAddWeakListener())
  {
    goto LABEL_57;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v31 = *(DerivedStorage + 16);
  v32 = *(DerivedStorage + 32);
  FigNotificationCenterAddWeakListener();
  if (*(DerivedStorage + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v33 = *(DerivedStorage + 24);
    if (FigNotificationCenterAddWeakListener())
    {
      goto LABEL_57;
    }
  }

  cf = 0;
  v34 = *CMBaseObjectGetDerivedStorage();
  v35 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v35 && !v35(v34, &cf))
  {
    if (routingSessionManager_routeIsBuiltIn(cf))
    {
      if (dword_1EB75DF00)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      routingSessionManager_establishRoutingSessionFromCurrentRoutes(0, cf, @"Initial routes from FigRoutingContext");
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  *(DerivedStorage + 112) = routingSessionManager_copyEligibleInEarHeadphones(*(DerivedStorage + 8));
  routingSessionManager_updateSessionFromLatestInEarHeadphones();
  *(DerivedStorage + 120) = [*(DerivedStorage + 16) someSharePlayCapableCallSessionIsActive];
  routingSessionManager_updateSessionFromLatestActiveStatusOfSharePlayCapableCallSession();
  routingSessionManager_updatePredictedDestinations(0, &__block_literal_global_105);
  v37 = dlopen("/System/Library/PrivateFrameworks/MobileWiFi.framework/MobileWiFi", 1);
  v38 = v37;
  if (!v37)
  {
    goto LABEL_45;
  }

  v39 = dlsym(v37, "WiFiManagerClientCreate");
  sMobileWiFiWiFiManagerClientCreate = v39;
  if (!v39)
  {
    goto LABEL_45;
  }

  sFigNetworkInterfaceMonitorWifiManagerClient = v39(v2, 0);
  if (!sFigNetworkInterfaceMonitorWifiManagerClient)
  {
LABEL_56:
    dlclose(v38);
    goto LABEL_57;
  }

  v40 = dlsym(v38, "WiFiManagerClientCopyDevices");
  sMobileWiFiWiFiManagerClientCopyDevices = v40;
  if (!v40)
  {
    goto LABEL_45;
  }

  v41 = v40(sFigNetworkInterfaceMonitorWifiManagerClient);
  v42 = v41;
  if (!v41 || !CFArrayGetCount(v41))
  {
LABEL_51:
    if (sFigNetworkInterfaceMonitorWifiManagerClient)
    {
      CFRelease(sFigNetworkInterfaceMonitorWifiManagerClient);
    }

    if (v42)
    {
      CFRelease(v42);
    }

    if (!v38)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v42, 0);
  sFigRoutingSessionManagerWiFiDevice = ValueAtIndex;
  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

  CFRelease(v42);
  v42 = dlsym(v38, "WiFiManagerClientScheduleWithRunLoop");
  sMobileWiFiWiFiManagerClientScheduleWithRunLoop = v42;
  if (!v42)
  {
LABEL_50:
    v4 = context;
    goto LABEL_51;
  }

  v44 = sFigNetworkInterfaceMonitorWifiManagerClient;
  Main = CFRunLoopGetMain();
  (v42)(v44, Main, *MEMORY[0x1E695E8E0]);
  v46 = dlsym(v38, "WiFiDeviceClientRegisterPowerCallback");
  sWiFiDeviceClientRegisterPowerCallback = v46;
  if (!v46)
  {
    v42 = 0;
    goto LABEL_50;
  }

  v46(sFigRoutingSessionManagerWiFiDevice, routingSessionManager_wifiPowerStatusChanged, 0);
  sWiFiDeviceClientGetPower = dlsym(v38, "WiFiDeviceClientGetPower");
  v4 = context;
  if (!sWiFiDeviceClientGetPower)
  {
LABEL_45:
    v42 = 0;
    goto LABEL_51;
  }

LABEL_57:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  objc_autoreleasePoolPop(v4);
LABEL_64:
  v47 = *(a1 + 32);
  if (v47)
  {
    CFRelease(v47);
  }

  v48 = *MEMORY[0x1E69E9840];
}

void routingSessionManager_updateConfiguration(const void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a1, @"RoutingSessionManagerConfiguration");
      if (Value)
      {
        v4 = Value;
        v5 = CFGetTypeID(Value);
        if (v5 == CFDictionaryGetTypeID())
        {
          v6 = MGCopyAnswer();
          FigSimpleMutexLock();
          if (CFDictionaryContainsKey(v4, @"RoutePredictionsDisabled"))
          {
            v7 = CFDictionaryGetValue(v4, @"RoutePredictionsDisabled");
            if (v7)
            {
              v8 = CFGetTypeID(v7);
              if (v8 == CFDictionaryGetTypeID())
              {
                if (FigCFDictionaryGetBooleanIfPresent())
                {
                  if (dword_1EB75DF00)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  LOBYTE(gConfiguration) = 1;
                }
              }
            }
          }

          if (CFDictionaryContainsKey(v4, @"AutoRoutingDisabled"))
          {
            v10 = CFDictionaryGetValue(v4, @"AutoRoutingDisabled");
            if (v10)
            {
              v11 = CFGetTypeID(v10);
              if (v11 == CFDictionaryGetTypeID())
              {
                if (FigCFDictionaryGetBooleanIfPresent())
                {
                  if (dword_1EB75DF00)
                  {
                    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  BYTE1(gConfiguration) = 1;
                }
              }
            }
          }

          if (FigCFDictionaryGetFloatIfPresent() && -1.0 >= 0.0 && -1.0 <= 1.0)
          {
            if (dword_1EB75DF00)
            {
              v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            DWORD1(gConfiguration) = -1082130432;
          }

          if (FigCFDictionaryGetFloatIfPresent() && -1.0 >= 0.0 && -1.0 <= 1.0)
          {
            if (dword_1EB75DF00)
            {
              v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            DWORD2(gConfiguration) = -1082130432;
          }

          if (FigCFDictionaryGetDoubleIfPresent() && -1.0 >= 0.0)
          {
            if (dword_1EB75DF00)
            {
              v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *&xmmword_1EB75D788 = 0xBFF0000000000000;
          }

          if (FigCFDictionaryGetDoubleIfPresent() && -1.0 >= 0.0)
          {
            if (dword_1EB75DF00)
            {
              v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *(&xmmword_1EB75D788 + 1) = 0xBFF0000000000000;
          }

          if (FigCFDictionaryGetDoubleIfPresent() && -1.0 >= 0.0)
          {
            if (dword_1EB75DF00)
            {
              v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *&xmmword_1EB75D798 = 0xBFF0000000000000;
          }

          if (FigCFDictionaryGetDoubleIfPresent() && -1.0 >= 0.0)
          {
            if (dword_1EB75DF00)
            {
              v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *(&xmmword_1EB75D798 + 1) = 0xBFF0000000000000;
          }

          if (FigCFDictionaryGetDoubleIfPresent() && -1.0 >= 0.0)
          {
            if (dword_1EB75DF00)
            {
              v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *&xmmword_1EB75D7A8 = -1.0 * 60.0;
          }

          if (FigCFDictionaryGetDoubleIfPresent() && -1.0 >= 0.0)
          {
            if (dword_1EB75DF00)
            {
              v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *(&xmmword_1EB75D7A8 + 1) = 0xBFF0000000000000;
          }

          if (FigCFDictionaryGetDoubleIfPresent() && -1.0 >= 0.0)
          {
            if (dword_1EB75DF00)
            {
              v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *&xmmword_1EB75D7B8 = 0xBFF0000000000000;
          }

          if (FigCFDictionaryGetDoubleIfPresent() && -1.0 >= 0.0)
          {
            if (dword_1EB75DF00)
            {
              v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *(&xmmword_1EB75D7B8 + 1) = -1.0 * 60.0;
          }

          FigSimpleMutexUnlock();
          if (v6)
          {
            CFRelease(v6);
          }
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

dispatch_queue_t __routingSessionManager_getSingletonQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.coremedia.routingsessionmanager.singleton", v0);
  routingSessionManager_getSingletonQueue_sSingletonQueue = result;
  return result;
}

uint64_t routingSessionManager_airPlayVideoActiveChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(CMBaseObjectGetDerivedStorage() + 16) != a4)
  {
    return routingSessionManager_airPlayVideoActiveChanged_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t routingSessionManager_airPlayVideoPlayingChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(CMBaseObjectGetDerivedStorage() + 16) != a4)
  {
    return routingSessionManager_airPlayVideoPlayingChanged_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void routingSessionManager_sharePlayCapableCallSessionIsActiveChanged()
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetValue();
  v1 = *MEMORY[0x1E695E4D0];
  v2 = FigCFEqual();
  if (v2 != *(DerivedStorage + 120))
  {
    v4 = v2;
    if (dword_1EB75DF00)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(DerivedStorage + 120) = v4;
    routingSessionManager_updateSessionFromLatestActiveStatusOfSharePlayCapableCallSession();
  }

  v3 = *MEMORY[0x1E69E9840];
}

void routingSessionManager_predictionsForCurrentContextUpdated(uint64_t a1, const void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  routingSessionManager_updatePredictedDestinations(a2, &__block_literal_global_256);
  v4 = *MEMORY[0x1E69E9840];
}

void routingSessionManager_Finalize()
{
  v0 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v2 = *DerivedStorage;
    FigNotificationCenterRemoveWeakListener();
  }

  if (*(DerivedStorage + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = *(DerivedStorage + 8);
    FigNotificationCenterRemoveWeakListener();
  }

  if (*(DerivedStorage + 16))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v4 = *(DerivedStorage + 16);
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    v5 = *(DerivedStorage + 16);
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    v6 = *(DerivedStorage + 16);
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    v7 = *(DerivedStorage + 16);
    FigNotificationCenterRemoveWeakListener();
  }

  if (*(DerivedStorage + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v8 = *(DerivedStorage + 24);
    FigNotificationCenterRemoveWeakListener();
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v9 = *(DerivedStorage + 8);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(DerivedStorage + 72);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(DerivedStorage + 80);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(DerivedStorage + 40);
  FigSimpleMutexDestroy();
  v13 = *(DerivedStorage + 48);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(DerivedStorage + 104);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(DerivedStorage + 112);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(DerivedStorage + 32);
  if (v16)
  {
    dispatch_release(v16);
  }

  objc_autoreleasePoolPop(v0);
}

__CFString *routingSessionManager_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  cf = 0;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3)
  {
    v3(a1, &cf);
    v3 = cf;
  }

  CFStringAppendFormat(Mutable, 0, @"<FigRoutingSessionManager = %p: currentSession = %@>", a1, v3);
  if (cf)
  {
    CFRelease(cf);
  }

  return Mutable;
}

uint64_t routingSessionManager_CopyCurrentSession(uint64_t a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 72);
  if (!v5)
  {
    v8 = *(DerivedStorage + 40);
    FigSimpleMutexUnlock();
    goto LABEL_5;
  }

  v6 = CFRetain(v5);
  v7 = *(DerivedStorage + 40);
  FigSimpleMutexUnlock();
  if (!v6)
  {
LABEL_5:
    *a2 = 0;
    return 0;
  }

  *a2 = CFRetain(v6);
  CFRelease(v6);
  return 0;
}

uint64_t routingSessionManager_StartSessionForHighConfidenceDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v7)
  {
    result = v7(a1, a2, a3);
  }

  else
  {
    result = 4294954514;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

CFArrayRef routingSessionManager_CopyLikelyDestinations(uint64_t a1, CFTypeRef *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    routingSessionManager_CopyLikelyDestinations_cold_1(v18);
    result = v18[0];
    goto LABEL_19;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  if (sWiFiDeviceClientGetPower)
  {
    v6 = sFigRoutingSessionManagerWiFiDevice == 0;
  }

  else
  {
    v6 = 1;
  }

  if ((v6 || sWiFiDeviceClientGetPower()) && *(v4 + 56))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v8 = Current - MEMORY[0x1B2734210]([*(v4 + 56) microLocationEventDate]);
    routingSessionManager_getConfiguration(v16);
    if (v8 >= v17)
    {
      if (dword_1EB75DF00)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v9 = *(v4 + 48);
      if (v9)
      {
        v10 = CFRetain(v9);
        v11 = *(v4 + 40);
        FigSimpleMutexUnlock();
        if (v10)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }
    }
  }

  v13 = *(v4 + 40);
  FigSimpleMutexUnlock();
LABEL_15:
  result = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  if (!result)
  {
    *a2 = 0;
    goto LABEL_19;
  }

  v10 = result;
LABEL_17:
  *a2 = CFRetain(v10);
  CFRelease(v10);
  result = 0;
LABEL_19:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void routingSessionManager_PrepareForPlayback(const void *a1, uint64_t a2, uint64_t a3)
{
  v32[7] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __routingSessionManager_PrepareForPlayback_block_invoke;
  aBlock[3] = &__block_descriptor_48_e8_v12__0i8l;
  aBlock[4] = a2;
  aBlock[5] = a3;
  v7 = _Block_copy(aBlock);
  Current = CFAbsoluteTimeGetCurrent();
  routingSessionManager_getConfiguration(v28);
  v9 = v29;
  if (dword_1EB75DF00)
  {
    v27 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!routingSessionManager_routePredictionsEnabled())
  {
    v14 = 0;
LABEL_27:
    v7[2](v7, 0);
    goto LABEL_28;
  }

  v11 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v12 = *(DerivedStorage + 104);
  if (v12)
  {
    v13 = CFArrayGetCount(v12) > 0;
  }

  else
  {
    v13 = 0;
  }

  v15 = *(DerivedStorage + 72);
  if (v15)
  {
    v14 = CFRetain(v15);
  }

  else
  {
    v14 = 0;
  }

  v16 = *(DerivedStorage + 96);
  v17 = *(DerivedStorage + 96) != 0;
  *(DerivedStorage + 96) = 0;
  v18 = v17 || v13;
  if (v17 || v13)
  {
    CFArrayAppendValue(*(DerivedStorage + 104), v7);
  }

  v19 = *(DerivedStorage + 64);
  *(DerivedStorage + 64) = 0;
  v20 = *(DerivedStorage + 40);
  FigSimpleMutexUnlock();
  if (v19 && dword_1EB75DF00)
  {
    v27 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v18)
  {
    if (dword_1EB75DF00)
    {
      v27 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_27;
  }

  if (v16)
  {
    if (a1)
    {
      CFRetain(a1);
    }

    if (v14)
    {
      CFRetain(v14);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __routingSessionManager_PrepareForPlayback_block_invoke_110;
    v25[3] = &__block_descriptor_56_e8_v12__0i8l;
    v22 = Current + v9;
    v25[4] = a1;
    v25[5] = DerivedStorage;
    v25[6] = v14;
    if (a1)
    {
      CFRetain(a1);
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __routingSessionManager_routeToDestinationOfCurrentSession_block_invoke;
    v31[3] = &unk_1E7AECE30;
    v31[4] = v25;
    v31[5] = a1;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __routingSessionManager_routeToDestinationOfCurrentSession_block_invoke_2;
    v32[3] = &unk_1E7AECE58;
    v32[4] = v25;
    v32[5] = a1;
    routingSessionManager_discoverRoutes(v31, v32, v22);
  }

LABEL_28:
  if (v14)
  {
    CFRelease(v14);
  }

  _Block_release(v7);
  v24 = *MEMORY[0x1E69E9840];
}

uint64_t routingSessionManager_getAirPlayVideoPlaying(uint64_t a1, _BYTE *a2)
{
  v3 = [*(CMBaseObjectGetDerivedStorage() + 16) someLongFormVideoClientIsPlayingOverAirPlayVideo];
  if (a2)
  {
    v4 = v3;
    result = 0;
    *a2 = v4;
  }

  else
  {
    routingSessionManager_getAirPlayVideoPlaying_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t routingSessionManager_UpdateCurrentSessionFromLikelyDestinations(const void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EB75DF00)
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    CFRetain(a1);
  }

  v8 = *(DerivedStorage + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __routingSessionManager_UpdateCurrentSessionFromLikelyDestinations_block_invoke;
  v11[3] = &__block_descriptor_64_e5_v8__0l;
  v11[4] = a1;
  v11[5] = DerivedStorage;
  v11[6] = a2;
  v11[7] = a3;
  MXDispatchAsync("routingSessionManager_UpdateCurrentSessionFromLikelyDestinations", "FigRoutingSessionManager.m", 1386, 0, 0, v8, v11);
  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t routingSessionManager_StartSuppressingLikelyDestinations(const void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EB75DF00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  *(DerivedStorage + 64) = 1;
  v5 = *(DerivedStorage + 40);
  FigSimpleMutexUnlock();
  routingSessionManager_updatePredictedDestinations(a1, &__block_literal_global_234);
  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t routingSessionManager_StopSuppressingLikelyDestinations(const void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EB75DF00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  *(DerivedStorage + 64) = 0;
  v5 = *(DerivedStorage + 40);
  FigSimpleMutexUnlock();
  routingSessionManager_updatePredictedDestinations(a1, &__block_literal_global_236);
  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t routingSessionManager_routePredictionsEnabled()
{
  if (MX_FeatureFlags_IsCorianderEnabled())
  {
    return 0;
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableRoutePrediction", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  routingSessionManager_getConfiguration(v3);
  if (!LOBYTE(v3[0]) || !keyExistsAndHasValidFormat)
  {
    routingSessionManager_getConfiguration(v2);
    return LOBYTE(v2[0]);
  }

  return AppBooleanValue;
}

uint64_t __routingSessionManager_routeToDestinationOfCurrentSession_block_invoke(uint64_t a1, const __CFArray *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  theDict = 0;
  cf = 0;
  v4 = *(a1 + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = v5(v4, &cf);
  if (v6)
  {
LABEL_60:
    v30 = v6;
LABEL_25:
    v31 = *(a1 + 32);
    if (v31)
    {
      (*(v31 + 16))(v31, v30);
    }

    goto LABEL_27;
  }

  v7 = cf;
  if (cf)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v6 = v8(v7, &theDict);
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_60;
    }

LABEL_24:
    v30 = 4294954514;
    goto LABEL_25;
  }

LABEL_6:
  if (!theDict || (Value = CFDictionaryGetValue(theDict, @"routingSessionDestination_RouteDescriptors")) == 0)
  {
    if (dword_1EB75DF00)
    {
      LODWORD(block[0]) = 0;
      v49[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v35 = block[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v49[0]))
      {
        v36 = v35;
      }

      else
      {
        v36 = v35 & 0xFFFFFFFE;
      }

      if (v36)
      {
        LODWORD(v63) = 136315138;
        *(&v63 + 4) = "routingSessionManager_routeToDestinationOfCurrentSession_block_invoke";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v30 = 0;
    goto LABEL_25;
  }

  v10 = routingSessionManager_copyRouteDescriptorsMatchingPropertiesOfRouteDescriptors(a2, Value, 0);
  v11 = 0;
  if (!v10)
  {
    goto LABEL_28;
  }

  v12 = v10;
  Current = CFAbsoluteTimeGetCurrent();
  routingSessionManager_getConfiguration(v43);
  v14 = Current + v44;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __routingSessionManager_routeToDestinationOfCurrentSession_block_invoke_119;
  v42[3] = &unk_1E7AECE08;
  v15 = *(a1 + 40);
  v42[4] = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v19 = FigNotificationListenerCreate(*DerivedStorage, @"routeConfigUpdated");
  v41 = CFUUIDCreate(v17);
  v20 = CFUUIDCreateString(v17, v41);
  CFDictionarySetValue(Mutable, @"clientRouteRequestID", v20);
  CFDictionarySetValue(Mutable, @"initiator", @"FigRoutingSessionManager");
  v21 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  *(DerivedStorage + 121) = 1;
  v22 = *(DerivedStorage + 40);
  FigSimpleMutexUnlock();
  v23 = ((v14 - CFAbsoluteTimeGetCurrent()) * 1000000000.0);
  if (v15)
  {
    CFRetain(v15);
  }

  v24 = dispatch_time(0, v23);
  v25 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __routingSessionManager_setDestinationOnRoutingContext_block_invoke;
  block[3] = &unk_1E7AECF20;
  block[4] = v42;
  block[5] = DerivedStorage;
  block[6] = v15;
  dispatch_after(v24, v25, block);
  if (v19)
  {
    CFRetain(v19);
  }

  if (v15)
  {
    CFRetain(v15);
  }

  if (v20)
  {
    CFRetain(v20);
  }

  CFRetain(v12);
  *v49 = MEMORY[0x1E69E9820];
  v50 = 3221225472;
  v51 = __routingSessionManager_setDestinationOnRoutingContext_block_invoke_157;
  v52 = &__block_descriptor_56_e9_v16__0_v8l;
  v53 = v20;
  v54 = v12;
  v55 = v19;
  *&v63 = MEMORY[0x1E69E9820];
  *(&v63 + 1) = 3221225472;
  v64 = __routingSessionManager_setDestinationOnRoutingContext_block_invoke_2;
  v65 = &unk_1E7AECF68;
  v66 = v42;
  v67 = DerivedStorage;
  v68 = v15;
  v69 = v19;
  v70 = v20;
  v71 = v12;
  if (FigNotificationListenerStartNotifications(v19, 0, v49, &v63))
  {
    goto LABEL_47;
  }

  v26 = FigRouteDescriptorArrayCopySuccinctDescription(v17, v12);
  if (dword_1EB75DF00)
  {
    v48 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v28 = v48;
    if (os_log_type_enabled(v27, type))
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 & 0xFFFFFFFE;
    }

    if (v29)
    {
      v57 = 136315650;
      v58 = "routingSessionManager_setDestinationOnRoutingContext";
      v59 = 2114;
      v60 = v20;
      v61 = 2114;
      v62 = v26;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v26)
  {
    CFRelease(v26);
  }

  v37 = *DerivedStorage;
  v38 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v38)
  {
LABEL_47:
    v39 = v41;
    goto LABEL_48;
  }

  v39 = v41;
  if (v38(v37, v12, Mutable))
  {
LABEL_48:
    SInt32 = FigCFNumberCreateSInt32();
    FigNotificationListenerStopNotifications(v19, SInt32);
    if (SInt32)
    {
      CFRelease(SInt32);
    }
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  CFRelease(v12);
LABEL_27:
  v11 = 1;
LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  v32 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t FigRoutingSessionCopyDestination(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 16) + 8);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = *(VTable + 16) + 8;

  return v5(a1, a2);
}

CFTypeRef routingSessionManager_copyRouteDescriptorsMatchingPropertiesOfRouteDescriptors(const __CFArray *a1, const __CFArray *a2, int a3)
{
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6 = 0;
  v17 = a2;
  if (!a2)
  {
    goto LABEL_3;
  }

LABEL_2:
  Count = CFArrayGetCount(a2);
LABEL_4:
  if (v6 < Count)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v17, v6);
    CFDictionaryGetValue(ValueAtIndex, @"RouteUID");
    CFDictionaryGetValue(ValueAtIndex, @"RouteName");
    v9 = 0;
    if (a1)
    {
LABEL_6:
      v10 = CFArrayGetCount(a1);
      goto LABEL_8;
    }

    while (1)
    {
      v10 = 0;
LABEL_8:
      if (v9 >= v10)
      {
        break;
      }

      v11 = CFArrayGetValueAtIndex(a1, v9);
      CFDictionaryGetValue(v11, @"RouteUID");
      CFDictionaryGetValue(v11, @"RouteName");
      if (FigCFEqual() || a3 && FigCFEqual())
      {
        if (!v11)
        {
          break;
        }

        CFArrayAppendValue(theArray, v11);
        a2 = v17;
        ++v6;
        if (!v17)
        {
LABEL_3:
          Count = 0;
          goto LABEL_4;
        }

        goto LABEL_2;
      }

      ++v9;
      if (a1)
      {
        goto LABEL_6;
      }
    }
  }

  if (theArray)
  {
    v12 = CFArrayGetCount(theArray);
  }

  else
  {
    v12 = 0;
  }

  v13 = v17;
  if (v17)
  {
    v13 = CFArrayGetCount(v17);
  }

  if (v12 == v13)
  {
    if (theArray)
    {
      v14 = CFRetain(theArray);
LABEL_25:
      CFRelease(theArray);
      return v14;
    }

    return 0;
  }

  else
  {
    v14 = 0;
    result = 0;
    if (theArray)
    {
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t __routingSessionManager_routeToDestinationOfCurrentSession_block_invoke_119(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __routingSessionManager_routeToDestinationOfCurrentSession_block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

void routingSessionManager_vendDiscoveredRoutes(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"RouteDiscoverer");
  cf = 0;
  if (Value)
  {
    v5 = Value;
    VTable = CMBaseObjectGetVTable();
    v7 = *(*(VTable + 8) + 48);
    if (!v7 || (v8 = *(VTable + 8) + 48, v7(v5, @"availableRouteDescriptors", *MEMORY[0x1E695E480], &cf) || (*(a2 + 16))(a2, cf)))
    {
      routingSessionManager_stopDiscovery(a1);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void __routingSessionManager_discoverRoutes_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __routingSessionManager_discoverRoutes_block_invoke_3(uint64_t a1)
{
  routingSessionManager_vendDiscoveredRoutes(*(a1 + 40), *(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __routingSessionManager_discoverRoutes_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  routingSessionManager_stopDiscovery(*(a1 + 32));
  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void routingSessionManager_stopDiscovery(const __CFDictionary *a1)
{
  v2 = *MEMORY[0x1E695E480];
  SInt32 = FigCFNumberCreateSInt32();
  Value = CFDictionaryGetValue(a1, @"NotificationListener");
  v5 = CFDictionaryGetValue(a1, @"RouteDiscoverer");
  v6 = CFDictionaryGetValue(a1, @"TimeoutTimer");
  if (Value)
  {
    FigNotificationListenerStopNotifications(Value, SInt32);
    CFDictionaryRemoveValue(a1, @"NotificationListener");
  }

  if (v5)
  {
    VTable = CMBaseObjectGetVTable();
    v8 = *(*(VTable + 8) + 56);
    if (v8)
    {
      v9 = *(VTable + 8) + 56;
      v8(v5, @"DiscoveryMode", @"DiscoveryMode_None");
    }

    CFDictionaryRemoveValue(a1, @"RouteDiscoverer");
  }

  if (v6)
  {
    dispatch_source_cancel(v6);
    CFDictionaryRemoveValue(a1, @"TimeoutTimer");
  }

  if (SInt32)
  {

    CFRelease(SInt32);
  }
}

void __routingSessionManager_startDiscovery_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  routingSessionManager_stopDiscovery(*(a1 + 32));
  v3 = *MEMORY[0x1E69E9840];
}

void __routingSessionManager_startDiscovery_block_invoke_129(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t FigNotificationListenerStartNotifications(const __CFDictionary *a1, uint64_t a2, const void *a3, const void *a4)
{
  CFDictionaryGetValue(a1, @"notificationCenter");
  CFDictionaryGetValue(a1, @"observedObject");
  CFDictionaryGetValue(a1, @"notificationName");
  Value = CFDictionaryGetValue(a1, @"serializationQueue");
  v8 = _Block_copy(a3);
  v9 = _Block_copy(a4);
  v10 = v9;
  if (v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __FigNotificationListenerStartNotifications_block_invoke;
    v13[3] = &unk_1E7AECEF8;
    v13[5] = v9;
    v13[6] = a1;
    v13[4] = v8;
    dispatch_sync(Value, v13);
    v11 = FigNotificationCenterAddWeakListener();
  }

  else
  {
    FigNotificationListenerStartNotifications_cold_1(&v14);
    v11 = v14;
  }

  _Block_release(v8);
  _Block_release(v10);
  return v11;
}

uint64_t __routingSessionManager_startDiscovery_block_invoke_3(uint64_t a1, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, valuePtr);
  }

  return result;
}

void __FigNotificationListenerStartNotifications_block_invoke(uint64_t a1)
{
  CFDictionarySetValue(*(a1 + 48), @"notificationBlock", *(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);

    CFDictionarySetValue(v3, @"completionBlock", v2);
  }
}

void notificationListener_receivedNotification(int a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Value = CFDictionaryGetValue(theDict, @"serializationQueue");
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__17;
  v14 = __Block_byref_object_dispose__17;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __notificationListener_receivedNotification_block_invoke;
  v9[3] = &unk_1E7AE7168;
  v9[4] = &v10;
  v9[5] = theDict;
  dispatch_sync(Value, v9);
  v8 = v11[5];
  if (v8)
  {
    v8[2](v8, a5);
    v8 = v11[5];
  }

  _Block_release(v8);
  _Block_object_dispose(&v10, 8);
}

void sub_1B1961F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__notificationListener_receivedNotification_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 40), @"notificationBlock");
  result = _Block_copy(Value);
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

uint64_t FigNotificationListenerStopNotifications(const __CFDictionary *a1, uint64_t a2)
{
  CFDictionaryGetValue(a1, @"notificationCenter");
  CFDictionaryGetValue(a1, @"observedObject");
  CFDictionaryGetValue(a1, @"notificationName");
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__17;
  v13 = __Block_byref_object_dispose__17;
  v14 = 0;
  Value = CFDictionaryGetValue(a1, @"serializationQueue");
  v5 = FigNotificationCenterRemoveWeakListener();
  if (!v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __FigNotificationListenerStopNotifications_block_invoke;
    v8[3] = &unk_1E7AE7168;
    v8[4] = &v9;
    v8[5] = a1;
    dispatch_sync(Value, v8);
    v6 = v10[5];
    if (v6)
    {
      (*(v6 + 16))(v6, a2);
    }
  }

  _Block_release(v10[5]);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void sub_1B196212C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __FigNotificationListenerStopNotifications_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 40), @"completionBlock");
  *(*(*(a1 + 32) + 8) + 40) = _Block_copy(Value);
  CFDictionaryRemoveValue(*(a1 + 40), @"notificationBlock");
  v3 = *(a1 + 40);

  CFDictionaryRemoveValue(v3, @"completionBlock");
}

void __routingSessionManager_setDestinationOnRoutingContext_block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1[5] + 40);
  FigSimpleMutexLock();
  v3 = a1[5];
  v4 = *(v3 + 121);
  *(v3 + 121) = 0;
  v5 = *(v3 + 40);
  FigSimpleMutexUnlock();
  if (v4)
  {
    if (dword_1EB75DF00)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    (*(a1[4] + 16))(a1[4], 4294951903);
  }

  v7 = a1[6];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __routingSessionManager_setDestinationOnRoutingContext_block_invoke_157(uint64_t a1, const __CFDictionary *a2)
{
  v4 = objc_autoreleasePoolPush();
  CFDictionaryGetValue(a2, @"routeConfigUpdateID");
  CFDictionaryGetValue(a2, @"routeConfigUpdateReason");
  v5 = *(a1 + 32);
  if (FigCFEqual() && (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual()))
  {
    v6 = *MEMORY[0x1E695E480];
    SInt32 = FigCFNumberCreateSInt32();
    if (gARPFeedback_7)
    {
      if (gARPFeedback_3)
      {
        v8 = *(a1 + 32);
        if (FigCFEqual())
        {
          if (FigCFEqual())
          {
            v9 = routingSessionManager_outputDeviceIDsArrayFromRouteDescriptors(*(a1 + 40));
            gARPFeedback_7(gARPFeedback_3, v9);
          }
        }
      }
    }

    FigNotificationListenerStopNotifications(*(a1 + 48), SInt32);
    if (SInt32)
    {
      CFRelease(SInt32);
    }
  }

  objc_autoreleasePoolPop(v4);
}

id routingSessionManager_outputDeviceIDsArrayFromRouteDescriptors(const __CFArray *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v3 = 0;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a1); v3 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
    if (ValueAtIndex)
    {
      Value = CFDictionaryGetValue(ValueAtIndex, @"RouteUID");
      if (Value)
      {
        [v2 addObject:Value];
      }
    }

    ++v3;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return v2;
}

void __routingSessionManager_setDestinationOnRoutingContext_block_invoke_2(void *a1, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  v3 = *(a1[5] + 40);
  FigSimpleMutexLock();
  v4 = a1[5];
  v5 = *(v4 + 121);
  *(v4 + 121) = 0;
  v6 = *(v4 + 40);
  FigSimpleMutexUnlock();
  if (v5)
  {
    v7 = a1[4];
    if (v7)
    {
      (*(v7 + 16))(v7, valuePtr);
    }
  }

  v8 = a1[6];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[8];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[9];
  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t routingSession_establishedAutomaticallyFromLikelyDestination(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  CMBaseObject = FigRoutingSessionGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v3 = *(*(VTable + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = *(VTable + 8) + 48;
  if (v3(CMBaseObject, @"EstablishedAutomaticallyFromLikelyDestination", *MEMORY[0x1E695E480], &cf))
  {
    v5 = 0;
  }

  else
  {
    v5 = cf == *MEMORY[0x1E695E4D0];
  }

  v6 = v5;
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t routingSession_establishedBasedOnInEarStatusOfConnectedHeadphones()
{
  BOOLean = 0;
  CMBaseObject = FigRoutingSessionGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = v1(CMBaseObject, @"EstablishedBasedOnInEarStatusOfConnectedHeadphones", *MEMORY[0x1E695E480], &BOOLean);
  v3 = BOOLean;
  if (v2)
  {
    Value = 0;
    if (!BOOLean)
    {
      return Value;
    }

    goto LABEL_4;
  }

  Value = CFBooleanGetValue(BOOLean);
  v3 = BOOLean;
  if (BOOLean)
  {
LABEL_4:
    CFRelease(v3);
  }

  return Value;
}

uint64_t routingSession_establishedBasedOnActiveSharePlayCapableCallSession()
{
  BOOLean = 0;
  CMBaseObject = FigRoutingSessionGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = v1(CMBaseObject, @"EstablishedBasedOnActiveSharePlayCapableCallSession", *MEMORY[0x1E695E480], &BOOLean);
  v3 = BOOLean;
  if (v2)
  {
    Value = 0;
    if (!BOOLean)
    {
      return Value;
    }

    goto LABEL_4;
  }

  Value = CFBooleanGetValue(BOOLean);
  v3 = BOOLean;
  if (BOOLean)
  {
LABEL_4:
    CFRelease(v3);
  }

  return Value;
}

void __routingSessionManager_updateSessionExpiration_block_invoke(uint64_t a1)
{
  routingSessionManager_updateSessionExpiration(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t routingSessionManager_createFakePredictionContext()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6[0] = &unk_1F28AF7F0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v1 = [sARPPredictionContextClass alloc];
  v2 = [MEMORY[0x1E695DF00] date];
  result = [v1 initWithPredictionDate:v2 microLocationEventDate:objc_msgSend(MEMORY[0x1E695DF00] microLocationProbabilityVector:{"date"), v0}];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

id __routingSessionManager_waitForRecentPredictions_block_invoke_2(uint64_t a1)
{
  v4 = 0;
  v2 = [*(*(a1 + 40) + 24) predictionsWithCurrentContext:&v4];
  result = v4;
  if (v4)
  {
    result = [objc_msgSend(v4 "microLocationEventDate")];
    if (result == 1)
    {
      [*(a1 + 32) invokeWithRoutePredictions:v2 predictionContext:v4];
      return FigNotificationListenerStopNotifications(*(a1 + 56), 0);
    }
  }

  return result;
}

void __routingSessionManager_waitForRecentPredictions_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __routingSessionManager_waitForRecentPredictions_block_invoke_4(uint64_t a1)
{
  v5 = 0;
  v2 = [*(*(a1 + 40) + 24) predictionsWithCurrentContext:&v5];
  if (v5 && [objc_msgSend(v5 "microLocationEventDate")] == 1)
  {
    [*(a1 + 32) invokeWithRoutePredictions:v2 predictionContext:v5];
    FigNotificationListenerStopNotifications(*(a1 + 56), 0);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }
}

void __routingSessionManager_waitForRecentPredictions_block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) invokeWithRoutePredictions:0 predictionContext:0];
  FigNotificationListenerStopNotifications(*(a1 + 40), 0);
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __routingSessionManager_startSessionIfNecessary_block_invoke(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void *a4, int a5)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    routingSessionManager_updateCurrentSession(*(a1 + 32), 0, 0, 0, 1, 0, 0, 0, 0, 0, @"Top predicted destination not found", 0);
    v7 = 0;
    goto LABEL_58;
  }

  routingSessionManager_getConfiguration(cf);
  FigGetCFPreferenceDoubleWithDefault();
  if (!a3)
  {
    if (dword_1EB75DF00)
    {
      *keyExistsAndHasValidFormat = 0.0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_55:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_56;
    }

    goto LABEL_56;
  }

  v12 = v11;
  Value = CFDictionaryGetValue(a3, @"routingSessionDestination_RouteDescriptors");
  v14 = routingSessionManager_outputDeviceIDsArrayFromRouteDescriptors(Value);
  if (MX_FeatureFlags_IsCorianderEnabled())
  {
    goto LABEL_5;
  }

  keyExistsAndHasValidFormat[0] = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableAutoRouting", @"com.apple.coremedia", keyExistsAndHasValidFormat);
  routingSessionManager_getConfiguration(cf);
  if (!BYTE1(cf[0]) || !keyExistsAndHasValidFormat[0])
  {
    routingSessionManager_getConfiguration(&v49);
    AppBooleanValue = BYTE1(v49);
  }

  if (!AppBooleanValue)
  {
LABEL_5:
    if (!dword_1EB75DF00)
    {
      goto LABEL_56;
    }

    *keyExistsAndHasValidFormat = 0.0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v16 = *keyExistsAndHasValidFormat;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (!v17)
    {
      goto LABEL_55;
    }

    LODWORD(v49) = 136315138;
    *(&v49 + 4) = "routingSessionManager_startSessionIfNecessary_block_invoke";
LABEL_54:
    _os_log_send_and_compose_impl();
    goto LABEL_55;
  }

  if (sWiFiDeviceClientGetPower && sFigRoutingSessionManagerWiFiDevice && !sWiFiDeviceClientGetPower())
  {
    if (!dword_1EB75DF00)
    {
      goto LABEL_56;
    }

    *keyExistsAndHasValidFormat = 0.0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v37 = *keyExistsAndHasValidFormat;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v37;
    }

    else
    {
      v38 = v37 & 0xFFFFFFFE;
    }

    if (!v38)
    {
      goto LABEL_55;
    }

    LODWORD(v49) = 136315138;
    *(&v49 + 4) = "routingSessionManager_startSessionIfNecessary_block_invoke";
    goto LABEL_54;
  }

  if (CFDictionaryGetValue(a3, @"routingSessionDestination_ProvidesExternalVideoPlayback") != *MEMORY[0x1E695E4D0] && !routingSessionManager_routeIsBuiltIn(Value))
  {
    if (dword_1EB75DF00)
    {
      *keyExistsAndHasValidFormat = 0.0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v34 = *keyExistsAndHasValidFormat;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 & 0xFFFFFFFE;
      }

      if (v35)
      {
        LODWORD(v49) = 136315138;
        *(&v49 + 4) = "routingSessionManager_startSessionIfNecessary_block_invoke";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = 0;
    if (!gARPFeedback_6 || !gARPFeedback_2)
    {
      goto LABEL_57;
    }

    gARPFeedback_6(gARPFeedback_2, v14);
    goto LABEL_56;
  }

  v20 = v12;
  *keyExistsAndHasValidFormat = 0.0;
  FigCFDictionaryGetFloatIfPresent();
  LODWORD(v21) = *keyExistsAndHasValidFormat;
  if (*keyExistsAndHasValidFormat < v20)
  {
    if (dword_1EB75DF00)
    {
LABEL_24:
      *type = 0;
      v43 = OS_LOG_TYPE_DEFAULT;
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      goto LABEL_55;
    }

LABEL_56:
    v7 = 0;
LABEL_57:
    routingSessionManager_updateCurrentSession(*(a1 + 32), 0, 0, 0, 1, 0, 0, 0, 0, 0, @"No longer in high confidence", 0);
    goto LABEL_58;
  }

  if (a4 && (v23 = [a4 microLocationEventDate]) != 0 && (v24 = CFRetain(v23)) != 0)
  {
    v7 = v24;
    Current = CFAbsoluteTimeGetCurrent();
    v26 = Current - MEMORY[0x1B2734210](v7);
    routingSessionManager_getConfiguration(&v45);
    if (v26 >= v46)
    {
      if (dword_1EB75DF00)
      {
        *type = 0;
        v43 = OS_LOG_TYPE_DEFAULT;
        v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_57;
    }

    if (dword_1EB75DF00)
    {
      *type = 0;
      v43 = OS_LOG_TYPE_DEFAULT;
      v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (!a5)
    {
      if (dword_1EB75DF00)
      {
        goto LABEL_24;
      }

      goto LABEL_56;
    }

    if (dword_1EB75DF00)
    {
      __routingSessionManager_startSessionIfNecessary_block_invoke_cold_1();
    }

    v7 = 0;
  }

  v28 = *(a1 + 32);
  cf[0] = 0;
  v29 = CFDictionaryGetValue(a3, @"routingSessionDestination_RouteDescriptors");
  LOBYTE(v49) = 0;
  v30 = routingSessionManager_outputDeviceIDsArrayFromRouteDescriptors(v29);
  if (!FigRoutingSessionCreate(*MEMORY[0x1E695E480], 1, a3, cf))
  {
    routingSessionManager_updateCurrentSession(v28, cf[0], a4, 1, 1, 0, 0, 0, 0, 0, @"Establish predicted session", &v49);
    if (v49)
    {
      v31 = gARPFeedback_5;
      if (!gARPFeedback_5)
      {
        goto LABEL_68;
      }

      v32 = gARPFeedback_0;
      if (!gARPFeedback_0)
      {
        goto LABEL_68;
      }

LABEL_67:
      v31(v32, v30);
      goto LABEL_68;
    }

    v31 = gARPFeedback_6;
    if (gARPFeedback_6)
    {
      v32 = gARPFeedback_4;
      if (gARPFeedback_4)
      {
        goto LABEL_67;
      }
    }
  }

LABEL_68:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_58:
  v39 = *(a1 + 40);
  if (v39)
  {
    v39(*(a1 + 48), a2);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v40 = *(a1 + 32);
  if (v40)
  {
    CFRelease(v40);
  }

  v41 = *MEMORY[0x1E69E9840];
}

uint64_t __routingSessionManager_findTopAvailablePredictedDestination_block_invoke(uint64_t a1, const __CFArray *a2)
{
  cf[20] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v13 = 0;
  cf[0] = 0;
  v12 = 0;
  routingSessionManager_copyTopPredictedDestination(*(a1 + 40), cf, &v13, &v12);
  if (cf[0])
  {
    AvailableDestinationFromAvailableRoutes = routingSessionManager_createAvailableDestinationFromAvailableRoutes(a2, cf[0]);
    if (!AvailableDestinationFromAvailableRoutes)
    {
      v9 = 0;
      goto LABEL_11;
    }

    v6 = AvailableDestinationFromAvailableRoutes;
    v7 = FigRoutingSessionDestinationCopyDescription(*MEMORY[0x1E695E480], AvailableDestinationFromAvailableRoutes);
    if (dword_1EB75DF00)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v7)
    {
      CFRelease(v7);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
    CFRelease(v6);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v9 = 1;
LABEL_11:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void routingSessionManager_copyTopPredictedDestination(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = 0;
  v6 = routingSessionManager_copyCurrentPredictedDestinations(a1, &v9, a4);
  v7 = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(v6); v7 < i; i = 0)
  {
    CFArrayGetValueAtIndex(v6, v7);
    FigCFDictionaryGetFloatIfPresent();
    ++v7;
    if (v6)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = v9;
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

const __CFDictionary *routingSessionManager_createAvailableDestinationFromAvailableRoutes(const __CFArray *a1, CFDictionaryRef theDict)
{
  MutableCopy = theDict;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"routingSessionDestination_RouteDescriptors");
    v5 = routingSessionManager_copyRouteDescriptorsMatchingPropertiesOfRouteDescriptors(a1, Value, 1);
    v6 = routingSessionManager_routeDescriptorsProvideExternalVideoPlayback(v5);
    if (v5)
    {
      v7 = MEMORY[0x1E695E4C0];
      if (v6)
      {
        v7 = MEMORY[0x1E695E4D0];
      }

      v8 = *v7;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, MutableCopy);
      CFDictionarySetValue(MutableCopy, @"routingSessionDestination_RouteDescriptors", v5);
      CFDictionarySetValue(MutableCopy, @"routingSessionDestination_ProvidesExternalVideoPlayback", v8);
      CFRelease(v5);
    }

    else
    {
      return 0;
    }
  }

  return MutableCopy;
}

void __routingSessionManager_findTopAvailablePredictedDestination_block_invoke_198(uint64_t a1, uint64_t a2)
{
  theDict[16] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if (a2)
  {
    if (gARPFeedback_6)
    {
      v5 = gARPFeedback_1 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      theDict[0] = 0;
      routingSessionManager_copyTopPredictedDestination(*(a1 + 40), theDict, 0, 0);
      if (theDict[0] && (Value = CFDictionaryGetValue(theDict[0], @"routingSessionDestination_RouteDescriptors")) != 0)
      {
        v7 = routingSessionManager_outputDeviceIDsArrayFromRouteDescriptors(Value);
      }

      else
      {
        v7 = 0;
      }

      gARPFeedback_6(gARPFeedback_1, v7);
      if (theDict[0])
      {
        CFRelease(theDict[0]);
      }
    }

    if (dword_1EB75DF00)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), a2);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x1E69E9840];
}

__CFArray *routingSessionManager_copyCurrentPredictedDestinations(uint64_t a1, void *a2, _BYTE *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FakePredictionContext = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!routingSessionManager_routePredictionsEnabled())
  {
LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

  v8 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 64);
  v10 = *(DerivedStorage + 40);
  FigSimpleMutexUnlock();
  if (v9)
  {
    if (dword_1EB75DF00)
    {
      v39 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_7;
  }

  v33 = a2;
  context = objc_autoreleasePoolPush();
  v43[0] = 0.0;
  v42 = 0;
  v12 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  v13 = CFPreferencesCopyAppValue(@"HighConfidenceRouteName", @"com.apple.coremedia");
  v14 = CFPreferencesCopyAppValue(@"HighestMediumConfidenceRouteName", @"com.apple.coremedia");
  v15 = CFPreferencesCopyAppValue(@"ForcedHighConfidenceDeviceUID", @"com.apple.coremedia");
  v16 = CFPreferencesCopyAppValue(@"ForcedMediumConfidenceDeviceUID", @"com.apple.coremedia");
  FigRoutingSessionManagerGetConfidenceThresholds(v43, &v42);
  if (v16)
  {
    DestinationWithRouteID = routingSessionManager_createDestinationWithRouteID(v16, 1);
    CFArrayAppendValue(v12, DestinationWithRouteID);
    v18 = 0;
  }

  else
  {
    if (!v15)
    {
      if (v13)
      {
        DestinationWithRouteName = routingSessionManager_createDestinationWithRouteName(v13);
        CFArrayAppendValue(v12, DestinationWithRouteName);
        if (DestinationWithRouteName)
        {
          CFRelease(DestinationWithRouteName);
        }
      }

      if (!v14)
      {
        v18 = 1;
        goto LABEL_13;
      }

      DestinationWithRouteID = routingSessionManager_createDestinationWithRouteName(v14);
      CFArrayAppendValue(v12, DestinationWithRouteID);
      v18 = 1;
      if (!DestinationWithRouteID)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    DestinationWithRouteID = routingSessionManager_createDestinationWithRouteID(v15, 1);
    CFArrayAppendValue(v12, DestinationWithRouteID);
    v18 = 0;
  }

  if (DestinationWithRouteID)
  {
LABEL_12:
    CFRelease(DestinationWithRouteID);
  }

LABEL_13:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v12)
  {
    if (CFArrayGetCount(v12) >= 1)
    {
      v45.length = CFArrayGetCount(v12);
      v45.location = 0;
      CFArrayAppendArray(Mutable, v12, v45);
      if (a3)
      {
        *a3 = 1;
      }
    }

    CFRelease(v12);
  }

  if (v18)
  {
    v22 = *(DerivedStorage + 24);
    if (v22)
    {
      v23 = [v22 predictionsWithCurrentContext:&FakePredictionContext];
      v24 = FakePredictionContext;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v25 = [v23 countByEnumeratingWithState:&v34 objects:v41 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v35;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v35 != v27)
            {
              objc_enumerationMutation(v23);
            }

            v29 = *(*(&v34 + 1) + 8 * i);
            [v29 confidence];
            v30 = routingSessionManager_createDestinationWithRouteID([v29 outputDeviceID], 0);
            CFArrayAppendValue(Mutable, v30);
            if (v30)
            {
              CFRelease(v30);
            }
          }

          v26 = [v23 countByEnumeratingWithState:&v34 objects:v41 count:16];
        }

        while (v26);
      }
    }
  }

  else
  {
    FakePredictionContext = routingSessionManager_createFakePredictionContext();
  }

  objc_autoreleasePoolPop(context);
  v19 = FakePredictionContext;
  if (v33)
  {
    *v33 = FakePredictionContext;
    v19 = FakePredictionContext;
  }

LABEL_8:

  v20 = *MEMORY[0x1E69E9840];
  return Mutable;
}

__CFDictionary *routingSessionManager_createDestinationWithRouteID(void *a1, int a2)
{
  values = a1;
  v3 = *MEMORY[0x1E695E480];
  v4 = MEMORY[0x1E695E528];
  v5 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  cf = CFDictionaryCreate(v3, kFigEndpointDescriptorKey_RouteUID, &values, 1, v4, v5);
  v7 = CFArrayCreate(v3, &cf, 1, MEMORY[0x1E695E9C0]);
  if (v7)
  {
    CFDictionarySetValue(Mutable, @"routingSessionDestination_RouteDescriptors", v7);
  }

  FigCFDictionarySetFloat();
  if (a2)
  {
    CFDictionarySetValue(Mutable, @"routingSessionDestination_FromForcedPrediction", *MEMORY[0x1E695E4D0]);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return Mutable;
}

__CFDictionary *routingSessionManager_createDestinationWithRouteName(void *a1)
{
  values = a1;
  v1 = *MEMORY[0x1E695E480];
  v2 = MEMORY[0x1E695E528];
  v3 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  cf = CFDictionaryCreate(v1, kFigEndpointDescriptorKey_RouteName, &values, 1, v2, v3);
  v5 = CFArrayCreate(v1, &cf, 1, MEMORY[0x1E695E9C0]);
  v6 = MEMORY[0x1E695E4C0];
  v7 = FigCFEqual();
  v8 = MEMORY[0x1E695E4D0];
  if (v7)
  {
    v8 = v6;
  }

  v9 = *v8;
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"routingSessionDestination_RouteDescriptors", v5);
    CFDictionarySetValue(Mutable, @"routingSessionDestination_ProvidesExternalVideoPlayback", v9);
    FigCFDictionarySetFloat();
    CFRelease(v5);
  }

  else
  {
    CFDictionarySetValue(Mutable, @"routingSessionDestination_ProvidesExternalVideoPlayback", v9);
    FigCFDictionarySetFloat();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return Mutable;
}

uint64_t routingSessionManager_setPredictionContextForSession(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EB75DF00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = DerivedStorage[5];
  FigSimpleMutexLock();
  if (DerivedStorage[9] == a2)
  {
    if (!DerivedStorage[11])
    {
      DerivedStorage[11] = a3;
      goto LABEL_10;
    }

    if (dword_1EB75DF00)
    {
      goto LABEL_8;
    }
  }

  else if (dword_1EB75DF00)
  {
LABEL_8:
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_10:
  v9 = DerivedStorage[5];
  result = FigSimpleMutexUnlock();
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void *__routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke(uint64_t a1)
{
  v2 = dlopen("/System/Library/PrivateFrameworks/AirPlayRoutePrediction.framework/AirPlayRoutePrediction", 4);
  if (!v2)
  {
    v11 = 3248;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  v3 = v2;
  sARPRoutePredictorClass = objc_getClass("ARPRoutePredictor");
  if (!sARPRoutePredictorClass)
  {
    v11 = 3251;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  sARPPredictionContextClass = objc_getClass("ARPPredictionContext");
  if (!sARPPredictionContextClass)
  {
    v11 = 3254;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  v4 = dlsym(v3, "ARPRoutePredictorPredictionsForCurrentContextUpdated");
  if (!v4)
  {
    v11 = 3257;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  sARPRoutePredictorPredictionsForCurrentContextUpdatedNotificationName = *v4;
  sARPMicroLocationSimilarityFunction = dlsym(v3, "ARPMicroLocationSimilarity");
  if (!sARPMicroLocationSimilarityFunction)
  {
    v11 = 3263;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  v5 = dlsym(v3, "ARPPredictionSuppressedReasonNotFound");
  if (!v5)
  {
    v11 = 3266;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  gARPFeedback_1 = *v5;
  v6 = dlsym(v3, "ARPPredictionSuppressedReasonNotSupported");
  if (!v6)
  {
    v11 = 3272;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  gARPFeedback_2 = *v6;
  v7 = dlsym(v3, "ARPPresentationMediumAutoroute");
  if (!v7)
  {
    v11 = 3278;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  gARPFeedback_0 = *v7;
  v8 = dlsym(v3, "ARPRoutingFailureReasonNotFound");
  if (!v8)
  {
    v11 = 3284;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  gARPFeedback_3 = *v8;
  v9 = dlsym(v3, "ARPPredictionSuppressedReasonExistingRoute");
  if (!v9)
  {
    v11 = 3290;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  gARPFeedback_4 = *v9;
  gARPFeedback_5 = dlsym(v3, "ARPDonateFeedbackForPredictionPresented");
  if (!gARPFeedback_5)
  {
    v11 = 3296;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  gARPFeedback_6 = dlsym(v3, "ARPDonateFeedbackForPredictionSuppressed");
  if (!gARPFeedback_6)
  {
    v11 = 3299;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  result = dlsym(v3, "ARPDonateFeedbackForRoutingFailure");
  gARPFeedback_7 = result;
  if (!result)
  {
    v11 = 3302;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  return result;
}

void __routingSessionManager_updatePredictionContextForSession_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  routingSessionManager_setPredictionContextForSession(*(a1 + 32), *(a1 + 40), a3);
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    CFRelease(v5);
  }
}

BOOL __routingSessionManager_updatePredictedDestinations_block_invoke(uint64_t a1, const __CFArray *a2)
{
  v34[21] = *MEMORY[0x1E69E9840];
  v34[0] = 0;
  v4 = routingSessionManager_copyCurrentPredictedDestinations(*(a1 + 32), v34, 0);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v7 = 0;
  if (!v4)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(v4); v7 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
    AvailableDestinationFromAvailableRoutes = routingSessionManager_createAvailableDestinationFromAvailableRoutes(a2, ValueAtIndex);
    if (AvailableDestinationFromAvailableRoutes)
    {
      v11 = AvailableDestinationFromAvailableRoutes;
      CFArrayAppendValue(Mutable, AvailableDestinationFromAvailableRoutes);
      CFRelease(v11);
    }

    ++v7;
    if (v4)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
    if (v4)
    {
LABEL_11:
      v13 = CFArrayGetCount(v4);
      goto LABEL_14;
    }
  }

  else
  {
    Count = 0;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  v13 = 0;
LABEL_14:
  v14 = *(*(a1 + 40) + 40);
  FigSimpleMutexLock();
  v15 = *(*(a1 + 40) + 48);
  v16 = FigCFEqual();
  v17 = *(a1 + 40);
  v18 = *(v17 + 48);
  *(v17 + 48) = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 40);
  v20 = *(v19 + 56);
  if (v34[0] != v20)
  {

    v21 = v34[0];
    v19 = *(a1 + 40);
    *(v19 + 56) = v21;
  }

  v22 = *(v19 + 64);
  v23 = *(v19 + 40);
  FigSimpleMutexUnlock();
  if (!v16)
  {
    v24 = CFStringCreateMutable(v5, 0);
    v25 = 0;
    if (!Mutable)
    {
      goto LABEL_23;
    }

LABEL_22:
    for (j = CFArrayGetCount(Mutable); v25 < j; j = 0)
    {
      v27 = CFArrayGetValueAtIndex(Mutable, v25);
      v28 = FigRoutingSessionDestinationCopyDescription(v5, v27);
      CFStringAppend(v24, v28);
      if (Mutable)
      {
        v29 = CFArrayGetCount(Mutable) - 1;
      }

      else
      {
        v29 = -1;
      }

      if (v25 < v29)
      {
        CFStringAppend(v24, @", ");
      }

      if (v28)
      {
        CFRelease(v28);
      }

      ++v25;
      if (Mutable)
      {
        goto LABEL_22;
      }

LABEL_23:
      ;
    }

    if (v24)
    {
      if (dword_1EB75DF00)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFRelease(v24);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v31 = *(a1 + 32);
    CMNotificationCenterPostNotification();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  result = Count == v13;
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

void __routingSessionManager_updatePredictedDestinations_block_invoke_276(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void routingSessionManager_wifiPowerStatusChanged(uint64_t a1, const void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (sWiFiDeviceClientGetPower)
  {
    v3 = sFigRoutingSessionManagerWiFiDevice == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3 && sWiFiDeviceClientGetPower() == 0;
  if (dword_1EB75DF00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v4)
  {
    routingSessionManager_updateCurrentSession(a2, 0, 0, 0, 1, 0, 0, 0, 0, 0, @"WiFi is powered off", 0);
    routingSessionManager_updatePredictedDestinations(a2, &__block_literal_global_292);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return _os_log_send_and_compose_impl();
}

CFMutableDictionaryRef OUTLINED_FUNCTION_20_1()
{

  return CFDictionaryCreateMutable(v0, 0, v1, v2);
}

uint64_t FigRoutingSessionManagerGetClassID()
{
  if (_MergedGlobals_12 != -1)
  {
    FigRoutingSessionManagerGetClassID_cold_1();
  }

  return qword_1ED6D2FC0;
}

uint64_t routingSessionManager_getClassID(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&routingSessionManager_getClassID_sFigRoutingSessionManagerClassDesc, ClassID, 1, a1);
}

uint64_t FigRoutingSessionManagerGetTypeID()
{
  if (_MergedGlobals_12 != -1)
  {
    FigRoutingSessionManagerGetClassID_cold_1();
  }

  v1 = qword_1ED6D2FC0;

  return MEMORY[0x1EEDBB488](v1);
}

__CFDictionary *FigRoutingSessionCopyAsDictionary(uint64_t a1, int a2)
{
  value = 0;
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  CMBaseObject = FigRoutingSessionGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || (v6 = *MEMORY[0x1E695E480], v5(CMBaseObject, @"EstablishedAutomaticallyFromLikelyDestination", *MEMORY[0x1E695E480], &value)) || (v7 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0 || v7(a1, &cf))
  {
    v10 = 0;
    v8 = 0;
  }

  else
  {
    v8 = CopySanitizedDestination(cf, a2);
    Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v10 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"EstablishedAutomaticallyFromLikelyDestination", value);
      CFDictionarySetValue(v10, @"Destination", v8);
    }
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

__CFDictionary *CopySanitizedDestination(CFDictionaryRef theDict, int a2)
{
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  v4 = MutableCopy;
  if (!a2)
  {
    CFDictionaryRemoveValue(MutableCopy, @"routingSessionDestination_RouteDescriptors");
  }

  return v4;
}

uint64_t FigRoutingSessionManagerStartServer()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v1 = *MEMORY[0x1E6963400];
  FigCFDictionarySetInt32();
  v2 = FigXPCServerStart();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v2;
}

uint64_t __MXAggregateSetUpLoggingOnce_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();

  return fig_note_initialize_category_with_default_work();
}

uint64_t endpointAggregate_Finalize()
{
  v11 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DDD0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 32) = 0;
  }

  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 48) = 0;
  }

  v5 = *(DerivedStorage + 96);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 96) = 0;
  }

  v6 = *(DerivedStorage + 136);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 136) = 0;
  }

  v7 = *(DerivedStorage + 8);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v8 = *(DerivedStorage + 40);
  result = FigSimpleMutexDestroy();
  *(DerivedStorage + 40) = 0;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

id endpointAggregate_CopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[5];
  FigSimpleMutexLock();
  v2 = DerivedStorage[4];
  v3 = *DerivedStorage;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<MXAggregateEndpoint: routingContextUUID: [%@] name: %@ uuid: %@ APAggregateEndpoint %@> ", v2, DerivedStorage[1], *DerivedStorage, DerivedStorage[6]];
  v4 = DerivedStorage[5];
  FigSimpleMutexUnlock();

  return v6;
}

uint64_t endpointAggregate_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v9 = *(DerivedStorage + 40);
    FigSimpleMutexLock();
    Copy = *(DerivedStorage + 48);
    if (Copy)
    {
      Copy = CFRetain(Copy);
    }

    goto LABEL_4;
  }

  v13 = *MEMORY[0x1E69621E8];
  if (FigCFEqual())
  {
    v14 = *(DerivedStorage + 8);
    if (v14)
    {
LABEL_7:
      v15 = CFRetain(v14);
LABEL_11:
      result = 0;
      *a4 = v15;
      return result;
    }

LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v16 = *MEMORY[0x1E69620F8];
  if (FigCFEqual())
  {
    v14 = *DerivedStorage;
    if (*DerivedStorage)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v17 = *MEMORY[0x1E6962238];
  if (FigCFEqual())
  {
    v14 = *(DerivedStorage + 32);
    if (v14)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v18 = *MEMORY[0x1E69622F8];
  if (FigCFEqual())
  {
    v14 = *MEMORY[0x1E69626B0];
    if (*MEMORY[0x1E69626B0])
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v19 = *MEMORY[0x1E6962270];
  if (FigCFEqual())
  {
    v20 = *(DerivedStorage + 40);
    FigSimpleMutexLock();
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(DerivedStorage + 144));
LABEL_4:
    *a4 = Copy;
    v11 = *(DerivedStorage + 40);
    FigSimpleMutexUnlock();
    return 0;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __endpointAggregate_CopyProperty_block_invoke;
  v21[3] = &__block_descriptor_56_e28_i16__0__OpaqueFigEndpoint__8l;
  v21[4] = a2;
  v21[5] = a3;
  v21[6] = a4;
  return endpointAggregate_WithRemoteAggregateEndpoint(a1, v21);
}

uint64_t endpointAggregate_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __endpointAggregate_SetProperty_block_invoke;
  v4[3] = &__block_descriptor_48_e28_i16__0__OpaqueFigEndpoint__8l;
  v4[4] = a2;
  v4[5] = a3;
  return endpointAggregate_WithRemoteAggregateEndpoint(a1, v4);
}

uint64_t endpointAggregate_WithRemoteAggregateEndpoint(uint64_t a1, uint64_t a2)
{
  v31[5] = *MEMORY[0x1E69E9840];
  if (!endpointAggregate_IsMXAggregateEndpoint(a1))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    v8 = 0;
    goto LABEL_20;
  }

  v27 = a1;
  v29 = (DerivedStorage + 48);
  v9 = &qword_1EB75D000;
  if (dword_1EB75DDD0)
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = *(DerivedStorage + 16);
  v28 = *(DerivedStorage + 24);
  v12 = 5;
  while (1)
  {
    if (dword_1EB75DDD0)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      v9 = &qword_1EB75D000;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v14)
    {
      v8 = 4294954514;
      goto LABEL_14;
    }

    v8 = v14(v11, v28, v29);
    if (!v8)
    {
      break;
    }

LABEL_14:
    if (dword_1EB75DDD0)
    {
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      v9 = &qword_1EB75D000;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    MEMORY[0x1B2734EB0](50000);
    if (!--v12)
    {
      goto LABEL_17;
    }
  }

  v18 = (DerivedStorage + 48);
  v8 = *v29;
  if (!*v29)
  {
    v9 = &qword_1EB75D000;
LABEL_17:
    v16 = v9[441];
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    v18 = (DerivedStorage + 48);
LABEL_18:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_19;
  }

  FigEndpointAggregateGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    v8 = 4294950576;
    goto LABEL_41;
  }

  if (!endpointAggregate_IsMXAggregateEndpoint(v27))
  {
    v8 = 4294950576;
    goto LABEL_41;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v8 = FigNotificationCenterAddWeakListener();
  if (v8)
  {
LABEL_41:
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    goto LABEL_18;
  }

  if (v27)
  {
    v23 = *v29;
    if (*v29)
    {
      v30[3] = 0;
      v30[4] = 0;
      v30[1] = MXAggregateEndpointHandleAuthRequired;
      v30[2] = MXAggregateEndpointHandleEndpointFailed;
      v30[0] = CFRetain(v27);
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v24)
      {
        v24(v23, v30);
      }

      v31[1] = 0;
      v31[2] = MXAggregateEndpointDidReceiveDataFromCommChannel;
      v31[3] = MXAggregateEndpointDidCloseCommChannel;
      v31[0] = CFRetain(v27);
      v25 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v25)
      {
        v8 = v25(v23, v31);
      }

      else
      {
        v8 = 4294954514;
      }
    }
  }

LABEL_19:
  v7 = *v18;
  if (*v18)
  {
LABEL_20:
    v19 = CFRetain(v7);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(DerivedStorage + 40);
  FigSimpleMutexUnlock();
  if (!v8 && v19)
  {
LABEL_25:
    v8 = (*(a2 + 16))(a2, v19);
LABEL_26:
    CFRelease(v19);
    goto LABEL_27;
  }

  MXSimulateCrash("Something went wrong when setting up the remote aggregate endpoint. Please file a bug to MediaExperience (New Bugs) | All.");
  if (v8)
  {
    if (endpointAggregate_WithRemoteAggregateEndpoint_cold_1(v19))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v19)
  {
    goto LABEL_25;
  }

  endpointAggregate_WithRemoteAggregateEndpoint_cold_2(v30);
  v8 = LODWORD(v30[0]);
LABEL_27:
  v21 = *MEMORY[0x1E69E9840];
  return v8;
}

BOOL endpointAggregate_IsMXAggregateEndpoint(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    FigEndpointAggregateGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      if (CMBaseObjectGetVTable() == &kMXAggregateEndpointVTable)
      {
        return 1;
      }
    }
  }

  return result;
}

void endpointAggregate_NotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *MEMORY[0x1E6961950];
  v9 = FigCFEqual();
  v10 = DerivedStorage[5];
  FigSimpleMutexLock();
  if (a4 && (v11 = DerivedStorage[6], FigCFEqual()))
  {
    if (v9)
    {
      if (dword_1EB75DDD0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      MXAggregateEndpointRemoveAndDestroyRemoteAggregateEndpoint(a2);
      v17 = DerivedStorage[9];
      if (DerivedStorage[12])
      {
        v18 = FigCFWeakReferenceHolderCopyReferencedObject();
      }

      else
      {
        v18 = 0;
      }

      v19 = DerivedStorage[5];
      FigSimpleMutexUnlock();
      if (v17)
      {
        v17(a2, 0, MEMORY[0x1E695E0F8], v18);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    else
    {
      v12 = DerivedStorage[5];
      FigSimpleMutexUnlock();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }
  }

  else
  {
    if (dword_1EB75DDD0)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v14 = DerivedStorage[5];
    FigSimpleMutexUnlock();
  }

  objc_autoreleasePoolPop(v6);
  v15 = *MEMORY[0x1E69E9840];
}

void MXAggregateEndpointHandleAuthRequired(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = DerivedStorage[5];
  FigSimpleMutexLock();
  v15 = DerivedStorage[8];
  if (DerivedStorage[12])
  {
    v16 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v16 = 0;
  }

  v17 = DerivedStorage[5];
  FigSimpleMutexUnlock();
  if (v15)
  {
    v15(a4, a2, a3, v16, a5, a6, a7);
  }

  if (v16)
  {

    CFRelease(v16);
  }
}

void MXAggregateEndpointHandleEndpointFailed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage[5];
  FigSimpleMutexLock();
  v9 = DerivedStorage[9];
  if (DerivedStorage[12])
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v10 = 0;
  }

  v11 = DerivedStorage[5];
  FigSimpleMutexUnlock();
  if (v9)
  {
    v9(a4, a2, a3, v10);
  }

  if (v10)
  {

    CFRelease(v10);
  }
}

void MXAggregateEndpointDidReceiveDataFromCommChannel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage[5];
  FigSimpleMutexLock();
  v11 = DerivedStorage[15];
  if (DerivedStorage[17])
  {
    v12 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v12 = 0;
  }

  v13 = DerivedStorage[5];
  FigSimpleMutexUnlock();
  if (v11)
  {
    v11(a5, a2, a3, a4, v12);
  }

  if (v12)
  {

    CFRelease(v12);
  }
}

void MXAggregateEndpointDidCloseCommChannel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage[5];
  FigSimpleMutexLock();
  v9 = DerivedStorage[16];
  if (DerivedStorage[17])
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v10 = 0;
  }

  v11 = DerivedStorage[5];
  FigSimpleMutexUnlock();
  if (v9)
  {
    v9(a4, a2, a3, v10);
  }

  if (v10)
  {

    CFRelease(v10);
  }
}

uint64_t endpointAggregate_Activate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __endpointAggregate_Activate_block_invoke;
  v6[3] = &__block_descriptor_72_e28_i16__0__OpaqueFigEndpoint__8l;
  v6[4] = a1;
  v6[5] = a2;
  v6[6] = a3;
  v6[7] = a4;
  v6[8] = a5;
  return endpointAggregate_WithRemoteAggregateEndpoint(a1, v6);
}

uint64_t endpointAggregate_Deactivate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v10 = *(DerivedStorage + 48);
  if (!v10 || (v11 = CFRetain(v10)) == 0)
  {
    endpointAggregate_Deactivate_cold_1(v20);
    v15 = v20[0];
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [[MXAggregateEndpointCallback alloc] initWithAggregate:a1 features:0 options:a2 callback:a3 callbackRefCon:a4 operationType:2];
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v14)
  {
    v15 = 4294954514;
    goto LABEL_7;
  }

  v15 = v14(v12, a2, MXAggregateEndpointCompletionCallback, v13);
  if (v15)
  {
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_8;
  }

  v15 = MXAggregateEndpointRemoveAndDestroyRemoteAggregateEndpoint(a1);
LABEL_8:
  CFRelease(v12);
LABEL_9:
  v17 = *(DerivedStorage + 40);
  FigSimpleMutexUnlock();
  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t endpointAggregate_SetDelegateRouting(uint64_t a1, __int128 *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DDD0)
  {
    v16 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 96);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 96) = 0;
  }

  if (a2)
  {
    v8 = *a2;
    v9 = a2[1];
    *(DerivedStorage + 88) = *(a2 + 4);
    *(DerivedStorage + 72) = v9;
    *(DerivedStorage + 56) = v8;
    v10 = *a2;
    *(DerivedStorage + 96) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  else
  {
    *(DerivedStorage + 88) = 0;
    *(DerivedStorage + 72) = 0u;
    *(DerivedStorage + 56) = 0u;
  }

  v11 = *(DerivedStorage + 40);
  FigSimpleMutexUnlock();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __endpointAggregate_SetDelegateRouting_block_invoke;
  v14[3] = &__block_descriptor_40_e28_i16__0__OpaqueFigEndpoint__8l;
  v14[4] = a1;
  result = endpointAggregate_WithRemoteAggregateEndpoint(a1, v14);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t endpointAggregate_SetDelegateRemoteControl(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 136);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 136) = 0;
  }

  if (a2)
  {
    v7 = *a2;
    *(DerivedStorage + 120) = a2[1];
    *(DerivedStorage + 104) = v7;
    v8 = *a2;
    *(DerivedStorage + 136) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  else
  {
    *(DerivedStorage + 120) = 0u;
    *(DerivedStorage + 104) = 0u;
  }

  v9 = *(DerivedStorage + 40);
  FigSimpleMutexUnlock();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __endpointAggregate_SetDelegateRemoteControl_block_invoke;
  v11[3] = &__block_descriptor_40_e28_i16__0__OpaqueFigEndpoint__8l;
  v11[4] = a1;
  return endpointAggregate_WithRemoteAggregateEndpoint(a1, v11);
}

void MXAggregateEndpointCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = [a5 callback];
  v9 = [a5 endpoint];
  v10 = [a5 callbackRefCon];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EB75DDD0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v8)
  {
    v8(v9, a2, a3, a4, v10);
  }

  v13 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  if ([a5 operationType] == 2)
  {
    v14 = [*(DerivedStorage + 144) count];
    if (a1)
    {
      if (!v14 && *(DerivedStorage + 48) && FigCFEqual())
      {
        if (dword_1EB75DDD0)
        {
          v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        MXAggregateEndpointRemoveAndDestroyRemoteAggregateEndpoint(v9);
      }
    }
  }

  v15 = *(DerivedStorage + 40);
  FigSimpleMutexUnlock();

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t endpointAggregate_SendCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __endpointAggregate_SendCommand_block_invoke;
  v6[3] = &__block_descriptor_64_e28_i16__0__OpaqueFigEndpoint__8l;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  return endpointAggregate_WithRemoteAggregateEndpoint(a1, v6);
}

uint64_t endpointAggregate_SendData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __endpointAggregate_SendData_block_invoke;
  v6[3] = &__block_descriptor_64_e28_i16__0__OpaqueFigEndpoint__8l;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  return endpointAggregate_WithRemoteAggregateEndpoint(a1, v6);
}

uint64_t endpointAggregate_AddEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigEndpointAggregateGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigEndpoint = FigEndpointAggregateGetFigEndpoint();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __endpointAggregate_AddEndpoint_block_invoke;
  v13[3] = &__block_descriptor_80_e28_i16__0__OpaqueFigEndpoint__8l;
  v13[4] = a1;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = a5;
  v13[8] = a2;
  v13[9] = DerivedStorage;
  return endpointAggregate_WithRemoteAggregateEndpoint(FigEndpoint, v13);
}

uint64_t endpointAggregate_RemoveEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigEndpointAggregateGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigEndpoint = FigEndpointAggregateGetFigEndpoint();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __endpointAggregate_RemoveEndpoint_block_invoke;
  v13[3] = &__block_descriptor_80_e28_i16__0__OpaqueFigEndpoint__8l;
  v13[4] = a1;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = a5;
  v13[8] = a2;
  v13[9] = DerivedStorage;
  return endpointAggregate_WithRemoteAggregateEndpoint(FigEndpoint, v13);
}

void MXAggregateSubEndpointCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = [a6 callback];
  v12 = [a6 endpoint];
  v13 = [a6 callbackRefCon];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EB75DDD0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v16 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  MXAggregateEndpointUpdateSubEndpoints();
  v17 = *(DerivedStorage + 40);
  FigSimpleMutexUnlock();
  if (v11)
  {
    v11(v12, a2, a3, a4, a5, v13);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t MXCoreSessionTeardown(void *a1)
{
  v16[16] = *MEMORY[0x1E69E9840];
  if ([a1 playbackAssertionRef])
  {
    CMSMSleep_ReleasePlaybackProcessAssertion(a1);
  }

  if ([a1 needToEndInterruption])
  {
    if ([a1 isTheAssistant])
    {
      v2 = @"resumable.deallocated";
    }

    else
    {
      v2 = @"non-resumable.deallocated";
    }

    MXCoreSessionEndInterruption_WithSecTaskAndStatus(a1, 0, v2, 1);
  }

  else
  {
    if ([a1 isPlaying])
    {
      cmsSetIsPlaying(a1, 0);
    }

    if ([a1 isActive])
    {
      cmsSetIsActive(a1, 0, 0);
      CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded();
    }
  }

  v3 = [a1 wantsToShowMicrophoneIndicatorWhenNotRecording];
  [a1 setHasEntitlementToShowMicrophoneIndicatorWhileNotRecording:0];
  [a1 setWantsToShowMicrophoneIndicatorWhenNotRecording:0];
  v4 = [a1 isUsingBuiltInMicForRecording];
  [a1 setHasEntitlementToSetIsUsingBuiltInMicForRecording:0];
  [a1 setIsUsingBuiltInMicForRecording:0];
  if ([a1 isRecording])
  {
    [a1 setIsRecording:0];
    [+[MXSessionManager sharedInstance](MXSessionManager updateForRecordingStateDidChange];
    MX_PrivacyAccounting_EndRecordingAccessIntervals([a1 bundleIdToPAAccessIntervalMap]);
    [a1 setBundleIdToPAAccessIntervalMap:0];
  }

  else if ((v3 | v4) == 1)
  {
    MX_SystemStatus_PublishRecordingClientsInfo();
  }

  if ([+[MXExclaves updateSensorStatus:"updateSensorStatus:reason:"]
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  cmsVibrateForSession(a1, 0);
  CMSMSleep_UpdateIdleSleepPreventor(a1, 0);
  if (!MX_FeatureFlags_IsBypassCodecArbitrationEnabled())
  {
    FigSimpleMutexLock();
    if (dword_1EB75E100 >= 1)
    {
      v6 = 0;
      do
      {
        v15 = 0;
        v7 = *(qword_1EB75E108 + 24 * v6);
        v16[0] = 0;
        cmsmGetCountAndResourceEntriesOfType(v7, &v15, v16);
        v8 = v16[0];
        if (!v16[0])
        {
          break;
        }

        v9 = v15;
        if (v15 >= 1)
        {
          v10 = (v16[0] + 16 * v6);
          do
          {
            if (*v10 == a1)
            {
              *v8 = 0;
              v8[1] = 0;
            }

            v8 += 2;
            --v9;
          }

          while (v9);
        }

        ++v6;
      }

      while (v6 < dword_1EB75E100);
    }

    FigSimpleMutexUnlock();
  }

  cmsReleaseBorrowedStarkMainAudio(a1, 0);
  [+[MXSessionManager sharedInstance](MXSessionManager unduckSessionsForDucker:"unduckSessionsForDucker:", a1];
  CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded(0, 0);
  if (!MX_FeatureFlags_IsSessionBasedMutingEnabled() && MX_FeatureFlags_IsCallManagementMuteControlEnabled() && [a1 hasPhoneCallBehavior])
  {
    -[MXSessionManager removeEntryFromMutedBundleIDCache:bundleID:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "removeEntryFromMutedBundleIDCache:bundleID:", [objc_msgSend(a1 "clientPID")], 0);
  }

  MX_RunningBoardServices_StopMonitoringForPID([objc_msgSend(a1 clientPID]);
  [a1 setClientPID:0];
  MX_RunningBoardServices_StopMonitoringForPID([a1 pidToInheritAppStateFrom]);
  [a1 setPidToInheritAppStateFrom:0];
  [+[MXSessionManager sharedInstance](MXSessionManager cleanupSessionAssertionsIfNeeded:"cleanupSessionAssertionsIfNeeded:cleanupReason:" cleanupReason:a1, 1];
  result = [a1 unregisterSessionAudioObject];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MXCoreSessionEndInterruption_WithSecTaskAndStatus(void *a1, __SecTask *a2, const __CFString *a3, int a4)
{
  v147 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ([a1 isActive] & 1) != 0 || (objc_msgSend(a1, "notFullyInactive"))
    {
      if (a4 || ![a1 isActive] || CMSUtility_HasEntitlementForInterruptions(a1, a2))
      {
        if (unk_1EB75E080)
        {
          unk_1EB75E080([objc_msgSend(a1 "clientPID")], objc_msgSend(a1, "audioSessionID"), 0, 0);
        }

        v98 = [a1 currentlyControllingFlags];
        v132 = 1;
        v131 = 1;
        v112 = -[MXDuckingSource initWithType:ID:duckVolume:duckFadeDuration:]([MXDuckingSource alloc], "initWithType:ID:duckVolume:duckFadeDuration:", 2, [objc_msgSend(a1 "ID")], 0.0, 0.0);
        v108 = [a1 nowPlayingAppWasStoppedOnMostRecentActivation];
        cf1 = a3;
        if (CMSUtility_DoesSessionWantToPauseSpokenAudio(a1) || CMSUtility_DidSessionRecentlyWantToPauseSpokenAudio(a1))
        {
          v8 = [a1 isTheAssistant];
          v106 = v8 ^ 1;
        }

        else
        {
          v106 = 0;
          v8 = 1;
        }

        if (dword_1EB75DE40)
        {
          *v121 = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if ([(NSPointerArray *)[+[MXSessionManager sharedInstance](MXSessionManager mxCoreSessionList:v87] count]
        {
          v14 = v146;
        }

        else
        {
          v13 = -[NSPointerArray count]([+[MXSessionManager sharedInstance](MXSessionManager mxCoreSessionList], "count");
          v14 = MEMORY[0x1B2733FE0](*MEMORY[0x1E695E480], 16 * v13, 0x10800409227ACB4, 0);
          if (!v14)
          {

            goto LABEL_243;
          }
        }

        ptr = v14;
        CMSUtility_InterpretInterruptionStyle(a1, &v132, 0, &v131);
        if (cf1)
        {
          v104 = CFEqual(cf1, @"non-resumable.deallocated") != 0;
        }

        else
        {
          v104 = 0;
        }

        if ([a1 makesMusicResume])
        {
          v15 = 0;
        }

        else
        {
          if (![a1 needToEndInterruption])
          {
            v15 = 0;
            cf = 0;
LABEL_43:
            if (-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance", v88, v93), "isSpeechDetectCategory:", [a1 audioCategory]) && ((cf1 != 0) & objc_msgSend(a1, "areBothBudsInEarForA2DPPortBeforeInterrupting")) == 1 && CFStringHasPrefix(cf1, @"resumable") && -[MXSessionManager isAtleastOneBudNotInEarForA2DPPort](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isAtleastOneBudNotInEarForA2DPPort"))
            {
              if (cf)
              {
                CFRelease(cf);
              }

              cf = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@-%@", @"non", cf1);
              if (dword_1EB75DE40)
              {
                *v121 = 0;
                type[0] = OS_LOG_TYPE_DEFAULT;
                v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v21, type[0]);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            [+[MXSessionManager cancelAnyInProgressRampIfNeeded:v89], "cancelAnyInProgressRampIfNeeded:reason:", a1, 1];
            cmsSetIsPlaying(a1, 0);
            if (![a1 extendBackgroundAppAssertionTimer] && objc_msgSend(a1, "playbackAssertionRef"))
            {
              CMSMSleep_ReleasePlaybackProcessAssertion(a1);
            }

            FigSimpleMutexLock();
            if (dword_1EB75DE40)
            {
              *v121 = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v22, type[0]);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if ([a1 triggeredRemoteInterruption])
            {
              if ((CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocal() || CMSM_IDSConnection_IsSharedAudioRouteConnectedToRemote()) && CMSM_IDSConnection_IsNearbyPairedDevicePresent())
              {
                CMSM_IDSClient_NotifyRemote_LocalIsDoingEndInterruption(cf1);
              }

              [a1 setTriggeredRemoteInterruption:0];
            }

            v110 = [a1 currentlyControllingFlags];
            v23 = ([a1 currentlyControllingFlags] & 2) != 0 && (objc_msgSend(a1, "currentlyControllingFlags") & 0x10) == 0;
            cmsSetIsActive(a1, 0, 0);
            [a1 resetInterruptionFlags];
            [a1 setWasInterruptedByNowPlayingApp:0];
            [a1 setWasInterruptedWhileSuspended:0];
            v101 = [a1 doNotNotifyOtherSessionsOnNextInactive];
            if (v101)
            {

              if (cf)
              {
                CFRelease(cf);
              }

              goto LABEL_242;
            }

            if ((([a1 currentlyControllingFlags] & 0x10) != 0 && !objc_msgSend(a1, "isSharePlayCapableCallSession") || CMSUtility_IsSharePlayCapableMediaSession(a1)) && CMSMUtility_IsSharePlayCapableCallSessionActive())
            {
              CMSMUtility_SetPhoneCallVolumeToCurrentMediaPlaybackVolume();
              CMSMUtility_TransferVolumeControlFlagToSharePlayCapableCallSession();
            }

            else if (([a1 isSharePlayCapableCallSession] & v23) == 1)
            {
              CMSMUtility_SetPhoneCallVolumeToCurrentMediaPlaybackVolume();
            }

            cmsReleaseBorrowedStarkMainAudio(a1, v15);
            v24 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v25 = 0;
            v26 = [v24 countByEnumeratingWithState:&v127 objects:v144 count:16];
            if (v26)
            {
              v27 = *v128;
              allocator = *MEMORY[0x1E695E480];
              do
              {
                v28 = 0;
                do
                {
                  if (*v128 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v127 + 1) + 8 * v28);
                  if (v29 != a1 && [*(*(&v127 + 1) + 8 * v28) isDucked] && -[MXSessionManager isSessionDucked:duckingSource:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSessionDucked:duckingSource:", v29, v112))
                  {
                    v30 = &ptr[2 * v25];
                    *v30 = v29;
                    *(v30 + 2) = 3;
                    v31 = v29;
                    ++v25;
                  }

                  if ([v29 waitingToResume] && (objc_msgSend(v29, "isPlaying") & 1) == 0)
                  {
                    if (v29 == a1)
                    {
                      [a1 setWaitingToResume:0];
                      goto LABEL_117;
                    }

                    [a1 audioCategory];
                    if (FigCFEqual())
                    {
                      [v29 audioCategory];
                      if (FigCFEqual())
                      {
                        if (CMSMUtility_FetchBackgroundEntitlement([objc_msgSend(v29 "clientPID")]))
                        {
                          CMSMSleep_FetchTemporaryPlaybackProcessAssertion(v29);
                        }

                        [v29 setWaitingToResume:0];
                        v32 = &ptr[2 * v25];
                        *v32 = v29;
                        *(v32 + 2) = 1;
                        v33 = v29;
                        ++v25;
                        goto LABEL_117;
                      }
                    }

                    if ([v29 interruptingSession] != a1)
                    {
                      goto LABEL_117;
                    }

                    if (FigEndpointCentralEntityHoldsResource(qword_1EB75E178, 0x1F288E5F0, 0x1F2899C50) && (![objc_msgSend(v29 "interruptingSession")] || !CMSMUtility_IsCarPlayVideoActive() || (objc_msgSend(v29, "isActiveOverAirPlayVideo") & 1) == 0))
                    {
                      [v29 setInterruptingSession:qword_1EB75E170];
                      goto LABEL_117;
                    }

                    v34 = CMSMUtility_GetPlayingPhoneCallOrRingtoneSession();
                    if (((v34 != 0) & v108) == 1 && CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v29) && ([v29 isSharePlayMediaSession] & 1) == 0)
                    {
                      [v29 setInterruptingSession:v34];
                      goto LABEL_117;
                    }

                    if (v108 && CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v29) && CMSMNP_GetNowPlayingAppIsPlaying())
                    {
                      v35 = CMSMNP_CopyNowPlayingAppSession();
                      if (dword_1EB75DE40)
                      {
                        *v121 = 0;
                        type[0] = OS_LOG_TYPE_DEFAULT;
                        v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(v36, type[0]);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                      }

                      [v29 setInterruptingSession:{0, v91, v96}];
                      [v29 setWaitingToResume:0];

                      goto LABEL_117;
                    }

                    [v29 setWaitingToResume:0];
                    v37 = CMSM_IDSConnection_CopySharedAudioRoutePortIDs();
                    A2DPPort = cmsmGetA2DPPort(v37);
                    if (v37)
                    {
                      CFRelease(v37);
                    }

                    if (A2DPPort && vaeDoesBTPortSupportInEarDetection(A2DPPort))
                    {
                      IsBTPortKnownToNotBeInEar = CMSMVAUtility_IsBTPortKnownToNotBeInEar(A2DPPort);
                      v40 = IsBTPortKnownToNotBeInEar != 0;
                      if (IsBTPortKnownToNotBeInEar && dword_1EB75DE40)
                      {
                        *v121 = 0;
                        type[0] = OS_LOG_TYPE_DEFAULT;
                        v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(v41, type[0]);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                        v40 = 1;
                      }
                    }

                    else
                    {
                      v40 = 0;
                    }

                    if (CMSUtility_IsAudioCategoryNonLongFormPlayback(v29) || [v29 overridePortsList] || ((CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote() != 0) & ~v40) != 0)
                    {
                      goto LABEL_248;
                    }

                    if (![v29 audioCategory])
                    {
                      goto LABEL_150;
                    }

                    if (MX_FeatureFlags_IsHighQualityLocalRecordingEnabled() && (([v29 shadowingAudioSessionOptions] & 4) != 0 || (objc_msgSend(v29, "shadowingAudioSessionOptions") & 2) != 0) && (v99 = -[MXSessionManager copySessionWithAudioSessionID:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance", v91, v96), "copySessionWithAudioSessionID:", objc_msgSend(v29, "shadowingAudioSessionID"))) != 0)
                    {
                      if (dword_1EB75DE40)
                      {
                        *v121 = 0;
                        type[0] = OS_LOG_TYPE_DEFAULT;
                        v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(v43, type[0]);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                      }

                      v42 = [(__CFArray *)v99 audioCategory:v91];
                    }

                    else
                    {
                      v99 = v29;
                      v42 = [(__CFArray *)v99 audioCategory:v91];
                    }

                    theArraya = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v42);
                    VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([(__CFArray *)v99 audioMode]);
                    theArray = vaemCopyVADOutputPortsForRouteConfiguration(theArraya, VADModeFromFigModeName, [(__CFArray *)v99 activationContext], [(__CFArray *)v99 allowedPortTypes], [(__CFArray *)v99 prefersBluetoothHighQualityContentCapture]);

                    if (theArray)
                    {
                      Count = CFArrayGetCount(theArray);
                      if (Count < 1)
                      {
                        Mutable = 0;
                      }

                      else
                      {
                        Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
                        for (i = 0; i != Count; ++i)
                        {
                          v145 = 0;
                          FigCFArrayGetInt64AtIndex();
                          v47 = vaeCopyFigOutputDeviceNameFromVADPort(v145);
                          if (v47)
                          {
                            CFArrayAppendValue(Mutable, v47);
                            CFRelease(v47);
                          }
                        }
                      }

                      CFRelease(theArray);
                    }

                    else
                    {
LABEL_150:
                      Mutable = 0;
                    }

                    [v29 activeRoutesWhenInterrupted];
                    if (FigCFEqual())
                    {
LABEL_154:
                      v48 = 1;
                    }

                    else
                    {
                      if (CMSMVAUtility_IsAnyRouteAvailableForRouteConfiguration([v29 activeRoutesWhenInterrupted], objc_msgSend(v29, "audioCategory"), objc_msgSend(v29, "audioMode"), objc_msgSend(v29, "allowedPortTypes"), objc_msgSend(v29, "prefersBluetoothHighQualityContentCapture")))
                      {
                        [v29 activeRoutesWhenInterrupted];
                        if (FigCFArrayContainsValue())
                        {
                          byte_1EB75E180 = 0;
                          goto LABEL_154;
                        }
                      }

                      v48 = 0;
                    }

                    if (Mutable)
                    {
                      CFRelease(Mutable);
                    }

                    if (v48)
                    {
LABEL_248:
                      v49 = !CMSMUtility_FetchBackgroundEntitlement([objc_msgSend(v29 clientPID]) || v104;
                      if ((v49 & 1) == 0 && ([v29 wasInterruptedWhileSuspended] & 1) == 0)
                      {
                        CMSMSleep_FetchTemporaryPlaybackProcessAssertion(v29);
                      }

                      if (dword_1EB75DE40)
                      {
                        *v121 = 0;
                        type[0] = OS_LOG_TYPE_DEFAULT;
                        v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(v50, type[0]);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                      }

                      v51 = &ptr[2 * v25];
                      *v51 = v29;
                      *(v51 + 2) = 1;
                      v52 = v29;
                      ++v25;
                    }

                    if (CMSUtility_IsDoingSpokenAudio(v29))
                    {
                      v53 = v106;
                    }

                    else
                    {
                      v53 = 0;
                    }

                    if ((v53 & 1) == 0)
                    {
                      [v29 setActiveRoutesWhenInterrupted:0];
                    }

                    goto LABEL_117;
                  }

                  if (v29 == a1)
                  {
                    goto LABEL_117;
                  }

                  if ([v29 isActive] && objc_msgSend(v29, "isPlaying"))
                  {
                    [v29 setWaitingToResume:0];
                    if (!v110)
                    {
                      goto LABEL_117;
                    }

LABEL_93:
                    cmsTryToTakeControl(v29);
                    goto LABEL_117;
                  }

                  if ([v29 isActive] && CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote() == 0 && v110 != 0)
                  {
                    goto LABEL_93;
                  }

LABEL_117:
                  ++v28;
                }

                while (v28 != v26);
                v54 = [v24 countByEnumeratingWithState:&v127 objects:v144 count:16];
                v26 = v54;
              }

              while (v54);
            }

            FigSimpleMutexUnlock();
            [+[MXSessionManager sharedInstance](MXSessionManager startAsyncDuckingOperation];
            if ([+[MXSessionManager voiceOverSessionWantsRelativeDucking:"voiceOverSessionWantsRelativeDucking:"]
            {
              if (dword_1EB75DE40)
              {
                *v121 = 0;
                type[0] = OS_LOG_TYPE_DEFAULT;
                v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v55, type[0]);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              [+[MXSessionManager updateDuckedSessionsForVoiceOver:v91], "updateDuckedSessionsForVoiceOver:", a1];
            }

            v56 = cf1;
            if (v25 < 1)
            {
              [+[MXSessionManager sharedInstance](MXSessionManager endAsyncDuckingOperationForSession:"endAsyncDuckingOperationForSession:", a1];
              goto LABEL_230;
            }

            if (cf)
            {
              v56 = cf;
            }

            v57 = v25;
            v58 = v56;
            v59 = v57;
            v60 = ptr;
            v111 = v56;
            while (1)
            {
              v61 = CMSUtility_CopyFadeDuration(a1, 1, 0);
              v62 = *(v60 + 2);
              if (v62 == 3)
              {
                [+[MXSessionManager sharedInstance](MXSessionManager unduckVolume:"unduckVolume:sessionCausingUnduck:duckingSource:" sessionCausingUnduck:*v60 duckingSource:a1, v112];
              }

              else if (v62 == 1)
              {
                IsDoingSpokenAudio = CMSUtility_IsDoingSpokenAudio(*v60);
                v64 = v106 ^ 1;
                if (!IsDoingSpokenAudio)
                {
                  v64 = 1;
                }

                if ((v64 & 1) == 0)
                {
                  *v141 = 0;
                  *&v141[8] = v141;
                  *&v141[16] = 0x3052000000;
                  v142 = __Block_byref_object_copy__19;
                  *&v143 = __Block_byref_object_dispose__19;
                  v65 = *v60;
                  if (*v60)
                  {
                    v65 = CFRetain(v65);
                  }

                  *(&v143 + 1) = v65;
                  *v121 = 0;
                  v122 = v121;
                  v123 = 0x3052000000;
                  v124 = __Block_byref_object_copy__19;
                  v125 = __Block_byref_object_dispose__19;
                  v126 = CFRetain(a1);
                  v120[0] = 0;
                  v120[1] = v120;
                  v120[2] = 0x2020000000;
                  v66 = [a1 clientName];
                  if (v66)
                  {
                    v66 = CFRetain(v66);
                  }

                  v120[3] = v66;
                  v116 = 0;
                  v117 = &v116;
                  v118 = 0x2020000000;
                  if (v58)
                  {
                    v67 = CFRetain(v58);
                  }

                  else
                  {
                    v67 = 0;
                  }

                  v119 = v67;
                  [a1 setWaitingToSendEndInterruptionToSpokenAudioApp:{1, v91, v96}];
                  if (dword_1EB75DE40)
                  {
                    v115 = 0;
                    v114 = OS_LOG_TYPE_DEFAULT;
                    v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v76 = v115;
                    if (os_log_type_enabled(v75, v114))
                    {
                      v78 = v76;
                    }

                    else
                    {
                      v78 = v76 & 0xFFFFFFFE;
                    }

                    if (v78)
                    {
                      ClientName = CMSUtility_GetClientName(*(*&v141[8] + 40), v77);
                      DisplayID = CMSUtility_GetDisplayID(*(*&v141[8] + 40), v80);
                      v82 = v117[3];
                      *type = 136315906;
                      v134 = "MXCoreSessionEndInterruption_WithSecTaskAndStatus";
                      v135 = 2114;
                      v136 = ClientName;
                      v137 = 2114;
                      v138 = DisplayID;
                      v139 = 2114;
                      v140 = v82;
                      LODWORD(v96) = 42;
                      v91 = type;
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v58 = v111;
                  }

                  v83 = dispatch_time(0, 1000000000);
                  v84 = MXGetSerialQueue();
                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 3221225472;
                  block[2] = __MXCoreSessionEndInterruption_WithSecTaskAndStatus_block_invoke;
                  block[3] = &unk_1E7AEB4A8;
                  block[4] = v141;
                  block[5] = v121;
                  block[6] = &v116;
                  block[7] = v120;
                  dispatch_after(v83, v84, block);
                  _Block_object_dispose(&v116, 8);
                  _Block_object_dispose(v120, 8);
                  _Block_object_dispose(v121, 8);
                  _Block_object_dispose(v141, 8);
                  if (!v61)
                  {
                    goto LABEL_222;
                  }

LABEL_221:
                  CFRelease(v61);
                  goto LABEL_222;
                }

                if (dword_1EB75DE40)
                {
                  *v121 = 0;
                  type[0] = OS_LOG_TYPE_DEFAULT;
                  v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v69 = *v121;
                  if (os_log_type_enabled(v68, type[0]))
                  {
                    v71 = v69;
                  }

                  else
                  {
                    v71 = v69 & 0xFFFFFFFE;
                  }

                  if (v71)
                  {
                    v72 = CMSUtility_GetClientName(*v60, v70);
                    v74 = CMSUtility_GetDisplayID(*v60, v73);
                    *v141 = 136315906;
                    *&v141[4] = "MXCoreSessionEndInterruption_WithSecTaskAndStatus";
                    *&v141[12] = 2114;
                    *&v141[14] = v72;
                    *&v141[22] = 2114;
                    v142 = v74;
                    LOWORD(v143) = 2114;
                    *(&v143 + 2) = v111;
                    LODWORD(v96) = 42;
                    v91 = v141;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v58 = v111;
                }

                CMSUtility_PostInterruptionCommandNotification(*v60, 1u, [a1 clientName], v58, 0, v61, 0, objc_msgSend(a1, "displayID"));
                if (cf && CFStringHasPrefix(cf, @"resumable") && ([*v60 wasInterruptedWhileRecording] & 1) != 0 || cf1 && CFStringHasPrefix(cf1, @"resumable") && objc_msgSend(*v60, "wasInterruptedWhileRecording"))
                {
                  [*v60 setTimestampWhenMostRecentResumableEndInterruptionWasSent:FigGetUpTimeNanoseconds()];
                }

                if (MX_FeatureFlags_IsHighQualityLocalRecordingEnabled())
                {
                  [+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource resumeAllIndependentInputAudioResourceSessionsShadowing:"resumeAllIndependentInputAudioResourceSessionsShadowing:withShadowingOptions:interruptor:status:" withShadowingOptions:*v60 interruptor:2 status:a1, cf1];
                  [+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource resumeAllIndependentInputAudioResourceSessionsShadowing:"resumeAllIndependentInputAudioResourceSessionsShadowing:withShadowingOptions:interruptor:status:" withShadowingOptions:*v60 interruptor:4 status:a1, cf1];
                }
              }

              if (v61)
              {
                goto LABEL_221;
              }

LABEL_222:
              v60 += 2;
              if (!--v59)
              {
                [+[MXSessionManager sharedInstance](MXSessionManager endAsyncDuckingOperationForSession:"endAsyncDuckingOperationForSession:", a1];
                v85 = ptr;
                do
                {

                  *v85 = 0;
                  v85 += 2;
                  --v57;
                }

                while (v57);
LABEL_230:
                if (ptr != v146)
                {
                  CFAllocatorDeallocate(*MEMORY[0x1E695E480], ptr);
                }

                [a1 setNeedToEndInterruption:{0, v91, v96}];
                [a1 setAreBothBudsInEarForA2DPPortBeforeInterrupting:0];
                [a1 setRecentlyWantedToPauseSpokenAudio:0];
                [a1 setNotFullyInactive:0];
                if ([a1 isTheAssistant] && -[MXSessionManager isVoiceAssistantPlayingToPersonalAudioDeviceOverMedia](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isVoiceAssistantPlayingToPersonalAudioDeviceOverMedia"))
                {
                  [+[MXSessionManager sharedInstance](MXSessionManager setIsVoiceAssistantPlayingToPersonalAudioDeviceOverMedia:"setIsVoiceAssistantPlayingToPersonalAudioDeviceOverMedia:", 0];
                }

                if ((v98 & 2) != 0 && ([a1 currentlyControllingFlags] & 2) == 0)
                {
                  cmsmUpdatePickableRouteDescriptionLists(1);
                }

                CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded();

                if (cf)
                {
                  CFRelease(cf);
                  if ((v101 & 1) == 0)
                  {
                    goto LABEL_243;
                  }
                }

                else if (!v101)
                {
                  goto LABEL_243;
                }

LABEL_242:
                FigSimpleMutexUnlock();
                goto LABEL_243;
              }
            }
          }

          if (v131 || cf1 && CFStringHasPrefix(cf1, @"resumable"))
          {
            v15 = 0;
            cf = 0;
          }

          else
          {
            v18 = [a1 audioCategory];
            cf = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@.%@", @"non-resumable", v18);
            if ([a1 isTheAssistant])
            {
              if (dword_1EB75DE40)
              {
                *v121 = 0;
                type[0] = OS_LOG_TYPE_DEFAULT;
                v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v19, type[0]);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v15 = 1;
            }

            else
            {
              v15 = 0;
            }
          }

          if ([+[MXSessionManager phoneCallBehaviorSessionShouldResumeForCarPlay:v88] sharedInstance]
          {
            [+[MXSessionManager sharedInstance](MXSessionManager setPhoneCallBehaviorSessionShouldResumeForCarPlay:"setPhoneCallBehaviorSessionShouldResumeForCarPlay:", 0];
            if (dword_1EB75DE40)
            {
              *v121 = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v17, type[0]);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v15 = 1;
          }

          if (v8)
          {
            goto LABEL_43;
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }

        v16 = [a1 audioCategory];
        cf = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@.%@", @"resumable", v16);
        goto LABEL_43;
      }

      *v141 = 0;
      v121[0] = OS_LOG_TYPE_DEFAULT;
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      result = 4294954308;
    }

    else
    {
      [a1 resetInterruptionFlags];
      if (dword_1EB75DE40)
      {
        *v141 = 0;
        v121[0] = OS_LOG_TYPE_DEFAULT;
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_243:
      result = 0;
    }
  }

  else
  {
    *v141 = 0;
    v121[0] = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = 4294954315;
  }

  v86 = *MEMORY[0x1E69E9840];
  return result;
}