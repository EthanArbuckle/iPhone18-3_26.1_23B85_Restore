uint64_t vaemSetRouteConfigurationDictionaryOnVAD(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v7 = MXGetPerformanceLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B17A2000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Route configuration", &unk_1B19E5B76, buf, 2u);
  }

  theDict = 0;
  *buf = a1;
  v21 = 8;
  p_theDict = &theDict;
  v23 = 8;
  v17 = 0x676C6F6272746366;
  v18 = 0;
  v8 = CMSMVAUtility_AudioObjectSetPropertyData();
  v9 = theDict;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = theDict == 0;
  }

  if (v10)
  {
    v11 = 4294954310;
    if (theDict)
    {
LABEL_18:
      CFRelease(v9);
    }
  }

  else
  {
    Value = CFDictionaryGetValue(theDict, @"route change reason");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, a4);
      if (CMSMVAUtility_MapVADReasonToCMSReason(*a4) != 9)
      {
        if (CMSMVAUtility_IsAdditiveRoutingEnabled() && !MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled())
        {
          v13 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyAndUpdateSessionInformation:"copyAndUpdateSessionInformation:", [(__CFDictionary *)theDict objectForKey:0x1F2897690]];
        }

        else
        {
          v13 = 0;
        }

        vaemAQMERouteChanged(theDict, a3, v13);
        vaemVADRouteChangeListener();
      }
    }

    v11 = 0;
    v9 = theDict;
    if (theDict)
    {
      goto LABEL_18;
    }
  }

  v14 = MXGetPerformanceLog();
  if (os_signpost_enabled(v14))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B17A2000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Route configuration", &unk_1B19E5B76, v16, 2u);
  }

  return v11;
}

uint64_t CMSMVAUtility_MapVADReasonToCMSReason(int a1)
{
  result = 0;
  if (a1 <= 1919842147)
  {
    if (a1 > 1919181935)
    {
      if (a1 <= 1919185775)
      {
        if (a1 != 1919181936)
        {
          if (a1 != 1919184754)
          {
            return result;
          }

          return 2;
        }

        return 3;
      }

      if (a1 == 1919185776)
      {
        return 11;
      }

      if (a1 == 1919186544)
      {
        return 3;
      }

      return result;
    }

    if (a1 == 1919050611)
    {
      return 5;
    }

    if (a1 != 1919050851)
    {
      v3 = a1 == 1919118966;
      v4 = 7;
LABEL_18:
      if (v3)
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    return 10;
  }

  if (a1 <= 1919970402)
  {
    if (a1 == 1919842148)
    {
      return 1;
    }

    if (a1 == 1919904885)
    {
      return 2;
    }

    v3 = a1 == 1919907442;
    v4 = 4;
    goto LABEL_18;
  }

  if (a1 > 1919971700)
  {
    if (a1 == 1920099684)
    {
      v5 = 9;
    }

    else
    {
      v5 = 0;
    }

    if (a1 == 1919971701)
    {
      return 8;
    }

    else
    {
      return v5;
    }
  }

  if (a1 == 1919970403)
  {
    return 3;
  }

  if (a1 == 1919971427)
  {
    return 10;
  }

  return result;
}

void vaemConfigurePVMSettings(__CFString *a1, int a2)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!PVMGetEnabled())
  {
    PVMSetEnabled(1);
  }

  vaemCurrentRouteHasVolumeControlListenerGuts();
  v2 = CMSMUtility_CopyCurrentRouteIdentifiers();
  v3 = v2;
  if (v2 && CFArrayGetCount(v2) >= 1)
  {
    v4 = 0;
    do
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      ++v4;
    }

    while (CFArrayGetCount(v3) > v4);
  }

  v6 = CMSMUtility_CopyCurrentRouteTypes();
  NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
  if (!FigCFArrayContainsValue() || (v8 = 1, a2 != 1919904885) && a2 != 1919971701)
  {
    if (!FigCFArrayContainsValue() && !FigCFArrayContainsValue())
    {
LABEL_21:
      v8 = 0;
      goto LABEL_22;
    }

    if (NumberOfCurrentOutputPorts)
    {
      v9 = 0;
      do
      {
        CFArrayGetValueAtIndex(v6, v9);
        if (FigCFEqual() || FigCFEqual())
        {
          CFArrayGetValueAtIndex(v3, v9);
          if (FigCFEqual())
          {
            goto LABEL_21;
          }
        }
      }

      while (NumberOfCurrentOutputPorts != ++v9);
    }

    v8 = 1;
  }

LABEL_22:
  ControllingRoutingSession = CMSMUtility_GetControllingRoutingSession();
  if (ControllingRoutingSession)
  {
    [ControllingRoutingSession audioMode];
    if (FigCFEqual())
    {
      v11 = a1;
      if (FigCFEqual())
      {
        v11 = @"VideoChatForMedia";
      }

      a1 = v11;
    }
  }

  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  CMSMUtility_GetCurrentRouteInfoAtIndex(0, &v48);
  if (!CMSMUtility_IsSiriControllingRoutingAndNotVolume())
  {
    SharePlayCapableActiveMediaSession = CMSMUtility_GetSharePlayCapableActiveMediaSession();
    v46 = v8;
    if (CMSMUtility_IsSharePlayCapableCallSessionActive() && SharePlayCapableActiveMediaSession && ([SharePlayCapableActiveMediaSession currentlyControllingFlags] & 0x10) != 0)
    {
      if (dword_1EB75DE40)
      {
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v45 = -[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance", v37, v39), "getUncustomizedCategory:", [SharePlayCapableActiveMediaSession audioCategory]);
      v21 = [SharePlayCapableActiveMediaSession audioMode];
      v22 = v49;
      v23 = v48;
      v24 = v50;
      v25 = byte_1EB75E098;
      DoesPortSupportDoAP = vaeDoesPortSupportDoAP(DWORD2(v50));
      VolumeSequenceNumber = CMSMUtility_GetVolumeSequenceNumber();
      PVMSetCurrentState(v45, v21, v23, v22, *(&v22 + 1), *(&v23 + 1), v24, v46, v25, DoesPortSupportDoAP, VolumeSequenceNumber);
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v15 = -[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance", v37, v39), "getUncustomizedCategory:", [+[MXSessionManager sharedInstance](MXSessionManager currentAudioCategory]);
      v16 = v49;
      v17 = v48;
      v18 = v50;
      v19 = byte_1EB75E098;
      v20 = vaeDoesPortSupportDoAP(DWORD2(v50));
      v40 = CMSMUtility_GetVolumeSequenceNumber();
      PVMSetCurrentState(v15, a1, v17, v16, *(&v16 + 1), *(&v17 + 1), v18, v46, v19, v20, v40);
    }

    if (CMSMVAUtility_IsAdditiveRoutingEnabled())
    {
      v27 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyActiveVoiceOverSessionPlayingToOnDemandVAD];
      if (v27)
      {
        v28 = v48;
        v29 = v49;
        v30 = v50;
        v51 = *(&v48 + 1);
        v52 = v48;
        v53 = *(&v49 + 1);
        v54 = v49;
        v55 = v50;
        v31 = PVMGetVolumePreference(@"VoiceOver", @"Default", &v51);
        v47 = CMSMUtility_GetVolumeSequenceNumber();
        if (dword_1EB75DE40)
        {
          v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [+[MXSessionManager setVoiceOverVADVolumeNeedsUpdate:v38], "setVoiceOverVADVolumeNeedsUpdate:", 1];
        v33 = [v27 audioCategory];
        v34 = [v27 audioMode];
        v51 = *(&v28 + 1);
        v52 = v28;
        v53 = *(&v29 + 1);
        v54 = v29;
        v55 = v30;
        if (PVMSetRawVolumePreference(v33, v34, &v51, v47, 1, 0, v31))
        {
          v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    vaemUpdatePVMSettingsForInputGain();
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v36 = *MEMORY[0x1E69E9840];
}

BOOL PVMGetEnabled()
{
  v0 = *sStorage;
  FigSimpleMutexLock();
  v1 = *(sStorage + 8) == 0;
  v2 = *sStorage;
  FigSimpleMutexUnlock();
  return v1;
}

void vaemCurrentRouteHasVolumeControlListenerGuts()
{
  CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
  PortTypeFromPortID = vaeGetPortTypeFromPortID(CurrentOutputPortAtIndex);
  if (PortTypeFromPortID != 1885433971 && PortTypeFromPortID != 1885433953)
  {
    HasVolumeControl = vaemCurrentRouteHasVolumeControl();

    vaemHandleVolumeControlDidChange(HasVolumeControl);
    return;
  }

  CurrentDeviceIdentifierAtIndex = CMSMUtility_GetCurrentDeviceIdentifierAtIndex(0);
  v4 = FigRoutingManagerCopyEndpointWithDeviceID(CurrentDeviceIdentifierAtIndex, 1, *MEMORY[0x1E69618D0], 0);
  v5 = *MEMORY[0x1E695E4C0];
  v12 = *MEMORY[0x1E695E4C0];
  if (v4)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v8 = *(*(VTable + 8) + 48);
    if (v8)
    {
      v9 = *(VTable + 8) + 48;
      v8(CMBaseObject, *MEMORY[0x1E6962340], *MEMORY[0x1E695E480], &v12);
      v5 = v12;
    }

    if (!v5)
    {
      goto LABEL_15;
    }

    Value = CFBooleanGetValue(v5);
    vaemHandleVolumeControlDidChange(Value);
    v5 = v12;
  }

  if (v5)
  {
    CFRelease(v5);
    v12 = 0;
  }

  if (v4)
  {
LABEL_15:
    CFRelease(v4);
  }
}

BOOL vaemCurrentRouteHasVolumeControl()
{
  ioDataSize = 4;
  outData = 1;
  *&inAddress.mSelector = *"pscvptuo";
  inAddress.mElement = 0;
  PropertyData = AudioObjectGetPropertyData([[MXSessionManager defaultVADID] sharedInstance:0];
  return (PropertyData | outData) != 0;
}

uint64_t vaemHandleVolumeControlDidChange(uint64_t result)
{
  v4 = *MEMORY[0x1E69E9840];
  if (byte_1EB75E098 != result)
  {
    v1 = result;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    byte_1EB75E098 = v1;
    result = CMSMNotificationUtility_PostCurrentRouteHasVolumeControlDidChange(v1);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *CMSMUtility_CopyCurrentRouteIdentifiers()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FigSimpleMutexLock();
  if (dword_1EB75E0C8)
  {
    v1 = 0;
    do
    {
      MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, v1, &v4);
      if (v5)
      {
        v2 = v5;
      }

      else
      {
        v2 = &stru_1F2890CF0;
      }

      CFArrayAppendValue(Mutable, v2);
      ++v1;
    }

    while (v1 < dword_1EB75E0C8);
  }

  FigSimpleMutexUnlock();
  return Mutable;
}

void *CMSMUtility_GetControllingRoutingSession()
{
  v25 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v20;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v20 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v19 + 1) + 8 * i);
        if (([v5 currentlyControllingFlags] & 2) != 0)
        {
          if (v5)
          {
            if (FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent([v5 routingContextUUID]))
            {
              v17 = 0u;
              v18 = 0u;
              v15 = 0u;
              v16 = 0u;
              v6 = [v0 countByEnumeratingWithState:&v15 objects:v23 count:16];
              if (v6)
              {
                v7 = v6;
                v8 = *v16;
                do
                {
                  for (j = 0; j != v7; ++j)
                  {
                    if (*v16 != v8)
                    {
                      objc_enumerationMutation(v0);
                    }

                    v10 = *(*(&v15 + 1) + 8 * j);
                    v11 = [v10 currentlyControllingFlags] & 2;
                    if (v10 != v5 && v11 != 0)
                    {
                      v5 = v10;
                      goto LABEL_24;
                    }
                  }

                  v7 = [v0 countByEnumeratingWithState:&v15 objects:v23 count:16];
                }

                while (v7);
              }
            }
          }

          goto LABEL_24;
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v5 = 0;
LABEL_24:

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t CMSMUtility_GetCurrentRouteInfoAtIndex@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  FigSimpleMutexLock();
  if (dword_1EB75E0C8 > a1)
  {
    MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, a1, a2);
    v4 = *a2;
    if (*a2)
    {
      CFRetain(*a2);
      CFAutorelease(v4);
    }
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    CFRetain(*(a2 + 8));
    CFAutorelease(v5);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    CFRetain(*(a2 + 16));
    CFAutorelease(v6);
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    CFRetain(*(a2 + 24));
    CFAutorelease(v7);
  }

  v8 = *(a2 + 32);
  if (v8)
  {
    CFRetain(v8);
    CFAutorelease(v8);
  }

  return FigSimpleMutexUnlock();
}

uint64_t FigRouteDiscovererUpdateCachedUserSelectionAvailable(const void *a1)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 56);
  v4 = v3 > 8;
  v5 = (1 << v3) & 0x10C;
  if (v4 || v5 == 0)
  {
    v16 = 0;
    v14 = 0;
    goto LABEL_15;
  }

  v7 = DerivedStorage;
  v8 = *(DerivedStorage + 8);
  v9 = *MEMORY[0x1E695E480];
  UInt32 = FigCFNumberCreateUInt32();
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v12 = CFRetain(Value);
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      if (!UInt32)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  FigRouteDiscoveryManagerCopyRoutesForTypeAndAudioSessionID(v9, *(v7 + 56), *(v7 + 8), *(v7 + 24), &cf);
  v13 = FigRouteDiscovererCopyUserSelectionAvailable(*(v7 + 56), cf);
  FigCFDictionarySetValue();
  v14 = 1;
  if (UInt32)
  {
LABEL_10:
    CFRelease(UInt32);
  }

LABEL_11:
  if (v13)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:v13 == *MEMORY[0x1E695E4D0]];
    discoverer_updateUserSelectionAvailableAndNotifyIfRoutePresentChanged(a1, cf, v15);
    CFRelease(v13);
    goto LABEL_16;
  }

  v16 = cf;
LABEL_15:
  discoverer_updateUserSelectionAvailableAndNotifyIfRoutePresentChanged(a1, v16, 0);
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

void discoverer_updateUserSelectionAvailableAndNotifyIfRoutePresentChanged(const void *a1, const __CFArray *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  if (a3)
  {
    v8 = [a3 BOOLValue];
    v9 = *MEMORY[0x1E695E4D0];
    v10 = *MEMORY[0x1E695E4C0];
    if (v8)
    {
      v11 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v11 = *MEMORY[0x1E695E4C0];
    }
  }

  else
  {
    v11 = FigRouteDiscovererCopyUserSelectionAvailable(*(DerivedStorage + 56), a2);
    v12 = *MEMORY[0x1E695E4D0];
  }

  v13 = *(v7 + 80);
  FigSimpleMutexLock();
  v14 = *(v7 + 88);
  *(v7 + 88) = FigCFEqual() != 0;
  v15 = *(v7 + 80);
  FigSimpleMutexUnlock();
  v16 = FigCFEqual() != 0;
  CMBaseObjectGetDerivedStorage();
  IsClientEligibleToReceiveUpdateNotifications = FigRouteDiscoveryManagerIsClientEligibleToReceiveUpdateNotifications(a1);
  if (v16 != v14 && IsClientEligibleToReceiveUpdateNotifications)
  {
    if (a1)
    {
      CFRetain(a1);
    }

    NotificationQueue = FigRouteDiscoveryManagerGetNotificationQueue();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __discoverer_postRoutePresentChangedIfNecessary_block_invoke;
    v20[3] = &__block_descriptor_40_e5_v8__0l;
    v20[4] = a1;
    MXDispatchAsync("discoverer_postRoutePresentChangedIfNecessary", "FigRouteDiscoverer.m", 1023, 0, 0, NotificationQueue, v20);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

void *CMSMUtility_GetSharePlayCapableActiveMediaSession()
{
  v13 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsSharePlayEnabled())
  {
    v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v1 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v1)
    {
      v2 = v1;
      v3 = *v9;
LABEL_4:
      v4 = 0;
      while (1)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v8 + 1) + 8 * v4);
        if ([v5 isActive])
        {
          if (CMSUtility_IsSharePlayCapableMediaSession(v5))
          {
            break;
          }
        }

        if (v2 == ++v4)
        {
          v2 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
          if (v2)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t CMSUtility_IsSharePlayCapableMediaSession(void *a1)
{
  result = MX_FeatureFlags_IsSharePlayEnabled();
  if (result)
  {
    if ([a1 isSharePlayMediaSession])
    {
      return FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent([a1 routingContextUUID]) == 0;
    }

    result = CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1);
    if (result)
    {
      return FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent([a1 routingContextUUID]) == 0;
    }
  }

  return result;
}

uint64_t vaeDoesPortSupportDoAP(AudioObjectID a1)
{
  ioDataSize = 4;
  outData = 0;
  *&inAddress.mSelector = 0x676C6F62646F6170;
  inAddress.mElement = 0;
  result = AudioObjectHasProperty(a1, &inAddress);
  if (result)
  {
    return !AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData) && outData != 0;
  }

  return result;
}

uint64_t PVMSetCurrentState(const __CFString *a1, const void *a2, void *a3, void *a4, const void *a5, __CFString *a6, const void *a7, int a8, char a9, char a10, uint64_t a11)
{
  cf[19] = *MEMORY[0x1E69E9840];
  v17 = PVMInitialize();
  v81 = 0;
  cf[0] = 0;
  v18 = sStorage;
  v19 = *(sStorage + 272);
  if (v19)
  {
    v80 = CFRetain(v19);
    v18 = sStorage;
  }

  else
  {
    v80 = 0;
  }

  v20 = *(v18 + 288);
  if (v20)
  {
    v78 = CFRetain(v20);
    v18 = sStorage;
  }

  else
  {
    v78 = 0;
  }

  v21 = *(v18 + 232);
  if (v21)
  {
    v79 = CFRetain(v21);
  }

  else
  {
    v79 = 0;
  }

  v22 = @"Unspecified";
  if (!a6)
  {
    a6 = @"Unspecified";
  }

  v23 = v17;
  if (!v17)
  {
    v24 = *sStorage;
    FigSimpleMutexLock();
    pvmAssureCurrentCategoryAndDeviceRoute();
    if (a1)
    {
      MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);
      pvmCreateSeparateCategoryAndModeStrings(MappedCategoryWithModeAppended, cf, &v81);
    }

    v26 = *(sStorage + 232);
    if (FigCFEqual() && (v27 = *(sStorage + 240), FigCFEqual()))
    {
      v75 = 0;
      v74 = @"RouteChange";
    }

    else
    {
      v28 = *(sStorage + 232);
      v29 = cf[0];
      *(sStorage + 232) = cf[0];
      if (v29)
      {
        CFRetain(v29);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      v30 = *(sStorage + 240);
      v31 = v81;
      *(sStorage + 240) = v81;
      if (v31)
      {
        CFRetain(v31);
      }

      if (v30)
      {
        CFRelease(v30);
      }

      v74 = @"CategoryChange";
      v75 = 1;
    }

    v32 = *(sStorage + 248);
    *(sStorage + 248) = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    v33 = *(sStorage + 256);
    *(sStorage + 256) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v33)
    {
      CFRelease(v33);
    }

    v34 = sStorage;
    if (a3)
    {
      v35 = *(sStorage + 200);
      if (v35)
      {
        Value = CFDictionaryGetValue(v35, a3);
        v34 = sStorage;
        if (Value)
        {
          a3 = Value;
        }
      }
    }

    v37 = *(v34 + 272);
    FigCFEqual();
    v38 = *(sStorage + 272);
    *(sStorage + 272) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v38)
    {
      CFRelease(v38);
    }

    MappedRouteIdentifier = pvmGetMappedRouteIdentifier(a4, a3);
    v40 = MappedRouteIdentifier;
    v41 = *(sStorage + 288);
    *(sStorage + 288) = MappedRouteIdentifier;
    if (MappedRouteIdentifier)
    {
      CFRetain(MappedRouteIdentifier);
    }

    if (v41)
    {
      CFRelease(v41);
    }

    if (a5 && a3 && ([a3 hasPrefix:@"HeadphonesBT"] & 1) == 0 && !objc_msgSend(a3, "hasPrefix:", @"HeadsetBT"))
    {
      v42 = *(sStorage + 280);
      *(sStorage + 280) = a5;
      CFRetain(a5);
    }

    else
    {
      a5 = 0;
      v42 = *(sStorage + 280);
      *(sStorage + 280) = 0;
    }

    if (v42)
    {
      CFRelease(v42);
    }

    v43 = sStorage;
    *(sStorage + 324) = a9;
    *(v43 + 325) = a10;
    if (pvmSetCurrentRouteInfo(a6, a3, a5, v40, a7))
    {
      v23 = 0xFFFFFFFFLL;
    }

    else
    {
      if (*(sStorage + 272))
      {
        if (!FigCFEqual())
        {
          v44 = *(sStorage + 272);
          if (!FigCFEqual())
          {
            v45 = *(sStorage + 272);
            if (!FigCFEqual())
            {
              v46 = *MEMORY[0x1E695E480];
              MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 16, *(sStorage + 272));
              v48 = sStorage;
              if (*(sStorage + 120) || (Mutable = CFDictionaryCreateMutable(v46, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), v48 = sStorage, (*(sStorage + 120) = Mutable) != 0))
              {
                if (*(v48 + 280))
                {
                  CFStringAppend(MutableCopy, @"~");
                  CFStringAppend(MutableCopy, *(sStorage + 280));
                  v48 = sStorage;
                }

                if (*(v48 + 288))
                {
                  CFStringAppend(MutableCopy, @"~");
                  CFStringAppend(MutableCopy, *(sStorage + 288));
                  v48 = sStorage;
                }

                v50 = CFDictionaryContainsKey(*(v48 + 120), MutableCopy);
                v51 = *(sStorage + 264);
                v52 = FigCFEqual();
                if (!v50 || !v52)
                {
                  v22 = *(sStorage + 264);
                  CFDictionarySetValue(*(sStorage + 120), MutableCopy, v22);
                  *(sStorage + 128) = 1;
                  pvmWritePrefs();
                }
              }

              else
              {
                FigSignalErrorAtGM();
              }

              if (MutableCopy)
              {
                CFRelease(MutableCopy);
              }
            }
          }
        }
      }

      if (v22)
      {
        CFRelease(v22);
      }

      v53 = *(sStorage + 272);
      v54 = FigCFEqual();
      v55 = sStorage;
      *(sStorage + 304) = v54;
      v56 = *(v55 + 272);
      v57 = FigCFEqual();
      v58 = sStorage;
      *(sStorage + 305) = v57;
      v59 = *(v58 + 272);
      if (FigCFEqual())
      {
        v60 = *(sStorage + 288);
        v61 = FigCFEqual() == 0;
      }

      else
      {
        v61 = 1;
      }

      v62 = *(sStorage + 232);
      v63 = FigCFEqual();
      v64 = sStorage;
      if ((v61 || !v63) && *(sStorage + 92))
      {
        if (dword_1EB75DFE8)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v66 = [MXPreferredVolumeManager sharedInstance:v72];
        LODWORD(v67) = *(sStorage + 308);
        [(MXPreferredVolumeManager *)v66 postNotification:@"PVMStateDidChange" category:0 mode:0 volume:1 rampUpwardDuration:0 rampDownwardDuration:0 silenceVolumeHUD:v67 reason:0.0 refCon:0.0 sequenceNumber:0];
        v64 = sStorage;
      }

      v68 = v75;
      if (!*(v64 + 304))
      {
        v68 = 1;
      }

      if (a8 || v68)
      {
        pvmUpdatePreferredVolumeAndLimit(v74, 0, *(v64 + 232), *(v64 + 240), 0, 1, a11, 0.0, 0.0);
      }

      v23 = 0;
    }
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  if (v80)
  {
    CFRelease(v80);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  if (!v17)
  {
    v69 = *sStorage;
    FigSimpleMutexUnlock();
  }

  v70 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t pvmSetCurrentRouteInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef cf)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = sStorage;
  *(sStorage + 264) = a1;
  v5[34] = a2;
  v5[35] = a3;
  v5[36] = a4;
  v6 = v5[37];
  v5[37] = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t pvmUpdatePreferredVolumeAndLimit(uint64_t result, uint64_t a2, const __CFString *a3, const void *a4, int a5, int a6, uint64_t a7, float a8, float a9)
{
  if (!*(sStorage + 8))
  {
    v16 = result;
    if (a6)
    {
      pvmAssureCurrentCategoryAndDeviceRoute();
      v17 = *(sStorage + 232);
      v18 = *(sStorage + 240);
      v19 = *(sStorage + 280);
      v32 = *(sStorage + 264);
      v33 = v19;
      v34 = *(sStorage + 296);
      pvmGetVolumePref(v17, v18, &v32);
      v20 = sStorage;
      *(sStorage + 308) = v21;
      if (!*(v20 + 8) && (FigCFEqual() || FigCFEqual()))
      {
        v22 = *(sStorage + 232);
        v23 = *(sStorage + 152);
        if (FigCFEqual())
        {
          pvmSetSystemSoundVolumeMultiplierForVolumeGuts(*(sStorage + 308));
        }
      }
    }

    v24 = *sStorage;
    FigSimpleMutexUnlock();
    v25 = *(sStorage + 280);
    v32 = *(sStorage + 264);
    v33 = v25;
    v34 = *(sStorage + 296);
    v26 = PVMGetVolumePreference(a3, a4, &v32);
    v27 = +[MXPreferredVolumeManager sharedInstance];
    *&v28 = v26;
    *&v29 = a8;
    *&v30 = a9;
    [(MXPreferredVolumeManager *)v27 postNotification:@"VolumePreferenceDidChange" category:a3 mode:a4 volume:a5 != 0 rampUpwardDuration:v16 rampDownwardDuration:a2 silenceVolumeHUD:v28 reason:v29 refCon:v30 sequenceNumber:a7];
    v31 = *sStorage;

    return FigSimpleMutexLock();
  }

  return result;
}

