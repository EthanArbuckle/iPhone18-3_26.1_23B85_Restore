void CMSUtility_InterruptSessionForSecureMicrophonePolicy(void *a1)
{
  if (a1)
  {
    v2 = *MEMORY[0x1E695E480];
    SInt32 = FigCFNumberCreateSInt32();
    CMSUtility_PostInterruptionCommandNotification(a1, 0, @"CMSessionManager", 0, 0, 0, SInt32, 0);
    MXCoreSessionEndInterruption_WithSecTaskAndStatus(a1, 0, @"interrupted.securemicrophoneengaged", 1);
    if (SInt32)
    {

      CFRelease(SInt32);
    }
  }
}

void CMSMUtility_UpdateRecordingAccessIntervals(void *a1)
{
  v2 = [a1 auditTokenSetByClient];
  if (a1)
  {
    [a1 auditToken];
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v3 = MX_PrivacyAccounting_CreateRecordingAccessIntervals(v2, &v4, [objc_msgSend(a1 clientPID], objc_msgSend(a1, "hostProcessAttribution"), objc_msgSend(a1, "displayID"));
  MX_PrivacyAccounting_EndRecordingAccessIntervals([a1 bundleIdToPAAccessIntervalMap]);
  [a1 setBundleIdToPAAccessIntervalMap:v3];
}

void *CMSUtility_IsSessionPlayingLongFormAudio(void *result)
{
  if (result)
  {
    [result audioCategory];
    return (FigCFEqual() != 0);
  }

  return result;
}

uint64_t CMSUtility_StartReporterWithAudioStatistics(void *a1)
{
  valuePtr[21] = *MEMORY[0x1E69E9840];
  result = [objc_msgSend(a1 "reporterIDs")];
  if (result >= 1)
  {
    v3 = result;
    for (i = 0; i != v3; ++i)
    {
      valuePtr[0] = 1;
      ValueAtIndex = CFArrayGetValueAtIndex([a1 reporterIDs], i);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, valuePtr);
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      off_1EB75E000(valuePtr[0]);
      result = [a1 setReporterStarted:1];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSUtility_SendSessionReinterruptionDisallowedEventToAudioStatistics(void *a1, int a2)
{
  if (a1 && [objc_msgSend(a1 "reporterIDs")])
  {
    valuePtr = 1;
    ValueAtIndex = CFArrayGetValueAtIndex([a1 reporterIDs], 0);
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    [a1 displayID];
    FigCFDictionarySetValue();
    v6 = *MEMORY[0x1E695E4D0];
    v7 = *MEMORY[0x1E695E4C0];
    if (a2)
    {
      v8 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v8 = *MEMORY[0x1E695E4C0];
    }

    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetFloat32();
    off_1EB75E028(valuePtr, Mutable, 11, 6);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

__CFArray *CMSUtility_CopyPickableRoutesForSession(void *a1)
{
  v2 = CMSUtility_CopyNonNULLCategoryForPickingRoutes(a1);
  v3 = CMSUtility_CopyNonNULLModeForPickingRoutes(a1);
  v4 = CMSUtility_CopyAllowedPortTypesArrayForPickingRoutes(a1);
  v5 = CMSUtility_CopyActivationContextForPickingRoutes(a1);
  v6 = cmsmCopyPickableRoutesForRouteConfiguration(v2, v3, v5, v4, [a1 prefersBluetoothHighQualityContentCapture]);
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t CMSUtility_UpdateAlarmBehaviorOnAccessory(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if ([a1 hasAudioMode:@"Sleep"])
  {
    if (dword_1EB75DE40)
    {
      v30 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_39:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v3 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        if (v8 != a1 && [*(*(&v25 + 1) + 8 * i) isActive] && objc_msgSend(v8, "isPlaying") && CMSUtility_IsDoingSpokenAudio(v8))
        {
          v10 = FigRoutingManagerContextUtilities_IsOnlyRoutedToSelf([v8 routingContextUUID]) != 0;
          IsOnlyRoutedToLocalStereoPair = FigRoutingManagerContextUtilities_IsOnlyRoutedToLocalStereoPair([v8 routingContextUUID]);
          goto LABEL_17;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  IsOnlyRoutedToLocalStereoPair = 0;
  v10 = 0;
LABEL_17:

  if (v10 || IsOnlyRoutedToLocalStereoPair)
  {
    if (dword_1EB75DE40)
    {
      v30 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v17 = v30;
      if (os_log_type_enabled(v16, type))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
        v19 = @"NO";
        v32 = "CMSUtility_UpdateAlarmBehaviorOnAccessory";
        if (v10)
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        v31 = 136315650;
        v33 = 2114;
        v34 = v20;
        if (IsOnlyRoutedToLocalStereoPair)
        {
          v19 = @"YES";
        }

        v35 = 2114;
        v36 = v19;
        LODWORD(v24) = 32;
        v23 = &v31;
        _os_log_send_and_compose_impl();
      }

      goto LABEL_39;
    }

LABEL_40:
    v15 = 8;
    goto LABEL_41;
  }

  if (([a1 duckFadeDurationSetByClient] & 1) == 0)
  {
    LODWORD(v11) = 0.5;
    [a1 setDuckFadeDuration:v11];
  }

  if (([a1 unduckFadeDurationSetByClient] & 1) == 0)
  {
    LODWORD(v12) = 0.5;
    [a1 setUnduckFadeDuration:v12];
  }

  if (([a1 duckToLevelScalarSetByClient] & 1) == 0)
  {
    LODWORD(v13) = 1045220557;
    [a1 setDuckToLevelScalar:v13];
  }

  if (([a1 duckToLevelDBSetByClient] & 1) == 0)
  {
    LODWORD(v14) = -1038090240;
    [a1 setDuckToLevelDB:v14];
  }

  v15 = 32;
LABEL_41:
  result = [a1 updateInterruptionStyle:{v15, v23, v24}];
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

float CMSUtility_GetVolumeDeltaIfRoutedToThirdPartyTV(void *a1, float a2)
{
  theArray = 0;
  if (a1)
  {
    FigRoutingManagerCopyPickedEndpointsForRoutingContext([a1 routingContextUUID], &theArray);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v4 = Count;
        v5 = 0;
        v6 = 0;
        v7 = flt_1B19D90B8[a2 < 0.0];
        do
        {
          CFArrayGetValueAtIndex(theArray, v5);
          IsEndpointThirdPartyTVFamily = FigEndpointUtility_IsEndpointThirdPartyTVFamily();
          if (v4 == v6 + 1)
          {
            v9 = v7;
          }

          else
          {
            v9 = a2;
          }

          if (IsEndpointThirdPartyTVFamily)
          {
            ++v6;
            a2 = v9;
          }

          ++v5;
        }

        while (v4 != v5);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }
    }
  }

  return a2;
}

void *CMSUtility_SetAirPlayVideoIsActive(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 setIsActiveOverAirPlayVideo:a2 != 0];
  }

  return a1;
}

void *CMSUtility_SetAudioOnlyAirPlayVideoIsActive(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 setIsAudioOnlyAirPlayVideoActive:a2 != 0];
  }

  return a1;
}

uint64_t CMSUtility_DoesSessionRemainActiveAfterStoppingPlaying(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ([a1 isActive] && (objc_msgSend(a1, "isPlaying") & 1) == 0 && objc_msgSend(a1, "isPlayingStopTime") && objc_msgSend(a1, "isPlayingStartTime") && (objc_msgSend(objc_msgSend(MEMORY[0x1E695DF00], "now"), "timeIntervalSinceDate:", objc_msgSend(a1, "isPlayingStopTime")), v2 > 0.0) && (objc_msgSend(objc_msgSend(a1, "isPlayingStopTime"), "timeIntervalSinceDate:", objc_msgSend(a1, "isPlayingStartTime")), v3 > 0.0))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v7 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CMSUtility_IsSessionPlayStateEligibleForTipi(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if ([a1 isActive])
  {
    if (!CMSUtility_DoesSessionRemainActiveAfterStoppingPlaying(a1))
    {
      result = 1;
      goto LABEL_8;
    }

    if (dword_1EB75DE40)
    {
      goto LABEL_6;
    }
  }

  else if (dword_1EB75DE40)
  {
LABEL_6:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = 0;
LABEL_8:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSUtility_GetIsActuallyPlayingAudio(void *a1)
{
  if (a1)
  {
    return [a1 doesntActuallyPlayAudio] ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t CMSUtility_GetClientPID(void *a1)
{
  v1 = [a1 clientPID];

  return [v1 intValue];
}

void *CMSUtility_GetIsRecording(void *result)
{
  if (result)
  {
    return [result isRecording];
  }

  return result;
}

void *CMSUtility_GetPrefersSuppressingRecordingState(void *result)
{
  if (result)
  {
    return [result prefersSuppressingRecordingState];
  }

  return result;
}

void *CMSUtility_GetOptOutOfMutePriority(void *result)
{
  if (result)
  {
    return [result optOutOfMutePriority];
  }

  return result;
}

void *CMSUtility_GetPrefersToTakeHWControlFlagsFromAnotherSession(void *result)
{
  if (result)
  {
    return [result prefersToTakeHWControlFlagsFromAnotherSession];
  }

  return result;
}

void *CMSUtility_GetPrefersMultichannelAudio(void *result)
{
  if (result)
  {
    return [result prefersMultichannelAudio];
  }

  return result;
}

uint64_t CMSUtility_GetWantsAutomaticClusterPairingOnPlaybackStart(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!CMSMDeviceState_ItsAHomePod())
  {
    v3 = CMSMDeviceState_ItsAnAppleTV();
    return v3 != 0;
  }

  if ([a1 wantsAutomaticClusterPairingOnPlaybackStart])
  {
    return 1;
  }

  [a1 displayID];
  v2 = 1;
  if (!FigCFStringFind())
  {
    [a1 displayID];
    v2 = 1;
    if (!FigCFStringFind())
    {
      [a1 displayID];
      v2 = 1;
      if (!FigCFStringFind())
      {
        [a1 displayID];
        v2 = 1;
        if (!FigCFStringFind())
        {
          [a1 displayID];
          v3 = FigCFStringFind();
          return v3 != 0;
        }
      }
    }
  }

  return v2;
}

uint64_t CMSUtility_GetCoreSessionID(void *a1)
{
  v1 = [a1 ID];

  return [v1 longLongValue];
}

id CMSUtility_CopyCurrentRouteTypeAtIndex(void *a1, CFIndex a2)
{
  v4 = @"VirtualAudioDevice_Default";
  v5 = [a1 audioDestinationPriority];
  if (a1 && v5)
  {
    v4 = [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v5];
  }

  v6 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(0, 0, 0, 0, 0, 0, v4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  Count = CFArrayGetCount(v6);
  if (Count)
  {
    v9 = Count <= a2;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    PortAtIndex = CMSMVAUtility_GetPortAtIndex(v7, a2);
    PortTypeFromPortID = vaeGetPortTypeFromPortID(PortAtIndex);
    v12 = CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(PortTypeFromPortID);
  }

  CFRelease(v7);
  return v12;
}

BOOL CMSUtility_ShouldSkipDuckingForSystemSounds(void *a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  [a1 audioCategory];
  if (FigCFEqual() || [a1 interruptionStyle] == 32 || CMSUtility_IsDoingSpokenAudio(a1) || objc_msgSend(a1, "hasPhoneCallBehavior"))
  {
    if (dword_1EB75DE40)
    {
LABEL_6:
      v44 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_46:
      v7 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v5 = [a1 routingContextUUID];
  if (!CMSMDeviceState_ItsAHomePod())
  {
    if ([a1 isCarSession])
    {
      goto LABEL_13;
    }

    CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(a1);
    if (CurrentOutputVADID == a2)
    {
LABEL_37:
      if (!FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(v5) && !FigRoutingManagerContextUtilities_IsContextVideoAndIndependent(v5))
      {
        goto LABEL_13;
      }

      if (dword_1EB75DE40)
      {
        v44 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v26 = v44;
        if (os_log_type_enabled(v25, type))
        {
          v27 = v26;
        }

        else
        {
          v27 = v26 & 0xFFFFFFFE;
        }

        if (!v27)
        {
          goto LABEL_46;
        }

LABEL_35:
        v24 = [a1 clientName];
        v47 = 136315650;
        v48 = "CMSUtility_ShouldSkipDuckingForSystemSounds";
        v49 = 2048;
        v50 = a1;
        v51 = 2114;
        v52 = v24;
        _os_log_send_and_compose_impl();
        goto LABEL_46;
      }
    }

    else
    {
      v9 = CurrentOutputVADID;
      v10 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyDetailedRouteDescription:"copyDetailedRouteDescription:", a2];
      v11 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyDetailedRouteDescription:"copyDetailedRouteDescription:", v9];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v34 = v10;
      v12 = [objc_msgSend(v10 objectForKey:{@"RouteDetailedDescription_Outputs", "allObjects"}];
      v32 = [v12 countByEnumeratingWithState:&v39 objects:v46 count:16];
      if (v32)
      {
        v13 = *v40;
        v33 = v11;
        v31 = v12;
        v30 = *v40;
        do
        {
          v14 = 0;
          do
          {
            if (*v40 != v13)
            {
              objc_enumerationMutation(v12);
            }

            v15 = [*(*(&v39 + 1) + 8 * v14) objectForKey:@"RouteDetailedDescription_ID"];
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v16 = [objc_msgSend(v11 objectForKey:{@"RouteDetailedDescription_Outputs", "allObjects"}];
            v17 = [v16 countByEnumeratingWithState:&v35 objects:v45 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v36;
              while (2)
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v36 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  if ([v15 isEqualToNumber:{objc_msgSend(*(*(&v35 + 1) + 8 * i), "objectForKey:", @"RouteDetailedDescription_ID"}])
                  {

                    goto LABEL_37;
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v35 objects:v45 count:16];
                if (v18)
                {
                  continue;
                }

                break;
              }
            }

            ++v14;
            v11 = v33;
            v12 = v31;
            v13 = v30;
          }

          while (v14 != v32);
          v32 = [v31 countByEnumeratingWithState:&v39 objects:v46 count:16];
        }

        while (v32);
      }

      if (dword_1EB75DE40)
      {
        v44 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v22 = v44;
        if (os_log_type_enabled(v21, type))
        {
          v23 = v22;
        }

        else
        {
          v23 = v22 & 0xFFFFFFFE;
        }

        if (!v23)
        {
          goto LABEL_46;
        }

        goto LABEL_35;
      }
    }

LABEL_45:
    v7 = 1;
    goto LABEL_47;
  }

  if (FigRoutingManagerContextUtilities_IsOnlyRoutedToSelf(v5))
  {
LABEL_13:
    v7 = 0;
    goto LABEL_47;
  }

  IsOnlyRoutedToLocalStereoPair = FigRoutingManagerContextUtilities_IsOnlyRoutedToLocalStereoPair(v5);
  v7 = !IsOnlyRoutedToLocalStereoPair;
  if (!IsOnlyRoutedToLocalStereoPair && dword_1EB75DE40)
  {
    goto LABEL_6;
  }

LABEL_47:
  v28 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CMSUtility_IsAnyPortOfTypeBT(const __CFArray *a1)
{
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v3 = Count;
    v4 = 0;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      ValueUInt32 = MXCFNumberGetValueUInt32(ValueAtIndex);
      if (ValueUInt32 == 1885892674 || ValueUInt32 == 1885892706 || ValueUInt32 == 1886152047)
      {
        v4 = 1;
      }

      if (ValueUInt32 == 1885892674)
      {
        break;
      }

      if (ValueUInt32 == 1885892706)
      {
        break;
      }

      if (ValueUInt32 == 1886152047)
      {
        break;
      }
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t CMSUtility_SomeOtherPrimaryAudioCategoryClientIsPlaying(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if ([v7 isPlaying])
        {
          v8 = [v7 doesntActuallyPlayAudio];
          if (v7 != a1 && (v8 & 1) == 0 && CMSUtility_IsAudioCategoryPrimary(v7))
          {
            v9 = 1;
            goto LABEL_14;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_14:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t CMSUtility_DoPickedEndpointsForSessionContainDeviceIdentifier(void *a1, uint64_t a2)
{
  v2 = a2;
  theArray = 0;
  if (a2)
  {
    FigRoutingManagerContextUtilities_CopyPickedEndpoints([a1 routingContextUUID], &theArray);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count < 1)
      {
LABEL_12:
        v2 = 0;
      }

      else
      {
        v4 = Count;
        v5 = 0;
        v6 = *MEMORY[0x1E69620F8];
        v7 = *MEMORY[0x1E695E480];
        while (1)
        {
          CFArrayGetValueAtIndex(theArray, v5);
          theString = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v9)
          {
            v9(CMBaseObject, v6, v7, &theString);
          }

          if (theString)
          {
            HasPrefix = CFStringHasPrefix(theString, v2);
            if (theString)
            {
              CFRelease(theString);
            }

            if (HasPrefix)
            {
              break;
            }
          }

          if (v4 == ++v5)
          {
            goto LABEL_12;
          }
        }

        v2 = 1;
      }

      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t soft_nw_release(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getnw_releaseSymbolLoc_ptr;
  v9 = getnw_releaseSymbolLoc_ptr;
  if (!getnw_releaseSymbolLoc_ptr)
  {
    v3 = NetworkLibrary();
    v7[3] = dlsym(v3, "nw_release");
    getnw_releaseSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(a1);
}

void sub_1B191A574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B191A644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MX_NetworkObserver_IsCarrierNetworkReachable()
{
  if (mx_networkObserver_Initialize_onceToken != -1)
  {
    MX_NetworkObserver_IsCarrierNetworkReachable_cold_1();
  }

  result = gNetworkObserver;
  if (gNetworkObserver)
  {
    return [gNetworkObserver isCarrierNetworkReachable];
  }

  return result;
}

void *__getnw_path_monitor_create_with_typeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_path_monitor_create_with_type");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_path_monitor_create_with_typeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NetworkLibrary()
{
  v0 = NetworkLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t NetworkLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!NetworkLibraryCore_frameworkLibrary)
  {
    NetworkLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = NetworkLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __NetworkLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NetworkLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getnw_path_monitor_set_update_handlerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_path_monitor_set_update_handler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_path_monitor_set_update_handlerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getnw_path_monitor_set_queueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_path_monitor_set_queue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_path_monitor_set_queueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getnw_path_monitor_startSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_path_monitor_start");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_path_monitor_startSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getnw_path_create_evaluator_for_endpointSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_path_create_evaluator_for_endpoint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_path_create_evaluator_for_endpointSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getnw_path_evaluator_copy_pathSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_path_evaluator_copy_path");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_path_evaluator_copy_pathSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getnw_releaseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_release");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_releaseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getnw_path_monitor_cancelSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_path_monitor_cancel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_path_monitor_cancelSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getnw_retainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_retain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_retainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getnw_path_get_statusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NetworkLibrary();
  result = dlsym(v2, "nw_path_get_status");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getnw_path_get_statusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void figEndpointDescriptorUtility_addAirPlayDetailsToDescriptor(uint64_t a1, CFMutableDictionaryRef theDict)
{
  if (!theDict)
  {
    return;
  }

  v4 = *MEMORY[0x1E695E4C0];
  CFDictionarySetValue(theDict, @"IsBTRoute", *MEMORY[0x1E695E4C0]);
  CFDictionarySetValue(theDict, @"AudioRouteName", @"AirTunes");
  figEndpointDescriptorUtility_setAirPlayFeatures(a1, theDict);
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621D8], theDict, @"RouteModel");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621B8], theDict, @"Manufacturer");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620B0], theDict, @"FirmwareVersion");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962248], theDict, @"SerialNumber");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69622E8], theDict, @"TightSyncUUID");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69622E0], theDict, @"TightSyncIsGroupLeader");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69622D8], theDict, @"TightSyncBuddyNotReachable");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962220], theDict, @"PersistentGroupUUID");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962038], theDict, @"ClusterLeaderUUID");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962128], theDict, @"IsClusterLeader");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962040], theDict, @"ClusterSize");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962048], theDict, @"ClusterType");
  theArray = 0;
  v5 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(CMBaseObject, *MEMORY[0x1E6962028], v5, &theArray);
    if (theArray)
    {
      if (CFArrayGetCount(theArray) >= 1)
      {
        CFDictionarySetValue(theDict, @"ClusterComposition", theArray);
      }

      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }
    }
  }

  v25 = 0;
  v8 = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(v8, *MEMORY[0x1E6962030], v5, &v25);
    if (v25)
    {
      if (CFArrayGetCount(v25) >= 1)
      {
        CFDictionarySetValue(theDict, @"ClusterHierarchy", v25);
      }

      if (v25)
      {
        CFRelease(v25);
        v25 = 0;
      }
    }
  }

  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962108], theDict, @"IsAppleMusicSubscriber");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962020], theDict, @"CloudLibraryIsOn");
  figEndpointDescriptorUtility_setAirPlayRouteSubType(a1, theDict);
  IsEndpointSelfOnlyLocalAirPlay = FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(a1);
  v11 = kFigEndpointDescriptor_RouteType_Default;
  if (!IsEndpointSelfOnlyLocalAirPlay)
  {
    v11 = kFigEndpointDescriptor_RouteType_Wireless;
  }

  CFDictionarySetValue(theDict, @"RouteType", *v11);
  cf = 0;
  v12 = FigEndpointGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(v12, *MEMORY[0x1E6961FD0], v5, &cf);
  }

  v14 = *MEMORY[0x1E69616C0];
  v15 = FigCFEqual();
  v16 = MEMORY[0x1E695E4D0];
  if (v15)
  {
    CFDictionarySetValue(theDict, @"RouteRequiresPassword", *MEMORY[0x1E695E4D0]);
  }

  else
  {
    v19 = *MEMORY[0x1E69616B8];
    v20 = FigCFEqual();
    CFDictionarySetValue(theDict, @"RouteRequiresPassword", v4);
    if (v20)
    {
      v18 = *v16;
      v17 = theDict;
      goto LABEL_23;
    }
  }

  v17 = theDict;
  v18 = v4;
LABEL_23:
  CFDictionarySetValue(v17, @"RouteRequiresAirPlayPIN", v18);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962190], theDict, @"IsWHAGroupable");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69622C0], theDict, @"SupportsRelay");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69622A8], theDict, @"SupportsFitnessUIOverlay");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621D0], theDict, @"IsMediaRemoteControllable");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620C0], theDict, @"GroupContainsGroupLeader");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962140], theDict, @"IsGroupLeader");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962250], theDict, @"IsSilentPrimary");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962298], theDict, @"SupportsExtendedWHAFeatures");
  if (MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled())
  {
    figEndpointDescriptorUtility_setDescriptorKey(a1, @"IsCached", theDict, @"IsCached");
  }

  IsEndpointLocal = FigRoutingManagerIsEndpointLocal(a1);
  v22 = *v16;
  if (IsEndpointLocal)
  {
    v23 = *v16;
  }

  else
  {
    v23 = v4;
  }

  CFDictionarySetValue(theDict, @"IsLocalDevice", v23);
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961F60], theDict, @"AdvertisesHAPSupport");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620C8], theDict, @"GroupUUID");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620F0], theDict, @"HouseholdID");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961F70], theDict, @"RouteHasAirPlayCloudConnectivity");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961FA0], theDict, @"AirPlayVodkaVersion");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961F78], theDict, @"AirPlaySecurity");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962150], theDict, @"IsHKAccessControlEnabled");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620D8], theDict, @"HKAccessControlLevel");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961F68], theDict, @"AirPlayEndpointProperties");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962078], theDict, @"ExternalPlaybackCannotFetchMediaFromSender");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620A0], theDict, @"ExternalPlaybackDoesNotSupportEncryptedCRABS");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962098], theDict, @"ExternalPlaybackDoesNotShowProperUIForAudioOnlyAssets");
  figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962160], theDict, @"IsLowFidelity");
}

