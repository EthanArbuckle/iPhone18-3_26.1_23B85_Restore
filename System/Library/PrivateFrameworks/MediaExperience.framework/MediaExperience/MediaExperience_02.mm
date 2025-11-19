const __CFDictionary *cmsmCopySystemSoundAudioBehaviorDictionaryForAudioCategory(void *key, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = gSystemSoundAudioBehaviors;
  if (key)
  {
    Value = CFDictionaryGetValue(gSystemSoundAudioBehaviors, key);
    if (Value)
    {
      goto LABEL_5;
    }

    v4 = gSystemSoundAudioBehaviors;
  }

  Value = CFDictionaryGetValue(v4, @"Default");
  if (!Value)
  {
    MutableCopy = 0;
    goto LABEL_24;
  }

LABEL_5:
  v6 = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, Value);
  v8 = *MEMORY[0x1E69626C0];
  if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1))
  {
    v9 = CFDictionaryGetValue(MutableCopy, @"AudioBehaviour_Destination");
    if (CMSMDeviceState_ScreenIsBlanked() && !CMSMDeviceState_ScreenIsBlankedByProximitySensor() && v9)
    {
      v23.length = CFArrayGetCount(v9);
      v23.location = 0;
      if (CFArrayContainsValue(v9, v23, @"VirtualAudioDevice_SystemRemote"))
      {
        v10 = cmsmCopyDestinationsWithoutElement(v9, 0x1F2893B70);
        if (v10)
        {
          v11 = v10;
          CFDictionarySetValue(MutableCopy, @"AudioBehaviour_Destination", v10);
          CFRelease(v11);
        }
      }

      goto LABEL_13;
    }

    if (v9)
    {
LABEL_13:
      if (FigCFEqual() && CMSMUtility_IsPhoneCallActive())
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v13 = CFArrayCreateMutableCopy(v6, 0, v9);
        v24.length = CFArrayGetCount(v13);
        v24.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v13, v24, @"VirtualAudioDevice_Default");
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(v13, FirstIndexOfValue);
          CFArrayInsertValueAtIndex(v13, 0, @"VirtualAudioDevice_Default");
        }

        FigCFDictionarySetValue();
        if (v13)
        {
          CFRelease(v13);
        }
      }
    }
  }

  if (MX_FeatureFlags_IsOnenessEnabled() && !MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled() && vaemContinuityScreenOutputIsConnected())
  {
    if (a2)
    {
      if (dword_1EB75DE40)
      {
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v19 = CFDictionaryGetValue(MutableCopy, @"AudioBehaviour_Destination");
      v20 = cmsmCopyDestinationsWithoutElement(v19, 0x1F2893B70);
      if (v20)
      {
        v21 = v20;
        CFDictionarySetValue(MutableCopy, @"AudioBehaviour_Destination", v20);
        CFRelease(v21);
      }
    }
  }

LABEL_24:
  v15 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

uint64_t MX_FeatureFlags_IsOnenessEnabled()
{
  if (MX_FeatureFlags_IsOnenessEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsOnenessEnabled_cold_1();
  }

  return MX_FeatureFlags_IsOnenessEnabled_sIsOnenessEnabled;
}

uint64_t vaemContinuityScreenOutputIsConnected()
{
  result = MX_FeatureFlags_IsOnenessEnabled();
  if (result)
  {
    return vaemGetVADPortIDFromVADPortType(1885565807) != 0;
  }

  return result;
}

CFStringRef CMSystemsoundMgr_GetMappedBehaviorCategory(CFStringRef theString)
{
  v1 = theString;
  v20 = *MEMORY[0x1E69E9840];
  if (!theString || !gRegionalSystemSoundsThatShareBehaviour || CFStringFind(theString, @"CameraShutter", 1uLL).length >= 1 && !CMSMUtility_IsCameraBeingUsed())
  {
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(gRegionalSystemSoundsThatShareBehaviour, v1);
  if (!Value)
  {
    goto LABEL_15;
  }

  v3 = Value;
  if (FigCFEqual())
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_14;
  }

  if (!CFStringHasSuffix(v3, @"AlwaysHeard") || !gCMSS_3 || CMSMDeviceState_IsAirplaneModeEnabled())
  {
LABEL_14:
    v1 = v3;
    goto LABEL_15;
  }

  IsCarrierNetworkReachable = MX_NetworkObserver_IsCarrierNetworkReachable();
  v6 = MX_TelephonyClient_CopyIsoCountryCodeForMCC();
  v7 = MX_TelephonyClient_CopyCountryNameFromOperatorCountryBundle();
  if (dword_1EB75DE40)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (IsCarrierNetworkReachable)
  {
    CurrentCountryCode = MX_GEOCountryConfigurationObserver_GetCurrentCountryCode();
    v12 = MX_NetworkObserver_IsCarrierNetworkReachable();
    if (CurrentCountryCode && !FigCFEqual())
    {
      v15 = FigCFEqual() == 0;
      v16 = v12 != 0;
      v13 = v15 && v16;
      if (v15 && v16)
      {
        v12 = 1;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v14 = 1;
    if (!v6 || !v7)
    {
      goto LABEL_40;
    }

    v13 = 0;
    v12 = 0;
  }

  if (v12 || !v6 || !v7)
  {
    goto LABEL_35;
  }

  if (FigCFStringFind() || (v17 = 1, FigCFStringFind()))
  {
    v17 = 0;
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  if (!FigCFEqual() && !FigCFEqual())
  {
    if (!FigCFEqual() && ((FigCFEqual() == 0) & ~v18) != 0)
    {
      goto LABEL_36;
    }

LABEL_35:
    if (!v13)
    {
      v14 = 1;
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_36:
  if (dword_1EB75DE40)
  {
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = 0;
LABEL_40:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v14)
  {
    goto LABEL_14;
  }

LABEL_15:
  v9 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t CMSMDeviceState_VibrateOnSilent(int a1)
{
  if (!a1)
  {
    cmsmdevicestate_UpdateVibrateOnSilent();
  }

  return byte_1EB75D36D;
}

uint64_t CMSMUtility_IsSomeClientRecording()
{
  FigSimpleMutexLock();
  if (byte_1EB75E139)
  {
    v0 = dword_1EB75E0A4;
  }

  else
  {
    v0 = 0;
  }

  FigSimpleMutexUnlock();
  return v0;
}

uint64_t __CMSessionMgrSystemSoundActivateForPID_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 48))
  {
    if (gSystemSoundIDToCategory)
    {
      v2 = *(a1 + 40);
      v3 = *(a1 + 44);
      if (!CMSMUtility_IsSomeClientRecording() || !CMSMUtility_IsSomeRecordingSessionPresentThatDisallowsSystemSounds() || (UpdatedSystemSoundPlayFlags = cmsmSystemSoundShouldPlayDuringRecording(v2)) != 0)
      {
        UpdatedSystemSoundPlayFlags = 0;
        if (gSystemSoundRingerSettings)
        {
          if (gSystemSoundRoutingForCategories && gSystemSoundLowersMusicVolume && gSystemSoundMaxVolume)
          {
            UpdatedSystemSoundPlayFlags = cmsmGetUpdatedSystemSoundPlayFlags(v2, v3, 0, 0, 0, 0, 1, 0, 0);
          }
        }
      }
    }

    else
    {
      UpdatedSystemSoundPlayFlags = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = UpdatedSystemSoundPlayFlags;
    if ((*(*(*(a1 + 32) + 8) + 24) & 3) != 0 && !CMSMDeviceState_ScreenIsBlanked())
    {
      v15 = gCMSS_0;
      if (gCMSS_0)
      {
        while (*(v15 + 12) != *(a1 + 44) || *(v15 + 8) != *(a1 + 40))
        {
          v15 = *v15;
          if (!v15)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
LABEL_45:
        v16 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200405AF6BDC9uLL);
        v17 = *(a1 + 40);
        v16[2] = v17;
        v18 = *(a1 + 44);
        v16[3] = v18;
        v19 = *(*(*(a1 + 32) + 8) + 24);
        *(v16 + 16) = v19 & 1;
        v20 = (*(*(*(a1 + 32) + 8) + 24) >> 1) & 1;
        *(v16 + 17) = (*(*(*(a1 + 32) + 8) + 24) & 2) != 0;
        if (v19)
        {
          cmsmPrewarmAudioForSSID(1, v17, v18);
          *(v16 + 18) = 1;
          v20 = *(v16 + 17);
          v17 = v16[2];
          v18 = v16[3];
        }

        if (v20)
        {
          cmsmPrewarmVibeForSSID(1, v17, v18);
          *(v16 + 19) = 1;
          v17 = v16[2];
          v18 = v16[3];
        }

        *v16 = gCMSS_0;
        gCMSS_0 = v16;
        gCMSS_1 = 1;
        CMSMSleep_CreatePrewarmIdleSleepPreventor(v17, v18);
      }
    }
  }

  else
  {
    v5 = gCMSS_0;
    if (gCMSS_0)
    {
      do
      {
        while (1)
        {
          v6 = *v5;
          v7 = *(v5 + 3);
          if (v7 == *(a1 + 44))
          {
            v8 = *(v5 + 2);
            v9 = *(a1 + 40);
            if (v8 == v9 || v9 == 0)
            {
              break;
            }
          }

          v5 = *v5;
          if (!v6)
          {
            goto LABEL_37;
          }
        }

        if (*(v5 + 16) && *(v5 + 18))
        {
          if ((v8 - 1103) <= 2)
          {
            cmsmRemoveSystemSoundAudioCategoriesThatMixIn(*(v5 + 3));
            v8 = *(v5 + 2);
            v7 = *(v5 + 3);
          }

          cmsmPrewarmAudioForSSID(0, v8, v7);
          *(v5 + 18) = 0;
        }

        if (*(v5 + 17) && *(v5 + 19))
        {
          cmsmPrewarmVibeForSSID(0, *(v5 + 2), *(v5 + 3));
          *(v5 + 19) = 0;
        }

        CMSMSleep_ReleasePrewarmIdleSleepPreventor(*(v5 + 2), *(v5 + 3));
        v11 = gCMSS_0;
        if (gCMSS_0 == v5)
        {
          v12 = &gCMSS_0;
        }

        else
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11 != v5);
        }

        *v12 = *v11;
        free(v5);
        if (*(a1 + 40))
        {
          v13 = 1;
        }

        else
        {
          v13 = v6 == 0;
        }

        v5 = v6;
      }

      while (!v13);
LABEL_37:
      v14 = gCMSS_0 != 0;
    }

    else
    {
      v14 = 0;
    }

    gCMSS_1 = v14;
  }

  return FigSimpleMutexUnlock();
}

uint64_t cmsmGetCurrentVADForSystemSoundAudioCategory(void *a1, int a2)
{
  v2 = cmsmCopySystemSoundAudioBehaviorDictionaryForAudioCategory(a1, a2);
  CurrentSystemSoundVADForAudioBehaviour = cmsGetCurrentSystemSoundVADForAudioBehaviour();
  if (v2)
  {
    CFRelease(v2);
  }

  return CurrentSystemSoundVADForAudioBehaviour;
}

uint64_t MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled()
{
  if (MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled_cold_1();
  }

  return MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled_sIsSystemSoundsMutingBehaviorInOnenessEnabled;
}

const __CFArray *vaemGetVADPortIDFromVADPortType(int a1)
{
  valuePtr = 0;
  inQualifierData = a1;
  result = vaemCopyConnectedPortsForPortTypeAndScope(&inQualifierData, 0x676C6F62u);
  if (result)
  {
    v2 = result;
    if (CFArrayGetCount(result) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
    }

    CFRelease(v2);
    return valuePtr;
  }

  return result;
}

CFTypeRef vaemCopyConnectedPortsForPortTypeAndScope(void *inQualifierData, AudioObjectPropertyScope a2)
{
  inAddress.mSelector = 1886549107;
  inAddress.mScope = a2;
  inAddress.mElement = 0;
  ioDataSize = 8;
  outData = 0;
  PropertyData = AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 4 * (inQualifierData != 0), inQualifierData, &ioDataSize, &outData);
  v3 = 0;
  if (PropertyData)
  {
    v4 = 1;
  }

  else
  {
    v4 = outData == 0;
  }

  if (!v4)
  {
    v5 = CFGetTypeID(outData);
    TypeID = CFArrayGetTypeID();
    v7 = outData;
    if (v5 == TypeID)
    {
      v8 = CFRetain(outData);
      v7 = outData;
      v3 = v8;
      if (!outData)
      {
        return v3;
      }

      goto LABEL_9;
    }

    v8 = 0;
    v3 = 0;
    if (outData)
    {
LABEL_9:
      CFRelease(v7);
      return v8;
    }
  }

  return v3;
}

uint64_t cmsGetCurrentSystemSoundVADForAudioBehaviour()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
  Value = FigCFDictionaryGetValue();
  v2 = 0;
  if (!Value)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(Value); v2 < i; i = 0)
  {
    CFArrayGetValueAtIndex(Value, v2);
    if (FigCFEqual())
    {
      if ([+[MXSessionManager speakerAlertVADID] sharedInstance]
      {
        v4 = [+[MXSessionManager sharedInstance](MXSessionManager speakerAlertVADID];
LABEL_23:
        v0 = v4;
        break;
      }
    }

    else if (FigCFEqual())
    {
      if ([+[MXSessionManager siriOutputVADID] sharedInstance]
      {
        v4 = [+[MXSessionManager sharedInstance](MXSessionManager siriOutputVADID];
        goto LABEL_23;
      }
    }

    else if (FigCFEqual())
    {
      if ([+[MXSessionManager systemSoundRemoteVADID] sharedInstance]
      {
        v4 = [+[MXSessionManager sharedInstance](MXSessionManager systemSoundRemoteVADID];
        goto LABEL_23;
      }
    }

    else if (FigCFEqual())
    {
      if ([+[MXSessionManager systemSoundLocalVADID] sharedInstance]
      {
        v4 = [+[MXSessionManager sharedInstance](MXSessionManager systemSoundLocalVADID];
        goto LABEL_23;
      }
    }

    else if (FigCFEqual())
    {
      if ([+[MXSessionManager defaultVADID] sharedInstance]
      {
        v4 = [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
        goto LABEL_23;
      }
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    ++v2;
    if (Value)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v0;
}

void __CMSMPowerLogPostPowerLogData_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  PLLogRegisteredEvent();
  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t CMSMDeviceState_VibrateOnRing(int a1)
{
  if (!a1)
  {
    cmsmdevicestate_UpdateVibrateOnRing();
  }

  return byte_1EB75D36C;
}

uint64_t CMSMDeviceState_RingerIsOn(int a1)
{
  if (!a1)
  {
    cmsmdevicestate_UpdateRingerIsOn();
  }

  return byte_1EB75D361;
}

uint64_t cmsmCopyCurrentActiveRouteTypesForSystemSound()
{
  FigSimpleMutexLock();
  v0 = qword_1EB75E0B0;
  if (qword_1EB75E0B0)
  {
    goto LABEL_5;
  }

  PropertyBoolean = FigVAEndpointManagerGetPropertyBoolean(qword_1EB75E090, 0x1F289B410);
  v2 = &kVirtualAudioDeviceUID_SystemLocal_CFString;
  if (!PropertyBoolean)
  {
    v2 = &kVirtualAudioDeviceUID_Default_CFString;
  }

  cmsmCopyCurrentActiveRoutesInfoForVADUID(*v2, &qword_1EB75E0B0, 0, 0);
  v0 = qword_1EB75E0B0;
  if (qword_1EB75E0B0)
  {
LABEL_5:
    CFRetain(v0);
    v3 = qword_1EB75E0B0;
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

BOOL CMSystemSoundMgr_DeviceIsAllowedToVibrateIfConnectedToStark()
{
  v0 = *MEMORY[0x1E69626C0];
  v1 = 1;
  if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1) && CMSMDeviceState_ScreenIsBlanked())
  {
    return CMSMDeviceState_ScreenIsBlankedByProximitySensor() != 0;
  }

  return v1;
}

uint64_t CMSMUtility_IsCameraBeingUsed()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v1)
  {
    v2 = *v7;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v7 != v2)
        {
          objc_enumerationMutation(v0);
        }

        if ([*(*(&v6 + 1) + 8 * i) isUsingCamera])
        {
          v1 = 1;
          goto LABEL_11;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t CMSMUtility_GetVADNameForVADID(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [+[MXSessionManager audioDeviceInfo:0]];
  v3 = [(NSDictionary *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      if ([-[NSDictionary objectForKey:](-[MXSessionManager audioDeviceInfo](+[MXSessionManager sharedInstance](MXSessionManager "sharedInstance")] == a1)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSDictionary *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (!CMSMVAUtility_IsAdditiveRoutingEnabled() || (v8 = -[MXAdditiveRoutingManager vadIDToName](+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager, "sharedInstance"), "vadIDToName"), (v7 = -[NSDictionary objectForKey:](v8, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1])) == 0))
    {
      v7 = 0x1F2893B50;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t FigEndpointCentralEntityHoldsResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (DerivedStorage)
        {
          if (*DerivedStorage)
          {
            v14 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          else
          {
            v7 = *(DerivedStorage + 48);
            v12[0] = MEMORY[0x1E69E9820];
            v12[1] = 3221225472;
            v12[2] = __FigEndpointCentralEntityHoldsResource_block_invoke;
            v12[3] = &unk_1E7AE7A48;
            v12[4] = &v15;
            v12[5] = a1;
            v12[6] = a2;
            v12[7] = a3;
            MXDispatchSync("FigEndpointCentralEntityHoldsResource", "FigEndpoint_Central.m", 2008, 0, 0, v7, v12);
          }
        }
      }
    }
  }

  v8 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1B17DDEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CMSMSleep_CreatePrewarmIdleSleepPreventor(uint64_t a1, uint64_t a2)
{
  if (FigAtomicCompareAndSwap32())
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if ((a1 - 1103) >= 3)
    {
      if ((a1 - 1200) >= 0xC)
      {
        v6 = (a1 - 1522) < 0xFFFFFFFD;
        if ((a1 - 1522) >= 0xFFFFFFFD)
        {
          v7 = @"orb";
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v6 = 0;
        v7 = @"touchtone";
      }
    }

    else
    {
      v6 = 0;
      v7 = @"keypress";
    }

    v8 = MX_RunningBoardServices_CopyDisplayIDForPID(a2);
    v9 = v8;
    if (v8)
    {
      CFStringAppendFormat(Mutable, 0, @"MediaExperience.pid-%d.%@.", a2, v8);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"MediaExperience.pid-%d.", a2);
    }

    if (v6)
    {
      CFStringAppendFormat(Mutable, 0, @"ssid-%d.isprewarmed", a1);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"%@.isprewarmed", v7);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v11 = CFDateCreate(v4, Current);
    v12 = sCMSessionMgrPrewarmIdleSleepPreventorName;
    sCMSessionMgrPrewarmIdleSleepPreventorName = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    v13 = sCMSessionMgrPrewarmIdleSleepPreventorCreationTime;
    sCMSessionMgrPrewarmIdleSleepPreventorCreationTime = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    PowerLogDataForSystemSound = CMSMPowerLogCreatePowerLogDataForSystemSound(v7, a2, @"SystemSoundPlayback_Start", sCMSessionMgrPrewarmIdleSleepPreventor, sCMSessionMgrPrewarmIdleSleepPreventorName, sCMSessionMgrPrewarmIdleSleepPreventorCreationTime);
    sCMSessionMgrPrewarmIdleSleepPreventorAllocated = CMSMSleep_CreateIdleSleepPreventor(Mutable, @"CoreMedia_SystemSoundPlayback", PowerLogDataForSystemSound, &sCMSessionMgrPrewarmIdleSleepPreventor);
    if (PowerLogDataForSystemSound)
    {
      CFRelease(PowerLogDataForSystemSound);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v9)
    {

      CFRelease(v9);
    }
  }
}

void cmsmUpdateDuckVolume(__CFString *key, int *a2, _DWORD *a3, int a4)
{
  if (a3)
  {
    if (a2)
    {
      *a2 = 1065353216;
    }

    valuePtr = 1065353216;
    if (key)
    {
      Value = CFDictionaryGetValue(gSystemSoundLowersMusicVolume, key);
      HasSuffix = CFStringHasSuffix(key, @"AlwaysHeard");
      if (Value)
      {
        v10 = HasSuffix;
        v11 = cmsmCopySystemSoundAudioBehaviorDictionaryForAudioCategory(key, a4);
        CurrentSystemSoundVADForAudioBehaviour = cmsGetCurrentSystemSoundVADForAudioBehaviour();
        if (v11)
        {
          CFRelease(v11);
        }

        CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
        if (a2)
        {
          *a2 = valuePtr;
        }

        if (CurrentSystemSoundVADForAudioBehaviour == [+[MXSessionManager systemSoundLocalVADID] sharedInstance]
        {
          v13 = CMSMUtility_CopyCurrentRouteTypes();
          if (FigCFEqual())
          {
            *a3 |= 0x80u;
          }

          if (v13)
          {
            CFRelease(v13);
          }
        }

        else if (!v10)
        {
          *a3 |= 0x80u;
        }
      }
    }
  }
}

uint64_t MX_FeatureFlags_IsKeyboardCHAudioEnabled()
{
  if (MX_FeatureFlags_IsKeyboardCHAudioEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsKeyboardCHAudioEnabled_cold_1();
  }

  return MX_FeatureFlags_IsKeyboardCHAudioEnabled_sIsKeyboardCHAudioEnabled;
}

uint64_t CMSMDeviceState_ScreenIsBlanked()
{
  if (byte_1EB75D348)
  {
    return byte_1EB75D340;
  }

  state64[1] = v0;
  state64[2] = v1;
  state64[0] = 0;
  if (notify_get_state(dword_1EB75D344, state64))
  {
    v3 = 1;
  }

  else
  {
    v3 = state64[0] == 0;
  }

  return !v3;
}

void cmsmPrewarmAudioForSSID(int a1, uint64_t key, int a3)
{
  v6 = CFDictionaryGetValue(gSystemSoundIDToCategory, key);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = key > 0x1000;
  }

  if (v7)
  {
    v6 = @"ThirdPartySystemSound";
  }

  MappedBehaviorCategory = CMSystemsoundMgr_GetMappedBehaviorCategory(v6);
  CurrentVADForSystemSoundAudioCategory = cmsmGetCurrentVADForSystemSoundAudioCategory(MappedBehaviorCategory, 0);
  v10 = CurrentVADForSystemSoundAudioCategory;
  VADNameForVADID = CMSMUtility_GetVADNameForVADID(CurrentVADForSystemSoundAudioCategory);
  value = 0;
  if ([+[MXSessionManager defaultVADID] sharedInstance]
  {
    v12 = gCMSS_5 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if (CFDictionaryGetValueIfPresent(gCMSS_5, VADNameForVADID, &value) && (TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(value)))
    {
      cmsmPrewarmAudioDeviceIDForSSID(key, a3, v10, VADNameForVADID, value, a1);
      CFDictionaryReplaceValue(gCMSS_5, VADNameForVADID, value);
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      cmsmPrewarmAudioDeviceIDForSSID(key, a3, v10, VADNameForVADID, Mutable, a1);
      CFDictionaryAddValue(gCMSS_5, VADNameForVADID, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }
}

void cmsmPrewarmAudioDeviceIDForSSID(uint64_t a1, int a2, AudioObjectID a3, uint64_t a4, const __CFArray *a5, int a6)
{
  v19 = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v10 = v9;
  if (!a6)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    if (a5)
    {
      v13.length = CFArrayGetCount(a5);
    }

    else
    {
      v13.length = 0;
    }

    v13.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a5, v13, v10);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(a5, FirstIndexOfValue);
      if (a5 && CFArrayGetCount(a5))
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
          v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        AudioDeviceStop(a3, 0);
      }
    }

LABEL_14:
    CFRelease(v10);
    goto LABEL_15;
  }

  if (!a5 || !CFArrayGetCount(a5))
  {
    if (dword_1EB75DE40)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    AudioDeviceStart(a3, 0);
LABEL_12:
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!dword_1EB75DE40)
  {
    goto LABEL_12;
  }

  v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v10)
  {
LABEL_13:
    CFArrayAppendValue(a5, v10);
    goto LABEL_14;
  }

LABEL_15:
  v14 = *MEMORY[0x1E69E9840];
}

void __mx_runningBoardServices_initializeMonitoring_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [a4 state];
  v6 = [objc_msgSend(v5 "process")];
  MXApplicationStateForProcessState = mx_runningBoardServices_getMXApplicationStateForProcessState(v5);
  v8 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  if ([v8 unsignedIntValue])
  {
    [gApplicationStateCacheLock lock];
    if (dword_1EB75DE60)
    {
      v27 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [gApplicationStateCache setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", MXApplicationStateForProcessState, v21, v23), v8}];
    [gApplicationStateCacheLock unlock];
  }

  else
  {
    v27 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = [objc_msgSend(objc_msgSend(objc_msgSend(a4 process];
  cmsmApplicationStateChangedNotificationCallback(MXApplicationStateForProcessState, v6, v11);
  if (v11)
  {
    CFRelease(v11);
  }

  FigRoutingManagerApplicationStateChangedNotificationCallback(MXApplicationStateForProcessState, v6);
  if (MXApplicationStateForProcessState == 1)
  {
    v12 = [MEMORY[0x1E69C75E0] identifierWithPid:v6];
    if (v12 && (v13 = [MEMORY[0x1E69C7610] predicateMatchingIdentifier:v12]) != 0)
    {
      v14 = v13;
      [gProcessPredicatesSetLock lock];
      v15 = [gProcessPredicatesSet countForObject:v14];
      if (v15)
      {
        v16 = v15;
        do
        {
          [gProcessPredicatesSet removeObject:v14];
          --v16;
        }

        while (v16);
        v17 = [gProcessPredicatesSet copy];
        [gProcessPredicatesSetLock unlock];
        v27 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __mx_runningBoardServices_initializeMonitoring_block_invoke_36;
        v25[3] = &unk_1E7AEC550;
        v25[4] = v17;
        [gProcessMonitor updateConfiguration:v25];
      }

      else
      {
        [gProcessPredicatesSetLock unlock];
      }

      mx_runningBoardServices_removePIDFromApplicationStateCache([MEMORY[0x1E696AD98] numberWithInt:{v6, v22, v24}]);
    }

    else
    {
      v27 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t CMSMUtility_GetStringForApplicationState(uint64_t a1)
{
  if (a1 < 9 && ((0x117u >> a1) & 1) != 0)
  {
    return *(&off_1E7AEB110 + a1);
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%d)", a1];
  }
}

void cmsmApplicationStateChangedNotificationCallback(int a1, int a2, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = MXGetSerialQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __cmsmApplicationStateChangedNotificationCallback_block_invoke;
  v7[3] = &__block_descriptor_48_e5_v8__0l;
  v8 = a1;
  v9 = a2;
  v7[4] = cf;
  MXDispatchAsyncAndWait("cmsmApplicationStateChangedNotificationCallback", "CMSessionManager.m", 17871, 0, 0, v6, v7);
}

void __cmsmApplicationStateChangedNotificationCallback_block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 40);
  SInt32 = FigCFNumberCreateSInt32();
  v5 = *(a1 + 44);
  v6 = FigCFNumberCreateSInt32();
  if (CMSessionMgrHandleApplicationStateChange(v6, SInt32, *(a1 + 32)))
  {
    if (SInt32)
    {
      CFRelease(SInt32);
    }

    if (v6)
    {

      CFRelease(v6);
    }
  }

  else
  {
    v7 = MXGetSerialQueue();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __cmsmApplicationStateChangedNotificationCallback_block_invoke_2;
    v9[3] = &__block_descriptor_48_e5_v8__0l;
    v9[4] = v6;
    v9[5] = SInt32;
    MXDispatchAsync("cmsmApplicationStateChangedNotificationCallback_block_invoke", "CMSessionManager.m", 17910, 0, 0, v7, v9);
    v8 = *(a1 + 32);
    if (v8)
    {
      CFRelease(v8);
    }
  }
}

uint64_t CMSUtilityPredicate_IsAffectedByApplicationStateChange(uint64_t a1, void *a2, void *a3)
{
  result = [a3 unsignedIntValue];
  if (result)
  {
    v5 = result;
    v6 = [a2 pidToInheritAppStateFrom];
    if (!v6)
    {
      v6 = [objc_msgSend(a2 "clientPID")];
    }

    return v6 == v5;
  }

  return result;
}

BOOL CMSMUtility_FetchBackgroundEntitlement(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v1 = MX_RunningBoardServices_CopyBundleInfoValueForKeyAndPID(@"UIBackgroundModes", a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(v2);
    v7.location = 0;
    v7.length = Count;
    if (CFArrayContainsValue(v2, v7, @"voip"))
    {
      v5 = 1;
    }

    else
    {
      v8.location = 0;
      v8.length = Count;
      v5 = CFArrayContainsValue(v2, v8, @"audio") != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v2);
  return v5;
}

uint64_t MX_RunningBoardServices_GetApplicationStateForPID(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  if (![v4 unsignedIntValue])
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_6:
    v7 = [mx_runningBoardServices_getProcessHandleForPID(a1) currentState];
    MXApplicationStateForProcessState = mx_runningBoardServices_getMXApplicationStateForProcessState(v7);
    goto LABEL_7;
  }

  [gApplicationStateCacheLock lock];
  MXApplicationStateForProcessState = [objc_msgSend(gApplicationStateCache objectForKey:{v4), "unsignedIntValue"}];
  [gApplicationStateCacheLock unlock];
  if (a2 || !MXApplicationStateForProcessState)
  {
    goto LABEL_6;
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];
  return MXApplicationStateForProcessState;
}

uint64_t MXSessionCreate(void *a1, MXSession **a2)
{
  if (!a1)
  {
    MXSessionCreate_cold_2(&v10);
    return v10;
  }

  if (!a2)
  {
    MXSessionCreate_cold_1(&v10);
    return v10;
  }

  v4 = objc_autoreleasePoolPush();
  if ([a1 isMemberOfClass:objc_opt_class()])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = __Block_byref_object_copy__6;
    v14 = __Block_byref_object_dispose__6;
    v15 = 0;
    v5 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __MXSessionCreate_block_invoke;
    v9[3] = &unk_1E7AE7168;
    v9[4] = &v10;
    v9[5] = a1;
    MXDispatchAsyncAndWait("MXSessionCreate", "MXSession_CInterfaceCommon.m", 67, 0, 0, v5, v9);
    *a2 = v11[5];
    _Block_object_dispose(&v10, 8);
    v6 = *a2;
  }

  else
  {
    v6 = [[MXSession alloc] initWithSession:a1];
    *a2 = v6;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 4294951616;
  }

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_1B17DF828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CMSessionMgrCopyDisplayIdentifierToSession(void *a1)
{
  v2 = a1;
  v3 = MXGetSerialQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CMSessionMgrCopyDisplayIdentifierToSession_block_invoke;
  v4[3] = &unk_1E7AE7CE0;
  v4[4] = a1;
  MXDispatchAsync("CMSessionMgrCopyDisplayIdentifierToSession", "CMSessionManager.m", 6958, 0, 0, v3, v4);
}

void CMSUtility_FetchSessionEntitlements(void *a1, __SecTask *a2)
{
  [a1 setHasEntitlementToRecordAudioInAnExtension:0];
  [a1 setHasEntitlementToStartRecordingInTheBackground:0];
  [a1 setHasEntitlementToSuppressRecordingStateToSystemStatus:0];
  [a1 setHasEntitlementToSupportProcessAssertionAuditTokens:0];
  [a1 setHasEntitlementToSetEmergencyAlertPriority:0];
  [a1 setHasEntitlementToSetPrefersToOptOutOfHardwareSafetyInterruptions:0];
  [a1 setHasEntitlementToSetPrefersNoInterruptions:0];
  [a1 setHasEntitlementToSetPreferredMinimumMicrophoneIndicatorLightOnTime:0];
  if (CMSUtility_IsAnExtension(a1))
  {
    v4 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.coremedia.extensions.audiorecording.allow", 0);
    if ([v4 BOOLValue])
    {
      [a1 setHasEntitlementToRecordAudioInAnExtension:1];
    }

    if (([a1 hasEntitlementToRecordAudioInAnExtension] & 1) == 0)
    {
      v5 = MX_RunningBoardServices_CopyBundleExtensionPointID(a1);
      if (FigCFEqual() || FigCFEqual())
      {
        v6 = 1;
        if (!v5)
        {
LABEL_9:
          [a1 setHasEntitlementToRecordAudioInAnExtension:v6];
          goto LABEL_10;
        }
      }

      else
      {
        v6 = FigCFEqual() != 0;
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      CFRelease(v5);
      goto LABEL_9;
    }
  }

LABEL_10:
  v7 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.startrecordinginthebackground.allow", 0);
  if ([v7 BOOLValue])
  {
    [a1 setHasEntitlementToStartRecordingInTheBackground:1];
  }

  v8 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.suppressrecordingstatetosystemstatus", 0);
  if ([v8 BOOLValue])
  {
    [a1 setHasEntitlementToSuppressRecordingStateToSystemStatus:1];
  }

  v9 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.processassertionaudittokens.allow", 0);
  if ([v9 BOOLValue])
  {
    [a1 setHasEntitlementToSupportProcessAssertionAuditTokens:1];
  }

  v10 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.allowrecordingduringcall", 0);
  if ([v10 BOOLValue])
  {
    [a1 setHasEntitlementToRecordDuringCall:1];
  }

  v11 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.allowemergencyalertpriority", 0);
  if ([v11 BOOLValue])
  {
    [a1 setHasEntitlementToSetEmergencyAlertPriority:1];
  }

  v12 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.prefersnointerruptions.allow", 0);
  if ([v12 BOOLValue])
  {
    [a1 setHasEntitlementToSetPrefersNoInterruptions:1];
  }

  v13 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.microphoneattribution.allow", 0);
  if ([v13 BOOLValue])
  {
    [a1 setHasEntitlementToShowMicrophoneIndicatorWhileNotRecording:1];
  }

  v14 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.preferredminimummicrophoneindicatorlightontime.allow", 0);
  if ([v14 BOOLValue])
  {
    [a1 setHasEntitlementToSetPreferredMinimumMicrophoneIndicatorLightOnTime:1];
  }

  v15 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.isusingbuiltinmicforrecording.allow", 0);
  if ([v15 BOOLValue])
  {
    [a1 setHasEntitlementToSetIsUsingBuiltInMicForRecording:1];
  }

  v16 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.mediaexperience.preferstooptoutofhardwaresafetyinterruptions.allow", 0);
  if ([v16 BOOLValue])
  {
    [a1 setHasEntitlementToSetPrefersToOptOutOfHardwareSafetyInterruptions:1];
  }
}

void CMSMPowerLogPostPowerLogData(CFTypeRef cf, CFTypeRef a2)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CMSMPowerLogPostPowerLogData_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = cf;
  v5[5] = a2;
  MXDispatchAsync("CMSMPowerLogPostPowerLogData", "CMSessionManager_PowerLog.m", 176, 0, 0, global_queue, v5);
}

void __CMSessionMgrCopyDisplayIdentifierToSession_block_invoke(uint64_t a1)
{
  v2 = MX_RunningBoardServices_CopyDisplayIDForPID([objc_msgSend(*(a1 + 32) "clientPID")]);
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) setDisplayID:v2];

    CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded();
  }

  if ([*(a1 + 32) displayID] && objc_msgSend(*(a1 + 32), "reporterIDs"))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"MXHostApplicationDisplayID", [*(a1 + 32) displayID]);
    v5 = [objc_msgSend(*(a1 + 32) "reporterIDs")];
    if (v5 >= 1)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        valuePtr = 1;
        ValueAtIndex = CFArrayGetValueAtIndex([*(a1 + 32) reporterIDs], i);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
        off_1EB75E020(valuePtr, Mutable);
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v9 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *(a1 + 32);
    if ([v10 displayID])
    {
      Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], [v10 displayID]);
      v12 = v10;
      SerialQueue = MX_CoreServices_GetSerialQueue();
      valuePtr = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __cmsCopyInitialRouteSharingPolicyToSession_block_invoke;
      v18 = &unk_1E7AEBCA0;
      v19[0] = v10;
      v19[1] = Copy;
      MXDispatchAsync("cmsCopyInitialRouteSharingPolicyToSession", "CMSessionManager.m", 6881, 0, 0, SerialQueue, &valuePtr);
    }

    objc_initWeak(&location, *(a1 + 32));
    v14 = MX_CoreServices_GetSerialQueue();
    valuePtr = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __cmsCopyGameAudioPreferencesToSession_block_invoke;
    v18 = &unk_1E7AEA958;
    objc_copyWeak(v19, &location);
    MXDispatchAsync("cmsCopyGameAudioPreferencesToSession", "CMSessionManager.m", 6925, 0, 0, v14, &valuePtr);
    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }
}

void sub_1B17E05B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded()
{
  v11 = *MEMORY[0x1E69E9840];
  if (CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded_onceToken != -1)
  {
    CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded_cold_1();
  }

  if (MX_FeatureFlags_IsSmartRoutingOnActivationEnabled())
  {
    v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyHighestPriorityActiveSession:"copyHighestPriorityActiveSession:deviceIdentifier:" deviceIdentifier:0x1F2893B50, 0];
  }

  else
  {
    v0 = CMSM_CopyHighestPriorityLocalPlayingSession(1);
  }

  v1 = v0;
  LocalSessionPriority = CMSM_GetLocalSessionPriority(v0, 1);
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LocalSessionPriority];
  if ([v1 displayID])
  {
    v5 = [v1 displayID];
  }

  else
  {
    v5 = @"Unknown";
  }

  v6 = [v3 initWithObjectsAndKeys:{v4, @"HighestArbitrationPriorityForTipi_AudioScore", v5, @"HighestArbitrationPriorityForTipi_BundleID", 0}];
  [CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded_sOldHighestArbitrationPriorityForTipiInfoLock lock];
  if (([CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded_sOldHighestArbitrationPriorityForTipiInfo isEqualToDictionary:v6] & 1) == 0)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [MXSystemController notifyAll:@"HighestArbitrationPriorityForTipiDidChange" payload:v6 dontPostIfSuspended:0, v9, v10];

    CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded_sOldHighestArbitrationPriorityForTipiInfo = v6;
  }

  [CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded_sOldHighestArbitrationPriorityForTipiInfoLock unlock];

  v8 = *MEMORY[0x1E69E9840];
}

id CMSM_CopyHighestPriorityLocalPlayingSession(int a1)
{
  v2 = CMSMUtility_CopyMatchingSessions(0, CMSUtilityPredicate_IsPlaying, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFArrayGetCount(v2) < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 100;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
      LocalSessionPriority = CMSM_GetLocalSessionPriority(ValueAtIndex, a1);
      if (LocalSessionPriority != 100 && LocalSessionPriority > v6)
      {
        v10 = LocalSessionPriority;
        if (([ValueAtIndex currentlyControllingFlags] & 2) != 0)
        {
          if (CMSUtility_IsPlayingToDefaultVAD(ValueAtIndex))
          {

            v5 = ValueAtIndex;
            v6 = v10;
          }
        }
      }

      ++v4;
    }

    while (v4 < CFArrayGetCount(v3));
  }

  CFRelease(v3);
  return v5;
}

uint64_t MX_FeatureFlags_IsSmartRoutingOnActivationEnabled()
{
  if (MX_FeatureFlags_IsSmartRoutingOnActivationEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsSmartRoutingOnActivationEnabled_cold_1();
  }

  return MX_FeatureFlags_IsSmartRoutingOnActivationEnabled_sSmartRoutingOnActivationEnabled;
}

__CFArray *CMSMUtility_CopyMatchingSessions(uint64_t a1, unsigned int (*a2)(uint64_t, void, uint64_t), uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v7 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          if (!a2 || a2(a1, *(*(&v15 + 1) + 8 * v11), a3))
          {
            CFArrayAppendValue(Mutable, v12);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    if (!CFArrayGetCount(Mutable))
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t PowerManager_SetPowerBudgetOnVAAndSendAcknowledgementToCPMSForResource(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = vaemSetCPMSPowerBudget(a3, a1);
  if (v6)
  {
    v7 = v6;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = *MEMORY[0x1E69E9840];
    return v7;
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];

    return PowerManager_SendAcknowledgementToCPMSForResource(a1, a2, a3);
  }
}

uint64_t vaemSetCPMSPowerBudget(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = a1;
  if (a2 == 6)
  {
    [+[MXSessionManager sharedInstance](MXSessionManager actuatorVADID];
  }

  else
  {
    if (a2 != 5)
    {
      result = 4294954315;
      goto LABEL_8;
    }

    [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
  }

  result = CMSMVAUtility_AudioObjectSetPropertyData();
  v5 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = v5;
  }

LABEL_8:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PowerManager_SendAcknowledgementToCPMSForResource(uint64_t a1, void *a2, uint64_t a3)
{
  v6[22] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if ([a2 acknowledgePowerBudget:a3 forClientId:a1 error:v6])
  {
    result = 0;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = 4294950314;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

__CFDictionary *CMSMPowerLogCreatePowerLogDataForSystemSound(const void *a1, int a2, const void *a3, int a4, const void *a5, const void *a6)
{
  v18 = a4;
  valuePtr = a2;
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a2)
  {
    v14 = CFNumberCreate(v12, kCFNumberSInt32Type, &valuePtr);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
LABEL_8:
    v16 = 1;
    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v14 = 0;
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = CFNumberCreate(v12, kCFNumberSInt32Type, &v18);
  if (!v15)
  {
    goto LABEL_8;
  }

  CFDictionarySetValue(Mutable, @"AssertionID", v15);
  v16 = 0;
  if (a5)
  {
LABEL_9:
    CFDictionarySetValue(Mutable, @"AssertionName", a5);
  }

LABEL_10:
  if (a6)
  {
    CFDictionarySetValue(Mutable, @"CreationTime", a6);
    CFDictionarySetValue(Mutable, @"PlaybackStartTime", a6);
  }

  if (a1)
  {
    CFDictionarySetValue(Mutable, @"SystemSoundName", a1);
  }

  if (v14)
  {
    CFDictionarySetValue(Mutable, @"PID", v14);
  }

  if (a3)
  {
    CFDictionarySetValue(Mutable, @"Operation", a3);
  }

  if (qword_1EB75E0B0)
  {
    CFDictionarySetValue(Mutable, @"SystemSoundAudioRoute", qword_1EB75E0B0);
  }

  if ((v16 & 1) == 0)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return Mutable;
}

BOOL CMSMSleep_CreateIdleSleepPreventor(const void *a1, const void *a2, __CFDictionary *a3, IOPMAssertionID *a4)
{
  if (!a4)
  {
    return 0;
  }

  if (a1)
  {
    DefaultIdlePreventorName = CFRetain(a1);
  }

  else
  {
    DefaultIdlePreventorName = CMSMSleep_CreateDefaultIdlePreventorName();
  }

  v9 = DefaultIdlePreventorName;
  AssertionID = 0;
  v10 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, DefaultIdlePreventorName, &AssertionID);
  if (!v10)
  {
    if (a2)
    {
      valuePtr = AssertionID;
      if (a3)
      {
        if (AssertionID)
        {
          v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
          CFDictionarySetValue(a3, @"AssertionID", v11);
          if (v11)
          {
            CFRelease(v11);
          }
        }
      }

      CMSMPowerLogPostPowerLogData(a2, a3);
    }

    *a4 = AssertionID;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v10 == 0;
}

uint64_t MX_CoreServices_GetSerialQueue()
{
  if (MX_CoreServices_GetSerialQueue_onceToken != -1)
  {
    MX_CoreServices_GetSerialQueue_cold_1();
  }

  return MX_CoreServices_GetSerialQueue_sSerialQueue;
}

void sub_1B17E1780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __cmsCopyInitialRouteSharingPolicyToSession_block_invoke(uint64_t a1)
{
  v2 = MX_CoreServices_CopyInitialRouteSharingPolicyForBundleID(*(a1 + 40));
  v3 = MXGetSerialQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __cmsCopyInitialRouteSharingPolicyToSession_block_invoke_2;
  v5[3] = &unk_1E7AE79D0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v5[5] = v2;
  v5[6] = v4;
  MXDispatchAsync("cmsCopyInitialRouteSharingPolicyToSession_block_invoke", "CMSessionManager.m", 6885, 0, 0, v3, v5);
}

void *MX_CoreServices_CopyInitialRouteSharingPolicyForBundleID(uint64_t a1)
{
  v1 = 0;
  if (a1 && gCoreServicesIsInitialized)
  {
    v2 = [gLSApplicationProxyClass applicationProxyForIdentifier:a1];
    v3 = objc_opt_new();
    [v3 addObject:@"AVInitialRouteSharingPolicy"];
    v1 = [objc_msgSend(v2 objectsForInfoDictionaryKeys:{v3), "stringForKey:", @"AVInitialRouteSharingPolicy"}];
    v4 = v1;
  }

  return v1;
}

void __cmsCopyGameAudioPreferencesToSession_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    IsGameApp = CMSUtility_IsGameApp(Weak);
    if (IsGameApp)
    {
      v4 = MX_RunningBoardServices_CopyBundleInfoValueForKeyAndPID(@"AVGameBypassSystemSpatialAudio", [objc_msgSend(v2 "clientPID")]);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v4 BOOLValue];
      }

      else
      {
        v5 = 0;
      }

      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    [v2 setBypassSystemSpatialAudioForGame:{v5, v8, v9}];
    [v2 setDoesGameAudioNeedToBeSpatialized:IsGameApp & (v5 ^ 1)];
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t CMSUtility_IsGameApp(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (MX_CoreServices_DoesAppHaveGamesGenre([a1 displayID]))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v5 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v3 = MX_RunningBoardServices_CopyBundleInfoValueForKeyAndPID(@"LSApplicationCategoryType", [objc_msgSend(a1 "clientPID")]);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 hasSuffix:@"games"])
    {
      if (dword_1EB75DE40)
      {
        v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        v5 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t MX_CoreServices_DoesAppHaveGamesGenre(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [gLSApplicationProxyClass applicationProxyForIdentifier:a1];
    if ([objc_msgSend(v1 "genre")])
    {
      result = 1;
    }

    else
    {
      result = [objc_msgSend(v1 "genreID")];
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MX_FeatureFlags_IsSystemInputPickerEnabled()
{
  if (MX_FeatureFlags_IsSystemInputPickerEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsSystemInputPickerEnabled_cold_1();
  }

  return MX_FeatureFlags_IsSystemInputPickerEnabled_sIsSystemInputPickerEnabled;
}

void CMSMDebugUtility_PrintDictionary(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(a1);
        }

        if (dword_1EB75DE40)
        {
          v6 = *(*(&v10 + 1) + 8 * i);
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v3 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  objc_autoreleasePoolPop(context);
  v8 = *MEMORY[0x1E69E9840];
}

void MX_SystemStatus_PublishRecordingClientsInfo()
{
  v63 = *MEMORY[0x1E69E9840];
  if (mxsystemstatus_initialize_onceToken != -1)
  {
LABEL_65:
    MX_SystemStatus_PublishRecordingClientsInfo_cold_1();
  }

  if ((sIsSystemStatusInitialized & 1) == 0)
  {
    LODWORD(v45) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v33 = v45;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
    {
      v34 = v33;
    }

    else
    {
      v34 = v33 & 0xFFFFFFFE;
    }

    if (v34)
    {
      *v51 = 136315138;
      *&v51[4] = "MX_SystemStatus_PublishRecordingClientsInfo";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_63;
  }

  v0 = CMSMUtility_CopyRecordingClientsInfoForSystemStatus();
  FigSimpleMutexLock();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v40 = [v0 countByEnumeratingWithState:&v47 objects:v58 count:16];
  v1 = &AVSystemController_EUVolumeLimitNotificationParameter;
  if (!v40)
  {
    goto LABEL_56;
  }

  v39 = *v48;
  v38 = v0;
  while (2)
  {
    for (i = 0; i != v40; ++i)
    {
      if (*v48 != v39)
      {
        objc_enumerationMutation(v0);
      }

      v3 = *(*(&v47 + 1) + 8 * i);
      v42 = [objc_msgSend(v3 objectForKey:{@"PID", v36, v37), "unsignedIntValue"}];
      v43 = [objc_msgSend(v3 objectForKey:{@"Muted", "BOOLValue"}];
      if (!MX_FeatureFlags_IsPublishHostAttributionToSystemStatusEnabled())
      {
        v17 = [objc_alloc(getSTActivityAttributionClass()) initWithPID:v42];
        goto LABEL_49;
      }

      v4 = [v3 objectForKey:@"ActiveEntityBundleID"];
      v5 = [v3 objectForKey:@"AttributedBundleID"];
      v6 = [v3 objectForKey:@"AttributedAuditToken"];
      v7 = [v3 objectForKey:@"ActiveEntityAuditToken"];
      if (v6)
      {
        v7 = v6;
      }

      if (v7)
      {
        *&v8 = -1;
        *(&v8 + 1) = -1;
        v45 = v8;
        v46 = v8;
        [v7 getBytes:&v45 length:32];
        *type = v45;
        v57 = v46;
        *v51 = 0;
        *&v51[8] = v51;
        *&v51[16] = 0x2020000000;
        v9 = getBSExecutablePathForAuditTokenSymbolLoc_ptr;
        v52 = getBSExecutablePathForAuditTokenSymbolLoc_ptr;
        if (!getBSExecutablePathForAuditTokenSymbolLoc_ptr)
        {
          *&v59 = MEMORY[0x1E69E9820];
          *(&v59 + 1) = 3221225472;
          *&v60 = __getBSExecutablePathForAuditTokenSymbolLoc_block_invoke;
          *(&v60 + 1) = &unk_1E7AE73A0;
          v61 = v51;
          __getBSExecutablePathForAuditTokenSymbolLoc_block_invoke(&v59);
          v9 = *(*&v51[8] + 24);
        }

        _Block_object_dispose(v51, 8);
        if (!v9)
        {
          __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
          __break(1u);
          goto LABEL_65;
        }

        v59 = *type;
        v60 = v57;
        v10 = v9(&v59);
        v41 = [objc_alloc(getSTAttributedEntityClass()) initWithExecutablePath:v10];
        if (v5)
        {
LABEL_16:
          *&v59 = 0;
          *(&v59 + 1) = &v59;
          *&v60 = 0x3052000000;
          *(&v60 + 1) = __Block_byref_object_copy__4;
          v61 = __Block_byref_object_dispose__4;
          v11 = getSTExecutableIdentityClass_softClass;
          v62 = getSTExecutableIdentityClass_softClass;
          if (!getSTExecutableIdentityClass_softClass)
          {
            *v51 = MEMORY[0x1E69E9820];
            *&v51[8] = 3221225472;
            *&v51[16] = __getSTExecutableIdentityClass_block_invoke;
            v52 = &unk_1E7AE73A0;
            *v53 = &v59;
            __getSTExecutableIdentityClass_block_invoke(v51);
            v11 = *(*(&v59 + 1) + 40);
          }

          _Block_object_dispose(&v59, 8);
          v12 = [[v11 alloc] initWithApplicationBundleIdentifier:v5];
          v13 = [v3 objectForKey:@"Website"];
          if (dword_1EB75DE40)
          {
            LODWORD(v45) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v15 = v45;
            if (os_log_type_enabled(v14, type[0]))
            {
              v16 = v15;
            }

            else
            {
              v16 = v15 & 0xFFFFFFFE;
            }

            if (v16)
            {
              *v51 = 136316162;
              *&v51[4] = "MX_SystemStatus_PublishRecordingClientsInfo";
              *&v51[12] = 2114;
              *&v51[14] = v4;
              *&v51[22] = 2114;
              v52 = v10;
              *v53 = 2114;
              *&v53[2] = v5;
              v54 = 1024;
              v55 = v42;
              LODWORD(v37) = 48;
              v36 = v51;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v0 = v38;
            v1 = &AVSystemController_EUVolumeLimitNotificationParameter;
          }

          v21 = objc_alloc(getSTAttributedEntityClass());
          if (v13)
          {
            v22 = [v21 initWithExecutableIdentity:v12 website:v13];
          }

          else
          {
            v22 = [v21 initWithExecutableIdentity:v12];
          }

          v17 = [objc_alloc(getSTActivityAttributionClass()) initWithAttributedEntity:v22 activeEntity:v41];
          if (v17)
          {
            goto LABEL_48;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v41 = 0;
        v10 = 0;
        if (v5)
        {
          goto LABEL_16;
        }
      }

      if (dword_1EB75DE40)
      {
        LODWORD(v45) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v19 = v45;
        if (os_log_type_enabled(v18, type[0]))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          *v51 = 136315650;
          *&v51[4] = "MX_SystemStatus_PublishRecordingClientsInfo";
          *&v51[12] = 2114;
          *&v51[14] = v4;
          *&v51[22] = 2114;
          v52 = v10;
          LODWORD(v37) = 32;
          v36 = v51;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v22 = [objc_alloc(getSTAttributedEntityClass()) initWithExecutablePath:v10];
      v17 = [objc_alloc(getSTActivityAttributionClass()) initWithAttributedEntity:v22];
      v12 = 0;
      if (v17)
      {
        goto LABEL_48;
      }

LABEL_40:
      if (dword_1EB75DE40)
      {
        LODWORD(v45) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v24 = v45;
        if (os_log_type_enabled(v23, type[0]))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          *v51 = 136315394;
          *&v51[4] = "MX_SystemStatus_PublishRecordingClientsInfo";
          *&v51[12] = 1024;
          *&v51[14] = v42;
          LODWORD(v37) = 18;
          v36 = v51;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v17 = [objc_alloc(getSTActivityAttributionClass()) initWithPID:v42];
LABEL_48:

LABEL_49:
      if (v43)
      {
        [(__CFString *)v1[198] addObject:v17];
      }

      else
      {
        [objc_msgSend(v3 objectForKey:{@"MininumMicrophoneIndicatorLightOnTime", "doubleValue"}];
        v27 = v26;
        *&v59 = 0;
        *(&v59 + 1) = &v59;
        *&v60 = 0x3052000000;
        *(&v60 + 1) = __Block_byref_object_copy__4;
        v61 = __Block_byref_object_dispose__4;
        v28 = getSTMediaStatusDomainMicrophoneRecordingAttributionClass_softClass;
        v62 = getSTMediaStatusDomainMicrophoneRecordingAttributionClass_softClass;
        if (!getSTMediaStatusDomainMicrophoneRecordingAttributionClass_softClass)
        {
          *v51 = MEMORY[0x1E69E9820];
          *&v51[8] = 3221225472;
          *&v51[16] = __getSTMediaStatusDomainMicrophoneRecordingAttributionClass_block_invoke;
          v52 = &unk_1E7AE73A0;
          *v53 = &v59;
          __getSTMediaStatusDomainMicrophoneRecordingAttributionClass_block_invoke(v51);
          v28 = *(*(&v59 + 1) + 40);
        }

        _Block_object_dispose(&v59, 8);
        v29 = [[v28 alloc] initWithActivityAttribution:v17 maximumHistoryAccessed:v27];
        [sRecordingClientsInfo addObject:v29];
      }
    }

    v40 = [v0 countByEnumeratingWithState:&v47 objects:v58 count:16];
    if (v40)
    {
      continue;
    }

    break;
  }

LABEL_56:
  v30 = [sRecordingClientsInfo copy];
  v31 = [(__CFString *)v1[198] copy];
  [sRecordingClientsInfo removeAllObjects];
  [(__CFString *)v1[198] removeAllObjects];

  FigSimpleMutexUnlock();
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __MX_SystemStatus_PublishRecordingClientsInfo_block_invoke;
  v44[3] = &unk_1E7AEA340;
  v44[4] = v30;
  v44[5] = v31;
  MXDispatchAsync("MX_SystemStatus_PublishRecordingClientsInfo", "MX_SystemStatus.m", 279, 0, 0, gSerializationQueue, v44);
LABEL_63:
  v35 = *MEMORY[0x1E69E9840];
}

uint64_t MX_FeatureFlags_IsPublishHostAttributionToSystemStatusEnabled()
{
  if (MX_FeatureFlags_IsPublishHostAttributionToSystemStatusEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsPublishHostAttributionToSystemStatusEnabled_cold_1();
  }

  return MX_FeatureFlags_IsPublishHostAttributionToSystemStatusEnabled_sPublishHostAttributionToSystemStatusEnabled;
}

id CMSMUtility_CopyRecordingClientsInfoForSystemStatus()
{
  v41 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = +[MXSessionManagerBase copyAllMXCoreSessionList];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v35;
    v5 = v0 != 0;
    v30 = v1;
    v31 = v0;
    v33 = v5;
    v32 = *v35;
    do
    {
      v6 = 0;
      do
      {
        if (*v35 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v34 + 1) + 8 * v6);
        if ([v7 isMemberOfClass:objc_opt_class()] && objc_msgSend(v7, "hasEntitlementToShowMicrophoneIndicatorWhileNotRecording"))
        {
          v8 = [v7 wantsToShowMicrophoneIndicatorWhenNotRecording];
        }

        else
        {
          v8 = 0;
        }

        if ([v7 isRecording] & 1) != 0 || ((objc_msgSend(v7, "isUsingBuiltInMicForRecording") | v8))
        {
          v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v10 = [v7 hasEntitlementToSuppressRecordingStateToSystemStatus];
          v11 = v5;
          if (v10)
          {
            v11 = ((CMSUtility_GetPrefersSuppressingRecordingState(v7) == 0) | v8) & (v0 != 0);
          }

          if (v11 && v9)
          {
            [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(objc_msgSend(v7, "clientPID"), "unsignedIntValue")), 0x1F2893D90}];
            if ([v7 isMemberOfClass:objc_opt_class()])
            {
              v12 = MEMORY[0x1E696AD98];
              if (v8)
              {
                v13 = 0;
              }

              else
              {
                v13 = [v7 isRecordingMuted];
              }

              [v9 setObject:objc_msgSend(v12 forKey:{"numberWithBool:", v13), 0x1F28944B0}];
            }

            if (MX_FeatureFlags_IsPublishHostAttributionToSystemStatusEnabled())
            {
              if ([v7 displayID])
              {
                [v9 setObject:objc_msgSend(v7 forKey:{"displayID"), 0x1F289DDF0}];
              }

              if ([v7 isMemberOfClass:objc_opt_class()] && (objc_msgSend(v7, "auditTokenSetByClient") & 1) != 0 || objc_msgSend(v7, "isMemberOfClass:", objc_opt_class()))
              {
                v38 = 0u;
                v39 = 0u;
                if (v7)
                {
                  [v7 auditToken];
                }

                [v9 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &v38, 32), 0x1F289DE10}];
              }

              if ([v7 isMemberOfClass:objc_opt_class()])
              {
                v14 = [objc_msgSend(v7 "hostProcessAttribution")];
                if (v14)
                {
                  v15 = v14;
                  v16 = [v14 valueForKey:@"BundleID"];
                  v17 = [v15 valueForKey:@"RecordingWebsite"];
                  v18 = [v15 valueForKey:@"AuditToken"];
                  if (dword_1EB75DE40)
                  {
LABEL_36:
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v0 = v31;
                    goto LABEL_37;
                  }

                  goto LABEL_38;
                }

                v19 = [-[MXMediaEndowmentManager getHostProcessAttributions:](+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager "sharedInstance")];
                if (v19)
                {
                  v20 = v19;
                  v16 = [v19 valueForKey:@"BundleID"];
                  v17 = [v20 valueForKey:@"RecordingWebsite"];
                  v18 = [v20 valueForKey:@"AuditToken"];
                  if (dword_1EB75DE40)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_38;
                }

                if ([v7 isCameraRecordingExtension])
                {
                  if (v7)
                  {
                    [v7 auditToken];
                  }

                  else
                  {
                    v38 = 0u;
                    v39 = 0u;
                  }

                  v23 = MX_CoreServices_CopyContainingBundleID(&v38);
                  if (dword_1EB75DE40)
                  {
                    v16 = v23;
                    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
                    v0 = v31;
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v18 = 0;
                    v17 = 0;
LABEL_37:
                    v1 = v30;
LABEL_38:
                    v22 = v16;
                    v4 = v32;
                    if (v22)
                    {
LABEL_39:
                      [v9 setObject:v28 forKey:v29];
                    }
                  }

                  else
                  {
                    v18 = 0;
                    v17 = 0;
                    if (v23)
                    {
                      goto LABEL_39;
                    }
                  }

                  if (v17)
                  {
                    [v9 setObject:v17 forKey:0x1F289DDB0];
                  }

                  if (v18)
                  {
                    [v9 setObject:v18 forKey:0x1F289DE30];
                  }
                }

                v5 = v33;
                if ([v7 preferredMinimumMicrophoneIndicatorLightOnTime])
                {
                  [v9 setObject:objc_msgSend(v7 forKey:{"preferredMinimumMicrophoneIndicatorLightOnTime"), 0x1F289DE50}];
                }
              }
            }

            [v0 addObject:v9];
          }
        }

        ++v6;
      }

      while (v3 != v6);
      v25 = [v1 countByEnumeratingWithState:&v34 objects:v40 count:16];
      v3 = v25;
    }

    while (v25);
  }

  v26 = *MEMORY[0x1E69E9840];
  return v0;
}

__CFArray *vaemCopyActiveInputRouteNamesForRouteConfiguration(NSDictionary *a1, uint64_t a2, const void *a3, int a4)
{
  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(a1);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(a2);
  v9 = vaemCopyVADInputPortsForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, 0, a3, a4);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  Count = CFArrayGetCount(v9);
  if (Count < 1)
  {
    Mutable = 0;
  }

  else
  {
    v12 = Count;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    for (i = 0; i != v12; ++i)
    {
      PortAtIndex = CMSMVAUtility_GetPortAtIndex(v10, i);
      v16 = vaeCopyNameForPort(PortAtIndex);
      if (v16)
      {
        v17 = v16;
        CFArrayAppendValue(Mutable, v16);
        CFRelease(v17);
      }
    }
  }

  CFRelease(v10);
  return Mutable;
}

uint64_t CMSMUtility_IsSharePlayCallSessionActive()
{
  v12 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsSharePlayEnabled())
  {
    v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v1)
    {
      v2 = *v8;
      while (2)
      {
        for (i = 0; i != v1; ++i)
        {
          if (*v8 != v2)
          {
            objc_enumerationMutation(v0);
          }

          v4 = *(*(&v7 + 1) + 8 * i);
          if (CMSUtility_GetIsActive(v4) && ([v4 isSharePlayCallSession] & 1) != 0)
          {
            v1 = 1;
            goto LABEL_14;
          }
        }

        v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v1)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v1 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v1;
}

CFTypeRef vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(int a1, int a2, const void *a3, const void *a4, int a5, int a6, uint64_t a7)
{
  if (a6 == 1)
  {
    v14 = 1768845428;
  }

  else
  {
    v14 = 1869968496;
  }

  inAddress.mSelector = 1634759267;
  inAddress.mScope = v14;
  inAddress.mElement = 0;
  ioDataSize = 8;
  outData = 0;
  if (CMSMUtility_IsSharePlayCallSessionActive() || CMSMUtility_IsSharePlayMediaSessionActive() || (dword_1EB75E09C == a1 ? (v23 = dword_1EB75E0A0 == a2) : (v23 = 0), v23 && (-[MXSessionManager currentAllowedPortTypes](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "currentAllowedPortTypes"), FigCFEqual()) && (vaemGetCurrentActivationContext(), FigCFEqual()) && (v24 = [qword_1EB75D1C8 BOOLValue], !a5) && !v24))
  {
    RouteConfigurationDictionary = 0;
  }

  else
  {
    RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(a1, a2, a3, a4, a5);
  }

  PropertyData = AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &outData);
  cf = 0;
  v17 = outData;
  if (PropertyData)
  {
    v18 = 1;
  }

  else
  {
    v18 = outData == 0;
  }

  if (!v18)
  {
    v19 = CFGetTypeID(outData);
    if (v19 == CFArrayGetTypeID() && CFArrayGetCount(outData))
    {
      if (a6 == 1)
      {
        p_cf = &cf;
        v21 = a7;
        v22 = 0;
      }

      else
      {
        v22 = &cf;
        v21 = a7;
        p_cf = 0;
      }

      vaemGetPortListForDevice(outData, v21, p_cf, v22);
      if (cf)
      {
        CFRetain(cf);
      }
    }

    v17 = outData;
  }

  if (v17)
  {
    CFRelease(v17);
    outData = 0;
  }

  if (RouteConfigurationDictionary)
  {
    CFRelease(RouteConfigurationDictionary);
  }

  return cf;
}

const void *vaemCopyVADInputPortsForRouteConfiguration(int a1, int a2, const void *a3, const void *a4, int a5)
{
  v5 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(a1, a2, a3, a4, a5, 1, 0x1F2893B50);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 != CFArrayGetTypeID())
    {
      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

uint64_t MX_FeatureFlags_IsSharePlayEnabled()
{
  if (MX_FeatureFlags_IsSharePlayEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsSharePlayEnabled_cold_1();
  }

  return MX_FeatureFlags_IsSharePlayEnabled_sharePlayEnabled;
}

void *CMSUtility_GetIsActive(void *result)
{
  if (result)
  {
    return [result isActive];
  }

  return result;
}

uint64_t CMSMUtility_IsSharePlayMediaSessionActive()
{
  v12 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsSharePlayEnabled())
  {
    v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v1)
    {
      v2 = *v8;
      while (2)
      {
        for (i = 0; i != v1; ++i)
        {
          if (*v8 != v2)
          {
            objc_enumerationMutation(v0);
          }

          v4 = *(*(&v7 + 1) + 8 * i);
          if (CMSUtility_GetIsActive(v4) && ([v4 isSharePlayMediaSession] & 1) != 0)
          {
            v1 = 1;
            goto LABEL_14;
          }
        }

        v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v1)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v1 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t vaemGetPortListForDevice(const __CFArray *a1, uint64_t a2, const void **a3, const void **a4)
{
  if (CFArrayGetCount(a1) >= 1)
  {
    v16 = a4;
    for (i = 0; CFArrayGetCount(a1) > i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      if (ValueAtIndex)
      {
        v9 = ValueAtIndex;
        v10 = CFGetTypeID(ValueAtIndex);
        if (v10 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v9, @"device UID");
          v12 = CFDictionaryGetValue(v9, @"device type");
          if (FigCFEqual() || FigCFEqual() && FigCFEqual())
          {
            if (a3)
            {
              *a3 = CFDictionaryGetValue(v9, @"input ports");
            }

            if (v16)
            {
              v15 = CFDictionaryGetValue(v9, @"output ports");
              result = 0;
              *v16 = v15;
              return result;
            }

            return 0;
          }

          if (!Value && v12)
          {
            VirtualAudioDeviceType = vaemGetVirtualAudioDeviceType([+[MXSessionManager defaultVADID] sharedInstance];
            valuePtr = 0;
            CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
            if (VirtualAudioDeviceType == valuePtr || (VirtualAudioDeviceType == 1987279219 || VirtualAudioDeviceType == 1987279212) && (valuePtr == 1987279219 || valuePtr == 1987279212))
            {
              if (a3)
              {
                *a3 = CFDictionaryGetValue(v9, @"input ports");
              }

              if (v16)
              {
                *v16 = CFDictionaryGetValue(v9, @"output ports");
              }

              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

__CFArray *MXCopyCFArrayDifferenceFromArray(uint64_t a1, const __CFArray *a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v4 = 0;
  if (!a2)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a2); v4 < i; i = 0)
  {
    CFArrayGetValueAtIndex(a2, v4);
    if (!FigCFArrayContainsValue())
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v4);
      CFArrayAppendValue(Mutable, ValueAtIndex);
    }

    ++v4;
    if (a2)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return Mutable;
}

void discoveryManager_notificationHandler()
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  if (qword_1EB75D478)
  {
    v0 = &discoverManager_getSharedManager_discoveryState;
  }

  else
  {
    v0 = 0;
  }

  v1 = *MEMORY[0x1E6961888];
  if (FigCFEqual())
  {
    cf = 0;
    CMBaseObject = FigEndpointManagerGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E69618B8], *MEMORY[0x1E695E480], &cf);
    }

    v4 = *MEMORY[0x1E69618D8];
    if (FigCFEqual())
    {
      v5 = MXGetSerialQueue();
      MXDispatchAsync("discoveryManager_notificationHandler", "FigRouteDiscoveryManager.m", 2292, 0, 0, v5, &__block_literal_global_50);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    discoveryManager_postNotificationToAllDiscoverers(v0, @"Discoverer_AvailableRoutesChanged", 0);
  }

  else
  {
    v6 = *MEMORY[0x1E6961898];
    if (FigCFEqual())
    {

      discoveryManager_postNotificationToAllDiscoverers(v0, @"Discoverer_RoutePresentChanged", 0);
    }
  }
}

void discoveryManager_postNotificationToAllDiscoverers(uint64_t a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v6 = [MEMORY[0x1E695DF00] now];
  v7 = *(a1 + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __discoveryManager_postNotificationToAllDiscoverers_block_invoke;
  v8[3] = &unk_1E7AE7230;
  v8[4] = v6;
  v8[5] = a1;
  v8[6] = cf;
  v8[7] = a3;
  MXDispatchAsync("discoveryManager_postNotificationToAllDiscoverers", "FigRouteDiscoveryManager.m", 399, 0, 0, v7, v8);
}

void FigRoutingManagerAvailableEndpointsDidChangeForEndpointManager(const void *a1, const void *a2, const void *a3, const void *a4)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  SharedManager = FigRoutingManagerGetSharedManager();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  v9 = *(SharedManager + 1);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigRoutingManagerAvailableEndpointsDidChangeForEndpointManager_block_invoke;
  v10[3] = &__block_descriptor_64_e5_v8__0l;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v10[7] = a4;
  MXDispatchAsync("FigRoutingManagerAvailableEndpointsDidChangeForEndpointManager", "FigRoutingManager_iOS.m", 5223, 0, 0, v9, v10);
}

void *FigRoutingManagerGetSharedManager()
{
  if (_MergedGlobals != -1)
  {
    FigRoutingManagerGetSharedQueue_cold_1();
  }

  if (qword_1ED6D2E28)
  {
    return &unk_1ED6D2E20;
  }

  else
  {
    return 0;
  }
}

void __FigRoutingManagerAvailableEndpointsDidChangeForEndpointManager_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v2 = *(a1 + 32);
  v26 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(CMBaseObject, *MEMORY[0x1E69618B8], v26, &v29);
  }

  EndpointToAutoConnect = FigRoutingManagerCopyFirstEndpointToAutoConnect(*(a1 + 40));
  if (EndpointToAutoConnect)
  {
    v6 = EndpointToAutoConnect;
    FigRoutingManagerProcessEndpointToAutoconnect(EndpointToAutoConnect);
    CFRelease(v6);
  }

  v7 = *MEMORY[0x1E69618E8];
  if (FigCFEqual() || (v8 = *MEMORY[0x1E69618D0], FigCFEqual()) || (v9 = *MEMORY[0x1E69618E0], FigCFEqual()) || (v10 = *MEMORY[0x1E69618D8], FigCFEqual()))
  {
    v11 = 0;
    v12 = *MEMORY[0x1E6962270];
    while (1)
    {
      Count = *(a1 + 48);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (v11 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), v11);
      if (FigRoutingManagerIsEndpointNonRemoteControlLocalAirPlay(ValueAtIndex) && !CMSMDeviceState_IsHomePodHub())
      {
        v27 = 0;
        v28 = 0;
        FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&v28);
        FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(v28, &v27);
        if (FigRoutingManagerIsConfigurationWHASilentPrimary(v28))
        {
          cf[0] = 0;
          if (v27)
          {
            v15 = FigEndpointGetCMBaseObject();
            v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v16)
            {
              v16(v15, v12, v26, cf);
            }
          }

          FigRoutingManagerLogEndpointIDs(@"FigRoutingManager_iOSHandleAvailableEndpointsDidChangeNotification - Skip adding local endpoint to aggregate. The sub-endpoints in the aggregate are: ", cf[0], 0, 1);
          if (cf[0])
          {
            CFRelease(cf[0]);
          }
        }

        else
        {
          if (dword_1EB75DF20)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRoutingManagerAggregateAddLocalAirPlayEndpoint(v28, v27);
        }

        if (v27)
        {
          CFRelease(v27);
          v27 = 0;
        }

        if (v28)
        {
          CFRelease(v28);
        }
      }

      ++v11;
    }
  }

  else
  {
    v18 = *MEMORY[0x1E69618F0];
    if (FigCFEqual())
    {
      if ((v19 = *(a1 + 48)) != 0 && CFArrayGetCount(v19) > 0 || (v20 = *(a1 + 56)) != 0 && CFArrayGetCount(v20) >= 1)
      {
        cf[0] = 0;
        FigRoutingManagerContextUtilities_CopySidePlayContextUUID(cf);
        FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(cf[0], @"currentRouteChanged", 0);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }
    }
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(a1 + 56);
  if (v24)
  {
    CFRelease(v24);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  v25 = *MEMORY[0x1E69E9840];
}

CFTypeRef FigRoutingManagerCopyFirstEndpointToAutoConnect(CFArrayRef theArray)
{
  v2 = 0;
  v3 = *MEMORY[0x1E6961FD8];
  v4 = *MEMORY[0x1E695E480];
  v5 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    v6 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v2 >= v6)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2);
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(CMBaseObject, v3, v4, &cf);
    }

    v10 = FigCFEqual();
    v11 = 0;
    if (ValueAtIndex && v10)
    {
      v11 = CFRetain(ValueAtIndex);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    ++v2;
    if (v11)
    {
      return v11;
    }
  }

  return 0;
}

uint64_t __discoveryManager_postNotificationToAllDiscoverers_block_invoke(uint64_t a1)
{
  v36[16] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  v31 = [MEMORY[0x1E695DF00] now];
  allocator = *MEMORY[0x1E695E480];
  cf = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = 0;
  v3 = 0;
  ++*(*(a1 + 40) + 296);
  do
  {
    v4 = *(*(a1 + 40) + 256);
    FigSimpleMutexLock();
    v33 = v3;
    Copy = CFArrayCreateCopy(allocator, *(*(a1 + 40) + 24 * v3 + 24));
    v6 = *(*(a1 + 40) + 256);
    FigSimpleMutexUnlock();
    Count = CFArrayGetCount(Copy);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Copy, i);
        v11 = discoveryManager_copyDiscovererFromWeakRef(ValueAtIndex);
        if (v11)
        {
          v12 = v11;
          v13 = *(a1 + 48);
          if (FigCFEqual())
          {
            if (FigRouteDiscovererIsFastDiscoveryEnabledForDiscoverer())
            {
              v2 = v2 + FigRouteDiscovererUpdateCachedUserSelectionAvailable(v12);
            }
          }

          else
          {
            v14 = *(a1 + 48);
            if (FigCFEqual() && FigRouteDiscovererIsFastDiscoveryEnabledForDiscoverer())
            {
              v2 = (v2 + FigRouteDiscovererUpdateCachedRouteInformation(v12, v32));
            }

            if (FigRouteDiscoveryManagerIsClientEligibleToReceiveUpdateNotifications(v12))
            {
              v15 = v2;
              v16 = *(a1 + 40);
              v17 = *(a1 + 48);
              v18 = *(a1 + 56);
              MutableCopy = FigCFDictionaryCreateMutableCopy();
              [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
              FigCFDictionarySetValue();
              [MEMORY[0x1E696AD98] numberWithLongLong:FigGetUpTimeNanoseconds()];
              FigCFDictionarySetValue();
              CFRetain(v12);
              if (v17)
              {
                CFRetain(v17);
              }

              v20 = *(v16 + 16);
              v36[0] = MEMORY[0x1E69E9820];
              v36[1] = 3221225472;
              v36[2] = __discoveryManager_postNotificationForDiscoverer_block_invoke;
              v36[3] = &__block_descriptor_56_e5_v8__0l;
              v36[4] = v17;
              v36[5] = v12;
              v36[6] = MutableCopy;
              MXDispatchAsync("discoveryManager_postNotificationForDiscoverer", "FigRouteDiscoveryManager.m", 350, 0, 0, v20, v36);
              v2 = v15;
            }
          }

          CFRelease(v12);
        }
      }
    }

    if (Copy)
    {
      CFRelease(Copy);
    }

    v3 = v33 + 1;
  }

  while (v33 != 8);
  v21 = *(a1 + 40);
  v22 = *(v21 + 256);
  FigSimpleMutexLock();

  *(v21 + 272) = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v32 copyItems:1];
  v23 = *(v21 + 256);
  FigSimpleMutexUnlock();
  v24 = *(a1 + 48);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 56);
  if (v25)
  {
    CFRelease(v25);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v26 = *(*(a1 + 40) + 296);
  result = [v31 timeIntervalSinceNow];
  *(*(a1 + 40) + 304) = *(*(a1 + 40) + 304) - *(*(a1 + 40) + 304) / v26 - v28 / v26;
  if (dword_1EB75DF60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL FigRouteDiscovererUpdateCachedRouteInformation(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  v5 = *MEMORY[0x1E695E480];
  v6 = FigCFNumberCreateUInt32();
  v7 = MEMORY[0x1E696AEC0];
  v8 = [v6 stringValue];
  TypeString = discoverer_getTypeString(*(DerivedStorage + 56));
  v10 = *(DerivedStorage + 24);
  v11 = *MEMORY[0x1E695E4D0];
  v12 = FigCFEqual();
  v13 = @"YES";
  if (!v12)
  {
    v13 = @"NO";
  }

  v14 = [v7 stringWithFormat:@"%@+%@+%@", v8, TypeString, v13];
  v15 = [a2 objectForKey:v14];
  v16 = [v15 objectForKey:@"FigRouteDiscoverer_Endpoints_Key"];
  v17 = [v15 objectForKey:@"FigRouteDiscoverer_RouteDescriptors_Key"];
  if (v15)
  {
    v18 = v17;
  }

  else
  {
    cf = 0;
    FigRouteDiscoveryManagerCopyRoutesForTypeAndAudioSessionID(v5, *(DerivedStorage + 56), v4, *(DerivedStorage + 24), &cf);
    v19 = FigRouteDiscoveryManagerCopyRouteDescriptorsFromEndpointsAndAudioSessionID(cf, v4);
    v20 = [MEMORY[0x1E695DF90] dictionary];
    [v20 setValue:cf forKey:@"FigRouteDiscoverer_Endpoints_Key"];
    [v20 setValue:v19 forKey:@"FigRouteDiscoverer_RouteDescriptors_Key"];
    [a2 setObject:v20 forKey:v14];
    v16 = [v20 objectForKey:@"FigRouteDiscoverer_Endpoints_Key"];
    v18 = [v20 objectForKey:@"FigRouteDiscoverer_RouteDescriptors_Key"];
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  v21 = *(DerivedStorage + 80);
  FigSimpleMutexLock();

  *(DerivedStorage + 96) = v18;
  *(DerivedStorage + 104) = v16;
  v22 = *(DerivedStorage + 80);
  FigSimpleMutexUnlock();
  return v15 == 0;
}

void discoverer_logAvailableRouteDetails(int a1, int a2, CFArrayRef theArray)
{
  cf[27] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  v4 = *MEMORY[0x1E695E480];
  if (!theArray)
  {
    Mutable = CFStringCreateMutable(v4, 0);
    Copy = 0;
    goto LABEL_5;
  }

  Copy = CFArrayCreateCopy(v4, theArray);
  Mutable = CFStringCreateMutable(v3, 0);
  if (!Copy)
  {
LABEL_5:
    Count = 0;
    v8 = 1;
    goto LABEL_6;
  }

  Count = CFArrayGetCount(Copy);
  v8 = 0;
LABEL_6:
  v26 = v8;
  if (!Count && dword_1EB75DF60)
  {
    LODWORD(cf[0]) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_38;
  }

  v30 = Count - 1;
  if (Count >= 1)
  {
    alloc = v3;
    v10 = 0;
    v11 = 0;
    v25 = *MEMORY[0x1E69621E8];
    v29 = *MEMORY[0x1E695E4D0];
    v28 = Count;
    do
    {
      if (CFArrayGetValueAtIndex(Copy, v11))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Copy, v11);
        v13 = CFGetTypeID(ValueAtIndex);
        TypeID = FigEndpointGetTypeID();
        cf[0] = 0;
        v15 = CFArrayGetValueAtIndex(Copy, v11);
        if (v13 == TypeID)
        {
          CFArrayGetValueAtIndex(Copy, v11);
          CMBaseObject = FigEndpointGetCMBaseObject();
          v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v17)
          {
            v17(CMBaseObject, v25, alloc, cf);
          }

          Value = cf[0];
          if (!cf[0])
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else
      {
        cf[0] = 0;
        v15 = CFArrayGetValueAtIndex(Copy, v11);
      }

      v19 = v15;
      if (CFDictionaryGetValue(v15, @"IsBTRoute") == v29)
      {
        CFDictionaryGetValue(v19, @"RouteName");
        CFDictionaryGetValue(v19, @"RouteUID");
        CFDictionaryGetValue(v19, @"RouteModel");
        CFDictionaryGetValue(v19, @"BTDetails_IsA2DPRoute");
        CFDictionaryGetValue(v19, @"BTDetails_IsHFPRoute");
        if (dword_1EB75DF60)
        {
          v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v21 = CFArrayGetValueAtIndex(Copy, v11);
      Value = CFDictionaryGetValue(v21, @"RouteName");
      if (Value)
      {
        Value = CFRetain(Value);
      }

      cf[0] = Value;
      Count = v28;
      if (!Value)
      {
        goto LABEL_25;
      }

LABEL_24:
      CFStringAppendFormat(Mutable, 0, @"[%d].%@ ", v11, Value);
LABEL_25:
      if (v30 == v11)
      {
        if (dword_1EB75DF60)
        {
          v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else if (v11 && !(v10 + 10 * (v11 / 0xA)))
      {
        if (dword_1EB75DF60)
        {
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        Mutable = CFStringCreateMutable(alloc, 0);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      ++v11;
      --v10;
    }

    while (Count != v11);
  }

LABEL_38:
  if ((v26 & 1) == 0)
  {
    CFRelease(Copy);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v24 = *MEMORY[0x1E69E9840];
}

__n128 OUTLINED_FUNCTION_8_2@<Q0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *(a1 + 136) = a2;
  v4 = *v2;
  *(a1 + 184) = *(v2 + 2);
  *(a1 + 168) = v4;
  result = *v3;
  *(a1 + 160) = v3[1].n128_u64[0];
  *(a1 + 144) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_5(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{

  return MXCoreSessionCopyProperty(v5, a2, v4, a4);
}

uint64_t OUTLINED_FUNCTION_8_6()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_8_8()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_8_9()
{
  v2 = *(v0 + 592);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CFTypeRef vaemCopyConnectedPortsWithDeviceListForRouteConfiguration(int a1, int a2, const void *a3, int a4, int a5)
{
  if (a5 == 1)
  {
    v5 = 1768845428;
  }

  else
  {
    v5 = 1869968496;
  }

  inAddress.mSelector = 1886872690;
  inAddress.mScope = v5;
  inAddress.mElement = 0;
  ioDataSize = 8;
  outData = 0;
  RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(a1, a2, 0, a3, a4);
  PropertyData = AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &outData);
  if (RouteConfigurationDictionary)
  {
    CFRelease(RouteConfigurationDictionary);
  }

  result = outData;
  if (PropertyData || outData && (v9 = CFGetTypeID(outData), TypeID = CFArrayGetTypeID(), result = outData, v9 != TypeID))
  {
    if (result)
    {
      CFRelease(result);
      return 0;
    }
  }

  return result;
}

void routingSessionManager_availableAudioRoutesChanged()
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = routingSessionManager_copyEligibleInEarHeadphones(*(DerivedStorage + 8));
  v2 = [MEMORY[0x1E695DFD8] setWithArray:v1];
  if ([v2 isEqualToSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", *(DerivedStorage + 112))}])
  {
    if (v1)
    {
LABEL_3:
      CFRelease(v1);
    }
  }

  else
  {
    v4 = *(DerivedStorage + 112);
    *(DerivedStorage + 112) = v1;
    if (v1)
    {
      CFRetain(v1);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (dword_1EB75DF00)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    routingSessionManager_updateSessionFromLatestInEarHeadphones();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

CFMutableArrayRef routingSessionManager_copyEligibleInEarHeadphones(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  keyExistsAndHasValidFormat = 0;
  CFPreferencesGetAppBooleanValue(@"RequireSmartRoutingToSuppressRoutePredictionsWithInEarHeadphones", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  theArray = 0;
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 8) + 48);
  if (v5)
  {
    v6 = *(VTable + 8) + 48;
    if (!v5(a1, @"availableRouteDescriptors", v2, &theArray))
    {
      for (i = 0; ; ++i)
      {
        Count = theArray;
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
        }

        if (i >= Count)
        {
          break;
        }

        CFArrayGetValueAtIndex(theArray, i);
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return Mutable;
}

uint64_t CMSessionMgrHandleApplicationStateChange(const __CFNumber *a1, CFNumberRef number, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (!number)
  {
    goto LABEL_22;
  }

  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr + 4);
  if (a1)
  {
    CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  }

  if (valuePtr < 1)
  {
LABEL_22:
    result = 4294954315;
    goto LABEL_47;
  }

  CMSessionMgrSetApplicationStateFromPID(valuePtr, HIDWORD(valuePtr));
  CMSMNotificationUtility_PostApplicationStateDidChange(number, a1);
  BackgroundEntitlement = CMSMUtility_FetchBackgroundEntitlement(valuePtr);
  v7 = [+[MXSessionManager sharedInstance](MXSessionManager copySessionWithDisplayID:"copySessionWithDisplayID:", a3];
  v8 = MXGetSessionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v7 clientName];
    v24 = valuePtr;
    StringForApplicationState = CMSMUtility_GetStringForApplicationState(HIDWORD(valuePtr));
    if (BackgroundEntitlement)
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    if ([v7 isLongFormVideo])
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    v12 = [+[MXSessionManager sharedInstance](MXSessionManager isLongFormVideoApp:"isLongFormVideoApp:", a3];
    *buf = 136448770;
    v27 = "-CMSessionMgr-";
    v28 = 2082;
    if (v12)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v29 = "CMSessionMgrHandleApplicationStateChange";
    v30 = 1024;
    v31 = 17698;
    v32 = 2114;
    v33 = a3;
    v34 = 2114;
    v35 = v23;
    v36 = 2048;
    v37 = v7;
    v38 = 1024;
    v39 = v24;
    v40 = 2114;
    v41 = StringForApplicationState;
    v42 = 2082;
    v43 = v10;
    v44 = 2082;
    v45 = v11;
    v46 = 2082;
    v47 = v13;
    _os_log_impl(&dword_1B17A2000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Client %{public}@ with session %{public}@ [%p] with pid '%d' is now %{public}@. Background entitlement: %{public}s ActiveLongFormVideoSession: %{public}s IsLongFormVideoApp %{public}s", buf, 0x68u);
  }

  result = 0;
  if (SHIDWORD(valuePtr) > 3)
  {
    if (HIDWORD(valuePtr) == 4)
    {
      if (BackgroundEntitlement)
      {
        if (CMSMUtility_AnySessionBelongingToPIDIsActiveAndStopsWhenBackgrounded(valuePtr))
        {
          CMSMNotificationUtility_PostPauseCommandToPlayingLockStoppers(a1);
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSMNotificationUtility_PostStopCommandToActiveLockStoppers(a1);
          CMSystemSoundMgr_StopSystemSoundsforPID();
        }
      }

      else if (!CMSUtility_SessionWithPIDCanContinueAirPlayingVideoIfScreenIsLocked(valuePtr))
      {
        CMSMNotificationUtility_PostPauseCommandNotificationToMatchingNotStoppedClients(a1);
        if (dword_1EB75DE40)
        {
          v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSMNotificationUtility_PostStopCommandToMatchingActiveClientsWithPID(a1, 1);
        CMSystemSoundMgr_StopSystemSoundsforPID();
        v21 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
        if (v21 == valuePtr)
        {
          v22 = +[MXNowPlayingAppManager sharedInstance];
          [(MXNowPlayingAppManager *)v22 updateNowPlayingApp:valuePtr session:0 reasonForUpdate:2];
        }
      }

      CMSystemSoundMgr_DeactivateSystemSoundsForPID(valuePtr);
      goto LABEL_46;
    }

    if (HIDWORD(valuePtr) != 8)
    {
      goto LABEL_47;
    }

    if (BackgroundEntitlement)
    {
      if (!CMSUtility_SessionWithPIDWasLockStopper(valuePtr))
      {
        CMSystemSoundMgr_ActivateSystemSoundsForPID(valuePtr);
LABEL_46:
        result = 0;
        goto LABEL_47;
      }

      buf[0] = 0;
      CMSMUtility_ApplyForEachMatchingSession(0, CMSUtilityPredicate_IsMatchingLockStopperThatMustResume, a1, CMSUtilityApplier_ResumeWaitingLockStopper, buf);
      if (!dword_1EB75DE40)
      {
LABEL_41:
        CMSMNotificationUtility_PostEndInterruptionCommandToMatchingWaitingClients(a1);
        goto LABEL_46;
      }
    }

    else
    {
      CMSMNotificationUtility_PostResumeCommandToMatchingWaitingClients(a1);
      if (!dword_1EB75DE40)
      {
        goto LABEL_41;
      }
    }

    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_41;
  }

  if (HIDWORD(valuePtr) == 1)
  {
    if (!MX_FeatureFlags_IsSessionBasedMutingEnabled())
    {
      v17 = +[MXSessionManager sharedInstance];
      [(MXSessionManager *)v17 removeEntryFromMutedBundleIDCache:valuePtr bundleID:0];
    }

    goto LABEL_46;
  }

  if (HIDWORD(valuePtr) == 2)
  {
    -[NSArray containsObject:]([+[MXSessionManager sharedInstance](MXSessionManager recordingClientPIDs], "containsObject:", a1);
    if (!CMSMUtility_DoesActiveAirPlayVideoSessionExistForPID(valuePtr))
    {
      if (dword_1EB75DE40)
      {
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSMNotificationUtility_PostStopCommandToMatchingActiveClientsWithPID(a1, 1);
    }

    CMSystemSoundMgr_DeactivateSystemSoundsForPID(valuePtr);
    CMSystemSoundMgr_StopSystemSoundsforPID();
    goto LABEL_46;
  }

LABEL_47:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSessionMgrSetApplicationStateFromPID(int a1, unsigned int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = a2;
  valuePtr = a1;
  if (a2 > 8 || ((1 << a2) & 0x117) == 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_14;
  }

  v2 = *MEMORY[0x1E695E480];
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v4 = CFNumberCreate(v2, kCFNumberSInt32Type, &v9);
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (!v3)
    {
      if (!v4)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {
    CMSMUtility_ApplyForEachMatchingSession(0, CMSUtilityPredicate_IsAffectedByApplicationStateChange, v3, CMSUtilityApplier_SetApplicationState, v4);
  }

  CFRelease(v3);
  if (v5)
  {
LABEL_12:
    CFRelease(v5);
  }

LABEL_14:
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t CMSUtilityApplier_SetApplicationState(void *a1, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  return [a1 setApplicationState:valuePtr];
}

void CMSMNotificationUtility_PostApplicationStateDidChange(void *a1, const void *a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = @"ApplicationState";
  }

  else
  {
    v4 = 0;
  }

  if (@"ApplicationState")
  {
    v5 = a1 != 0;
  }

  else
  {
    v5 = 0;
  }

  if (@"ApplicationState")
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  keys[0] = v4;
  values = v6;
  v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a2)
  {
    CFRetain(a2);
  }

  if (a1)
  {
    CFRetain(a1);
  }

  v8 = MXGetNotificationSenderQueue();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __CMSMNotificationUtility_PostApplicationStateDidChange_block_invoke;
  v10[3] = &__block_descriptor_56_e5_v8__0l;
  v10[4] = a2;
  v10[5] = v7;
  v10[6] = a1;
  MXDispatchAsync("CMSMNotificationUtility_PostApplicationStateDidChange", "CMSessionManager_NotificationUtilities.m", 1107, 0, 0, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

id vaemCopyConnectedInputPortsForDefaultVADFromDeviceListWithRouteConfiguration(int a1, int a2, const void *a3, int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = vaemCopyConnectedPortsWithDeviceListForRouteConfiguration(a1, a2, a3, a4, 1);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v9 objectForKey:{0x1F2897A10), "isEqualToString:", 0x1F2893B50}])
        {
          v10 = [v9 objectForKey:0x1F2897A90];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void __discoveryManager_postNotificationForDiscoverer_block_invoke(void *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  CMNotificationCenterPostNotification();
  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[6];
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t RouteDiscovererServerNotificationEnqueueDecisionFunction(const void *a1)
{
  if (CFEqual(a1, @"Discoverer_AvailableRoutesChanged"))
  {
    return 1;
  }

  if (CFEqual(a1, @"Discoverer_RoutePresentChanged"))
  {
    return 1;
  }

  result = CFEqual(a1, @"Discoverer_EndpointDescriptorChanged");
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t CMSUtility_SomeOtherClientIsPlaying(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if ([v7 isPlaying] && objc_msgSend(v7, "isPlayingOutput") && (objc_msgSend(v7, "hasAudioCategory:", @"SystemSoundsAndHaptics") & 1) == 0)
        {
          v8 = [v7 doesntActuallyPlayAudio];
          if (v7 != a1 && v8 == 0)
          {
            v10 = 1;
            goto LABEL_17;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_17:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t MXGetSessionLog()
{
  if (MXGetSessionLog_onceToken != -1)
  {
    MXGetSessionLog_cold_1();
  }

  return MXGetSessionLog__log;
}

uint64_t CMSUtility_SessionWithPIDWasLockStopper(int a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([objc_msgSend(v7 "clientPID")] == a1 && (objc_msgSend(v7, "stopsWhenDeviceLocks") & 1) != 0)
        {
          v8 = 1;
          goto LABEL_12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_12:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t CMSUtilityPredicate_IsMatchingLockStopperThatMustResume(int a1, void *a2, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  if ([a2 stopsWhenDeviceLocks] && (objc_msgSend(a2, "isPlaying") & 1) == 0 && (objc_msgSend(a2, "waitingToResumeWhenDeviceUnlocksOrInForeground") & 1) != 0 || (result = objc_msgSend(a2, "wasInterruptedByNowPlayingApp"), result))
  {
    v5 = [objc_msgSend(a2 "clientPID")];
    return v5 == valuePtr;
  }

  return result;
}

BOOL CMSUtilityPredicate_IsSameClientAndWaitingForEndInterruptionWhenDeviceUnlocksOrInForeground(int a1, void *a2, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  v4 = [a2 waitingForEndInterruptionWhenDeviceUnlocksOrInForeground];
  result = 0;
  if (v4)
  {
    v6 = [objc_msgSend(a2 "clientPID")];
    return v6 == valuePtr;
  }

  return result;
}

void __cmsmApplicationStateChangedNotificationCallback_block_invoke_2(uint64_t a1)
{
  CMSMUtility_ApplyForEachMatchingSession(0, CMSUtilityPredicate_DoesInheritApplicationStateFromPID, *(a1 + 32), CMSUtilityApplier_InheritApplicationStateAndPostApplicationStateDidChangeNotification, *(a1 + 40));
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

BOOL CMSUtilityPredicate_DoesInheritApplicationStateFromPID(int a1, void *a2, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  if (!valuePtr)
  {
    return 0;
  }

  v4 = [a2 pidToInheritAppStateFrom];
  return v4 == valuePtr;
}

void FigRoutingManagerApplicationStateChangedNotificationCallback(int a1, int a2)
{
  v4 = *(FigRoutingManagerGetSharedManager() + 1);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __FigRoutingManagerApplicationStateChangedNotificationCallback_block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v6 = a2;
  v7 = a1;
  MXDispatchAsync("FigRoutingManagerApplicationStateChangedNotificationCallback", "FigRoutingManager_iOS.m", 117, 0, 0, v4, v5);
}

void __FigRoutingManagerApplicationStateChangedNotificationCallback_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  theArray = 0;
  FigRoutingManagerContextUtilities_CopyEndpointsToDeactivateInfoAndUUIDsForPID(*(a1 + 32), *(a1 + 36), &theArray, &v10);
  if (!theArray)
  {
    goto LABEL_12;
  }

  Count = CFArrayGetCount(theArray);
  v2 = Count;
  if (Count < 1 || dword_1EB75DF20 == 0)
  {
    if (Count < 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    v7 = CFArrayGetValueAtIndex(v10, v5);
    Value = CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_Endpoint");
    v12 = 0;
    FigCFDictionaryGetInt64IfPresent();
    FigRoutingManager_iOSDeactivateEndpoint(Value, v12, 0);
    FigRoutingManagerContextUtilities_SetPickedEndpoints(v7, 0, @"configUpdateReasonEndedApplicationStateChanged", 0, 0);
    ++v5;
  }

  while (v2 != v5);
LABEL_10:
  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

LABEL_12:
  if (v10)
  {
    CFRelease(v10);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t FigRoutingManagerContextUtilities_CopyEndpointsToDeactivateInfoAndUUIDsForPID(int a1, int a2, void *a3, void *a4)
{
  result = 4294954296;
  if (a3 && a4)
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v12 = CFArrayCreateMutable(v9, 0, v10);
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v13 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v14 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v14 = 504;
    }

    v15 = *v14;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __FigRoutingManagerContextUtilities_CopyEndpointsToDeactivateInfoAndUUIDsForPID_block_invoke;
    v18[3] = &__block_descriptor_64_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v13 = 0;
    }

    v19 = a2;
    v20 = a1;
    v18[4] = v13;
    v18[5] = Mutable;
    v18[6] = v12;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopyEndpointsToDeactivateInfoAndUUIDsForPID", "FigRoutingManagerContextUtilities.m", 3742, 0, 0, v15, v18);
    if (Mutable)
    {
      v16 = CFRetain(Mutable);
    }

    else
    {
      v16 = 0;
    }

    *a3 = v16;
    if (v12)
    {
      v17 = CFRetain(v12);
    }

    else
    {
      v17 = 0;
    }

    *a4 = v17;
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    return 0;
  }

  return result;
}

void CMSUtility_CreateReporterIDIfNeeded(void *a1)
{
  if ([a1 reporterIDs])
  {
    return;
  }

  v2 = [MEMORY[0x1E696AD98] numberWithLongLong:off_1EB75DFF8()];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(a1, "reporterIDs")}];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(a1, "originalReporterIDs")}];
  [v3 addObject:v2];
  [a1 setReporterIDs:v3];
  CMSMNotificationUtility_PostReporterIDsDidChange(a1);
  [v4 addObject:v2];
  [a1 setOriginalReporterIDs:v4];

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [a1 displayID];
  v6 = v5 != 0;
  if (v5)
  {
    [v7 setObject:objc_msgSend(a1 forKey:{"displayID"), 0x1F2898830}];
  }

  if ([a1 isMemberOfClass:objc_opt_class()])
  {
    v6 = 1;
    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), 0x1F2898CF0}];
    [v7 setObject:objc_msgSend(a1 forKey:{"remoteDeviceID"), 0x1F2898D10}];
  }

  if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:0x1F2898D50];
      v6 = 1;
    }
  }

  if ([a1 isMemberOfClass:objc_opt_class()])
  {
    [v7 setObject:MEMORY[0x1E695E118] forKey:0x1F2898D30];
LABEL_12:
    (off_1EB75E020)([v2 longLongValue], v7);
    goto LABEL_13;
  }

  if (v6)
  {
    goto LABEL_12;
  }

LABEL_13:
}

void CMSMNotificationUtility_PostReporterIDsDidChange(void *a1)
{
  v2 = a1;
  v3 = MXGetNotificationSenderQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CMSMNotificationUtility_PostReporterIDsDidChange_block_invoke;
  v4[3] = &unk_1E7AE7CE0;
  v4[4] = a1;
  MXDispatchAsync("CMSMNotificationUtility_PostReporterIDsDidChange", "CMSessionManager_NotificationUtilities.m", 437, 0, 0, v3, v4);
}

void CMSMDebugUtility_PrintCollection(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(a1);
        }

        if (dword_1EB75DE40)
        {
          v6 = *(*(&v10 + 1) + 8 * i);
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v3 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  objc_autoreleasePoolPop(context);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t CMSMUtility_IsModeValidForCategory(const void *a1)
{
  if (FigCFEqual())
  {
    return 1;
  }

  if ([+[MXSessionManager isSpeechDetectCategory:"isSpeechDetectCategory:"]
  {
    result = 0;
    goto LABEL_16;
  }

  if (FigCFEqual())
  {
    result = !CMSMUtility_IsCategoryInputOnly(a1);
    goto LABEL_16;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    goto LABEL_15;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    if (FigCFEqual() || FigCFEqual())
    {
      goto LABEL_25;
    }

    v3 = kMXSessionAudioCategory_AudioVideo;
    goto LABEL_33;
  }

  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    result = CMSMUtility_IsRecordingCategory(a1);
    goto LABEL_16;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    if (CMSMUtility_IsRecordingCategory(a1) || FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
      goto LABEL_25;
    }

    v3 = kMXSessionAudioCategory_eARC;
LABEL_33:
    v4 = *v3;
    IsPlayAndRecordCategory = FigCFEqual();
LABEL_34:
    result = IsPlayAndRecordCategory != 0;
    goto LABEL_16;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    v6 = kMXSessionAudioCategory_Alarm;
LABEL_45:
    v7 = *v6;
    result = FigCFEqual();
    goto LABEL_16;
  }

  if (FigCFEqual())
  {
    v6 = kMXSessionAudioCategory_SystemSoundsAndHaptics;
    goto LABEL_45;
  }

  if (FigCFEqual())
  {
    goto LABEL_49;
  }

  if (FigCFEqual())
  {
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    if (CMSMUtility_IsCategoryInputOnly(a1))
    {
LABEL_25:
      result = 1;
      goto LABEL_16;
    }

    IsPlayAndRecordCategory = CMSMUtility_IsPlayAndRecordCategory(a1);
    goto LABEL_34;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    v6 = kMXSessionAudioCategory_EmergencyAlert;
    goto LABEL_45;
  }

  if (FigCFEqual() || FigCFEqual())
  {
LABEL_15:
    result = CMSMUtility_IsPlayAndRecordCategory(a1);
    goto LABEL_16;
  }

  result = FigCFEqual();
  if (result)
  {
LABEL_49:
    v6 = kMXSessionAudioCategory_MediaPlayback;
    goto LABEL_45;
  }

LABEL_16:
  if ((dword_1EB75E11C & 2) != 0)
  {
    return result || FigCFEqual() != 0;
  }

  return result;
}

BOOL CMSUtility_IsAnExtension(void *a1)
{
  v1 = MX_RunningBoardServices_CopyBundleExtensionPointID(a1);
  v2 = FigCFEqual();
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 == 0;
}

BOOL CMSMUtility_IsPiPAllowedForCategory(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    if (FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
      return 1;
    }

    else
    {

      return CMSMUtility_IsPlayAndRecordCategory(v1);
    }
  }

  return result;
}

void *CMSUtility_GetIsEligibleForNowPlayingAppConsideration(void *result)
{
  if (result)
  {
    return [result isEligibleForNowPlayingAppConsideration];
  }

  return result;
}

uint64_t CMSMNP_GetNowPlayingAppIsPlaying()
{
  v28 = *MEMORY[0x1E69E9840];
  if (CMSMDeviceState_IsHomePodHub() || [+[MXNowPlayingAppManager nowPlayingAppPID]>= 1 sharedInstance]
  {
    v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v3 = OUTLINED_FUNCTION_0_27(v1, v2);
    if (v3)
    {
      v4 = *v20;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v20 != v4)
          {
            objc_enumerationMutation(v0);
          }

          v6 = *(v19 + 8 * i);
          v7 = [v6 isActive];
          if (v7)
          {
            v7 = [v6 isPlaying];
            if (v7)
            {
              v7 = CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v6);
              if (v7)
              {
                v15 = [objc_msgSend(v6 "clientPID")];
                v7 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
                if (v15 == v7)
                {
                  v3 = 1;
                  goto LABEL_16;
                }
              }
            }
          }
        }

        v3 = OUTLINED_FUNCTION_1_19(v7, v8, v9, v10, v11, v12, v13, v14, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    v3 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange()
{
  v9 = *MEMORY[0x1E69E9840];
  result = CMSMNP_GetNowPlayingAppIsPlaying();
  if (CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange_nowPlayingAppIsPlayingCached != result)
  {
    v1 = result;
    if (result)
    {
      if (!qword_1EB75E120)
      {
        v4 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1), @"State", -[MXNowPlayingAppManager nowPlayingAppDisplayID](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "nowPlayingAppDisplayID"), @"DisplayID", 0}];
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        result = [MXSystemController notifyAll:@"NowPlayingAppIsPlayingDidChange" payload:v4 dontPostIfSuspended:0, v7, v8];
        goto LABEL_16;
      }

      dispatch_source_cancel(qword_1EB75E120);
      if (qword_1EB75E120)
      {
        dispatch_release(qword_1EB75E120);
        qword_1EB75E120 = 0;
      }

      v2 = MXGetSerialQueue();
      result = MXDispatchUtilityCreateOneShotTimer(0.25, "CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange", "CMSessionManager_NotificationUtilities.m", 688, 0, 0, v2, &__block_literal_global_18_0, 0, 0);
      qword_1EB75E120 = result;
      if (result)
      {
LABEL_16:
        CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange_nowPlayingAppIsPlayingCached = v1;
        goto LABEL_17;
      }

      LODWORD(result) = v1;
    }

    else
    {
      if (qword_1EB75E120)
      {
        dispatch_source_cancel(qword_1EB75E120);
        if (qword_1EB75E120)
        {
          dispatch_release(qword_1EB75E120);
          qword_1EB75E120 = 0;
        }
      }

      v3 = MXGetSerialQueue();
      result = MXDispatchUtilityCreateOneShotTimer(0.25, "CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange", "CMSessionManager_NotificationUtilities.m", 716, 0, 0, v3, &__block_literal_global_21, 0, 0);
      qword_1EB75E120 = result;
      if (result)
      {
        goto LABEL_16;
      }
    }

    result = CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChangeDelayed(result);
    goto LABEL_16;
  }

LABEL_17:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSMNotificationUtility_PostNowPlayingAppStackDidChange()
{
  v5 = *MEMORY[0x1E69E9840];
  if (!MX_FeatureFlags_IsNowPlayingAppStackEnabled())
  {
LABEL_10:
    v4 = *MEMORY[0x1E69E9840];
    return;
  }

  v0 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager copyTopOfNowPlayingAppStack];
  if (v0)
  {
    v1 = v0;
    if (([CMSMNotificationUtility_PostNowPlayingAppStackDidChange_sCachedTopOfNowPlayingStack isEqualToString:v0] & 1) == 0)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSMNotificationUtility_PostNowPlayingAppStackDidChange_sCachedTopOfNowPlayingStack = v1;
      +[MXSystemController notifyAll:payload:dontPostIfSuspended:](MXSystemController, "notifyAll:payload:dontPostIfSuspended:", @"NowPlayingAppStackDidChange", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v1, @"TopOfStackDisplayID", 0}], 0);
    }

    goto LABEL_10;
  }

  v3 = *MEMORY[0x1E69E9840];

  MXSimulateCrash("Current top of NowPlaying app stack is nil, this should never happen!!! Please file a radar to MediaExperience (New Bugs) | All");
}

uint64_t MX_FeatureFlags_IsNowPlayingAppStackEnabled()
{
  if (MX_FeatureFlags_IsNowPlayingAppStackEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsNowPlayingAppStackEnabled_cold_1();
  }

  return MX_FeatureFlags_IsNowPlayingAppStackEnabled_sIsNowPlayingAppStackEnabled;
}

double CMSUtility_GetPreferredIOBufferDuration(void *a1, const char *a2)
{
  if (!a1)
  {
    return 0.0;
  }

  [a1 preferredIOBufferDuration];
  return result;
}

void *CMSUtility_GetPreferredIOBufferFrames(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 preferredIOBufferFrames];
  }

  return a1;
}

uint64_t vaemIsAudioDestinationAvailable(uint64_t a1)
{
  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager systemSoundLocalVADID];
LABEL_21:
    v4 = v3 == 0;
    return !v4;
  }

  if (FigCFEqual())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager systemSoundRemoteVADID];
    goto LABEL_21;
  }

  if (FigCFEqual())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager speechDetectionVADID];
    goto LABEL_21;
  }

  if (FigCFEqual())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager speakerAlertVADID];
    goto LABEL_21;
  }

  if (FigCFEqual())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager decoupledInputVADID];
    goto LABEL_21;
  }

  if (FigCFEqual())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager siriOutputVADID];
    goto LABEL_21;
  }

  if (FigCFEqual())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager musicVADID];
    goto LABEL_21;
  }

  if (FigCFEqual())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager perAppAirPlayVADID];
    goto LABEL_21;
  }

  if (FigCFEqual())
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager lowLatencyVADID];
    goto LABEL_21;
  }

  result = CMSMVAUtility_IsAdditiveRoutingEnabled();
  if (!result)
  {
    return result;
  }

  v4 = -[NSDictionary objectForKey:]([+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager vadNameToID], "objectForKey:", a1) == 0;
  return !v4;
}