uint64_t PVMCopyCurrentCategoryAndMode(CFTypeRef *a1, void *a2)
{
  v4 = PVMInitialize();
  if (!v4)
  {
    v5 = *sStorage;
    FigSimpleMutexLock();
    pvmAssureCurrentCategoryAndDeviceRoute();
    if (a1)
    {
      *a1 = CFRetain(*(sStorage + 232));
    }

    v6 = sStorage;
    if (a2)
    {
      v7 = *(sStorage + 240);
      if (v7)
      {
        v7 = CFRetain(v7);
        v6 = sStorage;
      }

      *a2 = v7;
    }

    v8 = *v6;
    FigSimpleMutexUnlock();
  }

  return v4;
}

uint64_t PVMCopyCurrentDeviceRoute(CFTypeRef *a1, void *a2, void *a3)
{
  v6 = PVMInitialize();
  if (!v6)
  {
    v7 = *sStorage;
    FigSimpleMutexLock();
    pvmAssureCurrentCategoryAndDeviceRoute();
    *a1 = CFRetain(*(sStorage + 272));
    v8 = sStorage;
    if (a2)
    {
      v9 = *(sStorage + 288);
      *a2 = v9;
      if (v9)
      {
        CFRetain(v9);
        v8 = sStorage;
      }
    }

    if (a3)
    {
      v10 = v8[35];
      *a3 = v10;
      if (v10)
      {
        CFRetain(v10);
        v8 = sStorage;
      }
    }

    v11 = *v8;
    FigSimpleMutexUnlock();
  }

  return v6;
}

uint64_t CMSMVAUtility_IsBluetoothSharingSessionEnabled(const __CFArray *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    CMSMUtility_CopyCurrentRoutesInfo();
  }

  Count = CFArrayGetCount(a1);
  if (Count >= 2)
  {
    v2 = Count;
    v3 = 0;
    while (1)
    {
      FigCFArrayGetInt64AtIndex();
      if (!vaeIsPortBluetoothShareable(0))
      {
        break;
      }

      if (v2 == ++v3)
      {
        v4 = 1;
        goto LABEL_11;
      }
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v4 = 0;
LABEL_11:
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t vaemVADCurrentBufferFrameSizeListener()
{
  v0 = MXGetSerialQueue();
  MXDispatchAsyncFunction("vaemVADCurrentBufferFrameSizeListener", "CMSessionManager_VAEndpointManager.m", 5680, 0, 0, v0, 0, vaemVADCurrentBufferFrameSizeListenerGuts_f);
  return 0;
}

uint64_t CMSUtility_UpdatePlaybackVolume(void *a1, float a2, float a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (CMSMVAUtility_IsBluetoothSharingSessionEnabled(0))
  {
    result = PVMCategoriesAreEquivalent(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [a1 audioCategory]), objc_msgSend(a1, "audioMode"), @"Audio/Video", 0);
    if (result)
    {
      [a1 audioCategory];
      [a1 audioMode];
      v7 = *MEMORY[0x1E69E9840];

      CMSMVAUtility_SetIndividualVolumeOnCurrentBluetoothShareableRoutes();
    }
  }

  else
  {
    v13 = 0.0;
    CMSUtility_ComputePlaybackVolume(a1, &v13);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    IsAdaptiveVolumeControlEnabled = MX_FeatureFlags_IsAdaptiveVolumeControlEnabled();
    v10 = 0;
    if (a3 != 0.0 && a2 != 0.0 && IsAdaptiveVolumeControlEnabled)
    {
      v10 = MXSMGetVolumeRampCategory(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [a1 audioCategory]), objc_msgSend(a1, "audioMode"));
    }

    CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(a1);
    result = vaemSetDeviceVolumeIfNotSet(CurrentOutputVADID, 0, 0, v10, v13, a2, a3);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void MXVW_VectorCMSRouteInfoPushBack(uint64_t a1, __int128 *a2)
{
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *(a2 + 1);
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = *(a2 + 2);
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = *(a2 + 3);
  if (v6)
  {
    CFRetain(v6);
  }

  v7 = *(a2 + 4);
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8 >= v9)
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 4);
    v14 = v13 + 1;
    if (v13 + 1 > 0x555555555555555)
    {
      std::vector<CMSRouteInfo>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a1) >> 4);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x2AAAAAAAAAAAAAALL)
    {
      v16 = 0x555555555555555;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CMSRouteInfo>>(a1, v16);
    }

    v17 = 48 * v13;
    v18 = *a2;
    v19 = a2[2];
    *(v17 + 16) = a2[1];
    *(v17 + 32) = v19;
    *v17 = v18;
    v12 = 48 * v13 + 48;
    v20 = *(a1 + 8) - *a1;
    v21 = v17 - v20;
    memcpy((v17 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v10 = *a2;
    v11 = a2[2];
    v8[1] = a2[1];
    v8[2] = v11;
    *v8 = v10;
    v12 = (v8 + 3);
  }

  *(a1 + 8) = v12;
}