void figEndpointDescriptorUtility_addBTDetailsToDescriptor(uint64_t a1, CFMutableDictionaryRef theDict)
{
  if (theDict)
  {
    v4 = *MEMORY[0x1E695E4D0];
    CFDictionarySetValue(theDict, @"RouteSupportsAudio", *MEMORY[0x1E695E4D0]);
    cf = 0;
    v5 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v8 = *(*(VTable + 8) + 48);
    if (v8)
    {
      v9 = *(VTable + 8) + 48;
      v8(CMBaseObject, *MEMORY[0x1E6962130], v5, &cf);
    }

    v10 = *MEMORY[0x1E695E4C0];
    if (FigCFEqual())
    {
      CFDictionarySetValue(theDict, @"RouteType", @"Wireless");
      CFDictionarySetValue(theDict, @"IsBTRoute", v4);
      CFDictionarySetValue(theDict, @"AudioRouteName", @"HeadphonesBT");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962110], theDict, @"IsBluetoothShareable");
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v11 = *MEMORY[0x1E69621D8];
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621D8], theDict, @"RouteModel");
    figEndpointDescriptorUtility_setDescriptorKey(a1, v11, theDict, @"BTDetails_ProductID");
    if (MX_FeatureFlags_IsCounterfeitDetectionEnabled())
    {
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962138], theDict, @"IsGenuineAppleAccessory");
    }

    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69622C8], theDict, @"SupportsSmartRouting");
    if (MX_FeatureFlags_IsConversationDetectSupported())
    {
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962290], theDict, @"SupportsConversationDetect");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962058], theDict, @"ConversationDetectEnable");
    }

    theDicta = 0;
    v12 = FigEndpointGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, *MEMORY[0x1E6961FE0], v5, &theDicta);
      if (theDicta)
      {
        Value = CFDictionaryGetValue(theDicta, *MEMORY[0x1E69616D0]);
        if (Value)
        {
          CFDictionarySetValue(theDict, @"BTDetails_BatteryLevelLeft", Value);
        }

        v15 = CFDictionaryGetValue(theDicta, *MEMORY[0x1E69616D8]);
        if (v15)
        {
          CFDictionarySetValue(theDict, @"BTDetails_BatteryLevelRight", v15);
        }

        v16 = CFDictionaryGetValue(theDicta, *MEMORY[0x1E69616C8]);
        if (v16)
        {
          CFDictionarySetValue(theDict, @"BTDetails_BatteryLevelCase", v16);
        }

        v17 = CFDictionaryGetValue(theDicta, *MEMORY[0x1E69616E0]);
        if (v17)
        {
          CFDictionarySetValue(theDict, @"BTDetails_BatteryLevelSingle", v17);
        }

        CFRelease(theDicta);
      }
    }
  }
}

void figEndpointDescriptorUtility_addMissingEntriesApplierFunction(void *key, const void *a2, CFDictionaryRef theDict)
{
  if (!CFDictionaryContainsKey(theDict, key))
  {

    CFDictionarySetValue(theDict, key, a2);
  }
}

uint64_t FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled() && FigRoutingManagerContextUtilities_IsContextSystemRemoteDisplay(a2))
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a2, 0, &cf);
    FigCFDictionaryGetValue();
    v9 = 0;
    if (cf)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v5)
      {
        v5(CMBaseObject, *MEMORY[0x1E69620F8], *MEMORY[0x1E695E480], &v9);
      }
    }

    if (FigCFEqual())
    {
      if (!cf)
      {
        v8 = 0;
LABEL_16:
        if (v9)
        {
          CFRelease(v9);
        }

        return v8;
      }

      v8 = CFRetain(cf);
    }

    else
    {
      v8 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_16;
  }

  v6 = +[MXEndpointDescriptorCache sharedInstance];

  return [(MXEndpointDescriptorCache *)v6 copyEndpointFromRouteDescriptor:a1 routingContextUUID:a2 retryCount:1];
}

id FigEndpointDescriptorUtility_CopyEndpointArrayFromDescriptors(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v9 = FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(*(*(&v13 + 1) + 8 * v8), a2);
        if (v9)
        {
          v10 = v9;
          [v4 addObject:v9];
          CFRelease(v10);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

void FigEndpointDescriptorUtilitySetUserManualRoute(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    FigCFDictionaryGetBooleanIfPresent();
    v2 = *MEMORY[0x1E69626B8];
    if (FigRoutingManagerIsEndpointOfType(a1))
    {
      v3 = MEMORY[0x1E6962318];
      if (dword_1EB75DF60)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v9 = MEMORY[0x1E695E4C0];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v11(CMBaseObject, *v3, *v9);
      }
    }

    else
    {
      v5 = *MEMORY[0x1E69626D8];
      if (FigRoutingManagerIsEndpointOfType(a1))
      {
        v6 = FigRoutingManagerCopyBluetoothEndpointAssociatedWithVAEndpoint();
        if (v6)
        {
          v7 = v6;
          if (dword_1EB75DF60)
          {
            v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v12 = MEMORY[0x1E695E4C0];
          v13 = FigEndpointGetCMBaseObject();
          v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v14)
          {
            v14(v13, *MEMORY[0x1E6962318], *v12);
          }

          CFRelease(v7);
        }
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1B191C25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

os_log_t __MXGetAssertionLog_block_invoke()
{
  result = os_log_create("com.apple.mediaexperience", "Assertion");
  MXGetAssertionLog__log = result;
  return result;
}

os_log_t __MXGetSessionLog_block_invoke()
{
  result = os_log_create("com.apple.mediaexperience", "Session");
  MXGetSessionLog__log = result;
  return result;
}

os_log_t __MXGetPerformanceLog_block_invoke()
{
  result = os_log_create("com.apple.mediaexperience", "Performance");
  MXGetPerformanceLog__log = result;
  return result;
}

void MXDebugInstallSysdiagnoseBlock(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [+[MXDebugPlatform sharedInstance](MXDebugPlatform installSysdiagnoseBlock:"installSysdiagnoseBlock:blockToRun:" blockToRun:a1, a2];

  objc_autoreleasePoolPop(v4);
}

void MXSimulateCrash(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [+[MXDebugPlatform sharedInstance](MXDebugPlatform simulateCrash:"simulateCrash:", a1];

  objc_autoreleasePoolPop(v2);
}

void sub_1B1924AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAPSubjectClass_block_invoke(uint64_t a1)
{
  AppProtectionLibrary();
  *(*(*(a1 + 32) + 8) + 40) = objc_getClass("APSubject");
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getAPSubjectClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    __getAPSubjectClass_block_invoke_cold_1();
    AppProtectionLibrary();
  }
}

void AppProtectionLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!AppProtectionLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __AppProtectionLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7AEC7A8;
    v4 = 0;
    AppProtectionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!AppProtectionLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __AppProtectionLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppProtectionLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getAPApplicationClass_block_invoke(uint64_t a1)
{
  AppProtectionLibrary();
  result = objc_getClass("APApplication");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getAPApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    __getAPApplicationClass_block_invoke_cold_1();
    return _CMSessionCreate();
  }

  return result;
}

uint64_t _CMSessionCreate(uint64_t *a1)
{
  v2 = objc_autoreleasePoolPush();
  CFObject = cmsession_createCFObject(a1);
  if (!CFObject)
  {
    CFObject = MXCoreSessionInitialize(*(*a1 + 16));
  }

  objc_autoreleasePoolPop(v2);
  return CFObject;
}

uint64_t _CMSessionCreateForRemoteDeviceID(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    v6 = [[MXCoreSessionSidekick alloc] initWithRemoteDeviceID:a1];
    v7 = 0;
    *a2 = v6;
  }

  else
  {
    v7 = _CMSessionCreate(a2);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void CMSessionFinalize(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(a1 + 24))
  {
    *(a1 + 24) = 1;
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = *(a1 + 16);
    FigNotificationCenterRemoveWeakListener();
    v4 = MXGetSerialQueue();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __CMSessionFinalize_block_invoke;
    v6[3] = &__block_descriptor_40_e5_v8__0l;
    v6[4] = a1;
    MXDispatchAsyncAndWait("CMSessionFinalize", "CMSession_CInterface.m", 231, 0, 0, v4, v6);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __CMSessionFinalize_block_invoke(uint64_t a1)
{
  MXCoreSessionTeardown(*(*(a1 + 32) + 16));

  *(*(a1 + 32) + 16) = 0;
}

uint64_t CMSessionAddResource(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MX_FeatureFlags_IsBypassCodecArbitrationEnabled())
  {
    return 0;
  }

  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (isCoreSessionSidekick(a1))
  {
    return 4294954309;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9 = MXGetSerialQueue();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __CMSessionAddResource_block_invoke;
  v11[3] = &unk_1E7AE79A8;
  v11[4] = &v12;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  v11[8] = a4;
  MXDispatchAsyncAndWait("CMSessionAddResource", "CMSession_CInterface.m", 283, 0, 0, v9, v11);
  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v8;
}

void sub_1B19267FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMSessionAddResource_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  result = MXCoreSessionAddResource(v3, *(a1 + 48), *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CMSessionRemoveResource(void *a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsBypassCodecArbitrationEnabled())
  {
    return 0;
  }

  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (isCoreSessionSidekick(a1))
  {
    return 4294954309;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = MXGetSerialQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CMSessionRemoveResource_block_invoke;
  v7[3] = &unk_1E7AE7140;
  v7[4] = &v8;
  v7[5] = a1;
  v7[6] = a2;
  MXDispatchAsyncAndWait("CMSessionRemoveResource", "CMSession_CInterface.m", 307, 0, 0, v5, v7);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_1B192696C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMSessionRemoveResource_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  result = MXCoreSessionRemoveResource(v3, *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CMSessionBeginInterruption(void *a1)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    v3 = [a1 activate];
    *(v10 + 6) = v3;
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v5 = MXGetSerialQueue();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __CMSessionBeginInterruption_block_invoke;
    v8[3] = &unk_1E7AE7168;
    v8[4] = &v9;
    v8[5] = a1;
    MXDispatchAsyncAndWait("CMSessionBeginInterruption", "CMSession_CInterface.m", 339, 0, 0, v5, v8);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"CMSessionBeginInterruption" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_1B1926B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMSessionBeginInterruption_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  result = MXCoreSessionBeginInterruption_WithSecTaskAndFlags(v3, 0, 0, 1);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _CMSessionBeginInterruption_WithSecTaskAndFlags(void *a1, __SecTask *a2, uint64_t a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v6 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    v7 = [a1 activate];
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (a1)
    {
      v9 = a1[2];
    }

    else
    {
      v9 = 0;
    }

    v7 = MXCoreSessionBeginInterruption_WithSecTaskAndFlags(v9, a2, a3, 0);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_CMSessionBeginInterruption_WithSecTaskAndFlags" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
  }

  objc_autoreleasePoolPop(v6);
  return v7;
}

uint64_t CMSessionEndInterruption(void *a1, const __CFString *a2)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    if (a2)
    {
      v5 = CFStringHasPrefix(a2, @"resumable") != 0;
    }

    else
    {
      v5 = 0;
    }

    v8 = [a1 deactivate:v5 postInterruptionNotification:0];
    *(v13 + 6) = v8;
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v7 = MXGetSerialQueue();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __CMSessionEndInterruption_block_invoke;
    v11[3] = &unk_1E7AE7140;
    v11[4] = &v12;
    v11[5] = a1;
    v11[6] = a2;
    MXDispatchAsyncAndWait("CMSessionEndInterruption", "CMSession_CInterface.m", 400, 0, 0, v7, v11);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"CMSessionEndInterruption" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
  }

  objc_autoreleasePoolPop(v4);
  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

void sub_1B1926DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMSessionEndInterruption_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  result = MXCoreSessionEndInterruption_WithSecTaskAndStatus(v3, 0, *(a1 + 48), 1);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CMSessionEndInterruption_WithInterruptionNotification(void *a1, const __CFString *a2, int a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    if (a2)
    {
      v7 = CFStringHasPrefix(a2, @"resumable") != 0;
    }

    else
    {
      v7 = 0;
    }

    v10 = [a1 deactivate:v7 postInterruptionNotification:a3 != 0];
    *(v15 + 6) = v10;
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v9 = MXGetSerialQueue();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __CMSessionEndInterruption_WithInterruptionNotification_block_invoke;
    v13[3] = &unk_1E7AE7140;
    v13[4] = &v14;
    v13[5] = a1;
    v13[6] = a2;
    MXDispatchAsyncAndWait("CMSessionEndInterruption_WithInterruptionNotification", "CMSession_CInterface.m", 429, 0, 0, v9, v13);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"CMSessionEndInterruption_WithInterruptionNotification" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
  }

  objc_autoreleasePoolPop(v6);
  v11 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v11;
}

void sub_1B1926FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CMSessionEndInterruption_WithSecTaskAndStatus(void *a1, __SecTask *a2, const __CFString *a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v6 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    if (a3)
    {
      v7 = CFStringHasPrefix(a3, @"resumable") != 0;
    }

    else
    {
      v7 = 0;
    }

    v10 = [a1 deactivate:v7 postInterruptionNotification:0];
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (a1)
    {
      v9 = a1[2];
    }

    else
    {
      v9 = 0;
    }

    v10 = MXCoreSessionEndInterruption_WithSecTaskAndStatus(v9, a2, a3, 0);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_CMSessionEndInterruption_WithSecTaskAndStatus" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
  }

  objc_autoreleasePoolPop(v6);
  return v10;
}

uint64_t CMSessionSetProperty(void *a1, uint64_t a2, uint64_t a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v6 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    v7 = [a1 setPropertyForKey:a2 value:a3];
    *(v14 + 6) = v7;
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v9 = MXGetSerialQueue();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __CMSessionSetProperty_block_invoke;
    v12[3] = &unk_1E7AE7A48;
    v12[4] = &v13;
    v12[5] = a1;
    v12[6] = a2;
    v12[7] = a3;
    MXDispatchAsyncAndWait("CMSessionSetProperty", "CMSession_CInterface.m", 492, 0, 0, v9, v12);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"CMSessionSetProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
  }

  objc_autoreleasePoolPop(v6);
  v10 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_1B1927294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMSessionSetProperty_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  v4 = *(a1 + 56);
  result = MXCoreSessionSetProperty(v3, *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _CMSessionSetProperty(void *a1, const void *a2, uint64_t a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v6 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    v7 = [a1 setPropertyForKey:a2 value:a3];
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (a1)
    {
      v9 = a1[2];
    }

    else
    {
      LODWORD(v9) = 0;
    }

    v7 = MXCoreSessionSetProperty(v9, a2);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_CMSessionSetProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
  }

  objc_autoreleasePoolPop(v6);
  return v7;
}

void HandleDispatchBlockException(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"Exception thrown: %@, %s, %s:%d, %llu, %llu", a1, a2, a3, a4, a5, a6), "UTF8String"];
  v6 = abort_with_reason();
  MXDispatchSyncFunction(v6, v7, v8, v9, v10, v11, v12, v13);
}

void MXDispatchSyncFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7, uint64_t a8)
{
  context = objc_autoreleasePoolPush();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MXDispatchSyncFunction_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = a8;
  block[5] = a7;
  v16 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  v17 = objc_autoreleasePoolPush();
  v28 = 0;
  v27 = 0uLL;
  if (CMSMDeviceState_IsAudiomxd())
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_2();
    }

    if (gSerialQueue == a6)
    {
      CreateACQDispatchID();
    }
  }

  objc_autoreleasePoolPop(v17);
  v30 = v27;
  v31 = v28;
  if (CMSMDeviceState_IsAudiomxd())
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_2();
    }

    if (gSerialQueue == a6)
    {
      MEMORY[0x1B2733F40](&v30, 0, "MXDispatchSyncFunction", a1, a2, a3, a4, a5, context);
    }
  }

  objc_autoreleasePoolPop(context);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __MXDispatchSyncFunction_block_invoke_2;
  v19[3] = &unk_1E7AEC7C8;
  v20 = v30;
  v21 = v31;
  v22 = a1;
  v26 = a3;
  v23 = a2;
  v24 = a4;
  v25 = a5;
  v19[4] = a6;
  v19[5] = v16;
  dispatch_barrier_async_and_wait(a6, v19);
}

void __MXDispatchSyncFunction_block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 104);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  if (CMSMDeviceState_IsAudiomxd())
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_1();
    }

    if (gSerialQueue == v3)
    {
      MEMORY[0x1B2733F40](a1 + 48, 1, "MXDispatchSyncFunction_block_invoke_2", v4, v5, v6, v7, v8);
    }
  }

  (*(*(a1 + 40) + 16))();
  v9 = *(a1 + 32);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 104);
  v13 = *(a1 + 88);
  v14 = *(a1 + 96);
  if (CMSMDeviceState_IsAudiomxd())
  {
    if (MXGetSerialQueue_onceToken != -1)
    {
      MXDispatchAsync_cold_1();
    }

    if (gSerialQueue == v9)
    {
      MEMORY[0x1B2733F40](a1 + 48, 2, "MXDispatchSyncFunction_block_invoke_2", v10, v11, v12, v13, v14);
    }
  }

  objc_autoreleasePoolPop(v2);
  v15 = *(a1 + 40);

  _Block_release(v15);
}

void MXSetSerialQueue(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MXSetSerialQueue_block_invoke;
  block[3] = &unk_1E7AE7CE0;
  block[4] = a1;
  if (MXSetSerialQueue_onceToken != -1)
  {
    dispatch_once(&MXSetSerialQueue_onceToken, block);
  }
}

void __MXSetSerialQueue_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32) || dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (gSerialQueue)
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    dispatch_release(gSerialQueue);
  }

  gSerialQueue = *(a1 + 32);
  v4 = *MEMORY[0x1E69E9840];
}

void __MXGetSerialQueue_block_invoke()
{
  if (!gSerialQueue)
  {
    v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    gSerialQueue = dispatch_queue_create("com.apple.coremedia.mediaexperience.iAmNotACQ", v0);

    MXSimulateCrash("AudioControlQueue (ACQ) is being used before being set by AudioToolbox! Please file a radar against 'MediaExperience Framework | All'");
  }
}

dispatch_queue_t __MXGetNotificationSenderQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.mediaexperience.NotificationSenderQueue", v0);
  MXGetNotificationSenderQueue_notificationSenderQueue = result;
  return result;
}

void MXDispatchUtilityCancelTimer(dispatch_source_t *a1)
{
  if (a1)
  {
    dispatch_source_cancel(*a1);
    if (*a1)
    {
      dispatch_release(*a1);
      *a1 = 0;
    }
  }
}

CFTypeRef PVMCopyMappedRoute(CFTypeRef key)
{
  if (key)
  {
    v1 = key;
    if (*(sStorage + 200))
    {
      key = CFDictionaryGetValue(*(sStorage + 200), key);
    }

    if (!key)
    {
      key = v1;
    }

    return CFRetain(key);
  }

  return key;
}