void __cmsCopyInitialRouteSharingPolicyToSession_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (FigCFEqual())
  {
    [*(a1 + 32) updateRouteSharingPolicy:3 setByClient:1];
  }

  if ([*(a1 + 32) isLongFormVideo])
  {
    [*(a1 + 32) routingContextUUID];
    if (!FigCFEqual())
    {
      [*(a1 + 32) setRoutingContextUUID:qword_1EB75E1A8];
      [*(a1 + 32) updateRouteSharingPolicy:3 setByClient:1];
      cmsUpdateAudioBehavior(*(a1 + 32));
      CMSMUtility_InformAirPlayOfAudioModeIfNecessary([*(a1 + 32) routingContextUUID]);
      v3 = *(a1 + 32);
      v4 = MXGetNotificationSenderQueue();
      MXDispatchAsyncFunction("cmsCopyInitialRouteSharingPolicyToSession_block_invoke_2", "CMSessionManager.m", 6904, 0, 0, v4, *(a1 + 32), CMSMNotificationUtility_PostSessionRoutingContextDidChange_f);
    }
  }

  CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded(0, 0);
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 32);
}

void CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded(int a1, int a2)
{
  if (CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded_onceToken != -1)
  {
    CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded_cold_1();
  }

  v4 = [+[MXSessionManager sharedInstance](MXSessionManager copySpeechDetectSession];
  if (a1)
  {
    if (a2)
    {
      v5 = 5;
    }

    else
    {
      v5 = 6;
    }
  }

  else
  {
    v5 = [+[MXSessionManager sharedInstance](MXSessionManager currentSpeechDetectStyle:"currentSpeechDetectStyle:", v4];
  }

  [CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded_sLastSpeechDetectStyleLock lock];
  if (CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded_sLastSpeechDetectStyle != v5)
  {
    CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded_sLastSpeechDetectStyle = v5;
    v6 = MXGetNotificationSenderQueue();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded_block_invoke_2;
    v7[3] = &__block_descriptor_38_e5_v8__0l;
    v8 = v5;
    v9 = a1;
    v10 = a2;
    MXDispatchAsync("CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded", "CMSessionManager_NotificationUtilities.m", 360, 0, 0, v6, v7);
  }

  [CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded_sLastSpeechDetectStyleLock unlock];
}

uint64_t _MXSessionCopyProperty(void *a1, uint64_t a2, uint64_t a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    if ([a1 isMemberOfClass:objc_opt_class()])
    {
      v7 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = ___MXSessionCopyProperty_block_invoke;
      v12[3] = &unk_1E7AE7A48;
      v12[4] = &v13;
      v12[5] = a1;
      v12[6] = a2;
      v12[7] = a3;
      MXDispatchAsyncAndWait("_MXSessionCopyProperty", "MXSession_CInterfaceCommon.m", 301, 0, 0, v7, v12);
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      if (![a1 isMemberOfClass:objc_opt_class()] || MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled())
      {
        v9 = [a1 _copyPropertyForKey:a2 valueOut:a3];
        *(v14 + 6) = v9;
      }

      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_MXSessionCopyProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(v14 + 6);
  }

  else
  {
    v10 = FigSignalErrorAtGM();
    *(v14 + 6) = v10;
  }

  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_1B17E9078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CMSMUtility_GetCurrentOutputPortAtIndex(uint64_t a1)
{
  v2 = dword_1EB75E0C8;
  FigSimpleMutexLock();
  if (v2 <= a1)
  {
    v3 = 0;
  }

  else
  {
    MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, a1, v5);
    v3 = v5[10];
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t vaeDoesBluetoothSupportFeature(uint64_t result)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if (result)
  {
    v1 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"fstbbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      outData = 0;
      ioDataSize = 8;
      PropertyData = AudioObjectGetPropertyData(v1, &inAddress, 0, 0, &ioDataSize, &outData);
      if (PropertyData || !outData)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        FigCFDictionaryGetBooleanIfPresent();
      }

      if (outData)
      {
        CFRelease(outData);
      }

      result = v8;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSMNotificationUtility_PostSessionAudioCategoryDidChange(id val)
{
  objc_initWeak(&location, val);
  v2 = MXGetNotificationSenderQueue();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CMSMNotificationUtility_PostSessionAudioCategoryDidChange_block_invoke;
  v3[3] = &unk_1E7AEB360;
  objc_copyWeak(&v4, &location);
  v3[4] = val;
  MXDispatchAsync("CMSMNotificationUtility_PostSessionAudioCategoryDidChange", "CMSessionManager_NotificationUtilities.m", 1793, 0, 0, v2, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void sub_1B17E940C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t CMSUtilityPredicate_IsSameClientAndWaitingToResumeWhenDeviceUnlocksOrInForeground(int a1, void *a2, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  if (([a2 waitingToResumeWhenDeviceUnlocksOrInForeground] & 1) != 0 || (result = objc_msgSend(a2, "wasInterruptedByNowPlayingApp"), result))
  {
    v5 = [objc_msgSend(a2 "clientPID")];
    return v5 == valuePtr;
  }

  return result;
}

void CMSMNotificationUtility_PostPiPIsPossibleDidChange_f(void *a1)
{
  BooleanPayload = CMSMNotificationUtility_CreateBooleanPayload(@"PiPIsPossibleDidChange_PiPPossible", [a1 isPiPPossible]);
  CMSMUtility_PostNotificationToSession(a1, @"PiPIsPossibleDidChange");
  if (BooleanPayload)
  {
    CFRelease(BooleanPayload);
  }
}

CFDictionaryRef CMSMNotificationUtility_CreateBooleanPayload(void *a1, int a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  if (a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = a1 != 0;
  }

  else
  {
    v5 = 0;
  }

  if (v3)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  values = v4;
  keys[0] = v6;
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSMUtility_InformAirPlayOfAudioModeIfNecessary(uint64_t a1)
{
  cf = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a1, 0, &cf);
  v1 = *MEMORY[0x1E69626A8];
  if (FigRoutingManagerIsEndpointOfType(cf) || (v2 = *MEMORY[0x1E69626B0], FigRoutingManagerIsEndpointOfType(cf)))
  {
    v3 = CMSMUtility_CopyMostRelevantAirPlayAudioModeForRoutingContext();
    v4 = *MEMORY[0x1E6962540];
    FigEndpointUtility_SetPropertyOnEndpointStreams();
    if (v3)
    {
      CFRelease(v3);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294949876;
  }

  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  if (byte_1EB75CFA8)
  {
    v6 = &routingContextUtilities_getSharedContextUtilities_contextState;
  }

  else
  {
    v6 = 0;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v7 = 504;
  }

  v8 = *v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex_block_invoke;
  v11[3] = &unk_1E7AE79A8;
  v11[4] = &v12;
  v11[5] = v6;
  v11[6] = a1;
  v11[7] = a2;
  v11[8] = a3;
  MXDispatchSync("FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex", "FigRoutingManagerContextUtilities.m", 2736, 0, 0, v8, v11);
  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

void _routingContextUtilities_copyPickedEndpointAtIndex(uint64_t a1, CFIndex a2, void *a3)
{
  theArray = 0;
  _routingContextUtilities_copyPickedEndpoints(a1, &theArray);
  v5 = theArray;
  if (a2 < 0 || (!theArray ? (Count = 0) : (Count = CFArrayGetCount(theArray)), Count <= a2))
  {
    ValueAtIndex = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, a2);
    if (ValueAtIndex)
    {
      ValueAtIndex = CFRetain(ValueAtIndex);
    }
  }

  *a3 = ValueAtIndex;
  if (v5)
  {

    CFRelease(v5);
  }
}

void CMSMNotificationUtility_PostSessionRoutingContextDidChange_f(void *a1)
{
  CMSMUtility_PostNotificationToSession(a1, @"RoutingContextDidChange");
}

uint64_t cmsSetAudioMode(void *a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [a1 audioMode];
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(a2);
  if (CMSMUtility_IsModeValidForCategory([a1 audioCategory]))
  {
    if ([a1 mode] == VADModeFromFigModeName)
    {
      [a1 audioMode];
      if (FigCFEqual())
      {
        goto LABEL_26;
      }
    }

    if (![a1 isSharePlayCallSession] || CMSUtility_ChangeKeepsPhoneCallBehavior(objc_msgSend(a1, "audioCategory"), a2))
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [a1 setAudioMode:{a2, v17, v18}];
      [a1 setDefaultVPChatMode:0];
      [a1 setMode:VADModeFromFigModeName];
      CustomizedCategory = CMSUtility_GetCustomizedCategory(a1);
      v11 = [a1 interruptionStyle];
      if ([a1 interruptionStyleSetByClient])
      {
        v12 = [a3 objectForKey:@"InterruptionStyle"] == 0;
      }

      else
      {
        v12 = 0;
      }

      [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager setIgnoreNowPlayingAppUpdates:"setIgnoreNowPlayingAppUpdates:", v12];
      v13 = cmsSetAudioCategory(a1, CustomizedCategory, 1, a3);
      if (v13)
      {
        v9 = v13;
        [a1 setAudioMode:v6];
        [a1 setMode:CMSMVAUtility_GetVADModeFromFigModeName(v6)];
        goto LABEL_27;
      }

      [a1 updateDefaultInterruptionFadeDuration:v6];
      [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager setIgnoreNowPlayingAppUpdates:"setIgnoreNowPlayingAppUpdates:", 0];
      if (v12)
      {
        [a1 setInterruptionStyleAtClientRequest:v11];
      }

      CMSMUtility_InformAirPlayOfAudioModeIfNecessary([a1 routingContextUUID]);
      CMSMNotificationUtility_PostSessionAudioModeDidChange(a1);
      if ([a1 hasAudioMode:@"Beacon"])
      {
        [a1 setMakesMusicResume:0];
        if (!MX_FeatureFlags_CanClientsSetEmergencyAlertPriority())
        {
          if ([a1 clientPriority])
          {
            [a1 setClientPriority:0];
          }
        }
      }

      if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy() && [a1 doesSessionConfigurationChangeRequireOutputUnmute:objc_msgSend(a1 oldAudioMode:{"audioCategory"), v6}])
      {
        [a1 setIsOutputMuted:0];
        if ([a1 isActive])
        {
          [+[MXSessionManager sharedInstance](MXSessionManager unmuteOutputForSession:"unmuteOutputForSession:", a1];
        }

        CMSMNotificationUtility_PostIsOutputMutedDidChange(a1);
      }

      [a1 updateAllowEnhancedDialogue];
LABEL_26:
      v9 = 0;
      goto LABEL_27;
    }

    if (dword_1EB75DE40)
    {
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v9 = 4294951615;
  }

  else
  {
    v9 = 4294954315;
  }

LABEL_27:
  if (!MX_FeatureFlags_IsSessionBasedMutingEnabled() && [a1 isActive] && MX_FeatureFlags_IsCallManagementMuteControlEnabled())
  {
    [+[MXSessionManager sharedInstance](MXSessionManager applyUplinkMute:"applyUplinkMute:", a1];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

const char *CMSMUtility_GetStyleString(int a1)
{
  if (a1 > 7)
  {
    if (a1 == 8)
    {
      return "StopThoseYouCan_MixWithOthers";
    }

    if (a1 != 16)
    {
      if (a1 == 32)
      {
        return "MixWithEveryone_DuckTheirVolume";
      }

      return "UNKNOWN STYLE";
    }

    return "MixWithEveryone";
  }

  else
  {
    if (!a1)
    {
      return "NotSet";
    }

    if (a1 != 1)
    {
      if (a1 == 4)
      {
        return "StopThoseYouCanAllowingResumption_MixWithOthers";
      }

      return "UNKNOWN STYLE";
    }

    return "StopEveryone";
  }
}

uint64_t CMSystemSoundMgr_ActivateSystemSoundsForPID(uint64_t result)
{
  if (gCMSS_1)
  {
    v1 = result;
    FigSimpleMutexLock();
    for (i = gCMSS_0; i; i = *i)
    {
      if (*(i + 12) == v1)
      {
        if (*(i + 16) && !*(i + 18))
        {
          cmsmPrewarmAudioForSSID(1, *(i + 8), v1);
          *(i + 18) = 1;
        }

        if (*(i + 17) && !*(i + 19))
        {
          cmsmPrewarmVibeForSSID(1, *(i + 8), *(i + 12));
          *(i + 19) = 1;
        }

        CMSMSleep_CreatePrewarmIdleSleepPreventor(*(i + 8), *(i + 12));
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

id cmsmCopySelectablePortsForRouteConfiguration(int a1, int a2, const void *a3, int a4, int a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v25 = __PAIR64__(a2, a1);
  v26 = a3;
  v6 = vaemCopyConnectedPortsListForRouteConfiguration(a1, a2, a3, a4, a5);
  if (v6)
  {
    v7 = v6;
    obj = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          v13 = [v12 unsignedIntValue];
          v14 = vaeCopyNameForPort(v13);
          PortTypeFromPortID = vaeGetPortTypeFromPortID(v13);
          if (([v14 isEqualToString:0x1F2897C50] & 1) == 0 && PortTypeFromPortID != 1885433975)
          {
            v16 = cmsmCopyDetailedPortInfoForRouteConfiguration([v12 unsignedIntValue], v25, SHIDWORD(v25), v26, a4, a5);
            [obj addObject:v16];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v9);
    }

    if (a5 || !MX_FeatureFlags_IsOnenessEnabled())
    {
      v17 = obj;
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v18 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v30;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v30 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = [*(*(&v29 + 1) + 8 * j) mutableCopy];
            if (vaeGetPortTypeFromPortID([objc_msgSend(v22 objectForKey:{@"RouteDetailedDescription_ID", "unsignedIntValue"}]) == 1885565807)
            {
              [v22 setObject:@"Speaker" forKey:@"RouteDetailedDescription_Name"];
              [v22 setObject:@"Speaker" forKey:@"RouteDetailedDescription_UID"];
            }

            [v17 addObject:v22];
          }

          v19 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v19);
      }
    }
  }

  else
  {
    v17 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v17;
}

CFTypeRef vaemCopyConnectedPortsListForRouteConfiguration(int a1, int a2, const void *a3, int a4, int a5)
{
  if (a5 == 1)
  {
    v9 = 1768845428;
  }

  else
  {
    v9 = 1869968496;
  }

  inAddress.mSelector = 1668313699;
  inAddress.mScope = v9;
  inAddress.mElement = 0;
  ioDataSize = 8;
  if ((CMSMUtility_IsSharePlayCallSessionActive() || CMSMUtility_IsSharePlayMediaSessionActive()) && byte_1EB75D1A0 == 1)
  {
    RouteConfigurationDictionary = 0;
  }

  else
  {
    RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(a1, a2, 0, a3, a4);
  }

  outData = 0;
  PropertyData = AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &outData);
  if (RouteConfigurationDictionary)
  {
    CFRelease(RouteConfigurationDictionary);
  }

  if (PropertyData)
  {
    return 0;
  }

  result = outData;
  if (outData)
  {
    v13 = CFGetTypeID(outData);
    TypeID = CFArrayGetTypeID();
    result = outData;
    if (v13 != TypeID)
    {
      if (outData)
      {
        CFRelease(outData);
        return 0;
      }
    }
  }

  return result;
}

CFDictionaryRef cmsmCopyDetailedPortInfoForRouteConfiguration(AudioObjectID a1, int a2, int a3, const void *a4, int a5, int a6)
{
  v65 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  *keys = 0u;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  *values = 0u;
  v11 = vaeCopyDeviceIdentifierFromVADPort(a1);
  cf = v11;
  if (v11)
  {
    keys[0] = @"RouteDetailedDescription_UID";
    values[0] = v11;
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  allocator = *MEMORY[0x1E695E480];
  v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v46 = v13;
  if (v13)
  {
    *(keys | (8 * v12)) = @"RouteDetailedDescription_ID";
    *(values & 0xFFFFFFFFFFFFFFF7 | (8 * (v12++ & 1))) = v13;
  }

  IsHeadphonesPort = vaeIsHeadphonesPort(valuePtr);
  v15 = *MEMORY[0x1E695E4D0];
  v16 = *MEMORY[0x1E695E4C0];
  if (IsHeadphonesPort)
  {
    v17 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v17 = *MEMORY[0x1E695E4C0];
  }

  if (v17)
  {
    keys[v12] = @"RouteDetailedDescription_IsHeadphones";
    values[v12++] = v17;
  }

  v18 = valuePtr;
  if (a6 == 1)
  {
    v20 = vaeCopyFigInputDeviceNameFromVADPort(valuePtr);
  }

  else
  {
    if (a6 == 2)
    {
      v19 = vaeCopyFigInputDeviceNameFromVADPort(valuePtr);
      if (v19)
      {
        goto LABEL_18;
      }

      v18 = valuePtr;
    }

    v20 = vaeCopyFigOutputDeviceNameFromVADPort(v18);
  }

  v19 = v20;
LABEL_18:
  v21 = vaeCopySelectedDataSourceForPortAndRouteConfiguration(valuePtr, a2, a3, a4);
  if (v21)
  {
    keys[v12] = @"RouteDetailedDescription_SelectedDataSource";
    values[v12++] = v21;
  }

  v44 = v21;
  if (v19)
  {
    keys[v12] = @"RouteDetailedDescription_PortType";
    values[v12++] = v19;
  }

  v22 = vaeCopySpecificNameForPort(valuePtr);
  v23 = v22;
  if (v22)
  {
    keys[v12] = @"RouteDetailedDescription_Name";
    values[v12++] = v22;
  }

  v24 = vaeCopySubPortDescriptionsForPortAndRouteConfiguration(valuePtr, a2, a3, a4, a5);
  v25 = v24;
  if (v24)
  {
    keys[v12] = @"RouteDetailedDescription_DataSources";
    values[v12++] = v24;
  }

  v26 = vaeCopyHiddenSubPortDescriptionsForPort(valuePtr);
  v27 = v26;
  if (v26)
  {
    keys[v12] = @"RouteDetailedDescription_HiddenDataSources";
    values[v12++] = v26;
  }

  IsLiveListenSupportedOnVADPort = vaeIsLiveListenSupportedOnVADPort(valuePtr);
  keys[v12] = @"RouteDetailedDescription_LiveListenIsSupported";
  if (IsLiveListenSupportedOnVADPort)
  {
    v29 = v15;
  }

  else
  {
    v29 = v16;
  }

  values[v12] = v29;
  v30 = v12 + 1;
  if (vaeIsLiveListenSupportedOnVADPort(valuePtr))
  {
    v31 = v15;
  }

  else
  {
    v31 = v16;
  }

  keys[v30] = @"RouteDetailedDescription_VoiceProcessingIsSupported";
  values[v30] = v31;
  v32 = v12 + 2;
  if (MX_FeatureFlags_IsPersonalTranslatorEnabled())
  {
    if (vaeDoesPortSupportFarFieldCapture(valuePtr))
    {
      v33 = v15;
    }

    else
    {
      v33 = v16;
    }

    keys[v32] = @"RouteDetailedDescription_SupportsFarFieldCapture";
    values[v32] = v33;
    v34 = v12 + 3;
    if (vaeIsFarFieldCaptureEnabled(valuePtr))
    {
      v35 = v15;
    }

    else
    {
      v35 = v16;
    }

    keys[v34] = @"RouteDetailedDescription_IsFarFieldCaptureEnabled";
    values[v34] = v35;
    v32 = v12 + 4;
  }

  if (MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled())
  {
    DoesPortSupportBluetoothHighQualityContentCapture = vaeDoesPortSupportBluetoothHighQualityContentCapture(valuePtr);
    keys[v32] = @"RouteDetailedDescription_SupportsHighQualityContentCapture";
    if (DoesPortSupportBluetoothHighQualityContentCapture)
    {
      v37 = v15;
    }

    else
    {
      v37 = v16;
    }

    values[v32] = v37;
    v38 = v32 + 1;
    if (vaeIsBluetoothHighQualityContentCaptureEnabled(valuePtr))
    {
      v39 = v15;
    }

    else
    {
      v39 = v16;
    }

    keys[v38] = @"RouteDetailedDescription_HighQualityContentCaptureEnabled";
    values[v38] = v39;
    v32 += 2;
  }

  v40 = vaeCopyVADEndpointTypeForPort(valuePtr);
  if (v40)
  {
    keys[v32] = @"RouteDetailedDescriptionKey_EndpointType";
    values[v32++] = v40;
    CFRelease(v40);
  }

  v41 = CFDictionaryCreate(allocator, keys, values, v32, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v19)
  {
    CFRelease(v19);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  v42 = *MEMORY[0x1E69E9840];
  return v41;
}

BOOL vaeIsHeadphonesPort(_BOOL8 result)
{
  v7 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    *&inAddress.mSelector = 0x676C6F6270696870;
    inAddress.mElement = 0;
    ioDataSize = 4;
    if (AudioObjectGetPropertyData(result, &inAddress, 0, 0, &ioDataSize, &outData))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      result = 0;
    }

    else
    {
      result = outData != 0;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

id vaeCopyFigInputDeviceNameFromVADPort(uint64_t a1)
{
  PortTypeFromPortID = vaeGetPortTypeFromPortID(a1);

  return CMSMVAUtility_CopyFigInputDeviceNameFromVADPortType(PortTypeFromPortID);
}

id CMSMVAUtility_CopyFigInputDeviceNameFromVADPortType(unsigned int a1)
{
  v1 = -[NSDictionary objectForKey:]([+[MXSessionManager sharedInstance](MXSessionManager vadInputPortTypeToFigInputDeviceNameDict], "objectForKey:", a1);
  v2 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  return v2;
}

const void *vaeCopySelectedDataSourceForPortAndRouteConfiguration(AudioObjectPropertyElement a1, int a2, int a3, const void *a4)
{
  cf = 0;
  RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(a2, a3, 0, a4, 0);
  *&inAddress.mSelector = 0x676C6F6261637263;
  inAddress.mElement = a1;
  ioDataSize = 8;
  if (!AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &cf) && cf && (v8 = CFGetTypeID(cf), v8 == CFArrayGetTypeID()))
  {
    if (CFArrayGetCount(cf) < 1)
    {
      v6 = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
      v6 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }
    }
  }

  else
  {
    v6 = 0;
    cf = 0;
  }

  if (RouteConfigurationDictionary)
  {
    CFRelease(RouteConfigurationDictionary);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t vaeCopySpecificNameForPort(AudioObjectID a1)
{
  outData[22] = *MEMORY[0x1E69E9840];
  outData[0] = 0;
  ioDataSize = 8;
  *&inAddress.mSelector = 0x676C6F6270736E6DLL;
  inAddress.mElement = 0;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, outData))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = 0;
  }

  else
  {
    result = outData[0];
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFArrayRef vaeCopySubPortDescriptionsForPortAndRouteConfiguration(AudioObjectPropertyElement a1, int a2, int a3, const void *a4, int a5)
{
  v70 = *MEMORY[0x1E69E9840];
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *&outData[0] = 0;
  v46 = a2;
  v47 = a3;
  RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(a2, a3, 0, a4, a5);
  *&inAddress.mSelector = 0x676C6F6261767263;
  inObjectID = a1;
  inAddress.mElement = a1;
  ioDataSize[0] = 8;
  if (AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, ioDataSize, outData) || !*&outData[0] || (v38 = CFGetTypeID(*&outData[0]), v38 != CFArrayGetTypeID()))
  {
    *&outData[0] = 0;
  }

  if (RouteConfigurationDictionary)
  {
    CFRelease(RouteConfigurationDictionary);
  }

  v12 = *&outData[0];
  if (!*&outData[0])
  {
    Copy = 0;
    if (!Mutable)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  Count = CFArrayGetCount(*&outData[0]);
  if (Count >= 1)
  {
    v13 = 0;
    v42 = a5;
    v41 = a4;
    v44 = v12;
    while (1)
    {
      valuePtr = 0;
      v59 = 0u;
      memset(outData, 0, sizeof(outData));
      *ioDataSize = 0u;
      v58 = 0u;
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      if (ValueAtIndex)
      {
        *&outData[0] = @"DataSourceID";
        *ioDataSize = ValueAtIndex;
        v15 = 1;
      }

      else
      {
        v15 = 0;
      }

      v16 = vaeCopyNameForSubPort(inObjectID, valuePtr);
      v17 = v16;
      if (v16)
      {
        *(outData | (8 * v15)) = @"DataSourceName";
        *(ioDataSize & 0xFFFFFFFFFFFFFFF7 | (8 * (v15++ & 1))) = v16;
      }

      theDict = 0;
      v54 = 8;
      *&v55.mSelector = 0x676C6F6273707070;
      v55.mElement = valuePtr;
      PropertyData = AudioObjectGetPropertyData(inObjectID, &v55, 0, 0, &v54, &theDict);
      v53 = PropertyData;
      if (PropertyData)
      {
        v19 = PropertyData;
        v52 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v21 = v52;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v22 = v21;
        }

        else
        {
          v22 = v21 & 0xFFFFFFFE;
        }

        if (v22)
        {
          v61 = 136315906;
          v62 = "vaeCopySelectedPolarPatternForSubPort";
          v63 = 1024;
          v64 = v19;
          v65 = 1042;
          v66 = 4;
          v67 = 2082;
          v68 = &v53;
          _os_log_send_and_compose_impl();
        }

        v48 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v23 = 0;
      }

      else
      {
        v23 = theDict;
        if (theDict)
        {
          v48 = 0;
          *(outData + v15) = @"MicrophonePolarPattern";
          *&ioDataSize[2 * v15++] = v23;
        }

        else
        {
          v48 = 1;
        }
      }

      v24 = valuePtr;
      theDict = 0;
      v53 = 0;
      v25 = CMSMVAUtility_CreateRouteConfigurationDictionary(v46, v47, 0, a4, a5);
      *&v55.mSelector = 0x676C6F6273706472;
      v55.mElement = v24;
      v54 = 8;
      if (AudioObjectHasProperty(inObjectID, &v55))
      {
        v26 = AudioObjectGetPropertyData(inObjectID, &v55, 8 * (v25 != 0), v25, &v54, &theDict);
        v53 = v26;
        if (v26)
        {
          v27 = v26;
          v28 = Mutable;
          v52 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v30 = v52;
          if (os_log_type_enabled(v29, type))
          {
            v31 = v30;
          }

          else
          {
            v31 = v30 & 0xFFFFFFFE;
          }

          if (v31)
          {
            v61 = 136315906;
            v62 = "vaeCopyPhysicalDescriptionForSubPort";
            v63 = 1024;
            v64 = v27;
            v65 = 1042;
            v66 = 4;
            v67 = 2082;
            v68 = &v53;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          theDict = 0;
          Mutable = v28;
          a5 = v42;
          a4 = v41;
        }
      }

      if (v25)
      {
        CFRelease(v25);
      }

      v32 = theDict;
      if (!theDict)
      {
        goto LABEL_39;
      }

      Value = CFDictionaryGetValue(theDict, @"region");
      if (Value)
      {
        *(outData + v15) = @"MicrophoneRegion";
        *&ioDataSize[2 * v15++] = Value;
      }

      v34 = CFDictionaryGetValue(v32, @"orientation");
      if (v34)
      {
        *(outData + v15) = @"MicrophoneOrientation";
        *&ioDataSize[2 * v15++] = v34;
      }

      v35 = CFDictionaryGetValue(v32, @"polar pattern");
      if (v35)
      {
        *(outData + v15) = @"MicrophonePolarPatterns";
        *&ioDataSize[2 * v15++] = v35;
      }

      else
      {
LABEL_39:
        if (!v15)
        {
          CFArrayAppendValue(Mutable, 0);
          v12 = v44;
          if (!v32)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }
      }

      v36 = CFDictionaryCreate(allocator, outData, ioDataSize, v15, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFArrayAppendValue(Mutable, v36);
      v12 = v44;
      if (v36)
      {
        CFRelease(v36);
      }

      if (!v32)
      {
        goto LABEL_44;
      }

LABEL_43:
      CFRelease(v32);
LABEL_44:
      if (v17)
      {
        CFRelease(v17);
      }

      if ((v48 & 1) == 0)
      {
        CFRelease(v23);
      }

      if (Count == ++v13)
      {
        Copy = CFArrayCreateCopy(allocator, Mutable);
        goto LABEL_59;
      }
    }
  }

  Copy = 0;
LABEL_59:
  CFRelease(v12);
  if (Mutable)
  {
LABEL_60:
    CFRelease(Mutable);
  }

LABEL_61:
  v39 = *MEMORY[0x1E69E9840];
  return Copy;
}

uint64_t vaeCopyNameForSubPort(AudioObjectID a1, AudioObjectPropertyElement a2)
{
  outData[22] = *MEMORY[0x1E69E9840];
  outData[0] = 0;
  ioDataSize = 8;
  *&inAddress.mSelector = 0x676C6F6273706E6DLL;
  inAddress.mElement = a2;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, outData))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = 0;
  }

  else
  {
    result = outData[0];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFArrayRef vaeCopyHiddenSubPortDescriptionsForPort(AudioObjectID a1)
{
  keys[2] = *MEMORY[0x1E69E9840];
  outData = 0;
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *&inAddress.mSelector = 0x676C6F62706E6173;
  inAddress.mElement = 0;
  ioDataSize = 8;
  if (AudioObjectHasProperty(a1, &inAddress))
  {
    PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData);
    Copy = 0;
    v6 = outData;
    if (!PropertyData && outData)
    {
      v7 = CFGetTypeID(outData);
      TypeID = CFArrayGetTypeID();
      v6 = outData;
      if (v7 == TypeID && (v9 = CFArrayGetCount(outData), v6 = outData, v9))
      {
        Count = CFArrayGetCount(outData);
        if (Count >= 1)
        {
          v11 = Count;
          v12 = 0;
          while (1)
          {
            valuePtr = 0;
            keys[0] = 0;
            keys[1] = 0;
            values[0] = 0;
            values[1] = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(outData, v12);
            CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
            if (ValueAtIndex)
            {
              break;
            }

            v17 = vaeCopyNameForSubPort(a1, valuePtr);
            if (v17)
            {
              v14 = v17;
              v15 = 0;
LABEL_13:
              v16 = 0;
              keys[v15] = @"DataSourceName";
              values[v15++] = v14;
LABEL_14:
              v18 = CFDictionaryCreate(v2, keys, values, v15, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              CFArrayAppendValue(Mutable, v18);
              if (v18)
              {
                CFRelease(v18);
              }

              if ((v16 & 1) == 0)
              {
                CFRelease(v14);
              }

              goto LABEL_19;
            }

            CFArrayAppendValue(Mutable, 0);
LABEL_19:
            if (v11 == ++v12)
            {
              goto LABEL_20;
            }
          }

          keys[0] = @"DataSourceID";
          values[0] = ValueAtIndex;
          v14 = vaeCopyNameForSubPort(a1, valuePtr);
          v15 = 1;
          if (v14)
          {
            goto LABEL_13;
          }

          v16 = 1;
          goto LABEL_14;
        }

LABEL_20:
        Copy = CFArrayCreateCopy(v2, Mutable);
        v6 = outData;
      }

      else
      {
        Copy = 0;
      }
    }

    if (v6)
    {
      CFRelease(v6);
      outData = 0;
    }
  }

  else
  {
    Copy = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v19 = *MEMORY[0x1E69E9840];
  return Copy;
}

BOOL vaeIsLiveListenSupportedOnVADPort(AudioObjectID a1)
{
  inAddress.mElement = 0;
  *&inAddress.mSelector = *"psllbolg";
  ioDataSize = 4;
  outData = 0;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    v1 = 1;
  }

  else
  {
    v1 = outData == 0;
  }

  return !v1;
}

uint64_t MX_FeatureFlags_IsPersonalTranslatorEnabled()
{
  if (MX_FeatureFlags_IsPersonalTranslatorEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsPersonalTranslatorEnabled_cold_1();
  }

  return MX_FeatureFlags_IsPersonalTranslatorEnabled_isPersonalTranslatorEnabled;
}

uint64_t vaeDoesPortSupportFarFieldCapture(AudioObjectID a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsPersonalTranslatorEnabled())
  {
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"piffbolg";
    ioDataSize = 4;
    outData = 0;
    if (AudioObjectHasProperty(a1, &inAddress) && AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
    {
      outData = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = outData;
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t vaeIsFarFieldCaptureEnabled(AudioObjectID a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsPersonalTranslatorEnabled())
  {
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"eiffbolg";
    ioDataSize = 4;
    outData = 0;
    if (AudioObjectHasProperty(a1, &inAddress) && AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
    {
      outData = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = outData;
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t vaeIsBluetoothHighQualityContentCaptureEnabled(uint64_t result)
{
  v7 = *MEMORY[0x1E69E9840];
  ioDataSize = 4;
  outData = 0;
  *&inAddress.mSelector = *"eiaabolg";
  inAddress.mElement = 0;
  if (result)
  {
    v1 = result;
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      if (AudioObjectGetPropertyData(v1, &inAddress, 0, 0, &ioDataSize, &outData))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        result = 0;
      }

      else
      {
        result = outData != 0;
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *vaeCopyVADEndpointTypeForPort(AudioObjectID a1)
{
  VADEndpointTypeForPort = vaeGetVADEndpointTypeForPort(a1);
  if (VADEndpointTypeForPort > 1701868659)
  {
    switch(VADEndpointTypeForPort)
    {
      case 1701868660:
        v2 = kMXSession_EndpointType_TTY;
        return *v2;
      case 1701868910:
        v2 = kMXSession_EndpointType_Unspecified;
        return *v2;
      case 1701869160:
        v2 = kMXSession_EndpointType_Vehicle;
        return *v2;
    }

LABEL_12:
    v2 = kMXSession_EndpointType_Other;
    return *v2;
  }

  if (VADEndpointTypeForPort == 1701865569)
  {
    v2 = kMXSession_EndpointType_HearingAid;
    return *v2;
  }

  if (VADEndpointTypeForPort == 1701865584)
  {
    v2 = kMXSession_EndpointType_Headphones;
    return *v2;
  }

  if (VADEndpointTypeForPort != 1701868400)
  {
    goto LABEL_12;
  }

  v2 = kMXSession_EndpointType_Speakers;
  return *v2;
}

uint64_t vaeGetVADEndpointTypeForPort(AudioObjectID a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = 1701868910;
  outData = 1701868910;
  if (a1)
  {
    *&inAddress.mSelector = 0x676C6F6270657074;
    inAddress.mElement = 0;
    ioDataSize = 4;
    if (AudioObjectHasProperty(a1, &inAddress))
    {
      if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        v1 = outData;
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

BOOL CMSMUtility_FetchUIShouldIgnoreRemoteControlEvents(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v1 = MX_RunningBoardServices_CopyBundleInfoValueForKeyAndPID(@"UIShouldIgnoreRemoteControlEvents", a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFBooleanGetValue(v1) != 0;
  CFRelease(v2);
  return v3;
}

uint64_t MX_FeatureFlags_IsAirPlayDaemonEnabled()
{
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAirPlayDaemonEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAirPlayDaemonEnabled_isAirPlayDaemonEnabled;
}

uint64_t CMSUtility_SessionWithPIDIsPlaying(int a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 isPlaying] && objc_msgSend(objc_msgSend(v7, "clientPID"), "intValue") == a1)
        {
          v8 = 1;
          goto LABEL_12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_12:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t CMSUtility_GetApplicationStateForSession(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (![a1 pidToInheritAppStateFrom])
  {
    [a1 audioCategory];
    if (!FigCFEqual())
    {
      v2 = [objc_msgSend(a1 "clientPID")];
      goto LABEL_4;
    }

    return 0;
  }

  v2 = [a1 pidToInheritAppStateFrom];
LABEL_4:

  return MX_RunningBoardServices_GetApplicationStateForPID(v2, 1);
}

void CMSMNotificationUtility_PostSessionAudioModeDidChange(void *a1)
{
  v2 = a1;
  v3 = MXGetNotificationSenderQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CMSMNotificationUtility_PostSessionAudioModeDidChange_block_invoke;
  v4[3] = &unk_1E7AE7CE0;
  v4[4] = a1;
  MXDispatchAsync("CMSMNotificationUtility_PostSessionAudioModeDidChange", "CMSessionManager_NotificationUtilities.m", 102, 0, 0, v3, v4);
}

const __CFNumber *MXCFNumberGetValueUInt32(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

void CMSMUtility_UpdateRoutingContextForSessionsWithPID(int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([objc_msgSend(v7 "clientPID")] == a1)
        {
          CMSUtility_UpdateRoutingContextForSession(v7);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t FigRoutingManagerContextUtilities_GetContextString(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v7 = 0;
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __FigRoutingManagerContextUtilities_GetContextString_block_invoke;
      v3[3] = &unk_1E7AE7140;
      v3[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
      v3[6] = v1;
      v3[4] = &v4;
      MXDispatchSync("FigRoutingManagerContextUtilities_GetContextString", "FigRoutingManagerContextUtilities.m", 577, 0, 0, qword_1EB75CF98, v3);
    }

    v1 = v5[3];
    _Block_object_dispose(&v4, 8);
  }

  return v1;
}

void cmsutility_handleRoutingContextChanged(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([a1 isActive])
  {
    cmsBeginInterruptionGuts(a1, 0, 2);
  }

  cmsUpdateAudioBehavior(a1);
  CMSMUtility_InformAirPlayOfAudioModeIfNecessary([a1 routingContextUUID]);
  v3 = a1;
  v4 = MXGetNotificationSenderQueue();
  MXDispatchAsyncFunction("cmsutility_handleRoutingContextChanged", "CMSessionManager_SessionUtilities.m", 5355, 0, 0, v4, a1, CMSMNotificationUtility_PostSessionRoutingContextDidChange_f);
  CMSMNotificationUtility_PostActiveAudioRouteDidChange(a1, qword_1EB75E1C0, 0);
  v5 = *MEMORY[0x1E69E9840];
}

__CFString *routingContextUtilities_getFeatureString(int a1)
{
  if ((a1 - 1) > 0xD)
  {
    return 0;
  }

  else
  {
    return off_1E7AE7BE0[a1 - 1];
  }
}

void CMSMNotificationUtility_PostActiveAudioRouteDidChange(void *a1, const void *a2, const void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_12;
  }

  v16 = 0;
  FigCFDictionaryGetIntIfPresent();
  CMSMUtility_MapCMSRouteChangeReasonToString(0);
  v15 = 0;
  FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(qword_1EB75E1A8);
  FigRoutingManagerContextUtilities_GetContextString(a3);
  if (FigCFDictionaryGetBooleanIfPresent())
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_6;
    }
  }

  else if (dword_1EB75DE40)
  {
LABEL_6:
    v14 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CMSUtility_AreRoutingContextsEquivalent(qword_1EB75E190, a3))
  {
    +[MXSystemController notifyAll:payload:dontPostIfSuspended:](MXSystemController, "notifyAll:payload:dontPostIfSuspended:", @"ActiveAudioRouteDidChange", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v15 != 0, v10, v11), @"ShouldPause", 0}], 0);
  }

  v7 = a1;
  CFRetain(a2);
  if (a3)
  {
    CFRetain(a3);
  }

  v8 = MXGetNotificationSenderQueue();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __CMSMNotificationUtility_PostActiveAudioRouteDidChange_block_invoke;
  v12[3] = &unk_1E7AE79D0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  MXDispatchAsync("CMSMNotificationUtility_PostActiveAudioRouteDidChange", "CMSessionManager_NotificationUtilities.m", 1152, 0, 0, v8, v12);
LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled()
{
  if (MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled_cold_1();
  }

  return MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled_sIsQuiesceableWiredConnectionEnabled;
}

__CFDictionary *CMSMCreateRouteDescriptionFromPortIDOrRouteConfiguration(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = 0;
  v41 = a1;
  v40 = 0;
  v8 = MEMORY[0x1E695E480];
  if (a1)
  {
    goto LABEL_2;
  }

  if (!MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled() || vaemIsPersistentRouteActive())
  {
    v20 = OUTLINED_FUNCTION_1_13();
    v25 = cmsmCopyActiveNonWirelessPortsListForRouteConfigurationScopeAndDevice(v20, v21, v22, v23, 0, v24);
    if (!v25)
    {
      goto LABEL_22;
    }

LABEL_18:
    v7 = v25;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v7 count] || (v41 = objc_msgSend(objc_msgSend(v7, "firstObject"), "unsignedIntValue")) == 0)
    {
LABEL_21:
      CFRelease(v7);
      goto LABEL_22;
    }

LABEL_2:
    cf = 0;
    v9 = qword_1EB75E090;
    VTable = CMBaseObjectGetVTable();
    v11 = *(*(VTable + 24) + 8);
    if (!v11 || (v12 = *(VTable + 24) + 8, v13 = *v8, v11(v9, 0x1F289B9D0, *v8, &v41, &cf), !cf))
    {
LABEL_15:
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (a1)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v15 = CMBaseObjectGetVTable();
      v16 = *(*(v15 + 8) + 48);
      if (v16)
      {
        v17 = *(v15 + 8) + 48;
        v18 = 0x1F289D170;
LABEL_13:
        v16(CMBaseObject, v18, v13, &v40);
      }
    }

    else
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v26 = CMBaseObjectGetVTable();
      v16 = *(*(v26 + 8) + 48);
      if (v16)
      {
        v27 = *(v26 + 8) + 48;
        v18 = 0x1F289D190;
        goto LABEL_13;
      }
    }

    CFRelease(cf);
    goto LABEL_15;
  }

  v28 = OUTLINED_FUNCTION_1_13();
  v25 = cmsmCopyActiveNonQuiesceablePortsForRouteConfigurationScopeAndDevice(v28, v29, v30, v31, a6, 0, v32);
  if (v25)
  {
    goto LABEL_18;
  }

LABEL_22:
  Mutable = v40;
  if (!v40)
  {
    v34 = *v8;
    Mutable = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v35 = MGCopyAnswer();
      v36 = CFStringCreateWithFormat(v34, 0, @"%@...", v35);
      if (!v36)
      {
        CFDictionarySetValue(Mutable, @"RouteType", @"Default");
        if (!v35)
        {
          return Mutable;
        }

        goto LABEL_26;
      }

      v37 = v36;
      CFDictionarySetValue(Mutable, @"RouteName", v36);
      CFDictionarySetValue(Mutable, @"RouteType", @"Default");
      CFRelease(v37);
      if (v35)
      {
LABEL_26:
        CFRelease(v35);
      }
    }
  }

  return Mutable;
}

CFTypeRef cmsmCopyActiveNonWirelessPortsListForRouteConfigurationScopeAndDevice(int a1, int a2, const void *a3, const void *a4, int a5, uint64_t a6)
{
  cf = 0;
  outData = 0;
  RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(a1, a2, a3, a4, 0);
  if (a5 == 1)
  {
    v9 = 1768845428;
  }

  else
  {
    v9 = 1869968496;
  }

  inAddress.mSelector = 1634629490;
  inAddress.mScope = v9;
  inAddress.mElement = 0;
  ioDataSize = 8;
  PropertyData = AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &outData);
  v11 = outData;
  if (PropertyData)
  {
    v12 = 1;
  }

  else
  {
    v12 = outData == 0;
  }

  if (!v12)
  {
    v13 = CFGetTypeID(outData);
    if (v13 == CFArrayGetTypeID() && CFArrayGetCount(outData))
    {
      if (a5 == 1)
      {
        p_cf = &cf;
        v15 = a6;
        v16 = 0;
      }

      else
      {
        v16 = &cf;
        v15 = a6;
        p_cf = 0;
      }

      vaemGetPortListForDevice(outData, v15, p_cf, v16);
      if (cf)
      {
        CFRetain(cf);
      }
    }

    v11 = outData;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (RouteConfigurationDictionary)
  {
    CFRelease(RouteConfigurationDictionary);
  }

  return cf;
}

uint64_t OUTLINED_FUNCTION_30_1()
{

  return CMBaseObjectGetVTable();
}

id cmsmCopyBuiltinPortsListForRouteConfigurationScopeAndDevice(int a1, int a2, const void *a3)
{
  outData = 0;
  inAddress.mElement = 0;
  ioDataSize = 8;
  *&inAddress.mSelector = *"cribptuo";
  RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(a1, a2, 0, a3, 0);
  if (!AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &outData))
  {
    [outData count];
  }

  return outData;
}

__CFDictionary *vaeCreateRouteDescription(uint64_t a1, int a2)
{
  v61 = *MEMORY[0x1E69E9840];
  valuePtr = *CMBaseObjectGetDerivedStorage();
  PortTypeFromPortID = vaeGetPortTypeFromPortID(valuePtr);
  v4 = vaeCopyDeviceIdentifierFromVADPort(valuePtr);
  v5 = cmsmCopyEndpointWithUID(v4, PortTypeFromPortID);
  v6 = v5;
  v7 = MEMORY[0x1E695E4D0];
  v8 = MEMORY[0x1E695E4C0];
  if (PortTypeFromPortID == 1885433971)
  {
    cf[0] = 0;
    FigRoutingManagerGetMirroringModeFromEndpoint(v5);
    if (FigCFEqual())
    {
      v9 = 0x1F288FA70;
    }

    else
    {
      v9 = 0x1F2897CB0;
    }

LABEL_7:
    cmsmCreateRouteDescriptionForFigAirPlayEndpoints(v6, v9, cf);
    v10 = *MEMORY[0x1E695E480];
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    v12 = cf[0];
    if (!cf[0])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (PortTypeFromPortID == 1885433953)
  {
    cf[0] = 0;
    v9 = 0x1F2897C90;
    goto LABEL_7;
  }

  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  MutableCopy = Mutable;
  if (Mutable)
  {
    v19 = *v7;
    CFDictionarySetValue(Mutable, @"RouteSupportsAudio", *v7);
    v20 = vaeCopyNameForPort(valuePtr);
    if (v20)
    {
      CFDictionarySetValue(MutableCopy, @"RouteName", v20);
    }

    v56 = v20;
    if (v4)
    {
      CFDictionarySetValue(MutableCopy, @"RouteUID", v4);
    }

    v21 = vaeCopyRouteSubtypeFromVADPort(valuePtr);
    if (v21)
    {
      v22 = v21;
      CFDictionarySetValue(MutableCopy, @"RouteSubtype", v21);
      CFRelease(v22);
    }

    v23 = vaeGetPortTypeFromPortID(valuePtr);
    v24 = CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(v23);
    if (v24 || (v25 = vaeGetPortTypeFromPortID(valuePtr), (v24 = CMSMVAUtility_CopyFigInputDeviceNameFromVADPortType(v25)) != 0))
    {
      v57 = v24;
      CFDictionarySetValue(MutableCopy, @"AVAudioRouteName", v24);
      v55 = 0;
      if (a2)
      {
LABEL_29:
        v26 = kMXSessionPickableRouteType_Default;
        goto LABEL_30;
      }
    }

    else
    {
      v57 = 0;
      v55 = 1;
      if (a2)
      {
        goto LABEL_29;
      }
    }

    ConnectionTypeForPort = vaeGetConnectionTypeForPort(valuePtr);
    switch(ConnectionTypeForPort)
    {
      case 1885566825:
        if (CMSMDeviceState_ItsAnAppleTV() || !vaeIsQuiesceableWiredPort(valuePtr))
        {
          goto LABEL_32;
        }

        v26 = kMXSessionPickableRouteType_Wired;
        break;
      case 1885561449:
        v26 = kMXSessionPickableRouteType_Override;
        break;
      case 1885544823:
        v26 = kMXSessionPickableRouteType_Wireless;
        break;
      default:
        goto LABEL_32;
    }

LABEL_30:
    if (*v26)
    {
      CFDictionarySetValue(MutableCopy, @"RouteType", *v26);
    }

LABEL_32:
    DoesPortSupportSoftwareVolume = vaeDoesPortSupportSoftwareVolume(valuePtr);
    v28 = *MEMORY[0x1E695E4C0];
    if (DoesPortSupportSoftwareVolume)
    {
      v29 = v19;
    }

    else
    {
      v29 = *MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(MutableCopy, @"SoftwareVolumeEnabled", v29);
    if (PortTypeFromPortID <= 1886152040)
    {
      if (PortTypeFromPortID == 1885892674)
      {
        goto LABEL_42;
      }

      v30 = 1885892706;
    }

    else
    {
      if (PortTypeFromPortID == 1886152041 || PortTypeFromPortID == 1886216820)
      {
        goto LABEL_42;
      }

      v30 = 1886152047;
    }

    if (PortTypeFromPortID != v30)
    {
      goto LABEL_120;
    }

LABEL_42:
    CFDictionarySetValue(MutableCopy, @"IsBTRoute", v19);
    *cf = 0u;
    v60 = 0u;
    if (vaeGetPartnersForPort(valuePtr, cf))
    {
      v31 = v19;
    }

    else
    {
      v31 = v28;
    }

    CFDictionarySetValue(MutableCopy, @"BTDetails_PartnerRoutePresent", v31);
    if (vaePartnerRouteRoutable(valuePtr))
    {
      v32 = v19;
    }

    else
    {
      v32 = v28;
    }

    CFDictionarySetValue(MutableCopy, @"BTDetails_PartnerRouteRoutable", v32);
    v33 = vaeCopyVADEndpointTypeForPort(valuePtr);
    if (v33)
    {
      v34 = v33;
      CFDictionarySetValue(MutableCopy, @"BTDetails_EndpointType", v33);
      CFRelease(v34);
    }

    if (PortTypeFromPortID == 1886152047)
    {
      if (vaeIsSiblingRoutePresent(valuePtr))
      {
        v35 = v19;
      }

      else
      {
        v35 = v28;
      }

      CFDictionarySetValue(MutableCopy, @"BTDetails_SiblingRoutePresent", v35);
    }

    if (valuePtr)
    {
      cf[0] = 0x676C6F626F736163;
      LODWORD(cf[1]) = 0;
      if (AudioObjectHasProperty(valuePtr, cf))
      {
        CFDictionarySetValue(MutableCopy, @"IsPreferredExternalRoute", v19);
        v36 = [+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices isPortManaged:"isPortManaged:", valuePtr]? v19 : v28;
        CFDictionarySetValue(MutableCopy, @"BTDetails_IsBTManaged", v36);
        if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote())
        {
          v37 = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
          v38 = CMSM_IDSConnection_CopyNearbyPairedDeviceInfo();
          if (v38)
          {
            CFArrayAppendValue(v37, v38);
            CFDictionarySetValue(MutableCopy, @"OtherDevicesConnected", v37);
          }

          if (CMSM_GetFakeSharedAudioRouteAsPicked())
          {
            CFDictionarySetValue(MutableCopy, @"IsCurrentlyPickedOnPairedDevice", v19);
          }

          if (v38)
          {
            CFRelease(v38);
          }

          v7 = MEMORY[0x1E695E4D0];
          if (v37)
          {
            CFRelease(v37);
          }
        }
      }

      if (!vaeDoesBTPortSupportInEarDetection(valuePtr))
      {
        cf[0] = 0x676C6F626F736163;
        LODWORD(cf[1]) = 0;
        if (!AudioObjectHasProperty(valuePtr, cf))
        {
          goto LABEL_81;
        }

        CFDictionarySetValue(MutableCopy, @"PreferredExternalRouteDetails_InEarDetectSupported", v28);
        v39 = MutableCopy;
        v40 = v28;
        goto LABEL_80;
      }
    }

    else if (!vaeDoesBTPortSupportInEarDetection(0))
    {
      goto LABEL_81;
    }

    CFDictionarySetValue(MutableCopy, @"IsPreferredExternalRoute", v19);
    CFDictionarySetValue(MutableCopy, @"PreferredExternalRouteDetails_InEarDetectSupported", v19);
    if (vaeHasUserEnabledInEarDetectionForBTPort(valuePtr, 0))
    {
      v41 = v19;
    }

    else
    {
      v41 = v28;
    }

    CFDictionarySetValue(MutableCopy, @"PreferredExternalRouteDetails_InEarDetectEnabled", v41);
    if (CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(valuePtr))
    {
      v40 = v19;
    }

    else
    {
      v40 = v28;
    }

    v39 = MutableCopy;
LABEL_80:
    CFDictionarySetValue(v39, @"PreferredExternalRouteDetails_IsActive", v40);
LABEL_81:
    switch(PortTypeFromPortID)
    {
      case 1885892674:
        CFDictionarySetValue(MutableCopy, @"BTDetails_IsA2DPRoute", v19);
        DoesPortSupportDoAP = vaeDoesPortSupportDoAP(valuePtr);
        if (DoesPortSupportDoAP)
        {
          v50 = v19;
        }

        else
        {
          v50 = v28;
        }

        CFDictionarySetValue(MutableCopy, @"BTDetails_SupportsDoAP", v50);
        if (!DoesPortSupportDoAP)
        {
          goto LABEL_111;
        }

        v51 = vaeDoesPortSupportSoftwareVolume(valuePtr);
        v48 = @"BTDetails_SupportsSoftwareVolume";
        if (v51)
        {
          v46 = v19;
        }

        else
        {
          v46 = v28;
        }

        v47 = MutableCopy;
        break;
      case 1886216820:
        v48 = @"BTDetails_IsHFPRoute";
        v47 = MutableCopy;
        v46 = v19;
        break;
      case 1885892706:
        v42 = vaeIsLiveListenSupportedOnVADPort(valuePtr) ? v19 : v28;
        CFDictionarySetValue(MutableCopy, @"BTDetails_SupportsLiveListen", v42);
        CFDictionarySetValue(MutableCopy, @"BTDetails_IsHFPRoute", v19);
        v43 = vaeIsAvailableForVoicePrompts(valuePtr) ? v19 : v28;
        CFDictionarySetValue(MutableCopy, @"BTDetails_IsAvailableForVoicePrompts", v43);
        v44 = vaeDoesPortSupportStereoHFP(valuePtr) ? v19 : v28;
        CFDictionarySetValue(MutableCopy, @"BTDetails_SupportsStereoHFP", v44);
        if (!MX_FeatureFlags_IsPersonalTranslatorEnabled())
        {
          goto LABEL_111;
        }

        if (vaeDoesPortSupportFarFieldCapture(valuePtr))
        {
          v45 = v19;
        }

        else
        {
          v45 = v28;
        }

        CFDictionarySetValue(MutableCopy, @"BTDetails_SupportsFarFieldCapture", v45);
        if (vaeIsFarFieldCaptureEnabled(valuePtr))
        {
          v46 = v19;
        }

        else
        {
          v46 = v28;
        }

        v47 = MutableCopy;
        v48 = @"BTDetails_IsFarFieldCaptureEnabled";
        break;
      default:
        goto LABEL_111;
    }

    CFDictionarySetValue(v47, v48, v46);
LABEL_111:
    if (MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled())
    {
      if (vaeDoesBluetoothSupportFeature(valuePtr))
      {
        v52 = v19;
      }

      else
      {
        v52 = v28;
      }

      CFDictionarySetValue(MutableCopy, @"BTDetails_SupportsHighQualityContentCapture", v52);
      if (vaeIsBluetoothHighQualityContentCaptureEnabled(valuePtr))
      {
        v53 = v19;
      }

      else
      {
        v53 = v28;
      }

      CFDictionarySetValue(MutableCopy, @"BTDetails_IsHighQualityContentCaptureEnabled", v53);
    }

    cmsmAddBTDetailsFromBTEndpointToRouteDescription(v6, MutableCopy);
LABEL_120:
    if (FigCFEqual())
    {
      CFDictionarySetValue(MutableCopy, @"IsPreferredExternalRoute", v19);
      CFDictionarySetValue(MutableCopy, @"PreferredExternalRouteDetails_IsActive", v19);
    }

    if (v56)
    {
      CFRelease(v56);
    }

    v8 = MEMORY[0x1E695E4C0];
    if ((v55 & 1) == 0)
    {
      v12 = v57;
LABEL_8:
      CFRelease(v12);
    }
  }

LABEL_9:
  if (vaeDoesPortSupportSharePlay(valuePtr))
  {
    v13 = v7;
  }

  else
  {
    v13 = v8;
  }

  CFDictionarySetValue(MutableCopy, @"SupportsSharePlay", *v13);
  v14 = CFNumberCreate(v10, kCFNumberSInt32Type, &valuePtr);
  if (v14)
  {
    v15 = v14;
    CFDictionarySetValue(MutableCopy, @"PortNumber", v14);
    CFRelease(v15);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v16 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

uint64_t _VAEndpointManager_CopyPropertyWithQualifier(uint64_t a1, const void *a2, uint64_t a3, int *a4, void *a5)
{
  CMBaseObjectGetDerivedStorage();
  result = 4294950586;
  if (a4 && a2 && a5)
  {
    *a5 = 0;
    if (CFEqual(a2, @"VAEM_VADPortIDFromVADPortType"))
    {
      VADPortIDFromVADPortType = vaemGetVADPortIDFromVADPortType(*a4);
      v14 = MXCFNumberCreateFromSInt64(VADPortIDFromVADPortType);
    }

    else if (CFEqual(a2, @"VAEM_IsPlayAndRecordCategory"))
    {
      v9 = *a4;
      v12 = *a4 == 1668301427 || v9 == 1668309362 || v9 == 1668313666 || v9 == 1668313715;
      v13 = MEMORY[0x1E695E4C0];
      if (v12)
      {
        v13 = MEMORY[0x1E695E4D0];
      }

      v14 = CFRetain(*v13);
    }

    else if (CFEqual(a2, @"VAEM_ScalarEquivalent"))
    {
      v15 = __exp10f(*a4 / 20.0);
      v14 = MXCFNumberCreateFromFloat32(v15);
    }

    else
    {
      result = CFEqual(a2, @"VAEM_EndpointForPort");
      if (!result)
      {
        return result;
      }

      v14 = vaemCopyEndpointForPort(*a4);
    }

    return OUTLINED_FUNCTION_6_3(v14);
  }

  return result;
}

uint64_t cmsmCopyEndpointWithUID(uint64_t a1, int a2)
{
  v2 = a1;
  if (a2 > 1885892673)
  {
    if (a2 == 1885892674 || a2 == 1885892706 || a2 == 1886152047)
    {
      v3 = MEMORY[0x1E69618D8];
LABEL_10:
      v6 = *v3;
      v5 = qword_1EB75E190;
      goto LABEL_11;
    }

    return 0;
  }

  if (a2 == 1885433953)
  {
    v3 = MEMORY[0x1E69618D0];
    goto LABEL_10;
  }

  if (a2 != 1885433971)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E69618D0];
  v5 = [+[MXSessionManager sharedInstance](MXSessionManager systemMirroringRoutingContextUUID];
  a1 = v2;
  v6 = v4;
LABEL_11:

  return FigRoutingManagerCopyEndpointWithDeviceID(a1, 1, v6, v5);
}

uint64_t vaemHeadphoneJackIsConnected(int a1)
{
  if (a1)
  {
    return byte_1EB75D178;
  }

  if (vaemGetVADPortIDFromVADPortType(1886680175))
  {
    return 1;
  }

  return vaemGetVADPortIDFromVADPortType(1885892727) != 0;
}

uint64_t vaemHeadphoneJackHasInput(int a1)
{
  if (a1)
  {
    return byte_1EB75D179;
  }

  if (vaemGetVADPortIDFromVADPortType(1886680169))
  {
    return 1;
  }

  return vaemGetVADPortIDFromVADPortType(1886222185) != 0;
}

id CMSMNotificationUtility_CreateRecordingSessionsDescription()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        if ([v6 isRecording])
        {
          v13 = 0u;
          v14 = 0u;
          if (v6)
          {
            [v6 auditToken];
          }

          v7 = objc_alloc(MEMORY[0x1E695DF20]);
          v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v6, "audioSessionID")}];
          v9 = [MEMORY[0x1E695DEF0] dataWithBytes:&v13 length:32];
          v10 = [v7 initWithObjectsAndKeys:{v8, @"AudioSessionID", v9, @"AuditToken", 0, v13, v14}];
          [v0 addObject:v10];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v0;
}

CFArrayRef vaemCopyAvailableVADUIDs()
{
  if (qword_1EB75D198)
  {
    return CFArrayCreateCopy(*MEMORY[0x1E695E480], qword_1EB75D198);
  }

  else
  {
    return 0;
  }
}

uint64_t MXSMCancelAnyInProgressVolumeRampIfNeeded(const __CFString *a1, const void *a2, unsigned int a3)
{
  result = MX_FeatureFlags_IsAdaptiveVolumeControlEnabled();
  if (result)
  {
    if (a3 <= 0xE && ((1 << a3) & 0x5836) != 0)
    {
      result = vaemVolumeStateGetLastVolumeRampInProgress();
      if (result)
      {
        vaemVolumeStateGetLastVolumeRampCategory();
        MXSMGetVolumeRampCategory(a1, a2);
        result = FigCFEqual();
        if (result)
        {
          LastVolumeSetVADID = vaemVolumeStateGetLastVolumeSetVADID();

          return CMSMVAUtility_CancelAnyInProgressVolumeRamp(LastVolumeSetVADID, 3);
        }
      }
    }
  }

  return result;
}

uint64_t CMSMUtility_CopyDeviceRoutesForInactiveRouteConfiguration(NSDictionary *a1, uint64_t a2, const void *a3, int a4, __CFArray **a5, __CFArray **a6, __CFArray **a7)
{
  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(a1);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(a2);
  v15 = vaemCopyVADInputPortsForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, a3, 0, a4);
  v16 = vaemCopyVADOutputPortsForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, a3, 0, a4);
  CMSMVAUtility_CopyRoutesInfoFromInputAndOutputPorts(v16, v15, a5, a6, 0, a7);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return 0;
}

BOOL PVMIsCategoryAndRouteInfoCurrent(const __CFString *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *cf = *a3;
  v16 = v5;
  v17 = *(a3 + 32);
  v6 = PVMIsCurrentDeviceRoute(cf);
  v14 = 0;
  cf[0] = 0;
  v7 = *sStorage;
  FigSimpleMutexLock();
  MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);
  pvmCreateSeparateCategoryAndModeStrings(MappedCategoryWithModeAppended, cf, &v14);
  v9 = *(sStorage + 232);
  if (FigCFEqual())
  {
    v10 = *(sStorage + 240);
    v11 = FigCFEqual() != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = *sStorage;
  FigSimpleMutexUnlock();
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v6 && v11;
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_9_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_9_7()
{
  v2 = *(v0 + 8);

  return FigXPCCreateBasicMessage();
}

uint64_t OUTLINED_FUNCTION_9_9()
{
  v2 = *(v0 + 592);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t CMSUtility_GetCurrentConsolidatedPlayingState(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (([a1 someMXSessionIsPlaying] & 1) != 0 || (objc_msgSend(a1, "clientIsPlaying") & 1) != 0 || objc_msgSend(a1, "hapticEngineIsPlaying"))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v3 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t cmsSetIsPlaying(void *a1, int a2)
{
  v141 = *MEMORY[0x1E69E9840];
  v4 = [a1 currentlyControllingFlags];
  v5 = [a1 isPlaying];
  v6 = cmsCopyOverrideRoute(a1);
  if ([a1 isPlaying] == a2)
  {
LABEL_160:
    v23 = 0;
    goto LABEL_161;
  }

  if (a2)
  {
    v96 = CMSUtility_UpdateRoutingContextForSession(a1) != 0;
  }

  else
  {
    v96 = 0;
  }

  v98 = v5;
  v7 = MXGetSessionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v94 = v4;
    v93 = [a1 clientName];
    v92 = [a1 audioCategory];
    v91 = [a1 audioMode];
    v8 = CMSUtility_SessionMixesWithOthers(a1);
    v9 = "Mixable";
    if (!v8)
    {
      v9 = "NonMixable";
    }

    v90 = v9;
    ContextString = FigRoutingManagerContextUtilities_GetContextString([a1 routingContextUUID]);
    v11 = "starting";
    if (!a2)
    {
      v11 = "stopping";
    }

    v88 = v11;
    v89 = ContextString;
    CurrentAudioDestination = CMSUtility_GetCurrentAudioDestination(a1);
    if (CMSMUtility_IsInputAllowedForCategory([a1 audioCategory]))
    {
      v13 = " and input VAD: ";
    }

    else
    {
      v13 = "";
    }

    v95 = v6;
    v97 = a2;
    if (CMSMUtility_IsInputAllowedForCategory([a1 audioCategory]))
    {
      CurrentInputVADUID = CMSUtility_GetCurrentInputVADUID(a1);
    }

    else
    {
      CurrentInputVADUID = &stru_1F2890CF0;
    }

    if (CMSMDeviceState_RingerIsOn(1))
    {
      v15 = "not silenced";
    }

    else
    {
      v15 = "silenced";
    }

    if ([a1 silentMuted])
    {
      v16 = "muted";
    }

    else
    {
      v16 = "unmuted";
    }

    v17 = [a1 routingContextUUID];
    if (CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1))
    {
      v18 = "YES";
    }

    else
    {
      v18 = "NO";
    }

    *buf = 136450563;
    *&buf[4] = "-CMSessionMgr-";
    *&buf[12] = 2082;
    *&buf[14] = "cmsSetIsPlaying";
    *&buf[22] = 1024;
    LODWORD(v113) = 6427;
    WORD2(v113) = 2114;
    *(&v113 + 6) = v93;
    HIWORD(v113) = 2114;
    v114 = v92;
    v115 = 2114;
    v116 = v91;
    v117 = 2082;
    v118 = v90;
    v119 = 2114;
    v120 = v89;
    v121 = 2082;
    v122 = v88;
    v123 = 2114;
    v124 = CurrentAudioDestination;
    v125 = 2082;
    v126 = v13;
    v127 = 2114;
    v128 = CurrentInputVADUID;
    v129 = 2082;
    v130 = v15;
    v131 = 2082;
    v132 = v16;
    v133 = 2113;
    v134 = v17;
    v135 = 2082;
    v136 = v18;
    v137 = 1024;
    v138 = [a1 isPlayingOutput];
    v139 = 1024;
    v140 = [a1 isSharedAVAudioSessionInstance];
    _os_log_impl(&dword_1B17A2000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i '%{public}@' with [%{public}@/%{public}@] [%{public}s] [%{public}@] %{public}s playing to output VAD: %{public}@%{public}s%{public}@. Ringer switch state: Device is %{public}s, Session is %{public}s. RoutingContextUUID=%{private}@ NowPlayingApp:%{public}s IsPlayingOutput:%{BOOL}u IsSharedAVAudioSessionInstance:%{BOOL}u", buf, 0xAAu);
    v6 = v95;
    a2 = v97;
    v4 = v94;
  }

  if ([a1 routeSharingPolicy] == 1 || objc_msgSend(a1, "routeSharingPolicy") == 3 || FigRoutingManagerContextUtilities_GetContextType(objc_msgSend(a1, "routingContextUUID")) == 4)
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointNames([a1 routingContextUUID], &cf);
    if (dword_1EB75DE40)
    {
      *v103 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (!a2)
  {
    v24 = [objc_msgSend(a1 "ID")];
    [a1 setWasInterruptedByNowPlayingApp:0];
    [a1 setWaitingToResumeWhenDeviceUnlocksOrInForeground:0];
    if ((CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocal() || CMSM_IDSConnection_IsSharedAudioRouteConnectedToRemote()) && CMSM_IDSConnection_IsNearbyPairedDevicePresent())
    {
      CMSM_IDSClient_NotifyRemote_LocalIsPlayingDone(a1);
    }

    CMSUtility_SendSessionVolumeToAudioStatistics(a1, 0, v6);
    [objc_msgSend(MEMORY[0x1E695DF00] "now")];
    v26 = v25;
    v27 = [a1 deactivateTimerDelay];
    v28 = MXGetSerialQueue();
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __cmsSetIsPlaying_block_invoke;
    v100[3] = &__block_descriptor_48_e5_v8__0l;
    v100[4] = v24;
    v100[5] = v26;
    [a1 setSessionDeactivateTimer:{MXDispatchUtilityCreateOneShotTimer(v27, "cmsSetIsPlaying", "CMSessionManager.m", 6671, 0, 0, v28, v100, 0, 0)}];
    [a1 setIsPlayingStopTime:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];
    [a1 setIsPlaying:0];
    v29 = [a1 assertionAuditTimerDelay];
    v30 = MXGetSerialQueue();
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __cmsSetIsPlaying_block_invoke_2;
    v99[3] = &__block_descriptor_40_e5_v8__0l;
    v99[4] = v24;
    [a1 setSessionAssertionAuditTimer:{MXDispatchUtilityCreateOneShotTimer(v29, "cmsSetIsPlaying", "CMSessionManager.m", 6681, 0, 0, v30, v99, 0, 0)}];
    goto LABEL_101;
  }

  if (CMSUtility_IsAllowedToStartPlaying(a1))
  {
    if (v96 | (([a1 isActive] & 1) == 0) && (v20 = MXCoreSessionBeginInterruption_WithSecTaskAndFlags(a1, 0, 2, 0), v20) || (v21 = *MEMORY[0x1E69626C0], FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1)) && CMSUtility_PlaysToCarMainAudio(a1) && (!objc_msgSend(a1, "dontTakeOverHardware") ? (v22 = 2) : (v22 = 8), v20 = cmsBeginInterruptionGuts(a1, 0, v22), v20))
    {
      v23 = v20;
      goto LABEL_161;
    }

    if (-[MXSessionManager isAirPlaySession:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance", v82, v85), "isAirPlaySession:", a1) && ([a1 reporterStarted] & 1) == 0 && !objc_msgSend(a1, "sessionDeactivateTimer"))
    {
      CMSUtility_StartReporterWithAudioStatistics(a1);
    }

    CMSUtility_SendSessionVolumeToAudioStatistics(a1, 1, v6);
    if ([a1 sessionDeactivateTimer])
    {
      dispatch_source_cancel([a1 sessionDeactivateTimer]);
      [a1 setSessionDeactivateTimer:0];
      if (dword_1EB75DE40)
      {
        LODWORD(cf) = 0;
        v103[0] = OS_LOG_TYPE_DEFAULT;
        v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v36 = cf;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v36;
        }

        else
        {
          v37 = v36 & 0xFFFFFFFE;
        }

        if (v37)
        {
          v38 = [a1 clientName];
          *v105 = 136315394;
          *&v105[4] = "cmsSetIsPlaying";
          v106 = 2114;
          v107 = v38;
          LODWORD(v86) = 22;
          v83 = v105;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    if ([a1 sessionAssertionAuditTimer])
    {
      dispatch_source_cancel([a1 sessionAssertionAuditTimer]);
      [a1 setSessionAssertionAuditTimer:0];
    }

    [a1 setIsPlayingStartTime:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];
    [a1 setIsPlaying:1];
    if (CMSUtility_IsAllowedToFadeInTemporarily(a1))
    {
      CMSMUtility_PostNotifyStyleFadeInAppliedForPlaybackHandoff();
    }

    CMSUtility_RouteToPreferredRouteIfRequired(a1, 0, 3);
    if ((CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocal() || CMSM_IDSConnection_IsSharedAudioRouteConnectedToRemote()) && CMSM_IDSConnection_IsNearbyPairedDevicePresent())
    {
      CMSM_IDSClient_NotifyRemote_LocalIsPlayingStart(a1);
    }

    cmsmUpdateFakeSharedAudioRouteAsPicked(0, 0, 0, 1);
    if (CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1))
    {
      cmsmUpdateInEarBasedPlaybackState(0, 0, 1);
    }

    cmsTryToTakeControl(a1);
    [+[MXSessionManager sharedInstance](MXSessionManager duckSessionIfDuckerIsActive:"duckSessionIfDuckerIsActive:", a1];
    v39 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
    if (!CMSMDeviceState_IsHomePodHub() && CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1) && [objc_msgSend(a1 "clientPID")] != v39)
    {
      v59 = CMSMNP_CopyNowPlayingAppSession();
      if (v59 && (IsContextSystemMusicAndIndependent = FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent([a1 routingContextUUID]), IsContextSystemMusicAndIndependent != FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(objc_msgSend(v59, "routingContextUUID"))) && FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(objc_msgSend(v59, "routingContextUUID")) == 1)
      {
        if (dword_1EB75DE40)
        {
          LODWORD(cf) = 0;
          v103[0] = OS_LOG_TYPE_DEFAULT;
          v61 = &qword_1EB75D000;
          v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v63 = cf;
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            v64 = v63;
          }

          else
          {
            v64 = v63 & 0xFFFFFFFE;
          }

          if (v64)
          {
            v65 = [a1 clientName];
            v66 = [objc_msgSend(a1 "clientPID")];
            v67 = [v59 clientName];
            *v105 = 136315906;
            *&v105[4] = "cmsSetIsPlaying";
            v106 = 2114;
            v107 = v65;
            v61 = &qword_1EB75D000;
            v108 = 1024;
            v109 = v66;
            v110 = 2114;
            v111 = v67;
            LODWORD(v87) = 38;
            v84 = v105;
            _os_log_send_and_compose_impl();
          }

          v81 = v61[455];
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else if (CMSNP_IsCurrentNowPlayingSessionAirPlayingLongFormMedia() && !CMSUtility_IsSessionWithPIDAllowedToInterruptCurrentlyAirPlayingNowPlayingSession([objc_msgSend(a1 "clientPID")]))
      {
        if (dword_1EB75DE40)
        {
          LODWORD(cf) = 0;
          v103[0] = OS_LOG_TYPE_DEFAULT;
          v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v78 = cf;
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            v79 = v78;
          }

          else
          {
            v79 = v78 & 0xFFFFFFFE;
          }

          if (v79)
          {
            v80 = [a1 clientName];
            *v105 = 136315394;
            *&v105[4] = "cmsSetIsPlaying";
            v106 = 2114;
            v107 = v80;
            LODWORD(v87) = 22;
            v84 = v105;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        if (dword_1EB75DE40)
        {
          LODWORD(cf) = 0;
          v103[0] = OS_LOG_TYPE_DEFAULT;
          v71 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v72 = cf;
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            v73 = v72;
          }

          else
          {
            v73 = v72 & 0xFFFFFFFE;
          }

          if (v73)
          {
            v74 = [a1 clientName];
            v75 = [objc_msgSend(a1 "clientPID")];
            *v105 = 136315650;
            *&v105[4] = "cmsSetIsPlaying";
            v106 = 2114;
            v107 = v74;
            v108 = 1024;
            v109 = v75;
            LODWORD(v87) = 28;
            v84 = v105;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        -[MXNowPlayingAppManager updateNowPlayingApp:session:reasonForUpdate:](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance", v84, v87), "updateNowPlayingApp:session:reasonForUpdate:", [objc_msgSend(a1 "clientPID")], 0, 6);
      }
    }

    v40 = [objc_msgSend(a1 clientPID];
    if (v40 == -[MXNowPlayingAppManager nowPlayingAppPID](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "nowPlayingAppPID") && (([a1 isLongFormVideo] & 1) != 0 || CMSUtility_IsSessionAllowedToInterruptCurrentlyAirPlayingNowPlayingSession(a1)))
    {
      v41 = CMSMUtility_CopySystemAudioRoutingContextUUID();
      *v105 = 0;
      FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v41, 0, v105);
      v42 = *MEMORY[0x1E69626A8];
      if (FigRoutingManagerIsEndpointOfType(*v105))
      {
        cf = *MEMORY[0x1E695E4C0];
        v43 = *MEMORY[0x1E695E480];
        CMBaseObject = FigEndpointGetCMBaseObject();
        v45 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v45)
        {
          v45(CMBaseObject, *MEMORY[0x1E6962190], v43, &cf);
        }

        *type = 0;
        *v103 = 0;
        v46 = FigEndpointGetCMBaseObject();
        v47 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v47)
        {
          v47(v46, *MEMORY[0x1E6961F58], v43, v103);
          if (*v103)
          {
            CFNumberGetValue(*v103, kCFNumberSInt64Type, type);
          }
        }

        v101 = 0;
        FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&v101);
        if (cf == *MEMORY[0x1E695E4D0] && FigRoutingContextUtilities_IsFollowingAnotherContext(v101) && (type[0] & 1) == 0)
        {
          if (v101)
          {
            CFRetain(v101);
          }

          if (*v105)
          {
            CFRetain(*v105);
          }

          v76 = MXGetSerialQueue();
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __cmsChangeGroupableAirPlayRouteFromSystemAudioToSystemMusic_block_invoke;
          *&v113 = &__block_descriptor_48_e5_v8__0l;
          *(&v113 + 1) = *v105;
          v114 = v101;
          MXDispatchAsync("cmsChangeGroupableAirPlayRouteFromSystemAudioToSystemMusic", "CMSessionManager.m", 6298, 0, 0, v76, buf);
        }

        if (*v103)
        {
          CFRelease(*v103);
          *v103 = 0;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v101)
        {
          CFRelease(v101);
        }
      }

      if (*v105)
      {
        CFRelease(*v105);
        *v105 = 0;
      }

      if (v41)
      {
        CFRelease(v41);
      }
    }

    v48 = [+[MXSessionManager sharedInstance](MXSessionManager isAirPlaySession:"isAirPlaySession:", a1];
    if (!v48)
    {
      FigRoutingContextUtilities_LogCurrentState(v48, v49);
    }

    CMSMUtility_InformAirPlayOfAudioModeIfNecessary([a1 routingContextUUID]);
LABEL_101:
    CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange();
    CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded();
    v50 = [objc_msgSend(a1 "clientPID")];
    if (v50 == [+[MXNowPlayingAppManager nowPlayingAppPID]&& CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1) sharedInstance]
    {
      if (([a1 isPlaying] & 1) == 0)
      {
        v51 = +[MXNowPlayingAppManager sharedInstance];
        -[MXNowPlayingAppManager setNowPlayingAppStopTime:](v51, "setNowPlayingAppStopTime:", [MEMORY[0x1E695DF00] date]);
      }

      v52 = CMSUtility_CopyBundleID(a1);
      -[MXAppProtectionManager handlePlayingStateChangedForNowPlayingApp:isCurrentlyPlaying:](+[MXAppProtectionManager sharedInstance](MXAppProtectionManager, "sharedInstance"), "handlePlayingStateChangedForNowPlayingApp:isCurrentlyPlaying:", v52, [a1 isPlaying]);
    }

    byte_1EB75E138 = CMSMUtility_SomeClientIsPlaying();
    if (sFigClusterSynchronizationManager_ClientIsPlaying)
    {
      sFigClusterSynchronizationManager_ClientIsPlaying();
    }

    v53 = CMSMUtility_CopyCurrentRouteTypes();
    v54 = byte_1EB75E138;
    if (!byte_1EB75E138)
    {
      if (FigCFArrayContainsValue())
      {
        v55 = dispatch_time(0, 2000000000);
        v56 = MXGetSerialQueue();
        dispatch_after(v55, v56, &__block_literal_global_314);
LABEL_112:
        if (v53)
        {
          CFRelease(v53);
        }

        CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange();
        [a1 audioMode];
        if (FigCFEqual())
        {
          CMSMNotificationUtility_PostVoicePromptStyleDidChange();
        }

        if (!CMSUtility_GetIsEligibleForBTSmartRoutingConsideration(a1))
        {
          goto LABEL_146;
        }

        FigPredictedRouting_UpdatePredictedRoute(7);
        if (![a1 isPlaying])
        {
          FigPredictedRouting_UnmuteSessionIfMutedByPreemptivePortChange();
LABEL_146:
          if (CMSUtility_IsAudioCategoryPrimary(a1))
          {
            CMSMNotificationUtility_PostSomePrimaryAudioCategoryIsPlayingDidChange(a1);
            CMSMNotificationUtility_PostSomeOtherPrimaryAudioCategoryIsPlayingDidChange(a1);
          }

          [+[MXSessionManager sharedInstance](MXSessionManager updateSomeAirPlayCapableVideoClientIsActive];
          if ([a1 isLongFormVideo])
          {
            CMSMUtility_UpdateSomeLongFormVideoClientIsPlayingOverAirPlayVideo();
            CMSMUtility_UpdateSomeLongFormVideoClientIsPlaying();
            CMSMNotificationUtility_PostVideoStreamsDidChange();
          }

          CMScreenHandleIdleEvent(101, v98, [a1 isPlaying]);
          CMSMSleep_HandleIdleSleep(a1, a2);
          if ((v4 & 2) == 0 && ([a1 currentlyControllingFlags] & 2) != 0)
          {
            cmsmUpdatePickableRouteDescriptionLists(1);
          }

          CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded(0, 0);
          if (a2)
          {
            CMSMSleep_FetchPlaybackProcessAssertion(a1);
          }

          else if (CMSUtility_HasBackgroundEntitlement(a1) && [a1 applicationState] == 4)
          {
            CMSMSleep_ExtendPlaybackProcessAssertion(a1);
          }

          else
          {
            CMSMSleep_ReleasePlaybackProcessAssertion(a1);
          }

          [+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager refreshAssertions];
          goto LABEL_160;
        }

        if (!MX_FeatureFlags_IsPreemptiveConnectedBannerEnabled())
        {
          goto LABEL_141;
        }

        if ([a1 isMediaSession])
        {
          v57 = 1;
        }

        else
        {
          if (![a1 hasAudioCategory:@"PlayAndRecord"] || !objc_msgSend(a1, "hasAudioMode:", @"Default"))
          {
            CMSUtility_IsSessionOnlyPlayingLocally(a1);
            goto LABEL_141;
          }

          v57 = [a1 isPlayingOutput];
        }

        IsSessionOnlyPlayingLocally = CMSUtility_IsSessionOnlyPlayingLocally(a1);
        if (v57 && (IsSessionOnlyPlayingLocally & 1) != 0)
        {
LABEL_145:
          FigPredictedRouting_MuteSessionIfPreemptivePortChanged(a1);
          goto LABEL_146;
        }

LABEL_141:
        if (!MX_FeatureFlags_IsCorianderEnabled())
        {
          goto LABEL_146;
        }

        if (CMSMDeviceState_IsHomePodHub())
        {
          goto LABEL_146;
        }

        if (!CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1))
        {
          goto LABEL_146;
        }

        v68 = [objc_msgSend(a1 "clientPID")];
        if (v68 != [+[MXNowPlayingAppManager nowPlayingAppPID] sharedInstance]
        {
          goto LABEL_146;
        }

        goto LABEL_145;
      }

      v54 = byte_1EB75E138;
    }

    CMSMNotificationUtility_PostSomeClientIsPlayingDidChange(v54);
    goto LABEL_112;
  }

  LODWORD(cf) = 0;
  v103[0] = OS_LOG_TYPE_DEFAULT;
  v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v32 = cf;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v33 = v32;
  }

  else
  {
    v33 = v32 & 0xFFFFFFFE;
  }

  if (v33)
  {
    v34 = [a1 clientName];
    *v105 = 136315394;
    *&v105[4] = "cmsSetIsPlaying";
    v106 = 2114;
    v107 = v34;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v23 = 4294950316;
LABEL_161:
  if (v6)
  {
    CFRelease(v6);
  }

  CMSUtility_UpdateBTLowLatencyMode();
  cmsUpdateMuteStatus(a1);
  CMSMVAUtility_UpdateSessionInfoAndReporterIDsOnVA(a1, 0);
  v69 = *MEMORY[0x1E69E9840];
  return v23;
}

id cmsCopyOverrideRoute(id result)
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(result "overridePortsList")];
    if (v2 < 1)
    {
      return 0;
    }

    else
    {
      v3 = v2;
      v4 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex([v1 overridePortsList], v4);
        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        if (!vaeIsPortAnInputPort(valuePtr))
        {
          break;
        }

        if (v3 == ++v4)
        {
          return 0;
        }
      }

      PortTypeFromPortID = vaeGetPortTypeFromPortID(valuePtr);
      return CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(PortTypeFromPortID);
    }
  }

  return result;
}

uint64_t remoteSystemController_PerformVolumeOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float *a8, float a9, float a10, float a11, BOOL *a12, uint64_t a13, uint64_t a14, char a15)
{
  v20 = OUTLINED_FUNCTION_1_25(a1, a2, a3, a4, a5, a6, a7, a8, v32, v33, xdict, v36);
  v21 = &qword_1ED6D3000;
  if (v20)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_9_0();
  v20 = FigXPCCreateBasicMessage();
  if (v20)
  {
    goto LABEL_27;
  }

  [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v22 = FigXPCMessageSetCFNumber();
  if (v22)
  {
    goto LABEL_30;
  }

  [MEMORY[0x1E696AD98] numberWithDouble:a9];
  v22 = FigXPCMessageSetCFNumber();
  if (v22)
  {
    goto LABEL_30;
  }

  v22 = FigXPCMessageSetCFString();
  if (v22)
  {
    goto LABEL_30;
  }

  v22 = FigXPCMessageSetCFString();
  if (v22)
  {
    goto LABEL_30;
  }

  v22 = FigXPCMessageSetCFString();
  if (v22)
  {
    goto LABEL_30;
  }

  v22 = FigXPCMessageSetCFString();
  if (v22 || (v22 = FigXPCMessageSetCFString(), v22) || (*&v23 = a10, [MEMORY[0x1E696AD98] numberWithFloat:v23], v22 = FigXPCMessageSetCFNumber(), v22) || (*&v24 = a11, objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v24), v22 = FigXPCMessageSetCFNumber(), v22))
  {
LABEL_30:
    v29 = v22;
    v21 = &qword_1ED6D3000;
    goto LABEL_29;
  }

  v25 = (a15 ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
  v26 = *v25;
  v20 = FigXPCMessageSetCFBoolean();
  v21 = &qword_1ED6D3000;
  if (v20)
  {
    goto LABEL_27;
  }

  v20 = OUTLINED_FUNCTION_6_1();
  if (v20)
  {
    goto LABEL_27;
  }

  if (a8)
  {
    v27 = xpc_dictionary_get_double(xdicta, kFigSystemControllerXPCMsgParam_Volume);
    *a8 = v27;
  }

  if (a12)
  {
    *a12 = xpc_dictionary_get_BOOL(xdicta, kFigSystemControllerXPCMsgParam_Muted);
  }

  if (!a13)
  {
    if (!a14)
    {
      v29 = 0;
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v28 = FigXPCMessageCopyCFString();
  v29 = v28;
  if (a14 && !v28)
  {
LABEL_26:
    v20 = FigXPCMessageCopyCFString();
LABEL_27:
    v29 = v20;
  }

LABEL_29:
  FigXPCRelease();
  FigXPCRelease();
  v30 = v21[20];
  FigXPCRemoteClientKillServerOnTimeout();
  return v29;
}

const void *vaemCopyVADOutputPortsForRouteConfiguration(int a1, int a2, const void *a3, const void *a4, int a5)
{
  v5 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(a1, a2, a3, a4, a5, 0, 0x1F2893B50);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 != CFArrayGetTypeID())
    {
      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

BOOL PVMIsCurrentDeviceRoute(uint64_t a1)
{
  if (PVMInitialize())
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    v3 = @"Speaker";
    *(a1 + 8) = @"Speaker";
  }

  Value = v3;
  if (*(sStorage + 200))
  {
    Value = CFDictionaryGetValue(*(sStorage + 200), v3);
  }

  if (Value)
  {
    v5 = Value;
  }

  else
  {
    v5 = v3;
  }

  pvmGetMappedRouteIdentifier(*(a1 + 24), v5);
  if (*(a1 + 16) && ([(__CFString *)v5 hasPrefix:@"HeadphonesBT"]& 1) == 0)
  {
    [(__CFString *)v5 hasPrefix:@"HeadsetBT"];
  }

  v6 = *sStorage;
  FigSimpleMutexLock();
  pvmAssureCurrentCategoryAndDeviceRoute();
  v7 = *(sStorage + 272);
  if (FigCFEqual() && (v8 = *(sStorage + 288), FigCFEqual()))
  {
    v9 = *(sStorage + 280);
    v2 = FigCFEqual() != 0;
  }

  else
  {
    v2 = 0;
  }

  v10 = *sStorage;
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t PVMInitialize()
{
  if (PVMInitialize_sInitializeVolumeManagerOnce != -1)
  {
    PVMInitialize_cold_1();
  }

  if (sStorage)
  {
    return 0;
  }

  return FigSignalErrorAtGM();
}

float pvmGetCurrentVolumeLimitForRoute(void *a1, const void *a2)
{
  v4 = a1[1];
  v5 = a1[3];
  if (FigCFEqual() && FigCFEqual())
  {
    v6 = *(sStorage + 184);
    if (v6)
    {
      CFDictionaryGetValue(v6, a2);
    }

    if (FigCFEqual() && *(sStorage + 92))
    {
      return *(sStorage + 96);
    }
  }

  v8 = a1[1];
  v9 = a1[2];
  if (!FigCFEqual() || FigCFEqual())
  {
    return 1.0;
  }

  if (!(CelesteIsRegionSpecificVolumeLimitEnabled() | g100dBVolumeLimitEnabled))
  {
    return *(sStorage + 88);
  }

  v11 = a1[2];
  v7 = 0.9425;
  if (FigCFEqual() || FigCFEqual())
  {
    return v7;
  }

  if (FigCFEqual())
  {
    return 1.0;
  }

  v7 = 1.0;
  if (FigCFEqual())
  {
    return v7;
  }

  return pvmGet100dBVolumeLimit();
}

void *PVMGetMappedCategory(void *key)
{
  v2 = *(sStorage + 184);
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, key);
    if (Value)
    {
      return Value;
    }
  }

  return key;
}

uint64_t _MXSessionSetProperty(void *a1, uint64_t a2, uint64_t a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    if ([a1 isMemberOfClass:objc_opt_class()])
    {
      v7 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = ___MXSessionSetProperty_block_invoke;
      v12[3] = &unk_1E7AE7A48;
      v12[4] = &v13;
      v12[5] = a1;
      v12[6] = a2;
      v12[7] = a3;
      MXDispatchAsyncAndWait("_MXSessionSetProperty", "MXSession_CInterfaceCommon.m", 443, 0, 0, v7, v12);
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      if (![a1 isMemberOfClass:objc_opt_class()] || MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled())
      {
        v9 = [a1 _setPropertyForKey:a2 value:a3];
        *(v14 + 6) = v9;
      }

      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_MXSessionSetProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(v14 + 6);
  }

  else
  {
    v10 = FigSignalErrorAtGM();
    *(v14 + 6) = v10;
  }

  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_1B17F0C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 OUTLINED_FUNCTION_13_0()
{
  v2 = *(v1 + 4040);
  result = *v0;
  v4 = v0[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_13_3(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  xpc_dictionary_set_BOOL(v13, a2, a13 != 0);
}

BOOL OUTLINED_FUNCTION_13_6(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __int16 a45, char a46, os_log_type_t type, int a48)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a9 = 0;
  a10 = 0;

  return remoteSystemController_getObjectID(a1, &a9);
}

uint64_t MXCoreSessionBeginInterruption_WithSecTaskAndFlags(void *a1, __SecTask *a2, uint64_t a3, int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a4 || ([a1 isActive] & 1) != 0 || CMSUtility_HasEntitlementForInterruptions(a1, a2))
    {
      [a1 audioCategory];
      if (FigCFEqual() || [a1 isActive] && objc_msgSend(a1, "isPlaying") && !objc_msgSend(a1, "isTheAssistant"))
      {
        v7 = 0;
      }

      else
      {
        if (!CMSUtility_IsAllowedToStartPlaying(a1))
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v7 = 4294950316;
LABEL_27:
          CMSMVAUtility_UpdateSessionInfoAndReporterIDsOnVA(a1, 0);
          goto LABEL_28;
        }

        CMSMVAUtility_UpdateSessionInfoAndReporterIDsOnVA(a1, 1);
        if ((a3 & 4) != 0)
        {
          v10 = CMSMUtility_CopyCurrentRouteTypes();
          IsPlaying = CMSMUtility_SomeClientIsPlaying();
          IsDisruptiveWhenGoingActive = CMSUtility_IsDisruptiveWhenGoingActive(a1);
          v13 = *MEMORY[0x1E69626C0];
          if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1))
          {
            v14 = FigCFArrayContainsValue() == 0;
          }

          else
          {
            v14 = 0;
          }

          IsRemoteInterruptionRequired = CMSUtility_IsRemoteInterruptionRequired(a1);
          v7 = 4294954309;
          if (!IsPlaying && !IsDisruptiveWhenGoingActive && !v14 && !IsRemoteInterruptionRequired)
          {
            v7 = cmsBeginInterruptionGuts(a1, 0, a3);
          }

          if (v10)
          {
            CFRelease(v10);
          }
        }

        else
        {
          v7 = cmsBeginInterruptionGuts(a1, 0, a3);
        }

        if (v7)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v7 = 4294954308;
    }
  }

  else
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v7 = 4294954315;
  }

LABEL_28:
  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t systemController_PerformVolumeOperation(float a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, char a14)
{
  v29 = -1;
  v24 = *CMBaseObjectGetDerivedStorage();
  LOBYTE(v28) = a14 != 0;
  *&v25 = a2;
  *&v26 = a3;
  return [v24 performVolumeOperation:a5 volume:a6 category:a7 mode:a8 routeName:a9 routeDeviceIdentifier:a10 routeSubtype:COERCE_DOUBLE(__PAIR64__(DWORD1(a12) rampUpDuration:LODWORD(a1))) rampDownDuration:v25 outVolume:v26 outSequenceNumber:a11 outMuted:&v29 outCategoryCopy:a12 outModeCopy:a13 retainFullMute:v28];
}

uint64_t MXSMPerformVolumeOperation(unsigned int a1, __CFString *a2, const void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t pid, float *a8, float a9, float a10, float a11, _BYTE *a12, CFTypeRef *a13, uint64_t *a14, unsigned __int8 a15, char a16)
{
  *&v93 = a5;
  *(&v93 + 1) = a4;
  v116 = *MEMORY[0x1E69E9840];
  memset(buffer, 0, sizeof(buffer));
  v97 = a1;
  if (pid < 1)
  {
    v23 = a1;
    v22 = 0;
    goto LABEL_5;
  }

  v22 = proc_name(pid, buffer, 0x20u);
  v23 = v97;
  if ((v22 & 0x80000000) == 0)
  {
LABEL_5:
    buffer[v22] = 0;
  }

  v24 = a11 != 0.0 && a10 != 0.0;
  if ((a10 != 0.0) == (a11 != 0.0))
  {
    v92 = v24;
    VolumeSequenceNumber = 0;
    if (v23 <= 0xE && ((1 << v23) & 0x5836) != 0)
    {
      if (dword_1EB75DE40)
      {
        LODWORD(v104[0]) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (HIBYTE(word_1EB75E0E0))
      {
        cmsmUpdateEnableSharedAudioRouteSyntheticMute(0, 1, 0, 0, 0, 0);
LABEL_245:
        result = 0;
        goto LABEL_246;
      }

      VolumeSequenceNumber = CMSMUtility_GetVolumeSequenceNumber();
      v23 = v97;
    }

    if (dword_1EB75E118)
    {
      goto LABEL_245;
    }

    if (a2)
    {
      v29 = 0;
    }

    else
    {
      v29 = v23 == 13;
    }

    if (v29)
    {
      v30 = @"SoloAmbientSound";
    }

    else
    {
      v30 = a2;
    }

    v31 = [+[MXSessionManager getUncustomizedCategory:v84], "getUncustomizedCategory:", v30];
    cf = 0;
    if (CMSMVAUtility_IsAdditiveRoutingEnabled() && (val = [+[MXAdditiveRoutingManager copyActiveVoiceOverSessionPlayingToOnDemandVAD] sharedInstance]!= 0)
    {
      if (dword_1EB75DE40)
      {
        LODWORD(v104[0]) = 0;
        v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      objc_initWeak(&location, val);
      [+[MXSessionManager sharedInstance](MXSessionManager mxCoreSessionListRemoveSession:"mxCoreSessionListRemoveSession:", objc_loadWeak(&location)];
      [+[MXSessionManager sharedInstance](MXSessionManager mxCoreSessionListAddSession:"mxCoreSessionListAddSession:", objc_loadWeak(&location)];
      objc_destroyWeak(&location);
    }

    else
    {
      val = 0;
    }

    VolumeButtonClient = CMSessionMgrFindVolumeButtonClient(v97);
    v102 = 0;
    v101 = 0;
    v100 = 0.0;
    *type = 0u;
    v108 = 0u;
    IsAdditiveRoutingEnabled = CMSMVAUtility_IsAdditiveRoutingEnabled();
    v35 = 1;
    if (val && IsAdditiveRoutingEnabled)
    {
      v36 = PVMGetMappedCategory([VolumeButtonClient audioCategory]);
      if (([VolumeButtonClient isEqual:val] & 1) != 0 || !objc_msgSend(v36, "isEqualToString:", @"Audio/Video"))
      {
        v35 = 1;
      }

      else
      {
        if ([objc_msgSend(val "clientPID")] < 1)
        {
          v37 = 0;
        }

        else
        {
          v37 = proc_name([objc_msgSend(val "clientPID")], type, 0x20u);
          if (v37 < 0)
          {
            v35 = 0;
            goto LABEL_41;
          }
        }

        v35 = 0;
        type[v37] = OS_LOG_TYPE_DEFAULT;
      }
    }

LABEL_41:
    if (v97 == 1)
    {
      PVMCopyCurrentCategoryAndMode(&cf, 0);
      LODWORD(location) = 1031798784;
      v38 = +[MXSessionManager sharedInstance];
      [(MXSessionManager *)v38 getVolumeButtonDelta:cf outVolumeDelta:&location];
      if (a9 >= 0.0)
      {
        a9 = *&location;
      }

      else
      {
        a9 = -*&location;
      }
    }

    if ([VolumeButtonClient isActive])
    {
      if (VolumeButtonClient && ![VolumeButtonClient currentlyControllingFlags] && objc_msgSend(VolumeButtonClient, "hwControlFlags"))
      {
        v39 = CMSMUtility_CopyMatchingSessions(0, CMSUtilityPredicate_HasSameAudioCategory, @"VoiceOver");
        v40 = v39;
        if (v39)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v39, 0);
          if (ValueAtIndex)
          {
            if (([ValueAtIndex currentlyControllingFlags] & 2) != 0)
            {
              [VolumeButtonClient audioCategory];
              if (FigCFEqual())
              {
                [VolumeButtonClient isPlaying];
              }
            }
          }

          CFRelease(v40);
        }

        if (v97 <= 0xE && ((1 << v97) & 0x5836) != 0)
        {
          cmsTryToTakeControl(VolumeButtonClient);
        }
      }

      if (CMSMUtility_ShouldChangeMainVolume(VolumeButtonClient, v97, v31, a3))
      {
        vaemUnmuteFullMuteIfMuted();
        CMSMUtility_ChangeMainVolumeForSession(VolumeButtonClient, a9, pid, buffer, v97, &v100);
        v42 = @"Audio/Video";
        if (@"Audio/Video")
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }

      v104[0] = 0;
      PVMCopyCurrentCategoryAndMode(&cf, v104);
      if (!PVMGetEnabled())
      {
        if (!CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote() && v97 <= 0xE && ((1 << v97) & 0x5836) != 0)
        {
          cmsTryToTakeControl(VolumeButtonClient);
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v104[0])
        {
          CFRelease(v104[0]);
          v104[0] = 0;
        }

        PVMCopyCurrentCategoryAndMode(&cf, v104);
      }

      if (!v92)
      {
        MXSMCancelAnyInProgressVolumeRampIfNeeded(cf, v104[0], v97);
      }

      if (MX_FeatureFlags_IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled() && v97 <= 0xE && ((1 << v97) & 0x5836) != 0)
      {
        v45 = v97 - 11 >= 2 ? 0 : v31;
        if (cmsmShouldUpdateMostRecentSynchronizedVolumeActivityTimestamp(v45))
        {
          v115 = 0;
          location = 0u;
          v114 = 0u;
          *&v109 = 0;
          *(&v109 + 1) = a3;
          v110 = v93;
          v111 = 0;
          if (isRouteInfoInVolumeOperationCurrent(&v109, &location))
          {
            UpTimeNanoseconds = FigGetUpTimeNanoseconds();
            v109 = location;
            v110 = v114;
            v111 = v115;
            PVMSetMostRecentSynchronizedVolumeActivityTimestamp(&v109, UpTimeNanoseconds);
            if (*(&location + 1))
            {
              CFRelease(*(&location + 1));
              *(&location + 1) = 0;
            }

            if (*(&v114 + 1))
            {
              CFRelease(*(&v114 + 1));
              *(&v114 + 1) = 0;
            }

            if (v114)
            {
              CFRelease(v114);
            }
          }
        }
      }

      if (CMSMVAUtility_IsAdditiveRoutingEnabled())
      {
        v43 = v35;
      }

      else
      {
        v43 = 1;
      }

      if ((v43 & 1) == 0)
      {
        v99 = [val audioCategory];
        *v98 = [val audioMode];
        if (v97 <= 0xE && ((1 << v97) & 0x5836) != 0)
        {
          [+[MXSessionManager sharedInstance](MXSessionManager setVoiceOverVADVolumeNeedsUpdate:"setVoiceOverVADVolumeNeedsUpdate:", 1];
        }

        else
        {
          if (dword_1EB75DE40)
          {
            v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          cmsmGetAndSetVolumePreferencesForActiveVolumeClient(val, VolumeSequenceNumber, v97, 0.0, 0.0, a9, [objc_msgSend(val clientPID], type, &v99, v98, v31, a3, *(&v93 + 1), v93, 0, &v102, &v101, &v100, &v102 + 1, a12, a15, a16);
          VolumeSequenceNumber = CMSMUtility_GetVolumeSequenceNumber();
        }
      }

      cmsmGetAndSetVolumePreferencesForActiveVolumeClient(VolumeButtonClient, VolumeSequenceNumber, v97, a10, a11, a9, pid, buffer, &cf, v104, v31, a3, *(&v93 + 1), v93, a6, &v102, &v101, &v100, &v102 + 1, a12, a15, a16);
      goto LABEL_183;
    }

    if (VolumeButtonClient)
    {
      if (CMSMUtility_ShouldChangeMainVolume(VolumeButtonClient, v97, v31, a3))
      {
        vaemUnmuteFullMuteIfMuted();
        CMSMUtility_ChangeMainVolumeForSession(VolumeButtonClient, a9, pid, buffer, v97, &v100);
        v42 = @"Audio/Video";
        if (@"Audio/Video")
        {
LABEL_64:
          v42 = CFRetain(@"Audio/Video");
        }

LABEL_65:
        cf = v42;
        v43 = 1;
        v101 = 1;
        goto LABEL_183;
      }

      if (CMSMVAUtility_IsAdditiveRoutingEnabled())
      {
        v43 = v35;
      }

      else
      {
        v43 = 1;
      }

      if ((v43 & 1) == 0)
      {
        v104[0] = [val audioCategory];
        v99 = [val audioMode];
        if (v97 <= 0xE && ((1 << v97) & 0x5836) != 0)
        {
          [+[MXSessionManager sharedInstance](MXSessionManager setVoiceOverVADVolumeNeedsUpdate:"setVoiceOverVADVolumeNeedsUpdate:", 1];
        }

        if (dword_1EB75DE40)
        {
          *v98 = 0;
          v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        cmsmGetAndSetVolumePreferencesForActiveVolumeClient(val, VolumeSequenceNumber, v97, 0.0, 0.0, a9, [objc_msgSend(val clientPID], type, v104, &v99, v31, a3, *(&v93 + 1), v93, 0, &v102, &v101, &v100, &v102 + 1, a12, a15, a16);
        VolumeSequenceNumber = CMSMUtility_GetVolumeSequenceNumber();
      }

      if (!v92)
      {
        MXSMCancelAnyInProgressVolumeRampIfNeeded(cf, 0, v97);
      }

      cmsmGetAndSetVolumePreferencesForNonActiveVolumeClient(VolumeButtonClient, VolumeSequenceNumber, v97, a9, pid, buffer, &cf, v31, &v102, &v101, &v100, &v102 + 1, a12, a15, a16, a6);
LABEL_183:
      v64 = cf;
      if (a15)
      {
        v65 = 1;
        if (!cf)
        {
          goto LABEL_196;
        }
      }

      else
      {
        v66 = FigCFEqual();
        v65 = v97 == 12 && v66 != 0;
        v64 = cf;
        if (!cf)
        {
          goto LABEL_196;
        }
      }

      v68 = PVMGetMappedCategory(v64);
      if (v68)
      {
        v68 = CFRetain(v68);
      }

      cf = v68;
      CFRelease(v64);
LABEL_196:
      v69 = !v101 || v65;
      if ((v69 & 1) == 0)
      {
        VolumeNotificationPayload = CMSMNotificationUtility_CreateVolumeNotificationPayload(cf, @"ExplicitVolumeChange", 0, VolumeSequenceNumber, a6, v100);
        CMSMNotificationUtility_PostVolumeDidChangeToVolumeButtonClientsWithPayload(VolumeNotificationPayload);
        CMSMNotificationUtility_PostVolumeDidChangeToAVSystemControllersWithPayload(VolumeNotificationPayload);
        if (VolumeNotificationPayload)
        {
          CFRelease(VolumeNotificationPayload);
        }
      }

      if (v102)
      {
        CMSMNotificationUtility_PostUserMutedDidChange(cf, HIBYTE(v102));
      }

      if (v97 <= 0xE && ((1 << v97) & 0x5836) != 0)
      {
        v71 = a6 != 0;
        if (VolumeButtonClient)
        {
          IsPlaying = CMSUtility_GetIsPlaying(VolumeButtonClient);
        }

        else
        {
          IsPlaying = 0;
        }

        if (v31)
        {
          v73 = v31;
        }

        else
        {
          v73 = cf;
        }

        CMSUtility_SendVolumeChangeEventToAudioStatistics(VolumeButtonClient, buffer, v73, a3, IsPlaying, v71, v100);
        if (CMSMVAUtility_IsAdditiveRoutingEnabled())
        {
          v74 = v43;
        }

        else
        {
          v74 = 1;
        }

        if ((v74 & 1) == 0)
        {
          CMSUtility_SendVolumeChangeEventToAudioStatistics(val, type, v73, a3, [val isPlaying], v71, v100);
        }

        if (FigCFEqual())
        {
          MinVolume = CMSystemSoundMgrGetMinVolume(@"DeviceShutdown");
          v76 = v100;
          CMSystemSoundMgrGetMaxVolume(@"DeviceShutdown");
          if (v76 >= v77)
          {
            CMSystemSoundMgrGetMaxVolume(@"DeviceShutdown");
          }

          else
          {
            v78 = v100;
          }

          if (MinVolume <= v78)
          {
            v80 = v100;
            CMSystemSoundMgrGetMaxVolume(@"DeviceShutdown");
            if (v80 >= v81)
            {
              CMSystemSoundMgrGetMaxVolume(@"DeviceShutdown");
            }

            else
            {
              v79 = v100;
            }
          }

          else
          {
            v79 = CMSystemSoundMgrGetMinVolume(@"DeviceShutdown");
          }

          vaemSetBootChimeVolume(v79);
        }

        if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy())
        {
          v82 = a6 != 0;
        }

        else
        {
          v82 = 1;
        }

        if (!v82 && FigCFEqual() && (v97 == 11 || v97 == 1))
        {
          [+[MXSessionManager handleUserIntentToUnmute:v86], "handleUserIntentToUnmute:", v97];
        }
      }

      if (a8)
      {
        *a8 = v100;
      }

      if (a13)
      {
        *a13 = cf;
      }

      else
      {
        if (!cf)
        {
LABEL_242:
          if (a14)
          {
            *a14 = VolumeSequenceNumber;
          }

          goto LABEL_245;
        }

        CFRelease(cf);
      }

      cf = 0;
      goto LABEL_242;
    }

    if (v31)
    {
      v90 = CFRetain(v31);
      cf = v90;
      v44 = v31;
      goto LABEL_120;
    }

    cf = 0;
    v90 = cmsmCopyUpdatedVolumeOperationCategoryForNullDefaultCategory(v97);
    cf = v90;
    switch(v97)
    {
      case 3u:
        v48 = 13;
        break;
      case 2u:
        v48 = 12;
        break;
      case 1u:
        v48 = 11;
        break;
      default:
LABEL_119:
        v44 = v90;
LABEL_120:
        v31 = v44;
        if (v92)
        {
          v49 = a3;
        }

        else
        {
          MXSMCancelAnyInProgressVolumeRampIfNeeded(v90, 0, v97);
          v90 = cf;
          v49 = a3;
          v44 = v31;
        }

        v106 = 0;
        *v104 = 0u;
        *v105 = 0u;
        if (v97 <= 7)
        {
          if (v97 <= 3)
          {
            switch(v97)
            {
              case 1u:
                vaemUnmuteFullMuteIfMuted();
                v115 = 0;
                location = 0u;
                v114 = 0u;
                v54 = PVMGetVolumePreference(v90, 0, &location);
                location = *v104;
                v114 = *v105;
                v115 = v106;
                PVMSetVolumePreference(v90, 0, a6, &location, VolumeSequenceNumber, a15, a9 + v54, 0.0, 0.0);
                location = *v104;
                v114 = *v105;
                v115 = v106;
                v100 = PVMGetVolumePreference(v90, 0, &location);
                v101 = 1;
                MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(1u, a6, v54, v100);
                if (!dword_1EB75DE40)
                {
                  goto LABEL_182;
                }

                break;
              case 2u:
                vaemUnmuteFullMuteIfMuted();
                v115 = 0;
                location = 0u;
                v114 = 0u;
                v57 = PVMGetVolumePreference(v90, 0, &location);
                location = *v104;
                v114 = *v105;
                v115 = v106;
                PVMSetVolumePreference(v90, 0, a6, &location, VolumeSequenceNumber, a15, a9, 0.0, 0.0);
                location = *v104;
                v114 = *v105;
                v115 = v106;
                v100 = PVMGetVolumePreference(v90, 0, &location);
                v101 = 1;
                MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(2u, a6, v57, v100);
                if (!dword_1EB75DE40)
                {
                  goto LABEL_182;
                }

                break;
              case 3u:
                v115 = 0;
                location = 0uLL;
                v114 = 0uLL;
                v50 = PVMGetVolumePreference(v90, 0, &location);
LABEL_142:
                v100 = v50;
                goto LABEL_182;
              default:
                goto LABEL_182;
            }

            LODWORD(v99) = 0;
            v98[0] = OS_LOG_TYPE_DEFAULT;
            v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_182;
          }

          if (v97 != 4)
          {
            if (v97 != 5)
            {
              if (v97 == 6)
              {
                v104[1] = a3;
                *v105 = v93;
                location = *v104;
                v114 = v93;
                v115 = v106;
                v104[0] = PVMGetMappedEndpointType(&location);
                location = *v104;
                v114 = *v105;
                v115 = v106;
                v50 = PVMGetVolumePreference(v90, 0, &location);
                goto LABEL_142;
              }

LABEL_182:
              v43 = 1;
              goto LABEL_183;
            }

            v104[1] = v49;
            *v105 = v93;
            location = *v104;
            v114 = v93;
            v115 = v106;
            v104[0] = PVMGetMappedEndpointType(&location);
            vaemUnmuteFullMuteIfMuted();
            location = *v104;
            v114 = *v105;
            v115 = v106;
            v59 = PVMGetVolumePreference(v90, 0, &location);
            location = *v104;
            v114 = *v105;
            v115 = v106;
            PVMSetVolumePreference(v90, 0, a6, &location, VolumeSequenceNumber, a15, a9, 0.0, 0.0);
            location = *v104;
            v114 = *v105;
            v115 = v106;
            v100 = PVMGetVolumePreference(v90, 0, &location);
            MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(5u, a6, v59, v100);
            if (dword_1EB75DE40)
            {
              goto LABEL_153;
            }

LABEL_173:
            v101 = 1;
            goto LABEL_182;
          }

          v104[1] = v49;
          *v105 = v93;
          location = *v104;
          v114 = v93;
          v115 = v106;
          v104[0] = PVMGetMappedEndpointType(&location);
          vaemUnmuteFullMuteIfMuted();
          location = *v104;
          v114 = *v105;
          v115 = v106;
          v55 = PVMGetVolumePreference(v90, 0, &location);
          location = *v104;
          v114 = *v105;
          v115 = v106;
          PVMSetVolumePreference(v90, 0, a6, &location, VolumeSequenceNumber, a15, a9 + v55, 0.0, 0.0);
          location = *v104;
          v114 = *v105;
          v115 = v106;
          v100 = PVMGetVolumePreference(v90, 0, &location);
          MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(4u, a6, v55, v100);
          if (!dword_1EB75DE40)
          {
            goto LABEL_173;
          }

LABEL_153:
          LODWORD(v99) = 0;
          v98[0] = OS_LOG_TYPE_DEFAULT;
          v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_173;
        }

        if (v97 <= 10)
        {
          if ((v97 == 8 || v97 == 10) && a12)
          {
            *a12 = 0;
          }

          goto LABEL_182;
        }

        if (v97 - 11 >= 3)
        {
          if (v97 != 14)
          {
            goto LABEL_182;
          }

          v104[1] = a3;
          *v105 = v93;
          location = *v104;
          v114 = v93;
          v115 = v106;
          v104[0] = PVMGetMappedEndpointType(&location);
          location = *v104;
          v114 = *v105;
          v115 = v106;
          v53 = PVMGetVolumePreference(v90, 0, &location);
          location = *v104;
          v114 = *v105;
          v115 = v106;
          PVMSetRawVolumePreference(v90, 0, &location, VolumeSequenceNumber, a15, a6, a9);
          location = *v104;
          v114 = *v105;
          v115 = v106;
          v100 = PVMGetVolumePreference(v90, 0, &location);
          MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(0xEu, a6, v53, v100);
          if (!dword_1EB75DE40)
          {
            goto LABEL_173;
          }

          goto LABEL_153;
        }

        if (!v44)
        {
          goto LABEL_182;
        }

        if (a3)
        {
          v104[1] = CFRetain(a3);
          v51 = v93;
          if (v93)
          {
            v51 = CFRetain(v93);
          }

          v105[0] = v51;
          v52 = *(&v93 + 1);
          if (*(&v93 + 1))
          {
            v52 = CFRetain(*(&v93 + 1));
          }

          v105[1] = v52;
        }

        else
        {
          CMSMUtility_CopyDeviceRouteAtIndexForInactiveRouteConfiguration(v90, 0, 0, 0, 0, &v104[1], &v105[1], v105);
        }

        location = *v104;
        v114 = *v105;
        v115 = v106;
        v94 = PVMIsCategoryAndRouteInfoCurrent(v90, 0, &location);
        location = *v104;
        v114 = *v105;
        v115 = v106;
        v104[0] = PVMGetMappedEndpointType(&location);
        if (v97 == 12)
        {
          PVMSetEnabled(1);
          if (!a16)
          {
            vaemUnmuteFullMuteIfMuted();
          }

          location = *v104;
          v114 = *v105;
          v115 = v106;
          v63 = PVMGetVolumePreference(v90, 0, &location);
          location = *v104;
          v114 = *v105;
          v115 = v106;
          PVMSetVolumePreference(v90, 0, a6, &location, VolumeSequenceNumber, a15, a9, 0.0, 0.0);
          MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(0xCu, a6, v63, a9);
          if (!dword_1EB75DE40)
          {
            goto LABEL_175;
          }
        }

        else
        {
          if (v97 != 11)
          {
LABEL_176:
            location = *v104;
            v114 = *v105;
            v115 = v106;
            v100 = PVMGetVolumePreference(v90, 0, &location);
            if (v105[0])
            {
              CFRelease(v105[0]);
              v105[0] = 0;
            }

            if (v104[1])
            {
              CFRelease(v104[1]);
              v104[1] = 0;
            }

            if (v105[1])
            {
              CFRelease(v105[1]);
            }

            goto LABEL_182;
          }

          PVMSetEnabled(1);
          vaemUnmuteFullMuteIfMuted();
          location = *v104;
          v114 = *v105;
          v115 = v106;
          v61 = PVMGetVolumePreference(v90, 0, &location);
          location = *v104;
          v114 = *v105;
          v115 = v106;
          PVMSetVolumePreference(v90, 0, a6, &location, VolumeSequenceNumber, a15, a9 + v61, 0.0, 0.0);
          location = *v104;
          v114 = *v105;
          v115 = v106;
          v100 = PVMGetVolumePreference(v90, 0, &location);
          MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(0xBu, a6, v61, v100);
          if (!dword_1EB75DE40)
          {
LABEL_175:
            v101 = !v94;
            goto LABEL_176;
          }
        }

        LODWORD(v99) = 0;
        v98[0] = OS_LOG_TYPE_DEFAULT;
        v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_175;
    }

    v97 = v48;
    goto LABEL_119;
  }

  LODWORD(v104[0]) = 0;
  type[0] = OS_LOG_TYPE_DEFAULT;
  v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  result = 4294954315;
LABEL_246:
  v83 = *MEMORY[0x1E69E9840];
  return result;
}