uint64_t CMSUtilityPredicate_IsVolumeButtonClient(uint64_t a1, void *a2, const __CFString *a3)
{
  v4 = PVMCategoriesAreEquivalent(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [a2 audioCategory]), objc_msgSend(a2, "audioMode"), a3, 0);
  if ([a2 isActive])
  {
    LODWORD(result) = [a2 hasPhoneCallBehavior];
    if (v4)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  else
  {
    LODWORD(result) = [a2 wantsVolumeChangesWhenPausedOrInactive];
    if (v4)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CMSRouteInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t PVMCategoriesAreEquivalent(const __CFString *a1, const void *a2, const __CFString *a3, const void *a4)
{
  if (a1)
  {
    pvmGetMappedCategoryWithModeAppended(a1, a2);
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (a3)
  {
LABEL_3:
    pvmGetMappedCategoryWithModeAppended(a3, a4);
  }

LABEL_5:

  return FigCFEqual();
}

void MXVW_ReleaseVectorCMSRouteInfo(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      if (*v2)
      {
        CFRelease(*v2);
      }

      v4 = *(v2 + 8);
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(v2 + 16);
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = *(v2 + 24);
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = *(v2 + 32);
      if (v7)
      {
        CFRelease(v7);
      }

      v2 += 48;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  if (v2)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B2735410);
}

uint64_t vaemSetDeviceVolumeIfNotSet(uint64_t a1, AudioObjectPropertyElement a2, const void *a3, uint64_t a4, float a5, float a6, float a7)
{
  v28 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsAdaptiveVolumeControlEnabled())
  {
    v14 = vaemDeviceSupportsVolumeRamp(a1);
    if (a7 != 0.0 && a6 != 0.0 && a4 && v14)
    {
      result = vaemDeviceSupportsVolumeRamp(a1);
      if (result)
      {
        v27 = 0;
        v25 = a4;
        *v26 = *"pmarptuo";
        v22 = a5;
        v23 = a6;
        v24 = LODWORD(a7);
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        gVAEM = a1;
        dword_1EB75D0A4 = LODWORD(a5);
        byte_1EB75D0B9 = 1;
        qword_1EB75D0C0 = a4;
        result = CMSMVAUtility_AudioObjectSetPropertyData();
        v21 = result;
        if (result)
        {
          v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          result = fig_log_call_emit_and_clean_up_after_send_and_compose();
          byte_1EB75D0B9 = 0;
          qword_1EB75D0C0 = 0;
        }
      }

      else if (dword_1EB75DE40)
      {
        v22 = 0.0;
        v26[0] = OS_LOG_TYPE_DEFAULT;
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        result = fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_39;
    }
  }

  result = CMSMVAUtility_IsBluetoothSharingSessionEnabled(0);
  if (!a3 && result)
  {
LABEL_39:
    v20 = *MEMORY[0x1E69E9840];
    return result;
  }

  FigSimpleMutexLock();
  if ([+[MXSessionManager systemSoundLocalVADID]== a1 sharedInstance]
  {
    if (!a3 || !qword_1EB75D170 || !CFEqual(a3, qword_1EB75D170) || *&dword_1EB75D180 != a5)
    {
      vaemSetDeviceVolume(a1, 0, a5);
      dword_1EB75D180 = LODWORD(a5);
      if (qword_1EB75D170)
      {
        CFRelease(qword_1EB75D170);
        qword_1EB75D170 = 0;
      }

      if (a3)
      {
        qword_1EB75D170 = CFRetain(a3);
      }
    }
  }

  else if ([+[MXSessionManager siriOutputVADID]== a1 sharedInstance]
  {
    vaemSetDeviceVolume(a1, 0, a5);
  }

  else if ([+[MXSessionManager musicVADID]!= a1 && (!a3 || !qword_1EB75D168 || !CFEqual(a3 sharedInstance]
  {
    vaemSetDeviceVolume(a1, a2, a5);
    dword_1EB75D17C = LODWORD(a5);
    if (qword_1EB75D168)
    {
      CFRelease(qword_1EB75D168);
      qword_1EB75D168 = 0;
    }

    if (a3)
    {
      qword_1EB75D168 = CFRetain(a3);
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return FigSimpleMutexUnlock();
}

uint64_t vaemDeviceSupportsVolumeRamp(AudioObjectID a1)
{
  inAddress_8[22] = *MEMORY[0x1E69E9840];
  result = MX_FeatureFlags_IsAdaptiveVolumeControlEnabled();
  if (result)
  {
    inAddress = *"pmrsptuo";
    inAddress_8[0] = 0;
    result = AudioObjectHasProperty(a1, &inAddress);
    if (result)
    {
      ioDataSize = 4;
      if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, inAddress_8 + 4))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        result = 0;
      }

      else
      {
        result = HIDWORD(inAddress_8[0]) == 1;
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaemSetDeviceVolume(uint64_t a1, AudioObjectPropertyElement a2, float a3)
{
  v35 = *MEMORY[0x1E69E9840];
  inAddress.mElement = a2;
  outData = 0;
  *&inAddress.mSelector = 0x6F7574707663656ELL;
  if (!AudioObjectHasProperty(a1, &inAddress))
  {
    goto LABEL_5;
  }

  ioDataSize = 4;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    v10 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_15;
  }

  if (outData != 1)
  {
    v10 = 1;
  }

  else
  {
LABEL_5:
    if (dword_1EB75DE40)
    {
      inAddress.mSelector = 0;
      LOBYTE(outData) = 0;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      mSelector = inAddress.mSelector;
      if (os_log_type_enabled(v7, outData))
      {
        v9 = mSelector;
      }

      else
      {
        v9 = mSelector & 0xFFFFFFFE;
      }

      if (v9)
      {
        v23 = 136315138;
        v24 = "vaemStartIgnoreOutputVolumeScalarChangesTimer";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemCancelOutputVolumeChangeTimer();
    *&byte_1EB75D0B8 = 1;
    gVAEM = a1;
    dword_1EB75D0A8 = a2;
    dword_1EB75D0A4 = LODWORD(a3);
    qword_1EB75D0C0 = 0;
    v11 = MXGetSerialQueue();
    qword_1EB75D0B0 = MXDispatchUtilityCreateOneShotTimer(1.0, "vaemStartIgnoreOutputVolumeScalarChangesTimer", "CMSessionManager_VAEndpointManager.m", 3831, 0, 0, v11, &__block_literal_global_81, 0, 0);
    v10 = 0;
    if (!qword_1EB75D0B0)
    {
      byte_1EB75D0B8 = 0;
    }
  }

LABEL_15:
  if (dword_1EB75DE40)
  {
    inAddress.mSelector = 0;
    LOBYTE(outData) = 0;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v13 = inAddress.mSelector;
    if (os_log_type_enabled(v12, outData))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      VADNameForVADID = CMSMUtility_GetVADNameForVADID(a1);
      v23 = 136316418;
      v16 = @"YES";
      v24 = "vaemSetDeviceVolume";
      v25 = 2048;
      v26 = a3;
      v27 = 2114;
      if (v10)
      {
        v16 = @"NO";
      }

      v28 = VADNameForVADID;
      v29 = 1024;
      v30 = a1;
      v31 = 1024;
      v32 = a2;
      v33 = 2114;
      v34 = v16;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = CMSMVAUtility_AudioObjectSetPropertyData();
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSMNotificationUtility_PostVolumeDidChangeToVolumeButtonClientsWithPayload(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v2 = MXGetNotificationSenderQueue();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CMSMNotificationUtility_PostVolumeDidChangeToVolumeButtonClientsWithPayload_block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = cf;
  MXDispatchAsync("CMSMNotificationUtility_PostVolumeDidChangeToVolumeButtonClientsWithPayload", "CMSessionManager_NotificationUtilities.m", 286, 0, 0, v2, v3);
}

uint64_t CMSMNotificationUtility_PostVolumeDidChangeToAVSystemControllersWithPayload(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = [MXSystemController notifyAll:@"SystemVolumeDidChange" payload:a1 dontPostIfSuspended:0, v5, v6];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void vaemUpdatePVMSettingsForInputGain()
{
  v13 = *MEMORY[0x1E69E9840];
  if (CMSMUtility_GetNumberOfCurrentInputPorts() != 1 && byte_1EB75D17B)
  {
    v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v1 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v1)
    {
      v2 = v1;
      v3 = *v9;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v9 != v3)
          {
            objc_enumerationMutation(v0);
          }

          v5 = *(*(&v8 + 1) + 8 * i);
          if ([v5 isActive] && (objc_msgSend(v5, "currentlyControllingFlags") & 2) != 0 && objc_msgSend(v5, "desiredInputGainScalar"))
          {
            [objc_msgSend(v5 "desiredInputGainScalar")];
            vaemSetDeviceInputGainScalar(v6);

            goto LABEL_15;
          }
        }

        v2 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

    vaemSetInputGainFromPreferenceIfPresent();
  }

LABEL_15:
  v7 = *MEMORY[0x1E69E9840];
}

void cmsSetDeviceSampleRateAndBufferSize(void *a1, unsigned int a2, uint64_t a3, double a4, float a5)
{
  v58 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    CurrentVADIDForInput = vaemGetCurrentVADIDForInput();
  }

  else
  {
    CurrentVADIDForInput = CMSUtility_GetCurrentOutputVADID(a1);
  }

  v11 = CurrentVADIDForInput;
  v42 = -1;
  v43 = 0;
  vaemGetDeviceFormatID(CurrentVADIDForInput, a3, &v43);
  if (v12)
  {
    v43 = 1819304813;
  }

  if (dword_1EB75DE40)
  {
    v44 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v14 = v44;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v16 = [a1 clientName];
      if (a3 == 1)
      {
        v17 = "input";
      }

      else
      {
        v17 = "output";
      }

      VADNameForVADID = CMSMUtility_GetVADNameForVADID(v11);
      LODWORD(v45[0]) = 136317186;
      *(v45 + 4) = "cmsSetDeviceSampleRateAndBufferSize";
      WORD2(v45[1]) = 2114;
      *(&v45[1] + 6) = v16;
      HIWORD(v45[2]) = 2048;
      v45[3] = *&a4;
      LOWORD(v46[0]) = 1024;
      *(v46 + 2) = a2;
      HIWORD(v46[0]) = 2048;
      *&v46[1] = a5;
      v47 = 2082;
      v48 = v17;
      v49 = 1042;
      v50 = 4;
      v51 = 2082;
      v52 = &v43;
      v53 = 2114;
      v54 = VADNameForVADID;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4 == 0.0)
  {
    a4 = 44100.0;
  }

  if (a1)
  {
    v19 = [a1 hasInput];
    if (a4 >= 22050.0)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    if (!v20)
    {
      a4 = 22050.0;
    }

    if (a3 == 1)
    {
      v21 = [a1 preferredNumberOfInputChannels];
    }

    else
    {
      v21 = [a1 preferredNumberOfOutputChannels];
    }

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  FigSimpleMutexLock();
  *v46 = 0u;
  memset(v45, 0, sizeof(v45));
  v41 = 0;
  if (vaemVADGetAvailableStreamFormats(&v41 + 1, &v41, v45))
  {
    a4 = 0.0;
  }

  v23 = HIBYTE(v41) | v41;
  v24 = v23 != 0;
  if (v23)
  {
    if (a3 == 1)
    {
      v25 = v46[0];
      v26 = &v46[1];
      v27 = v46[1];
    }

    else
    {
      v28 = *MEMORY[0x1E69626C0];
      if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1) && CMSUtility_IsPlayingToSystemSoundRemoteVAD(a1))
      {
        v25 = v45[2];
        v26 = &v45[3];
        v27 = v45[3];
      }

      else
      {
        v25 = v45[0];
        v26 = &v45[1];
        v27 = v45[1];
      }
    }

    v29 = vaemChooseBestSampleRateForFormat(v25, v27, v43, v22, &v42, a4);
    if (v42 == -1)
    {
      v30 = 0;
    }

    else
    {
      v30 = *v26;
    }

    if (v29 == 0.0)
    {
      a4 = 44100.0;
    }

    else
    {
      a4 = v29;
    }

    FigSimpleMutexUnlock();
    if (v42 == -1 || vaemGetNumberOfStreams(a3, 0, 0) >= 2)
    {
      if (vaemSetSampleRateForDevice(v11))
      {
        v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v32 = &v30[56 * v42];
      *v32 = a4;
      v33 = *v32;
      v34 = *(v32 + 1);
      v57 = *(v32 + 4);
      v55 = v33;
      v56 = v34;
      if (!CMSMVAUtility_IsNewVirtualFormatRedundantForDeviceAndScope(v11, &v55, a3) && vaemSetVirtualFormatForScope(v11, &v30[56 * v42], a3))
      {
        goto LABEL_64;
      }
    }

    if (a1)
    {
      if (!a3)
      {
        if ([a1 preferredNumberOfInputChannels])
        {
          if ([a1 hasInput])
          {
            FigSimpleMutexLock();
            v42 = -1;
            vaemGetDeviceFormatID(v11, 1, &v43);
            a4 = vaemChooseBestSampleRateForFormat(v46[0], v46[1], v43, [a1 preferredNumberOfInputChannels], &v42, a4);
            FigSimpleMutexUnlock();
            if (v42 != -1)
            {
              v35 = v46[1];
              if (v46[1])
              {
                v36 = v46[1] + 56 * v42;
                *v36 = a4;
                v37 = *v36;
                v38 = *(v36 + 1);
                v57 = *(v36 + 4);
                v55 = v37;
                v56 = v38;
                if (!CMSMVAUtility_IsNewVirtualFormatRedundantForDeviceAndScope(v11, &v55, 1))
                {
                  if (vaemSetVirtualFormatForScope(v11, v35 + 56 * v42, 1))
                  {
                    goto LABEL_64;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (a2)
  {
    if (!vaemSetDeviceBufferNumPCMFrames(v11, a3, a2))
    {
      goto LABEL_62;
    }

    v39 = 1;
  }

  else
  {
    v39 = a5 != 0.0;
  }

  vaemCalculateAndSetDeviceBufferDuration(v11, a3, 0, v39, a5, a4);
LABEL_62:
  if (!v24)
  {
    FigSimpleMutexUnlock();
  }

LABEL_64:
  if (v45[1])
  {
    free(v45[1]);
  }

  if (v45[3])
  {
    free(v45[3]);
  }

  if (v46[1])
  {
    free(v46[1]);
  }

  v40 = *MEMORY[0x1E69E9840];
}

uint64_t vaemVADGetAvailableStreamFormats(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (vaemGetStream0([+[MXSessionManager defaultVADID] sharedInstance])
  {
    v6 = 1;
  }

  else
  {
    v6 = outData == 0;
  }

  if (!v6)
  {
    v14 = vaemCopySupportedStreamFormats();
    if (a2 && !v14)
    {
      *a2 = 1;
    }
  }

  if ([+[MXSessionManager systemSoundRemoteVADID] sharedInstance]
  {
    if (!vaemGetStream0([+[MXSessionManager systemSoundRemoteVADID] sharedInstance]&& outData != 0)
    {
      v15 = vaemCopySupportedStreamFormats();
      if (a2 && !v15)
      {
        *a2 = 1;
      }
    }
  }

  CurrentVADIDForInput = vaemGetCurrentVADIDForInput();
  Stream0 = vaemGetStream0(CurrentVADIDForInput, 1, &outData);
  if (!Stream0)
  {
    if (outData)
    {
      v13 = vaemCopySupportedStreamFormats();
      Stream0 = v13;
      if (a1)
      {
        if (!v13)
        {
          *a1 = 1;
        }
      }
    }
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 40) = 0;
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  v11 = *MEMORY[0x1E69E9840];
  return Stream0;
}

uint64_t vaemCopySupportedStreamFormats()
{
  OUTLINED_FUNCTION_7_1();
  PropertyDataSize = AudioObjectGetPropertyDataSize(v0, v1, v2, v3, v4);
  if (PropertyDataSize)
  {
    v7 = PropertyDataSize;
  }

  else
  {
    v7 = 0;
  }

  free(0);
  return v7;
}

uint64_t vaemGetCurrentVADIDForInput()
{
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager decoupledInputVADID];
  v1 = +[MXSessionManager sharedInstance];
  if (v0)
  {

    return [(MXSessionManager *)v1 decoupledInputVADID];
  }

  else
  {
    v3 = [(MXSessionManager *)v1 speechDetectionVADID];
    v4 = +[MXSessionManager sharedInstance];
    if (v3)
    {

      return [(MXSessionManager *)v4 speechDetectionVADID];
    }

    else
    {

      return [(MXSessionManager *)v4 defaultVADID];
    }
  }
}

double vaemChooseBestSampleRateForFormat(int a1, uint64_t a2, int a3, int a4, _DWORD *a5, double a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = 0.0;
  if (!a2 || !a1)
  {
    goto LABEL_72;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = (a2 + 28);
  v13 = 0.0;
  v7 = 1.0e12;
  v14 = 0.0;
  v15 = 0xFFFFFFFFLL;
  v16 = 0xFFFFFFFFLL;
  v17 = 0xFFFFFFFFLL;
  do
  {
    if (*(v12 - 5) != a3)
    {
      goto LABEL_56;
    }

    v18 = *(v12 + 3);
    v19 = v18 > a6;
    if (v18 <= a6)
    {
      v20 = *(v12 + 5);
      if (!v19 && v20 >= a6)
      {
        if (!a4)
        {
          goto LABEL_63;
        }

        if (v17 == 0xFFFFFFFFLL)
        {
LABEL_23:
          v17 = v8;
        }

        else
        {
          v25 = *(a2 + 56 * v17 + 28);
          v26 = *v12;
          if (v25 < a4 || v26 < a4)
          {
            if (v26 >= v25)
            {
              goto LABEL_23;
            }
          }

          else if (v26 <= v25)
          {
            goto LABEL_23;
          }
        }

        v9 = 1;
        v13 = a6;
        goto LABEL_56;
      }

      if (v14 > v20)
      {
        goto LABEL_56;
      }

      if (v15 == 0xFFFFFFFFLL)
      {
        v11 = 1;
        if (a4)
        {
          v15 = v8;
        }

        goto LABEL_49;
      }

      if (a4)
      {
        v28 = *(a2 + 56 * v15 + 28);
        v29 = *v12;
        if (v28 >= a4 && v29 >= a4)
        {
          if (v29 > v28)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        if (v29 >= v28)
        {
LABEL_47:
          v15 = v8;
        }
      }

LABEL_48:
      v11 = 1;
LABEL_49:
      v14 = *(v12 + 5);
      goto LABEL_56;
    }

    if (v7 < v18)
    {
      goto LABEL_56;
    }

    if (v16 == 0xFFFFFFFFLL)
    {
      if (a4)
      {
        v16 = v8;
      }

      v10 = 1;
      goto LABEL_55;
    }

    if (a4)
    {
      v22 = *(a2 + 56 * v16 + 28);
      v23 = *v12;
      if (v22 < a4 || v23 < a4)
      {
        if (v23 < v22)
        {
          goto LABEL_54;
        }

LABEL_53:
        v16 = v8;
        goto LABEL_54;
      }

      if (v23 <= v22)
      {
        goto LABEL_53;
      }
    }

LABEL_54:
    v10 = 1;
LABEL_55:
    v7 = *(v12 + 3);
LABEL_56:
    ++v8;
    v12 += 14;
  }

  while (a1 != v8);
  if (v9)
  {
    if (!a5 || (v31 = v17, v7 = a6, v17 == 0xFFFFFFFFLL))
    {
LABEL_63:
      v7 = a6;
      goto LABEL_72;
    }

LABEL_71:
    *a5 = v31;
  }

  else if (v10)
  {
    if (a5)
    {
      v31 = v16;
      if (v16 != 0xFFFFFFFFLL)
      {
        goto LABEL_71;
      }
    }
  }

  else if (v11)
  {
    if (a5)
    {
      v31 = v15;
      v7 = v14;
      if (v15 != 0xFFFFFFFFLL)
      {
        goto LABEL_71;
      }
    }

    v7 = v14;
  }

  else
  {
    v7 = v13;
  }

LABEL_72:
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v33 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t vaemSetSampleRateForDevice(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (CMSMVAUtility_AudioObjectSetPropertyData())
  {
    if ([+[MXSessionManager defaultVADID]== a1 sharedInstance]
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = CMSMVAUtility_AudioObjectSetPropertyData();
    if (v3 && [+[MXSessionManager defaultVADID]== a1 sharedInstance]
    {
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v3 = 0;
  }

  [+[MXSessionManager updateDeviceSampleRate:v7], "updateDeviceSampleRate:", a1];
  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t FigRouteDiscovererCopyUserSelectionAvailable(int a1, CFArrayRef theArray)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v3 = *MEMORY[0x1E695E4C0];
  v24 = *MEMORY[0x1E695E4C0];
  if ((a1 & 0xFFFFFFFE) == 2)
  {
    if (theArray && CFArrayGetCount(theArray) >= 2)
    {
      v4 = v22;
      v22[3] = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = *MEMORY[0x1E69626D8];
      if (!theArray)
      {
        goto LABEL_12;
      }

LABEL_11:
      for (i = CFArrayGetCount(theArray); v7 < i; i = 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
        if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
        {
          ++v8;
        }

        ++v7;
        if (theArray)
        {
          goto LABEL_11;
        }

LABEL_12:
        ;
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __FigRouteDiscovererCopyUserSelectionAvailable_block_invoke;
      v20[3] = &unk_1E7AE7168;
      v20[4] = &v21;
      v20[5] = v8;
      FigRouteDiscoveryManagerRunBlockWhileEndpointManagerInfoLockIsLocked(v20);
      v4 = v22;
    }

    goto LABEL_24;
  }

  if (a1 == 8)
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v6 = *MEMORY[0x1E695E4D0];
      if (Count > 1)
      {
        v3 = *MEMORY[0x1E695E4D0];
      }

      v4 = v22;
    }

    else
    {
      v4 = &v21;
    }

    v4[3] = v3;
    goto LABEL_24;
  }

  AirPlayEndpointManager = FigRoutingManagerInternalGetAirPlayEndpointManager();
  v4 = v22;
  if (!AirPlayEndpointManager)
  {
LABEL_24:
    v17 = v4[3];
    if (v17)
    {
      CFRetain(v17);
    }

    goto LABEL_26;
  }

  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v15 = *(*(VTable + 8) + 48);
  if (v15)
  {
    v16 = *(VTable + 8) + 48;
    v15(CMBaseObject, *MEMORY[0x1E69618B0], *MEMORY[0x1E695E480], v4 + 3);
  }

LABEL_26:
  v18 = v22[3];
  _Block_object_dispose(&v21, 8);
  return v18;
}

void sub_1B180DC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingManagerGetEndpointManager(uint64_t a1)
{
  v2 = +[MXEndpointDescriptorCache sharedInstance];

  return [(MXEndpointDescriptorCache *)v2 getEndpointManagerForType:a1];
}

uint64_t FigRoutingManagerInternalGetAirPlayEndpointManager()
{
  v0 = *MEMORY[0x1E69618D0];
  v1 = +[MXEndpointDescriptorCache sharedInstance];

  return [(MXEndpointDescriptorCache *)v1 getEndpointManagerForType:v0];
}

double vaemGetSampleRateForDevice(AudioObjectID a1)
{
  outData = 0.0;
  *&inAddress.mSelector = 0x676C6F626E737274;
  inAddress.mElement = 0;
  ioDataSize = 8;
  PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData);
  result = outData;
  if (PropertyData)
  {
    return 0.0;
  }

  return result;
}

void __FigRouteDiscovererCopyUserSelectionAvailable_block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  v2 = 0;
  if (qword_1EB75D478)
  {
    v3 = &qword_1EB75D560;
  }

  else
  {
    v3 = 240;
  }

  v17 = *MEMORY[0x1E69618B8];
  v4 = *MEMORY[0x1E695E480];
  v5 = *MEMORY[0x1E69618D8];
  v19 = *MEMORY[0x1E69618D0];
  v6 = *MEMORY[0x1E695E4C0];
  v18 = *MEMORY[0x1E69618B0];
  v7 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    Count = *v3;
    if (*v3)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*v3, v2);
    Value = CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_RefKey");
    v21 = 0;
    if (Value)
    {
      CMBaseObject = FigEndpointManagerGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(CMBaseObject, v17, v4, &v21);
      }
    }

    if (FigCFEqual() || FigCFEqual())
    {
      cf = v6;
      v13 = FigEndpointManagerGetCMBaseObject();
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {
        v14(v13, v18, v4, &cf);
      }

      v15 = FigCFEqual() != 0;
      if (cf)
      {
        CFRelease(cf);
      }

      v1 -= v15;
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (!v1)
    {
      *(*(*(a1 + 32) + 8) + 24) = v7;
      return;
    }

    ++v2;
  }
}

uint64_t vaemSetDeviceBufferNumPCMFrames(AudioObjectID a1, int a2, unsigned int a3)
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = a3;
  v12 = 0;
  vaemGetDeviceBufferNumPCMFramesRange(a1, a2, &v13, &v12);
  if (!v6)
  {
    if (v13 > v3)
    {
      v14 = v13;
      v3 = v13;
    }

    if (v3 > v12)
    {
      v14 = v12;
      v3 = v12;
    }
  }

  if (vaemBufferFrameSizeShouldBeRestricted(a1, a2) && (v3 & 0x1F) != 0 && (v3 % 0x18 ? (v7 = v3 % 0x1E == 0) : (v7 = 1), !v7))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = 4294954315;
  }

  else
  {
    if (a2 == 1)
    {
      v9 = 1768845428;
    }

    else
    {
      v9 = 1869968496;
    }

    v15 = 1718839674;
    v16 = v9;
    v17 = 0;
    CMSMVAUtility_AudioObjectSetPropertyData();
    result = 0;
    byte_1EB75D185 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

double vaemGetDeviceBufferNumPCMFramesRange(AudioObjectID a1, int a2, _DWORD *a3, _DWORD *a4)
{
  v9 = 0.0;
  v10 = 0.0;
  if (a2 == 1)
  {
    v6 = 1768845428;
  }

  else
  {
    v6 = 1869968496;
  }

  inAddress.mSelector = 1718843939;
  inAddress.mScope = v6;
  inAddress.mElement = 0;
  ioDataSize = 16;
  if (!AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &v9))
  {
    result = v9;
    v8 = v10;
    *a3 = v9;
    *a4 = v8;
  }

  return result;
}

void vaemVADCurrentBufferFrameSizeListenerGuts_f()
{
  v0 = MXGetNotificationSenderQueue();

  MXDispatchAsync("vaemVADCurrentBufferFrameSizeListenerGuts_f", "CMSessionManager_VAEndpointManager.m", 5656, 0, 0, v0, &__block_literal_global_97);
}

uint64_t cmsmUpdateCurrentActiveRoutesInfo()
{
  FigSimpleMutexLock();
  if (!CMSMUtility_GetNumberOfCurrentOutputPorts())
  {
    v14 = 0;
    theArray = 0;
    v13 = 0;
    cmsmCopyCurrentActiveRoutesInfoForVADUID(0x1F2893B50, &theArray, &v14, &v13);
    if (theArray)
    {
      dword_1EB75E0C8 = CFArrayGetCount(theArray);
      if (dword_1EB75E0C8)
      {
        v0 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v0);
          if (FigCFEqual())
          {
            v2 = 0;
          }

          else
          {
            v2 = ValueAtIndex;
          }

          v3 = CFArrayGetValueAtIndex(v14, v0);
          if (FigCFEqual())
          {
            v4 = 0;
          }

          else
          {
            v4 = v3;
          }

          v5 = CFArrayGetValueAtIndex(v13, v0);
          if (FigCFEqual())
          {
            v6 = 0;
          }

          else
          {
            v6 = v5;
          }

          v8 = v2;
          v9 = v4;
          v10 = v6;
          v11 = 0;
          v12 = 0;
          MXVW_VectorCMSRouteInfoPushBack(qword_1EB75E0C0, &v8);
          ++v0;
        }

        while (v0 < dword_1EB75E0C8);
      }

      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }
    }

    else
    {
      dword_1EB75E0C8 = 0;
    }

    if (v14)
    {
      CFRelease(v14);
      v14 = 0;
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  return FigSimpleMutexUnlock();
}

CFTypeRef CMSMUtility_GetCurrentRouteTypeAtIndex(uint64_t a1)
{
  FigSimpleMutexLock();
  if (dword_1EB75E0C8 <= a1)
  {
    v2 = 0;
  }

  else
  {
    MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, a1, cf);
    v2 = cf[0];
    if (cf[0])
    {
      CFRetain(cf[0]);
      CFAutorelease(v2);
    }
  }

  FigSimpleMutexUnlock();
  return v2;
}

NSObject *MXDispatchUtilityCreateOneShotTimer(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7, uint64_t a8, void *a9, uint64_t a10)
{
  v12 = objc_autoreleasePoolPush();
  v13 = objc_autoreleasePoolPush();
  if (CMSMDeviceState_IsAudiomxd())
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_1();
    }

    if (gSerialQueue == a7)
    {
      CreateACQDispatchID();
    }
  }

  objc_autoreleasePoolPop(v13);
  objc_autoreleasePoolPop(v12);
  DispatchSourceBlock = FigDispatchCreateDispatchSourceBlock();
  v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a7);
  v16 = dispatch_time(0, (a1 * 1000000000.0));
  dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_set_context(v15, a9);
  dispatch_source_set_event_handler(v15, DispatchSourceBlock);
  _Block_release(DispatchSourceBlock);
  if (a10)
  {
    v17 = FigDispatchCreateDispatchSourceBlock();
    dispatch_source_set_cancel_handler(v15, v17);
    _Block_release(v17);
  }

  dispatch_resume(v15);
  return v15;
}

uint64_t CMSMUtility_CopyActivePhoneCallInfo()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v1)
  {
    v2 = *v10;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v10 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v9 + 1) + 8 * i);
        if ([v4 isActive] && objc_msgSend(v4, "hasPhoneCallBehavior") && (objc_msgSend(v4, "isIDSMXCoreSession") & 1) == 0)
        {
          v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(v4, "audioSessionID")}];
          v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v4, "clientPriority")}];
          v1 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"AudioSessionID", v6, @"ClientPriority", 0}];

          goto LABEL_13;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v7 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded()
{
  if (CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_onceToken != -1)
  {
    CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_cold_1();
  }

  v0 = CMSMUtility_CopyActivePhoneCallInfo();
  v1 = CMSMUtility_PhoneCallOrRingtoneExists();
  [CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfoLock lock];
  if (v0 && ![v0 isEqualToDictionary:CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfo])
  {
    [CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfoLock unlock];
    goto LABEL_9;
  }

  if (!CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfo)
  {
    [CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfoLock unlock];
    goto LABEL_11;
  }

  v2 = [CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfo isEqualToDictionary:v0];
  [CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfoLock unlock];
  if ((v2 & 1) == 0)
  {
LABEL_9:
    v3 = [objc_msgSend(v0 objectForKey:{@"ClientPriority", "intValue"}] == 10;
    v4 = MEMORY[0x1E695DF20];
    v5 = [MEMORY[0x1E696AD98] numberWithBool:v0 != 0];
    +[MXSystemController notifyAll:payload:dontPostIfSuspended:](MXSystemController, "notifyAll:payload:dontPostIfSuspended:", @"CallIsActiveDidChange", [v4 dictionaryWithObjectsAndKeys:{v5, @"CallActive", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v3), @"CallIsHighPriority", 0}], 0);
  }

LABEL_11:
  v6 = v1 != 0;
  if (CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sPhoneCallOrRingtoneExists != v6)
  {
    CMSMNotificationUtility_PostVoicePromptStyleDidChange();
  }

  [CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfoLock lock];

  CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfo = v0;
  result = [CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sActivePhoneCallInfoLock unlock];
  CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded_sPhoneCallOrRingtoneExists = v6;
  return result;
}

void CMSUtility_SendSessionVolumeToAudioStatistics(void *a1, int a2, const void *a3)
{
  v7 = 0.0;
  if ([a1 displayID])
  {
    [a1 displayID];
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  }

  else
  {
    CStringPtrAndBufferToFree = 0;
  }

  CMSUtility_ComputePlaybackVolume(a1, &v7);
  CMSUtility_SendVolumeChangeEventToAudioStatistics(a1, CStringPtrAndBufferToFree, [a1 audioCategory], a3, a2, 0, v7);
  free(0);
}

void CMSUtility_SendVolumeChangeEventToAudioStatistics(void *a1, const char *a2, uint64_t a3, const void *a4, int a5, int a6, float a7)
{
  v14 = CMSMUtility_CopyMatchingSessions(0, CMSUtilityPredicate_IsActive, 0);
  v15 = v14;
  if (v14)
  {
    Count = CFArrayGetCount(v14);
  }

  else
  {
    Count = 0;
  }

  value = 0;
  v22 = 0;
  if (a1)
  {
    PVMCopyVolumeCategoryAndMode(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [a1 audioCategory]), 0, &v22, 0);
  }

  PVMCopyVolumeCategoryAndMode([[MXSessionManager getUncustomizedCategory:"getUncustomizedCategory:" sharedInstance:0];
  v17 = cmsutility_createVolumeChangeMessageForAudioStatistics(a2, value, a4, a5, a6, a7);
  if (a1 && [a1 isActive] && FigCFEqual())
  {
    CMSUtility_SendSessionStateAndVolumeReportToAudioStatistics(a1, v17, 0xEu, 5u, 1, a6);
  }

  else if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v15, i);
      cf = 0;
      PVMCopyVolumeCategoryAndMode(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [ValueAtIndex audioCategory]), 0, &cf, 0);
      [ValueAtIndex displayID];
      FigCFDictionarySetValue();
      if ([ValueAtIndex audioCategory])
      {
        PVMCopyVolumeCategoryAndMode(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [ValueAtIndex audioCategory]), 0, &value, 0);
        CFDictionarySetValue(v17, @"MXSessionVolumeActiveSessionCategory", value);
      }

      CMSUtility_SendSessionStateAndVolumeReportToAudioStatistics(ValueAtIndex, v17, 0xEu, 5u, 1, a6);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  if (v22)
  {
    CFRelease(v22);
    v22 = 0;
  }

  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v17)
  {
    CFRelease(v17);
  }
}

id PVMCopyVolumeCategoryAndMode(const __CFString *a1, const void *a2, void *a3, void *a4)
{
  MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);

  return pvmCreateSeparateCategoryAndModeStrings(MappedCategoryWithModeAppended, a3, a4);
}

uint64_t FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(uint64_t a1)
{
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v2 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v3 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v3 = 504;
    }

    v4 = *v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_CopySystemMusicContextUUID_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopySystemMusicContextUUID", "FigRoutingManagerContextUtilities.m", 4585, 0, 0, v4, v6);
  }

  return 0;
}

void CMSUtility_RouteToPreferredRouteIfRequired(id a1, unsigned int a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    LocalSessionPriority = CMSM_GetLocalSessionPriority(a1, 1);
    if (a2)
    {
      v7 = [a1 isActive];
      if (MX_FeatureFlags_IsSmartRoutingOnActivationEnabled())
      {
        if (!v7)
        {
          goto LABEL_32;
        }
      }

      else if (!v7 || ![a1 isPlaying])
      {
        goto LABEL_32;
      }

      if (LocalSessionPriority <= a2)
      {
        goto LABEL_32;
      }
    }

    if (FigPredictedRouting_IsTimerActive() && LocalSessionPriority == 501 || !FigPredictedRouting_IsTimerActive())
    {
      v8 = LocalSessionPriority != 100;
      if (MX_FeatureFlags_IsSmartRoutingOnActivationEnabled() && LocalSessionPriority != 100)
      {
        v9 = +[MXSessionManager sharedInstance];
        v10 = [a1 audioDestinationPriority];
        if (v10)
        {
          v11 = [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v10];
        }

        else
        {
          v11 = @"VirtualAudioDevice_Default";
        }

        v12 = [(MXSessionManager *)v9 copyHighestPriorityActiveSession:v11 deviceIdentifier:0];
        v8 = v12 == a1;
      }

      IsSessionRouteEligibleForTipi = CMSUtility_IsSessionRouteEligibleForTipi(a1);
      IsAnyRouteBTManagedAndInEar = CMSMVAUtility_IsAnyRouteBTManagedAndInEar();
      IsBluetoothSharingSessionEnabledForMediaPlayback = CMSUtility_IsBluetoothSharingSessionEnabledForMediaPlayback();
      if (v8 && CMSUtility_IsSessionEligibleToPlayOverSharedAudioRoute(a1, 1) && ![a1 doesntActuallyPlayAudio] && IsSessionRouteEligibleForTipi && IsAnyRouteBTManagedAndInEar && !IsBluetoothSharingSessionEnabledForMediaPlayback)
      {
        if ((MX_FeatureFlags_IsSmartRoutingOnActivationEnabled() || [a1 shouldAttemptSmartRoutingHijackForMusicApp] && (a3 == 10 || a3 == 7)) && !CMSUtility_IsSessionPlayStateEligibleForTipi(a1))
        {
          if (dword_1EB75DE40)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v18 = -[MXAudioAccessoryServices copyPreferredDeviceAddress:bundleID:isHypotheticalQuery:reason:](+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices, "sharedInstance"), "copyPreferredDeviceAddress:bundleID:isHypotheticalQuery:reason:", LocalSessionPriority, [a1 displayID], 0, cmsutility_GetRouteToPreferredRouteRequestReasonString(a3));
          CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
          v20 = vaeCopyDeviceIdentifierFromVADPort(CurrentOutputPortAtIndex);
          if (MXCFStringHasCaseInsensitivePrefix(v20, v18))
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
              v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            CMSMVAUtility_RouteToPreferredDeviceAddressIfInEar(v18);
          }

          if (v20)
          {
            CFRelease(v20);
          }

          if (v18)
          {
            CFRelease(v18);
          }
        }
      }

      else if (dword_1EB75DE40)
      {
LABEL_31:
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else if (dword_1EB75DE40)
    {
      goto LABEL_31;
    }
  }

LABEL_32:
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t FigPredictedRouting_IsTimerActive()
{
  v4 = *MEMORY[0x1E69E9840];
  if (predictedRouting_initialize_onceToken != -1)
  {
    FigPredictedRouting_IsSupported_cold_1();
  }

  FigSimpleMutexLock();
  if (gPRS_2)
  {
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v1 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  FigSimpleMutexUnlock();
  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

BOOL CMSUtility_IsSessionRouteEligibleForTipi(void *a1)
{
  v2 = [a1 allowedPortTypes];
  v3 = [a1 activationContext];
  v4 = [a1 prefersBluetoothHighQualityContentCapture];
  if (a1)
  {
    v5 = [a1 audioCategory];
    v6 = [a1 audioMode];
  }

  else
  {
    v5 = [+[MXSessionManager sharedInstance](MXSessionManager currentAudioCategory];
    v6 = [+[MXSessionManager sharedInstance](MXSessionManager currentAudioMode];
  }

  v7 = v6;
  if (FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent([a1 routingContextUUID]))
  {
    v8 = 0;
    goto LABEL_6;
  }

  if (!CMSMDeviceState_RingerIsOn(1) && (FigCFEqual() || FigCFEqual() || FigCFEqual()))
  {
    v8 = CMSMUtility_GetCurrentOutputPortAtIndex(0) == 0;
    goto LABEL_6;
  }

  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v5);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(v7);
  v12 = vaemCopyVADOutputPortsForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, v3, v2, v4);
  v13 = v12;
  if (v12)
  {
    Count = CFArrayGetCount(v12);
  }

  else
  {
    Count = 0;
  }

  v15 = cmsmCopyWirelessPortsArrayForRouteConfiguration(v5, v7, v2, v4);
  v16 = v15;
  if (v15)
  {
    v17 = CFArrayGetCount(v15);
  }

  else
  {
    v17 = 0;
  }

  if (Count < 1)
  {
    v8 = 0;
    goto LABEL_38;
  }

  v28 = v7;
  v29 = v3;
  v30 = v2;
  v18 = 0;
  v31 = Count;
  v32 = v13;
  while (1)
  {
    PortAtIndex = CMSMVAUtility_GetPortAtIndex(v13, v18);
    v20 = PortAtIndex;
    PortTypeFromPortID = vaeGetPortTypeFromPortID(PortAtIndex);
    v22 = vaeCopyVADEndpointTypeForPort(v20);
    if (PortTypeFromPortID == 1885565807 || PortTypeFromPortID == 1886613611 || PortTypeFromPortID == 1886545251)
    {
      v8 = 1;
      v3 = v29;
      v2 = v30;
      v7 = v28;
      if (!v22)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    cf = v22;
    if (FigCFEqual() && v17 >= 1)
    {
      v8 = 0;
      v23 = 1;
      do
      {
        v24 = CMSMVAUtility_GetPortAtIndex(v16, v23 - 1);
        v25 = vaeGetPortTypeFromPortID(v24);
        v26 = (v20 != v24) & [+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices isPortManaged:"isPortManaged:", v24]& (PortTypeFromPortID == v25);
        if (v26)
        {
          v8 = 1;
        }

        if (v26)
        {
          break;
        }
      }

      while (v23++ < v17);
      Count = v31;
      v13 = v32;
      if (v8)
      {
        break;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (++v18 == Count)
    {
      v8 = 0;
      v3 = v29;
      v2 = v30;
      v7 = v28;
      goto LABEL_38;
    }
  }

  v3 = v29;
  v2 = v30;
  v7 = v28;
  v22 = cf;
  if (cf)
  {
LABEL_36:
    CFRelease(v22);
  }

LABEL_38:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v16)
  {
    CFRelease(v16);
  }

LABEL_6:

  return v8;
}

CFMutableArrayRef CMSMVAUtility_CopyWirelessPortsSupportingMultipleConnections()
{
  v0 = CMSMVAUtility_CopyConnectedWirelessPorts();
  if (v0)
  {
    v1 = v0;
    Count = CFArrayGetCount(v0);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
        if (vaeDoesPortSupportMultipleConnections(valuePtr))
        {
          v6 = CFArrayGetValueAtIndex(v1, i);
          CFArrayAppendValue(Mutable, v6);
        }
      }
    }

    CFRelease(v1);
    return Mutable;
  }

  else
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E695E9C0];

    return CFArrayCreateMutable(v8, 0, v9);
  }
}

__CFArray *CMSMVAUtility_CopyConnectedWirelessPorts()
{
  v0 = vaemCopyConnectedPortsForPortTypeAndScope(0, 0x6F757470u);
  v1 = v0;
  if (!v0)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  Count = CFArrayGetCount(v0);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
      v6 = ValueAtIndex;
      if (ValueAtIndex)
      {
        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
        ValueAtIndex = valuePtr;
      }

      if (vaeGetConnectionTypeForPort(ValueAtIndex) == 1885544823)
      {
        CFArrayAppendValue(Mutable, v6);
      }
    }
  }

  if (Mutable)
  {
LABEL_12:
    if (!CFArrayGetCount(Mutable))
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

LABEL_14:
  if (v1)
  {
    CFRelease(v1);
  }

  return Mutable;
}

uint64_t CMSMVAUtility_IsAnyRouteBTManagedAndInEar()
{
  v0 = CMSMVAUtility_CopyWirelessPortsSupportingMultipleConnections();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Count = CFArrayGetCount(v0);
  if (Count < 1)
  {
LABEL_7:
    v7 = 0;
  }

  else
  {
    v3 = Count;
    v4 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      v6 = valuePtr;
      if ([+[MXAudioAccessoryServices isPortManaged:"isPortManaged:"]
      {
        if (CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(v6))
        {
          break;
        }
      }

      if (v3 == ++v4)
      {
        goto LABEL_7;
      }
    }

    v7 = 1;
  }

  CFRelease(v1);
  return v7;
}

uint64_t vaeDoesPortSupportMultipleConnections(uint64_t result)
{
  if (result)
  {
    *&v1.mSelector = 0x676C6F626F736163;
    v1.mElement = 0;
    return AudioObjectHasProperty(result, &v1);
  }

  return result;
}

uint64_t CMSUtility_IsBluetoothSharingSessionEnabledForMediaPlayback()
{
  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(@"Audio/Video");
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(@"Default");
  v2 = vaemCopyVADOutputPortsForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, 0, 0, 0);
  IsBluetoothSharingSessionEnabled = CMSMVAUtility_IsBluetoothSharingSessionEnabled(v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return IsBluetoothSharingSessionEnabled;
}

__CFString *cmsutility_GetRouteToPreferredRouteRequestReasonString(int a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"Not defined yet";
  }

  else
  {
    return off_1E7AEC590[a1 - 1];
  }
}

uint64_t cmsmUpdateFakeSharedAudioRouteAsPicked(int a1, int a2, int a3, int a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a2;
  FigSimpleMutexLock();
  v8 = word_1EB75E0E0;
  if (a2 == 1919184754)
  {
    LOBYTE(word_1EB75E0E0) = 1;
    FigSimpleMutexUnlock();
    if (v8 == 1)
    {
      goto LABEL_10;
    }

    cmsmUpdateEnableSharedAudioRouteSyntheticMute(0, 0, 0, 0, 0, 1);
  }

  else
  {
    if (!word_1EB75E0E0 || !(a3 | a1 | a4))
    {
      FigSimpleMutexUnlock();
      goto LABEL_10;
    }

    LOBYTE(word_1EB75E0E0) = 0;
    FigSimpleMutexUnlock();
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t cmsTryToTakeControl(id a1)
{
  v102 = *MEMORY[0x1E69E9840];
  v2 = [a1 hwControlFlags];
  v3 = [a1 hwControlFlags];
  v4 = -[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [a1 audioCategory]);
  v5 = [a1 dontTakeOverHardware];
  if (v4 || v5)
  {
    if (dword_1EB75DE40)
    {
      v90 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      goto LABEL_89;
    }

LABEL_90:
    v10 = 0;
    goto LABEL_91;
  }

  if (CMSMVAUtility_IsAdditiveRoutingEnabled() && [a1 isRoutedToOnDemandVAD])
  {
    if (dword_1EB75DE40)
    {
      v90 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
LABEL_89:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_90;
    }

    goto LABEL_90;
  }

  if (CMSMDeviceState_HasMonoSpeakerConfiguration() && dword_1EB75E118 && (FigCFArrayContainsValue() || FigCFArrayContainsValue()))
  {
    if (dword_1EB75DE40)
    {
      v90 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      goto LABEL_89;
    }

    goto LABEL_90;
  }

  v9 = v2;
  v10 = v2 | HIWORD(v3);
  if ([a1 prefersToTakeHWControlFlagsFromAnotherSession])
  {
    v11 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v81 objects:v100 count:16];
    if (v12)
    {
      v13 = v12;
      v72 = v9;
      v75 = ~v9;
      v73 = ~v10;
      v74 = v3;
      v14 = *v82;
      v76 = v11;
      while (1)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v82 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v81 + 1) + 8 * i);
          [v16 setSavedCurrentlyControllingFlags:{objc_msgSend(v16, "currentlyControllingFlags", v70, v71)}];
          if (v16 != a1)
          {
            if ([v16 isActive])
            {
              if (!CMSMDeviceState_ItsAHomePod() || (CMSUtility_GetCurrentAudioDestination(a1), CMSUtility_GetCurrentAudioDestination(v16), FigCFEqual()))
              {
                if (CMSMVAUtility_IsAdditiveRoutingEnabled() && [v16 isRoutedToOnDemandVAD])
                {
                  if (dword_1EB75DE40)
                  {
                    v90 = 0;
                    type = OS_LOG_TYPE_DEFAULT;
                    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v18 = v90;
                    if (os_log_type_enabled(v17, type))
                    {
                      v19 = v18;
                    }

                    else
                    {
                      v19 = v18 & 0xFFFFFFFE;
                    }

                    if (v19)
                    {
                      v20 = [v16 clientName];
                      v21 = [a1 clientName];
                      v92 = 136315650;
                      v93 = "cmsTryToTakeControl";
                      v94 = 2114;
                      v95 = v20;
                      v96 = 2114;
                      *v97 = v21;
                      LODWORD(v71) = 32;
                      v70 = &v92;
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v11 = v76;
                  }
                }

                else
                {
                  v22 = [v16 clientPriority];
                  if (v22 > [a1 clientPriority])
                  {
                    v10 = v10 & ~[v16 currentlyControllingFlags];
                    continue;
                  }

                  v23 = [v16 hwControlFlags];
                  if ([v16 isPlaying] && (objc_msgSend(v16, "mixesWithEveryone") & 1) == 0)
                  {
                    if (CMSUtility_AreSessionsRoutedToTheSamePhysicalDevice(a1, v16) || (CMSUtility_GetCurrentAudioDestination(v16), FigCFEqual()))
                    {
                      v26 = v10;
                      v27 = [v16 currentlyControllingFlags] & (v23 | v75);
                      if ([+[MXSessionManager canSessionsCoexistDueToMediaMultitasking:"canSessionsCoexistDueToMediaMultitasking:victim:"]
                      {
                        if (CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1) && !CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v16))
                        {
                          if (dword_1EB75DE40)
                          {
                            v90 = 0;
                            type = OS_LOG_TYPE_DEFAULT;
                            v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                            v40 = v90;
                            if (os_log_type_enabled(v39, type))
                            {
                              v41 = v40;
                            }

                            else
                            {
                              v41 = v40 & 0xFFFFFFFE;
                            }

                            if (v41)
                            {
                              v42 = [a1 clientName];
                              v43 = [v16 clientName];
                              v92 = 136315650;
                              v93 = "cmsTryToTakeControl";
                              v94 = 2114;
                              v95 = v42;
                              v96 = 2114;
                              *v97 = v43;
                              LODWORD(v71) = 32;
                              v70 = &v92;
                              _os_log_send_and_compose_impl();
                            }

                            fig_log_call_emit_and_clean_up_after_send_and_compose();
                          }

                          v27 &= v73;
                        }

                        else if (([v16 hasAudioTrack] & 1) == 0)
                        {
                          v28 = CMSMNP_CopyNowPlayingAppSession();
                          if (v28 != v16)
                          {
                            if (dword_1EB75DE40)
                            {
                              v90 = 0;
                              type = OS_LOG_TYPE_DEFAULT;
                              v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                              v30 = v90;
                              v31 = os_log_type_enabled(v29, type);
                              v32 = v30 & 0xFFFFFFFE;
                              if (v31)
                              {
                                v32 = v30;
                              }

                              if (v32)
                              {
                                v33 = [v16 clientName];
                                v92 = 136315394;
                                v93 = "cmsTryToTakeControl";
                                v94 = 2114;
                                v95 = v33;
                                LODWORD(v71) = 22;
                                v70 = &v92;
                                _os_log_send_and_compose_impl();
                              }

                              fig_log_call_emit_and_clean_up_after_send_and_compose();
                            }

                            v27 &= v73;
                          }
                        }
                      }

                      v10 = v26 & ~v27;
                      goto LABEL_85;
                    }
                  }

                  else
                  {
                    v24 = CMSMUtility_GetSharePlayCapableActiveCallSession();
                    if (!v24 || v24 == a1 || CMSUtility_IsSharePlayCapableMediaSession(a1) || !CMSUtility_IsSharePlayCapableMediaSession(v16))
                    {
                      if ([v16 prefersToTakeHWControlFlagsFromAnotherSession])
                      {
                        v25 = [a1 clientPriority];
                        if (v25 <= [v16 clientPriority])
                        {
                          v10 = v10 & ~v23;
                        }

                        else
                        {
                          v10 = v10;
                        }
                      }

                      else
                      {
                        v10 = v23 | v10;
                      }

                      if (([v16 isPlaying] & 1) == 0)
                      {
                        if ([objc_msgSend(v16 "audioCategory")])
                        {
                          v10 = 0;
                        }

                        else
                        {
                          v10 = v10;
                        }
                      }

LABEL_85:
                      [v16 setCurrentlyControllingFlags:{objc_msgSend(v16, "currentlyControllingFlags", v70, v71) & ~v10}];
                      [v16 setMustRestoreCurrentlyControllingFlags:1];
                      continue;
                    }

                    if (dword_1EB75DE40)
                    {
                      v90 = 0;
                      type = OS_LOG_TYPE_DEFAULT;
                      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v35 = v90;
                      if (os_log_type_enabled(v34, type))
                      {
                        v36 = v35;
                      }

                      else
                      {
                        v36 = v35 & 0xFFFFFFFE;
                      }

                      if (v36)
                      {
                        v37 = [v16 clientName];
                        v38 = [a1 clientName];
                        v92 = 136315650;
                        v93 = "cmsTryToTakeControl";
                        v94 = 2114;
                        v95 = v37;
                        v96 = 2114;
                        *v97 = v38;
                        LODWORD(v71) = 32;
                        v70 = &v92;
                        _os_log_send_and_compose_impl();
                      }

                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }

                    v10 = v10 & 0xFFFFFFEF;
                  }
                }
              }
            }

            else if ([v16 currentlyControllingFlags])
            {
              [v16 setCurrentlyControllingFlags:0];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v81 objects:v100 count:16];
        if (!v13)
        {
          goto LABEL_88;
        }
      }
    }
  }

  else
  {
    if (CMSMDeviceState_IsVoiceOverOn() || CMSystemSoundManager_GetNumberOfSystemSoundsPlayingAudio())
    {
      v10 = v2 & 0xFFEF | HIWORD(v3) & 0xFFFFFFEF;
    }

    v11 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v46 = [v11 countByEnumeratingWithState:&v85 objects:v101 count:16];
    if (v46)
    {
      v47 = v46;
      v72 = v2;
      v48 = *v86;
      v49 = (v3 & 0x100000 | v2 & 0x10) == 0;
      v74 = v3;
      v50 = (v3 & 0x20000 | v2 & 2) == 0;
LABEL_97:
      v51 = 0;
      while (1)
      {
        if (*v86 != v48)
        {
          objc_enumerationMutation(v11);
        }

        v52 = *(*(&v85 + 1) + 8 * v51);
        if (v52 != a1 && [*(*(&v85 + 1) + 8 * v51) isActive])
        {
          if ([v52 prefersToTakeHWControlFlagsFromAnotherSession])
          {
            if (([v52 hwControlFlags] & 2) != 0)
            {
              v10 = v10 & 0xFFFFFFFD;
            }

            else
            {
              v10 = v10;
            }
          }

          CMSUtility_GetCurrentAudioDestination(a1);
          CMSUtility_GetCurrentAudioDestination(v52);
          if (FigCFEqual())
          {
            if (([v52 currentlyControllingFlags] & 0x10) == 0 || v49)
            {
              v10 = v10;
            }

            else
            {
              v10 = v10 & 0xFFFFFFEF;
            }

            if (([v52 currentlyControllingFlags] & 2) != 0)
            {
              if (v50)
              {
                v10 = v10;
              }

              else
              {
                v10 = v10 & 0xFFFFFFFD;
              }
            }
          }

          else if (CMSMVAUtility_DoesCurrentOutputPortSupportSoftwareVolume())
          {
            v53 = [v52 currentlyControllingFlags] & 0x10;
            if ((v74 & 0x100000) == 0 || v53 == 0)
            {
              v10 = v10;
            }

            else
            {
              v10 = v10 & 0xFFFFFFEF;
            }
          }
        }

        if (!v10)
        {
          break;
        }

        if (v47 == ++v51)
        {
          v47 = [v11 countByEnumeratingWithState:&v85 objects:v101 count:16];
          if (v47)
          {
            goto LABEL_97;
          }

          break;
        }
      }

LABEL_88:
      v3 = v74;
      v9 = v72;
    }
  }

  if ((v9 & ~v10) != 0)
  {
    if (dword_1EB75DE40)
    {
      v90 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v56 = v90;
      if (os_log_type_enabled(v55, type))
      {
        v57 = v56;
      }

      else
      {
        v57 = v56 & 0xFFFFFFFE;
      }

      if (v57)
      {
        v58 = HIWORD(v3);
        v59 = [a1 clientName];
        FlagsString = CMSMUtility_GetFlagsString(v9);
        v61 = CMSMUtility_GetFlagsString(v58);
        v92 = 136316162;
        v93 = "cmsTryToTakeControl";
        v94 = 2114;
        v95 = v59;
        v96 = 1024;
        *v97 = v10;
        *&v97[4] = 2082;
        *&v97[6] = FlagsString;
        v98 = 2082;
        v99 = v61;
        LODWORD(v71) = 48;
        v70 = &v92;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v62 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList:v70];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v63 = [v62 countByEnumeratingWithState:&v77 objects:v91 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v78;
      do
      {
        for (j = 0; j != v64; ++j)
        {
          if (*v78 != v65)
          {
            objc_enumerationMutation(v62);
          }

          v67 = *(*(&v77 + 1) + 8 * j);
          if ([v67 mustRestoreCurrentlyControllingFlags])
          {
            [v67 setCurrentlyControllingFlags:{objc_msgSend(v67, "savedCurrentlyControllingFlags")}];
          }

          [v67 setSavedCurrentlyControllingFlags:0];
        }

        v64 = [v62 countByEnumeratingWithState:&v77 objects:v91 count:16];
      }

      while (v64);
    }

    v10 = 0;
  }

  if ([objc_msgSend(a1 audioCategory])
  {
    v68 = CMSUtility_IsPlayingToSystemSoundLocalVAD(a1) != 0;
    if (v10)
    {
      goto LABEL_150;
    }
  }

  else
  {
    v68 = 0;
    if (v10)
    {
      goto LABEL_150;
    }
  }

  if (!v68)
  {
    if (MX_FeatureFlags_IsAudioFormatArbitrationEnabled())
    {
      cmsmUpdateDeviceAudioFormatConfigIfNeeded(1);
    }

    goto LABEL_151;
  }

LABEL_150:
  cmsTakeControl(a1, v10);
LABEL_151:
  if ([a1 isSharePlayMediaSession] && CMSMUtility_IsSharePlayCallSessionActive())
  {
    VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([a1 audioMode]);
    CMSMVAUtility_SetSharePlayMediaSessionInfoOnVA(VADModeFromFigModeName, [a1 aggregateDeviceClockUID]);
  }

LABEL_91:
  v44 = *MEMORY[0x1E69E9840];
  return v10;
}

void *CMSUtility_CopyActiveDuckerForSession(void *a1)
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
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      if ([v7 isActive])
      {
        if ([v7 interruptionStyle] == 32 && CMSUtilityPredicate_ShouldDuck(v7, a1))
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v7 = 0;
  }

  v8 = v7;

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t MX_FeatureFlags_IsOffloadActivationOffACQEnabled()
{
  if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsOffloadActivationOffACQEnabled_cold_1();
  }

  return MX_FeatureFlags_IsOffloadActivationOffACQEnabled_isOffloadActivationOffACQEnabled;
}

uint64_t MX_FeatureFlags_IsAsyncDuckingEnabled()
{
  if (MX_FeatureFlags_IsAsyncDuckingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAsyncDuckingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAsyncDuckingEnabled_isAsyncDuckingEnabled;
}

uint64_t CMSMUtility_SomeClientIsPlaying()
{
  v12 = *MEMORY[0x1E69E9840];
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
        if ([v4 isPlaying] && !objc_msgSend(v4, "doesntActuallyPlayAudio"))
        {
          v1 = 1;
          goto LABEL_12;
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

LABEL_12:

  v5 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t CMSMNotificationUtility_PostSomeClientIsPlayingDidChange(uint64_t result)
{
  v1 = result;
  if (!result)
  {
    result = CMSMUtility_SomeNonMixableClientIsPlaying();
    v1 = result;
  }

  if (CMSMNotificationUtility_PostSomeClientIsPlayingDidChange_cachedSomeClientIsPlaying != v1)
  {
    result = +[MXSystemController notifyAll:payload:dontPostIfSuspended:](MXSystemController, "notifyAll:payload:dontPostIfSuspended:", @"SomeClientIsPlayingDidChange", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v1 != 0), @"IsPlaying", 0}], 0);
    CMSMNotificationUtility_PostSomeClientIsPlayingDidChange_cachedSomeClientIsPlaying = v1;
  }

  return result;
}

void CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange()
{
  if (CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange_onceToken != -1)
  {
    CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange_cold_1();
  }

  PlayingSessionsDescription = CMSMNotificationUtility_CreatePlayingSessionsDescription();
  v1 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{PlayingSessionsDescription, @"Sessions", 0}];

  [CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange_sLastNotificationPayloadLock lock];
  if (([CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange_sLastNotificationPayload isEqualToDictionary:v1] & 1) == 0)
  {
    [MXSystemController notifyAll:@"SomeSessionIsPlayingDidChange" payload:v1 dontPostIfSuspended:0];

    CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange_sLastNotificationPayload = v1;
  }

  [CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange_sLastNotificationPayloadLock unlock];
}

id CMSMNotificationUtility_CreatePlayingSessionsDescription()
{
  v30 = *MEMORY[0x1E69E9840];
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v25;
    v16 = *v25;
    v17 = v0;
    do
    {
      v4 = 0;
      v19 = v2;
      do
      {
        if (*v25 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v24 + 1) + 8 * v4);
        if ([v5 isPlaying] && (objc_msgSend(v5, "hasAudioCategory:", @"SystemSoundsAndHaptics") & 1) == 0)
        {
          v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(objc_msgSend(v5, "clientPID"), "unsignedIntValue")), @"ClientPID"}];
          [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(v5, "audioSessionID")), @"AudioSessionID"}];
          [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v5) != 0), @"IsNowPlayingEligible"}];
          v8 = [v5 copyMXSessionList];
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v21;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v21 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v20 + 1) + 8 * i);
                if ([v13 getIsPlaying])
                {
                  [v7 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", objc_msgSend(v13, "getID"))}];
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v10);
          }

          if ([v7 count])
          {
            [v6 setObject:v7 forKey:@"MXSessionIDs"];
          }

          [v18 addObject:v6];

          v3 = v16;
          v0 = v17;
          v2 = v19;
        }

        ++v4;
      }

      while (v4 != v2);
      v2 = [v0 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v2);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v18;
}