void __PVMInitialize_block_invoke()
{
  v148 = *MEMORY[0x1E69E9840];
  if (pvmInitializeLogging_onceToken != -1)
  {
    __PVMInitialize_block_invoke_cold_1();
  }

  sStorage = malloc_type_calloc(1uLL, 0x148uLL, 0x10E0040F6844ECDuLL);
  if (!sStorage)
  {
    goto LABEL_169;
  }

  v0 = FigReentrantMutexCreate();
  v1 = sStorage;
  *sStorage = v0;
  v2 = &AVSystemController_EUVolumeLimitNotificationParameter;
  if (!v0)
  {
    goto LABEL_147;
  }

  MXDebugInstallSysdiagnoseBlock(@"MXVolumePreferences", &__block_literal_global_120_0);
  CelestialGetModelSpecificName();
  *(sStorage + 184) = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  CelestialGetModelSpecificName();
  *(sStorage + 200) = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  CelestialGetModelSpecificName();
  *(sStorage + 208) = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  CelestialGetModelSpecificName();
  *(sStorage + 216) = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  CelestialGetModelSpecificName();
  *(sStorage + 80) = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  CelestialGetModelSpecificName();
  v3 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (v3)
  {
    v4 = v3;
    Value = CFDictionaryGetValue(v3, @"RouteDefaultVolumes");
    *(sStorage + 224) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (!FigCFDictionaryGetFloatIfPresent())
    {
      *(sStorage + 316) = 1065353216;
    }

    CFRelease(v4);
  }

  v6 = sStorage;
  *(sStorage + 324) = 0;
  v7 = *(v6 + 184);
  v8 = *MEMORY[0x1E695E480];
  if (v7)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v7);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v10 = sStorage;
  *(sStorage + 192) = MutableCopy;
  *(v10 + 160) = 0x3FC000003F000000;
  *(sStorage + 152) = CFRetain(@"Ringtone");
  CelestialGetModelSpecificName();
  v11 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (v11)
  {
    v12 = v11;
    v13 = CFDictionaryGetValue(v11, @"Zero");
    v14 = CFDictionaryGetValue(v12, @"One");
    v15 = CFDictionaryGetValue(v12, @"Category");
    if (v13)
    {
      v16 = v15;
      v17 = CFGetTypeID(v13);
      if (v17 == CFNumberGetTypeID())
      {
        if (v14)
        {
          v18 = CFGetTypeID(v14);
          if (v18 == CFNumberGetTypeID())
          {
            if (v16)
            {
              v19 = CFGetTypeID(v16);
              if (v19 == CFStringGetTypeID())
              {
                valuePtr[0] = 0.0;
                LODWORD(v144) = 0;
                CFNumberGetValue(v13, kCFNumberFloat32Type, valuePtr);
                CFNumberGetValue(v14, kCFNumberFloat32Type, &v144);
                if (*&v144 <= 5.0 && valuePtr[0] <= 1.0 && valuePtr[0] >= 0.0 && (*&v144 - valuePtr[0]) >= 0.25)
                {
                  v20 = CFRetain(v16);
                  v21 = sStorage;
                  *(sStorage + 152) = v20;
                  v22 = v144;
                  *(v21 + 160) = valuePtr[0];
                  *(v21 + 164) = v22;
                }
              }
            }
          }
        }
      }
    }

    CFRelease(v12);
  }

  *(sStorage + 168) = *(sStorage + 164) - *(sStorage + 160);
  v23 = *MEMORY[0x1E695E8B8];
  v24 = *MEMORY[0x1E695E898];
  v25 = CFPreferencesCopyValue(@"volumes", @"com.apple.mediaexperience", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  *(sStorage + 16) = 0;
  v26 = MEMORY[0x1E695E4D0];
  if (v25)
  {
    v27 = v25;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v27))
    {
      DeepCopy = CFPropertyListCreateDeepCopy(v8, v27, 1uLL);
      if (DeepCopy)
      {
        v30 = DeepCopy;
        v140 = v27;
        v132 = v8;
        Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v130 = v30;
        CFDictionaryApplyFunction(v30, pvmApplierFunction_ValidateVolumesForRoute, Mutable);
        cf = Mutable;
        if (Mutable)
        {
          v32 = CFRetain(Mutable);
          *(sStorage + 16) = v32;
          if (v32)
          {
            v33 = v32;
            v34 = CFPreferencesCopyValue(@"AirTunesEntriesDeleted", @"com.apple.mediaexperience", v23, v24);
            v35 = *v26;
            if (FigCFEqual())
            {
              goto LABEL_48;
            }

            v127 = v35;
            v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v144 = 0u;
            v145 = 0u;
            v146 = 0u;
            v147 = 0u;
            v37 = [v33 countByEnumeratingWithState:&v144 objects:valuePtr count:16];
            if (v37)
            {
              v38 = v37;
              v133 = v24;
              v39 = 0;
              v40 = *v145;
              do
              {
                for (i = 0; i != v38; ++i)
                {
                  if (*v145 != v40)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v42 = *(*(&v144 + 1) + 8 * i);
                  v43 = [v33 objectForKey:v42];
                  if ([v42 hasPrefix:@"AirTunes"])
                  {
                    v39 = 1;
                  }

                  else
                  {
                    [v36 setObject:v43 forKey:v42];
                  }
                }

                v38 = [v33 countByEnumeratingWithState:&v144 objects:valuePtr count:16];
              }

              while (v38);
              CFRelease(*(sStorage + 16));
              v44 = sStorage;
              *(sStorage + 16) = v36;
              v24 = v133;
              if (v39)
              {
                *(v44 + 24) = 1;
                pvmWritePrefs();
              }
            }

            else
            {
              CFRelease(*(sStorage + 16));
              *(sStorage + 16) = v36;
            }

            MXCFPreferencesSetAndSynchronizeUserPreference(@"AirTunesEntriesDeleted", v127);
            v2 = &AVSystemController_EUVolumeLimitNotificationParameter;
            v26 = MEMORY[0x1E695E4D0];
            if (v34)
            {
LABEL_48:
              CFRelease(v34);
            }
          }
        }

        else
        {
          *(sStorage + 16) = 0;
        }

        v45 = *(sStorage + 16);
        if (v45 && !MXCFPreferencesGetBooleanWithDefault())
        {
          v134 = v24;
          v137 = v23;
          v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v144 = 0u;
          v145 = 0u;
          v146 = 0u;
          v147 = 0u;
          v47 = [v45 countByEnumeratingWithState:&v144 objects:valuePtr count:16];
          if (v47)
          {
            v48 = v47;
            v49 = 0;
            v50 = *v145;
            do
            {
              for (j = 0; j != v48; ++j)
              {
                if (*v145 != v50)
                {
                  objc_enumerationMutation(v45);
                }

                v52 = *(*(&v144 + 1) + 8 * j);
                v53 = [v45 objectForKey:v52];
                MappedBluetoothRouteWithDeviceIDAppended = pvmGetMappedBluetoothRouteWithDeviceIDAppended(v52);
                if (MappedBluetoothRouteWithDeviceIDAppended)
                {
                  v55 = MappedBluetoothRouteWithDeviceIDAppended;
                  v56 = [v45 objectForKey:v52];
                  v57 = [objc_msgSend(v46 objectForKey:{v55), "mutableCopy"}];
                  if (!v57)
                  {
                    v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
                  }

                  [v57 addEntriesFromDictionary:v56];
                  [v46 setObject:v57 forKey:v55];

                  v49 = 1;
                }

                else
                {
                  [v46 setObject:v53 forKey:v52];
                }
              }

              v48 = [v45 countByEnumeratingWithState:&v144 objects:valuePtr count:16];
            }

            while (v48);
          }

          else
          {
            v49 = 0;
          }

          v58 = *(sStorage + 16);
          *(sStorage + 16) = v46;
          if (v46)
          {
            CFRetain(v46);
          }

          v24 = v134;
          v23 = v137;
          if (v58)
          {
            CFRelease(v58);
          }

          if (v49)
          {
            *(sStorage + 24) = 1;
            pvmWritePrefs();
          }

          v26 = MEMORY[0x1E695E4D0];
          MXCFPreferencesSetAndSynchronizeUserPreference(@"BluetoothA2DPAndHFPVolumesCombined", *MEMORY[0x1E695E4D0]);
          v2 = &AVSystemController_EUVolumeLimitNotificationParameter;
        }

        v59 = *(sStorage + 16);
        if (v59)
        {
          v60 = CFPreferencesCopyValue(@"AirPlayLowLatencyEntriesDeleted", @"com.apple.mediaexperience", v23, v24);
          v61 = *v26;
          if (FigCFEqual())
          {
            goto LABEL_91;
          }

          v135 = v24;
          v138 = v23;
          v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v144 = 0u;
          v145 = 0u;
          v146 = 0u;
          v147 = 0u;
          v63 = [v59 countByEnumeratingWithState:&v144 objects:valuePtr count:16];
          if (v63)
          {
            v64 = v63;
            v65 = 0;
            v66 = *v145;
            do
            {
              for (k = 0; k != v64; ++k)
              {
                if (*v145 != v66)
                {
                  objc_enumerationMutation(v59);
                }

                v68 = *(*(&v144 + 1) + 8 * k);
                v69 = [v59 objectForKey:v68];
                if ([v68 hasPrefix:@"AirPlayLowLatency"])
                {
                  v65 = 1;
                }

                else
                {
                  [v62 setObject:v69 forKey:v68];
                }
              }

              v64 = [v59 countByEnumeratingWithState:&v144 objects:valuePtr count:16];
            }

            while (v64);
          }

          else
          {
            v65 = 0;
          }

          v70 = sStorage;
          v71 = *(sStorage + 16);
          if (v71)
          {
            CFRelease(v71);
            v70 = sStorage;
            *(sStorage + 16) = 0;
          }

          v24 = v135;
          v23 = v138;
          v26 = MEMORY[0x1E695E4D0];
          *(v70 + 16) = v62;
          if (v65)
          {
            *(v70 + 24) = 1;
            pvmWritePrefs();
          }

          MXCFPreferencesSetAndSynchronizeUserPreference(@"AirPlayLowLatencyEntriesDeleted", v61);
          v2 = &AVSystemController_EUVolumeLimitNotificationParameter;
          if (v60)
          {
LABEL_91:
            CFRelease(v60);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }

        CFRelease(v130);
        v8 = v132;
        v27 = v140;
      }
    }

    CFRelease(v27);
  }

  v72 = CFPreferencesCopyValue(@"inputVolumes", @"com.apple.mediaexperience", v23, v24);
  if (v72)
  {
    v73 = v72;
    v74 = CFDictionaryGetTypeID();
    if (v74 == CFGetTypeID(v73))
    {
      *(sStorage + 48) = CFPropertyListCreateDeepCopy(v8, v73, 1uLL);
    }

    CFRelease(v73);
  }

  v75 = CFPreferencesCopyValue(@"volumeLimits", @"com.apple.mediaexperience", v23, v24);
  *(sStorage + 32) = 0;
  if (v75)
  {
    v76 = v75;
    v77 = CFDictionaryGetTypeID();
    if (v77 == CFGetTypeID(v76))
    {
      v78 = CFPropertyListCreateDeepCopy(v8, v76, 1uLL);
      if (v78)
      {
        v79 = v78;
        v80 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionaryApplyFunction(v79, pvmApplierFunction_CopyValidatedVolumes, v80);
        if (v80)
        {
          *(sStorage + 32) = CFRetain(v80);
          CFRelease(v80);
        }

        else
        {
          *(sStorage + 32) = 0;
        }

        CFRelease(v79);
      }
    }

    CFRelease(v76);
  }

  v81 = CFPreferencesCopyValue(@"endpointTypeInfo", @"com.apple.mediaexperience", v23, v24);
  if (!v81)
  {
    goto LABEL_134;
  }

  v82 = v81;
  v83 = CFDictionaryGetTypeID();
  if (v83 != CFGetTypeID(v82))
  {
    goto LABEL_133;
  }

  v136 = v24;
  v139 = v23;
  v84 = CFPropertyListCreateDeepCopy(v8, v82, 1uLL);
  *(sStorage + 120) = v84;
  if (!v84)
  {
    goto LABEL_132;
  }

  v85 = v84;
  v86 = MXCFPreferencesCopyPreference(@"endpointTypeInfoEntriesDeleted");
  if ([v86 BOOLValue])
  {
    goto LABEL_131;
  }

  v131 = v82;
  v87 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v88 = [v85 countByEnumeratingWithState:&v144 objects:valuePtr count:16];
  if (!v88)
  {
    CFRelease(*(sStorage + 120));
    *(sStorage + 120) = v87;
    goto LABEL_130;
  }

  v89 = v88;
  v141 = v87;
  cfa = v86;
  v90 = 0;
  v91 = *v145;
  do
  {
    v92 = 0;
    do
    {
      if (*v145 != v91)
      {
        objc_enumerationMutation(v85);
      }

      v93 = *(*(&v144 + 1) + 8 * v92);
      v94 = [v85 objectForKey:v93];
      v95 = pvmGetMappedBluetoothRouteWithDeviceIDAppended(v93);
      if ([v93 hasPrefix:@"AirTunes"] & 1) != 0 || (objc_msgSend(v93, "hasPrefix:", @"CarAudioOutput") & 1) != 0 || (objc_msgSend(v93, "hasPrefix:", @"AirPlayLowLatency"))
      {
        goto LABEL_122;
      }

      if (v95)
      {
        [v141 setValue:v94 forKey:v95];
LABEL_122:
        v90 = 1;
        goto LABEL_123;
      }

      [v141 setValue:v94 forKey:v93];
LABEL_123:
      ++v92;
    }

    while (v89 != v92);
    v96 = [v85 countByEnumeratingWithState:&v144 objects:valuePtr count:16];
    v89 = v96;
  }

  while (v96);
  CFRelease(*(sStorage + 120));
  v97 = sStorage;
  *(sStorage + 120) = v141;
  v2 = &AVSystemController_EUVolumeLimitNotificationParameter;
  v26 = MEMORY[0x1E695E4D0];
  v86 = cfa;
  if (v90)
  {
    *(v97 + 128) = 1;
    pvmWritePrefs();
  }

LABEL_130:
  MXCFPreferencesSetAndSynchronizeUserPreference(@"endpointTypeInfoEntriesDeleted", *v26);
  v82 = v131;
LABEL_131:

LABEL_132:
  v24 = v136;
  v23 = v139;
LABEL_133:
  CFRelease(v82);
LABEL_134:
  v2[245] = objc_alloc_init(MEMORY[0x1E695DF90]);
  v98 = CFPreferencesCopyValue(@"vibeIntensity", @"com.apple.mediaexperience", v23, v24);
  v99 = sStorage;
  *(sStorage + 64) = v98;
  CelesteGetRegionSpecificVolumeLimit(*(v99 + 80));
  *(sStorage + 88) = v100;
  v101 = MXCFPreferencesCopyPreference(@"isMaxVolumeLimitForBuiltInSpeakerEnabled");
  v102 = *v26;
  *(sStorage + 92) = FigCFEqual();
  if (v101)
  {
    CFRelease(v101);
  }

  v142 = 1065353216;
  v103 = MXCFPreferencesCopyPreference(@"maxVolumeLimitForBuiltInSpeaker");
  if (v103)
  {
    v104 = v103;
    CFNumberGetValue(v103, kCFNumberFloat32Type, &v142);
    *(sStorage + 96) = v142;
    CFRelease(v104);
  }

  else
  {
    *(sStorage + 96) = v142;
  }

  if (dword_1EB75DFE8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v106 = sStorage;
  *(sStorage + 312) = 1131413504;
  *(v106 + 320) = 1131413504;
  v107 = MXCFPreferencesCopyPreference(@"endpointDisconnectionTimeInfo");
  if (v107)
  {
    v108 = v107;
    v109 = CFDictionaryGetTypeID();
    if (v109 == CFGetTypeID(v108))
    {
      *(sStorage + 136) = CFPropertyListCreateDeepCopy(v8, v108, 1uLL);
    }

    CFRelease(v108);
  }

  pvmAssureCurrentCategoryAndDeviceRoute();
  v110 = sStorage;
  *(sStorage + 288) = 0;
  if (pvmSetCurrentRouteInfo(@"Unspecified", *(v110 + 272), *(v110 + 280), 0, *(v110 + 296)))
  {
    v1 = sStorage;
    if (sStorage)
    {
LABEL_147:
      v111 = v1[2];
      if (v111)
      {
        CFRelease(v111);
        v1 = sStorage;
        *(sStorage + 16) = 0;
      }

      v112 = v1[4];
      if (v112)
      {
        CFRelease(v112);
        v1 = sStorage;
        *(sStorage + 32) = 0;
      }

      v113 = v1[15];
      if (v113)
      {
        CFRelease(v113);
        *(sStorage + 120) = 0;
      }

      v2[245] = 0;
      v114 = sStorage;
      if (*(sStorage + 272))
      {
        CFRelease(*(sStorage + 272));
        *(sStorage + 272) = 0;
        v115 = FigCFEqual();
        v116 = sStorage;
        *(sStorage + 304) = v115;
        v117 = *(v116 + 272);
        v118 = FigCFEqual();
        v114 = sStorage;
        *(sStorage + 305) = v118;
      }

      if (v114[29])
      {
        CFRelease(v114[29]);
        v114 = sStorage;
        *(sStorage + 232) = 0;
      }

      if (v114[31])
      {
        CFRelease(v114[31]);
        v114 = sStorage;
        *(sStorage + 248) = 0;
      }

      if (*v114)
      {
        v119 = *v114;
        FigSimpleMutexDestroy();
        v114 = sStorage;
        *sStorage = 0;
      }

      free(v114);
      sStorage = 0;
    }
  }

  else
  {
    pvmRemoveVolumesForDeviceRoute(@"LineOut", 0, 0);
    v120 = *(sStorage + 104);
    if (v120)
    {
      CFRelease(v120);
      *(sStorage + 104) = 0;
    }

    v121 = CFPreferencesCopyValue(@"volumeMultiplier", @"com.apple.mediaexperience", v23, v24);
    if (v121)
    {
      v122 = v121;
      v123 = CFDictionaryGetTypeID();
      if (v123 == CFGetTypeID(v122))
      {
        *(sStorage + 104) = CFPropertyListCreateDeepCopy(v8, v122, 1uLL);
      }

      CFRelease(v122);
    }

    *(sStorage + 112) = 0;
    v124 = MXGetSerialQueue();
    notify_register_dispatch("HAENVolumeLimitStatusDidChange", &pvmAdd100dBVolumeLimitChangedListener_sHAENVolumeLimitNotifyToken, v124, &__block_literal_global_242);
    pvmGetMappedCategoryWithModeAppended(@"MediaPlayback", @"VoicePrompt");
  }

LABEL_169:
  v125 = MXGetSerialQueue();
  MXDispatchAsync("PVMInitialize_block_invoke", "MXPreferredVolumeManager.m", 1896, 0, 0, v125, &__block_literal_global_52_1);
  v126 = *MEMORY[0x1E69E9840];
}

uint64_t __PVMInitialize_block_invoke_2()
{
  v0 = *sStorage;
  FigSimpleMutexLock();
  pvmUpdatePreferredVolumeAndLimit(@"CategoryChange", 0, *(sStorage + 232), *(sStorage + 240), 0, 1, 0, 0.0, 0.0);
  v1 = *sStorage;
  FigSimpleMutexUnlock();
  v2 = *sStorage;
  FigSimpleMutexLock();
  v3 = sStorage;
  *(sStorage + 8) = 0;
  v4 = *v3;
  FigSimpleMutexUnlock();
  v5 = FigGetCFPreferenceNumberWithDefault() != 0;

  return pvmUpdate100dBVolumeLimit(v5);
}

uint64_t pvmUpdate100dBVolumeLimit(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  if (g100dBVolumeLimitEnabled != result)
  {
    v1 = result;
    if (dword_1EB75DFE8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    g100dBVolumeLimitEnabled = v1;
    v3 = *sStorage;
    FigSimpleMutexLock();
    pvmReassertAllPreferredVolumesForRoute(0);
    pvmUpdatePreferredVolumeAndLimit(@"VolumeLimitChange", 0, *(sStorage + 232), *(sStorage + 240), 0, 1, 0, 0.0, 0.0);
    v4 = *sStorage;
    result = FigSimpleMutexUnlock();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PVMSetCurrentPreferredVolumeWithRefCon(uint64_t a1, uint64_t a2, int a3, float a4)
{
  v8 = PVMInitialize();
  if (!v8 && !*(sStorage + 8))
  {
    v9 = *sStorage;
    FigSimpleMutexLock();
    pvmAssureCurrentCategoryAndDeviceRoute();
    v10 = sStorage;
    if (*(sStorage + 308) != a4)
    {
      v11 = *(sStorage + 232);
      v12 = *(sStorage + 240);
      v13 = *(sStorage + 280);
      v17[0] = *(sStorage + 264);
      v17[1] = v13;
      v18 = *(sStorage + 296);
      pvmSetVolumePref(v11, v12, v17, 0, a4);
      v10 = sStorage;
    }

    if (a3)
    {
      v14 = @"ImplicitVolumeChange";
    }

    else
    {
      v14 = @"ExplicitVolumeChange";
    }

    pvmUpdatePreferredVolumeAndLimit(v14, a1, *(v10 + 232), *(v10 + 240), 0, 1, a2, 0.0, 0.0);
    v15 = *sStorage;
    FigSimpleMutexUnlock();
  }

  return v8;
}

void pvmSetVolumePref(const __CFString *a1, const void *a2, __int128 *a3, int a4, float a5)
{
  v10 = MEMORY[0x1E695E480];
  if (!*(sStorage + 16))
  {
    *(sStorage + 16) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v11 = FigCFEqual();
  v12 = sStorage;
  if (v11)
  {
    v13 = *(sStorage + 200);
    if (v13)
    {
      Value = CFDictionaryGetValue(v13, @"broadcast");
      v12 = sStorage;
    }

    else
    {
      Value = @"broadcast";
    }

    *(a3 + 2) = 0;
    *(a3 + 3) = 0;
    if (Value)
    {
      v15 = Value;
    }

    else
    {
      v15 = @"broadcast";
    }

    *(a3 + 1) = v15;
  }

  v16 = *(v12 + 152);
  if (FigCFEqual() && !PVMInitialize())
  {
    pvmSetSystemSoundVolumeMultiplierForVolumeGuts(a5);
  }

  DeviceRouteString = pvmCreateDeviceRouteString(*(a3 + 1), *(a3 + 3), *(a3 + 2));
  if (DeviceRouteString)
  {
    v18 = DeviceRouteString;
    valuePtr = 0.0;
    if (a4)
    {
      v19 = a3[1];
      v36 = *a3;
      v37 = v19;
      v38 = *(a3 + 4);
      v20 = a3[1];
      v39 = *a3;
      v40 = v20;
      v41 = *(a3 + 4);
      VolumeLimitPref = pvmGetVolumeLimitPref(&v39);
      v22 = a5 / (VolumeLimitPref * pvmGetCurrentVolumeLimitForRoute(&v36, a1));
      if (v22 <= 1.0)
      {
        v23 = v22;
      }

      else
      {
        v23 = 1.0;
      }

      v24 = a3[1];
      v36 = *a3;
      v37 = v24;
      v38 = *(a3 + 4);
      v25 = a3[1];
      v39 = *a3;
    }

    else
    {
      v26 = a3[1];
      v36 = *a3;
      v37 = v26;
      v38 = *(a3 + 4);
      if (a5 <= 1.0)
      {
        v23 = a5;
      }

      else
      {
        v23 = 1.0;
      }

      v25 = a3[1];
      v39 = *a3;
    }

    v40 = v25;
    v41 = *(a3 + 4);
    v27 = pvmGetVolumeLimitPref(&v39);
    v28 = v23 * (v27 * pvmGetCurrentVolumeLimitForRoute(&v36, a1));
    valuePtr = v28;
    MinimumCategoryVolume = pvmGetMinimumCategoryVolume(a1, a2);
    if (v28 < MinimumCategoryVolume)
    {
      valuePtr = MinimumCategoryVolume;
      v28 = MinimumCategoryVolume;
    }

    MaximumCategoryVolume = pvmGetMaximumCategoryVolume(a1, a2);
    if (v28 > MaximumCategoryVolume)
    {
      valuePtr = MaximumCategoryVolume;
    }

    Mutable = CFDictionaryGetValue(*(sStorage + 16), v18);
    v32 = *v10;
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(*(sStorage + 16), v18, Mutable);
      CFRelease(Mutable);
    }

    v33 = CFNumberCreate(v32, kCFNumberFloat32Type, &valuePtr);
    CategoryStringWithModeAppended = pvmCreateCategoryStringWithModeAppended(a1, a2);
    CFDictionarySetValue(Mutable, CategoryStringWithModeAppended, v33);
    CFRelease(v33);
    CFRelease(CategoryStringWithModeAppended);
    *(sStorage + 24) = 1;
    pvmWritePrefs();
    CFRelease(v18);
  }
}

uint64_t PVMSetCurrentPreferredVolumeForDeviceRoute(uint64_t a1, int a2, uint64_t a3, int a4, float a5)
{
  v10 = PVMInitialize();
  if (!v10 && !*(sStorage + 8))
  {
    v11 = *sStorage;
    FigSimpleMutexLock();
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = *(sStorage + 200);
      if (v13)
      {
        Value = CFDictionaryGetValue(v13, *(a1 + 8));
      }

      else
      {
        Value = *(a1 + 8);
      }

      if (Value)
      {
        v15 = Value;
      }

      else
      {
        v15 = v12;
      }
    }

    else
    {
      v15 = 0;
    }

    *(a1 + 8) = v15;
    MappedRouteIdentifier = pvmGetMappedRouteIdentifier(*(a1 + 24), v15);
    v17 = 0;
    *(a1 + 24) = MappedRouteIdentifier;
    v18 = *(a1 + 16);
    if (v18)
    {
      v19 = *(a1 + 8);
      if (v19)
      {
        if (([*(a1 + 8) hasPrefix:@"HeadphonesBT"] & 1) != 0 || (v20 = objc_msgSend(v19, "hasPrefix:", @"HeadsetBT"), v17 = v18, v20))
        {
          v17 = 0;
        }
      }
    }

    *(a1 + 16) = v17;
    v21 = *(a1 + 16);
    v28 = *a1;
    v29 = v21;
    v30 = *(a1 + 32);
    if (PVMIsCurrentDeviceRoute(&v28) | a2)
    {
      pvmAssureCurrentCategoryAndDeviceRoute();
      v22 = *(sStorage + 232);
      v23 = *(sStorage + 240);
      v24 = *(a1 + 16);
      v28 = *a1;
      v29 = v24;
      v30 = *(a1 + 32);
      pvmSetVolumePref(v22, v23, &v28, 0, a5);
      if (a4)
      {
        v25 = @"ImplicitVolumeChange";
      }

      else
      {
        v25 = @"ExplicitVolumeChange";
      }

      pvmUpdatePreferredVolumeAndLimit(v25, 0, *(sStorage + 232), *(sStorage + 240), 0, 1, a3, 0.0, 0.0);
    }

    v26 = *sStorage;
    FigSimpleMutexUnlock();
  }

  return v10;
}

float PVMGetCurrentPreferredVolumeForDeviceRoute(uint64_t a1)
{
  DefaultVolume = pvmGetDefaultVolume();
  if (!PVMInitialize())
  {
    if (!*(a1 + 8))
    {
      *(a1 + 8) = @"Speaker";
    }

    v3 = *sStorage;
    FigSimpleMutexLock();
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = *(sStorage + 200);
      if (v5)
      {
        Value = CFDictionaryGetValue(v5, *(a1 + 8));
      }

      else
      {
        Value = *(a1 + 8);
      }

      if (Value)
      {
        v7 = Value;
      }

      else
      {
        v7 = v4;
      }
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 8) = v7;
    MappedRouteIdentifier = pvmGetMappedRouteIdentifier(*(a1 + 24), v7);
    v9 = 0;
    *(a1 + 24) = MappedRouteIdentifier;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = *(a1 + 8);
      if (v11)
      {
        if (([*(a1 + 8) hasPrefix:@"HeadphonesBT"] & 1) != 0 || (v12 = objc_msgSend(v11, "hasPrefix:", @"HeadsetBT"), v9 = v10, v12))
        {
          v9 = 0;
        }
      }
    }

    *(a1 + 16) = v9;
    pvmAssureCurrentCategoryAndDeviceRoute();
    v13 = *(sStorage + 232);
    v14 = *(sStorage + 240);
    v15 = *(a1 + 16);
    v19[0] = *a1;
    v19[1] = v15;
    v20 = *(a1 + 32);
    pvmGetVolumePref(v13, v14, v19);
    DefaultVolume = v16;
    v17 = *sStorage;
    FigSimpleMutexUnlock();
  }

  return DefaultVolume;
}

uint64_t PVMSetCurrentCategoryAndMode(const __CFString *a1, const void *a2, uint64_t a3)
{
  if (*(sStorage + 8))
  {
    return 0;
  }

  v21 = 0;
  cf = 0;
  result = PVMInitialize();
  if (!result)
  {
    v7 = sStorage;
    if (!*(sStorage + 8))
    {
      if (!a1)
      {
        a1 = @"Audio/Video";
      }

      MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);
      pvmCreateSeparateCategoryAndModeStrings(MappedCategoryWithModeAppended, &cf, &v21);
      v9 = *sStorage;
      FigSimpleMutexLock();
      pvmAssureCurrentCategoryAndDeviceRoute();
      v10 = *(sStorage + 232);
      if (!FigCFEqual() || (v11 = *(sStorage + 240), !FigCFEqual()))
      {
        v12 = *(sStorage + 232);
        v13 = cf;
        *(sStorage + 232) = cf;
        if (v13)
        {
          CFRetain(v13);
        }

        if (v12)
        {
          CFRelease(v12);
        }

        v14 = *(sStorage + 240);
        v15 = v21;
        *(sStorage + 240) = v21;
        if (v15)
        {
          CFRetain(v15);
        }

        if (v14)
        {
          CFRelease(v14);
        }
      }

      v16 = *(sStorage + 248);
      *(sStorage + 248) = a1;
      CFRetain(a1);
      if (v16)
      {
        CFRelease(v16);
      }

      v17 = *(sStorage + 256);
      *(sStorage + 256) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      v18 = *sStorage;
      FigSimpleMutexUnlock();
      v7 = sStorage;
    }

    v19 = *v7;
    FigSimpleMutexLock();
    pvmUpdatePreferredVolumeAndLimit(@"CategoryChange", 0, *(sStorage + 232), *(sStorage + 240), 0, 1, a3, 0.0, 0.0);
    v20 = *sStorage;
    FigSimpleMutexUnlock();
    return 0;
  }

  return result;
}