void predictedRouting_UpdatePredictedRoute(int a1, int IsSystemAudioRouteBuiltIn)
{
  v102[16] = *MEMORY[0x1E69E9840];
  if (predictedRouting_initialize_onceToken != -1)
  {
    FigPredictedRouting_IsSupported_cold_1();
  }

  v4 = [+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices isAnyManagedDeviceConnected];
  if (a1 != 6)
  {
    IsSystemAudioRouteBuiltIn = FigRoutingManagerUtilities_IsSystemAudioRouteBuiltIn();
  }

  v5 = [+[MXSessionManager sharedInstance](MXSessionManager isSmartRoutingEligibleSessionAvailable];
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&cf);
  IsContextSystemMusicAndIndependent = FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(cf);
  v7 = &qword_1EB75D000;
  v70 = v4;
  if (a1 <= 6)
  {
    if (a1 > 4)
    {
      if (a1 != 5)
      {
        v9 = IsContextSystemMusicAndIndependent;
        if (predictedRouting_UpdatePredictedRoute_sCachedRouteIsBuiltIn == IsSystemAudioRouteBuiltIn)
        {
          v10 = 1;
        }

        else
        {
          predictedRouting_UpdatePredictedRoute_sCachedRouteIsBuiltIn = IsSystemAudioRouteBuiltIn;
          v10 = FigPredictedRouting_IsPreemptivePortChanged() != 0;
        }

        LOBYTE(v71) = predictedRouting_UpdatePredictedRoute_sSystemMusicIsIndependent != v9;
        if (predictedRouting_UpdatePredictedRoute_sSystemMusicIsIndependent == v9)
        {
          v11 = 0;
        }

        else
        {
          predictedRouting_UpdatePredictedRoute_sSystemMusicIsIndependent = v9;
          v11 = 1;
        }

        HIDWORD(v71) = v11;
        if (v10)
        {
          v8 = 0;
          goto LABEL_38;
        }

        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (a1 == 1)
    {
      if (predictedRouting_UpdatePredictedRoute_sCachedIsBTManagedPortPresent == v4)
      {
LABEL_21:
        v8 = 0;
        v71 = 0;
        goto LABEL_38;
      }
    }

    else
    {
      LOBYTE(v71) = 0;
      HIDWORD(v71) = 0;
      v8 = 0;
      if (a1 != 2)
      {
        goto LABEL_31;
      }

      if (predictedRouting_UpdatePredictedRoute_sCachedIsBTManagedPortPresent == v4)
      {
        goto LABEL_29;
      }
    }

    predictedRouting_UpdatePredictedRoute_sCachedIsBTManagedPortPresent = v4;
LABEL_29:
    v71 = 0;
    v8 = 0;
    if (FigPredictedRouting_IsPreemptivePortChanged())
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  if ((a1 - 8) < 3)
  {
    goto LABEL_29;
  }

  if (a1 == 7)
  {
    if (predictedRouting_UpdatePredictedRoute_sCachedSessionIsPlaying == v5)
    {
      goto LABEL_21;
    }

    predictedRouting_UpdatePredictedRoute_sCachedSessionIsPlaying = v5;
    goto LABEL_29;
  }

  LOBYTE(v71) = 0;
  HIDWORD(v71) = 0;
  v8 = 0;
  if (a1 == 11)
  {
LABEL_30:
    v8 = FigPredictedRouting_IsTimerActive() ^ 1;
  }

LABEL_31:
  if (a1 == 3)
  {
    *v75 = 0;
    v76 = 0;
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices copyPreferredDeviceAddress:"copyPreferredDeviceAddress:andPreemptivePortInfo:" andPreemptivePortInfo:v75, &v76];
    v13 = FigRoutingManagerCopyEndpointWithDeviceID(*v75, 0, *MEMORY[0x1E69618D8], 0);

    *v75 = 0;
    if (v13)
    {
      v14 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(v13, 0);
      v15 = v14;
      v16 = &qword_1EB75D000;
      v17 = &qword_1EB75D000;
      if (v14)
      {
        CFRetain(v14);
        if (v12)
        {
          CFRelease(v12);
        }

        v12 = v15;
        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v12 = v15;
          v16 = &qword_1EB75D000;
          v17 = &qword_1EB75D000;
        }
      }

      CFRelease(v13);
      if (!v76)
      {
        goto LABEL_77;
      }

      FigPredictedRouting_SetPreemptivePortChanged(1);
      if (v15)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v16 = &qword_1EB75D000;
      v17 = &qword_1EB75D000;
      if (!v76)
      {
LABEL_77:
        v22 = v12;

        goto LABEL_78;
      }

      FigPredictedRouting_SetPreemptivePortChanged(1);
    }

    v30 = [v76 objectForKey:{@"RouteUID", v67, v68}];
    if (v30)
    {
      [(__CFDictionary *)v12 setObject:v30 forKey:@"RouteUID"];
    }

    v31 = [v76 objectForKey:@"RouteName"];
    if (v31)
    {
      [(__CFDictionary *)v12 setObject:v31 forKey:@"RouteName"];
    }

    v32 = [v76 objectForKey:@"RouteModel"];
    if (v32)
    {
      [(__CFDictionary *)v12 setObject:v32 forKey:@"RouteModel"];
    }

    v33 = [v76 objectForKey:@"BatteryLeft"];
    if (v33)
    {
      [(__CFDictionary *)v12 setObject:v33 forKey:@"BTDetails_BatteryLevelLeft"];
    }

    v34 = [v76 objectForKey:@"BatteryRight"];
    if (v34)
    {
      [(__CFDictionary *)v12 setObject:v34 forKey:@"BTDetails_BatteryLevelRight"];
    }

    [(__CFDictionary *)v12 setObject:@"HeadphonesBT" forKey:@"AudioRouteName"];
    goto LABEL_77;
  }

LABEL_38:
  if ((a1 - 11) <= 0xFFFFFFFD && v4 && IsSystemAudioRouteBuiltIn && v8)
  {
    v19 = +[MXAudioAccessoryServices sharedInstance];
    v20 = -[MXAudioAccessoryServices copyPreferredDeviceAddress:bundleID:isHypotheticalQuery:reason:](v19, "copyPreferredDeviceAddress:bundleID:isHypotheticalQuery:reason:", 301, 0, 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"Updating PredictedRoute because  of '%@' event", predictedRouting_getUpdatePredictedRouteReason(a1)]);
    v21 = CMSMVAUtility_CopyDeviceIDFromBTAddress(v20);
    v22 = FigRoutingManagerCopyEndpointWithDeviceID(v21, 0, *MEMORY[0x1E69618F8], 0);
    if (v22)
    {
      v102[0] = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v24)
      {
        v24(CMBaseObject, 0x1F289CDB0, *MEMORY[0x1E695E480], v102);
      }

      PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(v102[0]);
      ShouldBTPortBeTreatedAsInEar = CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(PortFromCFNumber);
      if (ShouldBTPortBeTreatedAsInEar)
      {
        v27 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(v22, 0);
      }

      else
      {
        v27 = 0;
      }

      predictedRouting_UpdatePredictedRoute_sCachedPreferredBTDeviceIsInEar = ShouldBTPortBeTreatedAsInEar;
      if (v102[0])
      {
        CFRelease(v102[0]);
      }

      CFRelease(v22);
      v16 = &qword_1EB75D000;
      v22 = v27;
      if (!v21)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v16 = &qword_1EB75D000;
      if (!v21)
      {
        goto LABEL_58;
      }
    }

    CFRelease(v21);
LABEL_58:

    v17 = &qword_1EB75D000;
LABEL_78:
    FigSimpleMutexLock();
    v8 = 1;
    goto LABEL_79;
  }

  FigSimpleMutexLock();
  if (a1 == 9)
  {
    v16 = &qword_1EB75D000;
    if (dword_1EB75DF20)
    {
      LODWORD(v76) = 0;
      v75[0] = OS_LOG_TYPE_DEFAULT;
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v17 = &qword_1EB75D000;
    if (gPRS_1)
    {
      CFRelease(gPRS_1);
      gPRS_1 = 0;
    }

    FigPredictedRouting_StartTimer(480.0);
    v22 = 0;
    v29 = 1;
    goto LABEL_94;
  }

  v22 = 0;
  v16 = &qword_1EB75D000;
  v17 = &qword_1EB75D000;
LABEL_79:
  if (a1 == 10)
  {
    if (*(v16 + 968))
    {
      v39 = v22;
      LODWORD(v76) = 0;
      v75[0] = OS_LOG_TYPE_DEFAULT;
      v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v41 = v76;
      if (os_log_type_enabled(v40, v75[0]))
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 & 0xFFFFFFFE;
      }

      if (v42)
      {
        v78 = 136315138;
        v79 = "predictedRouting_UpdatePredictedRoute";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v17 = &qword_1EB75D000;
      v22 = v39;
    }

    v49 = v17[308];
    if (v49)
    {
      CFRelease(v49);
      v17[308] = 0;
    }

    v29 = 1;
    predictedRouting_UpdatePredictedRoute_sCachedSessionIsPlaying = 1;
    goto LABEL_114;
  }

  if (a1 == 4)
  {
    if (*(v16 + 968))
    {
      v35 = v22;
      LODWORD(v76) = 0;
      v75[0] = OS_LOG_TYPE_DEFAULT;
      v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v37 = v76;
      if (os_log_type_enabled(v36, v75[0]))
      {
        v38 = v37;
      }

      else
      {
        v38 = v37 & 0xFFFFFFFE;
      }

      if (v38)
      {
        v78 = 136315138;
        v79 = "predictedRouting_UpdatePredictedRoute";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v17 = &qword_1EB75D000;
      v22 = v35;
    }

    FigPredictedRouting_StopPreemptivePortChangedTimer(1);
    v45 = v17[308];
    if (v45)
    {
      v7 = &qword_1EB75D000;
      if (!*(v16 + 968))
      {
        goto LABEL_116;
      }

      v73 = v22;
      LODWORD(v76) = 0;
      v75[0] = OS_LOG_TYPE_DEFAULT;
      v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v47 = v76;
      if (os_log_type_enabled(v46, v75[0]))
      {
        v48 = v47;
      }

      else
      {
        v48 = v47 & 0xFFFFFFFE;
      }

      if (v48)
      {
        v78 = 136315138;
        v79 = "predictedRouting_UpdatePredictedRoute";
        _os_log_send_and_compose_impl();
      }

      v29 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v17 = &qword_1EB75D000;
      v45 = gPRS_1;
      v22 = v73;
      if (gPRS_1)
      {
LABEL_116:
        CFRelease(v45);
        v17[308] = 0;
        v29 = 1;
      }

      goto LABEL_117;
    }

    v29 = 0;
LABEL_114:
    v7 = &qword_1EB75D000;
    goto LABEL_117;
  }

  v29 = 0;
LABEL_94:
  v43 = v17[308];
  if (!FigCFEqual() && v8)
  {
    v44 = v17[308];
    v17[308] = v22;
    if (v22)
    {
      CFRetain(v22);
    }

    if (v44)
    {
      CFRelease(v44);
    }

    v8 = 1;
    v29 = 1;
    v16 = &qword_1EB75D000;
  }

LABEL_117:
  v74 = v22;
  v50 = v17[308];
  if (FigCFDictionaryGetCount())
  {
    Value = CFDictionaryGetValue(v17[308], @"RouteName");
    v72 = CFDictionaryGetValue(v17[308], @"RouteUID");
    v52 = CFDictionaryGetValue(v17[308], @"RouteModel");
    if (a1 == 7 && (predictedRouting_UpdatePredictedRoute_sCachedSessionIsPlaying & 1) != 0 && v8 && !*(v7 + 2483))
    {
      if (*(v16 + 968))
      {
        v53 = v7;
        LODWORD(v76) = 0;
        v75[0] = OS_LOG_TYPE_DEFAULT;
        v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v55 = v76;
        if (os_log_type_enabled(v54, v75[0]))
        {
          v56 = v55;
        }

        else
        {
          v56 = v55 & 0xFFFFFFFE;
        }

        if (v56)
        {
          v78 = 136315651;
          v79 = "predictedRouting_UpdatePredictedRoute";
          v80 = 2114;
          v81 = Value;
          v82 = 2113;
          *v83 = v72;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v7 = v53;
        v16 = &qword_1EB75D000;
        v17 = &qword_1EB75D000;
      }

      v57 = v17[308];
      if (v57)
      {
        CFRelease(v57);
        Value = 0;
        v72 = 0;
        v17[308] = 0;
      }

      else
      {
        Value = 0;
        v72 = 0;
      }

      v29 = 1;
    }
  }

  else
  {
    Value = 0;
    v72 = 0;
    v52 = 0;
  }

  FigSimpleMutexUnlock();
  if (*(v16 + 968))
  {
    v69 = v52;
    v58 = v7;
    LODWORD(v76) = 0;
    v75[0] = OS_LOG_TYPE_DEFAULT;
    v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v60 = v76;
    if (os_log_type_enabled(v59, v75[0]))
    {
      v61 = v60;
    }

    else
    {
      v61 = v60 & 0xFFFFFFFE;
    }

    if (v61)
    {
      UpdatePredictedRouteReason = predictedRouting_getUpdatePredictedRouteReason(a1);
      v63 = *(v58 + 2483);
      v78 = 136318211;
      v79 = "predictedRouting_UpdatePredictedRoute";
      v80 = 2114;
      v81 = UpdatePredictedRouteReason;
      v82 = 1024;
      *v83 = v70;
      *&v83[4] = 1024;
      *&v83[6] = predictedRouting_UpdatePredictedRoute_sCachedPreferredBTDeviceIsInEar;
      v84 = 1024;
      v85 = IsSystemAudioRouteBuiltIn;
      v86 = 1024;
      v87 = v8;
      v88 = 1024;
      v89 = predictedRouting_UpdatePredictedRoute_sCachedSessionIsPlaying;
      v90 = 1024;
      v91 = v29;
      v92 = 1024;
      v93 = v63;
      v94 = 1024;
      v95 = HIDWORD(v71);
      v96 = 2114;
      v97 = Value;
      v98 = 2113;
      v99 = v72;
      v100 = 2114;
      v101 = v69;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v7 = v58;
  }

  v102[0] = 0;
  p_cf = v102;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(v102);
  if (v29)
  {
    goto LABEL_146;
  }

  v65 = v71 ^ 1;
  if (!*(v7 + 2483))
  {
    v65 = 1;
  }

  if ((v65 & 1) == 0)
  {
    p_cf = &cf;
LABEL_146:
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(*p_cf, @"predictedSelectedRouteDescriptorChanged", 0);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v102[0])
  {
    CFRelease(v102[0]);
    v102[0] = 0;
  }

  if (v74)
  {
    CFRelease(v74);
  }

  v66 = *MEMORY[0x1E69E9840];
}

BOOL FigRoutingManagerUtilities_IsSystemAudioRouteBuiltIn()
{
  v7 = 0;
  theArray = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v7);
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(v7, &theArray);
  if (!theArray)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if (CFArrayGetCount(theArray) == 1)
  {
    cf = 0;
    if (CFArrayGetValueAtIndex(theArray, 0))
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v1)
      {
        v1(CMBaseObject, 0x1F289CEF0, *MEMORY[0x1E695E480], &cf);
        v2 = cf;
      }

      else
      {
        v2 = 0;
      }

      PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(v2);
      v3 = 1;
      if (PortFromCFNumber == 1886613611 || PortFromCFNumber == 1886545251)
      {
LABEL_14:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_16;
      }

      if (!PortFromCFNumber)
      {
        v3 = CMSMDeviceState_RingerIsOn(1) == 0;
        goto LABEL_14;
      }
    }

    v3 = 0;
    goto LABEL_14;
  }

  v3 = 0;
LABEL_16:
  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

LABEL_18:
  if (v7)
  {
    CFRelease(v7);
  }

  return v3;
}

__CFString *predictedRouting_getUpdatePredictedRouteReason(int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if ((a1 - 1) >= 0xA)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = 0;
  }

  else
  {
    result = off_1E7AEB3F0[a1 - 1];
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSUtility_IsSessionOnlyPlayingLocally(void *a1)
{
  if (!CMSMDeviceState_IsHomePodHub())
  {
    IsPlayingToDefaultVAD = CMSUtility_IsPlayingToDefaultVAD(a1);
    return IsPlayingToDefaultVAD != 0;
  }

  if ([a1 shadowingAudioSessionID])
  {
    return 0;
  }

  if (!FigRoutingManagerContextUtilities_IsOnlyRoutedToSelf([a1 routingContextUUID]))
  {
    IsPlayingToDefaultVAD = FigRoutingManagerContextUtilities_IsOnlyRoutedToLocalAirPlayEndpoint([a1 routingContextUUID]);
    return IsPlayingToDefaultVAD != 0;
  }

  return 1;
}

void CMScreenHandleIdleEvent(int a1, int a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a2 == a3)
  {
    goto LABEL_12;
  }

  v17 = 0;
  v18 = 0;
  FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(&v17);
  cf = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v17, 0, &cf);
  if (cf)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E69622F8], *MEMORY[0x1E695E480], &v18);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (v17)
  {
    CFRelease(v17);
    v17 = 0;
  }

  if (FigCFEqual() || (v8 = *MEMORY[0x1E69626A8], !FigCFEqual()))
  {
    if (v18)
    {
      CFRelease(v18);
    }
  }

  else
  {
    if (v18)
    {
      CFRelease(v18);
    }

    if (a1 != 100)
    {
      if (a1 != 101)
      {
        goto LABEL_12;
      }

      if (a3 == 1)
      {
        goto LABEL_32;
      }

      goto LABEL_22;
    }

    if (!a3)
    {
LABEL_32:
      CMSMAP_StopDisconnectAirPlayScreenTimer();
      goto LABEL_12;
    }

    if (!CMSMUtility_SomeClientIsPlayingToAirPlay())
    {
LABEL_22:
      if (cmscreenIsTetheredDemoModeOn_onceToken != -1)
      {
        CMScreenHandleIdleEvent_cold_1();
      }

      if (dword_1EB75DE40)
      {
        v20 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v10 = v20;
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
          v12 = @"YES";
          if (!cmscreenIsTetheredDemoModeOn_isThetheredDemoModeOn)
          {
            v12 = @"NO";
          }

          v21 = 136315394;
          v22 = "cmscreenIsTetheredDemoModeOn";
          v23 = 2114;
          v24 = v12;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (cmscreenIsTetheredDemoModeOn_isThetheredDemoModeOn)
      {
        if (dword_1EB75DE40)
        {
          v20 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v14 = v20;
          if (os_log_type_enabled(v13, type))
          {
            v15 = v14;
          }

          else
          {
            v15 = v14 & 0xFFFFFFFE;
          }

          if (v15)
          {
            v21 = 136315138;
            v22 = "CMScreenHandleIdleEvent";
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        CMSMAP_StartDisconnectAirPlayScreenTimer(60.0);
      }
    }
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(uint64_t a1)
{
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v2 = &routingContextUtilities_getSharedContextUtilities_contextState;
    v3 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v3 = 504;
    }

    v4 = *v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID", "FigRoutingManagerContextUtilities.m", 4642, 0, 0, v4, v6);
  }

  return 0;
}

void CMSMSleep_HandleIdleSleep(void *a1, char a2)
{
  if (a1)
  {
    v4 = a1;
    v5 = MXGetSerialQueue();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __CMSMSleep_HandleIdleSleep_block_invoke;
    v6[3] = &unk_1E7AEADD8;
    v6[4] = a1;
    v7 = a2;
    MXDispatchAsync("CMSMSleep_HandleIdleSleep", "CMSessionManager_Sleep.m", 217, 0, 0, v5, v6);
  }
}

uint64_t MXGetAssertionLog()
{
  if (MXGetAssertionLog_onceToken != -1)
  {
    MXGetAssertionLog_cold_1();
  }

  return MXGetAssertionLog__log;
}

uint64_t MX_FeatureFlags_IsAssertionActivityReportingEnabled()
{
  if (MX_FeatureFlags_IsAssertionActivityReportingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAssertionActivityReportingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAssertionActivityReportingEnabled_sAssertionActivityReportingEnabled;
}

void CMSMSleep_FetchPlaybackProcessAssertionsForHostProcesses(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1 || ![a1 playbackAssertionRef])
  {
    buffer.val[0] = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_22;
  }

  v2 = [objc_msgSend(a1 "hostProcessPlaybackAssertions")];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [a1 parentProcessAuditTokens];
  v20 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v20)
  {
    goto LABEL_20;
  }

  alloc = *MEMORY[0x1E695E480];
  v19 = *v23;
  do
  {
    for (i = 0; i != v20; ++i)
    {
      if (*v23 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v4 = *(*(&v22 + 1) + 8 * i);
      memset(&buffer, 0, sizeof(buffer));
      v29.location = 0;
      v29.length = 32;
      CFDataGetBytes(v4, v29, &buffer);
      atoken = buffer;
      v5 = audit_token_to_pid(&atoken);
      v6 = [a1 displayID];
      ClientName = CMSUtility_GetClientName(a1, v7);
      v9 = CFStringCreateWithFormat(alloc, 0, @"MediaExperience.%d.%@.%@.%@.isPlayingProcessAssertionForHost", v5, v6, ClientName, [a1 audioCategory]);
      v10 = [v2 objectForKey:v4];
      if (v10 && (MX_RunningBoardServices_IsAssertionValid(v10) & 1) != 0)
      {
        if (!dword_1EB75DE40)
        {
          goto LABEL_16;
        }

LABEL_15:
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_16;
      }

      PlaybackProcessAssertionForPID = MX_RunningBoardServices_CreatePlaybackProcessAssertionForPID(v5, v9);
      [v2 setObject:PlaybackProcessAssertionForPID forKey:v4];
      if (PlaybackProcessAssertionForPID)
      {
        CFRelease(PlaybackProcessAssertionForPID);
      }

      if (dword_1EB75DE40)
      {
        goto LABEL_15;
      }

LABEL_16:
      if (v9)
      {
        CFRelease(v9);
      }
    }

    v20 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v20);
LABEL_20:
  [a1 setHostProcessPlaybackAssertions:{v2, v15, v16}];

LABEL_22:
  v14 = *MEMORY[0x1E69E9840];
}

void CMSUtility_UpdateBTLowLatencyMode()
{
  v21 = *MEMORY[0x1E69E9840];
  v0 = CMSMUtility_CopyCurrentRouteTypes();
  v1 = FigCFArrayContainsValue();
  if (!v1)
  {
    CMSUtility_UpdateBTLowLatencyMode_currentBTLowLatencyMode = 0;
  }

  if (v0)
  {
    CFRelease(v0);
  }

  if (v1)
  {
    valuePtr = 0;
    FigSimpleMutexLock();
    v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v16;
      while (1)
      {
        v7 = 0;
        do
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v15 + 1) + 8 * v7);
          if ([v8 isPlaying] && (objc_msgSend(v8, "doesntActuallyPlayAudio") & 1) == 0)
          {
            [v8 audioCategory];
            if (FigCFEqual())
            {
              v5 = 2;
LABEL_17:
              valuePtr = v5;
              goto LABEL_18;
            }

            if (byte_1EB75E1B8)
            {
              v5 = 3;
              goto LABEL_17;
            }

            if (([v8 isSharePlayCallSession] & 1) != 0 || objc_msgSend(v8, "isSharePlayMediaSession"))
            {
              v5 = 8;
              valuePtr = 8;
              goto LABEL_27;
            }
          }

LABEL_18:
          ++v7;
        }

        while (v4 != v7);
        v9 = [v2 countByEnumeratingWithState:&v15 objects:v20 count:16];
        v4 = v9;
        if (!v9)
        {
          goto LABEL_27;
        }
      }
    }

    v5 = 0;