uint64_t PVMCopyCurrentState(_DWORD *a1, CFTypeRef *a2, void *a3, CFTypeRef *a4, CFTypeRef *a5, CFTypeRef *a6)
{
  v12 = PVMInitialize();
  if (!v12)
  {
    v13 = *sStorage;
    FigSimpleMutexLock();
    pvmAssureCurrentCategoryAndDeviceRoute();
    v14 = sStorage;
    if (a1)
    {
      *a1 = *(sStorage + 308);
    }

    if (a2)
    {
      *a2 = CFRetain(*(v14 + 232));
      v14 = sStorage;
    }

    if (a3)
    {
      v15 = *(v14 + 240);
      if (v15)
      {
        v15 = CFRetain(v15);
        v14 = sStorage;
      }

      *a3 = v15;
    }

    if (a4)
    {
      *a4 = CFRetain(*(v14 + 272));
      v14 = sStorage;
    }

    if (a5)
    {
      v16 = *(v14 + 288);
      if (!v16)
      {
        *a5 = 0;
        if (a6)
        {
LABEL_16:
          v17 = *(v14 + 280);
          if (v17)
          {
            *a6 = CFRetain(v17);
            v14 = sStorage;
          }

          else
          {
            *a6 = 0;
          }
        }

LABEL_21:
        v18 = *v14;
        FigSimpleMutexUnlock();
        return v12;
      }

      *a5 = CFRetain(v16);
      v14 = sStorage;
    }

    if (a6)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  return v12;
}

uint64_t PVMRemoveVolumesForDeviceRoute(void *a1, void *a2, uint64_t a3)
{
  result = PVMInitialize();
  if (!result)
  {
    if (a1)
    {
      Value = a1;
      if (*(sStorage + 200))
      {
        Value = CFDictionaryGetValue(*(sStorage + 200), a1);
      }

      if (Value)
      {
        v8 = Value;
      }

      else
      {
        v8 = a1;
      }

      MappedRouteIdentifier = pvmGetMappedRouteIdentifier(a2, a1);
      if (!a3 || ([a1 hasPrefix:@"HeadphonesBT"] & 1) == 0 && !objc_msgSend(a1, "hasPrefix:", @"HeadsetBT"))
      {
        goto LABEL_14;
      }
    }

    else
    {
      MappedRouteIdentifier = pvmGetMappedRouteIdentifier(a2, 0);
      v8 = 0;
    }

    a3 = 0;
LABEL_14:
    v10 = *sStorage;
    FigSimpleMutexLock();
    v11 = pvmRemoveVolumesForDeviceRoute(v8, MappedRouteIdentifier, a3);
    v12 = *sStorage;
    FigSimpleMutexUnlock();
    return v11;
  }

  return result;
}

uint64_t pvmRemoveVolumesForDeviceRoute(const void *a1, unint64_t a2, uint64_t a3)
{
  DeviceRouteString = pvmCreateDeviceRouteString(a1, a2, a3);
  if (!DeviceRouteString)
  {
    return 4294938296;
  }

  v4 = DeviceRouteString;
  v5 = sStorage;
  v6 = *(sStorage + 16);
  if (v6)
  {
    CFDictionaryRemoveValue(v6, v4);
    v5 = sStorage;
    *(sStorage + 24) = 1;
  }

  v7 = *(v5 + 32);
  if (v7)
  {
    CFDictionaryRemoveValue(v7, v4);
    v5 = sStorage;
    *(sStorage + 56) = 1;
  }

  if (*(v5 + 24) || *(v5 + 56))
  {
    pvmWritePrefs();
  }

  CFRelease(v4);
  return 0;
}

uint64_t PVMSetVolumePreference(const __CFString *a1, const void *a2, int a3, uint64_t a4, uint64_t a5, int a6, float a7, float a8, float a9)
{
  v9 = *(a4 + 16);
  v11[0] = *a4;
  v11[1] = v9;
  v12 = *(a4 + 32);
  return pvmSetVolumePreferenceInternal(a1, a2, a3, v11, 0, a5, a6, a7, a8, a9);
}

uint64_t pvmSetVolumePreferenceInternal(const __CFString *a1, const void *a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, float a8, float a9, float a10)
{
  v20 = PVMInitialize();
  v40 = 0;
  cf = 0;
  if (v20)
  {
    return v20;
  }

  if (!a1)
  {
    a1 = @"Audio/Video";
  }

  if (!*(a4 + 8))
  {
    *(a4 + 8) = @"Speaker";
  }

  MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);
  pvmCreateSeparateCategoryAndModeStrings(MappedCategoryWithModeAppended, &cf, &v40);
  v22 = *sStorage;
  FigSimpleMutexLock();
  v23 = *(a4 + 16);
  v37 = *a4;
  v38 = v23;
  v39 = *(a4 + 32);
  pvmSetVolumePref(cf, v40, &v37, a5, a8);
  v24 = *(a4 + 16);
  v37 = *a4;
  v38 = v24;
  v39 = *(a4 + 32);
  v25 = PVMIsCategoryAndRouteInfoCurrent(a1, a2, &v37);
  if (v25)
  {
    *(sStorage + 308) = a8;
  }

  if (CMSMDeviceState_ItsAHomePod() && FigCFEqual())
  {
    if (a7)
    {
      v26 = @"ImplicitVolumeChange";
    }

    else
    {
      v26 = @"ExplicitVolumeChange";
    }

    v27 = @"VoiceCommand";
    v28 = 0;
    v29 = a9;
    v30 = a10;
    v31 = a3;
    v32 = 0;
  }

  else
  {
    v33 = *(a4 + 16);
    v37 = *a4;
    v38 = v33;
    v39 = *(a4 + 32);
    v34 = PVMIsCurrentDeviceRoute(&v37);
    if (!(v25 | a5) || !v34)
    {
      goto LABEL_21;
    }

    if (a7)
    {
      v26 = @"ImplicitVolumeChange";
    }

    else
    {
      v26 = @"ExplicitVolumeChange";
    }

    v27 = *(sStorage + 232);
    v28 = *(sStorage + 240);
    v29 = a9;
    v30 = a10;
    v31 = a3;
    v32 = 1;
  }

  pvmUpdatePreferredVolumeAndLimit(v26, 0, v27, v28, v31, v32, a6, v29, v30);
LABEL_21:
  v35 = *sStorage;
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  return v20;
}

uint64_t PVMSetRawVolumePreference(const __CFString *a1, const void *a2, uint64_t a3, uint64_t a4, int a5, int a6, float a7)
{
  v7 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v7;
  v10 = *(a3 + 32);
  return pvmSetVolumePreferenceInternal(a1, a2, a6, v9, 1, a4, a5, a7, 0.0, 0.0);
}

uint64_t PVMSetVolumeLimit(uint64_t a1, float a2)
{
  v4 = PVMInitialize();
  if (!v4)
  {
    v5 = 0.0;
    if (a2 >= 0.0)
    {
      v5 = a2;
    }

    if (v5 <= 1.0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1.0;
    }

    v7 = *sStorage;
    FigSimpleMutexLock();
    if (!PVMVolumePrefExistsForRouteAndCategory(*(sStorage + 272), *(sStorage + 288), *(sStorage + 280), 0, 0))
    {
      DefaultVolume = pvmGetDefaultVolume();
      v9 = *(sStorage + 232);
      v10 = *(sStorage + 240);
      v11 = *(sStorage + 280);
      v18[0] = *(sStorage + 264);
      v18[1] = v11;
      v19 = *(sStorage + 296);
      pvmSetVolumePref(v9, v10, v18, 0, DefaultVolume);
    }

    *v18 = v6;
    v12 = *MEMORY[0x1E695E480];
    if ((*(sStorage + 32) || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(sStorage + 32) = Mutable) != 0)) && (v14 = CFNumberCreate(v12, kCFNumberFloat32Type, v18)) != 0)
    {
      v15 = v14;
      CFDictionarySetValue(*(sStorage + 32), @"Headphone", v14);
      CFRelease(v15);
      *(sStorage + 56) = 1;
      pvmWritePrefs();
      v4 = 0;
    }

    else
    {
      v4 = FigSignalErrorAtGM();
    }

    pvmReassertAllPreferredVolumesForRoute(a1);
    pvmUpdatePreferredVolumeAndLimit(@"VolumeLimitChange", 0, *(sStorage + 232), *(sStorage + 240), 0, 1, a1, 0.0, 0.0);
    v16 = *sStorage;
    FigSimpleMutexUnlock();
  }

  return v4;
}

void pvmReassertAllPreferredVolumesForRoute(uint64_t a1)
{
  context = a1;
  v1 = *(sStorage + 16);
  if (v1)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v1);
    if (Copy)
    {
      v3 = Copy;
      CFDictionaryApplyFunction(Copy, pvmReassertDeviceVolumesIfMatchesRoute, &context);
      CFRelease(v3);
    }
  }
}

float PVMGetVolumeLimit()
{
  VolumeLimitPref = 1.0;
  if (!PVMInitialize())
  {
    v5 = 0u;
    v6 = 0u;
    v1 = *sStorage;
    FigSimpleMutexLock();
    v4 = @"Headphones";
    VolumeLimitPref = pvmGetVolumeLimitPref(&v4);
    v2 = *sStorage;
    FigSimpleMutexUnlock();
  }

  return VolumeLimitPref;
}

BOOL PVMIsOKToMuteCurrentCategory()
{
  v0 = *sStorage;
  FigSimpleMutexLock();
  pvmAssureCurrentCategoryAndDeviceRoute();
  v1 = *(sStorage + 232);
  v3 = 0;
  if (!FigCFEqual())
  {
    v2 = *(sStorage + 232);
    if (!FigCFEqual())
    {
      v3 = 1;
    }
  }

  v4 = *sStorage;
  FigSimpleMutexUnlock();
  return v3;
}

float PVMGetVolumeMultiplier()
{
  v0 = 1.0;
  if (!PVMInitialize())
  {
    v1 = *sStorage;
    FigSimpleMutexLock();
    v0 = *(sStorage + 316);
    valuePtr = v0;
    v2 = *(sStorage + 104);
    if (v2)
    {
      Value = CFDictionaryGetValue(v2, @"global");
      if (Value)
      {
        v4 = Value;
        v5 = CFGetTypeID(Value);
        if (v5 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v4, kCFNumberFloat32Type, &valuePtr);
          v0 = valuePtr;
        }
      }
    }

    v6 = *sStorage;
    FigSimpleMutexUnlock();
  }

  return v0;
}

uint64_t PVMGetThirdPartyVolumeMultiplier()
{
  v0 = *sStorage;
  FigSimpleMutexLock();
  v1 = (PVMGetVolumeMultiplier() / *(sStorage + 168)) - *(sStorage + 160);
  v2 = *sStorage;
  return FigSimpleMutexUnlock();
}

void PVMSaveEndpointDisconnectionTimeInfo(uint64_t a1, void *a2)
{
  [a2 timeIntervalSince1970];
  v4 = MXCFNumberCreateFromDouble(v3);
  DeviceRouteString = pvmCreateDeviceRouteString(*(a1 + 8), *(a1 + 24), *(a1 + 16));
  Mutable = *(sStorage + 136);
  if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(sStorage + 136) = Mutable) != 0))
  {
    CFDictionarySetValue(Mutable, DeviceRouteString, v4);
    *(sStorage + 144) = 1;
    pvmWritePrefs();
    if (!v4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  FigSignalErrorAtGM();
  if (v4)
  {
LABEL_4:
    CFRelease(v4);
  }

LABEL_5:
  if (DeviceRouteString)
  {

    CFRelease(DeviceRouteString);
  }
}

uint64_t pvmWritePrefs()
{
  v0 = *sStorage;
  FigSimpleMutexLock();
  v1 = sStorage;
  v2 = *(sStorage + 24);
  if (*(sStorage + 24))
  {
    v3 = *(sStorage + 16);
    if (v3)
    {
      MXCFPreferencesSetAndSynchronizeUserPreference(@"volumes", v3);
      v1 = sStorage;
      *(sStorage + 24) = 0;
      v2 = 1;
    }

    else
    {
      v2 = 0;
    }
  }

  if (*(v1 + 40))
  {
    v4 = *(v1 + 48);
    if (v4)
    {
      MXCFPreferencesSetAndSynchronizeUserPreference(@"inputVolumes", v4);
      v1 = sStorage;
      *(sStorage + 40) = 0;
      v2 = 1;
    }
  }

  if (*(v1 + 56))
  {
    v5 = *(v1 + 32);
    if (v5)
    {
      MXCFPreferencesSetAndSynchronizeUserPreference(@"volumeLimits", v5);
      v1 = sStorage;
      *(sStorage + 56) = 0;
      v2 = 1;
    }
  }

  if (*(v1 + 100))
  {
    if (*(v1 + 92))
    {
      v6 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v6 = MEMORY[0x1E695E4C0];
    }

    MXCFPreferencesSetAndSynchronizeUserPreference(@"isMaxVolumeLimitForBuiltInSpeakerEnabled", *v6);
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, (sStorage + 96));
    MXCFPreferencesSetAndSynchronizeUserPreference(@"maxVolumeLimitForBuiltInSpeaker", v7);
    v1 = sStorage;
    *(sStorage + 100) = 0;
    if (v7)
    {
      CFRelease(v7);
      v1 = sStorage;
    }

    v2 = 1;
  }

  if (*(v1 + 112))
  {
    v8 = *(v1 + 104);
    if (v8)
    {
      MXCFPreferencesSetAndSynchronizeUserPreference(@"volumeMultiplier", v8);
      v1 = sStorage;
      *(sStorage + 112) = 0;
      v2 = 1;
    }
  }

  if (*(v1 + 72))
  {
    v9 = *(v1 + 64);
    if (v9)
    {
      MXCFPreferencesSetAndSynchronizeUserPreference(@"vibeIntensity", v9);
      *(sStorage + 72) = 0;
LABEL_25:
      global_queue = dispatch_get_global_queue(0, 0);
      MXDispatchAsync("pvmWritePrefs", "MXPreferredVolumeManager.m", 1989, 0, 0, global_queue, &__block_literal_global_265);
      v1 = sStorage;
      goto LABEL_26;
    }
  }

  if (v2)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (*(v1 + 128))
  {
    v11 = *(v1 + 120);
    if (v11)
    {
      MXCFPreferencesSetAndSynchronizeUserPreference(@"endpointTypeInfo", v11);
      v1 = sStorage;
      *(sStorage + 128) = 0;
    }
  }

  if (*(v1 + 144))
  {
    v12 = *(v1 + 136);
    if (v12)
    {
      MXCFPreferencesSetAndSynchronizeUserPreference(@"endpointDisconnectionTimeInfo", v12);
      v1 = sStorage;
      *(sStorage + 144) = 0;
    }
  }

  v13 = *v1;

  return FigSimpleMutexUnlock();
}

const __CFNumber *PVMCopyEndpointDisconnectionTimeInfo(uint64_t a1)
{
  valuePtr = 0.0;
  DeviceRouteString = pvmCreateDeviceRouteString(*(a1 + 8), *(a1 + 24), *(a1 + 16));
  if (DeviceRouteString)
  {
    v2 = DeviceRouteString;
    v3 = *(sStorage + 136);
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, v2);
      v5 = Value;
      if (!Value)
      {
LABEL_8:
        CFRelease(v2);
        return v5;
      }

      v6 = CFGetTypeID(Value);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr);
        v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:valuePtr];
        v7 = v5;
        goto LABEL_8;
      }
    }

    v5 = 0;
    goto LABEL_8;
  }

  return 0;
}

uint64_t PVMGetMostRecentSynchronizedVolumeActivityTimestamp(uint64_t a1)
{
  DeviceRouteString = pvmCreateDeviceRouteString(*(a1 + 8), *(a1 + 24), *(a1 + 16));
  if (DeviceRouteString)
  {
    v2 = gRouteTimestampPrefs == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v5 = 0;
    result = 0;
    if (!DeviceRouteString)
    {
      return result;
    }
  }

  else
  {
    v4 = *sStorage;
    FigSimpleMutexLock();
    v5 = [objc_msgSend(objc_msgSend(gRouteTimestampPrefs objectForKey:{DeviceRouteString), "objectForKey:", @"voiceCommandSynchroizedVolumeActivityTimestamp", "unsignedLongLongValue"}];
    v6 = *sStorage;
    FigSimpleMutexUnlock();
  }

  CFRelease(DeviceRouteString);
  return v5;
}

void PVMSetMostRecentSynchronizedVolumeActivityTimestamp(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  DeviceRouteString = pvmCreateDeviceRouteString(*(a1 + 8), *(a1 + 24), *(a1 + 16));
  v4 = DeviceRouteString;
  if (DeviceRouteString)
  {
    v5 = gRouteTimestampPrefs == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
    v7 = 0;
    if (!DeviceRouteString)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:a2];
    v9 = *sStorage;
    FigSimpleMutexLock();
    v10 = [objc_msgSend(gRouteTimestampPrefs objectForKey:{v4), "mutableCopy"}];
    v6 = v10;
    if (!v10)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v6 setObject:v8 forKey:@"voiceCommandSynchroizedVolumeActivityTimestamp"];
    if (dword_1EB75DFE8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [gRouteTimestampPrefs setValue:v6 forKey:{v4, v14, v15}];
    v12 = *sStorage;
    FigSimpleMutexUnlock();
  }

  CFRelease(v4);
  v7 = v6;
LABEL_14:

  v13 = *MEMORY[0x1E69E9840];
}

void PVMApplyVolumeReductionToHeadphoneRoutes(float a1)
{
  v75[16] = *MEMORY[0x1E69E9840];
  v2 = *sStorage;
  FigSimpleMutexLock();
  v3 = [*(sStorage + 16) copy];
  v4 = [*(sStorage + 120) copy];
  v5 = *sStorage;
  FigSimpleMutexUnlock();
  if (v3)
  {
    if (v4)
    {
      obj = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v7 = [v4 countByEnumeratingWithState:&v62 objects:v74 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v63;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v63 != v9)
            {
              objc_enumerationMutation(v4);
            }

            v11 = *(*(&v62 + 1) + 8 * i);
            if ([objc_msgSend(v4 objectForKeyedSubscript:{v11), "isEqualToString:", @"Headphones"}] && objc_msgSend(v11, "containsString:", @"Headphone"))
            {
              [obj addObject:v11];
            }
          }

          v8 = [v4 countByEnumeratingWithState:&v62 objects:v74 count:16];
        }

        while (v8);
      }

      v48 = v4;
      v49 = v3;
      if ([obj count])
      {
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v12 = [obj countByEnumeratingWithState:&v58 objects:v73 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v59;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v59 != v14)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v58 + 1) + 8 * j);
              [objc_msgSend(objc_msgSend(v3 objectForKey:{v16), "objectForKey:", @"Audio/Video", "floatValue"}];
              if (v17 > a1)
              {
                [v6 addObject:v16];
              }
            }

            v13 = [obj countByEnumeratingWithState:&v58 objects:v73 count:16];
          }

          while (v13);
        }

        if ([v6 count])
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = [v6 countByEnumeratingWithState:&v54 objects:v72 count:16];
          if (!v52)
          {
            goto LABEL_66;
          }

          v51 = *v55;
          v50 = v6;
          while (1)
          {
            for (k = 0; k != v52; ++k)
            {
              if (*v55 != v51)
              {
                objc_enumerationMutation(v6);
              }

              v19 = *(*(&v54 + 1) + 8 * k);
              v20 = [v19 componentsSeparatedByString:{@"~", v46, v47, v48, v49}];
              v21 = [v20 count];
              if (!v21)
              {
                v24 = 0;
                v23 = 0;
                v26 = 0;
                goto LABEL_37;
              }

              v22 = v21;
              v23 = [v20 objectAtIndex:0];
              v24 = 0;
              if (v22 == 2)
              {
                v25 = 1;
                goto LABEL_35;
              }

              if (v22 == 3)
              {
                v24 = [v20 objectAtIndex:1];
                v25 = 2;
LABEL_35:
                v26 = [v20 objectAtIndex:v25];
                goto LABEL_37;
              }

              v26 = 0;
LABEL_37:
              VolumeSequenceNumber = CMSMUtility_GetVolumeSequenceNumber();
              if (dword_1EB75DFE8)
              {
                v67 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v29 = v67;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                {
                  v30 = v29;
                }

                else
                {
                  v30 = v29 & 0xFFFFFFFE;
                }

                if (v30)
                {
                  v68 = 136315394;
                  v69 = "PVMApplyVolumeReductionToHeadphoneRoutes";
                  v70 = 2114;
                  v71 = v19;
                  LODWORD(v47) = 22;
                  v46 = &v68;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v31 = *sStorage;
              FigSimpleMutexLock();
              v32 = sStorage;
              *(sStorage + 8) = 0;
              v33 = *v32;
              FigSimpleMutexUnlock();
              v75[0] = @"Headphones";
              v75[1] = v23;
              v75[2] = v24;
              v75[3] = v26;
              v75[4] = 0;
              pvmSetVolumePreferenceInternal(@"Audio/Video", @"Default", 0, v75, 1, VolumeSequenceNumber, 0, a1, 0.0, 0.0);
              v34 = *sStorage;
              FigSimpleMutexLock();
              v35 = sStorage;
              *(sStorage + 8) = 1;
              v36 = *v35;
              FigSimpleMutexUnlock();
              v6 = v50;
            }

            v52 = [v50 countByEnumeratingWithState:&v54 objects:v72 count:16];
            if (!v52)
            {
LABEL_66:

              goto LABEL_68;
            }
          }
        }

        if (!dword_1EB75DFE8)
        {
          goto LABEL_66;
        }

        v67 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v43 = v67;
        if (os_log_type_enabled(v42, type))
        {
          v44 = v43;
        }

        else
        {
          v44 = v43 & 0xFFFFFFFE;
        }

        if (!v44)
        {
LABEL_65:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_66;
        }

        v68 = 136315138;
        v69 = "PVMApplyVolumeReductionToHeadphoneRoutes";
      }

      else
      {
        if (!dword_1EB75DFE8)
        {
          goto LABEL_66;
        }

        v67 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v40 = v67;
        if (os_log_type_enabled(v39, type))
        {
          v41 = v40;
        }

        else
        {
          v41 = v40 & 0xFFFFFFFE;
        }

        if (!v41)
        {
          goto LABEL_65;
        }

        v68 = 136315138;
        v69 = "PVMApplyVolumeReductionToHeadphoneRoutes";
      }

      _os_log_send_and_compose_impl();
      goto LABEL_65;
    }

    if (dword_1EB75DFE8)
    {
      v67 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = 0;
  }

  else
  {
    if (dword_1EB75DFE8)
    {
      v67 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = v4;
  }

LABEL_68:

  v45 = *MEMORY[0x1E69E9840];
}

uint64_t PVMSetVibeIntensityPreference(float a1)
{
  valuePtr = a1;
  v1 = *sStorage;
  FigSimpleMutexLock();
  v2 = *(sStorage + 64);
  if (v2)
  {
    CFRelease(v2);
    *(sStorage + 64) = 0;
  }

  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  v4 = sStorage;
  *(sStorage + 64) = v3;
  if (v3)
  {
    *(v4 + 72) = 1;
    pvmWritePrefs();
    v5 = 0;
  }

  else
  {
    v5 = FigSignalErrorAtGM();
  }

  v6 = *sStorage;
  FigSimpleMutexUnlock();
  return v5;
}