LABEL_27:

    FigSimpleMutexUnlock();
    if (v5 != CMSUtility_UpdateBTLowLatencyMode_currentBTLowLatencyMode)
    {
      v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSUtility_UpdateBTLowLatencyMode_currentBTLowLatencyMode = valuePtr;
      CMBaseObject = FigEndpointManagerGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v13)
      {
        v13(CMBaseObject, 0x1F289B7D0, v10);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void cmsUpdateMuteStatus(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    ShouldSilentMute = CMSUtility_ShouldSilentMute(a1);
    DictionaryForMuteStatusUpdate = CMSMUtility_CreateDictionaryForMuteStatusUpdate(a1, ShouldSilentMute);
    if (DictionaryForMuteStatusUpdate)
    {
      v5 = DictionaryForMuteStatusUpdate;
      CFArrayAppendValue(Mutable, DictionaryForMuteStatusUpdate);
      CFRelease(v5);
    }

    if (!Mutable)
    {
      goto LABEL_24;
    }

LABEL_16:
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
        Value = CFDictionaryGetValue(ValueAtIndex, @"session");
        FigCFDictionaryGetInt32IfPresent();
        v18 = CMSUtility_CopyFadeDuration(a1, 0, 0);
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSUtility_PostInterruptionCommandNotification(Value, 0, 0, 0, 0, v18, 0, 0);
        if (v18)
        {
          CFRelease(v18);
        }
      }
    }

    CFRelease(Mutable);
    goto LABEL_24;
  }

  v6 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (j = 0; j != v8; ++j)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * j);
        v12 = CMSUtility_ShouldSilentMute(v11);
        v13 = CMSMUtility_CreateDictionaryForMuteStatusUpdate(v11, v12);
        if (v13)
        {
          v14 = v13;
          CFArrayAppendValue(Mutable, v13);
          CFRelease(v14);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  if (Mutable)
  {
    goto LABEL_16;
  }

LABEL_24:
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t CMSUtility_ShouldSilentMute(void *a1)
{
  if (CMSMUtility_GetNumberOfCurrentOutputPorts() != 1)
  {
    return 0;
  }

  CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
  result = [+[MXSessionManager sharedInstance](MXSessionManager isCurrentPortTypeMuteable:"isCurrentPortTypeMuteable:", vaeGetPortTypeFromPortID(CurrentOutputPortAtIndex)];
  if (result)
  {
    result = CMSUtility_IsMuteable(a1);
    if (result)
    {
      result = [a1 isActive];
      if (result)
      {
        return HIBYTE(word_1EB75E0E0) || CMSMDeviceState_RingerIsOn(1) == 0;
      }
    }
  }

  return result;
}

uint64_t CMSUtility_IsMuteable(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (-[MXSessionManager isAudioCategoryMuteable:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isAudioCategoryMuteable:", [result audioCategory]))
    {
      return 1;
    }

    else
    {
      return [v1 mutesAudioBasedOnRingerSwitchState];
    }
  }

  return result;
}

__CFDictionary *CMSMUtility_CreateDictionaryForMuteStatusUpdate(void *a1, int a2)
{
  if ([a1 silentMuted] == a2)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = [a1 silentMuted];
    if (a2)
    {
      if (v5)
      {
        return Mutable;
      }
    }

    else if (!v5)
    {
      return Mutable;
    }

    [a1 setSilentMuted:a2 != 0];
    CFDictionarySetValue(Mutable, @"session", a1);
    FigCFDictionarySetInt32();
  }

  return Mutable;
}

void __vaemPostAvailableEndpointsChangedNotification_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = *MEMORY[0x1E6961888];
  CMNotificationCenterPostNotification();
  if (*(a1 + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = *MEMORY[0x1E6961898];
    CMNotificationCenterPostNotification();
  }

  v4 = qword_1EB75E090;

  CFRelease(v4);
}

uint64_t CMSMUtility_SomeNonMixableClientIsPlaying()
{
  v12 = *MEMORY[0x1E69E9840];
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
        if ([v4 isPlaying] && (objc_msgSend(v4, "doesntActuallyPlayAudio") & 1) == 0 && !objc_msgSend(v4, "mixesWithEveryone"))
        {
          v1 = 1;
          goto LABEL_13;
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

LABEL_13:

  v5 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t FigPredictedRouting_UnmuteSessionIfMutedByPreemptivePortChange()
{
  result = FigPredictedRouting_IsPreemptivePortLogicEnabled();
  if (result)
  {
    v1 = +[MXSessionManager sharedInstance];
    v2 = gPRS_3;

    return [(MXSessionManager *)v1 unduckSessionsForDuckingSource:v2];
  }

  return result;
}

void CMSMSleep_ReleasePlaybackProcessAssertion(void *a1)
{
  if (a1)
  {
    MX_RunningBoardServices_InvalidateAssertion([a1 playbackAssertionRef]);
    [a1 setPlaybackAssertionRef:0];
    if ([a1 isMemberOfClass:objc_opt_class()])
    {
      v2 = [a1 parentProcessAuditTokens];

      CMSMSleep_ReleasePlaybackProcessAssertionsForHostProcesses(a1, v2);
    }
  }
}

void MX_RunningBoardServices_InvalidateAssertion(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (mx_runningBoardServices_initializeGlobalAssertionProperties_onceToken != -1)
    {
      MX_RunningBoardServices_InvalidateAssertion_cold_1();
    }

    v2 = objc_autoreleasePoolPush();
    FigSimpleMutexLock();
    if (CFArrayGetCount(gProcessAssertionArray) >= 1)
    {
      v3 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(gProcessAssertionArray, v3);
        if (ValueAtIndex == a1)
        {
          break;
        }

        if (++v3 >= CFArrayGetCount(gProcessAssertionArray))
        {
          goto LABEL_17;
        }
      }

      v5 = ValueAtIndex;
      if (gHostProcessAssertionDictionary && CFDictionaryContainsKey(gHostProcessAssertionDictionary, ValueAtIndex))
      {
        Value = CFDictionaryGetValue(gHostProcessAssertionDictionary, v5);
        [Value invalidate];
        v7 = MXGetAssertionLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v14 = "-MX_RunningBoardServices-";
          v15 = 2082;
          v13 = 136447234;
          v16 = "MX_RunningBoardServices_InvalidateAssertion";
          v17 = 1024;
          v18 = 904;
          v19 = 2048;
          v20 = Value;
          v21 = 2114;
          v22 = [Value explanation];
          _os_log_impl(&dword_1B17A2000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Invalidated host process assertion %p explanation %{public}@", &v13, 0x30u);
        }

        CFDictionaryRemoveValue(gHostProcessAssertionDictionary, v5);
      }

      v8 = +[MXAudioStatistics sharedInstance];
      v9 = [a1 explanation];
      [(MXAudioStatistics *)v8 sendSinglePerformanceMessageForAssertion:"MX_RunningBoardServices_InvalidateAssertion" explanation:v9 activity:kMXAudioStatistics_AssertionActivity_AssertionInvalidated];
      v10 = MXGetAssertionLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [a1 explanation];
        v13 = 136447234;
        v14 = "-MX_RunningBoardServices-";
        v15 = 2082;
        v16 = "MX_RunningBoardServices_InvalidateAssertion";
        v17 = 1024;
        v18 = 911;
        v19 = 2048;
        v20 = a1;
        v21 = 2114;
        v22 = v11;
        _os_log_impl(&dword_1B17A2000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Invalidated assertion %p explanation %{public}@", &v13, 0x30u);
      }

      [a1 invalidate];
      CFArrayRemoveValueAtIndex(gProcessAssertionArray, v3);
    }

LABEL_17:
    FigSimpleMutexUnlock();
    objc_autoreleasePoolPop(v2);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void CMSMSleep_ReleasePlaybackProcessAssertionsForHostProcesses(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = [objc_msgSend(a1 "hostProcessPlaybackAssertions")];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v16 = [a2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v16)
    {
      v4 = *v19;
      v15 = v3;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v19 != v4)
          {
            objc_enumerationMutation(a2);
          }

          v6 = *(*(&v18 + 1) + 8 * i);
          memset(&buffer, 0, sizeof(buffer));
          v25.location = 0;
          v25.length = 32;
          CFDataGetBytes(v6, v25, &buffer);
          atoken = buffer;
          audit_token_to_pid(&atoken);
          v7 = [v3 objectForKey:v6];
          if (v7)
          {
            v8 = v7;
            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v3 = v15;
            }

            MX_RunningBoardServices_InvalidateAssertion(v8);
            [v3 removeObjectForKey:v6];
          }

          else if (dword_1EB75DE40)
          {
            v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v16 = [a2 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v16);
    }

    [a1 setHostProcessPlaybackAssertions:{v3, v12, v13}];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void cmsmScreenIsBlankedChangedCallback(char a1, char a2)
{
  v4 = MXGetSerialQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __cmsmScreenIsBlankedChangedCallback_block_invoke;
  v5[3] = &__block_descriptor_34_e5_v8__0l;
  v6 = a1;
  v7 = a2;
  MXDispatchAsync("cmsmScreenIsBlankedChangedCallback", "CMSessionManager.m", 18228, 0, 0, v4, v5);
}

void __cmsmScreenIsBlankedChangedCallback_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  IsBlanked = CMSMUtility_ShouldEnableLongPullModeWhenScreenIsBlanked();
  CMScreenHandleIdleEvent(100, *(a1 + 32), *(a1 + 33));
  if (*(a1 + 33))
  {
    goto LABEL_8;
  }

  if (IsBlanked || FigVAEndpointManagerGetPropertyBoolean(qword_1EB75E090, 0x1F289B7F0))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemCalculateAndSetDeviceBufferDuration([[MXSessionManager defaultVADID:v8] sharedInstance:1];
  }

  v4 = dispatch_time(0, 1000000000);
  v5 = MXGetSerialQueue();
  dispatch_after(v4, v5, &__block_literal_global_357);
  if (*(a1 + 33))
  {
LABEL_8:
    CMSystemSoundMgr_DeactivateAllSystemSounds();
  }

  else
  {
    CMSystemSoundMgr_ActivateAllSystemSounds();
  }

  if (*(a1 + 33) && IsBlanked)
  {
    if (dword_1EB75DE40)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemCalculateAndSetDeviceBufferDuration([[MXSessionManager defaultVADID:v8] sharedInstance:1];
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t CMSMUtility_ShouldEnableLongPullModeWhenScreenIsBlanked()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v13;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v13 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v12 + 1) + 8 * i);
        if ([v5 isActive])
        {
          PreferredIOBufferDuration = CMSUtility_GetPreferredIOBufferDuration(v5, v6);
          if (*&PreferredIOBufferDuration != 0.0 || CMSUtility_GetPreferredIOBufferFrames(v5, v7) || [v5 vpBlockConfiguration] && (objc_msgSend(v5, "isRecording") & 1) != 0)
          {
            v9 = 0;
            goto LABEL_15;
          }
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_15:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void vaemCalculateAndSetDeviceBufferDuration(AudioObjectID a1, int a2, int a3, int a4, float DefaultBufferDuration, double SampleRateForDevice)
{
  v28 = *MEMORY[0x1E69E9840];
  LongBufferDuration = CMSMUtility_GetLongBufferDuration();
  if (DefaultBufferDuration == 0.0)
  {
    v13 = LongBufferDuration;
    if (!CMSMDeviceState_ScreenIsBlanked() || v13 == 0.0 || (dword_1EB75E168 != 0) | (a4 | byte_1EB75D190))
    {
      DefaultBufferDuration = cmsmGetDefaultBufferDuration();
      v14 = 0;
    }

    else
    {
      v14 = 1;
      DefaultBufferDuration = v13;
    }
  }

  else
  {
    IsHangsBufferedSizeHintEnabled = MX_FeatureFlags_IsHangsBufferedSizeHintEnabled();
    v14 = 0;
    if (a4 && IsHangsBufferedSizeHintEnabled)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (CMSMVAUtility_AudioObjectSetPropertyData())
      {
        v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v14 = 0;
      goto LABEL_30;
    }
  }

  if (SampleRateForDevice == 0.0)
  {
    SampleRateForDevice = vaemGetSampleRateForDevice(a1);
  }

  if (SampleRateForDevice != 0.0 && DefaultBufferDuration != 0.0)
  {
    v17 = SampleRateForDevice * DefaultBufferDuration;
    v18 = v17;
    v19 = FigUInt32NearestPowerOfTwo();
    v20 = v19;
    if (dword_1EB75DE40)
    {
      v27 = v19;
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v20 = v27;
    }

    if (a3)
    {
      vaemSetDeviceBufferNumPCMFramesQuiet(a1, a2, v20);
    }

    else
    {
      if (a4)
      {
        v22 = v18;
      }

      else
      {
        v22 = v20;
      }

      v23 = vaemSetDeviceBufferNumPCMFrames(a1, a2, v22);
      if (a4 && v23)
      {
        if (dword_1EB75DE40)
        {
          v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        vaemSetDeviceBufferNumPCMFrames(a1, a2, v20);
      }
    }

LABEL_30:
    byte_1EB75D185 = v14;
  }

  v26 = *MEMORY[0x1E69E9840];
}

float CMSMUtility_GetLongBufferDuration()
{
  if ((CMSMUtility_GetLongBufferDuration_gCheckedLongBufferDuration & 1) == 0)
  {
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"longbuffermillis", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      *&CMSMUtility_GetLongBufferDuration_gLongBufferDuration = AppIntegerValue / 1000.0;
    }

    CMSMUtility_GetLongBufferDuration_gCheckedLongBufferDuration = 1;
  }

  return *&CMSMUtility_GetLongBufferDuration_gLongBufferDuration;
}

uint64_t CMSystemSoundMgr_ActivateAllSystemSounds()
{
  if (gCMSS_1)
  {
    FigSimpleMutexLock();
    for (i = gCMSS_0; i; i = *i)
    {
      if (*(i + 16) && !*(i + 18))
      {
        cmsmPrewarmAudioForSSID(1, *(i + 8), *(i + 12));
        *(i + 18) = 1;
      }

      if (*(i + 17) && !*(i + 19))
      {
        cmsmPrewarmVibeForSSID(1, *(i + 8), *(i + 12));
        *(i + 19) = 1;
      }

      CMSMSleep_CreatePrewarmIdleSleepPreventor(*(i + 8), *(i + 12));
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t FigPredictedRouting_SetPreemptivePortChanged(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  result = FigPredictedRouting_IsPreemptivePortLogicEnabled();
  if (result)
  {
    FigSimpleMutexLock();
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    gPRS_5 = a1 != 0;
    result = FigSimpleMutexUnlock();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaemSetDeviceBufferNumPCMFramesQuiet(AudioObjectID a1, int a2, unsigned int a3)
{
  v3 = a3;
  v12 = a3;
  v8 = 0;
  vaemGetDeviceBufferNumPCMFramesRange(a1, a2, &v8 + 1, &v8);
  if (!v5)
  {
    if (HIDWORD(v8) > v3)
    {
      v12 = HIDWORD(v8);
      v3 = HIDWORD(v8);
    }

    if (v3 > v8)
    {
      v12 = v8;
    }
  }

  if (a2 == 1)
  {
    v6 = 1768845428;
  }

  else
  {
    v6 = 1869968496;
  }

  v9 = 1902539642;
  v10 = v6;
  v11 = 0;
  return CMSMVAUtility_AudioObjectSetPropertyData();
}

uint64_t FigPredictedRouting_StopPreemptivePortChangedTimer(int a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  result = FigPredictedRouting_IsPreemptivePortLogicEnabled();
  if (result)
  {
    FigSimpleMutexLock();
    FigPredictedRouting_SetPreemptivePortChanged(0);
    v3 = gPRS_4;
    if (gPRS_4)
    {
      v4 = gPRS_1;
      if (gPRS_1)
      {
        if (!dword_1EB75DF20 || (os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT), fig_log_call_emit_and_clean_up_after_send_and_compose(), (v4 = gPRS_1) != 0))
        {
          CFRelease(v4);
          gPRS_1 = 0;
        }

        cf[0] = 0;
        FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(cf);
        FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(cf[0], @"predictedSelectedRouteDescriptorChanged", 0);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        v3 = gPRS_4;
      }

      dispatch_source_cancel(v3);
      if (gPRS_4)
      {
        dispatch_release(gPRS_4);
        gPRS_4 = 0;
      }
    }

    result = FigSimpleMutexUnlock();
    if (dword_1EB75DF20)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (a1)
    {
      v7 = +[MXSessionManager sharedInstance];
      result = [(MXSessionManager *)v7 unduckSessionsForDuckingSource:gPRS_3];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t central_BorrowScreen(uint64_t a1, const __CFString *a2, CFStringRef theString)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v8 = 0x200000002;
  LODWORD(v9) = 22;
  if (!theString)
  {
    goto LABEL_2;
  }

  if (CFStringFind(theString, @"SiriActivation", 0).location == -1)
  {
    if (CFStringFind(theString, @"presenting siri", 0).location != -1 || CFStringFind(theString, @"full screen alert", 0).location != -1 || CFStringFind(theString, @"InCall", 0).location != -1 || CFStringFind(theString, @"Siri", 0).location != -1)
    {
      goto LABEL_10;
    }
  }

  else if (!CMSMUtility_IsCarPlayVideoActive())
  {
LABEL_10:
    v6 = 500;
    goto LABEL_11;
  }

LABEL_2:
  v6 = 100;
LABEL_11:
  DWORD1(v9) = v6;
  LODWORD(v10) = 100;
  central_requestCarModeChange(a1, &v8, a2, theString);
  return 0;
}

void central_requestCarModeChange(uint64_t a1, __int128 *a2, const __CFString *a3, const __CFString *a4)
{
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a3);
  CFStringAppend(MutableCopy, @": ");
  CFStringAppend(MutableCopy, a4);
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v9 = DerivedStorage[3];
      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      fsmcontroller_RequestModeChangeAsync(v9, a2, CStringPtrAndBufferToFree, &__block_literal_global_77, 0);
      DerivedStorage = 0;
    }
  }

  else
  {
    DerivedStorage = 0;
  }

  free(DerivedStorage);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void fsmcontroller_RequestModeChangeAsync(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a1)
  {
    v8 = a2[3];
    v22 = a2[2];
    v23 = v8;
    v24 = *(a2 + 8);
    v9 = a2[1];
    v20 = *a2;
    v21 = v9;
    if (a3)
    {
      v10 = malloc_type_malloc(0x40uLL, 0x7AE4B5C7uLL);
      __strlcpy_chk();
    }

    else
    {
      v10 = 0;
    }

    CFRetain(a1);
    v11 = a1[3];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __fsmcontroller_RequestModeChangeAsync_block_invoke;
    v12[3] = &unk_1E7AED380;
    v15 = v22;
    v16 = v23;
    v14 = v21;
    v13 = v20;
    v17 = v24;
    v18 = v10;
    v19 = a5;
    v12[4] = a4;
    v12[5] = a1;
    MXDispatchAsync("fsmcontroller_RequestModeChangeAsync", "FigStarkMode.m", 1388, 0, 0, v11, v12);
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    (*(a4 + 16))(a4, 4294950566, &v20);
  }
}

uint64_t central_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = *(CMBaseObjectGetDerivedStorage() + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __central_CopyProperty_block_invoke;
  v11[3] = &unk_1E7AE79A8;
  v11[4] = &v12;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  v11[8] = a4;
  MXDispatchSync("central_CopyProperty", "FigEndpoint_Central.m", 1222, 0, 0, v8, v11);
  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

void sub_1B1816858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CMBaseObjectCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 8);
  result = VTable + 8;
  v11 = *(v10 + 48);
  if (v11)
  {

    return v11(a1, a2, a3, a4);
  }

  return result;
}

uint64_t CMBaseObjectCopyProperty_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = *(VTable + 8) + 48;

  return v9(a1, a2, a3, a4);
}

__CFString *FSMDebug_GetFigStarkModeTransferTypeString(int a1)
{
  if (a1 <= 20)
  {
    if (!a1)
    {
      return @"N/A";
    }

    if (a1 == 20)
    {
      return @"Take";
    }
  }

  else
  {
    switch(a1)
    {
      case 21:
        return @"Untake";
      case 22:
        return @"Borrow";
      case 23:
        return @"Unborrow";
    }
  }

  return @"***Unknown***";
}

uint64_t fsm_requestModeChange(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, int a6)
{
  v131 = *MEMORY[0x1E69E9840];
  v115 = 0u;
  v116 = 0u;
  fsm_getCurrentMode(a1, &v115, 0);
  if (!*a2 || !*(a2 + 4))
  {
    result = 4294949813;
    goto LABEL_105;
  }

  result = fsm_verifyResourceChangeRequest(a2 + 8);
  if (!result)
  {
    v108 = a6;
    result = fsm_verifyResourceChangeRequest(a2 + 32);
    if (!result)
    {
      *v126 = *(a2 + 8);
      *&v126[16] = *(a2 + 24);
      v13 = FSMDebug_CopyFigStarkModeBorrowIDString(v126);
      *v126 = *(a2 + 32);
      *&v126[16] = *(a2 + 48);
      v14 = FSMDebug_CopyFigStarkModeBorrowIDString(v126);
      v15 = &off_1EB75E000;
      v106 = a3;
      if (dword_1EB75E258)
      {
        v105 = a5;
        v16 = OUTLINED_FUNCTION_8_9();
        v17 = cf;
        HIDWORD(v104) = type[0];
        if (os_log_type_enabled(v16, type[0]))
        {
          v18 = v17;
        }

        else
        {
          v18 = v17 & 0xFFFFFFFE;
        }

        if (v18)
        {
          FigStarkModeEntityString = FSMDebug_GetFigStarkModeEntityString(*a2);
          FigStarkModeTransferTypeString = FSMDebug_GetFigStarkModeTransferTypeString(*(a2 + 8));
          FigStarkModeTransferPriorityString = FSMDebug_GetFigStarkModeTransferPriorityString(*(a2 + 12));
          FigStarkModeConstraintString = FSMDebug_GetFigStarkModeConstraintString(*(a2 + 24));
          v99 = FSMDebug_GetFigStarkModeConstraintString(*(a2 + 28));
          v97 = FSMDebug_GetFigStarkModeEntityString(*(a2 + 4));
          v96 = FSMDebug_GetFigStarkModeTransferTypeString(*(a2 + 32));
          v95 = FSMDebug_GetFigStarkModeTransferPriorityString(*(a2 + 36));
          v19 = FSMDebug_GetFigStarkModeConstraintString(*(a2 + 48));
          v20 = FSMDebug_GetFigStarkModeConstraintString(*(a2 + 52));
          FigStarkModeSpeechModeRequestString = FSMDebug_GetFigStarkModeSpeechModeRequestString(*(a2 + 56));
          v98 = v16;
          FigStarkModeTriStateString = FSMDebug_GetFigStarkModeTriStateString(*(a2 + 60));
          v23 = FSMDebug_GetFigStarkModeTriStateString(*(a2 + 64));
          *v126 = 136319234;
          v24 = "unknown reason";
          *&v126[4] = "fsm_requestModeChange";
          if (v106)
          {
            v24 = v106;
          }

          *&v126[12] = 2114;
          *&v126[14] = FigStarkModeEntityString;
          *&v126[22] = 2114;
          *&v126[24] = FigStarkModeTransferTypeString;
          *v127 = 2114;
          *&v127[2] = FigStarkModeTransferPriorityString;
          *&v127[10] = 2114;
          *&v127[12] = FigStarkModeConstraintString;
          *&v127[20] = 2114;
          *&v127[22] = v99;
          *&v127[30] = 2114;
          *&v127[32] = v13;
          *&v127[40] = 2114;
          *&v127[42] = v97;
          *&v127[50] = 2114;
          *&v127[52] = v96;
          *&v127[60] = 2114;
          *&v127[62] = v95;
          *&v127[70] = 2114;
          *&v127[72] = v19;
          *&v127[80] = 2114;
          *&v127[82] = v20;
          v15 = &off_1EB75E000;
          *&v127[90] = 2114;
          *v128 = v14;
          *&v128[8] = 2114;
          *&v128[10] = FigStarkModeSpeechModeRequestString;
          *&v128[18] = 2114;
          *&v128[20] = FigStarkModeTriStateString;
          *&v128[28] = 2114;
          *&v128[30] = v23;
          *&v128[38] = 2082;
          *&v128[40] = v24;
          LODWORD(v94) = 172;
          v93 = v126;
          _os_log_send_and_compose_impl();
        }

        v25 = v15[74];
        OUTLINED_FUNCTION_0_0();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        a5 = v105;
        a3 = v106;
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      v26 = FSMDebug_CopyPrettyPrintStringForModeChangeRequest(a2);
      v27 = v108;
      if (v26)
      {
        CFRelease(v26);
      }

      if (v108)
      {
        if (dword_1EB75E258)
        {
          v28 = OUTLINED_FUNCTION_8_9();
          v29 = cf;
          if (os_log_type_enabled(v28, type[0]))
          {
            v30 = v29;
          }

          else
          {
            v30 = v29 & 0xFFFFFFFE;
          }

          if (v30)
          {
            v122 = 136315394;
            v123 = "fsm_requestModeChange";
            v124 = 1024;
            v125 = v108;
            OUTLINED_FUNCTION_7_10();
            _os_log_send_and_compose_impl();
          }

          v31 = v15[74];
          OUTLINED_FUNCTION_0_0();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          a3 = v106;
          v27 = v108;
        }

        *(a1 + 32) = 2;
        *(a1 + 64) = 2;
      }

      fsm_requestResourceModeChange(*a2, a2 + 8, a1 + 32, 1);
      fsm_requestResourceModeChange(*(a2 + 4), a2 + 32, a1 + 64, 2);
      fsm_printListOfBorrowers(a1 + 32);
      fsm_printListOfBorrowers(a1 + 64);
      if (!*(a1 + 128) || !FigRoutingManager_iOSIsCarPlayAuxStreamSupported())
      {
        v32 = *(a1 + 96);
        CurrentBorrower = fsm_getCurrentBorrower((a1 + 64));
        if (!CurrentBorrower)
        {
          CurrentBorrower = *(a1 + 64);
        }

        if (v32 != CurrentBorrower)
        {
          *(a1 + 96) = 0;
        }
      }

      v34 = *(a1 + 104);
      v35 = fsm_getCurrentBorrower((a1 + 64));
      if (!v35)
      {
        v35 = *(a1 + 64);
      }

      if (v34 != v35)
      {
        *(a1 + 104) = 0;
      }

      v36 = *(a2 + 56);
      if (v36)
      {
        if (v36 == -1)
        {
          if (*(a1 + 96) != *(a2 + 4))
          {
            goto LABEL_50;
          }

          v37 = 0;
          *(a1 + 96) = 0;
          goto LABEL_49;
        }

        v38 = *(a2 + 4);
        v39 = fsm_getCurrentBorrower((a1 + 64));
        if (!v39)
        {
          v39 = *(a1 + 64);
        }

        if (v38 == v39 || FigRoutingManager_iOSIsCarPlayAuxStreamSupported())
        {
          *(a1 + 96) = *(a2 + 4);
          v37 = *(a2 + 56);
LABEL_49:
          *(a1 + 100) = v37;
        }
      }

LABEL_50:
      v40 = *(a2 + 60);
      if (v40 == 1)
      {
        v42 = *(a2 + 4);
        v43 = fsm_getCurrentBorrower((a1 + 64));
        if (!v43)
        {
          v43 = *(a1 + 64);
        }

        if (v42 == v43)
        {
          v41 = *(a2 + 4);
          goto LABEL_58;
        }
      }

      else if (v40 == -1 && *(a1 + 104) == *(a2 + 4))
      {
        v41 = 0;
LABEL_58:
        *(a1 + 104) = v41;
      }

      v44 = *(a2 + 64);
      if (v44 == 1)
      {
        *(a1 + 108) = *(a2 + 4);
      }

      else if (v44 == -1 && *(a1 + 108) == *(a2 + 4))
      {
        *(a1 + 108) = 0;
      }

      fsm_getCurrentMode(a1, a5, v27);
      v45 = FSMDebug_CopyPrettyPrintStringForStarkModeState(a5);
      if (v45)
      {
        CFRelease(v45);
      }

      if (a3)
      {
        v46 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a3, 0x8000100u);
      }

      else
      {
        v46 = 0;
      }

      *v113 = v115;
      v114 = v116;
      v47 = *(a5 + 16);
      *v111 = *a5;
      v112 = v47;
      memcpy(__dst, a2, sizeof(__dst));
      cf = 0;
      v109 = v46;
      if (MX_FeatureFlags_IsAirPlayDaemonEnabled())
      {
        if (dword_1EB75E258)
        {
          v48 = OUTLINED_FUNCTION_9_9();
          OUTLINED_FUNCTION_13_6(v48, v49, v50, v51, v52, v53, v54, v55, v93, v94, v95, v96, v97, v98, v99, FigStarkModeConstraintString, FigStarkModeTransferPriorityString, FigStarkModeTransferTypeString, FigStarkModeEntityString, v104, v105, v106, v46, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], v111[0], v111[1], v112, *(&v112 + 1), v113[0], v113[1], v114, *(&v114 + 1), v115.n128_i64[0], v115.n128_i64[1], v116, *(&v116 + 1), v117, v118, v119, *type);
          OUTLINED_FUNCTION_12_7();
          if (v57)
          {
            v58 = v56;
          }

          else
          {
            v58 = a3;
          }

          if (v58)
          {
            v122 = 136315138;
            v123 = "fsm_postStateChangedOnAllHandlers";
            OUTLINED_FUNCTION_7_10();
            OUTLINED_FUNCTION_2_11();
          }

          v69 = v15[74];
          OUTLINED_FUNCTION_0_0();
          OUTLINED_FUNCTION_15_7();
        }

        *v126 = *v111;
        *&v126[16] = v112;
        FigStarkModeCreateDictionaryRepresentation(v126, &cf);
        v70 = CMSMUtility_CopyStarkEndpointCentral();
        if (v70)
        {
          v71 = v70;
          FigEndpointExtendedGetClassID();
          v107 = v71;
          if (CMBaseObjectIsMemberOfClass())
          {
            v72 = CFRetain(v71);
            if (v72)
            {
              OUTLINED_FUNCTION_15();
              if (_FigEndpointCentralSendCommand(v73, v74, v75, v76, v77))
              {
LABEL_97:
                CFRelease(v72);
LABEL_98:
                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                if (v107)
                {
                  CFRelease(v107);
                }

                if (v109)
                {
                  CFRelease(v109);
                }

                result = 0;
                goto LABEL_105;
              }
            }
          }

          else
          {
            v72 = 0;
          }

LABEL_93:
          if (CFArrayGetCount(*(a1 + 120)) >= 1)
          {
            v81 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 120), v81);
              v83 = a4;
              v84 = *(ValueAtIndex + 4);
              CFRetain(a1);
              CFRetain(ValueAtIndex);
              v85 = *(ValueAtIndex + 3);
              *v126 = MEMORY[0x1E69E9820];
              *&v126[8] = 3221225472;
              *&v128[16] = v114;
              *v128 = *v113;
              v129 = v112;
              *&v126[16] = __fsm_postStateChanged_block_invoke;
              *&v126[24] = &__block_descriptor_189_e5_v8__0l;
              *v127 = a1;
              *&v127[8] = ValueAtIndex;
              *&v127[88] = v84;
              a4 = v83;
              *&v128[32] = *v111;
              memcpy(&v127[16], __dst, 0x48uLL);
              v130 = v83;
              OUTLINED_FUNCTION_15();
              MXDispatchAsync(v86, v87, v88, v89, v90, v85, v91);
              ++v81;
            }

            while (CFArrayGetCount(*(a1 + 120)) > v81);
          }

          if (!v72)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        }
      }

      else
      {
        if (dword_1EB75E258)
        {
          v59 = OUTLINED_FUNCTION_9_9();
          OUTLINED_FUNCTION_13_6(v59, v60, v61, v62, v63, v64, v65, v66, v93, v94, v95, v96, v97, v98, v99, FigStarkModeConstraintString, FigStarkModeTransferPriorityString, FigStarkModeTransferTypeString, FigStarkModeEntityString, v104, v105, v106, v46, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], v111[0], v111[1], v112, *(&v112 + 1), v113[0], v113[1], v114, *(&v114 + 1), v115.n128_i64[0], v115.n128_i64[1], v116, *(&v116 + 1), v117, v118, v119, *type);
          OUTLINED_FUNCTION_12_7();
          if (v57)
          {
            v68 = v67;
          }

          else
          {
            v68 = a3;
          }

          if (v68)
          {
            v122 = 136315138;
            v123 = "fsm_postStateChangedOnAllHandlers";
            OUTLINED_FUNCTION_7_10();
            OUTLINED_FUNCTION_2_11();
          }

          v78 = v15[74];
          OUTLINED_FUNCTION_0_0();
          OUTLINED_FUNCTION_15_7();
        }

        v79 = *(a1 + 112);
        if (v79)
        {
          v80 = *(v79 + 16);
          *v126 = *v111;
          *&v126[16] = v112;
          v80(v79, v126);
        }
      }

      v72 = 0;
      v107 = 0;
      goto LABEL_93;
    }
  }

LABEL_105:
  v92 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef FSMDebug_CopyFigStarkModeBorrowIDString(uint64_t a1)
{
  if ((*a1 & 0xFFFFFFFE) != 0x16)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"N/A", 0);
  }

  v1 = *(a1 + 8);
  v2 = *MEMORY[0x1E695E480];
  if (v1)
  {
    return CFStringCreateWithFormat(v2, 0, @"%@", v1);
  }

  else
  {
    return CFStringCreateWithFormat(v2, 0, @"NULL", 0);
  }
}

const __CFArray *fsm_getCurrentBorrower(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 2);
    if (result)
    {
      Count = CFArrayGetCount(result);
      if (Count >= 1)
      {
        v3 = Count;
        for (i = 0; i != v3; ++i)
        {
          CFArrayGetValueAtIndex(*(v1 + 2), i);
          FigCFDictionaryGetBooleanIfPresent();
        }
      }

      return 0;
    }
  }

  return result;
}

__n128 fsm_getCurrentMode(__n128 *a1, __n128 *a2, int a3)
{
  CurrentBorrower = fsm_getCurrentBorrower(&a1[2]);
  v7 = a1[2].n128_u32[0];
  if (CurrentBorrower)
  {
    v8 = CurrentBorrower;
  }

  else
  {
    v8 = a1[2].n128_u32[0];
  }

  a2->n128_u32[0] = v8;
  a2->n128_u32[1] = v7;
  if (a3)
  {
    v9 = 2;
  }

  else
  {
    v9 = fsm_getCurrentBorrower(&a1[4]);
    if (!v9)
    {
      v9 = a1[4].n128_u32[0];
    }
  }

  v10 = a1[4].n128_u32[0];
  a2->n128_u32[2] = v9;
  a2->n128_u32[3] = v10;
  result = a1[6];
  a2[1] = result;
  return result;
}

uint64_t fsm_verifyResourceChangeRequest(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  result = 4294950565;
  if (v2 <= 20)
  {
    if (v2)
    {
      if (v2 != 20)
      {
        goto LABEL_43;
      }

      v4 = *(a1 + 4);
      if (!v4)
      {
        result = 4294950564;
        goto LABEL_43;
      }

      v5 = *(a1 + 16);
      if (v5)
      {
        v6 = *(a1 + 20);
        if (v6)
        {
          result = 0;
        }

        else
        {
          result = 4294950559;
        }

        if (v4 != 100 || v5 == 100 && v6 == 100)
        {
          goto LABEL_43;
        }
      }

      else if (v4 != 100)
      {
        result = 4294950560;
        goto LABEL_43;
      }

      result = 4294950557;
      goto LABEL_43;
    }

    v10 = (*a1 | *(a1 + 8) | *(a1 + 16)) == 0;
    v11 = -17487;
LABEL_29:
    if (v10)
    {
      result = 0;
    }

    else
    {
      result = v11;
    }

    goto LABEL_43;
  }

  if (v2 == 21)
  {
    if (*(a1 + 4))
    {
      result = 4294950562;
      goto LABEL_43;
    }

    v10 = *(a1 + 16) == 0;
    v11 = -17480;
    goto LABEL_29;
  }

  if (v2 != 22)
  {
    if (v2 != 23)
    {
      goto LABEL_43;
    }

    if (*(a1 + 4))
    {
      result = 4294950561;
      goto LABEL_43;
    }

    v10 = *(a1 + 16) == 0;
    v11 = -17481;
    goto LABEL_29;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      if (*(a1 + 20))
      {
        v9 = -17482;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = -16738;
    }

    if (v8 == 100)
    {
      v12 = v9;
    }

    else
    {
      v12 = -16738;
    }

    if (v7 == 100)
    {
      result = v12;
    }

    else
    {
      result = v9;
    }
  }

  else
  {
    result = 4294950563;
  }

LABEL_43:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *FSMDebug_GetFigStarkModeEntityString(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"***Unknown***";
  }

  else
  {
    return off_1E7AE7058[a1];
  }
}

__CFString *FSMDebug_GetFigStarkModeConstraintString(int a1)
{
  if (a1 > 499)
  {
    if (a1 != 500)
    {
      if (a1 == 1000)
      {
        return @"Never";
      }

      return @"***Unknown***";
    }

    return @"UserInitiated";
  }

  else
  {
    if (a1)
    {
      if (a1 == 100)
      {
        return @"Anytime";
      }

      return @"***Unknown***";
    }

    return @"N/A";
  }
}

void fsm_requestResourceModeChange(int a1, uint64_t a2, uint64_t a3, int a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v7 = *a2;
  if (*a2 > 21)
  {
    if (v7 != 22)
    {
      if (v7 == 23)
      {
        if (*(a2 + 8))
        {
          v8 = *(a3 + 16);
          if (v8)
          {
            Count = CFArrayGetCount(v8);
            v10 = Count - 1;
            if (Count >= 1)
            {
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(a3 + 16), v10);
                FigCFDictionaryGetInt32IfPresent();
                FigCFDictionaryGetInt32IfPresent();
                if (ValueAtIndex)
                {
                  CFDictionaryGetValue(ValueAtIndex, @"BorrowID");
                }

                if (!a1 && FigCFEqual())
                {
                  break;
                }

                if (--v10 == -1)
                {
                  if (dword_1EB75E258)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  goto LABEL_51;
                }
              }

              if (dword_1EB75E258)
              {
                v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              CFArrayRemoveValueAtIndex(*(a3 + 16), v10);
            }
          }
        }

        else
        {
LABEL_51:
          fsm_requestResourceModeChangeUnborrowWithoutBorrowID(a1, a3);
        }

        v31 = *(a3 + 16);
        if (v31 && CFArrayGetCount(v31))
        {
          v32 = *(a3 + 16);
          if (!v32)
          {
            LOBYTE(cf[0]) = 0;
            goto LABEL_62;
          }

          v33 = CFArrayGetCount(v32);
          LOBYTE(cf[0]) = 0;
          if (v33 >= 1)
          {
            for (i = 0; i != v33; ++i)
            {
              CFArrayGetValueAtIndex(*(a3 + 16), i);
              FigCFDictionaryGetBooleanIfPresent();
            }

            goto LABEL_62;
          }

          if (!v33)
          {
LABEL_62:
            v35 = CFArrayGetValueAtIndex(*(a3 + 16), 0);
            FigCFDictionaryGetInt32IfPresent();
            CFDictionarySetValue(v35, @"BorrowSucceeded", *MEMORY[0x1E695E4D0]);
            *(a3 + 24) = 0;
          }
        }

        else
        {
          *(a3 + 24) = 0;
        }
      }

LABEL_63:
      v36 = *MEMORY[0x1E69E9840];
      return;
    }

    if (a1 != 1 || a4 != 1 || (v14 = *(a2 + 8), !FigCFEqual()) && (v15 = *(a2 + 8), !FigCFEqual()))
    {
      v23 = *MEMORY[0x1E69E9840];

      fsm_requestResourceModeChangeBorrow(a1, a2, a3);
      return;
    }

    v16 = *MEMORY[0x1E695E4C0];
    cf[0] = v16;
    v37[0] = v16;
    v17 = CMSMUtility_CopyStarkEndpointCentral();
    if (v17)
    {
      v18 = v17;
      FigEndpointExtendedGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        v19 = CFRetain(v18);
        if (v19)
        {
          v20 = v19;
          v21 = *MEMORY[0x1E695E480];
          v22 = !_FigEndpointCentralCopyProperty(v19, *MEMORY[0x1E6961F98], *MEMORY[0x1E695E480], cf) && !_FigEndpointCentralCopyProperty(v20, *MEMORY[0x1E6961F88], v21, v37) && FigCFEqual() != 0;
          CFRelease(v18);
          CFRelease(v20);
          v16 = cf[0];
          goto LABEL_37;
        }
      }

      CFRelease(v18);
    }

    v22 = 0;
LABEL_37:
    if (v16)
    {
      CFRelease(v16);
      cf[0] = 0;
    }

    if (v37[0])
    {
      CFRelease(v37[0]);
    }

    *v37 = 0u;
    HIDWORD(v37[0]) = 500;
    v38 = vdup_n_s32(0x1F4u);
    fsm_requestResourceModeChangeTake(2, v37, a3);
    if (v22)
    {
      fsm_requestResourceModeChangeBorrow(1, a2, a3);
    }

    else if (dword_1EB75E258)
    {
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v26 = CMSMUtility_CopyStarkEndpointCentral();
    if (v26)
    {
      v27 = v26;
      v28 = [+[MXSessionManager sharedInstance](MXSessionManager copyDisplayIDForActiveCarPlayVideoSession];
      if (v28)
      {
        v29 = v28;
        [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v28, *MEMORY[0x1E69616E8], 0}];
        CMNotificationCenterGetDefaultLocalCenter();
        v30 = *MEMORY[0x1E6961700];
        CMNotificationCenterPostNotification();
        CFRelease(v29);
      }

      CFRelease(v27);
    }

    goto LABEL_63;
  }

  if (v7 != 20)
  {
    if (v7 == 21 && *a3 == a1)
    {
      *(a3 + 4) = 0x6400000064;
    }

    goto LABEL_63;
  }

  v13 = *MEMORY[0x1E69E9840];

  fsm_requestResourceModeChangeTake(a1, a2, a3);
}

__CFString *FSMDebug_GetFigStarkModeSpeechModeRequestString(int a1)
{
  if (a1 > 9)
  {
    if (a1 != 10)
    {
      if (a1 == 11)
      {
        return @"RecognizingSpeech";
      }

      return @"***Unknown***";
    }

    return @"Speaking";
  }

  else
  {
    if (a1 != -1)
    {
      if (!a1)
      {
        return @"N/A";
      }

      return @"***Unknown***";
    }

    return @"Neither";
  }
}

__CFString *FSMDebug_GetFigStarkModeTriStateString(int a1)
{
  if ((a1 + 1) > 2)
  {
    return @"***Unknown***";
  }

  else
  {
    return off_1E7AE7070[a1 + 1];
  }
}

__CFString *FSMDebug_GetFigStarkModeTransferPriorityString(int a1)
{
  v1 = @"UserInitiated";
  v2 = @"***Unknown***";
  if (a1 == 100)
  {
    v2 = @"NiceToHave";
  }

  if (a1 != 500)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"N/A";
  }
}

__CFString *FSMDebug_CopyPrettyPrintStringForModeChangeRequest(unsigned int *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!a1)
  {
    return Mutable;
  }

  v3 = FSMDebug_CopyPrettyPrintStringForResourceChangeRequest((a1 + 2));
  v4 = FSMDebug_CopyPrettyPrintStringForResourceChangeRequest((a1 + 8));
  v5 = v4;
  v6 = *a1;
  if (v6 > 2)
  {
    v7 = @"***Unknown***";
  }

  else
  {
    v7 = off_1E7AE7058[v6];
  }

  v8 = a1[1];
  if (v8 > 2)
  {
    v9 = @"***Unknown***";
  }

  else
  {
    v9 = off_1E7AE7058[v8];
  }

  v10 = a1[14];
  if (v10 > 9)
  {
    if (v10 == 10)
    {
      v11 = @"Speaking";
      goto LABEL_18;
    }

    if (v10 == 11)
    {
      v11 = @"RecognizingSpeech";
      goto LABEL_18;
    }

LABEL_15:
    v11 = @"***Unknown***";
    goto LABEL_18;
  }

  if (v10 == -1)
  {
    v11 = @"Neither";
    goto LABEL_18;
  }

  if (v10)
  {
    goto LABEL_15;
  }

  v11 = @"N/A";
LABEL_18:
  v12 = a1[15] + 1;
  if (v12 > 2)
  {
    v13 = @"***Unknown***";
  }

  else
  {
    v13 = off_1E7AE7070[v12];
  }

  v14 = a1[16] + 1;
  if (v14 > 2)
  {
    v15 = @"***Unknown***";
  }

  else
  {
    v15 = off_1E7AE7070[v14];
  }

  CFStringAppendFormat(Mutable, 0, @"\n\t ModeChangeRequest: \n\t Requestor = Screen: %@       MainAudio: %@\n\t Screen = %@ \n\t MainAudio =  %@ \n\t SpeechMode = %@ \n\t IsOnPhoneCall = %@ \n\t IsDoingTurnByTurn = %@", v7, v9, v3, v4, v11, v13, v15);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return Mutable;
}

__CFString *FSMDebug_CopyPrettyPrintStringForStarkModeState(unsigned int *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = Mutable;
  if (a1)
  {
    v4 = *a1;
    if (v4 > 2)
    {
      v5 = @"***Unknown***";
    }

    else
    {
      v5 = off_1E7AE7058[v4];
    }

    v6 = a1[1];
    if (v6 > 2)
    {
      v7 = @"***Unknown***";
    }

    else
    {
      v7 = off_1E7AE7058[v6];
    }

    v8 = a1[2];
    if (v8 > 2)
    {
      v9 = @"***Unknown***";
    }

    else
    {
      v9 = off_1E7AE7058[v8];
    }

    v10 = a1[3];
    if (v10 > 2)
    {
      v11 = @"***Unknown***";
    }

    else
    {
      v11 = off_1E7AE7058[v10];
    }

    v12 = a1[4];
    if (v12 > 2)
    {
      v13 = @"***Unknown***";
    }

    else
    {
      v13 = off_1E7AE7058[v12];
    }

    v14 = a1[5];
    if (v14)
    {
      if (v14 == 11)
      {
        v15 = @"RecognizingSpeech";
      }

      else if (v14 == 10)
      {
        v15 = @"Speaking";
      }

      else
      {
        v15 = @"***Unknown***";
      }
    }

    else
    {
      v15 = @"N/A";
    }

    v16 = a1[6];
    if (v16 > 2)
    {
      v17 = @"***Unknown***";
    }

    else
    {
      v17 = off_1E7AE7058[v16];
    }

    v18 = a1[7];
    if (v18 > 2)
    {
      v19 = @"***Unknown***";
    }

    else
    {
      v19 = off_1E7AE7058[v18];
    }

    CFStringAppendFormat(Mutable, 0, @"\n\t Mode: \n\t ScreenEntity = %@ \n\t ScreenOwnerEntity = %@ \n\t MainAudioEntity = %@ \n\t MainAudioOwnerEntity = %@ \n\t\t SpeechEntity =  %@ \n\t\t SpeechMode = %@ \n\t PhoneCallEntity = %@ \n\t TurnByTurnEntity = %@", v5, v7, v9, v11, v13, v15, v17, v19);
  }

  return v3;
}

__CFString *FSMDebug_CopyPrettyPrintStringForResourceChangeRequest(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = Mutable;
  if (!a1)
  {
    return v3;
  }

  v4 = *a1;
  if (*a1 <= 20)
  {
    if (!v4)
    {
      v10 = @"N/A";
      goto LABEL_23;
    }

    if (v4 != 20)
    {
LABEL_22:
      v10 = @"***Unknown***";
      goto LABEL_23;
    }

    v8 = *(a1 + 4);
    if (v8)
    {
      if (v8 == 500)
      {
        v9 = @"UserInitiated";
      }

      else if (v8 == 100)
      {
        v9 = @"NiceToHave";
      }

      else
      {
        v9 = @"***Unknown***";
      }
    }

    else
    {
      v9 = @"N/A";
    }

    v19 = *(a1 + 16);
    if (v19 > 499)
    {
      if (v19 != 500)
      {
        if (v19 == 1000)
        {
          v20 = @"Never";
          goto LABEL_62;
        }

        goto LABEL_56;
      }

      v20 = @"UserInitiated";
    }

    else
    {
      if (v19)
      {
        if (v19 == 100)
        {
          v20 = @"Anytime";
          goto LABEL_62;
        }

LABEL_56:
        v20 = @"***Unknown***";
        goto LABEL_62;
      }

      v20 = @"N/A";
    }

LABEL_62:
    v21 = *(a1 + 20);
    if (v21 > 499)
    {
      if (v21 == 500)
      {
        v22 = @"UserInitiated";
        goto LABEL_72;
      }

      if (v21 == 1000)
      {
        v22 = @"Never";
        goto LABEL_72;
      }
    }

    else
    {
      if (!v21)
      {
        v22 = @"N/A";
        goto LABEL_72;
      }

      if (v21 == 100)
      {
        v22 = @"Anytime";
LABEL_72:
        CFStringAppendFormat(Mutable, 0, @"\n\t\t ResourceChangeRequest: \n\t\t Type = %@ \n\t\t Priority = %@ \n\t\t\t TakeConstraint =  %@ \n\t\t\t BorrowConstraint = %@ \n", @"Take", v9, v20, v22);
        return v3;
      }
    }

    v22 = @"***Unknown***";
    goto LABEL_72;
  }

  if (v4 != 21)
  {
    if (v4 != 22)
    {
      if (v4 == 23)
      {
        v5 = *(a1 + 8);
        v6 = *(a1 + 4);
        if (v6)
        {
          if (v6 == 500)
          {
            v7 = @"UserInitiated";
          }

          else if (v6 == 100)
          {
            v7 = @"NiceToHave";
          }

          else
          {
            v7 = @"***Unknown***";
          }
        }

        else
        {
          v7 = @"N/A";
        }

        CFStringAppendFormat(Mutable, 0, @"\n\t\t ResourceChangeRequest: \n\t\t Type = %@ \n\t\t BorrowID = %@ \n\t\t Priority = %@ \n", @"Unborrow", *(a1 + 8), v7);
        return v3;
      }

      goto LABEL_22;
    }

    v11 = *(a1 + 4);
    if (v11)
    {
      if (v11 == 500)
      {
        v12 = @"UserInitiated";
      }

      else if (v11 == 100)
      {
        v12 = @"NiceToHave";
      }

      else
      {
        v12 = @"***Unknown***";
      }
    }

    else
    {
      v12 = @"N/A";
    }

    v17 = *(a1 + 16);
    if (v17 > 499)
    {
      if (v17 == 500)
      {
        v18 = @"UserInitiated";
        goto LABEL_59;
      }

      if (v17 == 1000)
      {
        v18 = @"Never";
        goto LABEL_59;
      }
    }

    else
    {
      if (!v17)
      {
        v18 = @"N/A";
        goto LABEL_59;
      }

      if (v17 == 100)
      {
        v18 = @"Anytime";
LABEL_59:
        CFStringAppendFormat(Mutable, 0, @"\n\t\t ResourceChangeRequest: \n\t\t Type = %@ \n\t\t BorrowID = %@ \n\t\t Priority = %@ \n\t\t\t UnborrowConstraint = %@ \n", @"Borrow", *(a1 + 8), v12, v18);
        return v3;
      }
    }

    v18 = @"***Unknown***";
    goto LABEL_59;
  }

  v10 = @"Untake";
LABEL_23:
  v13 = *(a1 + 4);
  v14 = @"UserInitiated";
  v15 = @"***Unknown***";
  if (v13 == 100)
  {
    v15 = @"NiceToHave";
  }

  if (v13 != 500)
  {
    v14 = v15;
  }

  if (v13)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"N/A";
  }

  CFStringAppendFormat(Mutable, 0, @"\n\t\t ResourceChangeRequest: \n\t\t Type = %@ \n\t\t Priority = %@ \n", v10, v16);
  return v3;
}

BOOL OUTLINED_FUNCTION_4_3(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_4_5@<X0>(uint64_t a1@<X8>, CMTime *time1, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a11, uint64_t time1a)
{
  time2_16 = a1;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_4_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;
  a10 = 0;

  return remoteXPCStarkModeController_GetObjectID(a1, &a10);
}

uint64_t OUTLINED_FUNCTION_4_8()
{
  v2 = *(v0 + 3640);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_4_13(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, os_log_type_t type, uint64_t a16, int a17)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_4_14()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;
  a10 = 0;

  return remoteSystemController_getObjectID(a1, &a10);
}

CFIndex fsm_printListOfBorrowers(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  result = *(a1 + 16);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v3 = result;
      for (i = 0; i != v3; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), i);
        CFDictionaryGetValue(ValueAtIndex, @"BorrowID");
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        result = FigCFDictionaryGetBooleanIfPresent();
        if (dword_1EB75E258)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          result = fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void fsm_requestResourceModeChangeBorrow(int a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  CurrentBorrower = fsm_getCurrentBorrower(a3);
  if (!CurrentBorrower)
  {
    if (*a3 != a1)
    {
      v7 = 8;
      goto LABEL_7;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_8;
  }

  if (CurrentBorrower == a1)
  {
    goto LABEL_5;
  }

  v7 = 24;
LABEL_7:
  v8 = *(a3 + v7);
LABEL_8:
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  SInt32 = FigCFNumberCreateSInt32();
  v11 = *(a2 + 16);
  v12 = FigCFNumberCreateSInt32();
  CFDictionarySetValue(Mutable, @"BorrowerEntity", SInt32);
  CFDictionarySetValue(Mutable, @"UnborrowConstraint", v12);
  if (*(a2 + 8))
  {
    FigCFDictionarySetValue();
  }

  else if (dword_1EB75E258)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a2 + 4) >= v8)
  {
    CFDictionarySetValue(Mutable, @"BorrowSucceeded", *MEMORY[0x1E695E4D0]);
    *(a3 + 24) = *(a2 + 16);
  }

  else
  {
    CFDictionarySetValue(Mutable, @"BorrowSucceeded", *MEMORY[0x1E695E4C0]);
    if (dword_1EB75E258)
    {
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  CFArrayInsertValueAtIndex(*(a3 + 16), 0, Mutable);
  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void FigStarkModeCreateDictionaryRepresentation(_DWORD *a1, void *a2)
{
  if (a2)
  {
    context = objc_autoreleasePoolPush();
    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = a1[6];
    if (v4 == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4 == 2;
    }

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", 2), @"appStateID"}];
    [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v5), @"entity"}];
    [v3 addObject:v6];

    v7 = a1[4];
    v8 = a1[5];
    if (v7 == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 == 2;
    }

    if (v8 == 11)
    {
      v10 = 2;
    }

    else
    {
      v10 = -1;
    }

    if (v8 == 10)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", 1), @"appStateID"}];
    [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v9), @"entity"}];
    [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v11), @"speechMode"}];
    [v3 addObject:v12];

    v13 = a1[7];
    if (v13 == 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = v13 == 2;
    }

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", 3), @"appStateID"}];
    [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v14), @"entity"}];
    [v3 addObject:v15];

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = a1[2];
    v18 = a1[3];
    if (v17 == 1)
    {
      v19 = 2;
    }

    else
    {
      v19 = v17 == 2;
    }

    if (v18 == 1)
    {
      v20 = 2;
    }

    else
    {
      v20 = v18 == 2;
    }

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", 2), @"resourceID"}];
    [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v19), @"entity"}];
    [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v20), @"permanentEntity"}];
    [v16 addObject:v21];

    v22 = a1[1];
    if (*a1 == 1)
    {
      v23 = 2;
    }

    else
    {
      v23 = *a1 == 2;
    }

    if (v22 == 1)
    {
      v24 = 2;
    }

    else
    {
      v24 = v22 == 2;
    }

    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v25 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", 1), @"resourceID"}];
    [v25 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v23), @"entity"}];
    [v25 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v24), @"permanentEntity"}];
    [v16 addObject:v25];

    [v26 setObject:v3 forKey:@"appStates"];
    [v26 setObject:v16 forKey:@"resources"];
    *a2 = v26;

    objc_autoreleasePoolPop(context);
  }

  else
  {
    FigStarkModeCreateDictionaryRepresentation_cold_1();
  }
}

uint64_t fsm_getFigStarkModeResourceChangeRequestEncoding(int *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 <= 20)
  {
    if (!v3)
    {
      v5 = 1;
      v1 = 0;
      v2 = 0;
LABEL_20:
      v7 = 32;
      goto LABEL_24;
    }

    v6 = v3 == 20;
    if (v3 == 20)
    {
      v3 = 0;
    }

    else
    {
      v3 = a1[4];
    }

    if (v6)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 21:
        v3 = 0;
        v1 = 0;
        v2 = 0;
        v5 = 4;
        break;
      case 22:
        v1 = 0;
        v5 = 8;
        v3 = a1[4];
        v2 = 0;
        break;
      case 23:
        v3 = 0;
        v1 = 0;
        v2 = 0;
        v5 = 16;
        break;
      default:
        v5 = 0;
        v3 = a1[4];
        break;
    }
  }

  switch(v4)
  {
    case 500:
      v7 = 128;
      break;
    case 100:
      v7 = 64;
      break;
    case 0:
      goto LABEL_20;
    default:
      v7 = 0;
      break;
  }

LABEL_24:
  if (v2 == 1000)
  {
    v8 = 2048;
  }

  else
  {
    v8 = 0;
  }

  if (v2 == 500)
  {
    v9 = 1024;
  }

  else
  {
    v9 = v8;
  }

  if (v2 == 100)
  {
    v10 = 512;
  }

  else
  {
    v10 = 0;
  }

  if (v2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 256;
  }

  if (v2 <= 499)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  if (v1 == 1000)
  {
    v13 = 0x8000;
  }

  else
  {
    v13 = 0;
  }

  if (v1 == 500)
  {
    v14 = 0x4000;
  }

  else
  {
    v14 = v13;
  }

  if (v1 == 100)
  {
    v15 = 0x2000;
  }

  else
  {
    v15 = 0;
  }

  if (v1)
  {
    v16 = v15;
  }

  else
  {
    v16 = 4096;
  }

  if (v1 <= 499)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14;
  }

  if (v3 == 1000)
  {
    v18 = 0x80000;
  }

  else
  {
    v18 = 0;
  }

  if (v3 == 500)
  {
    v19 = 0x40000;
  }

  else
  {
    v19 = v18;
  }

  if (v3 == 100)
  {
    v20 = 0x20000;
  }

  else
  {
    v20 = 0;
  }

  if (v3)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0x10000;
  }

  if (v3 <= 499)
  {
    v22 = v21;
  }

  else
  {
    v22 = v19;
  }

  return v7 | v5 | v12 | v17 | v22;
}