float PVMGetVibeIntensityPreference()
{
  valuePtr = 1.0;
  v0 = *sStorage;
  FigSimpleMutexLock();
  v1 = *(sStorage + 64);
  if (v1)
  {
    CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
    if (valuePtr > 0.1)
    {
      valuePtr = 1.0;
    }
  }

  v2 = *sStorage;
  FigSimpleMutexUnlock();
  return valuePtr;
}

uint64_t PVMSetInputVolumePreference(const void *a1, unint64_t a2, uint64_t a3, float a4)
{
  valuePtr = a4;
  DeviceRouteString = pvmCreateDeviceRouteString(a1, a2, a3);
  if (DeviceRouteString)
  {
    v5 = DeviceRouteString;
    v6 = *sStorage;
    FigSimpleMutexLock();
    v7 = *MEMORY[0x1E695E480];
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
    if (v8)
    {
      v9 = v8;
      Mutable = *(sStorage + 48);
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(sStorage + 48) = Mutable;
      }

      CFDictionarySetValue(Mutable, v5, v9);
      *(sStorage + 40) = 1;
      pvmWritePrefs();
      CFRelease(v9);
    }

    v11 = *sStorage;
    FigSimpleMutexUnlock();
    CFRelease(v5);
  }

  return 0;
}

float PVMGetInputVolumePreference(const void *a1, unint64_t a2, uint64_t a3)
{
  valuePtr = 1065353216;
  DeviceRouteString = pvmCreateDeviceRouteString(a1, a2, a3);
  v4 = 1.0;
  if (DeviceRouteString)
  {
    v5 = DeviceRouteString;
    if (*(sStorage + 48))
    {
      v6 = *sStorage;
      FigSimpleMutexLock();
      Value = CFDictionaryGetValue(*(sStorage + 48), v5);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberFloat32Type, &valuePtr);
      }

      v8 = *sStorage;
      FigSimpleMutexUnlock();
      CFRelease(v5);
      return *&valuePtr;
    }

    else
    {
      CFRelease(DeviceRouteString);
    }
  }

  return v4;
}

BOOL PVMInputVolumePrefExistsForDeviceRoute(const void *a1, unint64_t a2, uint64_t a3)
{
  DeviceRouteString = pvmCreateDeviceRouteString(a1, a2, a3);
  if (!DeviceRouteString)
  {
    return 0;
  }

  v4 = DeviceRouteString;
  if (*(sStorage + 48))
  {
    v5 = *sStorage;
    FigSimpleMutexLock();
    v6 = CFDictionaryGetValue(*(sStorage + 48), v4) != 0;
    v7 = *sStorage;
    FigSimpleMutexUnlock();
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v4);
  return v6;
}

uint64_t PVMToggleMaxVolumeLimitForBuiltInSpeaker(int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = sStorage;
  *(sStorage + 92) = a1;
  if (a1)
  {
    v2 = *(v1 + 96);
  }

  else
  {
    v2 = 1.0;
  }

  pvmApplyMaxVolumeLimitForBuiltInSpeaker(v2);
  if (dword_1EB75DFE8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = [MXPreferredVolumeManager sharedInstance:v8];
  LODWORD(v5) = *(sStorage + 308);
  [(MXPreferredVolumeManager *)v4 postNotification:@"PVMStateDidChange" category:0 mode:0 volume:1 rampUpwardDuration:0 rampDownwardDuration:0 silenceVolumeHUD:v5 reason:0.0 refCon:0.0 sequenceNumber:0];
  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t pvmApplyMaxVolumeLimitForBuiltInSpeaker(float a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(sStorage + 96);
  *(sStorage + 96) = 1065353216;
  *&v18 = 0;
  *(&v18 + 1) = @"Speaker";
  v19 = 0;
  v20 = @"Speaker";
  v21 = 0;
  v3 = PVMGetVolumePreference(@"Audio/Video", 0, &v18);
  if (v3 < a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = a1;
  }

  v5 = *sStorage;
  FigSimpleMutexLock();
  *&v18 = 0;
  *(&v18 + 1) = @"Speaker";
  v19 = 0;
  v20 = @"Speaker";
  v21 = 0;
  pvmSetVolumePref(@"Audio/Video", 0, &v18, 0, v4);
  v6 = *sStorage;
  FigSimpleMutexUnlock();
  v7 = sStorage;
  if (*(sStorage + 92))
  {
    *(sStorage + 96) = a1;
    if (dword_1EB75DFE8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v7 = sStorage;
    }
  }

  else
  {
    *(sStorage + 96) = v2;
  }

  v9 = *(v7 + 272);
  if (FigCFEqual())
  {
    v10 = *(sStorage + 288);
    if (FigCFEqual())
    {
      v11 = *sStorage;
      FigSimpleMutexLock();
      v12 = sStorage;
      *(sStorage + 8) = 0;
      v13 = *v12;
      FigSimpleMutexUnlock();
      v14 = *sStorage;
      FigSimpleMutexLock();
      pvmUpdatePreferredVolumeAndLimit(@"VolumeLimitChange", 0, @"Audio/Video", 0, 0, 1, 0, 0.0, 0.0);
      v15 = *sStorage;
      FigSimpleMutexUnlock();
    }
  }

  *(sStorage + 100) = 1;
  result = pvmWritePrefs();
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PVMSetMaxVolumeLimitForBuiltInSpeaker(float a1)
{
  v2 = 1.0;
  if (a1 < 1.0)
  {
    v2 = a1;
    if (a1 <= 0.2)
    {
      v2 = 0.2;
    }
  }

  if (!*(sStorage + 92) || *(sStorage + 96) == v2)
  {
    *(sStorage + 96) = v2;
  }

  else
  {
    pvmApplyMaxVolumeLimitForBuiltInSpeaker(v2);
  }

  return 0;
}

float PVMComputeSynchronizedVolume(float a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 <= 0.3)
  {
    v4 = 0.0;
    v2 = 0.2;
    v3 = 0.35;
    v1 = 0.3;
LABEL_5:
    v5 = v2 + (((v3 - v2) / v1) * (a1 - v4));
    if (dword_1EB75DFE8)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a1 <= 0.8)
  {
    v1 = 0.5;
    v2 = 0.35;
    v3 = 0.65;
    v4 = 0.3;
    goto LABEL_5;
  }

  v5 = 0.65;
  if (dword_1EB75DFE8)
  {
LABEL_8:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t PVMGetVolumeToBeAppliedOnHardware(double a1, float a2)
{
  if (vabds_f32(*&a1, a2) <= 0.06251)
  {
    a2 = 0.2;
    if (*&a1 >= 0.2)
    {
      a2 = 0.65;
      if (*&a1 <= 0.65)
      {
        return 0;
      }
    }
  }

  *&a1 = a2;
  return [MEMORY[0x1E696AD98] numberWithFloat:a1];
}

void __pvmInitialize_block_invoke()
{
  v67 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E8B8];
  v1 = *MEMORY[0x1E695E898];
  v2 = CFPreferencesCopyValue(@"volumes", @"com.apple.mediaexperience", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v2)
  {
    v3 = v2;
    v56 = v1;
    v57 = v0;
    Count = CFDictionaryGetCount(v2);
    v5 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    cf = v3;
    v59 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(v3, v5, v59);
    v58 = Count;
    if (Count >= 1)
    {
      v6 = 0;
      do
      {
        v7 = v5[v6];
        v8 = v59[v6];
        v9 = CFDictionaryGetCount(v8);
        v10 = malloc_type_calloc(v9, 8uLL, 0x80040B8603338uLL);
        v11 = malloc_type_calloc(v9, 8uLL, 0x80040B8603338uLL);
        CFDictionaryGetKeysAndValues(v8, v10, v11);
        if (dword_1EB75DFE8)
        {
          valuePtr = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v9 >= 1)
        {
          v13 = 0;
          v14 = dword_1EB75DFE8;
          do
          {
            if (v14)
            {
              v15 = v10[v13];
              v16 = v11[v13];
              valuePtr = 0;
              v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v14 = dword_1EB75DFE8;
            }

            ++v13;
          }

          while (v9 != v13);
        }

        free(v10);
        free(v11);
        ++v6;
      }

      while (v6 != v58);
    }

    free(v5);
    free(v59);
    CFRelease(cf);
    v1 = v56;
    v0 = v57;
  }

  v18 = MXCFPreferencesCopyPreference(@"isMaxVolumeLimitForBuiltInSpeakerEnabled");
  v19 = *MEMORY[0x1E695E4D0];
  FigCFEqual();
  if (dword_1EB75DFE8)
  {
    valuePtr = 0;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v18)
  {
    CFRelease(v18);
  }

  v21 = MXCFPreferencesCopyPreference(@"maxVolumeLimitForBuiltInSpeaker");
  if (v21)
  {
    v22 = v21;
    valuePtr = 0;
    CFNumberGetValue(v21, kCFNumberFloat32Type, &valuePtr);
    if (dword_1EB75DFE8)
    {
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFRelease(v22);
  }

  if (dword_1EB75DFE8)
  {
    valuePtr = 0;
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v25 = valuePtr;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFE;
    }

    if (v26)
    {
      v27 = *(sStorage + 312);
      v61 = 136315394;
      v62 = "pvmDumpVolumePreferences";
      v63 = 2048;
      v64 = v27;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v28 = CFPreferencesCopyValue(@"volumeMultiplier", @"com.apple.mediaexperience", v0, v1);
  if (v28)
  {
    v29 = v28;
    v30 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    v31 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(v29, v30, v31);
    if (dword_1EB75DFE8)
    {
      v32 = *v30;
      v33 = *v31;
      valuePtr = 0;
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v35 = valuePtr;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v35;
      }

      else
      {
        v36 = v35 & 0xFFFFFFFE;
      }

      if (v36)
      {
        v61 = 136315650;
        v62 = "pvmDumpVolumePreferences";
        v63 = 2114;
        v64 = *&v32;
        v65 = 2114;
        v66 = v33;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    free(v30);
    free(v31);
    CFRelease(v29);
  }

  if (dword_1EB75DFE8)
  {
    valuePtr = 0;
    v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v38 = valuePtr;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
    }

    else
    {
      v39 = v38 & 0xFFFFFFFE;
    }

    if (v39)
    {
      v40 = CMSMDeviceState_RingerIsOn(1);
      v41 = "not silenced";
      if (!v40)
      {
        v41 = "silenced";
      }

      v61 = 136315394;
      v62 = "pvmDumpVolumePreferences";
      v63 = 2082;
      v64 = *&v41;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DFE8)
    {
      valuePtr = 0;
      v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v43 = valuePtr;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v43;
      }

      else
      {
        v44 = v43 & 0xFFFFFFFE;
      }

      if (v44)
      {
        if (CMSMDeviceState_VibrateOnRing(1))
        {
          v45 = "ON";
        }

        else
        {
          v45 = "OFF";
        }

        v61 = 136315394;
        v62 = "pvmDumpVolumePreferences";
        v63 = 2082;
        v64 = *&v45;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB75DFE8)
      {
        valuePtr = 0;
        v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v47 = valuePtr;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v48 = v47;
        }

        else
        {
          v48 = v47 & 0xFFFFFFFE;
        }

        if (v48)
        {
          if (CMSMDeviceState_VibrateOnSilent(1))
          {
            v49 = "ON";
          }

          else
          {
            v49 = "OFF";
          }

          v61 = 136315394;
          v62 = "pvmDumpVolumePreferences";
          v63 = 2082;
          v64 = *&v49;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (dword_1EB75DFE8)
        {
          valuePtr = 0;
          v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v51 = valuePtr;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v52 = v51;
          }

          else
          {
            v52 = v51 & 0xFFFFFFFE;
          }

          if (v52)
          {
            if (CMSMDeviceState_ButtonsCanChangeRingerVolume())
            {
              v53 = "ON";
            }

            else
            {
              v53 = "OFF";
            }

            v61 = 136315394;
            v62 = "pvmDumpVolumePreferences";
            v63 = 2082;
            v64 = *&v53;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }
  }

  v54 = *MEMORY[0x1E69E9840];
}

void pvmApplierFunction_CopyValidatedVolumes(const void *a1, CFNumberRef number, __CFDictionary *a3)
{
  if (a3)
  {
    valuePtr = 0.0;
    CFNumberGetValue(number, kCFNumberFloat32Type, &valuePtr);
    if (valuePtr > 1.0)
    {
      valuePtr = 1.0;
    }

    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
    CFDictionarySetValue(a3, a1, v5);
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

uint64_t __pvmInitializeLogging_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  result = fig_note_initialize_category_with_default_work();
  if ((dword_1EB75DFE8 & 0x100) != 0)
  {
    dword_1EB75DFE8 = 0;
  }

  return result;
}

void pvmApplierFunction_ValidateVolumesForRoute(const void *a1, const __CFDictionary *a2, __CFDictionary *a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryApplyFunction(a2, pvmApplierFunction_ValidateVolumesForCategory, Mutable);
  CFDictionarySetValue(a3, a1, Mutable);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void pvmApplierFunction_ValidateVolumesForCategory(const void *a1, const void *a2, __CFDictionary *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!FigCFEqual())
  {
    valuePtr = 1056964608;
    v6 = CFGetTypeID(a2);
    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a2, kCFNumberFloat32Type, &valuePtr);
      v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
      CFDictionarySetValue(a3, a1, v7);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      if (dword_1EB75DFE8)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      MXSimulateCrash("PVM volume entry contained something other than a CFNumber. Please file a radar to MediaExperience (New Bugs) | All.");
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t pvmGetMappedBluetoothRouteWithDeviceIDAppended(void *a1)
{
  if (([a1 hasPrefix:@"HeadphonesBT"] & 1) == 0 && !objc_msgSend(a1, "hasPrefix:", @"HeadsetBT"))
  {
    return 0;
  }

  v2 = [objc_msgSend(a1 componentsSeparatedByString:{@"~", "lastObject"}];
  if (v2)
  {
    v3 = [objc_msgSend(v2 componentsSeparatedByString:{@"-", "firstObject"}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [@"HeadphonesBT" stringByAppendingString:@"~"];

  return [v4 stringByAppendingString:v3];
}

uint64_t __pvmAdd100dBVolumeLimitChangedListener_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (dword_1EB75DFE8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *sStorage;
  FigSimpleMutexLock();
  v3 = sStorage;
  *(sStorage + 8) = 0;
  v4 = *v3;
  FigSimpleMutexUnlock();
  result = pvmUpdate100dBVolumeLimit(CFPreferenceNumberWithDefault != 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

float pvmGet100dBVolumeLimit()
{
  Value = CFDictionaryGetValue(*(sStorage + 80), @"HighVolumeLimit");
  valuePtr = 1062668861;
  v1 = *"=\nW?";
  if (Value)
  {
    v2 = Value;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v2))
    {
      CFNumberGetValue(v2, kCFNumberFloatType, &valuePtr);
      return *&valuePtr;
    }
  }

  return v1;
}

uint64_t pvmSetSystemSoundVolumeMultiplierForVolumeGuts(float a1)
{
  v2 = *sStorage;
  FigSimpleMutexLock();
  v3 = *(sStorage + 160);
  v4 = *(sStorage + 168);
  if (((v3 + a1) * v4) >= v3)
  {
    v3 = (v3 + a1) * v4;
  }

  if (v3 > *(sStorage + 164))
  {
    v3 = *(sStorage + 164);
  }

  valuePtr = v3;
  v5 = *MEMORY[0x1E695E480];
  if ((*(sStorage + 104) || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(sStorage + 104) = Mutable) != 0)) && (v7 = CFNumberCreate(v5, kCFNumberFloat32Type, &valuePtr)) != 0)
  {
    v8 = v7;
    CFDictionarySetValue(*(sStorage + 104), @"global", v7);
    CFRelease(v8);
    *(sStorage + 112) = 1;
    pvmWritePrefs();
  }

  else
  {
    FigSignalErrorAtGM();
  }

  v9 = *sStorage;
  return FigSimpleMutexUnlock();
}

void pvmReassertDeviceVolumesIfMatchesRoute(const __CFString *a1, const __CFDictionary *a2, uint64_t *a3)
{
  v6 = @"HeadphonesBT";
  if (CFStringHasPrefix(a1, @"HeadphonesBT") || (v6 = @"Headphone", CFStringHasPrefix(a1, @"Headphone")))
  {
    v7 = *MEMORY[0x1E695E480];
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v6);
    CFStringAppend(MutableCopy, @"~");
    HasPrefix = CFStringHasPrefix(a1, MutableCopy);
    CFRelease(MutableCopy);
    if (HasPrefix)
    {
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v7, a1, @"~");
      Count = CFArrayGetCount(ArrayBySeparatingStrings);
      v12 = *a3;
      v15 = 0;
      ValueAtIndex = 0;
      v18 = v12;
      context = v6;
      if (Count >= 2)
      {
        v13 = Count;
        ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
        if (v13 != 2)
        {
          v15 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 2);
        }
      }

      v17 = *(sStorage + 264);
      CFDictionaryApplyFunction(a2, pvmReassertVolume, &context);
      CFRelease(ArrayBySeparatingStrings);
    }
  }
}

void pvmReassertVolume(void *a1, const void *a2, uint64_t *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 0;
  cf = 0;
  v6 = a3[4];
  if (!FigCFEqual())
  {
    valuePtr = 0.0;
    v7 = CFGetTypeID(a2);
    if (v7 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a2, kCFNumberFloat32Type, &valuePtr);
      v9 = a3[2];
      v8 = a3[3];
      v11 = *a3;
      v10 = a3[1];
      v12 = valuePtr;
      v21 = v8;
      v22 = v11;
      v23 = v9;
      v24 = v10;
      v25 = 0;
      VolumeLimitPref = pvmGetVolumeLimitPref(&v21);
      v21 = v8;
      v22 = v11;
      v23 = v9;
      v24 = v10;
      v25 = 0;
      v14 = v12 / (VolumeLimitPref * pvmGetCurrentVolumeLimitForRoute(&v21, 0));
      if (v14 <= 1.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 1.0;
      }

      pvmCreateSeparateCategoryAndModeStrings(a1, &cf, &v19);
      v21 = v8;
      v22 = v11;
      v23 = v9;
      v24 = v10;
      v25 = 0;
      pvmSetVolumePreferenceInternal(cf, v19, 0, &v21, 0, v6, 0, v15, 0.0, 0.0);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v19)
      {
        CFRelease(v19);
      }
    }

    else
    {
      if (dword_1EB75DFE8)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      MXSimulateCrash("pvmReassertVolume contained something other than a CFNumber. Please file a radar to MediaExperience (New Bugs) | All.");
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1B192FC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id obj, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a63, 8);
  objc_sync_exit(v63);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_1B1932174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id obj, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a49, 8);
  objc_sync_exit(v49);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void CMScreenInitialize()
{
  gCMScreen_0 = 0;
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  gCMScreen_1 = dispatch_queue_create("com.apple.coremedia.cmsession.screenqueue", v0);
  MXDispatchAsync("CMScreenInitialize", "CMSessionManager_Screen.m", 131, 0, 0, gCMScreen_1, &__block_literal_global_67);
  CMScreenSetMirroringMode(0);

  CMScreenSetVirtualDisplayClientPID(0);
}

CFTypeRef cmscreenSetCurrentState(CFTypeRef cf)
{
  if (gCMScreen_2)
  {
    CFRelease(gCMScreen_2);
  }

  if (cf)
  {
    result = CFRetain(cf);
  }

  else
  {
    result = 0;
  }

  gCMScreen_2 = result;
  return result;
}

void CMScreenSetMirroringMode(int a1)
{
  if (BackBoardServicesLibrary_sOnce != -1)
  {
    CMScreenSetMirroringMode_cold_1();
  }

  if (BackBoardServicesLibrary_sLib)
  {
    if (dlsym(BackBoardServicesLibrary_sLib, "BKSDisplayServicesSetCloneMirroringMode"))
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = __CMScreenSetMirroringMode_block_invoke;
      v2[3] = &__block_descriptor_36_e5_v8__0l;
      v3 = a1;
      MXDispatchAsync("CMScreenSetMirroringMode", "CMSessionManager_Screen.m", 698, 0, 0, gCMScreen_1, v2);
    }
  }
}

void CMScreenSetVirtualDisplayClientPID(int a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (BackBoardServicesLibrary_sOnce != -1)
  {
    CMScreenSetMirroringMode_cold_1();
  }

  if (BackBoardServicesLibrary_sLib && dlsym(BackBoardServicesLibrary_sLib, "BKSDisplayServicesSetVirtualDisplayClientPID"))
  {
    if (dword_1EB75DE40)
    {
      v7 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __CMScreenSetVirtualDisplayClientPID_block_invoke;
    v4[3] = &__block_descriptor_36_e5_v8__0l;
    v5 = a1;
    MXDispatchAsync("CMScreenSetVirtualDisplayClientPID", "CMSessionManager_Screen.m", 714, 0, 0, gCMScreen_1, v4);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t CMScreenHandleActivation(CFTypeRef cf, CFTypeRef a2)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CMScreenHandleActivation_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = cf;
  v5[5] = a2;
  MXDispatchAsync("CMScreenHandleActivation", "CMSessionManager_Screen.m", 217, 0, 0, gCMScreen_1, v5);
  return 0;
}

void __CMScreenHandleActivation_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (!cmscreenIsActivated())
  {
    if (!gCMScreen_0)
    {
      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      v5 = "unknown endpoint type";
      if (CStringPtrAndBufferToFree)
      {
        v5 = CStringPtrAndBufferToFree;
      }

      snprintf(__str, 0x80uLL, "CMSessionManager-%s", v5);
      free(0);
      gCMScreen_0 = FigOSTransactionCreate();
    }

    cmscreenSetCurrentState(@"ScreenState_Suspended");
    if (cmscreenEndpointIsStarkWiFi() && !sCMScreenStarkWiFiIdleSleepPreventor)
    {
      v6 = *MEMORY[0x1E695E480];
      Current = CFAbsoluteTimeGetCurrent();
      v8 = CFDateCreate(v6, Current);
      PowerLogDataForStarkWiFi = CMSMPowerLogCreatePowerLogDataForStarkWiFi(@"WiFiCarPlayScreenActivate", sCMScreenStarkWiFiIdleSleepPreventor, @"com.apple.cmsession.WiFiCarPlay.IsConnected", v8);
      CMSMSleep_CreateIdleSleepPreventor(@"com.apple.cmsession.WiFiCarPlay.IsConnected", @"WiFiCarPlayScreen", PowerLogDataForStarkWiFi, &sCMScreenStarkWiFiIdleSleepPreventor);
      if (v8)
      {
        CFRelease(v8);
      }

      if (PowerLogDataForStarkWiFi)
      {
        CFRelease(PowerLogDataForStarkWiFi);
      }
    }

    CMSMPowerLogPostScreenMirroringPowerLogs(*MEMORY[0x1E695E4D0]);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t CMScreenHandleDeactivation(CFTypeRef cf, CFTypeRef a2)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CMScreenHandleDeactivation_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = cf;
  v5[5] = a2;
  MXDispatchAsync("CMScreenHandleDeactivation", "CMSessionManager_Screen.m", 268, 0, 0, gCMScreen_1, v5);
  return 0;
}

void __CMScreenHandleDeactivation_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  cmscreenSetCurrentState(@"ScreenState_Deactivated");
  if (cmscreenEndpointIsStarkWiFi())
  {
    v4 = sCMScreenStarkWiFiIdleSleepPreventor == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *MEMORY[0x1E695E480];
    Current = CFAbsoluteTimeGetCurrent();
    v7 = CFDateCreate(v5, Current);
    PowerLogDataForStarkWiFi = CMSMPowerLogCreatePowerLogDataForStarkWiFi(@"WiFiCarPlayScreenDeactivate", sCMScreenStarkWiFiIdleSleepPreventor, @"com.apple.cmsession.WiFiCarPlay.IsConnected", v7);
    CMSMSleep_ReleaseIdleSleepPreventor(sCMScreenStarkWiFiIdleSleepPreventor, @"WiFiCarPlayScreen", PowerLogDataForStarkWiFi);
    sCMScreenStarkWiFiIdleSleepPreventor = 0;
    if (v7)
    {
      CFRelease(v7);
    }

    if (PowerLogDataForStarkWiFi)
    {
      CFRelease(PowerLogDataForStarkWiFi);
    }
  }

  CMSMPowerLogPostScreenMirroringPowerLogs(*MEMORY[0x1E695E4C0]);
  if (gCMScreen_0)
  {

    gCMScreen_0 = 0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 40);
  if (v10)
  {

    CFRelease(v10);
  }
}

void __CMScreenSuspendStream_block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = a1[5];
    v3 = a1[6];
    v4 = a1[7];
    if (FigCFEqual())
    {
      FigSignalErrorAtGM();
    }

    else
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (cmscreenEndpointIsStarkWiFi() && sCMScreenStarkWiFiIdleSleepPreventor)
      {
        v6 = *MEMORY[0x1E695E480];
        Current = CFAbsoluteTimeGetCurrent();
        v8 = CFDateCreate(v6, Current);
        PowerLogDataForStarkWiFi = CMSMPowerLogCreatePowerLogDataForStarkWiFi(@"WiFiCarPlayScreenSuspend", sCMScreenStarkWiFiIdleSleepPreventor, @"com.apple.cmsession.WiFiCarPlay.IsConnected", v8);
        CMSMSleep_ReleaseIdleSleepPreventor(sCMScreenStarkWiFiIdleSleepPreventor, @"WiFiCarPlayScreen", PowerLogDataForStarkWiFi);
        sCMScreenStarkWiFiIdleSleepPreventor = 0;
        if (v8)
        {
          CFRelease(v8);
        }

        if (PowerLogDataForStarkWiFi)
        {
          CFRelease(PowerLogDataForStarkWiFi);
        }
      }

      FigEndpointStreamSuspend();
      cmscreenSetCurrentState(@"ScreenState_Suspended");
    }
  }

  v10 = a1[4];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[5];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[6];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[7];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t CMScreenGetScreenState()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __CMScreenGetScreenState_block_invoke;
  v2[3] = &unk_1E7AE73A0;
  v2[4] = &v3;
  MXDispatchSync("CMScreenGetScreenState", "CMSessionManager_Screen.m", 577, 0, 0, gCMScreen_1, v2);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B19347CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CMScreenIsSuspended()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __CMScreenIsSuspended_block_invoke;
  v2[3] = &unk_1E7AE73A0;
  v2[4] = &v3;
  MXDispatchSync("CMScreenIsSuspended", "CMSessionManager_Screen.m", 679, 0, 0, gCMScreen_1, v2);
  v0 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B19348C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMScreenIsSuspended_block_invoke(uint64_t a1)
{
  result = FigCFEqual();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t cmscreenEndpointIsStarkWiFi()
{
  v0 = *MEMORY[0x1E69626C0];
  result = FigCFEqual();
  if (result)
  {
    v2 = *MEMORY[0x1E69626A0];
    return FigCFEqual() != 0;
  }

  return result;
}

uint64_t __cmscreenIsTetheredDemoModeOn_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  cmscreenIsTetheredDemoModeOn_isThetheredDemoModeOn = result;
  return result;
}

void *__BackBoardServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/BackBoardServices.framework/BackBoardServices", 2);
  BackBoardServicesLibrary_sLib = result;
  return result;
}

uint64_t initBKSDisplayServicesSetCloneMirroringMode(uint64_t a1)
{
  if (BackBoardServicesLibrary_sOnce != -1)
  {
    CMScreenSetMirroringMode_cold_1();
  }

  v2 = dlsym(BackBoardServicesLibrary_sLib, "BKSDisplayServicesSetCloneMirroringMode");
  softLinkBKSDisplayServicesSetCloneMirroringMode[0] = v2;

  return (v2)(a1);
}

uint64_t initBKSDisplayServicesSetVirtualDisplayClientPID(uint64_t a1)
{
  if (BackBoardServicesLibrary_sOnce != -1)
  {
    CMScreenSetMirroringMode_cold_1();
  }

  v2 = dlsym(BackBoardServicesLibrary_sLib, "BKSDisplayServicesSetVirtualDisplayClientPID");
  softLinkBKSDisplayServicesSetVirtualDisplayClientPID[0] = v2;

  return (v2)(a1);
}

void *CMSM_IDSClient_Initialize()
{
  if (cmsm_IDSClient_GetClient_once != -1)
  {
    CMSM_IDSClient_Initialize_cold_1();
  }

  idsFrameworkLib = dlopen("/System/Library/PrivateFrameworks/IDS.framework/IDS", 4);
  result = dlsym(idsFrameworkLib, "IDSSendMessageOptionQueueOneIdentifierKey");
  kMXSession_IDSSendMessageOptionQueueOneIdentifierKey = result;
  return result;
}

id CMSM_IDSClient_CreateSessionInfoDictionary(void *a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = [a1 clientName];
    if (v5)
    {
      [v4 setObject:v5 forKey:@"ClientName"];
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v4 setObject:objc_msgSend(a1 forKey:{"ID", v10, v11), @"CMSessionID"}];
    [v4 setObject:objc_msgSend(a1 forKey:{"audioCategory"), @"AudioCategory"}];
    [v4 setObject:objc_msgSend(a1 forKey:{"audioMode"), @"AudioMode"}];
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(a1, "interruptionStyle")), @"InterruptionStyle"}];
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(a1, "clientPriority")), @"ClientPriority"}];
    if (a2)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "handsOverInterruptionsToInterruptor")}];
      [v4 setObject:v7 forKey:kMXSession_IDSMessage_HandoverInterruption];
    }
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t CMSM_IDSClient_QueryRemote_BTDeviceConnectionStatus()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_BTDeviceConnectionStatusQuery);
  valuePtr = 1065353216;
  v2 = CFNumberCreate(v0, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

uint64_t CMSM_IDSClient_SendNotificationMessage(uint64_t a1)
{
  v18[23] = *MEMORY[0x1E69E9840];
  if (cmsm_IDSClient_GetClient_once != -1)
  {
    CMSM_IDSClient_Initialize_cold_1();
  }

  v2 = cmsm_IDSClient_GetClient_idsClient;
  v3 = CMSM_IDSConnection_CopyNearbyPairedDevice();
  if (!v3)
  {
    FigCFDictionaryGetValue();
    goto LABEL_17;
  }

  v4 = CMSM_IDSCopyIDForDevice();
  Value = FigCFDictionaryGetValue();
  if (!v4)
  {
LABEL_17:
    LODWORD(v18[0]) = 0;
    v17[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = 0;
    v11 = 0;
    goto LABEL_23;
  }

  *v17 = 0;
  v18[0] = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    v7 = *kMXSession_IDSSendMessageOptionQueueOneIdentifierKey;
    FigCFDictionarySetValue();
  }

  v8 = [MEMORY[0x1E695DFD8] setWithObject:v4];
  if (!CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocal() && Value != kMXSession_IDSMessage_Type_BTDeviceConnectionStatusChanged && Value != kMXSession_IDSMessage_Type_BTDeviceConnectionStatusReply)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = [v2 sendMessage:a1 toDestinations:v8 priority:300 options:Mutable identifier:v17 error:{v18, v15, v16}];
  if (!v11 || dword_1EB75DE40)
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_23:

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t CMSM_IDSClient_ReplyToRemote_BTDeviceConnectionStatus(int a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_BTDeviceConnectionStatusReply);
  valuePtr = 1065353216;
  v4 = CFNumberCreate(v2, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = MEMORY[0x1E695E4C0];
  if (a1)
  {
    v5 = MEMORY[0x1E695E4D0];
  }

  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_BTDeviceIsConnectedKey, *v5);
  v6 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6;
}

uint64_t CMSM_IDSClient_NotifyRemote_BTDeviceConnectionStatusChanged(int a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_BTDeviceConnectionStatusChanged);
  valuePtr = 1065353216;
  v4 = CFNumberCreate(v2, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = MEMORY[0x1E695E4C0];
  if (a1)
  {
    v5 = MEMORY[0x1E695E4D0];
  }

  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_BTDeviceIsConnectedKey, *v5);
  v6 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6;
}

uint64_t CMSM_IDSClient_QueryRemote_PlayingInfo()
{
  CMSM_IDSConnection_UpdateRemoteRepliedWithInitialPlayingInfo(0);
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_RemotePlayingInfoQuery);
  valuePtr = 1065353216;
  v2 = CFNumberCreate(v0, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v3 && !CMSM_IDSConnection_DidRemoteReplyWithInitialPlayingInfo())
  {
    CMSM_IDSConnection_StartWaitForRemoteToReplyWithInitialPlayingInfoTimer(20.0);
  }

  return v3;
}

uint64_t CMSM_IDSClient_ReplyToRemote_PlayingInfo(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_RemotePlayingInfoReply);
  valuePtr = 1065353216;
  v4 = CFNumberCreate(v2, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  if (a1)
  {
    CFDictionarySetValue(Mutable, kMXSession_IDSMessage_AllPlayingSessionsKey, a1);
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  CMSMUtility_GetCurrentRouteInfoAtIndex(0, &v10);
  DoesPortSupportMultipleConnections = vaeDoesPortSupportMultipleConnections(DWORD2(v12));
  v6 = MEMORY[0x1E695E4C0];
  if (DoesPortSupportMultipleConnections)
  {
    v6 = MEMORY[0x1E695E4D0];
  }

  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_CurrentRouteIsSharedKey, *v6);
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v7 = &stru_1F2890CF0;
  }

  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_CurrentRouteUIDKey, v7);
  v8 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

uint64_t CMSM_IDSClient_NotifyRemote_LocalIsBeingInitialized()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_LocalIsBeingInitialized);
  valuePtr = 1065353216;
  v2 = CFNumberCreate(v0, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

id CMSM_IDSClient_NotifyRemote_InterruptionStartAndCopyIdentifier(void *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  valuePtr = 1065353216;
  v4 = CFNumberCreate(v2, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  SessionInfoDictionary = CMSM_IDSClient_CreateSessionInfoDictionary(a1, 1);
  FigCFDictionarySetValue();
  if (cmsm_IDSClient_GetClient_once != -1)
  {
    CMSM_IDSClient_NotifyRemote_InterruptionStartAndCopyIdentifier_cold_1();
  }

  v6 = cmsm_IDSClient_GetClient_idsClient;
  v7 = CMSM_IDSConnection_CopyNearbyPairedDevice();
  if (v7)
  {
    v8 = CMSM_IDSCopyIDForDevice();
  }

  else
  {
    v8 = 0;
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3052000000;
  v40 = __Block_byref_object_copy__11;
  v41 = __Block_byref_object_dispose__11;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  if (v8)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3052000000;
    v30 = __Block_byref_object_copy__11;
    v31 = __Block_byref_object_dispose__11;
    v32 = 0;
    MessagingQueue = CMSM_IDSConnection_GetMessagingQueue();
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __CMSM_IDSClient_SendMessageAsyncAndCopyIdentifier_block_invoke;
    v26[3] = &unk_1E7AEC910;
    v26[4] = v6;
    v26[5] = v8;
    v26[6] = &v33;
    v26[7] = &v37;
    v26[8] = &v27;
    v26[9] = Mutable;
    MXDispatchSync("CMSM_IDSClient_SendMessageAsyncAndCopyIdentifier", "CMSessionManager_IDSClient.m", 635, 0, 0, MessagingQueue, v26);
    if (Mutable)
    {
      Value = CFDictionaryGetValue(Mutable, kMXSession_IDSMessage_TypeKey);
    }

    else
    {
      Value = 0;
    }

    if (*(v34 + 24))
    {
      if (!dword_1EB75DE40)
      {
LABEL_25:
        _Block_object_dispose(&v27, 8);
        goto LABEL_26;
      }

      v25 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v12 = v25;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = v38[5];
        v43 = 136315650;
        v44 = "CMSM_IDSClient_SendMessageAsyncAndCopyIdentifier";
        v45 = 2114;
        v46 = Value;
        v47 = 2114;
        v48 = v14;
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      v25 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v16 = v25;
      if (os_log_type_enabled(v15, type))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = v38[5];
        v19 = v28[5];
        v43 = 136315906;
        v44 = "CMSM_IDSClient_SendMessageAsyncAndCopyIdentifier";
        v45 = 2114;
        v46 = Value;
        v47 = 2114;
        v48 = v18;
        v49 = 2114;
        v50 = v19;
        _os_log_send_and_compose_impl();
      }
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_25;
  }

LABEL_26:

  v20 = v38[5];
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  if (SessionInfoDictionary)
  {
    CFRelease(SessionInfoDictionary);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

void sub_1B1935F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t CMSM_IDSClient_NotifyRemote_InterruptionDone(int a1, const void *a2)
{
  v10 = a1;
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_RemoteInterruptionDone);
  valuePtr = 1065353216;
  v5 = CFNumberCreate(v3, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = CFNumberCreate(v3, kCFNumberSInt32Type, &v10);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_RemoteInterruptionDoneErrorCode, v6);
  if (v6)
  {
    CFRelease(v6);
  }

  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_IdentifierKey, a2);
  v7 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v7;
}

uint64_t CMSM_IDSClient_NotifyRemote_LocalIsPlayingStart(void *a1)
{
  if (CMSM_GetLocalSessionPriority(a1, 0) == 100)
  {
    return 1;
  }

  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_LocalIsPlayingStart);
  valuePtr = 1065353216;
  v5 = CFNumberCreate(v3, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  SessionInfoDictionary = CMSM_IDSClient_CreateSessionInfoDictionary(a1, 0);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_PlayingSessionKey, SessionInfoDictionary);
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  CMSMUtility_GetCurrentRouteInfoAtIndex(0, &v11);
  DoesPortSupportMultipleConnections = vaeDoesPortSupportMultipleConnections(DWORD2(v13));
  v8 = MEMORY[0x1E695E4C0];
  if (DoesPortSupportMultipleConnections)
  {
    v8 = MEMORY[0x1E695E4D0];
  }

  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_CurrentRouteIsSharedKey, *v8);
  if (v12)
  {
    v9 = v12;
  }

  else
  {
    v9 = &stru_1F2890CF0;
  }

  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_CurrentRouteUIDKey, v9);
  v2 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (SessionInfoDictionary)
  {
    CFRelease(SessionInfoDictionary);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v2;
}

uint64_t CMSM_IDSClient_NotifyRemote_LocalIsPlayingDone(void *a1)
{
  if (CMSM_GetLocalSessionPriority(a1, 0) == 100)
  {
    return 1;
  }

  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_LocalIsPlayingDone);
  valuePtr = 1065353216;
  v5 = CFNumberCreate(v3, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  SessionInfoDictionary = CMSM_IDSClient_CreateSessionInfoDictionary(a1, 0);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_PlayingSessionKey, SessionInfoDictionary);
  v2 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (SessionInfoDictionary)
  {
    CFRelease(SessionInfoDictionary);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v2;
}

uint64_t CMSM_IDSClient_NotifyRemote_LocalIsDoingEndInterruption(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_LocalIsDoingEndInterruption);
  valuePtr = 1065353216;
  v4 = CFNumberCreate(v2, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  if (a1)
  {
    CFDictionarySetValue(Mutable, kMXSession_IDSMessage_LocalEndInterruptionStatusKey, a1);
  }

  v5 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v5;
}

uint64_t CMSM_IDSClient_NotifyRemote_UpdateSharedAudioRouteMacAddress(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_TypeKey, kMXSession_IDSMessage_Type_UpdateSharedAudioRouteMacAddress);
  valuePtr = 1065353216;
  v4 = CFNumberCreate(v2, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_VersionKey, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  if (a1)
  {
    CFDictionarySetValue(Mutable, kMXSession_IDSMessage_SharedAudioRouteMacAddress, a1);
    v5 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v5 = MEMORY[0x1E695E4D0];
  }

  CFDictionarySetValue(Mutable, kMXSession_IDSMessage_ClearSharedAudioRoute, *v5);
  v6 = CMSM_IDSClient_SendNotificationMessage(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6;
}

__CFString *CMSMVAUtility_MapVASiriInputSourceToString(int a1)
{
  if (a1 <= 1936289390)
  {
    if (a1 == 1936024681)
    {
      return @"ExternalDeviceInput";
    }

    if (a1 == 1936286822)
    {
      return @"DefaultDevice";
    }
  }

  else
  {
    switch(a1)
    {
      case 1936289391:
        return @"None";
      case 1936290660:
        return @"SpeechDetectionDevice";
      case 1936679529:
        return @"OutOfBandSpeechInput";
    }
  }

  return 0;
}

NSDictionary *CMSMVAUtility_GetVADOutputPortTypeFromFigRouteName(NSDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = [+[MXSessionManager sharedInstance](MXSessionManager figRouteToVADOutputPortTypeDict];
    if (result)
    {
      return -[NSDictionary objectForKey:]([+[MXSessionManager sharedInstance](MXSessionManager figRouteToVADOutputPortTypeDict], "objectForKey:", v1);
    }
  }

  return result;
}

NSDictionary *CMSMVAUtility_GetVADInputPortTypeFromFigRouteName(NSDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = [+[MXSessionManager sharedInstance](MXSessionManager figRouteToVADInputPortTypeDict];
    if (result)
    {
      return -[NSDictionary objectForKey:]([+[MXSessionManager sharedInstance](MXSessionManager figRouteToVADInputPortTypeDict], "objectForKey:", v1);
    }
  }

  return result;
}

BOOL CMSMVAUtility_MakeConnectedPortRoutable(AudioObjectID a1, uint64_t a2)
{
  PortRoutable = vaeMakePortRoutable(a1, a2, 0, qword_1EB75E190);
  v4 = vaeCopyNameForPort(a1);
  if (v4)
  {
    CFRelease(v4);
  }

  return PortRoutable == 0;
}

uint64_t CMSMVAUtility_MakeLowLatencyAirPlayPortRoutable(uint64_t a1)
{
  v2 = CMSMVAUtility_CopyConnectedWirelessPorts();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    goto LABEL_10;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
    valuePtr = 0;
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
    v8 = valuePtr;
    if (vaeGetPortTypeFromPortID(valuePtr) == 1885433964)
    {
      break;
    }

    if (v5 == ++v6)
    {
      goto LABEL_10;
    }
  }

  if (v8)
  {
    v9 = 1;
    vaeMakePortRoutable(v8, 1, 1, a1);
  }

  else
  {
LABEL_10:
    v9 = 0;
  }

  CFRelease(v3);
  return v9;
}

BOOL CMSMVAUtility_ShouldAutoRouteOnConnect(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  PortTypeFromPortID = vaeGetPortTypeFromPortID(a1);
  v5 = vaeCopyDeviceIdentifierFromVADPort(a1);
  v6 = FigRoutingManagerCopyEndpointWithDeviceID(v5, 1, *MEMORY[0x1E69618E0], 0);
  if (v6)
  {
    CFRelease(v6);
LABEL_3:
    ShouldBTPortBeTreatedAsInEar = 0;
    goto LABEL_4;
  }

  if (PortTypeFromPortID > 1885433970)
  {
    if (PortTypeFromPortID == 1885433975)
    {
      ShouldBTPortBeTreatedAsInEar = 0;
      goto LABEL_74;
    }

    if (PortTypeFromPortID != 1885433971)
    {
LABEL_22:
      ShouldBTPortBeTreatedAsInEar = 1;
      if (PortTypeFromPortID > 1886152040)
      {
        if (PortTypeFromPortID != 1886152041 && PortTypeFromPortID != 1886152047)
        {
          v14 = 1886216820;
          goto LABEL_30;
        }
      }

      else if (PortTypeFromPortID != 1885565807)
      {
        if (PortTypeFromPortID == 1885892674)
        {
          goto LABEL_31;
        }

        v14 = 1885892706;
LABEL_30:
        if (PortTypeFromPortID != v14)
        {
          goto LABEL_4;
        }

LABEL_31:
        if (!vaeDoesPortSupportMultipleConnections(a1))
        {
          ShouldBTPortBeTreatedAsInEar = CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(a1);
          if (PortTypeFromPortID != 1885892674 || CMSMDeviceState_ItsAnAppleTV() || !vaemLineOutIsConnected() && !vaemUSBAudioOutputIsConnected() && !vaemHDMIAudioOutputIsConnected() && !vaemDisplayPortAudioOutputIsConnected() && !vaemThunderboltOutputIsConnected() && !vaemStarkAudioPortIsCurrentlyActive() && !vaemContinuityScreenOutputIsConnected())
          {
            goto LABEL_73;
          }

          if (!dword_1EB75DE40)
          {
            goto LABEL_72;
          }

          goto LABEL_70;
        }

        if ([+[MXAudioAccessoryServices isPortManaged:"isPortManaged:"]
        {
          if (CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(a1))
          {
            if ([+[MXAudioAccessoryServices hijackWirelessPort:"hijackWirelessPort:reason:portWentInEar:"]
            {
              if (!vaeRequestOwnershipOnBTPort(a1))
              {
                goto LABEL_73;
              }

              goto LABEL_70;
            }

            if (dword_1EB75DE40)
            {
LABEL_70:
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          else if (dword_1EB75DE40)
          {
            goto LABEL_70;
          }
        }

        else if (vaeDoesBTPortSupportInEarDetection(a1))
        {
          if (FigEndpointUtility_EndpointPredicate_EqualsAudioStreamID())
          {
            if (!cmsmShouldSetupForCoordinatedInterruptions(a1, 0))
            {
              goto LABEL_73;
            }

            if (dword_1EB75DE40)
            {
              v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (!vaeRequestOwnershipOnBTPort(a1))
            {
LABEL_71:
              ShouldBTPortBeTreatedAsInEar = 1;
              goto LABEL_73;
            }

            goto LABEL_70;
          }

          if (CMSMVAUtility_IsBTPortKnownToNotBeInEar(a1))
          {
            if (dword_1EB75DE40)
            {
              goto LABEL_70;
            }
          }

          else
          {
            if (vaeGetBTPortOwnsSharedAudioConnection(a1))
            {
              goto LABEL_73;
            }

            if (dword_1EB75DE40)
            {
              goto LABEL_70;
            }
          }
        }

        else
        {
          if (vaeGetBTPortOwnsSharedAudioConnection(a1))
          {
            goto LABEL_73;
          }

          if (dword_1EB75DE40)
          {
            goto LABEL_70;
          }
        }

LABEL_72:
        ShouldBTPortBeTreatedAsInEar = 0;
        goto LABEL_73;
      }

      if (dword_1EB75DE40)
      {
        goto LABEL_70;
      }

      goto LABEL_72;
    }

LABEL_20:
    if (a2)
    {
      ShouldBTPortBeTreatedAsInEar = FigEndpointUtility_EndpointPredicate_EqualsAudioStreamID() != 0;
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  if (PortTypeFromPortID == 1885433953)
  {
    goto LABEL_20;
  }

  if (PortTypeFromPortID != 1885433964)
  {
    goto LABEL_22;
  }

  NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
  if (!NumberOfCurrentOutputPorts)
  {
    goto LABEL_71;
  }

  v9 = 0;
  v10 = 0;
  v11 = NumberOfCurrentOutputPorts;
  do
  {
    MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, v9, v19);
    v12 = v20;
    if ((vaeGetPortTypeFromPortID(v20) & 0xFFFFFFDF) == 0x70687042 && CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(v12))
    {
      v10 = 1;
    }

    ++v9;
  }

  while (v11 != v9);
  if (v10)
  {
    if (dword_1EB75DE40)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_3;
  }

  ShouldBTPortBeTreatedAsInEar = 1;
LABEL_4:
  if (PortTypeFromPortID != 1885433975)
  {
LABEL_73:
    FigPredictedRouting_StopPreemptivePortChangedTimer(!ShouldBTPortBeTreatedAsInEar);
  }

LABEL_74:
  if (v5)
  {
    CFRelease(v5);
  }

  v17 = *MEMORY[0x1E69E9840];
  return ShouldBTPortBeTreatedAsInEar;
}

uint64_t CMSMVAUtility_IsBTPortKnownToNotBeInEar(AudioObjectID a1)
{
  result = vaeHasUserEnabledInEarDetectionForBTPort(a1, 0);
  if (result)
  {
    return vaeIsInEarStatusTrueForBTPort(a1) == 0;
  }

  return result;
}

uint64_t CMSMVAUtility_MakeNewlyConnectedWirelessPortsRoutableForEndpoint(const __CFArray *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v9 = Count;
  v39 = CMSMVAUtility_ArePortsHFPOnly(a1);
  v37 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (v9 >= 1)
  {
    v38 = a4;
    v11 = a3;
    v12 = 0;
    for (i = 0; i != v9; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v15 = ValueAtIndex;
      if (ValueAtIndex)
      {
        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
        v16 = valuePtr;
      }

      else
      {
        v16 = 0;
      }

      if (CMSMVAUtility_ShouldAutoRouteOnConnect(v16, a2))
      {
        CFArrayAppendValue(Mutable, v15);
        if (vaeDoesPortSupportMultipleConnections(v16))
        {
          if (vaeGetPortTypeFromPortID(v16) == 1885892674 || vaeGetPortTypeFromPortID(v16) == 1885892706)
          {
            v12 = v16;
          }
        }
      }
    }

    a3 = v11;
    a4 = v38;
    if (v12)
    {
      ArrayFromPortID = CMSMVAUtility_CreateArrayFromPortID(v12);
      Routable = cmsmCopyPartnerPortsToMakeRoutable(ArrayFromPortID);
      if (Routable)
      {
        v19 = Routable;
        v20 = CFArrayGetCount(Routable);
        if (v20 >= 1)
        {
          v21 = v20;
          for (j = 0; j != v21; ++j)
          {
            v23 = CFArrayGetValueAtIndex(v19, j);
            if (!FigCFArrayContainsValue())
            {
              CFArrayAppendValue(Mutable, v23);
            }
          }
        }

        CFRelease(v19);
      }

      if (ArrayFromPortID)
      {
        CFRelease(ArrayFromPortID);
      }
    }
  }

  if (!Mutable)
  {
    return 0;
  }

  v24 = CFArrayGetCount(Mutable);
  if (v24 < 1)
  {
    ArrayOfPortsRoutable = 0;
  }

  else
  {
    v25 = v24;
    valuePtr = 0;
    if (a2)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v27)
      {
        v27(CMBaseObject, *MEMORY[0x1E69620F8], v37, &valuePtr);
      }
    }

    v28 = 0;
    while (1)
    {
      v29 = CFArrayGetValueAtIndex(Mutable, v28);
      v40 = 0;
      CFNumberGetValue(v29, kCFNumberSInt32Type, &v40);
      v30 = vaeCopyDeviceIdentifierFromVADPort(v40);
      PortTypeFromPortID = vaeGetPortTypeFromPortID(v40);
      if (MXCFStringHasCaseInsensitivePrefix(v30, valuePtr) || PortTypeFromPortID == 1885433964)
      {
        break;
      }

      if (v30)
      {
        CFRelease(v30);
      }

      if (v25 == ++v28)
      {
        v33 = 0;
        goto LABEL_43;
      }
    }

    if (v30)
    {
      CFRelease(v30);
    }

    v33 = 1;
LABEL_43:
    if (a4)
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    ArrayOfPortsRoutable = vaemMakeArrayOfPortsRoutable(Mutable, v35, v33, a3, v39);
    if (valuePtr)
    {
      CFRelease(valuePtr);
    }
  }

  CFRelease(Mutable);
  return ArrayOfPortsRoutable;
}

uint64_t CMSMVAUtility_ArePortsHFPOnly(const __CFArray *a1)
{
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v3 = Count;
    v4 = 0;
    v5 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      PortTypeFromPortID = vaeGetPortTypeFromPortID(valuePtr);
      if (PortTypeFromPortID != 1886216820 && PortTypeFromPortID != 1885892706)
      {
        v5 = 0;
      }

      v9 = PortTypeFromPortID == 1886216820 || PortTypeFromPortID == 1885892706;
      ++v4;
    }

    while (v9 && v3 != v4);
  }

  else
  {
    return 1;
  }

  return v5;
}

__CFArray *CMSMVAUtility_CreateArrayFromPortID(int a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  SInt64 = FigCFNumberCreateSInt64();
  CFArrayAppendValue(Mutable, SInt64);
  if (SInt64)
  {
    CFRelease(SInt64);
  }

  return Mutable;
}

uint64_t CMSMVAUtility_AggregateEndpoints(const __CFArray *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    v7 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        CFArrayGetValueAtIndex(a1, i);
        value = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        VTable = CMBaseObjectGetVTable();
        v12 = *(*(VTable + 8) + 48);
        if (v12)
        {
          v13 = *(VTable + 8) + 48;
          v12(CMBaseObject, 0x1F289CDB0, v7, &value);
        }

        CFArrayAppendValue(Mutable, value);
        if (value)
        {
          CFRelease(value);
        }
      }
    }
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  IsBluetoothSharingSessionEnabled = CMSMVAUtility_IsBluetoothSharingSessionEnabled(0);
  v15 = vaemAggregatePorts(Mutable, a2, IsBluetoothSharingSessionEnabled, a3);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v15;
}

uint64_t CMSMVAUtility_AggregatePorts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  IsBluetoothSharingSessionEnabled = CMSMVAUtility_IsBluetoothSharingSessionEnabled(0);

  return vaemAggregatePorts(a1, a2, IsBluetoothSharingSessionEnabled, a3);
}

void CMSMVAUtility_RouteToPreferredDeviceAddressIfInEar(const __CFString *a1)
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  v2 = CMSMVAUtility_CopyWirelessPortsSupportingMultipleConnections();
  if (!v2)
  {
    goto LABEL_35;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    goto LABEL_34;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
    IsPortPresentInConnectedOutputPorts = vaemIsPortPresentInConnectedOutputPorts(ValueAtIndex);
    v9 = CFArrayGetValueAtIndex(v3, v6);
    valuePtr[0] = 0;
    CFNumberGetValue(v9, kCFNumberSInt64Type, valuePtr);
    v10 = valuePtr[0];
    ShouldBTPortBeTreatedAsInEar = CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(valuePtr[0]);
    if (!IsPortPresentInConnectedOutputPorts || !ShouldBTPortBeTreatedAsInEar)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_11;
    }

    v12 = vaeCopyDeviceIdentifierFromVADPort(v10);
    if (MXCFStringHasCaseInsensitivePrefix(v12, a1))
    {
      break;
    }

    if (v12)
    {
      CFRelease(v12);
    }

LABEL_11:
    if (v5 == ++v6)
    {
      goto LABEL_34;
    }
  }

  ArrayFromPortID = CMSMVAUtility_CreateArrayFromPortID(v10);
  Routable = cmsmCopyPartnerPortsToMakeRoutable(ArrayFromPortID);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Routable && CFArrayGetCount(Routable) >= 1)
  {
    v22.length = CFArrayGetCount(Routable);
    v22.location = 0;
    CFArrayAppendArray(Mutable, Routable, v22);
  }

  if (ArrayFromPortID && CFArrayGetCount(ArrayFromPortID) >= 1)
  {
    v23.length = CFArrayGetCount(ArrayFromPortID);
    v23.location = 0;
    CFArrayAppendArray(Mutable, ArrayFromPortID, v23);
  }

  A2DPPort = cmsmGetA2DPPort(Mutable);
  if (vaeGetBTPortOwnsSharedAudioConnection(A2DPPort))
  {
    v18 = vaeCopyNameForPort(A2DPPort);
    if (dword_1EB75DE40)
    {
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemMakeArrayOfPortsRoutable(Mutable, 1, 0, qword_1EB75E190, 0);
    if (v18)
    {
      CFRelease(v18);
    }
  }

  else if (!vaeRequestOwnershipOnBTPort(A2DPPort))
  {
    vaemMakeArrayOfPortsRoutable(Mutable, 1, 0, qword_1EB75E190, 0);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (Routable)
  {
    CFRelease(Routable);
  }

  if (ArrayFromPortID)
  {
    CFRelease(ArrayFromPortID);
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_34:
  CFRelease(v3);
LABEL_35:
  v20 = *MEMORY[0x1E69E9840];
}

const __CFArray *CMSMVAUtility_CopyWirelessPortsToEnableBluetoothSharing(const __CFArray *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v3 = Count;
      for (i = 0; i != v3; ++i)
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        if (vaeIsPortBluetoothShareable(valuePtr))
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v7 = vaeCopyBluetoothShareablePortsForPort(valuePtr);
          if (v7)
          {
            v8 = v7;
            if (CFArrayGetCount(v7) > 0)
            {
              goto LABEL_12;
            }

            CFRelease(v8);
          }
        }
      }
    }
  }

  v8 = 0;
LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

id CMSMVAUtility_CopyPartnerPorts(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(outData, 0, 32);
  LODWORD(v2) = vaeGetPartnersForPort(a1, outData);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a1)}];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v2)
  {
    v2 = v2;
    v5 = outData;
    do
    {
      v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*v5];
      if (vaemIsPortPresentInConnectedOutputPorts(v6))
      {
        if (dword_1EB75DE40)
        {
          v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [v3 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *v5, v10, v11)}];
      }

      ++v5;
      --v2;
    }

    while (v2);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

void CMSMVAUtility_LogPartnerPorts(uint64_t a1)
{
  v1 = a1;
  v2 = CMSMVAUtility_CopyPartnerPorts(a1);
  if (vaemCopyEndpointForPort(v1))
  {
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

const void *CMSMVAUtility_CopyBluetoothDeviceModelID(int a1)
{
  v9 = 0;
  result = vaemCopyEndpointForPort(a1);
  if (result)
  {
    v2 = result;
    v3 = FigRoutingManagerCopyBluetoothEndpointAssociatedWithVAEndpoint();
    if (v3)
    {
      v4 = v3;
      CMBaseObject = FigEndpointGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v7 = *(*(VTable + 8) + 48);
      if (v7)
      {
        v8 = *(VTable + 8) + 48;
        v7(CMBaseObject, *MEMORY[0x1E69621D8], *MEMORY[0x1E695E480], &v9);
      }

      CFRelease(v2);
      CFRelease(v4);
      return v9;
    }

    else
    {
      CFRelease(v2);
      return 0;
    }
  }

  return result;
}

const __CFArray *CMSMVAUtility_GetPortOfTypeInConnectedPortsList(int a1)
{
  v2 = vaemCopyConnectedPortsListForRouteConfiguration(0, 0, 0, 0, 0);
  PortOfTypeInArray = CMSMVAUtility_GetPortOfTypeInArray(a1, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return PortOfTypeInArray;
}

uint64_t CMSMVAUtility_DoesCurrentOutputPortSupportSoftwareVolume()
{
  v0 = CMSMUtility_CopyCurrentOutputPorts();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (CFArrayGetCount(v0) < 1)
  {
    DoesPortSupportSoftwareVolume = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
    valuePtr = 0;
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
    DoesPortSupportSoftwareVolume = vaeDoesPortSupportSoftwareVolume(valuePtr);
  }

  CFRelease(v1);
  return DoesPortSupportSoftwareVolume;
}

void CMSMVAUtility_SetIndividualVolumeOnCurrentBluetoothShareableRoutes()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = 0;
  CMSMUtility_CopyCurrentRoutesInfo();
}

const __CFDictionary *CMSMVAUtility_GetUIDFromRouteDescription(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, @"RouteUID");
  }

  return result;
}

BOOL CMSMVAUtility_IsNewVirtualFormatRedundantForDeviceAndScope(AudioObjectID a1, uint64_t a2, int a3)
{
  outData = 0;
  memset(v7, 0, sizeof(v7));
  Stream0 = vaemGetStream0(a1, a3, &outData);
  v5 = 0.0;
  if (!Stream0 && outData)
  {
    vaemGetStreamASBD(outData, v7);
    v5 = *v7;
  }

  return v5 == *a2 && *&v7[8] == *(a2 + 8) && *&v7[16] == *(a2 + 16) && *&v7[20] == *(a2 + 20) && *&v7[28] == *(a2 + 28) && *&v7[36] == *(a2 + 36);
}

uint64_t CMSMVAUtility_IsAnyRouteAvailableForRouteConfiguration(uint64_t a1, NSDictionary *a2, uint64_t a3, const void *a4, int a5)
{
  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(a2);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(a3);
  v11 = vaemCopyConnectedPortsListForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, a4, a5, 0);
  v12 = v11;
  if (v11)
  {
    Count = CFArrayGetCount(v11);
    if (!a1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    Count = 0;
    if (!a1)
    {
      goto LABEL_15;
    }
  }

  v14 = CFArrayGetCount(a1);
  if (v14 >= 1)
  {
    v15 = v14;
    v16 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(a1, v16);
      if (Count >= 1)
      {
        break;
      }

LABEL_13:
      if (++v16 == v15)
      {
        goto LABEL_14;
      }
    }

    v17 = 0;
    while (1)
    {
      FigCFArrayGetInt64AtIndex();
      PortTypeFromPortID = vaeGetPortTypeFromPortID(0);
      v19 = CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(PortTypeFromPortID);
      v20 = FigCFEqual();
      if (v19)
      {
        CFRelease(v19);
      }

      if (v20)
      {
        break;
      }

      if (Count == ++v17)
      {
        goto LABEL_13;
      }
    }

    a1 = 1;
    if (v12)
    {
      goto LABEL_16;
    }

    return a1;
  }

LABEL_14:
  a1 = 0;
LABEL_15:
  if (v12)
  {
LABEL_16:
    CFRelease(v12);
  }

  return a1;
}

BOOL CMSMVAUtility_IsA2DPPortAvailableForEndpoint(_BOOL8 result, _DWORD *a2)
{
  if (result)
  {
    v3 = vaemCopyConnectedPortsForPortTypeAndScope(0, 0x6F757470u);
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v6 = *(*(VTable + 8) + 48);
    if (v6)
    {
      v7 = *(VTable + 8) + 48;
      v6(CMBaseObject, *MEMORY[0x1E69620F8], *MEMORY[0x1E695E480], &cf);
    }

    if (v3 && (Count = CFArrayGetCount(v3), Count >= 1))
    {
      v9 = Count;
      v10 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v10);
        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
        v12 = valuePtr;
        v13 = vaeCopyDeviceIdentifierFromVADPort(valuePtr);
        if (vaeGetPortTypeFromPortID(v12) == 1885892674 && MXCFStringHasCaseInsensitivePrefix(v13, cf))
        {
          v14 = CFArrayGetValueAtIndex(v3, v10);
          if (vaemIsPortPresentInConnectedOutputPorts(v14))
          {
            break;
          }
        }

        if (v13)
        {
          CFRelease(v13);
        }

        if (v9 == ++v10)
        {
          goto LABEL_14;
        }
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    else
    {
LABEL_14:
      LODWORD(v12) = 0;
    }

    if (a2)
    {
      *a2 = v12;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v3)
    {
      CFRelease(v3);
    }

    return v12 != 0;
  }

  return result;
}

uint64_t CMSMVAUtility_IsPortAvailableForEndpoint(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, *MEMORY[0x1E69620F8], *MEMORY[0x1E695E480], &cf);
  }

  if (a2)
  {
    v6 = CFRetain(a2);
  }

  else
  {
    v6 = vaemCopyConnectedPortsForPortTypeAndScope(0, 0x6F757470u);
  }

  v8 = v6;
  if (v6)
  {
    Count = CFArrayGetCount(v6);
  }

  else
  {
    Count = 0;
  }

  v10 = *MEMORY[0x1E69626B0];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    if (Count >= 1)
    {
      v11 = 0;
      do
      {
        FigCFArrayGetInt64AtIndex();
        if (vaeGetPortTypeFromPortID(0) == 1885433975)
        {
          goto LABEL_30;
        }
      }

      while (Count != ++v11);
    }