uint64_t FigStarkModeChangeGetActions(__int128 *a1, __int128 *a2, unsigned int *a3, int a4)
{
  v8 = &qword_1EB75D000;
  if (a4)
  {
    if (sFigStarkModeActionMap_V1)
    {
      goto LABEL_7;
    }

    v9 = 1;
  }

  else
  {
    if (sFigStarkModeActionMap_V2)
    {
      goto LABEL_7;
    }

    v9 = 2;
  }

  fsm_setupStarkModeActionMap(v9);
LABEL_7:
  v10 = a1[1];
  v54 = *a1;
  v55 = v10;
  FigStarkModeStateEncoding = fsm_getFigStarkModeStateEncoding(&v54);
  v12 = a2[1];
  v54 = *a2;
  v55 = v12;
  v13 = fsm_getFigStarkModeStateEncoding(&v54);
  v14 = a3[1];
  v15 = a3[14];
  if (v14 > 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = qword_1B19D88B0[v14];
  }

  v18 = a3[15];
  v17 = a3[16];
  v54 = *(a3 + 2);
  *&v55 = *(a3 + 6);
  v19 = fsm_getFigStarkModeResourceChangeRequestEncoding(&v54);
  v20 = 0;
  if (v15 > 9)
  {
    if (v15 == 10)
    {
      v20 = 0x200000000000;
    }

    else if (v15 == 11)
    {
      v20 = 0x400000000000;
    }
  }

  else if (v15 == -1)
  {
    v20 = 0x100000000000;
  }

  else if (!v15)
  {
    v20 = 0x80000000000;
  }

  if (v18 + 1 > 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = qword_1B19D88C8[v18 + 1];
  }

  if (v17 + 1 > 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = qword_1B19D88E0[v17 + 1];
  }

  v23 = v21 | v20;
  v24 = *a3;
  if (v24 > 2)
  {
    v25 = 0;
  }

  else
  {
    v25 = dword_1B19D88F8[v24];
  }

  v26 = v16 | (v19 << 23);
  v51 = v22 | v23;
  v54 = *(a3 + 2);
  *&v55 = *(a3 + 3);
  v53 = v25 | (8 * fsm_getFigStarkModeResourceChangeRequestEncoding(&v54));
  v27 = a3[8];
  v28 = v27 == 0;
  v29 = v27 != 0;
  if (v28)
  {
    v30 = 4;
  }

  else
  {
    v30 = 5;
  }

  if (v15)
  {
    v29 = v30;
  }

  if (v18)
  {
    v29 |= 8u;
  }

  if (v17)
  {
    v31 = v29 | 0x10;
  }

  else
  {
    v31 = v29;
  }

  v52 = 2 * (a3[2] != 0);
  if (a4)
  {
    if (sFigStarkModeActionMap_V1)
    {
      Count = CFArrayGetCount(sFigStarkModeActionMap_V1);
      if (Count >= 1)
      {
        v33 = Count;
        LODWORD(v34) = 0;
        v35 = 0;
        v36 = v31;
        v37 = v51;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8[311], v35);
          v39 = fsm_getFigStarkModeChangeActionFromDict(ValueAtIndex, FigStarkModeStateEncoding, v13, v37 | v26, v36);
          v40 = v26;
          v41 = v8;
          v42 = v39;
          v43 = fsm_getFigStarkModeChangeActionFromDict(ValueAtIndex, FigStarkModeStateEncoding, v13, v53, v52);
          v44 = v42 | v34;
          v8 = v41;
          v26 = v40;
          v37 = v51;
          v34 = v44 | v43;
          ++v35;
        }

        while (v33 != v35);
        return v34;
      }
    }

    return 0;
  }

  if (!sFigStarkModeActionMap_V2)
  {
    return 0;
  }

  v45 = CFArrayGetCount(sFigStarkModeActionMap_V2);
  if (v45 < 1)
  {
    return 0;
  }

  v46 = v45;
  LODWORD(v34) = 0;
  for (i = 0; i != v46; ++i)
  {
    v48 = CFArrayGetValueAtIndex(sFigStarkModeActionMap_V2, i);
    v49 = fsm_getFigStarkModeChangeActionFromDict(v48, FigStarkModeStateEncoding, v13, v51 | v26, v31);
    v34 = v49 | v34 | fsm_getFigStarkModeChangeActionFromDict(v48, FigStarkModeStateEncoding, v13, v53, v52);
  }

  return v34;
}

CFTypeRef CMSMUtility_CopyStarkEndpointCentral()
{
  result = qword_1EB75E178;
  if (qword_1EB75E178)
  {
    return CFRetain(qword_1EB75E178);
  }

  return result;
}

void __fsm_postStateChanged_block_invoke(uint64_t a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v20 = *(a1 + 32);
  v2 = *(v20 + 16);
  v19[2] = __fsm_postStateChanged_block_invoke_2;
  v19[3] = &unk_1E7AE7B30;
  v21 = *(a1 + 120);
  v19[4] = &v22;
  MXDispatchSync("fsm_postStateChanged_block_invoke", "FigStarkMode.m", 172, 0, 0, v2, v19);
  if (*(v23 + 24))
  {
    v6 = *(*(a1 + 40) + 32);
    v7 = *(a1 + 188);
    v8 = *(v6 + 16);
    v9 = *(a1 + 140);
    v18[0] = *(a1 + 124);
    v18[1] = v9;
    v10 = *(a1 + 172);
    v17[0] = *(a1 + 156);
    v17[1] = v10;
    v11 = *(a1 + 96);
    v15[2] = *(a1 + 80);
    v15[3] = v11;
    v16 = *(a1 + 112);
    v12 = *(a1 + 64);
    v15[0] = *(a1 + 48);
    v15[1] = v12;
    v8(v6, v18, v17, v15, v7, v3, v4, v5);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    CFRelease(v14);
  }

  _Block_object_dispose(&v22, 8);
}

void __FigEndpointCreateCentral_block_invoke(uint64_t a1, __int128 *a2, uint64_t *a3, __int128 *a4, int a5)
{
  v145 = *MEMORY[0x1E69E9840];
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v9)
  {
    v10 = v9;
    v130 = *a2;
    v131 = a2[1];
    v11 = *a3;
    v12 = *(a3 + 2);
    v13 = *(a3 + 3);
    v129 = *(a3 + 1);
    v14 = a4[1];
    v135 = *a4;
    v136 = v14;
    v137[0] = a4[2];
    *(v137 + 12) = *(a4 + 44);
    v15 = *(a4 + 15);
    v16 = *(a4 + 8);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage)
    {
LABEL_233:
      CFRelease(v10);
      goto LABEL_234;
    }

    v18 = DerivedStorage;
    if (*DerivedStorage)
    {
      LODWORD(v132) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_233;
    }

    *type = 0;
    if (a5)
    {
      central_HandleCarModeStateChange_cachedMainAudioEntity = 0;
      *(DerivedStorage + 3) = 1;
    }

    v128 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v21(CMBaseObject, *MEMORY[0x1E6962310], v128, type);
      v21 = *type;
    }

    v22 = *MEMORY[0x1E695E4D0];
    v23 = v21 == *MEMORY[0x1E695E4D0];
    *v138 = v130;
    v139 = v131;
    *&v132 = v11;
    *(&v132 + 1) = __PAIR64__(v13, v12);
    v125 = v13;
    v133 = v129;
    *cf = v135;
    v141 = v136;
    *v142 = v137[0];
    *&v142[12] = *(v137 + 12);
    v143 = v15;
    v144 = v16;
    v24 = FigStarkModeChangeGetActions(v138, &v132, cf, v23);
    if (*type)
    {
      CFRelease(*type);
      *type = 0;
    }

    if (a5 && (v24 & 0x10000) != 0)
    {
      if (dword_1EB75E218)
      {
        LODWORD(v132) = 0;
        v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v26 = v132;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v26;
        }

        else
        {
          v27 = v26 & 0xFFFFFFFE;
        }

        if (v27)
        {
          LODWORD(v138[0]) = 136315138;
          *(v138 + 4) = "central_HandleCarModeStateChange";
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerSendCarPlayDisableBluetoothCommand();
      *(v18 + 1) = 1;
      MXSessionSetProperty(v18[2], @"MakeStarkPortRoutableForPlayingSession", v22);
      MXSessionSetProperty(v18[2], @"NowPlayingAppShouldResumeForCarPlay", v22);
    }

    if (a5 && (v24 & 1) != 0)
    {
      if (dword_1EB75E218)
      {
        LODWORD(v132) = 0;
        v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v29 = v132;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v29;
        }

        else
        {
          v30 = v29 & 0xFFFFFFFE;
        }

        if (v30)
        {
          LODWORD(v138[0]) = 136315138;
          *(v138 + 4) = "central_HandleCarModeStateChange";
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      cf[0] = 0;
      if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToBorrowStarkMainAudio", cf))
      {
        v31 = 0;
      }

      else
      {
        v31 = FigCFEqual() != 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToTakeStarkMainAudio", cf))
      {
        v32 = 0;
      }

      else
      {
        v32 = FigCFEqual() != 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (MXSessionCopyProperty(v18[2], @"CurrentPlayingSessionIsRoutedViaCarBT", cf))
      {
        v33 = 1;
      }

      else
      {
        v33 = FigCFEqual() == 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      v34 = v31 || v32;
      if (v15 != 1)
      {
        FigRoutingManagerSendCarPlayDisableBluetoothCommand();
        *(v18 + 1) = 1;
        if (v33)
        {
          if (v34)
          {
            goto LABEL_61;
          }

          v36 = v18[2];
          v37 = kCMSessionGlobalProperty_NowPlayingAppShouldResumeForCarPlay;
        }

        else
        {
          v36 = v18[2];
          v37 = kCMSessionGlobalProperty_MakeStarkPortRoutableForPlayingSession;
        }

        MXSessionSetProperty(v36, *v37, v22);
        goto LABEL_61;
      }

      if (MXSessionCopyProperty(v18[2], @"CurrentPhoneCallIsRoutedViaCarBT", cf))
      {
        v35 = 1;
      }

      else
      {
        v35 = FigCFEqual() == 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (v35)
      {
        MXSessionBeginInterruption(v18[2]);
        v38 = !v34;
      }

      else
      {
        FigRoutingManagerSendCarPlayDisableBluetoothCommand();
        *(v18 + 1) = 1;
        MXSessionSetProperty(v18[2], @"MakeStarkPortRoutableForPlayingSession", v22);
        v38 = 0;
      }

      v39 = *MEMORY[0x1E695E4C0];
      MXSessionSetProperty(v18[2], @"NowPlayingAppShouldResumeForCarPlay", *MEMORY[0x1E695E4C0]);
      if (v38)
      {
        MXSessionSetProperty(v18[2], @"NowPlayingAppShouldResumeForCarPlay", v39);
        MXSessionBeginInterruption(v18[2]);
      }
    }

LABEL_61:
    if (!a5 || (v24 & 0x20000) == 0)
    {
      goto LABEL_90;
    }

    if (dword_1EB75E218)
    {
      LODWORD(v132) = 0;
      v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v41 = v132;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 & 0xFFFFFFFE;
      }

      if (v42)
      {
        LODWORD(v138[0]) = 136315138;
        *(v138 + 4) = "central_HandleCarModeStateChange";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    cf[0] = 0;
    if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToTakeStarkMainAudio", cf))
    {
      v43 = 1;
    }

    else
    {
      v43 = FigCFEqual() == 0;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    if (MXSessionCopyProperty(v18[2], @"CurrentPlayingSessionIsRoutedViaCarBT", cf))
    {
      v44 = 1;
    }

    else
    {
      v44 = FigCFEqual() == 0;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    FigRoutingManagerSendCarPlayDisableBluetoothCommand();
    *(v18 + 1) = 1;
    if (v44)
    {
      if (v43)
      {
        v45 = 0;
        goto LABEL_85;
      }
    }

    else
    {
      MXSessionSetProperty(v18[2], @"MakeStarkPortRoutableForPlayingSession", v22);
    }

    MXSessionSetProperty(v18[2], @"NowPlayingAppShouldResumeForCarPlay", *MEMORY[0x1E695E4C0]);
    v45 = 1;
LABEL_85:
    MXSessionBeginInterruption(v18[2]);
    v46 = CMSMNP_CopyNowPlayingAppWasPlayingUponCarPlayDisconnectFromDisk();
    v47 = (v45 & 1) == 0 && FigCFEqual() != 0;
    *(v18 + 2) = v47;
    if (v46)
    {
      CFRelease(v46);
    }

LABEL_90:
    if (a5 && (v24 & 2) != 0)
    {
      if (dword_1EB75E218)
      {
        LODWORD(v132) = 0;
        v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v49 = v132;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v50 = v49;
        }

        else
        {
          v50 = v49 & 0xFFFFFFFE;
        }

        if (v50)
        {
          LODWORD(v138[0]) = 136315138;
          *(v138 + 4) = "central_HandleCarModeStateChange";
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerSendCarPlayDisableBluetoothCommand();
      *(v18 + 1) = 1;
      MXSessionSetProperty(v18[2], @"NowPlayingAppShouldResumeForCarPlay", *MEMORY[0x1E695E4C0]);
      MXSessionBeginInterruption(v18[2]);
    }

    if (a5 && (v24 & 4) != 0)
    {
      if (dword_1EB75E218)
      {
        LODWORD(v132) = 0;
        v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v52 = v132;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v53 = v52;
        }

        else
        {
          v53 = v52 & 0xFFFFFFFE;
        }

        if (v53)
        {
          LODWORD(v138[0]) = 136315138;
          *(v138 + 4) = "central_HandleCarModeStateChange";
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      cf[0] = 0;
      if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToBorrowStarkMainAudio", cf))
      {
        v54 = 0;
      }

      else
      {
        v54 = FigCFEqual() != 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToTakeStarkMainAudio", cf))
      {
        v55 = 0;
      }

      else
      {
        v55 = FigCFEqual() != 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (MXSessionCopyProperty(v18[2], @"CurrentPlayingSessionIsRoutedViaCarBT", cf))
      {
        v56 = 0;
      }

      else
      {
        v56 = FigCFEqual() != 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      FigRoutingManagerSendCarPlayDisableBluetoothCommand();
      *(v18 + 1) = 1;
      v57 = v18[2];
      if (v56 || v54 || v55)
      {
        MXSessionSetProperty(v57, @"MakeStarkPortRoutableForPlayingSession", v22);
      }

      else
      {
        MXSessionSetProperty(v57, @"NowPlayingAppShouldResumeForCarPlay", *MEMORY[0x1E695E4C0]);
        MXSessionBeginInterruption(v18[2]);
      }
    }

    else if (!a5 && (v24 & 8) != 0)
    {
      if (FigEndpointCentralEntityHoldsResource(v10, @"Car", @"MainAudio"))
      {
        MXSessionBeginInterruption(v18[2]);
      }

      if (!*(v18 + 1))
      {
        FigRoutingManagerSendCarPlayDisableBluetoothCommand();
        *(v18 + 1) = 1;
      }
    }

    if ((v24 & 0x10) != 0)
    {
      if (dword_1EB75E218)
      {
        LODWORD(v132) = 0;
        v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v59 = v132;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v60 = v59;
        }

        else
        {
          v60 = v59 & 0xFFFFFFFE;
        }

        if (v60)
        {
          LODWORD(v138[0]) = 136315138;
          *(v138 + 4) = "central_HandleCarModeStateChange";
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      MXSessionEndInterruption(v18[2], @"resumable.carMainAudioUnborrowed");
      if (!*(v18 + 1))
      {
        FigRoutingManagerSendCarPlayDisableBluetoothCommand();
        *(v18 + 1) = 1;
      }

      *&v132 = 0;
      if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToBorrowStarkMainAudio", &v132))
      {
        v61 = 0;
      }

      else
      {
        v61 = FigCFEqual() != 0;
      }

      if (v132)
      {
        CFRelease(v132);
        *&v132 = 0;
      }

      if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToTakeStarkMainAudio", &v132))
      {
        v62 = 0;
      }

      else
      {
        v62 = FigCFEqual() != 0;
      }

      if (v132)
      {
        CFRelease(v132);
        *&v132 = 0;
      }

      if (v61 || v62)
      {
        v63 = v18[2];
        v64 = *MEMORY[0x1E695E4C0];
      }

      else
      {
        if (!*(v18 + 2))
        {
          goto LABEL_160;
        }

        if (dword_1EB75E218)
        {
          v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v63 = v18[2];
        v64 = v22;
      }

      MXSessionSetProperty(v63, @"NowPlayingAppShouldResumeForCarPlay", v64);
      *(v18 + 2) = 0;
    }

LABEL_160:
    if ((v24 & 0x20) != 0)
    {
      if (dword_1EB75E218)
      {
        LODWORD(v132) = 0;
        v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v67 = v132;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v68 = v67;
        }

        else
        {
          v68 = v67 & 0xFFFFFFFE;
        }

        if (v68)
        {
          LODWORD(v138[0]) = 136315138;
          *(v138 + 4) = "central_HandleCarModeStateChange";
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      cf[0] = 0;
      if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToBorrowStarkMainAudio", cf))
      {
        v69 = 0;
      }

      else
      {
        v69 = FigCFEqual() != 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (MXSessionCopyProperty(v18[2], @"iOSWillRequestToTakeStarkMainAudio", cf))
      {
        v70 = 0;
      }

      else
      {
        v70 = FigCFEqual() != 0;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (v70 || v69)
      {
        MXSessionEndInterruption(v18[2], @"resumable.carMainAudioUnborrowed");
      }

      if (!*(v18 + 1))
      {
        FigRoutingManagerSendCarPlayDisableBluetoothCommand();
        *(v18 + 1) = 1;
      }
    }

    if ((v24 & 0x4000) != 0)
    {
      CMSessionMgrInterruptVoiceAssistantIfCarSupportsAuxStream();
      if ((v24 & 0x800) == 0)
      {
LABEL_184:
        if ((v24 & 0x1000) == 0)
        {
          goto LABEL_185;
        }

        goto LABEL_196;
      }
    }

    else if ((v24 & 0x800) == 0)
    {
      goto LABEL_184;
    }

    if (dword_1EB75E218)
    {
      LODWORD(v132) = 0;
      v71 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v72 = v132;
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
        LODWORD(v138[0]) = 136315138;
        *(v138 + 4) = "central_HandleCarModeStateChange";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    MXSessionSetProperty(v18[2], @"MakeStarkPortRoutableForPlayingSession", v22);
    if ((v24 & 0x1000) == 0)
    {
LABEL_185:
      if ((v24 & 0x8000) == 0)
      {
        goto LABEL_214;
      }

      goto LABEL_204;
    }

LABEL_196:
    if (dword_1EB75E218)
    {
      LODWORD(v132) = 0;
      v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v75 = v132;
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        v76 = v75;
      }

      else
      {
        v76 = v75 & 0xFFFFFFFE;
      }

      if (v76)
      {
        LODWORD(v138[0]) = 136315138;
        *(v138 + 4) = "central_HandleCarModeStateChange";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    MXSessionSetProperty(v18[2], @"MakeStarkPortRoutableForPhoneCall", v22);
    if ((v24 & 0x8000) == 0)
    {
LABEL_214:
      v80 = v12 == 1 && v125 == 2;
      v81 = *MEMORY[0x1E695E4C0];
      if (v80)
      {
        v82 = v22;
      }

      else
      {
        v82 = *MEMORY[0x1E695E4C0];
      }

      MXSessionSetProperty(v18[2], @"StarkMainAudioIsOwnedByiOSButBorrowedByCar", v82);
      if (v12 == central_HandleCarModeStateChange_cachedMainAudioEntity)
      {
LABEL_227:
        v86 = MEMORY[0x1E69625F8];
        v87 = MEMORY[0x1E6961710];
        if ((v24 & 0x40) != 0)
        {
          v89 = v18[1];
          v90 = FigEndpointUtility_CopyEndpointType();
          v91 = v18[1];
          v92 = FigEndpointUtility_CopyEndpointTransportType();
          cf[0] = 0;
          v93 = v18[1];
          v94 = *v86;
          FigEndpointCopyStreamsForTypeAndSubType();
          if (cf[0])
          {
            v121 = v24;
            v123 = v22;
            v126 = v10;
            Count = CFArrayGetCount(cf[0]);
            if (Count >= 1)
            {
              v96 = Count;
              v97 = 0;
              v98 = *MEMORY[0x1E69625A0];
              v99 = *MEMORY[0x1E69625E0];
              do
              {
                v138[0] = 0;
                ValueAtIndex = CFArrayGetValueAtIndex(cf[0], v97);
                v101 = FigEndpointStreamGetCMBaseObject();
                v102 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v102)
                {
                  v102(v101, v98, 0, v138);
                }

                if (FigCFEqual())
                {
                  CMScreenSuspendStream(ValueAtIndex);
                }

                if (v138[0])
                {
                  CFRelease(v138[0]);
                }

                ++v97;
              }

              while (v96 != v97);
            }

            v22 = v123;
            v10 = v126;
            LOWORD(v24) = v121;
            v87 = MEMORY[0x1E6961710];
            v86 = MEMORY[0x1E69625F8];
            if (cf[0])
            {
              CFRelease(cf[0]);
            }
          }

          if (v90)
          {
            CFRelease(v90);
          }

          if (v92)
          {
            CFRelease(v92);
          }

          CMNotificationCenterGetDefaultLocalCenter();
          v103 = *v87;
          CMNotificationCenterPostNotification();
          if ((v24 & 0x80) == 0)
          {
LABEL_229:
            if ((v24 & 0x2000) == 0)
            {
              goto LABEL_230;
            }

            goto LABEL_269;
          }
        }

        else if ((v24 & 0x80) == 0)
        {
          goto LABEL_229;
        }

        v104 = v18[1];
        v105 = FigEndpointUtility_CopyEndpointType();
        v106 = v18[1];
        v107 = FigEndpointUtility_CopyEndpointTransportType();
        cf[0] = 0;
        v108 = v18[1];
        v109 = *v86;
        FigEndpointCopyStreamsForTypeAndSubType();
        if (cf[0])
        {
          v122 = v24;
          v124 = v22;
          v127 = v10;
          v110 = CFArrayGetCount(cf[0]);
          if (v110 >= 1)
          {
            v111 = v110;
            v112 = 0;
            v113 = *MEMORY[0x1E69625A0];
            v114 = *MEMORY[0x1E69625E0];
            do
            {
              v138[0] = 0;
              v115 = CFArrayGetValueAtIndex(cf[0], v112);
              v116 = FigEndpointStreamGetCMBaseObject();
              v117 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v117)
              {
                v117(v116, v113, 0, v138);
              }

              if (FigCFEqual())
              {
                CMScreenResumeStream(v115);
              }

              if (v138[0])
              {
                CFRelease(v138[0]);
              }

              ++v112;
            }

            while (v111 != v112);
          }

          v22 = v124;
          v10 = v127;
          LOWORD(v24) = v122;
          v87 = MEMORY[0x1E6961710];
          if (cf[0])
          {
            CFRelease(cf[0]);
          }
        }

        if (v105)
        {
          CFRelease(v105);
        }

        if (v107)
        {
          CFRelease(v107);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        v118 = *MEMORY[0x1E6961708];
        CMNotificationCenterPostNotification();
        if ((v24 & 0x2000) == 0)
        {
LABEL_230:
          if ((v24 & 0x100) == 0)
          {
            goto LABEL_231;
          }

          goto LABEL_270;
        }

LABEL_269:
        CMNotificationCenterGetDefaultLocalCenter();
        v119 = *v87;
        CMNotificationCenterPostNotification();
        if ((v24 & 0x100) == 0)
        {
LABEL_231:
          if ((v24 & 0x400) == 0)
          {
            goto LABEL_233;
          }

LABEL_232:
          MXSessionSetProperty(v18[2], @"CarSpeechStateChanged", v22);
          goto LABEL_233;
        }

LABEL_270:
        CMNotificationCenterGetDefaultLocalCenter();
        v120 = *MEMORY[0x1E6961720];
        CMNotificationCenterPostNotification();
        if ((v24 & 0x400) == 0)
        {
          goto LABEL_233;
        }

        goto LABEL_232;
      }

      if (v12 == 2)
      {
        v83 = MEMORY[0x1E6961718];
      }

      else
      {
        if (v12 != 1)
        {
LABEL_226:
          v85 = MXGetSerialQueue();
          cf[0] = MEMORY[0x1E69E9820];
          cf[1] = 3221225472;
          *&v141 = __central_UpdateCarPlayFallbackRoutability_block_invoke;
          *(&v141 + 1) = &__block_descriptor_37_e5_v8__0l;
          v142[4] = v12 == 2;
          *v142 = 2 * (v12 == 2);
          MXDispatchAsync("central_UpdateCarPlayFallbackRoutability", "FigEndpoint_Central.m", 335, 0, 0, v85, cf);
          central_HandleCarModeStateChange_cachedMainAudioEntity = v12;
          goto LABEL_227;
        }

        v83 = MEMORY[0x1E69616F8];
      }

      CMNotificationCenterGetDefaultLocalCenter();
      v84 = *v83;
      CMNotificationCenterPostNotification();
      goto LABEL_226;
    }

LABEL_204:
    if (dword_1EB75E218)
    {
      LODWORD(v132) = 0;
      v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v78 = v132;
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
        LODWORD(v138[0]) = 136315138;
        *(v138 + 4) = "central_HandleCarModeStateChange";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!a5 && !*(v18 + 1))
    {
      FigRoutingManagerSendCarPlayDisableBluetoothCommand();
      *(v18 + 1) = 1;
    }

    goto LABEL_214;
  }

LABEL_234:
  v88 = *MEMORY[0x1E69E9840];
}