LABEL_23:
    v7 = 0;
    if (!v8)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (Count < 1)
  {
    goto LABEL_23;
  }

  v12 = 0;
  while (1)
  {
    FigCFArrayGetInt64AtIndex();
    v13 = vaeCopyDeviceIdentifierFromVADPort(0);
    if (MXCFStringHasCaseInsensitivePrefix(v13, cf))
    {
      break;
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (Count == ++v12)
    {
      goto LABEL_23;
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_30:
  v7 = 1;
  if (v8)
  {
LABEL_24:
    CFRelease(v8);
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

__CFArray *CMSMVAUtility_CreateArrayFromPortIDAndPartners(int a1)
{
  ArrayFromPortID = CMSMVAUtility_CreateArrayFromPortID(a1);
  Routable = cmsmCopyPartnerPortsToMakeRoutable(ArrayFromPortID);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Routable && CFArrayGetCount(Routable) >= 1)
  {
    v5.length = CFArrayGetCount(Routable);
    v5.location = 0;
    CFArrayAppendArray(Mutable, Routable, v5);
  }

  if (ArrayFromPortID)
  {
    if (CFArrayGetCount(ArrayFromPortID) >= 1)
    {
      v6.length = CFArrayGetCount(ArrayFromPortID);
      v6.location = 0;
      CFArrayAppendArray(Mutable, ArrayFromPortID, v6);
    }

    CFRelease(ArrayFromPortID);
  }

  if (Routable)
  {
    CFRelease(Routable);
  }

  return Mutable;
}

const __CFString *CMSMVAUtility_CopyDeviceIDFromBTAddress(const __CFString *a1)
{
  v2 = cmsmCopyWirelessPortsArrayForRouteConfiguration(0, 0, 0, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
LABEL_8:
    v8 = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      v8 = vaeCopyDeviceIdentifierFromVADPort(valuePtr);
      if (MXCFStringHasCaseInsensitivePrefix(v8, a1))
      {
        break;
      }

      if (v8)
      {
        CFRelease(v8);
      }

      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }
  }

  CFRelease(v3);
  return v8;
}

uint64_t CMSMVAUtility_CreateMusicVADIfNeeded(const __CFArray *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (vaemMusicVADExists())
  {
    if (dword_1EB75DE40)
    {
      valuePtr = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_36;
  }

  valuePtr = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
  if (vaeGetPortTypeFromPortID(valuePtr) == 1885433964)
  {
    v6 = CMSMVAUtility_CopyConnectedWirelessPorts();
    if (dword_1EB75DE40)
    {
      *type = 0;
      v22[0] = OS_LOG_TYPE_DEFAULT;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (!v6)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (a1)
    {
      Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], a1);
    }

    else
    {
      Copy = CMSMVAUtility_CopyConnectedWirelessPorts();
    }

    v6 = Copy;
  }

  if (!v6)
  {
LABEL_14:
    Count = 0;
    goto LABEL_15;
  }

LABEL_12:
  Count = CFArrayGetCount(v6);
LABEL_15:
  if (dword_1EB75DE40)
  {
    *type = 0;
    v22[0] = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (Count >= 1)
  {
    v11 = 0;
    while (1)
    {
      *type = 0;
      v12 = CFArrayGetValueAtIndex(v6, v11);
      CFNumberGetValue(v12, kCFNumberSInt32Type, type);
      if (vaeGetPortTypeFromPortID(*type) == 1885433975)
      {
        break;
      }

      if (Count == ++v11)
      {
        goto LABEL_34;
      }
    }

    v13 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v15 = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
    v16 = CFNumberCreate(v13, kCFNumberSInt32Type, type);
    CFArrayAppendValue(v15, v16);
    if (v15)
    {
      CFDictionarySetValue(Mutable, @"port id array", v15);
      CFRelease(v15);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    *v22 = 1986884979;
    v17 = CFNumberCreate(v13, kCFNumberSInt32Type, v22);
    if (v17)
    {
      v18 = v17;
      CFDictionarySetValue(Mutable, @"VAD type 4cc", v17);
      CFRelease(v18);
    }

    if (dword_1EB75DE40)
    {
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemCreateVADWithRouteConfigurationDictionary(Mutable, a2, 1, 1);
    if (FigRoutingManagerUtilities_IsCurrentRouteHandoff())
    {
      CMSMAP_MakeAirPlayHandOffPortRoutable(0, a2);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

LABEL_34:
  if (v6)
  {
    CFRelease(v6);
  }

LABEL_36:
  v20 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t CMSMVAUtility_DestroyMusicVADIfNeeded(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (vaemMusicVADExists())
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{-[MXSessionManager musicVADID](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "musicVADID")}];
    if (v3)
    {
      v4 = v3;
      CFDictionarySetValue(Mutable, @"VAD type 4cc", v3);
      CFRelease(v4);
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemDeleteVADWithRouteConfigurationDictionary(Mutable, a1, 0, 1);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t CMSMVAUtility_CreatePerAppAirPlayVADWithHandOffPort(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (vaemPerAppAirPlayVADExists())
  {
    v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{-[MXSessionManager perAppAirPlayVADID](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "perAppAirPlayVADID")}];
    if (v4)
    {
      v5 = v4;
      CFDictionarySetValue(Mutable, @"VAD type 4cc", v4);
      CFRelease(v5);
    }

    vaemDeleteVADWithRouteConfigurationDictionary(Mutable, a1, 0, 0);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v6 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  v8 = CFNumberCreate(v2, kCFNumberSInt32Type, &dword_1EB75E0B8);
  CFArrayAppendValue(v7, v8);
  if (v7)
  {
    CFDictionarySetValue(v6, @"port id array", v7);
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  valuePtr = 1986095474;
  v9 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
  if (v9)
  {
    v10 = v9;
    CFDictionarySetValue(v6, @"VAD type 4cc", v9);
    CFRelease(v10);
  }

  byte_1EB75E0AB = 1;
  VADWithRouteConfigurationDictionary = vaemCreateVADWithRouteConfigurationDictionary(v6, a1, 0, 1);
  if (v6)
  {
    CFRelease(v6);
  }

  return VADWithRouteConfigurationDictionary;
}

uint64_t CMSMVAUtility_CreatePerAppAirPlayVADIfNeeded(CFArrayRef theArray, uint64_t a2, uint64_t a3)
{
  if (theArray)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], theArray);
  }

  else
  {
    Copy = CMSMVAUtility_CopyConnectedWirelessPorts();
  }

  v5 = Copy;
  if (!Copy)
  {
    return 0;
  }

  Count = CFArrayGetCount(Copy);
  if (!Count)
  {
    CFRelease(v5);
    return 0;
  }

  v7 = Count;
  if (Count < 1)
  {
LABEL_13:
    VADWithRouteConfigurationDictionary = 0;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      PortTypeFromPortID = vaeGetPortTypeFromPortID(valuePtr);
      v11 = vaeCopyDeviceIdentifierFromVADPort(valuePtr);
      if (PortTypeFromPortID == 1885433953)
      {
        if (FigEndpointUtility_EndpointPredicate_ContainsID())
        {
          break;
        }
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (v7 == ++v8)
      {
        goto LABEL_13;
      }
    }

    v13 = vaemPerAppAirPlayVADExists();
    v14 = *MEMORY[0x1E695E480];
    if (v13)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v16 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{-[MXSessionManager perAppAirPlayVADID](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "perAppAirPlayVADID")}];
      if (v16)
      {
        v17 = v16;
        CFDictionarySetValue(Mutable, @"VAD type 4cc", v16);
        CFRelease(v17);
      }

      vaemDeleteVADWithRouteConfigurationDictionary(Mutable, a3, 0, 0);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    v18 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v19 = CFArrayCreateMutable(v14, 0, MEMORY[0x1E695E9C0]);
    v20 = CFNumberCreate(v14, kCFNumberSInt32Type, &valuePtr);
    CFArrayAppendValue(v19, v20);
    if (v19)
    {
      CFDictionarySetValue(v18, @"port id array", v19);
      CFRelease(v19);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    v24 = 1986095474;
    v21 = CFNumberCreate(v14, kCFNumberSInt32Type, &v24);
    if (v21)
    {
      v22 = v21;
      CFDictionarySetValue(v18, @"VAD type 4cc", v21);
      CFRelease(v22);
    }

    byte_1EB75E0AB = 0;
    VADWithRouteConfigurationDictionary = vaemCreateVADWithRouteConfigurationDictionary(v18, a3, 1, 1);
    if (v18)
    {
      CFRelease(v18);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    CMSMUtility_UpdateAudioBehaviourForSessionsUsingRoutingContextUUID();
  }

  if (FigRoutingManagerUtilities_IsCurrentRouteHandoff())
  {
    CMSMAP_MakeAirPlayHandOffPortRoutable(0, a3);
  }

  CFRelease(v5);
  return VADWithRouteConfigurationDictionary;
}

uint64_t CMSMVAUtility_DestroyPerAppAirPlayVAD(uint64_t a1)
{
  if (vaemPerAppAirPlayVADExists())
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{-[MXSessionManager perAppAirPlayVADID](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "perAppAirPlayVADID")}];
    if (v3)
    {
      v4 = v3;
      CFDictionarySetValue(Mutable, @"VAD type 4cc", v3);
      CFRelease(v4);
    }

    vaemDeleteVADWithRouteConfigurationDictionary(Mutable, a1, 0, 1);
    CMSMUtility_UpdateAudioBehaviourForSessionsUsingRoutingContextUUID();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return 0;
}

void CMSMVAUtility_DisableBluetoothSharingSession()
{
  v6 = *MEMORY[0x1E69E9840];
  if (CMSMVAUtility_IsBluetoothSharingSessionEnabled(0))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    CMSMUtility_GetCurrentOutputPortAtIndex(0);
    SInt64 = FigCFNumberCreateSInt64();
    CFArrayAppendValue(Mutable, SInt64);
    if (SInt64)
    {
      CFRelease(SInt64);
    }

    CMSMUtility_GetCurrentOutputPortAtIndex(1);
    v2 = FigCFNumberCreateSInt64();
    CFArrayAppendValue(Mutable, v2);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = CMSMUtility_CopySystemAudioRoutingContextUUID();
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemDeaggregatePorts(Mutable, Mutable, 1, v3);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t CMSMVAUtility_IsInputDeviceAvailableForSession(void *a1)
{
  cf[24] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v2 = qword_1EB75E090;
  v3 = [a1 audioCategory];
  v4 = [a1 audioMode];
  v5 = *(*(CMBaseObjectGetVTable() + 24) + 16);
  if (v5)
  {
    v5(v2, 0x1F289BAB0, *MEMORY[0x1E695E480], v3, v4, 0, cf);
  }

  v6 = *MEMORY[0x1E695E4D0];
  v7 = FigCFEqual();
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CMSMVAUtility_SetSharePlayMediaSessionInfoOnVA(int a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  result = vaemShouldSetSharePlayMediaInfoInRouteConfiguration(a1, a2, 1);
  if (result)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    memset(v8, 0, sizeof(v8));
    v9 = 1;
    v10 = 0;
    v11 = a1;
    v12 = a2;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    result = cmsmSetVADRouteConfiguration(v8, 0, 0);
  }

  else if (dword_1EB75DE40)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL CMSMVAUtility_IsInputPortBluetoothMicrophone(_BOOL8 result)
{
  if (result)
  {
    PortTypeFromPortID = vaeGetPortTypeFromPortID(result);
    return PortTypeFromPortID == 1886216820 || PortTypeFromPortID == 1886152041;
  }

  return result;
}

uint64_t CMSMVAUtility_OverrideToPartnerPort()
{
  v10 = 0u;
  theDict = 0;
  DWORD2(v10) = 0;
  p_theDict = &theDict;
  v12 = 8;
  v7 = 0x676C6F62766F7670;
  v8 = 0;
  if (!unk_1EB75E060)
  {
    return 4294954310;
  }

  v0 = unk_1EB75E060(dword_1EB75E0AC, &v7, 0, 0, 32, &v10);
  v1 = theDict;
  if (v0)
  {
    v2 = 1;
  }

  else
  {
    v2 = theDict == 0;
  }

  if (v2)
  {
    v3 = 4294954310;
    if (!theDict)
    {
      return v3;
    }

    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(theDict, @"route change reason");
  if (Value)
  {
    valuePtr = 0;
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    if (CMSMVAUtility_MapVADReasonToCMSReason(valuePtr) != 9)
    {
      vaemAQMERouteChanged(theDict, 0, 0);
      vaemVADRouteChangeListener();
    }
  }

  v3 = 0;
  v1 = theDict;
  if (theDict)
  {
LABEL_14:
    CFRelease(v1);
  }

  return v3;
}

uint64_t CMSMVAUtility_IsPortOfTypeBluetooth(int a1)
{
  v1 = vaemCopyEndpointForPort(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  number = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(CMBaseObject, 0x1F289CEF0, *MEMORY[0x1E695E480], &number);
    if (number)
    {
      valuePtr = 0;
      CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
      v5 = 1;
      if (valuePtr <= 1886152040)
      {
        if (valuePtr != 1885892674)
        {
          v6 = 1885892706;
LABEL_14:
          if (valuePtr != v6)
          {
            v5 = 0;
          }
        }
      }

      else if (valuePtr != 1886152041 && valuePtr != 1886152047)
      {
        v6 = 1886216820;
        goto LABEL_14;
      }

      if (number)
      {
        CFRelease(number);
      }

      goto LABEL_9;
    }
  }

  v5 = 0;
LABEL_9:
  CFRelease(v2);
  return v5;
}

BOOL CMSMVAUtility_IsPortOfTypeBluetoothVehicle(AudioObjectID a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = vaeGetVADEndpointTypeForPort(a1) == 1701869160;
  if (CMSMVAUtility_IsPortOfTypeBluetooth(a1))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t CMSMVAUtility_IsPortOfTypeCarPlay(int a1)
{
  result = vaemCopyEndpointForPort(a1);
  number = 0;
  if (result)
  {
    v2 = result;
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v5 = *(*(VTable + 8) + 48);
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = *(VTable + 8) + 48;
    v5(CMBaseObject, 0x1F289CEF0, *MEMORY[0x1E695E480], &number);
    if (!number)
    {
      goto LABEL_10;
    }

    valuePtr = 0;
    CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
    result = 1;
    if (valuePtr != 1886609775 && valuePtr != 1886614625 && valuePtr != 1886614639)
    {
      if (number)
      {
        CFRelease(number);
        number = 0;
      }

LABEL_10:
      CFRelease(v2);
      return 0;
    }
  }

  return result;
}

uint64_t CMSMVAUtility_IsAnyBluetoothVehicleConnected()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = vaemCopyConnectedPortsForPortTypeAndScope(0, 0x676C6F62u);
  if (v0)
  {
    v1 = v0;
    Count = CFArrayGetCount(v0);
    if (Count < 1)
    {
LABEL_6:
      v6 = 0;
    }

    else
    {
      v3 = Count;
      v4 = 0;
      while (1)
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        if (CMSMVAUtility_IsPortOfTypeBluetoothVehicle(valuePtr))
        {
          break;
        }

        if (v3 == ++v4)
        {
          goto LABEL_6;
        }
      }

      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v6 = 1;
    }

    CFRelease(v1);
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

void CMSMVAUtility_RouteDefaultVADToCarPlayIfNecessary(CFArrayRef theArray, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  PortOfTypeInArray = CMSMVAUtility_GetPortOfTypeInArray(1886614639, theArray);
  if (PortOfTypeInArray)
  {
    v4 = PortOfTypeInArray;
    v5 = CMSMUtility_CopyMostImportantPlayingSession();
    if (cmsmRequestCarMainAudioForSession(v5))
    {
      CMSMVAUtility_MakeConnectedPortRoutable(v4, a2);
    }

    else if (!v5 && [+[MXSessionManager shouldResumeNowPlayingAppOnDelayedCarPlayPortPublication] sharedInstance]
    {
      IsDoingActivity = FigEndpointCentralEntityIsDoingActivity(qword_1EB75E178, 0x1F288E5F0, @"PhoneCall");
      if (IsDoingActivity | FigEndpointCentralEntityIsDoingActivity(qword_1EB75E178, 0x1F288E5F0, @"Speech"))
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
        [+[MXSessionManager sharedInstance](MXSessionManager resumeNowPlayingAppForCarPlay];
      }
    }

    [+[MXSessionManager setShouldResumeNowPlayingAppOnDelayedCarPlayPortPublication:v9], "setShouldResumeNowPlayingAppOnDelayedCarPlayPortPublication:", 0];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void CMSMVAUtility_ChangeCarPlayPortFallbackRoutabilityIfNecessary(uint64_t a1)
{
  if (+[MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled](MXSystemController, "preferHeadphonesOverCarsAndSpeakersEnabled") && [+[MXSessionManager isCurrentRouteHeadphoneAndInEar:"isCurrentRouteHeadphoneAndInEar:"]
  {

    CMSMVAUtility_ChangeCarPlayPortFallbackRoutability(a1);
  }
}

void CMSMVAUtility_ChangeCarPlayPortFallbackRoutability(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = vaemCopyConnectedPortsForPortTypeAndScope(0, 0x676C6F62u);
  PortOfTypeInArray = CMSMVAUtility_GetPortOfTypeInArray(1886614639, v2);
  if (PortOfTypeInArray)
  {
    v4 = PortOfTypeInArray;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMVAUtility_MakeConnectedPortRoutable(v4, a1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t CMSMVAUtility_CancelAnyInProgressVolumeRamp(uint64_t a1, __int16 a2)
{
  result = MX_FeatureFlags_IsAdaptiveVolumeControlEnabled();
  if (result)
  {
    result = vaemIsVolumeRampInProgress(a1);
    if (result)
    {

      return vaemDeviceCancelVolumeRamp(a1, a2);
    }
  }

  return result;
}

uint64_t CMSMVAUtility_DoesSessionConfigurationSupportEchoCancelledInput(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a1];
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a2];
  [v4 setObject:v5 forKey:0x1F2897170];
  [v4 setObject:v6 forKey:0x1F2897150];
  *&inAddress.mSelector = *"sicebolg";
  inAddress.mElement = 0;
  ioDataSize = 4;
  outData = 0;
  if (AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8u, v4, &ioDataSize, &outData))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = outData;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMVAUtility_DoesVADHaveEchoCancelledInput(AudioObjectID a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"cesrbolg";
  inAddress.mElement = 0;
  ioDataSize = 4;
  outData = 0;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData) || dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = outData;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B193C538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B193C69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __routingSessionManagerRemote_ensureClientEstablished_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"RoutingSessionManager_ServerConnectionDied");
  _MergedGlobals_10 = FigXPCRemoteClientCreate();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void routingSessionManagerRemote_DeadConnectionCallback(const void *a1)
{
  *(CMBaseObjectGetDerivedStorage() + 8) = 1;
  if (a1)
  {
    CFRetain(a1);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingSessionManagerRemote_DeadConnectionCallback_block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = a1;
  MXDispatchAsync("routingSessionManagerRemote_DeadConnectionCallback", "FigRoutingSessionManagerRemoteXPC.m", 587, 0, 0, global_queue, v3);
}

uint64_t routingSessionManagerRemote_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *DerivedStorage;
  FigXPCRemoteClientDisassociateObject();
  if (!*(DerivedStorage + 8) && *DerivedStorage && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendSyncMessage();
  }

  v2 = *(DerivedStorage + 16);
  FigSimpleMutexDestroy();
  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  return FigXPCRelease();
}

uint64_t CMBaseObjectNotificationBarrier(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 8);
  if (*v2 < 2uLL)
  {
    return 4294954514;
  }

  v3 = v2[8];
  if (!v3)
  {
    return 4294954514;
  }

  v4 = v2[8];

  return v3(a1);
}

uint64_t routingSessionManagerRemote_StartSessionForHighConfidenceDestination(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  v8 = Mutable;
  if (a2)
  {
    CFDictionarySetValue(Mutable, @"Callback", a2);
  }

  if (a3)
  {
    CFDictionarySetValue(v8, @"CallbackContext", a3);
  }

  if (a1)
  {
    v9 = CFRetain(a1);
  }

  else
  {
    v9 = 0;
  }

  CFDictionarySetValue(v8, @"Manager", v9);
  v10 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  v11 = *(DerivedStorage + 32);
  *(DerivedStorage + 32) = v11 + 1;
  UInt64 = FigCFNumberCreateUInt64();
  CFDictionarySetValue(*(DerivedStorage + 24), UInt64, v8);
  v13 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  ObjectID = routingSessionManagerRemote_getObjectID(a1, &v21);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v15 = ObjectID;
  }

  else
  {
    xpc_dictionary_set_uint64(0, kFigRoutingSessionManagerXPCMsgParam_CompletionID, v11);
    v15 = FigXPCRemoteClientSendSyncMessage();
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v16 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 24), UInt64);
  if (Value)
  {
    v18 = CFRetain(Value);
  }

  else
  {
    v18 = 0;
  }

  CFDictionaryRemoveValue(*(DerivedStorage + 24), UInt64);
  v19 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  if (v18)
  {
    if (a1)
    {
      CFRelease(a1);
    }

    CFRelease(v18);
LABEL_18:
    if (!UInt64)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v15 = 0;
  if (UInt64)
  {
LABEL_19:
    CFRelease(UInt64);
  }

LABEL_20:
  if (v8)
  {
    CFRelease(v8);
  }

  FigXPCRelease();
  return v15;
}

uint64_t routingSessionManagerRemote_PrepareForPlayback(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  v8 = Mutable;
  if (a2)
  {
    CFDictionarySetValue(Mutable, @"Callback", a2);
  }

  if (a3)
  {
    CFDictionarySetValue(v8, @"CallbackContext", a3);
  }

  if (a1)
  {
    v9 = CFRetain(a1);
  }

  else
  {
    v9 = 0;
  }

  CFDictionarySetValue(v8, @"Manager", v9);
  v10 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  v11 = *(DerivedStorage + 32);
  *(DerivedStorage + 32) = v11 + 1;
  UInt64 = FigCFNumberCreateUInt64();
  CFDictionarySetValue(*(DerivedStorage + 24), UInt64, v8);
  v13 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  ObjectID = routingSessionManagerRemote_getObjectID(a1, &v16);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      xpc_dictionary_set_uint64(0, kFigRoutingSessionManagerXPCMsgParam_CompletionID, v11);
      ObjectID = FigXPCRemoteClientSendSyncMessage();
      if (!ObjectID)
      {
        if (!UInt64)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }
  }

  routingSessionManagerRemote_dequeueAndInvokeCallback(a1, v11, ObjectID);
  if (UInt64)
  {
LABEL_12:
    CFRelease(UInt64);
  }

LABEL_13:
  if (v8)
  {
    CFRelease(v8);
  }

  return FigXPCRelease();
}

uint64_t routingSessionManagerRemote_UpdateCurrentSessionFromLikelyDestinations(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  v8 = Mutable;
  if (a2)
  {
    CFDictionarySetValue(Mutable, @"Callback", a2);
  }

  if (a3)
  {
    CFDictionarySetValue(v8, @"CallbackContext", a3);
  }

  if (a1)
  {
    v9 = CFRetain(a1);
  }

  else
  {
    v9 = 0;
  }

  CFDictionarySetValue(v8, @"Manager", v9);
  v10 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  v11 = *(DerivedStorage + 32);
  *(DerivedStorage + 32) = v11 + 1;
  UInt64 = FigCFNumberCreateUInt64();
  CFDictionarySetValue(*(DerivedStorage + 24), UInt64, v8);
  v13 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  ObjectID = routingSessionManagerRemote_getObjectID(a1, &v21);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v15 = ObjectID;
  }

  else
  {
    xpc_dictionary_set_uint64(0, kFigRoutingSessionManagerXPCMsgParam_CompletionID, v11);
    v15 = FigXPCRemoteClientSendSyncMessage();
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v16 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 24), UInt64);
  if (Value)
  {
    v18 = CFRetain(Value);
  }

  else
  {
    v18 = 0;
  }

  CFDictionaryRemoveValue(*(DerivedStorage + 24), UInt64);
  v19 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  if (v18)
  {
    if (a1)
    {
      CFRelease(a1);
    }

    CFRelease(v18);
LABEL_18:
    if (!UInt64)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v15 = 0;
  if (UInt64)
  {
LABEL_19:
    CFRelease(UInt64);
  }

LABEL_20:
  if (v8)
  {
    CFRelease(v8);
  }

  FigXPCRelease();
  return v15;
}

uint64_t routingSessionManagerRemote_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    routingSessionManagerRemote_getObjectID_cold_1(&v6);
    return v6;
  }

  else if (a2)
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  else
  {
    routingSessionManagerRemote_getObjectID_cold_2(&v7);
    return v7;
  }

  return result;
}

void sub_1B193ED84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1940500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_1B19409E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t FigRoutingContextStartServer()
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

void FigRoutingContextXPCHandleReportModificationMetricsMessage(uint64_t a1)
{
  FigXPCMessageCopyCFDictionary();
  v2 = [[MXRoutingContextModificationMetrics alloc] initWithDictionary:0];
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 16) + 232);
  if (v4)
  {
    v5 = *(VTable + 16) + 232;
    v4(a1, v2);
  }
}

uint64_t FigRoutingContextXPCHandleResetPredictedSelectedRouteDescriptorMessage(uint64_t a1)
{
  v2 = FigXPCMessageCopyCFDictionary();
  if (v2)
  {
    v4 = v2;
    FigRoutingContextXPCHandleResetPredictedSelectedRouteDescriptorMessage_cold_1();
    return v4;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 184);
  if (!v3)
  {
    v4 = 4294954514;
    goto LABEL_6;
  }

  v4 = v3(a1, 0);
  if (v4)
  {
LABEL_6:
    FigRoutingContextXPCHandleResetPredictedSelectedRouteDescriptorMessage_cold_2();
  }

  return v4;
}

uint64_t CloseCommChannelApplier(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 16);
  result = VTable + 16;
  v8 = *(v7 + 168);
  if (v8)
  {

    return v8(v3, v4, a1);
  }

  return result;
}

void DestroyCompletionCallbackParameters(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    FigXPCRelease();

    free(a1);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7AE6E00, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void *CMSM_IDS_Initialize()
{
  result = dlopen("/System/Library/PrivateFrameworks/IDS.framework/IDS", 1);
  sIDSHandle = result;
  if (result)
  {
    sIDSCopyIDForDevice = dlsym(result, "IDSCopyIDForDevice");
    result = objc_getClass("IDSService");
    sIDSServiceClass = result;
  }

  return result;
}

uint64_t CMSM_IDSCopyIDForDevice()
{
  if (sIDSCopyIDForDevice)
  {
    return sIDSCopyIDForDevice();
  }

  else
  {
    return 0;
  }
}

uint64_t FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (a2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager_block_invoke;
    v6[3] = &unk_1E7AE7168;
    v6[4] = &v7;
    v6[5] = a1;
    if (FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager_onceToken != -1)
    {
      dispatch_once(&FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager_onceToken, v6);
    }

    v3 = *(v8 + 6);
    if (!v3)
    {
      v4 = FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager_sLongFormManager;
      if (FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager_sLongFormManager)
      {
        v4 = CFRetain(FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager_sLongFormManager);
        v3 = *(v8 + 6);
      }

      else
      {
        v3 = 0;
      }

      *a2 = v4;
    }
  }

  else
  {
    fig_log_get_emitter();
    v3 = FigSignalErrorAtGM();
    *(v8 + 6) = v3;
  }

  _Block_object_dispose(&v7, 8);
  return v3;
}

void sub_1B1941DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t routingSessionManagerResilientRemote_startObservingRemoteManager()
{
  CMNotificationCenterGetDefaultLocalCenter();
  v0 = 0;
  while (1)
  {
    v1 = *sFigRoutingSessionManagerPropertyChangeNotifications[v0];
    result = FigNotificationCenterAddWeakListener();
    if (result)
    {
      break;
    }

    if (++v0 == 4)
    {

      return FigNotificationCenterAddWeakListener();
    }
  }

  return result;
}

void routingSessionManagerResilientRemote_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    _Block_release(*DerivedStorage);
  }

  if (*(DerivedStorage + 16))
  {
    routingSessionManagerResilientRemote_stopObservingRemoteManager();
  }

  if (*(DerivedStorage + 8))
  {
    FigSimpleMutexDestroy();
  }

  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    dispatch_release(v1);
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t CMBaseObjectNotificationBarrier_0(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 8);
  if (*v2 < 2uLL)
  {
    return 4294954514;
  }

  v3 = v2[8];
  if (!v3)
  {
    return 4294954514;
  }

  v4 = v2[8];

  return v3(a1);
}

uint64_t routingSessionManagerResilientRemote_stopObservingRemoteManager()
{
  CMNotificationCenterGetDefaultLocalCenter();
  for (i = 0; i != 4; ++i)
  {
    v1 = *sFigRoutingSessionManagerPropertyChangeNotifications[i];
    FigNotificationCenterRemoveWeakListener();
  }

  return FigNotificationCenterRemoveWeakListener();
}

void routingSessionManagerResilientRemote_serverConnectionDied(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  v7 = *(DerivedStorage + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __routingSessionManagerResilientRemote_serverConnectionDied_block_invoke;
  v8[3] = &__block_descriptor_56_e5_v8__0l;
  v8[4] = DerivedStorage;
  v8[5] = a2;
  v8[6] = a4;
  MXDispatchAsync("routingSessionManagerResilientRemote_serverConnectionDied", "FigRoutingSessionManagerResilientRemote.m", 212, 0, 0, v7, v8);
}

uint64_t routingSessionManagerResilientRemote_CopyCurrentSession(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingSessionManagerResilientRemote_CopyCurrentSession_block_invoke;
  v3[3] = &__block_descriptor_40_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v3[4] = a2;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v3);
}

uint64_t routingSessionManagerResilientRemote_StartSessionForHighConfidenceDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingSessionManagerResilientRemote_StartSessionForHighConfidenceDestination_block_invoke;
  v4[3] = &__block_descriptor_48_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v4);
}

uint64_t routingSessionManagerResilientRemote_CopyLikelyDestinations(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingSessionManagerResilientRemote_CopyLikelyDestinations_block_invoke;
  v3[3] = &__block_descriptor_40_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v3[4] = a2;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v3);
}

uint64_t routingSessionManagerResilientRemote_PrepareForPlayback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingSessionManagerResilientRemote_PrepareForPlayback_block_invoke;
  v4[3] = &__block_descriptor_48_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v4);
}

uint64_t routingSessionManagerResilientRemote_GetAirPlayVideoActive(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingSessionManagerResilientRemote_GetAirPlayVideoActive_block_invoke;
  v3[3] = &__block_descriptor_40_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v3[4] = a2;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v3);
}

uint64_t routingSessionManagerResilientRemote_GetAirPlayVideoPlaying(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingSessionManagerResilientRemote_GetAirPlayVideoPlaying_block_invoke;
  v3[3] = &__block_descriptor_40_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v3[4] = a2;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v3);
}

uint64_t routingSessionManagerResilientRemote_UpdateCurrentSessionFromLikelyDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingSessionManagerResilientRemote_UpdateCurrentSessionFromLikelyDestination_block_invoke;
  v4[3] = &__block_descriptor_48_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v4);
}

uint64_t routingSessionManagerResilientRemote_GetPrefersLikelyDestinationsOverCurrentSession(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingSessionManagerResilientRemote_GetPrefersLikelyDestinationsOverCurrentSession_block_invoke;
  v3[3] = &__block_descriptor_40_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v3[4] = a2;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v3);
}

uint64_t routingSessionManagerResilientRemote_StartSessionWithRouteDescriptors(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingSessionManagerResilientRemote_StartSessionWithRouteDescriptors_block_invoke;
  v3[3] = &__block_descriptor_40_e41_i16__0__OpaqueFigRoutingSessionManager__8l;
  v3[4] = a2;
  return routingSessionManagerResilientRemote_withServerDeathRetry(a1, v3);
}

uint64_t routingSessionManagerResilientRemote_withServerDeathRetry(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  v8 = 0;
  v9 = 0;
  cf = v6;
  while (1)
  {
    v10 = (*(a2 + 16))(a2, cf);
    v11 = v10;
    ++v9;
    if (v10 == -15394 || v10 == -16155)
    {
      break;
    }

LABEL_25:
    if (v11 != -16155 && v11 != -15394 || v9 >= 5)
    {
      v16 = v11;
      if (!v8)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  v13 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  while (1)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v14 = routingSessionManagerResilientRemote_replaceRemoteManager();
    v15 = v14 == -15394;
    if (v14 == -16155)
    {
      v15 = 1;
LABEL_20:
      ++v9;
      goto LABEL_21;
    }

    v16 = v14;
    if (v14)
    {
      break;
    }

LABEL_21:
    if (v9 >= 5)
    {
      v15 = 0;
    }

    if (!v15)
    {
      v8 = v13;
      goto LABEL_25;
    }
  }

  if (v14 == -15394)
  {
    goto LABEL_20;
  }

  v8 = v13;
  if (v13)
  {
LABEL_33:
    CFRelease(v8);
  }

LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}