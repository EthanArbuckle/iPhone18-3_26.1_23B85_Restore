void *CMSessionMgrFindVolumeButtonClient(unsigned int a1)
{
  v123 = *MEMORY[0x1E69E9840];
  if (!CMSMUtility_IsSharePlayCapableCallSessionActive())
  {
    goto LABEL_13;
  }

  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v109 objects:v122 count:16];
  if (!v3)
  {
LABEL_12:

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v4 = v3;
  v5 = *v110;
LABEL_4:
  v6 = 0;
  while (1)
  {
    if (*v110 != v5)
    {
      objc_enumerationMutation(v2);
    }

    v7 = *(*(&v109 + 1) + 8 * v6);
    if ([v7 isActive])
    {
      if (CMSUtility_GetWantsToBeVolumeButtonClient(v7) && CMSUtility_IsSharePlayCapableMediaSession(v7))
      {
        break;
      }
    }

    if (v4 == ++v6)
    {
      v4 = [v2 countByEnumeratingWithState:&v109 objects:v122 count:16];
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: SharePlay-capable media session", objc_msgSend(v7, "clientName")];

  if (v7)
  {
    goto LABEL_66;
  }

LABEL_14:
  v9 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v105 objects:v121 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v106;
LABEL_16:
    v13 = 0;
    while (1)
    {
      if (*v106 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v7 = *(*(&v105 + 1) + 8 * v13);
      if ([v7 hasPhoneCallBehavior])
      {
        if ([v7 isActive] && CMSUtility_GetWantsToBeVolumeButtonClient(v7))
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v105 objects:v121 count:16];
        if (v11)
        {
          goto LABEL_16;
        }

        goto LABEL_24;
      }
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: phone call", objc_msgSend(v7, "clientName")];

    v14 = 0x1ED6D2000uLL;
    if (v7)
    {
      goto LABEL_66;
    }
  }

  else
  {
LABEL_24:

    v14 = 0x1ED6D2000;
  }

  v15 = [objc_msgSend((v14 + 2272) "sharedInstance")];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v101 objects:v120 count:16];
  v70 = a1;
  if (!v16)
  {
LABEL_78:
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v29 = [v15 countByEnumeratingWithState:&v97 objects:v119 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v98;
LABEL_80:
      v32 = 0;
      while (1)
      {
        if (*v98 != v31)
        {
          objc_enumerationMutation(v15);
        }

        v7 = *(*(&v97 + 1) + 8 * v32);
        if (CMSUtility_GetIsActive(v7))
        {
          CMSUtility_GetAudioCategory(v7, v33);
          if (FigCFEqual())
          {
            CMSUtility_GetAudioMode(v7, v34);
            if (FigCFEqual())
            {
              break;
            }
          }
        }

        if (v30 == ++v32)
        {
          v30 = [v15 countByEnumeratingWithState:&v97 objects:v119 count:16];
          if (v30)
          {
            goto LABEL_80;
          }

          goto LABEL_88;
        }
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: Active EmergencyAlert~CustomVolume session", objc_msgSend(v7, "clientName")];

      a1 = v70;
      v35 = 0x1ED6D2000uLL;
      if (v7)
      {
        goto LABEL_66;
      }
    }

    else
    {
LABEL_88:

      a1 = v70;
      v35 = 0x1ED6D2000;
    }

    v36 = [objc_msgSend((v35 + 2272) "sharedInstance")];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v37 = [v36 countByEnumeratingWithState:&v93 objects:v118 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v94;
LABEL_92:
      v40 = 0;
      while (1)
      {
        if (*v94 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v7 = *(*(&v93 + 1) + 8 * v40);
        if ([v7 wantsVolumeChangesWhenPausedOrInactive])
        {
          break;
        }

        if (v38 == ++v40)
        {
          v38 = [v36 countByEnumeratingWithState:&v93 objects:v118 count:16];
          if (v38)
          {
            goto LABEL_92;
          }

          goto LABEL_98;
        }
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: wantsVolumeChangesWhenPausedOrInactive (i.e. a volume slider)", objc_msgSend(v7, "clientName")];

      v41 = 0x1ED6D2000uLL;
      if (v7)
      {
        goto LABEL_66;
      }
    }

    else
    {
LABEL_98:

      v41 = 0x1ED6D2000;
    }

    v44 = [objc_msgSend((v41 + 2272) "sharedInstance")];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v45 = [v44 countByEnumeratingWithState:&v89 objects:v117 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v90;
LABEL_103:
      v48 = 0;
      while (1)
      {
        if (*v90 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v7 = *(*(&v89 + 1) + 8 * v48);
        if ([v7 isActive])
        {
          if ([v7 wantsVolumeChangesWhenPaused] && CMSUtility_GetWantsToBeVolumeButtonClient(v7))
          {
            break;
          }
        }

        if (v46 == ++v48)
        {
          v46 = [v44 countByEnumeratingWithState:&v89 objects:v117 count:16];
          if (v46)
          {
            goto LABEL_103;
          }

          goto LABEL_111;
        }
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: wantsVolumeChangesWhenPaused (and session is active)", objc_msgSend(v7, "clientName")];

      v49 = 0x1ED6D2000uLL;
      if (v7)
      {
        goto LABEL_66;
      }
    }

    else
    {
LABEL_111:

      v49 = 0x1ED6D2000;
    }

    v50 = +[MXSystemController getPIDForAnyAppThatWantsVolumeChanges];
    if (v50)
    {
      v51 = v50;
      v15 = [objc_msgSend((v49 + 2272) "sharedInstance")];
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v52 = [v15 countByEnumeratingWithState:&v85 objects:v116 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v86;
LABEL_116:
        v55 = 0;
        while (1)
        {
          if (*v86 != v54)
          {
            objc_enumerationMutation(v15);
          }

          v7 = *(*(&v85 + 1) + 8 * v55);
          if ([objc_msgSend(v7 "clientPID")] == v51 && objc_msgSend(v7, "isActive") && CMSUtility_GetWantsToBeVolumeButtonClient(v7))
          {
            break;
          }

          if (v53 == ++v55)
          {
            v53 = [v15 countByEnumeratingWithState:&v85 objects:v116 count:16];
            if (v53)
            {
              goto LABEL_116;
            }

            goto LABEL_126;
          }
        }

        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: appWantsVolumeChanges is true, and session is active", objc_msgSend(v7, "clientName")];
        if (v7)
        {
          goto LABEL_57;
        }
      }

LABEL_126:
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v56 = [v15 countByEnumeratingWithState:&v81 objects:v115 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v82;
LABEL_128:
        v59 = 0;
        while (1)
        {
          if (*v82 != v58)
          {
            objc_enumerationMutation(v15);
          }

          v7 = *(*(&v81 + 1) + 8 * v59);
          if ([objc_msgSend(v7 "clientPID")] == v51)
          {
            if (CMSUtility_GetWantsToBeVolumeButtonClient(v7))
            {
              break;
            }
          }

          if (v57 == ++v59)
          {
            v57 = [v15 countByEnumeratingWithState:&v81 objects:v115 count:16];
            if (v57)
            {
              goto LABEL_128;
            }

            goto LABEL_135;
          }
        }

        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: appWantsVolumeChanges is true, and session is not active", objc_msgSend(v7, "clientName")];

        a1 = v70;
        v49 = 0x1ED6D2000uLL;
        if (v7)
        {
          goto LABEL_66;
        }
      }

      else
      {
LABEL_135:

        a1 = v70;
        v49 = 0x1ED6D2000;
      }
    }

    if (CMSMDeviceState_DeviceIsLocked())
    {
      v60 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
      if (!v60)
      {
        v7 = 0;
        goto LABEL_99;
      }

      v61 = v60;
      v15 = [objc_msgSend((v49 + 2272) "sharedInstance")];
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v62 = [v15 countByEnumeratingWithState:&v77 objects:v114 count:16];
      if (v62)
      {
        v63 = v62;
        v64 = *v78;
        while (2)
        {
          for (i = 0; i != v63; ++i)
          {
            if (*v78 != v64)
            {
              objc_enumerationMutation(v15);
            }

            v7 = *(*(&v77 + 1) + 8 * i);
            if ([objc_msgSend(v7 "clientPID")] == v61 && CMSUtility_GetWantsToBeVolumeButtonClient(v7))
            {
              v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: nowPlayingApp and screen is locked", objc_msgSend(v7, "clientName")];
              goto LABEL_57;
            }
          }

          v63 = [v15 countByEnumeratingWithState:&v77 objects:v114 count:16];
          if (v63)
          {
            continue;
          }

          break;
        }

        v7 = 0;
LABEL_57:
        a1 = v70;
        goto LABEL_65;
      }
    }

    else
    {
      v15 = [objc_msgSend((v49 + 2272) "sharedInstance")];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v66 = [v15 countByEnumeratingWithState:&v73 objects:v113 count:16];
      if (v66)
      {
        v67 = v66;
        v68 = *v74;
        while (2)
        {
          for (j = 0; j != v67; ++j)
          {
            if (*v74 != v68)
            {
              objc_enumerationMutation(v15);
            }

            v7 = *(*(&v73 + 1) + 8 * j);
            if ([v7 isActive] && (objc_msgSend(v7, "applicationState") == 8 || objc_msgSend(v7, "isTheAssistant")) && CMSUtility_GetWantsToBeVolumeButtonClient(v7))
            {
              v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: VoiceAssistant OR session is active and app is in the foreground", objc_msgSend(v7, "clientName")];
              goto LABEL_65;
            }
          }

          v67 = [v15 countByEnumeratingWithState:&v73 objects:v113 count:16];
          if (v67)
          {
            continue;
          }

          break;
        }
      }
    }

    v7 = 0;
    goto LABEL_65;
  }

  v17 = v16;
  v71 = 0;
  v72 = 0;
  v18 = 0;
  v7 = 0;
  v19 = *v102;
  while (2)
  {
    for (k = 0; k != v17; ++k)
    {
      if (*v102 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v21 = *(*(&v101 + 1) + 8 * k);
      if ([v21 isActive] && objc_msgSend(v21, "isPlaying") && CMSUtility_GetWantsToBeVolumeButtonClient(v21))
      {
        if ((([v21 doesntActuallyPlayAudio] & 1) != 0 || objc_msgSend(v21, "isOutputMuted")) && !CMSMDeviceState_IsHomePodHub() && CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v21) && (v22 = -[MXNowPlayingAppManager nowPlayingAppPID](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "nowPlayingAppPID"), v22 == objc_msgSend(objc_msgSend(v21, "clientPID"), "intValue")))
        {
          v72 = v21;
        }

        else if (([v21 doesntActuallyPlayAudio] & 1) == 0)
        {
          if (CMSUtility_IsSessionOnlyPlayingLocally(v21) && !CMSUtility_ShouldSilentMute(v21) && ([v21 isOutputMuted] & 1) == 0)
          {
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client is %@ for reason: session only playing locally", objc_msgSend(v21, "clientName")];
            v7 = v21;
            if (v21)
            {
              goto LABEL_57;
            }

            goto LABEL_58;
          }

          if (!CMSMDeviceState_IsHomePodHub())
          {
            if (CMSUtility_ShouldSilentMute(v21))
            {
              v18 = v21;
            }

            else if ([v21 isOutputMuted])
            {
              v71 = v21;
            }

            else
            {
              v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Volume button client might be %@ for reason: session playing but not only locally", objc_msgSend(v21, "clientName")];
              v7 = v21;
            }
          }
        }
      }
    }

    v17 = [v15 countByEnumeratingWithState:&v101 objects:v120 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

  if (v7)
  {
    goto LABEL_57;
  }

LABEL_58:
  a1 = v70;
  v23 = v72;
  if (v72)
  {
    v24 = @"Volume button client is %@ for reason: Now Playing session playing but muted";
  }

  else
  {
    v23 = v71;
    if (v71)
    {
      v24 = @"Volume button client is %@ for reason: session playing but output muted";
    }

    else
    {
      if (!v18)
      {
        goto LABEL_78;
      }

      v24 = @"Volume button client is %@ for reason: session playing but silent muted";
      v23 = v18;
    }
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:v24, objc_msgSend(v23, "clientName")];
  v7 = v23;
LABEL_65:

LABEL_66:
  if (v7)
  {
    v25 = v8 == 0;
  }

  else
  {
    v25 = 1;
  }

  v27 = v25 || a1 > 0xE || ((1 << a1) & 0x5836) == 0;
  if (!v27 && dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_99:
  v42 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CMSMUtility_IsSharePlayCapableCallSessionActive()
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
          if (CMSUtility_GetIsActive(v4) && ([v4 isSharePlayCapableCallSession] & 1) != 0)
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

BOOL CMSMDeviceState_DeviceIsLocked()
{
  FigSimpleMutexLock();
  v0 = byte_1EB75D32A;
  v1 = byte_1EB75D330;
  FigSimpleMutexUnlock();
  if (!v1)
  {
    return sMKBGetLockStatus && sMKBGetLockStatus(0) != 0;
  }

  return v0;
}

uint64_t MX_FeatureFlags_IsAdaptiveVolumeControlEnabled()
{
  if (MX_FeatureFlags_IsAdaptiveVolumeControlEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAdaptiveVolumeControlEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAdaptiveVolumeControlEnabled_sAdaptiveVolumeControlEnabled;
}

uint64_t CMSMUtility_CopyDeviceRouteAtIndexForInactiveRouteConfiguration(NSDictionary *a1, uint64_t a2, const void *a3, int a4, CFIndex a5, void *a6, void *a7, void *a8)
{
  if (!a6 && !a7 && !a8)
  {
    return 4294954315;
  }

  v21 = 0;
  theArray = 0;
  v20 = 0;
  CMSMUtility_CopyDeviceRoutesForInactiveRouteConfiguration(a1, a2, a3, a4, &theArray, &v21, &v20);
  Count = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  if (Count > a5)
  {
    if (a6)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      v15 = CFRetain(ValueAtIndex);
      *a6 = v15;
      if (CFEqual(v15, &stru_1F2890CF0))
      {
        *a6 = 0;
      }
    }

    if (a7)
    {
      v16 = CFArrayGetValueAtIndex(v21, 0);
      v17 = CFRetain(v16);
      *a7 = v17;
      if (CFEqual(v17, &stru_1F2890CF0))
      {
        *a7 = 0;
      }
    }

    if (a8)
    {
      v18 = CFArrayGetValueAtIndex(v20, 0);
      v19 = CFRetain(v18);
      *a8 = v19;
      if (CFEqual(v19, &stru_1F2890CF0))
      {
        *a8 = 0;
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (v21)
  {
    CFRelease(v21);
    v21 = 0;
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return 0;
}

void CMSMVAUtility_CopyRoutesInfoFromInputAndOutputPorts(const __CFArray *a1, CFArrayRef theArray, __CFArray **a3, __CFArray **a4, void *a5, __CFArray **a6)
{
  if (!theArray)
  {
    Count = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  Count = CFArrayGetCount(theArray);
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = CFArrayGetCount(a1);
LABEL_6:
  if (v13 <= 0 && Count < 1)
  {
    return;
  }

  if (v13 && !Count)
  {
    v14 = a1;
LABEL_15:

    vautility_copyRoutesInfoFromPorts(v14, a3, a4, a6);
    return;
  }

  if (!v13 && Count)
  {
    v14 = theArray;
    goto LABEL_15;
  }

  if (v13 && Count)
  {
    vautility_copyRoutesInfoFromPorts(a1, a3, a4, a6);
    FigCFArrayGetInt64AtIndex();
    v15 = vaeCopyDeviceIdentifierFromVADPort(0);
    if (a5)
    {
      *a5 = [MEMORY[0x1E695DEC8] arrayWithObject:v15];
    }

    if (v15)
    {
      CFRelease(v15);
    }

    FigCFArrayGetInt64AtIndex();
    PortTypeFromPortID = vaeGetPortTypeFromPortID(0);
    v17 = vaeGetPortTypeFromPortID(0);
    v18 = CMSMVAUtility_CopyFigIODeviceNameFromVADPortTypes(PortTypeFromPortID, v17);
    v19 = v18;
    if (a3 && v18)
    {
      MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, *a3);
      CFArraySetValueAtIndex(MutableCopy, 0, v19);
      if (*a3)
      {
        CFRelease(*a3);
      }

      *a3 = MutableCopy;
    }

    else if (!v18)
    {
      return;
    }

    CFRelease(v19);
  }
}

uint64_t pvmGetMappedRouteIdentifier(void *a1, void *a2)
{
  if (!a1 || ([a2 hasPrefix:@"HeadphonesBT"] & 1) == 0 && !objc_msgSend(a2, "hasPrefix:", @"HeadsetBT"))
  {
    return a1;
  }

  v4 = [a1 componentsSeparatedByString:@"-"];

  return [v4 firstObject];
}

void pvmAssureCurrentCategoryAndDeviceRoute()
{
  v0 = sStorage;
  if (!*(sStorage + 232))
  {
    v1 = *(sStorage + 240);
    if (v1)
    {
      CFRelease(v1);
      v0 = sStorage;
      *(sStorage + 240) = 0;
    }

    MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(@"Audio/Video", 0);
    pvmCreateSeparateCategoryAndModeStrings(MappedCategoryWithModeAppended, v0 + 29, v0 + 30);
    v0 = sStorage;
  }

  if (!v0[34])
  {
    v3 = v0[25];
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"Speaker");
    }

    else
    {
      Value = @"Speaker";
    }

    if (!Value)
    {
      Value = @"Speaker";
    }

    v5 = CFRetain(Value);
    v6 = sStorage;
    *(sStorage + 272) = v5;
    v7 = v6[35];
    if (v7)
    {
      CFRelease(v7);
      v6 = sStorage;
      *(sStorage + 280) = 0;
    }

    v8 = v6[37];
    if (v8)
    {
      CFRelease(v8);
      v6 = sStorage;
      *(sStorage + 296) = 0;
    }

    v9 = v6[34];
    v10 = FigCFEqual();
    v11 = sStorage;
    *(sStorage + 304) = v10;
    v12 = *(v11 + 272);
    *(sStorage + 305) = FigCFEqual();
  }
}

__CFString *PVMGetMappedEndpointType(uint64_t a1)
{
  v1 = @"Unspecified";
  value = @"Unspecified";
  if (!*(a1 + 8))
  {
    return v1;
  }

  v2 = *(sStorage + 120);
  if (!v2)
  {
    return v1;
  }

  v4 = *MEMORY[0x1E695E480];
  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v2);
  if (!Copy)
  {
    return v1;
  }

  v6 = Copy;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = *(sStorage + 200);
    if (v8)
    {
      v9 = CFDictionaryGetValue(v8, *(a1 + 8));
      v10 = *(a1 + 8);
    }

    else
    {
      v10 = *(a1 + 8);
      v9 = v10;
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  MappedRouteIdentifier = pvmGetMappedRouteIdentifier(*(a1 + 24), v10);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      if (([v14 hasPrefix:@"HeadphonesBT"] & 1) == 0 && !objc_msgSend(v14, "hasPrefix:", @"HeadsetBT"))
      {
        MutableCopy = CFStringCreateMutableCopy(v4, 16, v11);
        CFStringAppend(MutableCopy, @"~");
        CFStringAppend(MutableCopy, v13);
        if (!MappedRouteIdentifier)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }
  }

  MutableCopy = CFStringCreateMutableCopy(v4, 16, v11);
  if (MappedRouteIdentifier)
  {
LABEL_17:
    CFStringAppend(MutableCopy, @"~");
    CFStringAppend(MutableCopy, MappedRouteIdentifier);
  }

LABEL_18:
  CFDictionaryGetValueIfPresent(v6, MutableCopy, &value);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  CFRelease(v6);
  return value;
}

float PVMGetVolumePreference(const __CFString *a1, const void *a2, uint64_t a3)
{
  v22 = 0;
  cf = 0;
  if (!*(a3 + 8))
  {
    *(a3 + 8) = @"Speaker";
  }

  if (!a1)
  {
    a1 = @"Audio/Video";
  }

  MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);
  pvmCreateSeparateCategoryAndModeStrings(MappedCategoryWithModeAppended, &cf, &v22);
  v5 = *(a3 + 8);
  if (v5)
  {
    v6 = *(sStorage + 200);
    if (v6)
    {
      Value = CFDictionaryGetValue(v6, *(a3 + 8));
    }

    else
    {
      Value = *(a3 + 8);
    }

    if (Value)
    {
      v8 = Value;
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v8 = 0;
  }

  *(a3 + 8) = v8;
  MappedRouteIdentifier = pvmGetMappedRouteIdentifier(*(a3 + 24), v8);
  v10 = 0;
  *(a3 + 24) = MappedRouteIdentifier;
  v11 = *(a3 + 16);
  if (v11)
  {
    v12 = *(a3 + 8);
    if (v12)
    {
      if (([*(a3 + 8) hasPrefix:@"HeadphonesBT"] & 1) != 0 || (v13 = objc_msgSend(v12, "hasPrefix:", @"HeadsetBT"), v10 = v11, v13))
      {
        v10 = 0;
      }
    }
  }

  *(a3 + 16) = v10;
  v14 = *sStorage;
  FigSimpleMutexLock();
  v15 = *(a3 + 16);
  v20[0] = *a3;
  v20[1] = v15;
  v21 = *(a3 + 32);
  pvmGetVolumePref(cf, v22, v20);
  v17 = v16;
  v18 = *sStorage;
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v17;
}

void pvmGetVolumePref(const __CFString *a1, const void *a2, uint64_t a3)
{
  valuePtr = pvmGetDefaultVolume();
  if (FigCFEqual())
  {
    v6 = *(sStorage + 200);
    if (v6)
    {
      Value = CFDictionaryGetValue(v6, @"broadcast");
    }

    else
    {
      Value = @"broadcast";
    }

    v9 = 0;
    v8 = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    if (!Value)
    {
      Value = @"broadcast";
    }

    *(a3 + 8) = Value;
  }

  else
  {
    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    Value = *(a3 + 8);
  }

  DeviceRouteString = pvmCreateDeviceRouteString(Value, v8, v9);
  if (DeviceRouteString && (v11 = *(sStorage + 16)) != 0 && (v12 = CFDictionaryGetValue(v11, DeviceRouteString)) != 0)
  {
    v13 = v12;
    CategoryStringWithModeAppended = pvmCreateCategoryStringWithModeAppended(a1, a2);
    v15 = CFDictionaryGetValue(v13, CategoryStringWithModeAppended);
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v16, kCFNumberFloat32Type, &valuePtr);
        v18 = *(a3 + 16);
        v21[0] = *a3;
        v21[1] = v18;
        v22 = *(a3 + 32);
        v19 = *(a3 + 16);
        v23[0] = *a3;
        v23[1] = v19;
        v24 = *(a3 + 32);
        pvmGetVolumeLimitPref(v23);
        pvmGetCurrentVolumeLimitForRoute(v21, a1);
      }
    }
  }

  else
  {
    CategoryStringWithModeAppended = 0;
  }

  pvmGetMinimumCategoryVolume(a1, a2);
  pvmGetMaximumCategoryVolume(a1, a2);
  if (CategoryStringWithModeAppended)
  {
    CFRelease(CategoryStringWithModeAppended);
  }

  if (DeviceRouteString)
  {
    CFRelease(DeviceRouteString);
  }
}

CFStringRef pvmCreateDeviceRouteString(CFTypeRef cf, unint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    goto LABEL_25;
  }

  v3 = a3;
  v5 = cf;
  if (a2 | a3)
  {
    if (*(sStorage + 200))
    {
      cf = CFDictionaryGetValue(*(sStorage + 200), cf);
    }

    if (cf)
    {
      v6 = cf;
    }

    else
    {
      v6 = v5;
    }

    MappedRouteIdentifier = pvmGetMappedRouteIdentifier(a2, v5);
    if (v3 && (([v5 hasPrefix:@"HeadphonesBT"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"HeadsetBT")))
    {
      v3 = 0;
    }

    if (FigCFEqual() || FigCFEqual())
    {
      v8 = @"-Audio";
      if ([MappedRouteIdentifier hasSuffix:@"-Audio"] & 1) != 0 || (v8 = @"-screen", (objc_msgSend(MappedRouteIdentifier, "hasSuffix:", @"-screen")) || (v8 = @"-airplay", (objc_msgSend(MappedRouteIdentifier, "hasSuffix:", @"-airplay")) || (v8 = @"-LowLatencyAudio", objc_msgSend(MappedRouteIdentifier, "hasSuffix:", @"-LowLatencyAudio")))
      {
        MappedRouteIdentifier = [MappedRouteIdentifier substringToIndex:{objc_msgSend(MappedRouteIdentifier, "length") - -[__CFString length](v8, "length")}];
        v9 = [MappedRouteIdentifier rangeOfString:@"-" options:4];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          MappedRouteIdentifier = [MappedRouteIdentifier substringToIndex:v9];
        }
      }
    }

    v19 = 0;
    v20 = 0;
    v18 = v6;
    if (v3)
    {
      v19 = v3;
      v10 = 2;
      if (!MappedRouteIdentifier)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = 1;
      if (!MappedRouteIdentifier)
      {
LABEL_23:
        v11 = *MEMORY[0x1E695E480];
        v12 = CFArrayCreate(*MEMORY[0x1E695E480], &v18, v10, MEMORY[0x1E695E9C0]);
        if (v12)
        {
          v13 = v12;
          v14 = CFStringCreateByCombiningStrings(v11, v12, @"~");
          CFRelease(v13);
LABEL_26:
          v15 = *MEMORY[0x1E69E9840];
          return v14;
        }

LABEL_25:
        v14 = 0;
        goto LABEL_26;
      }
    }

    *(&v18 + v10++) = MappedRouteIdentifier;
    goto LABEL_23;
  }

  v17 = *MEMORY[0x1E69E9840];

  return CFRetain(cf);
}

float pvmGetVolumeLimitPref(uint64_t *a1)
{
  valuePtr = 1.0;
  v1 = *a1;
  v2 = 1.0;
  if (FigCFEqual())
  {
    v3 = *(sStorage + 32);
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"Headphone");
      if (Value)
      {
        if (CFNumberGetValue(Value, kCFNumberFloat32Type, &valuePtr))
        {
          return valuePtr;
        }

        else
        {
          return 1.0;
        }
      }
    }
  }

  return v2;
}

uint64_t CMSUtility_IsAllowedToStartPlaying(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (MX_CoreServices_GetDeviceManagementPolicyForBundleID([a1 displayID]) && !CMSMUtility_IsCarPlaySessionPresent())
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if ([a1 applicationState] != 8)
  {
    if ([a1 applicationState])
    {
      ApplicationStateForSession = CMSUtility_GetApplicationStateForSession(a1);
      CMSessionMgrSetApplicationStateFromPID([objc_msgSend(a1 "clientPID")], ApplicationStateForSession);
      if ([a1 applicationState] != 8)
      {
        if ([a1 applicationState])
        {
          if ([a1 applicationState] != 4)
          {
            if (dword_1EB75DE40)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (!CMSUtility_HasBackgroundEntitlement(a1) && !CMSUtility_IsReplayKitExtension(a1))
          {
            if (dword_1EB75DE40)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if ([a1 stopsWhenDeviceLocks])
          {
            if (dword_1EB75DE40)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if ([a1 mixesWithEveryone] && !cmsutility_hasAssertionsToStartMixablePlayback(a1))
          {
            if (dword_1EB75DE40)
            {
LABEL_23:
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

LABEL_24:
            result = 0;
            goto LABEL_25;
          }
        }
      }
    }
  }

  result = 1;
LABEL_25:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MX_CoreServices_GetDeviceManagementPolicyForBundleID(void *key)
{
  valuePtr[22] = *MEMORY[0x1E69E9840];
  valuePtr[0] = 0;
  if (key && gCoreServicesIsInitialized)
  {
    if (CFDictionaryContainsKey(gDeviceManagementPolicyCache, key))
    {
      Value = CFDictionaryGetValue(gDeviceManagementPolicyCache, key);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberLongType, valuePtr);
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    else
    {
      valuePtr[0] = [objc_msgSend(gLSApplicationProxyClass applicationProxyForIdentifier:{key), "deviceManagementPolicy"}];
      cmsmLSUpdateDeviceManagementCache(valuePtr[0]);
    }
  }

  result = valuePtr[0];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *MX_CoreServices_GetDMFPolicyString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"DMFPolicyUnknown";
  }

  else
  {
    return off_1E7AEAA90[a1];
  }
}

uint64_t CMSUtility_HasEntitlementForInterruptions(void *a1, __SecTask *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([a1 clientPriority] == 10)
  {
    if (a2)
    {
      v3 = SecTaskCopyValueForEntitlement(a2, @"com.apple.private.coremedia.interruptions.phonecallpriority.allow", 0);
      v4 = *MEMORY[0x1E695E4D0];
      if (FigCFEqual())
      {
        if (!dword_1EB75DE40)
        {
          v6 = 1;
          if (!v3)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        v6 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (v3)
        {
LABEL_12:
          CFRelease(v3);
        }
      }

      else
      {
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v6 = 0;
        if (v3)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

LABEL_13:
  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t cmsBeginInterruptionGuts(void *a1, void *a2, char a3)
{
  v240 = *MEMORY[0x1E69E9840];
  v6 = MXGetPerformanceLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B17A2000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Session activation", &unk_1B19E5B76, buf, 2u);
  }

  v169 = [+[MXSessionManager sharedInstance](MXSessionManager areBothBudsInEarForA2DPPort];
  v199 = 0;
  v198 = 0;
  v173 = [a1 currentlyControllingFlags];
  v7 = [a1 currentlyControllingFlags];
  v8 = [a1 hwControlFlags];
  v180 = [a1 hwControlFlags];
  v197 = 0;
  v196 = 0;
  cf = CMSMUtility_CopyCurrentRouteTypes();
  v9 = &off_1EB75E000;
  FigSimpleMutexLock();
  v168 = v7;
  v10 = (a3 & 8) != 0 || [a1 siriInputDeviceUUID] != 0;
  v170 = a2;
  [a1 setDontTakeOverHardware:v10];
  if ([a1 hasAudioCategory:@"Alarm"] && CMSMDeviceState_ItsAHomePod())
  {
    CMSUtility_UpdateAlarmBehaviorOnAccessory(a1);
  }

  CMSUtility_InterpretInterruptionStyle(a1, &v199 + 1, &v199, &v198);
  v11 = HIBYTE(v199);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v13 = [a1 timestampWhenMostRecentlyInterrupted];
  IsSiriRecording = CMSMUtility_IsSiriRecording();
  v15 = [+[MXSessionManager sharedInstance](MXSessionManager isSessionWithAudioCategoryActive:"isSessionWithAudioCategoryActive:", @"Alarm"];
  if (-[MXSessionManager wombatEnabled](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "wombatEnabled") && ([a1 prefersToPlayDuringWombat] & 1) == 0)
  {
    v21 = 0x1ED6D2000uLL;
    if (dword_1EB75DE40)
    {
      v202 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v27 = v202;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 0xFFFFFFFE;
      }

      if (v28)
      {
        v29 = [a1 clientName];
        *v207 = 136315394;
        v208 = "cmsShouldSkipBeginInterruption";
        v209 = 2114;
        v210 = v29;
        LODWORD(v165) = 22;
        p_valuePtr = v207;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (CMSMDeviceState_ItsAniPad())
    {
      if (CMSUtility_HasPhoneCallBehaviour(a1))
      {
        IsRecordingCategory = 1;
      }

      else
      {
        IsRecordingCategory = CMSMUtility_IsRecordingCategory([a1 audioCategory]);
      }

      -[MXSessionManager postDisallowedActivationDueToContinuityCaptureNotification:videoPlaybackWasIntended:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "postDisallowedActivationDueToContinuityCaptureNotification:videoPlaybackWasIntended:", IsRecordingCategory, [objc_msgSend(a1 audioMode]);
    }

    v40 = 4294951610;
    goto LABEL_325;
  }

  if (((UpTimeNanoseconds - v13) / 1000000000.0) <= 1.5)
  {
    v16 = [a1 timestampWhenMostRecentResumableEndInterruptionWasSent];
    if (v16 < [a1 timestampWhenMostRecentlyInterrupted] && !objc_msgSend(a1, "clientPriority") && (IsSiriRecording != 0 || v15))
    {
      if (dword_1EB75DE40)
      {
        v202 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v18 = v202;
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
          v20 = [a1 clientName];
          *v207 = 136315394;
          v208 = "cmsShouldSkipBeginInterruption";
          v209 = 2114;
          v210 = v20;
          LODWORD(v165) = 22;
          p_valuePtr = v207;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSUtility_SendSessionReinterruptionDisallowedEventToAudioStatistics(a1, IsSiriRecording);
      v40 = 4294954311;
      v21 = 0x1ED6D2000;
      goto LABEL_325;
    }
  }

  if (v11)
  {
    v21 = 0x1ED6D2000uLL;
    v22 = v170;
    if (v170)
    {
      if (!CMSUtility_IsAllowedToStopThisSession(a1, v170))
      {
        if (dword_1EB75DE40)
        {
          v202 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v24 = v202;
          if (os_log_type_enabled(v23, type))
          {
            v25 = v24;
          }

          else
          {
            v25 = v24 & 0xFFFFFFFE;
          }

          if (!v25)
          {
            goto LABEL_133;
          }

          goto LABEL_132;
        }

LABEL_134:
        v40 = 4294954313;
LABEL_325:
        v149 = 0;
        v150 = 0;
        goto LABEL_352;
      }
    }

    else if (!CMSUtility_IsAllowedToStopOthers(a1))
    {
      if (dword_1EB75DE40)
      {
        v202 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v49 = v202;
        if (os_log_type_enabled(v48, type))
        {
          v50 = v49;
        }

        else
        {
          v50 = v49 & 0xFFFFFFFE;
        }

        if (v50)
        {
          v51 = [a1 clientName];
          *v207 = 136315394;
          v208 = "cmsShouldSkipBeginInterruption";
          v209 = 2114;
          v210 = v51;
          LODWORD(v165) = 22;
          p_valuePtr = v207;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v40 = 4294954311;
      goto LABEL_325;
    }
  }

  else
  {
    v21 = 0x1ED6D2000;
    v22 = v170;
    if (([a1 isTheAssistant] & 1) == 0)
    {
      if (CMSMUtility_IsSiriRecording())
      {
        if (!CMSMUtility_DoesSiriAllowMixableAudioWhileRecording() && ([a1 doesntActuallyPlayAudio] & 1) == 0)
        {
          [a1 audioCategory];
          if (!FigCFEqual() && !CMSMDeviceState_ItsAHomePod())
          {
            if (dword_1EB75DE40)
            {
              v202 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v31 = v202;
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
                v33 = [a1 clientName];
                *v207 = 136315394;
                v208 = "cmsShouldSkipBeginInterruption";
                v209 = 2114;
                v210 = v33;
                LODWORD(v165) = 22;
                p_valuePtr = v207;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v40 = 4294954307;
            goto LABEL_325;
          }
        }
      }
    }
  }

  v183 = a1;
  if (!CMSMVAUtility_IsAdditiveRoutingEnabled() || ([objc_msgSend((v21 + 2272) "sharedInstance")] & 1) == 0)
  {
    if (v22)
    {
      if (!CMSUtility_HasHigherPriorityToInterrupt(a1, v22, v8))
      {
        if (!dword_1EB75DE40)
        {
          goto LABEL_134;
        }

        v202 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v35 = v202;
        if (os_log_type_enabled(v34, type))
        {
          v36 = v35;
        }

        else
        {
          v36 = v35 & 0xFFFFFFFE;
        }

        if (!v36)
        {
          goto LABEL_133;
        }

LABEL_132:
        v65 = [a1 clientName];
        *v207 = 136315394;
        v208 = "cmsShouldSkipBeginInterruption";
        v209 = 2114;
        v210 = v65;
        LODWORD(v165) = 22;
        p_valuePtr = v207;
        _os_log_send_and_compose_impl();
LABEL_133:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_134;
      }
    }

    else
    {
      v37 = [objc_msgSend((v21 + 2272) "sharedInstance")];
      memset(v217, 0, sizeof(v217));
      v38 = [v37 countByEnumeratingWithState:v217 objects:&valuePtr count:16];
      if (v38)
      {
        v39 = v38;
        v40 = 0;
        v41 = **&v217[1];
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (**&v217[1] != v41)
            {
              objc_enumerationMutation(v37);
            }

            if (!CMSUtility_HasHigherPriorityToInterrupt(a1, *(*(&v217[0] + 1) + 8 * i), v8))
            {
              if (dword_1EB75DE40)
              {
                v202 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v44 = v202;
                if (os_log_type_enabled(v43, type))
                {
                  v45 = v44;
                }

                else
                {
                  v45 = v44 & 0xFFFFFFFE;
                }

                if (v45)
                {
                  v46 = [v183 clientName];
                  *v207 = 136315394;
                  v208 = "cmsShouldSkipBeginInterruption";
                  v209 = 2114;
                  v210 = v46;
                  LODWORD(v165) = 22;
                  p_valuePtr = v207;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v40 = 4294954313;
                a1 = v183;
              }

              else
              {
                v40 = 4294954313;
              }
            }
          }

          v39 = [v37 countByEnumeratingWithState:v217 objects:&valuePtr count:16];
        }

        while (v39);

        v9 = &off_1EB75E000;
        v21 = 0x1ED6D2000;
        v22 = v170;
        if (v40)
        {
          goto LABEL_325;
        }
      }

      else
      {
      }
    }
  }

  *v200 = 0;
  v52 = qword_1EB75E090;
  v53 = *MEMORY[0x1E695E480];
  v54 = [a1 audioCategory];
  v55 = [a1 audioMode];
  v56 = *(*(CMBaseObjectGetVTable() + 24) + 16);
  if (v56)
  {
    v56(v52, 0x1F289BAB0, v53, v54, v55, 0, v200);
  }

  if ([a1 hasInput] && *v200 == *MEMORY[0x1E695E4C0] && (objc_msgSend(a1, "hwControlFlags") & 2) != 0)
  {
    v21 = 0x1ED6D2000;
    if (dword_1EB75DE40)
    {
      v202 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v67 = v202;
      if (os_log_type_enabled(v66, type))
      {
        v68 = v67;
      }

      else
      {
        v68 = v67 & 0xFFFFFFFE;
      }

      if (v68)
      {
        v69 = [a1 clientName];
        if ([a1 hasInput])
        {
          v70 = "YES";
        }

        else
        {
          v70 = "NO";
        }

        if (*v200 == *MEMORY[0x1E695E4D0])
        {
          v71 = "YES";
        }

        else
        {
          v71 = "NO";
        }

        v72 = [a1 hwControlFlags];
        *v207 = 136316162;
        v208 = "cmsShouldSkipBeginInterruption";
        v209 = 2114;
        v210 = v69;
        v211 = 2082;
        v212 = v70;
        v21 = 0x1ED6D2000;
        v213 = 2082;
        v214 = v71;
        v215 = 1024;
        v216 = v72;
        LODWORD(v165) = 48;
        p_valuePtr = v207;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v40 = 4294954310;
    goto LABEL_325;
  }

  v21 = 0x1ED6D2000uLL;
  if (CMSMDeviceState_ItsAHomePod())
  {
    if (CMSMUtility_IsPhoneCallActive() && ([a1 hasPhoneCallBehavior] & 1) == 0)
    {
      [a1 audioCategory];
      if (FigCFEqual() || ([a1 audioCategory], FigCFEqual()) || (objc_msgSend(a1, "audioCategory"), FigCFEqual()) || (objc_msgSend(a1, "audioCategory"), FigCFEqual()) || -[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", objc_msgSend(a1, "audioCategory")))
      {
        if (!dword_1EB75DE40)
        {
          goto LABEL_134;
        }

        v202 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v63 = v202;
        if (os_log_type_enabled(v62, type))
        {
          v64 = v63;
        }

        else
        {
          v64 = v63 & 0xFFFFFFFE;
        }

        if (!v64)
        {
          goto LABEL_133;
        }

        goto LABEL_132;
      }
    }
  }

  if (CMSUtility_IsRemoteInterruptionRequired(a1))
  {
    v57 = CMSM_IDSClient_NotifyRemote_InterruptionStartAndCopyIdentifier(a1);
    [a1 setWaitingForRemoteInterruptionDoneIdentifier:v57];
    [a1 setTriggeredRemoteInterruption:1];
    [a1 setNeedToEndInterruption:1];
  }

  v58 = *MEMORY[0x1E69626C0];
  if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1))
  {
    if (qword_1EB75E178)
    {
      if (!byte_1EB75E180 && CMSUtility_PlaysToCarMainAudio(a1) && ([a1 isCarSession] & 1) == 0)
      {
        v59 = cmsmRequestCarMainAudioForSession(a1);
        if (a1)
        {
          if (v59)
          {
            if (CMSMDeviceState_ScreenIsBlanked())
            {
              if (!CMSMDeviceState_ScreenIsBlankedByProximitySensor())
              {
                [a1 audioCategory];
                if (FigCFEqual() || ([a1 audioCategory], FigCFEqual()))
                {
                  if (!byte_1EB75E180)
                  {
                    [a1 setWillSetScreenDarkModeOnVAD:1];
                  }
                }
              }
            }

            if ([+[MXSessionManager starkMainAudioIsOwnedByiOSButBorrowedByCar] sharedInstance]
            {
              [qword_1EB75E170 setHandsOverInterruptionsToInterruptor:1];
            }

            if (CMSUtility_GetIsActive(qword_1EB75E170))
            {
              cmsSetIsActive(qword_1EB75E170, 0, 0);
            }

            if (CMSUtility_ShouldSessionToInterruptHandOverInterruptions(qword_1EB75E170, a1))
            {
              CMSMUtility_HandOverInterruptionsToSession(qword_1EB75E170, a1);
            }

            v60 = +[MXSessionManager sharedInstance];
            if ([(MXSessionManager *)v60 shouldResetWaitingToResume:qword_1EB75E170 currentSession:a1])
            {
              v61 = +[MXSessionManager sharedInstance];
              [(MXSessionManager *)v61 resetWaitingToResume:qword_1EB75E170];
            }
          }

          else if (dword_1EB75DE40)
          {
            v73 = CMSMUtility_CopyCurrentRouteTypes();
            if (v73)
            {
              CFRelease(v73);
            }
          }
        }
      }
    }
  }

  if (!v22 || v22 == a1 || ([v22 isActive] & 1) == 0)
  {
    v74 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    v75 = [v74 countByEnumeratingWithState:&v192 objects:v206 count:16];
    if (v75)
    {
      v76 = v75;
      v77 = *v193;
LABEL_159:
      v78 = 0;
      while (1)
      {
        if (*v193 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v79 = *(*(&v192 + 1) + 8 * v78);
        if (v79 != a1 && ([v79 isActive] & 1) != 0)
        {
          break;
        }

        if (v76 == ++v78)
        {
          v76 = [v74 countByEnumeratingWithState:&v192 objects:v206 count:16];
          if (!v76)
          {
            goto LABEL_166;
          }

          goto LABEL_159;
        }
      }

      v21 = 0x1ED6D2000;
    }

    else
    {
LABEL_166:

      if (([a1 dontTakeOverHardware] & 1) == 0 && CMSUtility_DoesSessionWantToPauseSpokenAudio(a1) && objc_msgSend(a1, "waitingToSendEndInterruptionToSpokenAudioApp"))
      {
        [a1 setDontTakeOverHardware:1];
        v80 = [+[MXSessionManager sharedInstance](MXSessionManager copyInterruptedSessions:"copyInterruptedSessions:", a1];
        v188 = 0u;
        v189 = 0u;
        v190 = 0u;
        v191 = 0u;
        v81 = [v80 countByEnumeratingWithState:&v188 objects:v205 count:16];
        if (v81)
        {
          v82 = v81;
          v83 = *v189;
          while (2)
          {
            for (j = 0; j != v82; ++j)
            {
              if (*v189 != v83)
              {
                objc_enumerationMutation(v80);
              }

              v85 = *(*(&v188 + 1) + 8 * j);
              if (CMSUtility_IsDoingSpokenAudio(v85))
              {
                CMSUtility_GetCurrentAudioDestination(v85);
                CMSUtility_GetCurrentAudioDestination(a1);
                if (!FigCFEqual())
                {
                  [a1 setDontTakeOverHardware:0];
                  goto LABEL_183;
                }
              }
            }

            v82 = [v80 countByEnumeratingWithState:&v188 objects:v205 count:16];
            if (v82)
            {
              continue;
            }

            break;
          }
        }

LABEL_183:

        v22 = v170;
      }

      cmsSetIsActive(a1, 1, 0);
      v21 = 0x1ED6D2000uLL;
      if (([a1 dontTakeOverHardware] & 1) == 0)
      {
        cmsTakeControl(a1, HIWORD(v180) | v8);
      }

      if (!FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1))
      {
        v40 = 0;
        goto LABEL_325;
      }
    }
  }

  [objc_msgSend((v21 + 2272) "sharedInstance")];
  [a1 audioCategory];
  allocator = v53;
  v86 = FigCFEqual() && !CMSMDeviceState_RingerIsOn(1) && CMSMUtility_GetNumberOfCurrentOutputPorts() == 0;
  if (!HIBYTE(v199) && (v86 & 1) == 0 && !CMSUtility_DoesSessionWantToPauseSpokenAudio(a1) && ([a1 isTheAssistant] & 1) == 0 && (objc_msgSend(a1, "prefersToInterruptActiveRecordingSessions") & 1) == 0 && (!CMSMUtility_IsRecordingCategory(objc_msgSend(a1, "audioCategory")) || !objc_msgSend(objc_msgSend((v21 + 2272), "sharedInstance"), "doesAnyActiveSessionExistWhichPrefersToBeInterruptedByNextRecordingClient:", a1)))
  {
    LOBYTE(v87) = 0;
    goto LABEL_311;
  }

  if ([objc_msgSend(objc_msgSend((v21 + 2272) "sharedInstance")] >= 0x21)
  {
    v87 = MEMORY[0x1B2733FE0](allocator, 16 * [objc_msgSend(objc_msgSend((v21 + 2272) "sharedInstance")], 0x108004022EE8E53, 0);
    if (!v87)
    {
      goto LABEL_311;
    }

    if (v22)
    {
      goto LABEL_201;
    }

LABEL_203:
    v88 = [objc_msgSend((v21 + 2272) "sharedInstance")];
    v184 = 0u;
    v185 = 0u;
    v186 = 0u;
    v187 = 0u;
    v89 = [v88 countByEnumeratingWithState:&v184 objects:v203 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = *v185;
      do
      {
        for (k = 0; k != v90; ++k)
        {
          if (*v185 != v91)
          {
            objc_enumerationMutation(v88);
          }

          cmsAddToListOfSessionsToInterruptIfNecessary(a1, *(*(&v184 + 1) + 8 * k), v86, 2, v87, &v197, &v196);
        }

        v90 = [v88 countByEnumeratingWithState:&v184 objects:v203 count:16];
      }

      while (v90);
    }

    goto LABEL_211;
  }

  v87 = buf;
  if (!v22)
  {
    goto LABEL_203;
  }

LABEL_201:
  cmsAddToListOfSessionsToInterruptIfNecessary(a1, v22, v86, 1, v87, &v197, &v196);
LABEL_211:
  v93 = v9[7];
  FigSimpleMutexUnlock();
  if (v197 <= 0)
  {
    CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange();
    goto LABEL_308;
  }

  v176 = v197;
  v94 = 0;
  v95 = (v87 + 9);
  v175 = *MEMORY[0x1E695E4C0];
  v174 = v87;
  v171 = v86;
  do
  {
    v179 = v94;
    v181 = v95;
    v96 = *(v95 - 9);
    v97 = *(v95 - 1);
    v178 = *v95;
    v98 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
    v99 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppDisplayID];
    if ([objc_msgSend(a1 "clientPID")] == v98 || (objc_msgSend(objc_msgSend(a1, "displayID"), "isEqualToString:", v99) & 1) != 0 || CMSUtility_IsSessionTheDefaultMusicApp(a1))
    {
      v100 = 1;
LABEL_217:
      v177 = v100;
      goto LABEL_218;
    }

    if (CMSMUtility_IAPAppProcessIDIsUsingAccessory([a1 displayID]))
    {
      v100 = CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1) != 0;
      goto LABEL_217;
    }

    v177 = 0;
LABEL_218:
    v182 = [v96 copyCurrentActiveRoutes];
    if ([objc_msgSend(v96 "clientPID")] == v98 || objc_msgSend(objc_msgSend(v96, "displayID"), "isEqualToString:", v99))
    {
      if ([v96 isPlaying])
      {
        [a1 setNowPlayingAppWasStoppedOnMostRecentActivation:1];
        [v96 audioMode];
        if (FigCFEqual())
        {
          [a1 setNowPlayingAppThatWasStoppedOnMostRecentActivationWasDoingSpokenAudio:1];
        }
      }
    }

    if (v86)
    {
      valuePtr = 0;
      v101 = CFGetAllocator(a1);
      v102 = CFNumberCreate(v101, kCFNumberFloat32Type, &valuePtr);
    }

    else
    {
      v102 = CMSUtility_CopyFadeDuration(a1, 0, 0);
    }

    v103 = v102;
    v104 = MXGetSessionLog();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v105 = v97;
      v106 = v103;
      v107 = [a1 clientName];
      v108 = [a1 clientPriority];
      v109 = [a1 audioCategory];
      v110 = [v96 clientName];
      v111 = [v96 clientPriority];
      v112 = [v96 audioCategory];
      v113 = [v96 hasPhoneCallBehavior];
      v114 = "";
      if (v113)
      {
        v115 = [v96 isActive];
        v114 = "";
        if (v115)
        {
          v114 = " (PHONE CALL)";
        }
      }

      valuePtr = 136449026;
      v219 = "-CMSessionMgr-";
      v220 = 2082;
      v221 = "cmsInterruptSession";
      v222 = 1024;
      *v223 = 3091;
      *&v223[4] = 2114;
      *&v223[6] = v107;
      v224 = 2048;
      v225 = v183;
      v226 = 1024;
      v227 = v108;
      v228 = 2114;
      v229 = v109;
      v230 = 2114;
      v231 = v110;
      v232 = 2048;
      v233 = v96;
      v234 = 1024;
      v235 = v111;
      v236 = 2114;
      v237 = v112;
      a1 = v183;
      v238 = 2082;
      v239 = v114;
      _os_log_impl(&dword_1B17A2000, v104, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i '%{public}@'[%p] with priority [%d] and category '%{public}@' INTERRUPTING '%{public}@'[%p] with priority [%d] and category '%{public}@'%{public}s.", &valuePtr, 0x6Eu);
      v21 = 0x1ED6D2000uLL;
      v87 = v174;
      v103 = v106;
      v97 = v105;
      v86 = v171;
    }

    [a1 audioCategory];
    if (CMSMUtility_IsVoiceCallCategory() && CMSMUtility_IsPlayAndRecordCategory([v96 audioCategory]) && (objc_msgSend(v96, "audioMode"), FigCFEqual()) || (objc_msgSend(v96, "audioCategory"), CMSMUtility_IsVoiceCallCategory()) && CMSMUtility_IsPlayAndRecordCategory(objc_msgSend(a1, "audioCategory")) && (objc_msgSend(a1, "audioMode"), FigCFEqual()))
    {
      [a1 setOverridePortsList:0];
      if ([v96 overridePortsList])
      {
        [a1 setOverridePortsList:{objc_msgSend(v96, "overridePortsList")}];
      }
    }

    [a1 setStarkBorrowCount:{objc_msgSend(v96, "starkBorrowCount") + objc_msgSend(a1, "starkBorrowCount")}];
    [v96 setStarkBorrowCount:0];
    v116 = v182;
    if (CMSUtility_ShouldSessionToInterruptHandOverInterruptions(v96, a1))
    {
      CMSMUtility_HandOverInterruptionsToSession(v96, a1);
    }

    if (CMSUtility_ShouldSessionToInterruptHandOverDucking(v96, a1))
    {
      v117 = CMSUtility_CopySessionsToDuck(1, 0, a1);
      [objc_msgSend((v21 + 2272) "sharedInstance")];
    }

    [v96 setWasInterruptedWhileSuspended:{objc_msgSend(v96, "applicationState") == 2}];
    [v96 setWasInterruptedWhileRecording:{objc_msgSend(v96, "isRecording")}];
    [v96 setTimestampWhenMostRecentResumableEndInterruptionWasSent:0];
    [objc_msgSend((v21 + 2272) "sharedInstance")];
    CMSUtility_ResetIsPlayingStates(v96);
    [v96 setInterruptingSession:a1];
    v118 = [objc_msgSend((v21 + 2272) "sharedInstance")];
    v119 = [a1 clientName];
    v120 = [a1 displayID];
    if (v118)
    {
      v121 = &unk_1F28AF788;
    }

    else
    {
      v121 = 0;
    }

    CMSUtility_PostInterruptionCommandNotification(v96, 0, v119, 0, 0, v103, v121, v120);
    [v96 setWasInterruptedByNowPlayingApp:{(objc_msgSend(v96, "applicationState") == 8) & v177}];
    [v96 setTimestampWhenMostRecentlyInterrupted:FigGetUpTimeNanoseconds()];
    if (![v96 extendBackgroundAppAssertionTimer] && objc_msgSend(v96, "playbackAssertionRef"))
    {
      CMSMSleep_ReleasePlaybackProcessAssertion(v96);
    }

    if (v178 | v97 || CMSUtility_IsSessionAlwaysExpectingEndInterruption(v96, v122))
    {
      [v96 setWasMutedBeforeInterruption:{objc_msgSend(v96, "userMuted")}];
      MXCoreSessionSetProperty(v96, @"UserMuted");
      v123 = FigEndpointCentralEntityOwnsResource(qword_1EB75E178, 0x1F288E5F0, @"MainAudio");
      if (CMSMUtility_IsCarPlaySessionPresent() && v123 && [a1 isCarSession])
      {
        if (dword_1EB75DE40)
        {
          *v207 = 0;
          v200[0] = OS_LOG_TYPE_DEFAULT;
          v124 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v125 = *v207;
          if (os_log_type_enabled(v124, v200[0]))
          {
            v126 = v125;
          }

          else
          {
            v126 = v125 & 0xFFFFFFFE;
          }

          if (v126)
          {
            LODWORD(v217[0]) = 136315138;
            *(v217 + 4) = "cmsInterruptSession";
            LODWORD(v165) = 12;
            p_valuePtr = v217;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [v96 setWaitingToResume:{0, p_valuePtr, v165}];
      }

      else
      {
        [v96 setWaitingToResume:1];
        if (CMSMUtility_IsCarPlaySessionPresent())
        {
          if ([v96 hasPhoneCallBehavior])
          {
            [objc_msgSend((v21 + 2272) "sharedInstance")];
            if (dword_1EB75DE40)
            {
              v127 = v103;
              *v207 = 0;
              v200[0] = OS_LOG_TYPE_DEFAULT;
              v128 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v129 = *v207;
              if (os_log_type_enabled(v128, v200[0]))
              {
                v130 = v129;
              }

              else
              {
                v130 = v129 & 0xFFFFFFFE;
              }

              if (v130)
              {
                v131 = [v96 clientName];
                v132 = [a1 clientName];
                LODWORD(v217[0]) = 136315650;
                *(v217 + 4) = "cmsInterruptSession";
                WORD6(v217[0]) = 2114;
                *(v217 + 14) = v131;
                WORD3(v217[1]) = 2114;
                *(&v217[1] + 1) = v132;
                LODWORD(v165) = 32;
                p_valuePtr = v217;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v87 = v174;
              v103 = v127;
            }
          }
        }
      }

      [v96 setActiveRoutesWhenInterrupted:{0, p_valuePtr, v165}];
      if (MX_FeatureFlags_IsHighQualityLocalRecordingEnabled() && (([v96 shadowingAudioSessionOptions] & 4) != 0 || (objc_msgSend(v96, "shadowingAudioSessionOptions") & 2) != 0))
      {
        v133 = [objc_msgSend((v21 + 2272) "sharedInstance")];
        v134 = v133;
        if (v133 && ([v133 isActive] & 1) == 0 && objc_msgSend(v134, "interruptingSession") == a1)
        {
          [v96 setActiveRoutesWhenInterrupted:{objc_msgSend(v134, "activeRoutesWhenInterrupted")}];
          if (dword_1EB75DE40)
          {
            v138 = v103;
            *v207 = 0;
            v200[0] = OS_LOG_TYPE_DEFAULT;
            v139 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v140 = *v207;
            if (os_log_type_enabled(v139, v200[0]))
            {
              v141 = v140;
            }

            else
            {
              v141 = v140 & 0xFFFFFFFE;
            }

            if (v141)
            {
              v142 = [v134 activeRoutesWhenInterrupted];
              LODWORD(v217[0]) = 136315394;
              *(v217 + 4) = "cmsInterruptSession";
              WORD6(v217[0]) = 2114;
              *(v217 + 14) = v142;
              LODWORD(v166) = 22;
              v164 = v217;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v87 = v174;
            v103 = v138;
          }
        }

        else
        {
          [v96 setActiveRoutesWhenInterrupted:v182];
        }

        v116 = v182;
      }

      else
      {
        [v96 setActiveRoutesWhenInterrupted:v182];
      }

      [a1 setNeedToEndInterruption:{1, v164, v166}];
    }

    if ([a1 isIDSMXCoreSession])
    {
      v135 = 0;
    }

    else
    {
      v135 = [a1 isHardwareSafetySession] ^ 1;
    }

    [v96 setDoNotResetAudioCategoryOnNextInactive:v135];
    cmsSetIsActive(v96, 0, a1);
    if (MX_FeatureFlags_IsHighQualityLocalRecordingEnabled())
    {
      -[MXSessionManagerIndependentAudioResource postStopCommandToShadowingSessionsForSession:withShadowingOptions:interruptor:waitingToResume:](+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource, "sharedInstance"), "postStopCommandToShadowingSessionsForSession:withShadowingOptions:interruptor:waitingToResume:", v96, 2, a1, [v96 waitingToResume]);
      -[MXSessionManagerIndependentAudioResource postStopCommandToShadowingSessionsForSession:withShadowingOptions:interruptor:waitingToResume:](+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource, "sharedInstance"), "postStopCommandToShadowingSessionsForSession:withShadowingOptions:interruptor:waitingToResume:", v96, 4, a1, [v96 waitingToResume]);
    }

    if (qword_1EB75E170 && [v96 duckCommandSentToCarSession])
    {
      v136 = -[MXDuckingSource initWithType:ID:duckVolume:duckFadeDuration:]([MXDuckingSource alloc], "initWithType:ID:duckVolume:duckFadeDuration:", 2, [objc_msgSend(v96 "ID")], 0.0, 0.0);
      v137 = [v21 + 2272 sharedInstance];
      [v137 unduckVolume:qword_1EB75E170 sessionCausingUnduck:v96 duckingSource:v136];

      [v96 setDuckCommandSentToCarSession:0];
    }

    [objc_msgSend((v21 + 2272) "sharedInstance")];
    CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded();
    if (v103)
    {
      CFRelease(v103);
    }

    if (v116)
    {
      CFRelease(v116);
    }

    v95 = v181 + 16;
    v94 = v179 + 1;
  }

  while (v179 + 1 < v176);
  CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange();
  v143 = v87;
  v9 = &off_1EB75E000;
  v22 = v170;
  v144 = v176;
  do
  {

    *v143 = 0;
    v143 += 2;
    --v144;
  }

  while (v144);
LABEL_308:
  if (v87 != buf)
  {
    CFAllocatorDeallocate(allocator, v87);
  }

  LOBYTE(v87) = 1;
LABEL_311:
  v145 = [objc_msgSend((v21 + 2272) "sharedInstance")];
  if ([a1 isTheAssistant] && objc_msgSend(v145, "isActive"))
  {
    CMSMUtility_HandOverInterruptionsToSession(v145, a1);
  }

  if ([a1 isCarSession] && dword_1EB75E168)
  {
    if (CMSMUtility_IsCarPlayVideoActive())
    {
      if (dword_1EB75DE40)
      {
        LODWORD(v217[0]) = 0;
        v207[0] = OS_LOG_TYPE_DEFAULT;
        v146 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v147 = v217[0];
        if (os_log_type_enabled(v146, v207[0]))
        {
          v148 = v147;
        }

        else
        {
          v148 = v147 & 0xFFFFFFFE;
        }

        if (v148)
        {
          valuePtr = 136315138;
          v219 = "cmsBeginInterruptionGuts";
          LODWORD(v165) = 12;
          p_valuePtr = &valuePtr;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      vaeMakePortRoutable(dword_1EB75E168, 0, 0, qword_1EB75E190);
    }
  }

  v151 = CMSUtility_CopySessionsToDuck(v199, v22, a1);
  v149 = v151;
  if (v151)
  {
    CFArrayGetCount(v151);
    [a1 setNeedToEndInterruption:1];
  }

  cmsSetIsActive(a1, 1, 0);
  if ([a1 dontTakeOverHardware])
  {
    v152 = 0;
  }

  else
  {
    v152 = cmsTryToTakeControl(a1);
  }

  if (CMSUtility_IsSharePlayCapableMediaSession(a1) && CMSMUtility_IsSharePlayCapableCallSessionActive() && ([a1 currentlyControllingFlags] & 0x10) == 0)
  {
    CMSMUtility_SetMediaPlaybackVolumeToCurrentPhoneCallVolume();
    CMSMUtility_TransferVolumeControlFlagToSharePlayCapableMediaSession();
  }

  if ((v152 & ~v168) != 0)
  {
    [a1 setNeedToEndInterruption:1];
  }

  if ((v87 & 1) == 0)
  {
    v153 = v9[7];
    FigSimpleMutexUnlock();
  }

  if ([objc_msgSend((v21 + 2272) sharedInstance])
  {
    if (dword_1EB75DE40)
    {
      LODWORD(v217[0]) = 0;
      v207[0] = OS_LOG_TYPE_DEFAULT;
      v154 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v155 = v217[0];
      if (os_log_type_enabled(v154, v207[0]))
      {
        v156 = v155;
      }

      else
      {
        v156 = v155 & 0xFFFFFFFE;
      }

      if (v156)
      {
        v157 = [a1 clientName];
        valuePtr = 136315650;
        v219 = "cmsBeginInterruptionGuts";
        v220 = 2114;
        v221 = v157;
        v222 = 2048;
        *v223 = a1;
        LODWORD(v165) = 32;
        p_valuePtr = &valuePtr;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v21 = 0x1ED6D2000uLL;
    }

    [objc_msgSend((v21 + 2272) sharedInstance];
    [objc_msgSend((v21 + 2272) "sharedInstance")];
    [objc_msgSend((v21 + 2272) "sharedInstance")];
  }

  else if (v149)
  {
    [objc_msgSend((v21 + 2272) "sharedInstance")];
  }

  v40 = 0;
  v150 = 1;
LABEL_352:
  if ([objc_msgSend((v21 + 2272) sharedInstance] && objc_msgSend(a1, "needToEndInterruption"))
  {
    [a1 setAreBothBudsInEarForA2DPPortBeforeInterrupting:v169];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v149)
  {
    CFRelease(v149);
  }

  if ((v173 & 2) == 0 && ([a1 currentlyControllingFlags] & 2) != 0)
  {
    if ((v150 & 1) == 0)
    {
      v159 = v9[7];
      FigSimpleMutexUnlock();
    }

    cmsmUpdatePickableRouteDescriptionLists(1);
  }

  else if ((v150 & 1) == 0)
  {
    v158 = v9[7];
    FigSimpleMutexUnlock();
  }

  CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded();
  v160 = MXGetPerformanceLog();
  if (os_signpost_enabled(v160))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B17A2000, v160, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Session activation", &unk_1B19E5B76, buf, 2u);
  }

  v161 = *MEMORY[0x1E69E9840];
  return v40;
}

id CMSUtility_CopyBundleID(void *a1)
{
  if (![a1 isMemberOfClass:objc_opt_class()] || (v2 = objc_msgSend(objc_msgSend(objc_msgSend(a1, "hostProcessAttribution"), "firstObject"), "valueForKey:", @"BundleID")) == 0 && (v2 = objc_msgSend(objc_msgSend(-[MXMediaEndowmentManager getHostProcessAttributions:](+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager, "sharedInstance"), "getHostProcessAttributions:", objc_msgSend(objc_msgSend(a1, "clientPID"), "unsignedIntValue")), "firstObject"), "valueForKey:", @"BundleID")) == 0)
  {
    v2 = [a1 displayID];
  }

  return v2;
}

uint64_t MX_FeatureFlags_IsHighQualityLocalRecordingEnabled()
{
  if (MX_FeatureFlags_IsHighQualityLocalRecordingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsHighQualityLocalRecordingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsHighQualityLocalRecordingEnabled_sIsHighQualityLocalRecordingEnabled;
}

uint64_t CMSMVAUtility_WillSessionWithDescriptionRouteToOnDemandVADOnActivation(uint64_t a1, _BYTE *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{a1, 0}];
    [v4 setObject:v5 forKey:0x1F28974D0];
    *&inAddress.mSelector = *"srdobolg";
    inAddress.mElement = 0;
    ioDataSize = 4;
    outData = 0;
    PropertyData = AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8u, v4, &ioDataSize, &outData);
    if (!PropertyData)
    {
      *a2 = outData;
    }
  }

  else
  {
    ioDataSize = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    PropertyData = 4294954316;
  }

  v8 = *MEMORY[0x1E69E9840];
  return PropertyData;
}

uint64_t CMSUtility_HasHigherPriorityToInterrupt(void *a1, void *a2, int a3)
{
  valuePtr[35] = *MEMORY[0x1E69E9840];
  if ([a2 isActive] && (v6 = objc_msgSend(a2, "clientPriority"), v6 > objc_msgSend(a1, "clientPriority")) && (objc_msgSend(a2, "currentlyControllingFlags") & a3) != 0)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = [objc_msgSend(a2 reporterIDs];
    if (result)
    {
      valuePtr[0] = 1;
      ValueAtIndex = CFArrayGetValueAtIndex([a2 reporterIDs], 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, valuePtr);
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      [a1 displayID];
      FigCFDictionarySetValue();
      [a2 displayID];
      FigCFDictionarySetValue();
      off_1EB75E028(valuePtr[0], Mutable, 11, 6);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      result = 0;
    }
  }

  else
  {
    result = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *vaemSystemHasAudioInputDeviceForRouteConfiguration(int a1, int a2)
{
  result = vaemCopyConnectedPortsListForRouteConfiguration(a1, a2, 0, 0, 1);
  if (result)
  {
    v3 = result;
    Count = CFArrayGetCount(result);
    CFRelease(v3);
    return (Count > 0);
  }

  return result;
}

uint64_t CMSUtility_IsRemoteInterruptionRequired(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  result = CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote();
  if (!result)
  {
    goto LABEL_17;
  }

  result = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
  if (!result)
  {
    goto LABEL_17;
  }

  if (!CMSUtility_IsSessionEligibleToPlayOverSharedAudioRoute(a1, 0))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_16;
  }

  LocalSessionPriority = CMSM_GetLocalSessionPriority(a1, 0);
  HighestRemotePlayingSessionPriority = CMSM_GetHighestRemotePlayingSessionPriority();
  if ([a1 isIDSMXCoreSession])
  {
LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  result = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote() && LocalSessionPriority > 0x64 && LocalSessionPriority >= HighestRemotePlayingSessionPriority;
LABEL_17:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void cmsSetIsActive(void *a1, int a2, void *a3)
{
  v73 = *MEMORY[0x1E69E9840];
  if (([a1 isPlaying] & 1) == 0 && (objc_msgSend(a1, "wasActiveWhenDeviceOwnershipRelinquished") & 1) == 0)
  {
    if (dword_1EB75DE40)
    {
      v51 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [a1 setIsPlayingStartTime:{0, v41, v43}];
    [a1 setIsPlayingStopTime:0];
  }

  if ([a1 isActive] != a2)
  {
    v7 = [a1 isActive];
    v8 = MXGetSessionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [a1 clientName];
      v46 = [a1 audioCategory];
      v45 = [a1 audioMode];
      v9 = a3;
      if (CMSUtility_SessionMixesWithOthers(a1))
      {
        v10 = "Mixable";
      }

      else
      {
        v10 = "NonMixable";
      }

      ContextString = FigRoutingManagerContextUtilities_GetContextString([a1 routingContextUUID]);
      v12 = [a1 siriInputDeviceUUID];
      if (a2)
      {
        v13 = "";
      }

      else
      {
        v13 = "in";
      }

      v14 = a2;
      if (CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1))
      {
        v15 = "YES";
      }

      else
      {
        v15 = "NO";
      }

      v16 = [a1 isSharedAVAudioSessionInstance];
      *buf = 136449026;
      *&buf[4] = "-CMSessionMgr-";
      *&buf[12] = 2082;
      *&buf[14] = "cmsSetIsActive";
      v53 = 1024;
      v54 = 5522;
      v55 = 2114;
      v56 = v47;
      v57 = 2114;
      v58 = v46;
      v59 = 2114;
      v60 = v45;
      v61 = 2082;
      v62 = v10;
      a3 = v9;
      v63 = 2114;
      v64 = ContextString;
      v65 = 2114;
      v66 = v12;
      v67 = 2082;
      v68 = v13;
      v69 = 2082;
      v70 = v15;
      a2 = v14;
      v71 = 1024;
      v72 = v16;
      _os_log_impl(&dword_1B17A2000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i '%{public}@' with [%{public}@/%{public}@] [%{public}s] [%{public}@] siriEndpointID: %{public}@ going %{public}sactive NowPlayingApp:%{public}s IsSharedAVAudioSessionInstance:%{BOOL}u", buf, 0x72u);
    }

    if ([a1 sessionAssertionAuditTimer])
    {
      dispatch_source_cancel([a1 sessionAssertionAuditTimer]);
      [a1 setSessionAssertionAuditTimer:0];
    }

    if (a2)
    {
      [a1 setIsActive:1];
      [a1 setDoNotResetAudioCategoryOnNextInactive:0];
      [a1 setDoNotNotifyOtherSessionsOnNextInactive:0];
      if ((v7 & 1) == 0)
      {
        cmsVibrateForSession(a1, 1);
      }

      [a1 setInterruptingSession:0];
      [a1 setWaitingToResume:0];
      [a1 setWasInterruptedWhileSuspended:0];
      CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded();
      if (MX_FeatureFlags_IsSmartRoutingOnActivationEnabled())
      {
        CMSUtility_RouteToPreferredRouteIfRequired(a1, 0, 2);
      }

      if ([a1 hasPhoneCallBehavior])
      {
        [+[MXSessionManager sharedInstance](MXSessionManager setPhoneCallIsAboutToGoActiveOverCarPlay:"setPhoneCallIsAboutToGoActiveOverCarPlay:", 0];
        if (dword_1EB75DE40)
        {
          v51 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      if (!MX_FeatureFlags_IsSessionBasedMutingEnabled() && MX_FeatureFlags_IsCallManagementMuteControlEnabled())
      {
        [+[MXSessionManager sharedInstance](MXSessionManager replaceMutedBundleIDwithHostID];
        [+[MXSessionManager sharedInstance](MXSessionManager applyUplinkMute:"applyUplinkMute:", a1];
        [+[MXSessionManager sharedInstance](MXSessionManager setUplinkMutedBundleID:"setUplinkMutedBundleID:", 0];
      }

      if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy() && [a1 isOutputMuted])
      {
        [+[MXSessionManager sharedInstance](MXSessionManager muteOutputForSession:"muteOutputForSession:", a1];
      }

      [+[MXSessionManager sharedInstance](MXSessionManager updateSupportedOutputChannelLayouts:v41];
      CMSUtility_CreateReporterIDIfNeeded(a1);
      if ([a1 hasAudioMode:@"VoicePrompt"])
      {
        if ([a1 sessionDeactivateTimer])
        {
          dispatch_source_cancel([a1 sessionDeactivateTimer]);
        }

        [objc_msgSend(MEMORY[0x1E695DF00] "now")];
        v20 = v19;
        v21 = [a1 deactivateTimerDelay];
        v22 = MXGetSerialQueue();
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __cmsSetIsActive_block_invoke;
        v49[3] = &unk_1E7AEBCA0;
        v49[4] = a1;
        v49[5] = v20;
        [a1 setSessionDeactivateTimer:{MXDispatchUtilityCreateOneShotTimer(v21, "cmsSetIsActive", "CMSessionManager.m", 5611, 0, 0, v22, v49, 0, 0)}];
      }

LABEL_79:
      v33 = [a1 isActive];
      v34 = [a1 activeOSTransaction];
      if (v33)
      {
        if (!v34)
        {
          if ([a1 clientName])
          {
            v35 = [a1 clientName];
          }

          else
          {
            v35 = @"MXSessionManager";
          }

          if ([a1 displayID])
          {
            v36 = [a1 displayID];
          }

          else
          {
            v36 = @"MXSessionDefaultID";
          }

          v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@", v35, v36];
          [v37 UTF8String];
          [objc_msgSend(a1 "clientPID")];
          [a1 setActiveOSTransaction:FigOSTransactionCreate()];
        }

        if (MX_FeatureFlags_IsSessionBasedMutingEnabled())
        {
          CMSMNotificationUtility_PostIsRecordingMutedDidChange(a1);
        }
      }

      else
      {
        if (v34)
        {
        }

        [a1 setActiveOSTransaction:0];
      }

      [+[MXSessionManager sharedInstance](MXSessionManager updateSomeAirPlayCapableVideoClientIsActive];
      CMSMUtility_UpdateVoiceAssistantActiveStateForCarPlay(a1);
      CMSMUtility_UpdatePlayAndRecordAppSpeechState(a3);
      CMSMNotificationUtility_PostVoicePromptStyleDidChange();
      if (a1)
      {
        CFRetain(a1);
      }

      v38 = MXGetNotificationSenderQueue();
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __cmsSetIsActive_block_invoke_147;
      v48[3] = &unk_1E7AE7CE0;
      v48[4] = a1;
      MXDispatchAsync("cmsSetIsActive", "CMSessionManager.m", 5866, 0, 0, v38, v48);
      CMSMNotificationUtility_PostSomeClientIsActiveDidChange([a1 audioSessionID], objc_msgSend(a1, "isActive"), objc_msgSend(a1, "audioCategory"), objc_msgSend(a1, "audioMode"));
      if (MX_FeatureFlags_IsSharePlayEnabled() && (([a1 isSharePlayMediaSession] & 1) != 0 || objc_msgSend(a1, "isSharePlayCapableCallSession")))
      {
        CMSMNotificationUtility_PostSomeSharePlayCapableCallSessionIsActiveDidChange([a1 isActive]);
      }

      CMSUtility_SendSessionStateAndVolumeReportToAudioStatistics(a1, 0, 0xEu, 0, 0, 0);
      CMSMVAUtility_UpdateSessionInfoAndReporterIDsOnVA(a1, 0);
      [a1 sendSessionConfigurationInfoToVA];
      CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded(0, 0);
      if (!a2 && ([a1 doNotResetAudioCategoryOnNextInactive] & 1) == 0 && !vaemIsDefaultVADInItsDefaultConfiguration() && !-[MXSessionManager isSiriSessionActiveAndRoutedToSiriOutputVAD](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSiriSessionActiveAndRoutedToSiriOutputVAD") && !CMSUtility_IsSomeOtherNonIDSClientActiveOnDestination(0))
      {
        v39 = MXGetSessionLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          *&buf[4] = "-CMSessionMgr-";
          *&buf[12] = 2082;
          *&buf[14] = "cmsSetIsActive";
          v53 = 1024;
          v54 = 5904;
          _os_log_impl(&dword_1B17A2000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Resetting Default VAD to Audio/Video as no other non IDS client is active on VAD", buf, 0x1Cu);
        }

        vaemResetVADCategoryToStandardAVAndDefaultMode();
      }

      goto LABEL_107;
    }

    cmsVibrateForSession(a1, 0);
    if (([a1 hasPhoneCallBehavior] & 1) != 0 || CMSMUtility_PhoneCallOrRingtoneExists())
    {
      [+[MXSessionManager sharedInstance](MXSessionManager setPhoneCallIsAboutToGoActiveOverCarPlay:"setPhoneCallIsAboutToGoActiveOverCarPlay:", 0];
      if (dword_1EB75DE40)
      {
        v51 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    [+[MXSessionManager cancelAnyInProgressRampIfNeeded:v41], "cancelAnyInProgressRampIfNeeded:reason:", a1, 1];
    if (([a1 doNotResetAudioCategoryOnNextInactive] & 1) != 0 || (objc_msgSend(a1, "currentlyControllingFlags") & 2) == 0 && (objc_msgSend(objc_msgSend(a1, "interruptingSession"), "isHardwareSafetySession") & 1) == 0 && !objc_msgSend(objc_msgSend(a1, "interruptingSession"), "isIDSMXCoreSession"))
    {
LABEL_60:
      if ([a1 sessionDeactivateTimer])
      {
        dispatch_source_cancel([a1 sessionDeactivateTimer]);
        [a1 setSessionDeactivateTimer:0];
        if (dword_1EB75DE40)
        {
          v51 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else if (-[MXSessionManager isAirPlaySession:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isAirPlaySession:", a1) && ([a1 reporterStarted] & 1) == 0 && !objc_msgSend(a1, "sessionDeactivateTimer"))
      {
        CMSUtility_StartReporterWithAudioStatistics(a1);
      }

      if ([a1 isDucked])
      {
        [+[MXSessionManager sharedInstance](MXSessionManager startAsyncDuckingOperation];
        v31 = -[MXDuckingSource initWithType:ID:duckVolume:duckFadeDuration:]([MXDuckingSource alloc], "initWithType:ID:duckVolume:duckFadeDuration:", 3, [objc_msgSend(a1 "ID")], 0.0, 0.0);
        [+[MXSessionManager sharedInstance](MXSessionManager unduckVolume:"unduckVolume:sessionCausingUnduck:duckingSource:" sessionCausingUnduck:a1 duckingSource:a1, v31];
        [+[MXSessionManager sharedInstance](MXSessionManager endAsyncDuckingOperationForSession:"endAsyncDuckingOperationForSession:", a1];
      }

      if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy() && [a1 isOutputMuted])
      {
        [+[MXSessionManager sharedInstance](MXSessionManager unmuteOutputForSession:"unmuteOutputForSession:", a1];
      }

      CMSUtility_ResetIsPlayingStates(a1);
      [a1 setIsActive:0];
      [a1 setTookControlOfStarkMainAudio:0];
      [a1 setCurrentlyControllingFlags:0];
      [a1 setWaitingForEndInterruptionWhenDeviceUnlocksOrInForeground:0];
      [a1 setNowPlayingAppWasStoppedOnMostRecentActivation:0];
      [a1 setNowPlayingAppThatWasStoppedOnMostRecentActivationWasDoingSpokenAudio:0];
      [a1 setSystemSoundHasModifiedCurrentlyControllingFlags:0];
      CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded();
      if ([a1 orientationOverride] != 5)
      {
        [a1 setOrientationOverride:5];
        vaemSetOrientationOverride([a1 orientationOverride]);
        *buf = 0;
        *buf = [a1 orientationOverride];
        *&buf[8] = 0;
        vaemSetCaptureOrientationOverride();
      }

      [a1 setWasActiveWhenDeviceOwnershipRelinquished:0];
      [+[MXSessionManager sharedInstance](MXSessionManager cleanupSessionAssertionsIfNeeded:"cleanupSessionAssertionsIfNeeded:cleanupReason:" cleanupReason:a1, 0];
      if (((MX_FeatureFlags_IsAudioFormatArbitrationEnabled() != 0) & v7) == 1)
      {
        cmsmUpdateDeviceAudioFormatConfigIfNeeded(1);
      }

      IsHighQualityLocalRecordingEnabled = MX_FeatureFlags_IsHighQualityLocalRecordingEnabled();
      if (!a3 && IsHighQualityLocalRecordingEnabled)
      {
        [+[MXSessionManager sharedInstance](MXSessionManager postStopCommandToShadowingSessionsForSession:"postStopCommandToShadowingSessionsForSession:withShadowingOptions:" withShadowingOptions:a1, 4];
        -[MXSessionManagerIndependentAudioResource postStopCommandToShadowingSessionsForSession:withShadowingOptions:interruptor:waitingToResume:](+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource, "sharedInstance"), "postStopCommandToShadowingSessionsForSession:withShadowingOptions:interruptor:waitingToResume:", a1, 4, 0, [a1 waitingToResume]);
      }

      goto LABEL_79;
    }

    if (!vaemIsDefaultVADInItsDefaultConfiguration())
    {
      [a1 setIsActive:0];
      [a1 setCurrentlyControllingFlags:0];
      if (CMSUtility_IsSomeOtherNonIDSClientActiveOnDestination(a1))
      {
        if (CMSUtility_IsSomeOtherNonIDSClientActiveWithNonDefaultVADConfiguration(a1))
        {
          goto LABEL_52;
        }

        v23 = MXGetSessionLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          *&buf[4] = "-CMSessionMgr-";
          *&buf[12] = 2082;
          *&buf[14] = "cmsSetIsActive";
          v53 = 1024;
          v54 = 5673;
          _os_log_impl(&dword_1B17A2000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Resetting Default VAD to Audio/Video as there are no ther non IDS clients active on VAD with non Default VAD configuration", buf, 0x1Cu);
        }
      }

      vaemResetVADCategoryToStandardAVAndDefaultMode();
    }

LABEL_52:
    if ([a1 disallowAudioFormatChanges])
    {
      CMBaseObject = FigEndpointManagerGetCMBaseObject();
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v25)
      {
        v25(CMBaseObject, 0x1F289B7B0, *MEMORY[0x1E695E4C0]);
      }
    }

    NumberOfChannelsForVADIDAndScope = vaemGetNumberOfChannelsForVADIDAndScope([+[MXSessionManager defaultVADID] sharedInstance];
    if (!MX_FeatureFlags_IsAudioFormatArbitrationEnabled())
    {
      CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(a1);
      IsCategoryInputOnly = CMSMUtility_IsCategoryInputOnly([a1 audioCategory]);
      if (vaemIsNotCurrentDeviceFormat(CurrentOutputVADID, IsCategoryInputOnly) || NumberOfChannelsForVADIDAndScope != 2)
      {
        if ([+[MXSessionManager shouldSetDeviceFormatAndSampleRate:"shouldSetDeviceFormatAndSampleRate:"]
        {
          v29 = CMSUtility_GetCurrentOutputVADID(a1);
          vaemSetDeviceFormat(v29, @"LPCM", 1);
        }
      }
    }

    goto LABEL_60;
  }

LABEL_107:
  v40 = *MEMORY[0x1E69E9840];
}

uint64_t cmsVibrateForSession(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  result = [a1 isActive];
  if (result)
  {
    result = [a1 isVibrating];
    if (a2)
    {
      if ((result & 1) == 0)
      {
        result = [a1 vibrationData];
        if (result)
        {
          result = CMSystemSoundMgr_DeviceIsAllowedToVibrateIfConnectedToStark();
          if (result)
          {
            if (CMSMDeviceState_IsVibrationDisabled() && (result = [a1 prefersToVibeWhenVibrationsAreDisabled], (result & 1) == 0))
            {
              if (dword_1EB75DE40)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                result = fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            else
            {
              if (dword_1EB75DE40)
              {
                v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              if (![a1 vibratingOSTransaction])
              {
                v17 = 0;
                [a1 clientName];
                CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
                [a1 displayID];
                v10 = FigCFStringGetCStringPtrAndBufferToFree();
                v11 = "CMSessionManager";
                if (CStringPtrAndBufferToFree)
                {
                  v11 = CStringPtrAndBufferToFree;
                }

                v12 = "CMSessionDefaultID";
                if (v10)
                {
                  v12 = v10;
                }

                snprintf(__str, 0x80uLL, "%s-%s", v11, v12);
                free(v17);
                free(0);
                [objc_msgSend(a1 "clientPID")];
                [a1 setVibratingOSTransaction:FigOSTransactionCreate()];
              }

              [a1 setIsVibrating:1];
              v13 = MX_FeatureFlags_IsHapticEngineCPMSEnabled() != 0;
              result = FigVibratorPlayVibrationWithDictionary([a1 vibrationData], 0, 0, 0, 0, 1, v13, 1.0);
            }
          }
        }
      }
    }

    else if (result)
    {
      if (dword_1EB75DE40)
      {
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigVibratorStopWithOptions(0);
      [a1 setIsVibrating:0];
      v7 = [a1 vibratingOSTransaction];
      if (v7)
      {
      }

      result = [a1 setVibratingOSTransaction:{0, v15, v16}];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSUtility_IsAudioModeCameraRelated(uint64_t result)
{
  if (result)
  {
    v1 = result;
    [result audioMode];
    if (FigCFEqual())
    {
      return 1;
    }

    [v1 audioMode];
    if (FigCFEqual())
    {
      return 1;
    }

    [v1 audioMode];
    if (FigCFEqual())
    {
      return 1;
    }

    [v1 audioMode];
    if (FigCFEqual())
    {
      return 1;
    }

    [v1 audioMode];
    result = FigCFEqual();
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL CMSMUtility_IsIndirectCarPlaySpeechModeTransitionsRequired()
{
  cf[20] = *MEMORY[0x1E69E9840];
  v0 = CMSMUtility_CopySystemAudioRoutingContextUUID();
  v1 = FigRoutingManagerCopyActivatedCarPlayEndpoint(v0);
  if (v1)
  {
    cf[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E6962308], *MEMORY[0x1E695E480], cf);
      v4 = cf[0];
    }

    else
    {
      v4 = 0;
    }

    v5 = v4 == *MEMORY[0x1E695E4D0];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v4 = cf[0];
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    v5 = 0;
  }

  if (v0)
  {
    CFRelease(v0);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

void CMSMNotificationUtility_PostVoicePromptStyleDidChange()
{
  v9 = *MEMORY[0x1E69E9840];
  VoicePromptStyle = CMSMUtility_GetVoicePromptStyle();
  if (VoicePromptStyle != qword_1EB75E148)
  {
    if (dword_1EB75DE40)
    {
      v8 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{VoicePromptStyle, @"VoicePromptStyle", 0}];
    [MXSystemController notifyAll:@"VoicePromptStyleDidChange" payload:v2 dontPostIfSuspended:0];
    v3 = v2;
    v4 = MXGetNotificationSenderQueue();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __CMSMNotificationUtility_PostVoicePromptStyleDidChange_block_invoke;
    v6[3] = &unk_1E7AE7CE0;
    v6[4] = v2;
    MXDispatchAsync("CMSMNotificationUtility_PostVoicePromptStyleDidChange", "CMSessionManager_NotificationUtilities.m", 1072, 0, 0, v4, v6);
  }

  qword_1EB75E148 = VoicePromptStyle;
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t CMSMUtility_PhoneCallOrRingtoneExists()
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
        if (([v4 isIDSMXCoreSession] & 1) == 0 && objc_msgSend(v4, "isActive") && ((objc_msgSend(v4, "hasPhoneCallBehavior") & 1) != 0 || CMSUtility_IsAudioCategoryRingtone(v4)))
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

  v5 = *MEMORY[0x1E69E9840];
  return v1;
}

void CMSMNotificationUtility_PostSomeClientIsActiveDidChange(unsigned int a1, int a2, uint64_t a3, uint64_t a4)
{
  if (![+[MXSessionManager isSpeechDetectCategory:"isSpeechDetectCategory:"]
  {
    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a1];
    v10 = [v8 initWithObjectsAndKeys:{v9, @"AudioSessionID", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a2 != 0), @"IsActive", a3, @"AudioCategory", a4, @"AudioMode", 0}];
    [MXSystemController notifyAll:@"SomeClientIsActiveDidChange" payload:v10 dontPostIfSuspended:0 remoteDeviceID:0];
  }
}

void CMSUtility_SendSessionStateAndVolumeReportToAudioStatistics(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = [objc_msgSend(a1 "reporterIDs")];
  if (v8 >= 1)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      valuePtr = 1;
      ValueAtIndex = CFArrayGetValueAtIndex([a1 reporterIDs], i);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      if (a5)
      {
        if (a1)
        {
          if ([a1 reporterStarted])
          {
            off_1EB75E028(valuePtr, a2, a3, a4);
          }

          else
          {
            if (dword_1EB75DE40)
            {
              LODWORD(v40) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v14 = v40;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
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
                v43 = 136315650;
                v44 = "CMSUtility_SendSessionStateAndVolumeReportToAudioStatistics";
                v45 = 2114;
                v46 = v16;
                v47 = 2048;
                v48 = valuePtr;
                LODWORD(v34) = 32;
                v33 = &v43;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            off_1EB75E000(valuePtr);
            [a1 setReporterStarted:1];
            off_1EB75E028(valuePtr, a2, a3, a4);
            [a1 setReporterStarted:0];
            off_1EB75E008(valuePtr);
            if (dword_1EB75DE40)
            {
              LODWORD(v40) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v29 = v40;
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
                v31 = [a1 clientName];
                v43 = 136315650;
                v44 = "CMSUtility_SendSessionStateAndVolumeReportToAudioStatistics";
                v45 = 2114;
                v46 = v31;
                v47 = 2048;
                v48 = valuePtr;
                LODWORD(v34) = 32;
                v33 = &v43;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }

      else
      {
        v41 = 0.0;
        v40 = 0;
        if ([a1 displayID])
        {
          [a1 displayID];
          CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
        }

        else
        {
          CStringPtrAndBufferToFree = 0;
        }

        *type = 0;
        if (CMSMDeviceState_ItsAHomePod())
        {
          PVMCopyVolumeCategoryAndMode(-[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [a1 audioCategory]), 0, type, 0);
        }

        CMSUtility_ComputePlaybackVolume(a1, &v41);
        v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v18 = MX_RunningBoardServices_CopyAssertionReasonsStringForPID([objc_msgSend(a1 "clientPID")]);
        v19 = objc_alloc(MEMORY[0x1E696AEC0]);
        v20 = [v19 initWithString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@", objc_msgSend(MEMORY[0x1E695DF00], "now"))}];
        if (a1)
        {
          v21 = [a1 displayID];
        }

        else
        {
          v21 = 0;
        }

        if ([a1 isActive])
        {
          v22 = @"active";
        }

        else
        {
          v22 = @"inactive";
        }

        [v17 setObject:v22 forKey:0x1F2898C30];
        if (a1)
        {
          [v17 setObject:objc_msgSend(a1 forKey:{"audioCategory"), 0x1F2898BD0}];
          v23 = [a1 audioMode];
        }

        else
        {
          [v17 setObject:0 forKey:0x1F2898BD0];
          v23 = 0;
        }

        [v17 setObject:v23 forKey:0x1F2898BF0];
        [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(a1, "prefersNoInterruptionsByRingtonesAndAlerts")), 0x1F2898C10}];
        [v17 setObject:v20 forKey:0x1F2898C50];
        if (v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = @"UnknownDisplayID";
        }

        [v17 setObject:v24 forKey:0x1F2898C70];
        [v17 setObject:CMSMUtility_GetStringForApplicationState(objc_msgSend(a1 forKey:{"applicationState")), 0x1F2898C90}];
        [v17 setObject:v18 forKey:0x1F2898CB0];
        if ([a1 prefersInterruptionOnRouteDisconnectSetByClient])
        {
          [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(a1, "prefersInterruptionOnRouteDisconnect")), 0x1F2898CD0}];
        }

        v25 = cmsutility_createVolumeChangeMessageForAudioStatistics(CStringPtrAndBufferToFree, *type, 0, 0, a6, v41);
        if ([a1 isActive])
        {
          CMSUtility_SetAudioServiceTypeForReporterID(a1, valuePtr);
          if (([a1 reporterStarted] & 1) == 0)
          {
            if (dword_1EB75DE40)
            {
              v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            off_1EB75E000(valuePtr);
            off_1EB75E028(valuePtr, v25, 14, 5);
            [a1 setReporterStarted:1];
          }

          off_1EB75E028(valuePtr, v17, 1, 5);
        }

        else if ([a1 reporterStarted])
        {
          off_1EB75E028(valuePtr, v17, 1, 5);
          off_1EB75E028(valuePtr, v25, 14, 5);
          [a1 setReporterStarted:0];
          off_1EB75E008(valuePtr);
          if (dword_1EB75DE40)
          {
            v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        if (v25)
        {
          CFRelease(v25);
        }

        if (*type)
        {
          CFRelease(*type);
          *type = 0;
        }

        free(v40);
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

float pvmGetDefaultVolume()
{
  valuePtr = 0.0;
  v0 = *(sStorage + 224);
  if (!v0)
  {
    goto LABEL_25;
  }

  v1 = *(sStorage + 272);
  if (v1)
  {
    Value = CFDictionaryGetValue(v0, v1);
  }

  else
  {
    Value = 0;
  }

  if (MX_FeatureFlags_IsOnenessEnabled() && (v3 = *(sStorage + 272), FigCFEqual()) && *(sStorage + 288) && !FigCFEqual())
  {
    CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
    v4 = vaeGetPortTypeFromPortID(CurrentOutputPortAtIndex) != 1885565807;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(sStorage + 272);
  if (!FigCFEqual() || !*(sStorage + 324))
  {
    v7 = *(sStorage + 296);
    if (v7 && CFStringHasPrefix(v7, @"AudioAccessory"))
    {
      v8 = 1050253722;
      return *&v8;
    }

    if (!v4)
    {
      v8 = 1065353216;
      return *&v8;
    }

    if (Value)
    {
      v9 = Value;
LABEL_24:
      CFNumberGetValue(v9, kCFNumberFloat32Type, &valuePtr);
      return valuePtr;
    }

    v9 = CFDictionaryGetValue(*(sStorage + 224), @"Default");
    if (v9)
    {
      goto LABEL_24;
    }

LABEL_25:
    v8 = 1056964608;
    return *&v8;
  }

  v6 = 0.3;
  if (*(sStorage + 325))
  {
    return 0.5;
  }

  return v6;
}

void cmsmCopyCurrentActiveRoutesInfoForVADUID(uint64_t a1, __CFArray **a2, __CFArray **a3, __CFArray **a4)
{
  if (a2 || a3 || a4)
  {
    v7 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(0, 0, 0, 0, 0, 0, a1);
    if (v7)
    {
      v8 = v7;
      if (CFArrayGetCount(v7))
      {
        v9 = CFGetTypeID(v8);
        if (v9 == CFArrayGetTypeID())
        {
          CMSMVAUtility_CopyRoutesInfoFromInputAndOutputPorts(v8, 0, a2, a3, 0, a4);
        }
      }

      CFRelease(v8);
    }
  }
}

void cmsmCopyCurrentActiveRouteInfoAtIndexForVADUID(uint64_t a1, CFIndex a2, void *a3, void *a4, void *a5)
{
  v19 = 0;
  theArray = 0;
  v18 = 0;
  cmsmCopyCurrentActiveRoutesInfoForVADUID(a1, &theArray, &v19, &v18);
  Count = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  if (a3)
  {
    if (Count > a2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, a2);
      v11 = CFRetain(ValueAtIndex);
      *a3 = v11;
      if (CFEqual(v11, &stru_1F2890CF0))
      {
        *a3 = 0;
      }
    }
  }

  v12 = v19;
  if (v19)
  {
    v12 = CFArrayGetCount(v19);
  }

  if (a4)
  {
    if (v12 > a2)
    {
      v13 = CFArrayGetValueAtIndex(v19, a2);
      v14 = CFRetain(v13);
      *a4 = v14;
      if (CFEqual(v14, &stru_1F2890CF0))
      {
        *a4 = 0;
      }
    }
  }

  v15 = v18;
  if (v18)
  {
    v15 = CFArrayGetCount(v18);
  }

  if (a5)
  {
    if (v15 > a2)
    {
      v16 = CFArrayGetValueAtIndex(v18, a2);
      v17 = CFRetain(v16);
      *a5 = v17;
      if (CFEqual(v17, &stru_1F2890CF0))
      {
        *a5 = 0;
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (v19)
  {
    CFRelease(v19);
    v19 = 0;
  }

  if (v18)
  {
    CFRelease(v18);
  }
}

void vautility_copyRoutesInfoFromPorts(const __CFArray *a1, __CFArray **a2, __CFArray **a3, __CFArray **a4)
{
  if (!a1)
  {
    return;
  }

  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return;
  }

  v9 = Count;
  v24 = a3;
  v25 = a4;
  v10 = *MEMORY[0x1E695E480];
  v11 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v13 = CFArrayCreateMutable(v10, 0, v11);
  v14 = CFArrayCreateMutable(v10, 0, v11);
  if (v9 < 2)
  {
    if (v9 != 1)
    {
      goto LABEL_24;
    }

LABEL_7:
    for (i = 0; i != v9; ++i)
    {
      FigCFArrayGetInt64AtIndex();
      v16 = vaeCopyFigOutputDeviceNameFromVADPort(0);
      v17 = vaeCopyDeviceIdentifierFromVADPort(0);
      v18 = vaeCopyRouteSubtypeFromVADPort(0);
      if (v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = &stru_1F2890CF0;
      }

      CFArrayAppendValue(Mutable, v19);
      if (v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = &stru_1F2890CF0;
      }

      CFArrayAppendValue(v13, v20);
      if (v18)
      {
        v21 = v18;
      }

      else
      {
        v21 = &stru_1F2890CF0;
      }

      CFArrayAppendValue(v14, v21);
      if (v16)
      {
        CFRelease(v16);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    goto LABEL_24;
  }

  if (CMSMVAUtility_IsBluetoothSharingSessionEnabled(a1))
  {
    goto LABEL_7;
  }

  CFArrayAppendValue(Mutable, @"broadcast");
  CFArrayAppendValue(v13, &stru_1F2890CF0);
  CFArrayAppendValue(v14, &stru_1F2890CF0);
LABEL_24:
  if (a2)
  {
    *a2 = Mutable;
    v23 = v24;
    v22 = v25;
  }

  else
  {
    v23 = v24;
    v22 = v25;
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (v23)
  {
    *v23 = v13;
  }

  else if (v13)
  {
    CFRelease(v13);
  }

  if (v22)
  {
    *v22 = v14;
  }

  else if (v14)
  {
    CFRelease(v14);
  }
}

id pvmCreateSeparateCategoryAndModeStrings(id result, void *a2, void *a3)
{
  if (!result)
  {
    v6 = 0;
LABEL_6:
    v7 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = [result componentsSeparatedByString:@"~"];
  v6 = [v5 objectAtIndexedSubscript:0];
  result = [v5 count];
  if (result < 2)
  {
    goto LABEL_6;
  }

  result = [v5 objectAtIndexedSubscript:1];
  v7 = result;
  if (a2)
  {
LABEL_7:
    result = v6;
    *a2 = result;
  }

LABEL_8:
  if (a3)
  {
    result = v7;
    *a3 = result;
  }

  return result;
}

float pvmGetMaximumCategoryVolume(const __CFString *a1, const void *a2)
{
  valuePtr = 1.0;
  MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);
  v3 = *(sStorage + 216);
  v4 = 1.0;
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, MappedCategoryWithModeAppended);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberFloat32Type, &valuePtr);
      v4 = valuePtr;
      if (valuePtr > 1.0)
      {
        return 1.0;
      }
    }
  }

  return v4;
}

float PVMGetRawVolumeForCurrentRouteFromVolume(const __CFString *a1, const void *a2, float a3)
{
  PVMInitialize();
  v17 = 0;
  if (a1)
  {
    cf[0] = 0;
    MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);
    pvmCreateSeparateCategoryAndModeStrings(MappedCategoryWithModeAppended, &v17, cf);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  else
  {
    v7 = *(sStorage + 232);
    v17 = v7;
    if (v7)
    {
      CFRetain(v7);
    }
  }

  v8 = *sStorage;
  FigSimpleMutexLock();
  v9 = v17;
  v10 = *(sStorage + 280);
  v18[0] = *(sStorage + 264);
  v18[1] = v10;
  v19 = *(sStorage + 296);
  v11 = *(sStorage + 280);
  *cf = *(sStorage + 264);
  v21 = v11;
  v22 = *(sStorage + 296);
  VolumeLimitPref = pvmGetVolumeLimitPref(cf);
  CurrentVolumeLimitForRoute = pvmGetCurrentVolumeLimitForRoute(v18, v9);
  v14 = *sStorage;
  FigSimpleMutexUnlock();
  if (v17)
  {
    CFRelease(v17);
  }

  v15 = 1.0;
  if (a3 <= 1.0)
  {
    v15 = a3;
  }

  return v15 * (VolumeLimitPref * CurrentVolumeLimitForRoute);
}

__CFString *MX_RunningBoardServices_CopyAssertionReasonsStringForPID(uint64_t a1)
{
  v1 = MX_RunningBoardServices_CopyAssertionReasonsForPID(a1);
  if ([v1 count] >= 2)
  {
    v1 = [objc_msgSend(MEMORY[0x1E695DFD8] setWithArray:{v1), "allObjects"}];
  }

  if ([v1 count])
  {
    v2 = [v1 componentsJoinedByString:{@", "}];
  }

  else
  {
    v2 = &stru_1F2890CF0;
  }

  return v2;
}

void *MX_RunningBoardServices_CopyAssertionReasonsForPID(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = [objc_msgSend(mx_runningBoardServices_getProcessHandleForPID(a1) "currentState")];
  v2 = [v1 count];
  if (v2)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v1);
          }

          [v2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", objc_msgSend(*(*(&v9 + 1) + 8 * v6++), "reason"))}];
        }

        while (v4 != v6);
        v4 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t CMSUtility_SetAudioServiceTypeForReporterID(void *a1, uint64_t a2)
{
  if ([a1 isTheAssistant])
  {
    v4 = off_1EB75E010;
    v5 = a2;
    v6 = 1;
  }

  else
  {
    [a1 audioCategory];
    if (FigCFEqual())
    {
      v4 = off_1EB75E010;
      v5 = a2;
      v6 = 4;
    }

    else
    {
      result = [a1 isMemberOfClass:objc_opt_class()];
      if (result)
      {
        return result;
      }

      if (CMSUtility_HasPhoneCallBehaviour(a1))
      {
        v4 = off_1EB75E010;
        v5 = a2;
        v6 = 2;
      }

      else
      {
        [a1 audioCategory];
        if (FigCFEqual())
        {
          v4 = off_1EB75E010;
          v5 = a2;
          v6 = 3;
        }

        else if (CMSUtility_IsAudioCategoryNonLongFormPlayback(a1))
        {
          v4 = off_1EB75E010;
          v5 = a2;
          v6 = 8;
        }

        else if (CMSUtility_IsAudioCategoryLongFormPlayback(a1))
        {
          v4 = off_1EB75E010;
          v5 = a2;
          v6 = 7;
        }

        else
        {
          IsAudioCategoryAlertType = CMSUtility_IsAudioCategoryAlertType(a1);
          v4 = off_1EB75E010;
          if (IsAudioCategoryAlertType)
          {
            v5 = a2;
            v6 = 10;
          }

          else
          {
            v5 = a2;
            v6 = 0;
          }
        }
      }
    }
  }

  return v4(v5, v6);
}

void cmsTakeControl(void *a1, int a2)
{
  v49 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (([a1 dontTakeOverHardware] & 1) == 0)
  {
    v4 = qword_1EB75E090;
    v5 = [a1 audioCategory];
    v6 = [a1 audioMode];
    v7 = *(*(CMBaseObjectGetVTable() + 24) + 16);
    if (v7)
    {
      v7(v4, 0x1F289BAB0, *MEMORY[0x1E695E480], v5, v6, 0, &cf);
    }

    if ([a1 hasInput] && *MEMORY[0x1E695E4C0] == cf)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      a2 &= ~2u;
    }

    if (!CMSUtility_IsPlayingToDefaultVAD(a1) && ![a1 clientPriority])
    {
      if (dword_1EB75DE40)
      {
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      a2 &= ~2u;
    }

    if (CMSMVAUtility_IsAdditiveRoutingEnabled() && [a1 willRouteToOnDemandVADOnActivation])
    {
      if (dword_1EB75DE40)
      {
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [a1 setCurrentlyControllingFlags:{0, v36, v41}];
      a2 = 0;
    }

    if (([a1 prefersToTakeHWControlFlagsFromAnotherSession] & 1) == 0 && CMSystemSoundManager_GetNumberOfSystemSoundsPlayingAudio())
    {
      a2 &= ~0x10u;
    }

    if ([a1 isIDSMXCoreSession] && a2)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a2 = 0;
    }

    [a1 setCurrentlyControllingFlags:{objc_msgSend(a1, "currentlyControllingFlags", v37, v42) | a2}];
    if (dword_1EB75DE40)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (MX_FeatureFlags_IsSmartRoutingOnActivationEnabled())
    {
      CMSUtility_RouteToPreferredRouteIfRequired(a1, 0, 11);
    }

    if (MX_FeatureFlags_IsAudioFormatArbitrationEnabled())
    {
      cmsmUpdateDeviceAudioFormatConfigIfNeeded(0);
    }

    if (([a1 currentlyControllingFlags] & 2) != 0)
    {
      if ([a1 waitingForRemoteInterruptionDoneIdentifier])
      {
        CMSM_IDSConnection_WaitForReply([a1 waitingForRemoteInterruptionDoneIdentifier]);
        [a1 setWaitingForRemoteInterruptionDoneIdentifier:0];
      }

      if ([+[MXSessionManager carPlayIsConnected] sharedInstance]
      {
        if (dword_1EB75DE40)
        {
          v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        if (CMSUtility_IsSessionEligibleToPlayOverSharedAudioRoute(a1, 0))
        {
          v14 = CMSM_IDSConnection_CopySharedAudioRoutePortIDs();
          A2DPPort = cmsmGetA2DPPort(v14);
          if (v14)
          {
            CFRelease(v14);
          }

          if (cmsmShouldRequestOwnershipOnSharedAudioRoute(a1, A2DPPort))
          {
            if (!vaeRequestOwnershipOnBTPort(A2DPPort))
            {
              [a1 setAddSharedAudioRouteToRoutablePorts:1];
            }
          }

          else if (vaeGetBTPortOwnsSharedAudioConnection(A2DPPort))
          {
            v17 = vaeCopyDeviceIdentifierFromVADPort(A2DPPort);
            IsSystemAudioRoutingToDeviceID = FigRoutingManagerUtilities_IsSystemAudioRoutingToDeviceID(v17);
            if (!IsSystemAudioRoutingToDeviceID || !vaeDoesBTPortSupportInEarDetection(A2DPPort) || CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(A2DPPort))
            {
              [a1 setAddSharedAudioRouteToRoutablePorts:IsSystemAudioRoutingToDeviceID];
            }

            if (v17)
            {
              CFRelease(v17);
            }
          }
        }

        else if (dword_1EB75DE40)
        {
          v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (!MX_FeatureFlags_IsSmartRoutingOnActivationEnabled() && [a1 shouldAttemptSmartRoutingHijackForMusicApp])
        {
          CMSUtility_RouteToPreferredRouteIfRequired(a1, 0, 10);
        }
      }

      cmsSetCategoryOnPVMAndAudioDevice(a1, ([a1 currentlyControllingFlags] & 0x10) != 0, 0);
      [a1 reapplyDeviceSampleRateAndBufferSizeOnVADIfNeeded];
      if (!MX_FeatureFlags_IsAudioFormatArbitrationEnabled())
      {
        CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(a1);
        IsCategoryInputOnly = CMSMUtility_IsCategoryInputOnly([a1 audioCategory]);
        [a1 preferredHardwareFormat];
        if (vaemIsNotCurrentDeviceFormat(CurrentOutputVADID, IsCategoryInputOnly))
        {
          v24 = CMSUtility_GetCurrentOutputVADID(a1);
          if (vaemSetDeviceFormat(v24, [a1 preferredHardwareFormat], 0))
          {
            v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }

      if ([a1 disallowAudioFormatChanges])
      {
        CMBaseObject = FigEndpointManagerGetCMBaseObject();
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v20)
        {
          v20(CMBaseObject, 0x1F289B7B0, *MEMORY[0x1E695E4D0]);
        }
      }

      if ([a1 hasInput] && FigVAEndpointManagerGetPropertyBoolean(qword_1EB75E090, 0x1F289B650))
      {
        if ([a1 desiredInputGainScalar])
        {
          [objc_msgSend(a1 "desiredInputGainScalar")];
          FigVAEndpointManagerSetPropertyFloat32(v21, qword_1EB75E090, 0x1F289B770);
        }

        else
        {
          vaemSetInputGainFromPreferenceIfPresent();
        }
      }

      if ([a1 orientationOverride] == 5)
      {
        if ([a1 preferredStereoInputOrientation])
        {
          vaemSetStereoInputOrientation([a1 preferredStereoInputOrientation]);
        }
      }

      else
      {
        vaemSetOrientationOverride([a1 orientationOverride]);
        v47 = 0;
        LODWORD(v47) = [a1 orientationOverride];
        v48 = 0;
        vaemSetCaptureOrientationOverride();
      }
    }

    [a1 sendSessionConfigurationInfoToVA];
    CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded();
    if (([a1 currentlyControllingFlags] & 0x10) != 0 || !CMSUtility_IsPlayingToDefaultVAD(a1))
    {
      if ([a1 wasMutedBeforeInterruption])
      {
        v26 = *MEMORY[0x1E695E4D0];
        MXCoreSessionSetProperty(a1, @"UserMuted");
      }

      [a1 setWasMutedBeforeInterruption:0];
      if (([a1 doesntActuallyPlayAudio] & 1) == 0)
      {
        CMSUtility_UpdatePlaybackVolume(a1, 0.0, 0.0);
      }
    }

    if (!MX_FeatureFlags_IsAudioFormatArbitrationEnabled())
    {
      if (([a1 currentlyControllingFlags] & 2) != 0 || -[MXSessionManager shouldSetDeviceFormatAndSampleRate:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "shouldSetDeviceFormatAndSampleRate:", a1) || (v27 = *MEMORY[0x1E69626C0], FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1)) && CMSUtility_IsPlayingToSystemSoundRemoteVAD(a1))
      {
        ShouldSessionSetInputSampleRate = CMSUtility_ShouldSessionSetInputSampleRate(a1);
        if (ShouldSessionSetInputSampleRate)
        {
          [a1 preferredInputSampleRate];
        }

        else
        {
          [a1 preferredOutputSampleRate];
        }

        v31 = v30;
        PreferredIOBufferFrames = CMSUtility_GetPreferredIOBufferFrames(a1, v29);
        PreferredIOBufferDuration = CMSUtility_GetPreferredIOBufferDuration(a1, v33);
        cmsSetDeviceSampleRateAndBufferSize(a1, PreferredIOBufferFrames, ShouldSessionSetInputSampleRate != 0, v31, *&PreferredIOBufferDuration);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return FigRoutingContextXPCRemoteGetObjectID(v9, &a9);
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return CMBaseObjectGetVTable();
}

uint64_t cmsmRouteDescriptionEqual(CFDictionaryRef theDict, const __CFDictionary *a2)
{
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"RouteType");
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (a2)
  {
LABEL_3:
    CFDictionaryGetValue(a2, @"RouteType");
  }

LABEL_5:
  result = FigCFEqual();
  if (result)
  {
    if (FigCFEqual() && FigCFEqual())
    {
      return 1;
    }

    else if (FigCFEqual())
    {
      CFDictionaryGetValue(theDict, @"RouteUID");
      CFDictionaryGetValue(a2, @"RouteUID");
      result = FigCFEqual();
      if (result)
      {
        CFDictionaryGetValue(theDict, @"RouteSubtype");
        CFDictionaryGetValue(a2, @"RouteSubtype");
        result = FigCFEqual();
        if (result)
        {
          CFDictionaryGetValue(theDict, @"RouteSupportsAirPlayVideo");
          CFDictionaryGetValue(a2, @"RouteSupportsAirPlayVideo");
          result = FigCFEqual();
          if (result)
          {
            CFDictionaryGetValue(theDict, @"RouteSupportsAirPlayScreen");
            CFDictionaryGetValue(a2, @"RouteSupportsAirPlayScreen");
            return FigCFEqual() != 0;
          }
        }
      }
    }

    else
    {
      CFDictionaryGetValue(theDict, @"AVAudioRouteName");
      CFDictionaryGetValue(a2, @"AVAudioRouteName");

      return FigCFEqual();
    }
  }

  return result;
}

BOOL vaemIsContinuityScreenOutputPortPresentInConnectedOutputPorts()
{
  if (MX_FeatureFlags_IsOnenessEnabled())
  {
    v0 = dword_1EB75D1B8 == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

uint64_t vaemGetDeviceBufferNumPCMFrames(AudioObjectID a1, AudioObjectPropertyScope a2)
{
  outData = 0;
  inAddress.mSelector = 1718839674;
  inAddress.mScope = a2;
  inAddress.mElement = 0;
  ioDataSize = 4;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    return 0;
  }

  else
  {
    return outData;
  }
}

__CFArray *CMSMUtility_CopyPickableRoutes()
{
  v0 = CMSUtility_CopyNonNULLCategoryForPickingRoutes(0);
  v1 = CMSUtility_CopyNonNULLModeForPickingRoutes(0);
  v2 = CMSUtility_CopyAllowedPortTypesArrayForPickingRoutes(0);
  v3 = CMSUtility_CopyActivationContextForPickingRoutes(0);
  v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyActiveCoreSessionControllingRouting];
  v5 = cmsmCopyPickableRoutesForRouteConfiguration(v0, v1, v3, v2, [v4 prefersBluetoothHighQualityContentCapture]);
  if (v0)
  {
    CFRelease(v0);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

NSString *CMSUtility_CopyNonNULLCategoryForPickingRoutes(void *a1)
{
  if (a1)
  {
    result = [a1 audioCategory];
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = CMSMUtility_CopyCurrentlyActiveCategory();
    if (result)
    {
      return result;
    }
  }

  return CFRetain(@"Audio/Video");
}

NSString *CMSUtility_CopyNonNULLModeForPickingRoutes(void *a1)
{
  if (a1)
  {
    result = [a1 audioMode];
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = CMSMUtility_CopyCurrentlyActiveMode();
    if (result)
    {
      return result;
    }
  }

  return CFRetain(@"Default");
}

CFTypeRef CMSUtility_CopyAllowedPortTypesArrayForPickingRoutes(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v1 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v1)
    {
      v4 = *v8;
      while (2)
      {
        for (i = 0; i != v1; i = (i + 1))
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v7 + 1) + 8 * i) isActive])
          {
            v1 = [+[MXSessionManager sharedInstance](MXSessionManager currentAllowedPortTypes];
            goto LABEL_14;
          }
        }

        v1 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v1)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    if (v1)
    {
      goto LABEL_3;
    }

LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  v1 = [a1 allowedPortTypes];
  if (!v1)
  {
    goto LABEL_15;
  }

LABEL_3:
  result = CFRetain(v1);
LABEL_16:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CFPropertyListRef cmsmDeepCopyPickedRouteDescription(const __CFArray *a1)
{
  context = 0;
  if (a1)
  {
    v5.length = CFArrayGetCount(a1);
    v5.location = 0;
    CFArrayApplyFunction(a1, v5, cmsmGetPickedRouteApplierFunction, &context);
    v2 = context;
  }

  else
  {
    v2 = 0;
  }

  return CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v2, 0);
}

__CFString *CMSMUtility_CopyMappedMXSessionAudioCategory(__CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CMSMUtility_CopyMappedMXSessionAudioCategory_onceToken != -1)
    {
      CMSMUtility_CopyMappedMXSessionAudioCategory_cold_1();
    }

    v2 = [CMSMUtility_CopyMappedMXSessionAudioCategory_sAudioSessionToMXCategoryMap objectForKey:v1];
    if (!v2)
    {
      if ([(__CFString *)v1 hasPrefix:@"AVAudioSessionCategory"])
      {
        v2 = @"MediaPlayback";
      }

      else
      {
        v2 = v1;
      }
    }

    return v2;
  }

  return result;
}

__CFString *CMSMUtility_CopyMappedMXSessionAudioMode(__CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CMSMUtility_CopyMappedMXSessionAudioMode_onceTokenTwo != -1)
    {
      CMSMUtility_CopyMappedMXSessionAudioMode_cold_1();
    }

    v2 = [CMSMUtility_CopyMappedMXSessionAudioMode_sAudioSessionToMXModeMap objectForKey:v1];
    if (!v2)
    {
      if ([(__CFString *)v1 hasPrefix:@"AVAudioSessionMode"])
      {
        v1 = @"Default";
      }

      if ([(__CFString *)v1 isEqualToString:@"AVAudioSessionModeShortFormVideo"])
      {
        v2 = @"ShortFormVideo";
      }

      else if ([(__CFString *)v1 containsString:@"WebCam"])
      {
        v2 = @"WebCam";
      }

      else
      {
        v2 = v1;
      }
    }

    return v2;
  }

  return result;
}

uint64_t vaeIsQuiesceableWiredPort(AudioObjectID a1)
{
  v11 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (!MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled() && !MX_FeatureFlags_IsSystemInputPickerEnabled())
  {
    goto LABEL_9;
  }

  if (!a1)
  {
    inAddress.mSelector = 0;
    v9[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_8;
  }

  inAddress.mElement = 0;
  *&inAddress.mSelector = *"rwqpbolg";
  ioDataSize = 4;
  *v9 = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData);
  if (*v9)
  {
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
LABEL_8:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v4 = outData;
LABEL_10:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

CFMutableArrayRef cmsmCopyWirelessPortsArrayForRouteConfiguration(NSDictionary *a1, uint64_t a2, const void *a3, int a4)
{
  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(a1);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(a2);
  v9 = vaemCopyConnectedPortsListForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, a3, a4, 0);
  if (v9)
  {
    v10 = v9;
    Count = CFArrayGetCount(v9);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        if (vaeGetConnectionTypeForPort(valuePtr) == 1885544823)
        {
          v15 = vaeCopyNameForPort(valuePtr);
          PortTypeFromPortID = vaeGetPortTypeFromPortID(valuePtr);
          if (FigCFEqual())
          {
            v17 = 1;
          }

          else
          {
            v17 = PortTypeFromPortID == 1885433975;
          }

          if (!v17)
          {
            v18 = CFArrayGetValueAtIndex(v10, i);
            CFArrayAppendValue(Mutable, v18);
          }

          if (v15)
          {
            CFRelease(v15);
          }
        }
      }
    }

    CFRelease(v10);
    if (Mutable)
    {
      CFArrayGetCount(Mutable);
    }

    return Mutable;
  }

  else
  {
    v20 = *MEMORY[0x1E695E480];
    v21 = MEMORY[0x1E695E9C0];

    return CFArrayCreateMutable(v20, 0, v21);
  }
}

uint64_t CMSessionMgrCopyPickableRoutesForCategoryAndMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    CMSessionMgrCopyPickableRoutesForCategoryAndMode_cold_3(&v9);
    return v9;
  }

  if (!a2)
  {
    CMSessionMgrCopyPickableRoutesForCategoryAndMode_cold_2(&v9);
    return v9;
  }

  if (!a3)
  {
    CMSessionMgrCopyPickableRoutesForCategoryAndMode_cold_1(&v9);
    return v9;
  }

  v6 = MXGetSerialQueue();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CMSessionMgrCopyPickableRoutesForCategoryAndMode_block_invoke;
  v8[3] = &__block_descriptor_56_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = a3;
  MXDispatchAsyncAndWait("CMSessionMgrCopyPickableRoutesForCategoryAndMode", "CMSessionManager.m", 15708, 0, 0, v6, v8);
  return 0;
}

uint64_t _VAEndpointManager_CopyPropertyForRouteConfiguration(uint64_t a1, const void *a2, uint64_t a3, NSDictionary *a4, uint64_t a5, uint64_t a6, void *a7)
{
  CMBaseObjectGetDerivedStorage();
  result = 4294950586;
  if (a2 && a7)
  {
    *a7 = 0;
    if (CFEqual(a2, *MEMORY[0x1E69618A8]))
    {
      v12 = vaemCopyAvailableEndpointsForRouteConfiguration(@"Audio/Video", &cfstr_Default.isa, 0, 0, 0);
    }

    else if (CFEqual(a2, @"VAEM_InputDeviceIsAvailableForRouteConfiguration"))
    {
      VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(a4);
      VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(a5);
      v15 = vaemSystemHasAudioInputDeviceForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName);
      v16 = MEMORY[0x1E695E4C0];
      if (v15)
      {
        v16 = MEMORY[0x1E695E4D0];
      }

      v12 = CFRetain(*v16);
    }

    else
    {
      result = CFEqual(a2, @"VAEM_ActiveInputRouteNamesForRouteConfiguration");
      if (!result)
      {
        return result;
      }

      v12 = vaemCopyActiveInputRouteNamesForRouteConfiguration(a4, a5, 0, 0);
    }

    return OUTLINED_FUNCTION_6_3(v12);
  }

  return result;
}

void CMSMNotificationUtility_PostIsRecordingMutedDidChange(void *a1)
{
  location[16] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(a1, "isRecordingMuted")), @"Muted"}];
  if ([a1 hasExternalMuteNotificationContext])
  {
    if (dword_1EB75DE40)
    {
      v11 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v2 setObject:@"External" forKey:{@"Context", v6, v7}];
    [a1 setHasExternalMuteNotificationContext:0];
  }

  objc_initWeak(location, a1);
  v4 = MXGetNotificationSenderQueue();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CMSMNotificationUtility_PostIsRecordingMutedDidChange_block_invoke;
  v8[3] = &unk_1E7AEAD68;
  objc_copyWeak(&v9, location);
  v8[4] = a1;
  v8[5] = v2;
  MXDispatchAsync("CMSMNotificationUtility_PostIsRecordingMutedDidChange", "CMSessionManager_NotificationUtilities.m", 1482, 0, 0, v4, v8);
  objc_destroyWeak(&v9);
  objc_destroyWeak(location);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B17FDE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t CMSMUtility_UpdatePlayAndRecordAppSpeechState(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = dword_1EB75E13C;
  FigSimpleMutexLock();
  v3 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v4)
  {

    goto LABEL_18;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v17;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v16 + 1) + 8 * i);
      if ([v9 isActive] && CMSMUtility_ShouldCarPlaySpeechAppStateBeSet(v9))
      {
        if ([v9 isRecording] && ((objc_msgSend(v9, "isTheAssistant") & 1) != 0 || (objc_msgSend(v9, "hasPhoneCallBehavior") & 1) == 0))
        {
          dword_1EB75E13C = 11;

          goto LABEL_21;
        }

        dword_1EB75E13C = 10;
        v6 = 1;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

  if (!v6)
  {
LABEL_18:
    if (!CMSMUtility_IsIndirectCarPlaySpeechModeTransitionsRequired())
    {
      if (a1 && CMSMUtility_ShouldCarPlaySpeechAppStateBeSet(a1))
      {
        v10 = 10;
        goto LABEL_20;
      }

      if ((v2 & 0xFFFFFFFE) != 0xA)
      {
        dword_1EB75E13C = 0;
        goto LABEL_21;
      }
    }

    v10 = -1;
LABEL_20:
    dword_1EB75E13C = v10;
  }

LABEL_21:
  result = FigSimpleMutexUnlock();
  if (v2 != dword_1EB75E13C)
  {
    v12 = *MEMORY[0x1E69626C0];
    result = FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1);
    if (result)
    {
      v13 = dword_1EB75E13C;
      if (CMSMUtility_IsIndirectCarPlaySpeechModeTransitionsRequired())
      {
        v14 = 0;
      }

      else if (([a1 hasPhoneCallBehavior] & 1) != 0 || CMSUtility_IsAudioCategoryRingtone(a1) || CMSMUtility_PhoneCallOrRingtoneExists())
      {
        v14 = 1;
      }

      else if ([+[MXSessionManager phoneCallIsAboutToGoActiveOverCarPlay] sharedInstance]
      {
        v14 = 1;
      }

      else
      {
        v14 = 0xFFFFFFFFLL;
      }

      result = FigEndpointCentralUpdateiOSDeviceState(qword_1EB75E178, v14, v13, @"PlayAndRecord category app activity", 0);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMUtility_UpdateVoiceAssistantActiveStateForCarPlay(void *a1)
{
  if (!qword_1EB75E178 || ![a1 isTheAssistant])
  {
    return 0;
  }

  if ([a1 isActive])
  {
    IsSiriActive = 1;
  }

  else
  {
    IsSiriActive = CMSMUtility_IsSiriActive();
  }

  v4 = qword_1EB75E178;

  return FigEndpointCentralUpdateIsVoiceAssistantActive(v4, IsSiriActive);
}

uint64_t CMSMUtility_ShouldCarPlaySpeechAppStateBeSet(uint64_t result)
{
  v4 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if ([+[MXSessionManager sessionUtilizesIndependentRecordingOnly:"sessionUtilizesIndependentRecordingOnly:"]
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_9;
    }

    if (CMSUtility_IsAudioModeCameraRelated(v1) || CMSUtility_IsAudioCategoryVoicemail(v1))
    {
LABEL_9:
      result = 0;
      goto LABEL_10;
    }

    if (CMSMUtility_IsPlayAndRecordCategory([v1 audioCategory]))
    {
      result = 1;
    }

    else
    {
      result = [v1 hasPhoneCallBehavior];
    }
  }

LABEL_10:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *CMSUtility_IsAudioCategoryVoicemail(void *result)
{
  if (result)
  {
    [result audioCategory];

    return FigCFEqual();
  }

  return result;
}

CFTypeRef CMSMUtility_CopySystemAudioRoutingContextUUID()
{
  result = qword_1EB75E190;
  if (qword_1EB75E190 || (FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&qword_1EB75E190), (result = qword_1EB75E190) != 0))
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef FigRoutingManagerCopyActivatedCarPlayEndpoint(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  cf = 0;
  if (FigRoutingManagerContextUtilities_CopyActivatedEndpoints(a1, &cf))
  {
LABEL_3:
    v1 = 0;
    goto LABEL_4;
  }

  if (!cf)
  {
    return 0;
  }

  Count = CFArrayGetCount(cf);
  if (Count < 1)
  {
    goto LABEL_3;
  }

  v3 = Count;
  v4 = 0;
  v5 = *MEMORY[0x1E69626C0];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(cf, v4);
    if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
    {
      break;
    }

    if (v3 == ++v4)
    {
      goto LABEL_3;
    }
  }

  if (!ValueAtIndex)
  {
    goto LABEL_3;
  }

  v1 = CFRetain(ValueAtIndex);
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

__CFString *CMSMUtility_GetVoicePromptStyle()
{
  FigSimpleMutexLock();
  IsDoingActivity = FigEndpointCentralEntityIsDoingActivity(qword_1EB75E178, 0x1F288E5F0, @"PhoneCall");
  v1 = FigEndpointCentralEntityIsDoingActivity(qword_1EB75E178, 0x1F288E5F0, @"Speech");
  FigSimpleMutexUnlock();
  if ([+[MXSessionManager isSessionWithAudioModeRecording:"isSessionWithAudioModeRecording:"]
  {
    v2 = kCMSessionVoicePromptStyle_None;
  }

  else if ([+[MXSessionManager sharedInstance](MXSessionManager areSessionsWithAudioModesActive:"areSessionsWithAudioModesActive:", [+[MXSessionManager audioModesWithShortVoicePromptStyle] sharedInstance]]
  {
    v2 = kCMSessionVoicePromptStyle_Short;
  }

  else
  {
    v2 = kCMSessionVoicePromptStyle_Short;
    if (!CMSMUtility_PhoneCallOrRingtoneExists() && !IsDoingActivity && !v1 && ![+[MXSessionManager sharedInstance](MXSessionManager isSessionWithAudioCategoryActive:"isSessionWithAudioCategoryActive:", @"Voicemail"]&& ![+[MXSessionManager isSessionWithAudioModePlaying:"isSessionWithAudioModePlaying:"]
    {
      v2 = kCMSessionVoicePromptStyle_Normal;
    }
  }

  return *v2;
}

uint64_t FigEndpointCentralEntityIsDoingActivity(uint64_t result, uint64_t a2, const void *a3)
{
  v7 = 0u;
  v8 = 0u;
  if (result)
  {
    result = CMBaseObjectGetDerivedStorage();
    if (result)
    {
      v5 = result;
      result = 0;
      if (a2)
      {
        if (a3)
        {
          fsmcontroller_GetCurrentMode(*(v5 + 24), &v7);
          if (CFEqual(a3, @"PhoneCall"))
          {
            v6 = &v8 + 8;
          }

          else if (CFEqual(a3, @"Speech"))
          {
            v6 = &v8;
          }

          else
          {
            result = CFEqual(a3, @"TurnByTurnNavigation");
            if (!result)
            {
              return result;
            }

            v6 = &v8 + 12;
          }

          *v6;
          return FigCFEqual();
        }
      }
    }
  }

  return result;
}

void *CMSUtility_IsAudioCategoryRingtone(void *result)
{
  if (result)
  {
    [result audioCategory];

    return FigCFEqual();
  }

  return result;
}

void CMSUtility_ComputePlaybackVolume(void *a1, float *a2)
{
  if ([a1 userMuted] && !PVMIsOKToMuteCurrentCategory())
  {
    [a1 setUserMuted:0];
  }

  v4 = 0.0;
  if (([a1 userMuted] & 1) == 0)
  {
    v5 = PVMGetCurrentPreferredRawVolume();
    v6 = [a1 audioDestinationPriority];
    v7 = @"VirtualAudioDevice_Default";
    if (a1)
    {
      v7 = @"VirtualAudioDevice_Default";
      if (v6)
      {
        v7 = [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v6];
      }
    }

    if (!FigCFEqual() || ([a1 isTheAssistant] & 1) != 0 || (objc_msgSend(a1, "audioCategory"), FigCFEqual()))
    {
      v23 = 0;
      *cf = 0u;
      *v22 = 0u;
      cmsmCopyCurrentActiveRouteInfoAtIndexForVADUID(v7, 0, &cf[1], &v22[1], v22);
      v8 = -[MXSessionManager getUncustomizedCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "getUncustomizedCategory:", [a1 audioCategory]);
      v9 = [a1 audioMode];
      *number = *cf;
      v19 = *v22;
      v20 = v23;
      v10 = PVMGetVolumePreference(v8, v9, number);
      v5 = PVMGetRawVolumeForCurrentRouteFromVolume(v8, [a1 audioMode], v10);
      if ([a1 isTheAssistant])
      {
        if (!PVMVolumePrefExistsForRouteAndCategory(cf[1], v22[1], v22[0], 0, 0))
        {
          v11 = FigRoutingManagerCopyEndpointWithDeviceID(v22[1], 1, *MEMORY[0x1E69618F8], 0);
          if (v11)
          {
            v12 = v11;
            number[0] = 0;
            valuePtr = 0;
            CMBaseObject = FigEndpointGetCMBaseObject();
            VTable = CMBaseObjectGetVTable();
            v15 = *(*(VTable + 8) + 48);
            if (v15)
            {
              v16 = *(VTable + 8) + 48;
              v15(CMBaseObject, 0x1F289CDB0, *MEMORY[0x1E695E480], number);
              if (number[0])
              {
                CFNumberGetValue(number[0], kCFNumberIntType, &valuePtr);
                if (number[0])
                {
                  CFRelease(number[0]);
                  number[0] = 0;
                }

                if (vaeDoesPortSupportDoAP(valuePtr))
                {
                  v5 = 0.5;
                }
              }
            }

            CFRelease(v12);
          }
        }
      }

      if (cf[1])
      {
        CFRelease(cf[1]);
      }

      if (v22[1])
      {
        CFRelease(v22[1]);
      }

      if (v22[0])
      {
        CFRelease(v22[0]);
      }
    }

    if (v5 >= 0.0)
    {
      v4 = v5;
      if (v5 > 1.0)
      {
        v4 = 1.0;
      }
    }
  }

  if (a2)
  {
    *a2 = v4;
  }
}

float PVMGetCurrentPreferredRawVolume()
{
  DefaultVolume = pvmGetDefaultVolume();
  if (!PVMInitialize())
  {
    v1 = *sStorage;
    FigSimpleMutexLock();
    v2 = *(sStorage + 308);
    v3 = *(sStorage + 232);
    v4 = *(sStorage + 280);
    v10[0] = *(sStorage + 264);
    v10[1] = v4;
    v11 = *(sStorage + 296);
    if (v2 <= 1.0)
    {
      v5 = v2;
    }

    else
    {
      v5 = 1.0;
    }

    v6 = *(sStorage + 280);
    v12[0] = *(sStorage + 264);
    v12[1] = v6;
    v13 = *(sStorage + 296);
    VolumeLimitPref = pvmGetVolumeLimitPref(v12);
    DefaultVolume = v5 * (VolumeLimitPref * pvmGetCurrentVolumeLimitForRoute(v10, v3));
    v8 = *sStorage;
    FigSimpleMutexUnlock();
  }

  return DefaultVolume;
}

__CFString *pvmGetMappedCategoryWithModeAppended(const __CFString *a1, const void *a2)
{
  if (!a1)
  {
    return @"Audio/Video";
  }

  v4 = *sStorage;
  FigSimpleMutexLock();
  if (a2)
  {
    CategoryStringWithModeAppended = pvmCreateCategoryStringWithModeAppended(a1, a2);
  }

  else
  {
    CFRetain(a1);
    CategoryStringWithModeAppended = a1;
  }

  v7 = sStorage;
  v8 = *(sStorage + 192);
  if (v8)
  {
    Value = CFDictionaryGetValue(v8, CategoryStringWithModeAppended);
    if (Value)
    {
      goto LABEL_28;
    }

    v7 = sStorage;
  }

  v9 = *(v7 + 184);
  if (v9)
  {
    v10 = CFDictionaryGetValue(v9, CategoryStringWithModeAppended);
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      goto LABEL_20;
    }

    v13 = CFDictionaryGetValue(*(sStorage + 184), a1);
    v12 = v13;
    if (v13)
    {
      if (CFStringFind(v13, @"~", 0).length)
      {
        if (!a2)
        {
          v11 = CFDictionaryGetValue(*(sStorage + 184), v12);
          goto LABEL_20;
        }
      }

      else
      {
        v14 = pvmCreateCategoryStringWithModeAppended(v12, a2);
        if (v14)
        {
          v15 = v14;
          v11 = CFDictionaryGetValue(*(sStorage + 184), v14);
          CFRelease(v15);
          goto LABEL_20;
        }
      }
    }

    v11 = 0;
LABEL_20:
    if (v11)
    {
      v16 = v11;
    }

    else
    {
      v16 = v12;
    }

    if (v16)
    {
      Value = v16;
    }

    else
    {
      Value = a1;
    }

    v17 = *(sStorage + 192);
    if (v17)
    {
      CFDictionarySetValue(v17, CategoryStringWithModeAppended, Value);
    }

    goto LABEL_28;
  }

  Value = 0;
LABEL_28:
  if (CategoryStringWithModeAppended)
  {
    CFRelease(CategoryStringWithModeAppended);
  }

  v18 = *sStorage;
  FigSimpleMutexUnlock();
  return Value;
}

CFStringRef pvmCreateCategoryStringWithModeAppended(CFTypeRef cf, const void *a2)
{
  if (!cf)
  {
    return 0;
  }

  if (a2)
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(Mutable, cf);
    CFArrayAppendValue(Mutable, a2);
    v6 = CFStringCreateByCombiningStrings(v4, Mutable, @"~");
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return v6;
  }

  return CFRetain(cf);
}

float pvmGetMinimumCategoryVolume(const __CFString *a1, const void *a2)
{
  valuePtr = 0.0;
  MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a1, a2);
  v3 = *(sStorage + 208);
  if (!v3 || (Value = CFDictionaryGetValue(v3, MappedCategoryWithModeAppended)) == 0 || (CFNumberGetValue(Value, kCFNumberFloat32Type, &valuePtr), result = valuePtr, valuePtr <= 0.0))
  {
    v6 = FigCFEqual();
    result = valuePtr;
    if (v6)
    {
      return 0.0625;
    }
  }

  return result;
}

uint64_t systemController_notificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __CFDictionary *a5)
{
  if (FigCFEqual())
  {
    v6 = kMXSystemControllerNotificationKey_SomeClientIsPlayingDidChange_IsPlaying;
  }

  else if (FigCFEqual())
  {
    v6 = kMXSystemControllerNotificationKey_NowPlayingAppIsPlayingDidChange_State;
  }

  else if (FigCFEqual())
  {
    v6 = kMXSystemControllerNotificationKey_SpeechDetectionDevicePresentDidChange_Present;
  }

  else if (FigCFEqual())
  {
    v6 = kMXSystemControllerNotificationKey_CurrentRouteHasVolumeControlDidChange_HasVolumeControl;
  }

  else
  {
    if (!FigCFEqual())
    {
      goto LABEL_13;
    }

    v6 = kMXSystemControllerNotificationKey_CallIsActiveDidChange_CallActive;
  }

  v7 = *v6;
  if (!CFDictionaryGetValue(a5, *v6))
  {
    CFDictionarySetValue(a5, v7, *MEMORY[0x1E695E4C0]);
  }

LABEL_13:
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t figConnection_notificationCallback(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if ([a3 isEqualToString:AVSystemController_FullMuteDidChangeNotification])
  {
    [a2 postFullMuteDidChangeNotification:a5];

    return [a2 postEffectiveVolumeNotification:a5];
  }

  else
  {
    if ([a3 isEqualToString:AVSystemController_SystemVolumeDidChangeNotification])
    {
      [a2 postEffectiveVolumeNotification:a5];
    }

    return [AVSystemControllerCommon postNotificationOnMainQueue:a5 notification:a3 object:a2];
  }
}

__CFDictionary *cmsutility_createVolumeChangeMessageForAudioStatistics(const char *a1, const void *a2, const void *a3, int a4, int a5, float a6)
{
  valuePtr = a6;
  v11 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13 = CFNumberCreate(v11, kCFNumberFloat32Type, &valuePtr);
  CFDictionarySetValue(Mutable, @"MXSessionVolume", v13);
  if (v13)
  {
    CFRelease(v13);
  }

  v20 = FigGetUpTimeNanoseconds() / 1000000000;
  v14 = CFNumberCreate(v11, kCFNumberSInt64Type, &v20);
  CFDictionarySetValue(Mutable, @"MXSessionVolumeOperationTime", v14);
  if (v14)
  {
    CFRelease(v14);
  }

  if (a1)
  {
    v15 = CFStringCreateWithCString(v11, a1, 0x8000100u);
    CFDictionarySetValue(Mutable, @"MXSessionVolumeOperationProcess", v15);
    if (v15)
    {
      CFRelease(v15);
    }
  }

  if (a2)
  {
    CFDictionarySetValue(Mutable, @"MXSessionVolumeCategory", a2);
  }

  if (a3)
  {
    CFDictionarySetValue(Mutable, @"MXSessionVolumeRoute", a3);
  }

  v19 = a4;
  v16 = CFNumberCreate(v11, kCFNumberSInt32Type, &v19);
  CFDictionarySetValue(Mutable, @"MXSessionVolumePlayingState", v16);
  if (v16)
  {
    CFRelease(v16);
  }

  StringForVolumeOperationType = CMSMUtility_GetStringForVolumeOperationType(a5);
  CFDictionarySetValue(Mutable, @"MXSessionVolumeOperationType", StringForVolumeOperationType);
  return Mutable;
}

__CFString *CMSMUtility_GetStringForVolumeOperationType(int a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Automatic";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"UserInitiated";
  }
}

uint64_t CMSUtility_IsPlayingToDefaultVAD(void *a1)
{
  v2 = [a1 audioDestinationPriority];
  if (a1 && v2)
  {
    [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v2];
  }

  return FigCFEqual();
}

uint64_t vaeGetConnectionTypeForPort(uint64_t result)
{
  v7 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    *&inAddress.mSelector = 0x676C6F6270637470;
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
      result = outData;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *cmsmCreateRouteDescriptionArrayFromPortIDsForRouteConfiguration(uint64_t a1, void *a2, int a3, const __CFDictionary *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [a2 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(a2);
        }

        v12 = CMSMCreateRouteDescriptionFromPortIDOrRouteConfiguration([*(*(&v24 + 1) + 8 * i) unsignedIntValue], 0, 0, 0, 0, 0);
        CFArrayAppendValue(Mutable, v12);
        if (v12)
        {
          CFRelease(v12);
        }
      }

      v9 = [a2 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v9);
  }

  if (FigCFEqual())
  {
    v13 = Mutable == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    Count = CFArrayGetCount(Mutable);
    if (Count >= 2)
    {
      v15 = Count;
      v34 = 0;
      v35 = 0;
      cmsmCopyHFPOrA2DPBTDeviceDetails(a4, &v34, &v35, 0);
      v16 = 0;
      while (1)
      {
        v32 = 0;
        v33 = 0;
        v31 = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v16);
        cmsmCopyHFPOrA2DPBTDeviceDetails(ValueAtIndex, &v33, &v32, &v31);
        v18 = v32;
        if (!v32)
        {
          goto LABEL_40;
        }

        v19 = v16 + 1;
        if (v16 + 1 >= v15)
        {
          goto LABEL_39;
        }

        do
        {
          cf = 0;
          v30 = 0;
          v28 = 0;
          v20 = CFArrayGetValueAtIndex(Mutable, v19);
          cmsmCopyHFPOrA2DPBTDeviceDetails(v20, &v30, &cf, &v28);
          if (FigCFEqual())
          {
            if (FigCFEqual() && FigCFEqual())
            {
              if (FigCFEqual())
              {
                v21 = v19;
              }

              else
              {
                v21 = v16;
              }

LABEL_29:
              CFArrayRemoveValueAtIndex(Mutable, v21);
              --v15;
              goto LABEL_31;
            }

            if (FigCFEqual() && FigCFEqual())
            {
              if (FigCFEqual())
              {
                v21 = v16;
              }

              else
              {
                v21 = v19;
              }

              goto LABEL_29;
            }
          }

          ++v19;
LABEL_31:
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v28)
          {
            CFRelease(v28);
            v28 = 0;
          }

          if (v30)
          {
            CFRelease(v30);
          }
        }

        while (v19 < v15);
        v18 = v32;
        if (v32)
        {
LABEL_39:
          CFRelease(v18);
          v32 = 0;
        }

LABEL_40:
        if (v31)
        {
          CFRelease(v31);
          v31 = 0;
        }

        if (v33)
        {
          CFRelease(v33);
        }

        if (++v16 >= v15)
        {
          if (v35)
          {
            CFRelease(v35);
            v35 = 0;
          }

          if (v34)
          {
            CFRelease(v34);
          }

          break;
        }
      }
    }
  }

  if (a3)
  {
    v38.length = CFArrayGetCount(Mutable);
    v38.location = 0;
    CFArraySortValues(Mutable, v38, routeDescriptionComparator, 0x20);
  }

  v22 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t CMSUtility_GetCurrentOutputVADID(void *a1)
{
  if (a1)
  {
    v1 = [a1 audioDestinationPriority];
    if (v1)
    {
      v2 = [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v1];
    }

    else
    {
      v2 = @"VirtualAudioDevice_Default";
    }

    return CMSMUtility_GetVADIDForVADName(v2);
  }

  else
  {
    v3 = +[MXSessionManager sharedInstance];

    return [(MXSessionManager *)v3 defaultVADID];
  }
}

uint64_t CMSMUtility_GetVADIDForVADName(uint64_t a1)
{
  if (a1 && ((v2 = [(NSDictionary *)[+[MXSessionManager sharedInstance](MXSessionManager audioDeviceInfo] objectForKey:a1)]!= 0 || CMSMVAUtility_IsAdditiveRoutingEnabled() && (v2 = [(NSDictionary *)[+[MXAdditiveRoutingManager vadNameToID] objectForKey:a1 sharedInstance]]!= 0))
  {

    return [v2 unsignedIntValue];
  }

  else
  {
    v4 = +[MXSessionManager sharedInstance];

    return [(MXSessionManager *)v4 defaultVADID];
  }
}

const void *CMSUtility_CopyActivationContextForPickingRoutes(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [a1 activationContext];
    if (v1)
    {
LABEL_3:
      CFRetain(v1);
    }
  }

  else
  {
    v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v1 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v1)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v1; i = i + 1)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v4);
          }

          v7 = *(*(&v8 + 1) + 8 * i);
          if ([v7 isActive] && (objc_msgSend(v7, "currentlyControllingFlags") & 2) != 0)
          {
            v1 = [v7 activationContext];
            goto LABEL_16;
          }
        }

        v1 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v1)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    if (v1)
    {
      goto LABEL_3;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

CFPropertyListRef cmsDeepCopyPickedRoute(void *a1)
{
  v2 = CMSUtility_CopyNonNULLCategoryForPickingRoutes(a1);
  v3 = CMSUtility_CopyNonNULLModeForPickingRoutes(a1);
  v4 = CMSUtility_CopyAllowedPortTypesArrayForPickingRoutes(a1);
  v5 = CMSUtility_CopyActivationContextForPickingRoutes(a1);
  v6 = cmsmCopyPickableRoutesForRouteConfiguration(v2, v3, v5, v4, [a1 prefersBluetoothHighQualityContentCapture]);
  v7 = cmsmDeepCopyPickedRouteDescription(v6);
  if (v6)
  {
    CFRelease(v6);
  }

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

  return v7;
}

const __CFDictionary *cmsmGetPickedRouteApplierFunction(const __CFDictionary *result, const __CFDictionary **a2)
{
  if (!*a2)
  {
    v3 = result;
    result = CFDictionaryGetValue(result, @"RouteCurrentlyPicked");
    if (result)
    {
      result = CFBooleanGetValue(result);
      if (result)
      {
        *a2 = v3;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return [v29 countByEnumeratingWithState:&a11 objects:&a29 count:16];
}

uint64_t OUTLINED_FUNCTION_18_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return volumeControllerRemote_getObjectID(a1, va);
}

void OUTLINED_FUNCTION_18_3(const void *a1, const void *a2, void *a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, char *a12)
{

  routingSessionManager_updateCurrentSession(a1, a2, a3, a4, a5, 1, 0, 0, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_35_0@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);

  return volumeControllerRemote_getObjectID(a1, va);
}

void routingContextResilientRemote_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    routingContextResilientRemote_stopObservingRemoteContext();
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    (*(v1 + 16))();
    v2 = *(DerivedStorage + 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 16);
  FigSimpleMutexDestroy();
  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {

    dispatch_release(v6);
  }
}

uint64_t routingContextResilientRemote_stopObservingRemoteContext()
{
  CMNotificationCenterGetDefaultLocalCenter();
  for (i = 0; i != 3; ++i)
  {
    v1 = *sFigRoutingContextPropertyChangeNotifications[i];
    FigNotificationCenterRemoveWeakListener();
  }

  for (j = 0; j != 6; ++j)
  {
    v3 = *sFigRoutingContextOtherNotifications[j];
    FigNotificationCenterRemoveWeakListener();
  }

  return FigNotificationCenterRemoveWeakListener();
}

void *CMSUtility_GetPrefersNoDucking(void *result)
{
  if (result)
  {
    return [result prefersNoDucking];
  }

  return result;
}

uint64_t _CMSessionCopyProperty(void *a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v8 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    v9 = [a1 copyPropertyForKey:a2 valueOut:a4];
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (a1)
    {
      v11 = a1[2];
    }

    else
    {
      v11 = 0;
    }

    v9 = MXCoreSessionCopyProperty(v11, a2, a3, a4);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_CMSessionCopyProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
  }

  objc_autoreleasePoolPop(v8);
  return v9;
}

id CMSMUtility_CreateAudioQueueOptionsDictionary(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = 0.0;
  if (MX_FeatureFlags_IsHandoffEnabled() && CMSUtility_IsAllowedToFadeInTemporarily(a1))
  {
    CMSMUtility_GetFadeInDurationForPlaybackHandoff();
    v3 = v4;
  }

  if ([a1 isDucked] && (objc_msgSend(a1, "duckedOnVAD") & 1) == 0)
  {
    [a1 audioQueueDuckVolume];
    v5 = v15;
    [a1 audioQueueFadeDuration];
    v3 = v16;
    v6 = 0.0;
  }

  else
  {
    v5 = 1.0;
    v6 = 0.0;
    if (CMSUtility_IsAudioCategoryRingtone(a1))
    {
      if (vaemStarkAudioPortIsCurrentlyActive())
      {
        v7 = CMSMUtility_CopyCarPlaySession();
        if (v7)
        {

          if (MX_FeatureFlags_IsCarPlayRingtoneFadeInEnabled())
          {
            FigGetCFPreferenceDoubleWithDefault();
            *&v8 = v8;
            v3 = 10.0;
            if (*&v8 < 10.0)
            {
              FigGetCFPreferenceDoubleWithDefault();
              v3 = v9;
            }

            FigGetCFPreferenceDoubleWithDefault();
            *&v10 = v10;
            v6 = 1.0;
            if (*&v10 < 1.0)
            {
              FigGetCFPreferenceDoubleWithDefault();
              v6 = v11;
            }

            v12 = objc_alloc(MEMORY[0x1E696AD98]);
            *&v13 = v6;
            v14 = [v12 initWithFloat:v13];
            [v2 setObject:v14 forKey:@"AsyncFadeInitialVolume"];
          }
        }
      }
    }
  }

  v17 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v18 = v3;
  v19 = [v17 initWithFloat:v18];
  v20 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v21 = v5;
  v22 = [v20 initWithFloat:v21];
  [v2 setObject:v19 forKey:@"FadeDuration"];
  [v2 setObject:v22 forKey:@"DuckVolume"];
  v23 = [a1 silentMuted];
  v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{objc_msgSend(a1, "silentMuted")}];
  [v2 setObject:v24 forKey:@"IsSilentMuted"];

  if (v5 != 1.0 || v3 != 0.0 || (v6 != 0.0 ? (v25 = 1) : (v25 = v23), v25 == 1))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v2;
}

NSString *CMSUtility_IsAllowedToFadeInTemporarily(void *a1)
{
  IsHandoffEnabled = MX_FeatureFlags_IsHandoffEnabled();
  result = 0;
  if (a1)
  {
    if (IsHandoffEnabled)
    {
      result = [a1 displayID];
      if (result)
      {
        result = [+[MXSessionManager sharedInstance](MXSessionManager appAllowedToFadeInTemporarily];
        if (result)
        {
          [a1 displayID];
          [+[MXSessionManager sharedInstance](MXSessionManager appAllowedToFadeInTemporarily];
          result = FigCFEqual();
          if (result)
          {
            [a1 audioCategory];
            return (FigCFEqual() != 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t CMSessionCopyProperty(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v8 = objc_autoreleasePoolPush();
  if (isCoreSessionSidekick(a1))
  {
    v9 = [a1 copyPropertyForKey:a2 valueOut:a4];
    *(v16 + 6) = v9;
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v11 = MXGetSerialQueue();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __CMSessionCopyProperty_block_invoke;
    v14[3] = &unk_1E7AE79A8;
    v14[4] = &v15;
    v14[5] = a1;
    v14[6] = a2;
    v14[7] = a3;
    v14[8] = a4;
    MXDispatchAsyncAndWait("CMSessionCopyProperty", "CMSession_CInterface.m", 549, 0, 0, v11, v14);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"CMSessionCopyProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
  }

  objc_autoreleasePoolPop(v8);
  v12 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  return v12;
}

void sub_1B1800434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMSessionCopyProperty_block_invoke(uint64_t a1)
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

  result = MXCoreSessionCopyProperty(v3, *(a1 + 48), *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CMSMUtility_IsCarPlaySessionPresent()
{
  result = CMSMUtility_CopyCarPlaySession();
  if (result)
  {

    return 1;
  }

  return result;
}

id CMSMUtility_CopyCarPlaySession()
{
  FigSimpleMutexLock();
  v0 = qword_1EB75E170;
  FigSimpleMutexUnlock();
  return v0;
}

void cmsmCopyVADPickedRouteDescriptionForRouteConfiguration(NSDictionary *a1, uint64_t a2, const void *a3, const void *a4, int a5, __CFDictionary **a6)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    *a6 = 0;
  }

  if (a1)
  {
    VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(a1);
    VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(a2);
    v13 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(VADCategoryFromFigCategoryName, VADModeFromFigModeName, a3, a4, a5, 0, 0x1F2893B50);
    v14 = v13;
    if (!v13)
    {
      goto LABEL_34;
    }

    v15 = CFGetTypeID(v13);
    if (v15 != CFArrayGetTypeID())
    {
      goto LABEL_34;
    }

    Count = CFArrayGetCount(v14);
    if (Count != 1 && (Count < 2 || !CMSMVAUtility_IsBluetoothSharingSessionEnabled(v14)))
    {
      goto LABEL_34;
    }

    valuePtr = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v14, 0);
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
    ConnectionTypeForPort = vaeGetConnectionTypeForPort(valuePtr);
    if (ConnectionTypeForPort == 1885544823 || (v19 = ConnectionTypeForPort, vaeIsQuiesceableWiredPort(valuePtr)))
    {
LABEL_25:
      HIDWORD(v40) = 0;
      v31 = CFArrayGetValueAtIndex(v14, 0);
      CFNumberGetValue(v31, kCFNumberSInt32Type, &v40 + 4);
      v22 = HIDWORD(v40);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
    }

    else
    {
      if (v19 == 1885561449)
      {
        v39 = a3;
        LODWORD(v40) = a5;
        v20 = cmsmCopyBuiltinPortsListForRouteConfigurationScopeAndDevice(VADCategoryFromFigCategoryName, VADModeFromFigModeName, a4);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v21 = [v20 countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v21)
        {
          v27 = v21;
          v28 = *v42;
          while (2)
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v42 != v28)
              {
                objc_enumerationMutation(v20);
              }

              v30 = valuePtr;
              if (v30 == [*(*(&v41 + 1) + 8 * i) unsignedIntValue])
              {

                a5 = v40;
                goto LABEL_25;
              }
            }

            v27 = [v20 countByEnumeratingWithState:&v41 objects:v46 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }
        }

        a5 = v40;
      }

      v22 = OUTLINED_FUNCTION_0_20();
    }

    v32 = CMSMCreateRouteDescriptionFromPortIDOrRouteConfiguration(v22, v23, v24, v25, v26, 0);
    if (v32)
    {
      if (!a6)
      {
LABEL_29:
        if (v14)
        {
          CFRelease(v14);
        }

        if (v32)
        {
          CFRelease(v32);
        }

        goto LABEL_33;
      }
    }

    else
    {
LABEL_34:
      v34 = OUTLINED_FUNCTION_0_20();
      v32 = CMSMCreateRouteDescriptionFromPortIDOrRouteConfiguration(v34, v35, v36, v37, v38, a5);
      if (!a6)
      {
        goto LABEL_29;
      }
    }

    *a6 = v32;
    v32 = 0;
    goto LABEL_29;
  }

LABEL_33:
  v33 = *MEMORY[0x1E69E9840];
}

void __FigRoutingContextResilientRemoteCopySystemMusicContext_block_invoke_2(uint64_t a1)
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

void routingContextRemoteXPC_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9[5] = 0;
  v1 = *(DerivedStorage + 8);
  FigXPCRemoteClientDisassociateObject();
  if (v1)
  {
    v2 = *DerivedStorage == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2 && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendSyncMessage();
    FigXPCRelease();
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(DerivedStorage + 56);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 64);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(DerivedStorage + 40);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(DerivedStorage + 48);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (*(DerivedStorage + 72))
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __routingContextRemoteXPC_Finalize_block_invoke;
    v9[3] = &__block_descriptor_40_e5_v8__0l;
    v9[4] = DerivedStorage;
    MXDispatchSync("routingContextRemoteXPC_Finalize", "FigRoutingContextRemoteXPC.m", 580, 0, 0, gFigRoutingContextRemoteObject_1, v9);
    CFRelease(*(DerivedStorage + 72));
  }
}

uint64_t CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = [gIDSConnection copyNearbyPairedDevice];
  v1 = [v0 isNearby];

  if (byte_1EB75CCA0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  if (byte_1EB75CCA1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote_sharedAudioRouteIsConnectedToLocalAndRemoteOldValue != v3 || CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote_sharedAudioRouteIsConnectedToLocalOldValue != byte_1EB75CCA0 || CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote_sharedAudioRouteIsConnectedToRemoteOldValue != byte_1EB75CCA1)
  {
    CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote_sharedAudioRouteIsConnectedToLocalOldValue = byte_1EB75CCA0 != 0;
    CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote_sharedAudioRouteIsConnectedToRemoteOldValue = byte_1EB75CCA1 != 0;
    CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote_sharedAudioRouteIsConnectedToLocalAndRemoteOldValue = v3;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

void __CMSessionMgrCopyPickableRoutesForCategoryAndMode_block_invoke(uint64_t a1)
{
  v2 = CMSMUtility_CopyMappedMXSessionAudioCategory(*(a1 + 32));
  v3 = CMSMUtility_CopyMappedMXSessionAudioMode(*(a1 + 40));
  v4 = cmsmCopyPickableRoutesForRouteConfiguration([[MXSessionManager getBluetoothCustomizedAlternateCategory:"getBluetoothCustomizedAlternateCategory:enableBluetooth:" enableBluetooth:v2 sharedInstance:v3];
  **(a1 + 48) = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v4, 0);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t CMSUtility_GetCurrentInputVADID(void *a1)
{
  if (a1)
  {
    CurrentInputVADUID = CMSUtility_GetCurrentInputVADUID(a1);

    return CMSMUtility_GetVADIDForVADName(CurrentInputVADUID);
  }

  else
  {
    v3 = +[MXSessionManager sharedInstance];

    return [(MXSessionManager *)v3 defaultVADID];
  }
}

void DisposeRoutingContextServerState(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1 + 1;
    if (a1[1])
    {
      DisposeRoutingContextServerState_cold_1(a1, a1 + 1);
    }

    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
      a1[2] = 0;
    }

    if (*v2)
    {
      CFRelease(*v2);
      *v2 = 0;
    }

    v4 = a1[3];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

void *isCoreSessionSidekick(void *result)
{
  if (result)
  {
    return [result isMemberOfClass:objc_opt_class()];
  }

  return result;
}

void vaemPostAvailableEndpointsChangedNotification(char a1)
{
  if (qword_1EB75E090)
  {
    CFRetain(qword_1EB75E090);
    v2 = MXGetNotificationSenderQueue();
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __vaemPostAvailableEndpointsChangedNotification_block_invoke;
    v3[3] = &__block_descriptor_33_e5_v8__0l;
    v4 = a1;
    MXDispatchAsync("vaemPostAvailableEndpointsChangedNotification", "CMSessionManager_VAEndpointManager.m", 12192, 0, 0, v2, v3);
  }
}

void __vaemVADCurrentBufferFrameSizeListenerGuts_f_block_invoke()
{
  CMSMNotificationUtility_PostCurrentOutputDeviceBufferSizeDidChange();

  CMSMNotificationUtility_PostCurrentInputDeviceBufferSizeChange();
}

void CMSMNotificationUtility_PostCurrentOutputDeviceBufferSizeDidChange()
{
  if (MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled())
  {

    CMSMUtility_NotifyEachMatchingSession(0, 0, 0, @"CurrentOutputDeviceBufferSizeDidChange", 0, 0);
  }
}

uint64_t MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled()
{
  if (MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled_sHangsAudioSessionClientCachingEnabled;
}

void CMSMNotificationUtility_PostCurrentInputDeviceBufferSizeChange()
{
  if (MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled())
  {

    CMSMUtility_NotifyEachMatchingSession(0, 0, 0, @"CurrentInputDeviceBufferSizeDidChange", 0, 0);
  }
}

void *CMSUtility_GetWantsToBeVolumeButtonClient(void *result)
{
  if (result)
  {
    return [result wantsToBeVolumeButtonClient];
  }

  return result;
}

CFTypeRef cmsmCopyUpdatedVolumeOperationCategoryForNullDefaultCategory(int a1)
{
  if (CMSMDeviceState_ButtonsCanChangeRingerVolume() || (a1 - 1) >= 6 && a1 != 14)
  {
    v2 = qword_1ED6D2FF0;
    if (!qword_1ED6D2FF0)
    {
      return 0;
    }
  }

  else
  {
    v2 = @"Audio/Video";
    if (!@"Audio/Video")
    {
      return 0;
    }
  }

  return CFRetain(v2);
}

void *mx_runningBoardServices_createAssertionForTarget(uint64_t a1, __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = objc_autoreleasePoolPush();
  if (mx_runningBoardServices_createAssertionForTarget_onceToken != -1)
  {
    mx_runningBoardServices_createAssertionForTarget_cold_1();
  }

  v11 = [MEMORY[0x1E69C7560] attributeWithDomain:a3 name:a4];
  if (v11)
  {
    v12 = v11;
    v13 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v13 setDateFormat:@"YYYY.MM.dd_HH:mm:ss:ms"];
    v14 = MEMORY[0x1E696AEC0];
    if (CMSMDeviceState_IsAudiomxd())
    {
      v15 = @"audiomxd";
    }

    else
    {
      v15 = a2;
    }

    v16 = [v14 stringWithFormat:@"%@(%d).%@.%@", v15, mx_runningBoardServices_createAssertionForTarget_pid, objc_msgSend(v13, "stringFromDate:", objc_msgSend(MEMORY[0x1E695DF00], "date")), a2];
    v17 = objc_alloc(MEMORY[0x1E69C7548]);
    v32 = v12;
    v18 = [v17 initWithExplanation:v16 target:a1 attributes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v32, 1)}];
    v19 = v18;
    if (v18)
    {
      [v18 setInvalidationHandler:a5];
      v31 = 0;
      if (([v19 acquireWithError:&v31] & 1) == 0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v23 = [MXAudioStatistics sharedInstance:v29];
      v24 = [v19 explanation];
      [(MXAudioStatistics *)v23 sendSinglePerformanceMessageForAssertion:"mx_runningBoardServices_createAssertionForTarget" explanation:v24 activity:kMXAudioStatistics_AssertionActivity_AssertionCreated];
      v25 = MXGetAssertionLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v19 explanation];
        *buf = 136447490;
        v34 = "-MX_RunningBoardServices-";
        v35 = 2082;
        v36 = "mx_runningBoardServices_createAssertionForTarget";
        v37 = 1024;
        v38 = 721;
        v39 = 2048;
        v40 = v19;
        v41 = 2114;
        v42 = v26;
        v43 = 2114;
        v44 = a1;
        _os_log_impl(&dword_1B17A2000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Created assertion %p %{public}@ for target %{public}@", buf, 0x3Au);
      }
    }

    else
    {
      LODWORD(v31) = 0;
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    LODWORD(v31) = 0;
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v19 = 0;
  }

  objc_autoreleasePoolPop(v10);
  v27 = *MEMORY[0x1E69E9840];
  return v19;
}

void *mx_runningBoardServices_createMXAssertionForPID(uint64_t a1, __CFString *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69C7640] targetWithPid:a1];
  if (v5)
  {
    v6 = *MEMORY[0x1E69E9840];

    return mx_runningBoardServices_createAssertionForTarget(v5, a2, @"com.apple.mediaexperience", @"MediaPlayback", a3);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

const void *MX_RunningBoardServices_CreatePlaybackProcessAssertionForPID(uint64_t a1, __CFString *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1 < 1)
  {
    v5 = 0;
  }

  else
  {
    if (dword_1EB75DE60)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (mx_runningBoardServices_initializeGlobalAssertionProperties_onceToken != -1)
    {
      MX_RunningBoardServices_CreatePlaybackProcessAssertionForPID_cold_1();
    }

    MXAssertionForPID = mx_runningBoardServices_createMXAssertionForPID(a1, a2, &__block_literal_global_40);
    v5 = MXAssertionForPID;
    if (MXAssertionForPID)
    {
      if ([MXAssertionForPID isValid])
      {
        FigSimpleMutexLock();
        CFArrayAppendValue(gProcessAssertionArray, v5);
        FigSimpleMutexUnlock();
        if (FigCFEqual())
        {
          v7 = [objc_msgSend(mx_runningBoardServices_getProcessHandleForPID(a1) "hostProcess")];
          if (v7)
          {
            v8 = v7;
            v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:a2];
            v10 = v9;
            if (v9)
            {
              [(__CFString *)v9 appendString:@"MediaPlayback"];
              [(__CFString *)v10 appendString:@"ForHostProcess"];
              -[__CFString appendString:](v10, "appendString:", [MEMORY[0x1E696AEC0] stringWithFormat:@".(%d)", v8]);
              v11 = mx_runningBoardServices_createMXAssertionForPID(v8, v10, 0);
              v12 = v11;
              if (v11 && [v11 isValid])
              {
                FigSimpleMutexLock();
                CFDictionarySetValue(gHostProcessAssertionDictionary, v5, v12);
                FigSimpleMutexUnlock();
              }
            }
          }
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

void CMSMSleep_FetchPlaybackProcessAssertion(void *a1)
{
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"MediaExperience.%d.%@.%@.%@.isPlayingProcessAssertion", [objc_msgSend(a1 "clientPID")], objc_msgSend(a1, "displayID"), objc_msgSend(a1, "clientName"), objc_msgSend(a1, "audioCategory"));
  if (![a1 playbackAssertionRef] || (MX_RunningBoardServices_IsAssertionValid(objc_msgSend(a1, "playbackAssertionRef")) & 1) == 0)
  {
    PlaybackProcessAssertionForPID = MX_RunningBoardServices_CreatePlaybackProcessAssertionForPID([objc_msgSend(a1 "clientPID")], v2);
    [a1 setPlaybackAssertionRef:PlaybackProcessAssertionForPID];
    if (PlaybackProcessAssertionForPID)
    {
      CFRelease(PlaybackProcessAssertionForPID);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if ([a1 isMemberOfClass:objc_opt_class()])
  {

    CMSMSleep_FetchPlaybackProcessAssertionsForHostProcesses(a1);
  }
}

uint64_t cmsmUpdatePickableRouteDescriptionLists(char a1)
{
  v20 = *MEMORY[0x1E69E9840];
  -[NSRecursiveLock lock]([+[MXSessionManager sharedInstance](MXSessionManager propertiesLock], "lock");
  if ([(NSMutableDictionary *)[+[MXSessionManager sharedInstance](MXSessionManager pickableRoutesDescriptions] count]
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:-[MXSessionManager pickableRoutesDescriptions](+[MXSessionManager sharedInstance](MXSessionManager copyItems:{"sharedInstance"), "pickableRoutesDescriptions"), 1}];
  }

  else
  {
    v12 = 0;
  }

  -[NSMutableDictionary removeAllObjects]([+[MXSessionManager sharedInstance](MXSessionManager pickableRoutesDescriptions], "removeAllObjects");
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
        if ([v6 isActive])
        {
          if (!-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [v6 audioCategory]))
          {
            v7 = cmsmCopyPickableRoutesForRouteConfiguration([v6 audioCategory], objc_msgSend(v6, "audioMode"), objc_msgSend(v6, "activationContext"), objc_msgSend(v6, "allowedPortTypes"), objc_msgSend(v6, "prefersBluetoothHighQualityContentCapture"));
            if (v7)
            {
              CFRelease(v7);
            }
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  if (!-[NSMutableDictionary count]([+[MXSessionManager sharedInstance](MXSessionManager pickableRoutesDescriptions], "count") || ([(NSMutableDictionary *)[+[MXSessionManager sharedInstance](MXSessionManager pickableRoutesDescriptions] isEqualToDictionary:v12) & 1]== 0)
  {
    v8 = MXGetNotificationSenderQueue();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __cmsmUpdatePickableRouteDescriptionLists_block_invoke;
    v13[3] = &__block_descriptor_33_e5_v8__0l;
    v14 = a1;
    MXDispatchAsync("cmsmUpdatePickableRouteDescriptionLists", "CMSessionManager_VARouting.m", 222, 0, 0, v8, v13);
  }

  result = -[NSRecursiveLock unlock]([+[MXSessionManager sharedInstance](MXSessionManager propertiesLock], "unlock");
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSMNotificationUtility_PostSessionIsActiveDidChange(void *a1)
{
  BooleanPayload = CMSMNotificationUtility_CreateBooleanPayload(@"CMSessionIsActive", [a1 isActive]);
  if (BooleanPayload)
  {
    v2 = BooleanPayload;
    CMSMUtility_PostNotificationToSession(a1, @"CMSessionIsActiveDidChange");
    CFRelease(v2);
  }
}

uint64_t cmsmUpdateDeviceAudioFormatConfigIfNeeded(int a1)
{
  v88 = *MEMORY[0x1E69E9840];
  if (vaemGetDisallowAudioFormatChanges())
  {
    v2 = 4294954309;
    goto LABEL_3;
  }

  v70 = a1;
  *v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v5 = [obj countByEnumeratingWithState:v76 objects:v87 count:16];
  v6 = &qword_1EB75D000;
  if (!v5)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v71 = 0;
    goto LABEL_97;
  }

  v7 = v5;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v71 = 0;
  v11 = *v77;
  v73 = *v77;
  do
  {
    v12 = 0;
    v72 = v7;
    do
    {
      if (*v77 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*&v76[8] + 8 * v12);
      if ([v13 isActive] && CMSUtility_IsPlayingToDefaultVAD(v13))
      {
        v75 = [v13 preferredHardwareFormat];
        if (![v13 isPlaying] || (v14 = v71, objc_msgSend(v13, "doesntActuallyPlayAudio")))
        {
          if ([v13 doesntActuallyPlayAudio])
          {
            v14 = v9;
          }

          else
          {
            v14 = v10;
          }
        }

        v15 = v13;
        if (!v14)
        {
          goto LABEL_54;
        }

        if (*(v6 + 912))
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v11 = v73;
        }

        v17 = [v14 preferredHardwareFormat];
        if ([v75 isEqualToString:v17])
        {
          v18 = [v14 preferredNumberOfOutputChannels];
          if (v18 > [v13 preferredNumberOfOutputChannels])
          {
            if (*(v6 + 912))
            {
              goto LABEL_49;
            }

LABEL_37:
            v15 = v14;
            goto LABEL_54;
          }

          v19 = [v13 preferredNumberOfOutputChannels];
          if (v19 > [v14 preferredNumberOfOutputChannels])
          {
            v15 = v13;
            if (!*(v6 + 912))
            {
              goto LABEL_54;
            }

LABEL_52:
            v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v15 = v13;
            v6 = &qword_1EB75D000;
LABEL_53:
            v11 = v73;
            goto LABEL_54;
          }

          [v14 preferredOutputSampleRate];
          v21 = v20;
          [v13 preferredOutputSampleRate];
          if (v21 <= v22)
          {
            [v13 preferredOutputSampleRate];
            v24 = v23;
            [v14 preferredOutputSampleRate];
            if (v24 > v25)
            {
              v15 = v13;
              if (!*(v6 + 912))
              {
                goto LABEL_54;
              }

              goto LABEL_52;
            }

            if (([v14 currentlyControllingFlags] & 2) != 0)
            {
              if (*(v6 + 912))
              {
                goto LABEL_49;
              }
            }

            else
            {
              v26 = [v13 currentlyControllingFlags];
              v27 = *(v6 + 912);
              if ((v26 & 2) != 0)
              {
                v15 = v13;
                if (!v27)
                {
                  goto LABEL_54;
                }

                goto LABEL_52;
              }

              if (v27)
              {
                goto LABEL_49;
              }
            }
          }

          else if (*(v6 + 912))
          {
LABEL_49:
            v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v15 = v14;
            goto LABEL_53;
          }

          v15 = v14;
          goto LABEL_54;
        }

        if ([v17 isEqualToString:@"MATAtmos"])
        {
          if (!*(v6 + 912))
          {
            goto LABEL_37;
          }

          goto LABEL_49;
        }

        if ([v75 isEqualToString:@"MATAtmos"])
        {
          v15 = v13;
          if (!*(v6 + 912))
          {
            goto LABEL_54;
          }

          goto LABEL_52;
        }

        if ([v17 isEqualToString:@"AC-3"])
        {
          if (*(v6 + 912))
          {
            goto LABEL_49;
          }

          goto LABEL_37;
        }

        v15 = v14;
        if ([v75 isEqualToString:@"AC-3"])
        {
          v15 = v13;
          if (*(v6 + 912))
          {
            goto LABEL_52;
          }
        }

LABEL_54:
        if ([v13 isPlaying] && !objc_msgSend(v13, "doesntActuallyPlayAudio"))
        {
          v71 = v15;
          if (!v8)
          {
            goto LABEL_63;
          }
        }

        else
        {
          if ([v13 doesntActuallyPlayAudio])
          {
            v9 = v15;
          }

          else
          {
            v10 = v15;
          }

          if (!v8)
          {
LABEL_63:
            v8 = v13;
            v7 = v72;
            goto LABEL_91;
          }
        }

        if (*(v6 + 912))
        {
          v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v6 = &qword_1EB75D000;
          v11 = v73;
        }

        if (([v8 currentlyControllingFlags] & 2) != 0)
        {
          v7 = v72;
          if (!*(v6 + 912))
          {
            goto LABEL_91;
          }

          goto LABEL_89;
        }

        v7 = v72;
        if (([v13 currentlyControllingFlags] & 2) != 0)
        {
          if (!*(v6 + 912))
          {
            goto LABEL_81;
          }

          goto LABEL_87;
        }

        v31 = [v8 preferredIOBufferFrames];
        if (v31 > [v13 preferredIOBufferFrames])
        {
          if (!*(v6 + 912))
          {
            goto LABEL_91;
          }

          goto LABEL_89;
        }

        v32 = [v13 preferredIOBufferFrames];
        if (v32 > [v8 preferredIOBufferFrames])
        {
          if (!*(v6 + 912))
          {
            goto LABEL_81;
          }

          goto LABEL_87;
        }

        [v8 preferredIOBufferDuration];
        v34 = v33;
        [v13 preferredIOBufferDuration];
        if (v34 > v35)
        {
          if (!*(v6 + 912))
          {
            goto LABEL_91;
          }

          goto LABEL_89;
        }

        [v13 preferredIOBufferDuration];
        v37 = v36;
        [v8 preferredIOBufferDuration];
        if (v37 <= v38)
        {
          [v8 preferredOutputSampleRate];
          v40 = v39;
          [v13 preferredOutputSampleRate];
          if (v40 <= v41)
          {
            [v13 preferredOutputSampleRate];
            v43 = v42;
            [v8 preferredOutputSampleRate];
            v44 = *(v6 + 912);
            if (v43 <= v45)
            {
              if (v44)
              {
                goto LABEL_89;
              }
            }

            else
            {
              if (v44)
              {
                goto LABEL_87;
              }

              v8 = v13;
            }
          }

          else
          {
            if (!*(v6 + 912))
            {
              goto LABEL_91;
            }

LABEL_89:
            v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v6 = &qword_1EB75D000;
          }
        }

        else
        {
          if (!*(v6 + 912))
          {
LABEL_81:
            v8 = v13;
            goto LABEL_91;
          }

LABEL_87:
          v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v8 = v13;
          v6 = &qword_1EB75D000;
        }

        v11 = v73;
      }

LABEL_91:
      ++v12;
    }

    while (v7 != v12);
    v48 = [obj countByEnumeratingWithState:v76 objects:v87 count:16];
    v7 = v48;
  }

  while (v48);
LABEL_97:

  if (*(v6 + 912))
  {
    v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v10)
  {
    v50 = v10;
  }

  else
  {
    v50 = v9;
  }

  if (v71)
  {
    v51 = v71;
  }

  else
  {
    v51 = v50;
  }

  if (!v51 || !v8)
  {
    v2 = vaemSetDeviceFormat([+[MXSessionManager defaultVADID:v68] sharedInstance];
    if (v2)
    {
      v80 = 0;
      v76[0] = OS_LOG_TYPE_DEFAULT;
      v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v61 = v80;
      if (os_log_type_enabled(v60, v76[0]))
      {
        v62 = v61;
      }

      else
      {
        v62 = v61 & 0xFFFFFFFE;
      }

      if (v62)
      {
        v81 = 136315650;
        v82 = "cmsmUpdateDeviceAudioFormatConfigIfNeeded";
        v83 = 1024;
        v84 = v2;
        v85 = 2114;
        v86 = @"LPCM";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_3;
  }

  CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(v51);
  IsCategoryInputOnly = CMSMUtility_IsCategoryInputOnly([v51 audioCategory]);
  [v51 preferredHardwareFormat];
  if (!vaemIsNotCurrentDeviceFormat(CurrentOutputVADID, IsCategoryInputOnly))
  {
    v2 = 0;
LABEL_121:
    if (v70)
    {
      goto LABEL_125;
    }

    goto LABEL_3;
  }

  v54 = CMSUtility_GetCurrentOutputVADID(v51);
  v2 = vaemSetDeviceFormat(v54, [v51 preferredHardwareFormat], 0);
  if (!v2)
  {
    goto LABEL_121;
  }

  v55 = v8;
  v80 = 0;
  v76[0] = OS_LOG_TYPE_DEFAULT;
  v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v57 = v80;
  if (os_log_type_enabled(v56, v76[0]))
  {
    v58 = v57;
  }

  else
  {
    v58 = v57 & 0xFFFFFFFE;
  }

  if (v58)
  {
    v59 = [v51 preferredHardwareFormat];
    v81 = 136315650;
    v82 = "cmsmUpdateDeviceAudioFormatConfigIfNeeded";
    v83 = 1024;
    v84 = v2;
    v85 = 2114;
    v86 = v59;
    LODWORD(v69) = 28;
    v68 = &v81;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v8 = v55;
  if (v70)
  {
LABEL_125:
    ShouldSessionSetInputSampleRate = CMSUtility_ShouldSessionSetInputSampleRate(v8);
    if (ShouldSessionSetInputSampleRate)
    {
      [v8 preferredInputSampleRate];
    }

    else
    {
      [v8 preferredOutputSampleRate];
    }

    v65 = v64;
    v66 = [v8 preferredIOBufferFrames];
    [v8 preferredIOBufferDuration];
    cmsSetDeviceSampleRateAndBufferSize(v8, v66, ShouldSessionSetInputSampleRate != 0, v65, v67);
  }

LABEL_3:
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t MX_FeatureFlags_IsAudioFormatArbitrationEnabled()
{
  if (MX_FeatureFlags_IsAudioFormatArbitrationEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAudioFormatArbitrationEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAudioFormatArbitrationEnabled_sAudioFormatArbitrationEnabled;
}

void vaemGetDeviceFormatID(AudioObjectID a1, int a2, _DWORD *a3)
{
  outData = 0;
  if (a3 && !vaemGetStream0(a1, a2, &outData) && outData)
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    vaemGetStreamASBD(outData, v5);
    if (!v4)
    {
      *a3 = DWORD2(v5[0]);
    }
  }
}

void vaemCopyDeviceFormat(AudioObjectID a1, int a2, CFTypeRef *a3)
{
  if (a3)
  {
    v9 = v3;
    v10 = v4;
    v8 = 0;
    vaemGetDeviceFormatID(a1, a2, &v8);
    if (!v6)
    {
      if (v8 > 1836343850)
      {
        if (v8 == 1836343851 || v8 == 1836344107)
        {
          v7 = kMXSessionAudioHardwareFormat_MATAtmos;
          goto LABEL_12;
        }
      }

      else
      {
        if (v8 == 1667326771)
        {
          v7 = kMXSessionAudioHardwareFormat_AC3;
          goto LABEL_12;
        }

        if (v8 == 1819304813)
        {
          v7 = kMXSessionAudioHardwareFormat_LPCM;
LABEL_12:
          *a3 = CFRetain(*v7);
          return;
        }
      }

      FigSignalErrorAtGM();
    }
  }
}

BOOL vaemIsNotCurrentDeviceFormat(AudioObjectID a1, int a2)
{
  cf = 0;
  vaemCopyDeviceFormat(a1, a2, &cf);
  v2 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v2 == 0;
}

uint64_t vaemGetStream0(AudioObjectID a1, int a2, _DWORD *outData)
{
  if (a2 == 1)
  {
    v4 = 1768845428;
  }

  else
  {
    v4 = 1869968496;
  }

  inAddress.mSelector = 1937009955;
  inAddress.mScope = v4;
  inAddress.mElement = 0;
  v6 = 4;
  *outData = 0;
  result = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &v6, outData);
  if (result)
  {
    *outData = 0;
  }

  return result;
}

double vaemGetStreamASBD(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_1();
  if (!AudioObjectGetPropertyData(v3, v4, v5, v6, v7, v8))
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t cmsmGetA2DPPort(CFArrayRef theArray)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!theArray || (Count = CFArrayGetCount(theArray), (v3 = Count) == 0))
  {
LABEL_6:
    v6 = 0;
LABEL_7:
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_10;
  }

  v4 = 0;
  while (1)
  {
    valuePtr[0] = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, valuePtr);
    if (vaeGetPortTypeFromPortID(valuePtr[0]) == 1885892674)
    {
      break;
    }

    if (v3 == ++v4)
    {
      goto LABEL_6;
    }
  }

  v6 = valuePtr[0];
  if (!valuePtr[0])
  {
    goto LABEL_7;
  }

LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

CFArrayRef CMSM_IDSConnection_CopySharedAudioRoutePortIDs()
{
  if (qword_1EB75CC98)
  {
    return CFArrayCreateCopy(*MEMORY[0x1E695E480], qword_1EB75CC98);
  }

  else
  {
    return 0;
  }
}

BOOL cmsmShouldRequestOwnershipOnSharedAudioRoute(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a2 || !vaeDoesPortSupportMultipleConnections(a2))
  {
    goto LABEL_20;
  }

  if (CMSM_IDSConnection_IsNearbyPairedDevicePresent())
  {
    if (a1)
    {
      memset(v22, 0, sizeof(v22));
      PartnersForPort = vaeGetPartnersForPort(a2, v22);
      v5 = cmsmCopyWirelessPortsArrayForRouteConfiguration([a1 audioCategory], objc_msgSend(a1, "audioMode"), objc_msgSend(a1, "allowedPortTypes"), objc_msgSend(a1, "prefersBluetoothHighQualityContentCapture"));
      v6 = v5;
      if (v5)
      {
        Count = CFArrayGetCount(v5);
        v8 = *MEMORY[0x1E695E480];
        UInt32 = FigCFNumberCreateUInt32();
        if (Count >= 1)
        {
          v25.location = 0;
          v25.length = Count;
          if (!CFArrayContainsValue(v6, v25, UInt32))
          {
            if (!PartnersForPort)
            {
              goto LABEL_23;
            }

            v17 = PartnersForPort;
            v18 = v22;
            while (1)
            {
              v19 = *v18++;
              v20 = FigCFNumberCreateUInt32();
              v26.location = 0;
              v26.length = Count;
              v21 = CFArrayContainsValue(v6, v26, v20);
              if (v20)
              {
                CFRelease(v20);
              }

              if (v21)
              {
                break;
              }

              if (!--v17)
              {
                goto LABEL_23;
              }
            }
          }

          LocalSessionPriority = CMSM_GetLocalSessionPriority(a1, 0);
          HighestRemotePlayingSessionPriority = CMSM_GetHighestRemotePlayingSessionPriority();
          ShouldSetupForCoordinatedInterruptions = 0;
          if (LocalSessionPriority < 0x65 || LocalSessionPriority < HighestRemotePlayingSessionPriority)
          {
            goto LABEL_24;
          }

          if (([a1 isIDSMXCoreSession] & 1) == 0)
          {
            ShouldSetupForCoordinatedInterruptions = cmsmShouldSetupForCoordinatedInterruptions(a2, 1);
LABEL_24:
            if (UInt32)
            {
              CFRelease(UInt32);
            }

            if (v6)
            {
              CFRelease(v6);
            }

            goto LABEL_21;
          }
        }
      }

      else
      {
        v16 = *MEMORY[0x1E695E480];
        UInt32 = FigCFNumberCreateUInt32();
      }

LABEL_23:
      ShouldSetupForCoordinatedInterruptions = 0;
      goto LABEL_24;
    }

    if (cmsmShouldSetupForCoordinatedInterruptions(a2, 0) && !CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote() && !CMSM_IDSServer_IsAutomaticOwnershipTransferToPhoneTimerCreated())
    {
      ShouldSetupForCoordinatedInterruptions = CMSM_IDSConnection_IsWaitingForGizmoPlayingInfo() == 0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (vaeGetBTPortOwnsSharedAudioConnection(a2))
  {
LABEL_20:
    ShouldSetupForCoordinatedInterruptions = 0;
LABEL_21:
    v15 = *MEMORY[0x1E69E9840];
    return ShouldSetupForCoordinatedInterruptions;
  }

  if (!vaeDoesBTPortSupportInEarDetection(a2))
  {
    ShouldSetupForCoordinatedInterruptions = 1;
    goto LABEL_21;
  }

  v13 = *MEMORY[0x1E69E9840];

  return CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(a2);
}

uint64_t CMSMNotificationUtility_PostPickableRoutesDidChange(char a1)
{
  v2 = MXGetNotificationSenderQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CMSMNotificationUtility_PostPickableRoutesDidChange_block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = a1;
  MXDispatchAsync("CMSMNotificationUtility_PostPickableRoutesDidChange", "CMSessionManager_NotificationUtilities.m", 1184, 0, 0, v2, v4);
  return [MXSystemController notifyAll:@"PickableRoutesDidChange" payload:0 dontPostIfSuspended:1];
}

BOOL vaeGetBTPortOwnsSharedAudioConnection(AudioObjectID inObjectID)
{
  v20 = *MEMORY[0x1E69E9840];
  inAddress.mElement = 0;
  *&inAddress.mSelector = 0;
  if (inObjectID)
  {
    *&inAddress.mSelector = 0x676C6F626F736163;
    if (AudioObjectHasProperty(inObjectID, &inAddress))
    {
      ioDataSize = 4;
      outData = 0;
      if (!AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, &outData))
      {
        v3 = outData != 0;
        goto LABEL_7;
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v3 = 0;
LABEL_7:
  if (dword_1EB75DE40)
  {
    outData = 0;
    LOBYTE(ioDataSize) = 0;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v5 = outData;
    if (os_log_type_enabled(v4, ioDataSize))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFE;
    }

    if (v6)
    {
      v7 = "YES";
      v15 = "vaeGetBTPortOwnsSharedAudioConnection";
      v14 = 136315650;
      if (!v3)
      {
        v7 = "NO";
      }

      v16 = 1024;
      v17 = inObjectID;
      v18 = 2082;
      v19 = v7;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t cmsSetCategoryOnPVMAndAudioDevice(void *a1, char a2, int a3)
{
  HIDWORD(v67) = a3;
  v140 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v4 = [a1 audioCategory];
  v5 = [a1 audioMode];
  cf = CMSUtility_CopyDeviceHintsForSession(a1);
  PVMSetEnabled(1);
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"Audio/Video";
  }

  if (!v5)
  {
    v5 = @"Default";
  }

  v7 = dword_1EB75E11C;
  if (![+[MXSessionManager carPlayIsConnected] sharedInstance]
  {
    v9 = 0;
LABEL_15:
    v71 = 0;
    v12 = v7 & 1;
    v13 = 1;
    goto LABEL_16;
  }

  CurrentConnectedPortToRoute = cmsmGetCurrentConnectedPortToRoute(0);
  v9 = CurrentConnectedPortToRoute;
  if (vaeGetPortTypeFromPortID(CurrentConnectedPortToRoute) != 1886614639 || ![a1 tookControlOfStarkMainAudio] || byte_1EB75E180 || !vaeDoesPortSupportRoutability(v9) || vaeIsPortRoutable(v9))
  {
    goto LABEL_15;
  }

  v10 = vaeCopyDeviceIdentifierFromVADPort(v9);
  v71 = [+[MX_BannerManager sharedInstance](MX_BannerManager isCarPlayPortRoutableFromCustomizedRoutingPerspective:"isCarPlayPortRoutableFromCustomizedRoutingPerspective:", v10];
  if (dword_1EB75DE40)
  {
    *(&v136[1] + 3) = 0;
    LOBYTE(type[0]) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v13 = !v71;
  v12 = v7 & 1;
  if (v71 && !v12)
  {
    [a1 setOverridePortsList:0];
    v13 = 0;
    v71 = 1;
  }

LABEL_16:
  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v6);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(v5);
  [+[MXSessionManager sharedInstance](MXSessionManager setCurrentAudioCategory:"setCurrentAudioCategory:", v6];
  [+[MXSessionManager sharedInstance](MXSessionManager setCurrentAudioMode:"setCurrentAudioMode:", v5];
  v14 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (![a1 addSharedAudioRouteToRoutablePorts])
  {
    goto LABEL_43;
  }

  v82 = v13;
  v84 = v12;
  v86 = v9;
  v16 = CMSMUtility_CopyCurrentOutputPorts();
  v17 = CFArrayCreateMutable(v14, 0, MEMORY[0x1E695E9C0]);
  if (v16)
  {
    Count = CFArrayGetCount(v16);
    if (Count >= 1)
    {
      v19 = Count;
      for (i = 0; i != v19; ++i)
      {
        PortAtIndex = CMSMVAUtility_GetPortAtIndex(v16, i);
        v22 = PortAtIndex;
        if (vaeDoesPortSupportMultipleConnections(PortAtIndex) && vaeDoesPortSupportRoutability(v22) && !vaeIsPortRoutable(v22))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v16, i);
          CFArrayAppendValue(v17, ValueAtIndex);
        }
      }
    }
  }

  Routable = cmsmCopyPartnerPortsToMakeRoutable(v17);
  v25 = Routable;
  if (Routable && CFArrayGetCount(Routable) > 0)
  {
    v141.length = CFArrayGetCount(v25);
    v141.location = 0;
    CFArrayAppendArray(Mutable, v25, v141);
  }

  else
  {
    v26 = CMSM_IDSConnection_CopySharedAudioRoutePortIDs();
    if (v26)
    {
      v27 = v26;
      v28 = CFArrayGetCount(v26);
      if (v28 >= 1)
      {
        v29 = v28;
        for (j = 0; j != v29; ++j)
        {
          v31 = CMSMVAUtility_GetPortAtIndex(v27, j);
          if (vaeDoesPortSupportRoutability(v31) && !vaeIsPortRoutable(v31))
          {
            v32 = CFArrayGetValueAtIndex(v27, j);
            CFArrayAppendValue(Mutable, v32);
          }
        }
      }

      CFRelease(v27);
    }

    if (!v25)
    {
      goto LABEL_38;
    }
  }

  CFRelease(v25);
LABEL_38:
  v9 = v86;
  v12 = v84;
  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  [a1 setAddSharedAudioRouteToRoutablePorts:{0, v65, v67}];
  v13 = v82;
LABEL_43:
  v138 = 0u;
  v139 = 0u;
  type[0] = 0;
  *(type + 3) = 0;
  v99[0] = 0;
  *(v99 + 3) = 0;
  v97 = 0;
  v98 = 0;
  v96[0] = 0;
  *(v96 + 3) = 0;
  v87 = [a1 activationContext];
  v85 = [a1 cameraParameters];
  v83 = [a1 vpBlockConfiguration];
  v81 = [a1 subPortPreferences];
  v77 = [a1 willSetScreenDarkModeOnVAD];
  v79 = [a1 createSpeakerDevice];
  v78 = [a1 excludedPortsList];
  v76 = [a1 ignoreRingerSwitch];
  v75 = [a1 preferredDecoupledInputOutput];
  v74 = [a1 allowedPortTypes];
  v73 = [a1 reporterIDs];
  v33 = [a1 overridePortsList];
  v80 = v33 != 0;
  if (v33)
  {
    v34 = CFArrayGetCount([a1 overridePortsList]);
    v35 = v34;
    if (v34)
    {
      v36 = 0;
      do
      {
        valuePtr[0] = 0;
        v37 = CFArrayGetValueAtIndex([a1 overridePortsList], v36);
        CFNumberGetValue(v37, kCFNumberSInt32Type, valuePtr);
        if (vaeDoesPortSupportRoutability(valuePtr[0]) && !vaeIsPortRoutable(valuePtr[0]))
        {
          CFArrayAppendValue(Mutable, v37);
        }

        ++v36;
      }

      while (v35 != v36);
    }

    if (v12 & v71)
    {
      valuePtr[0] = v9;
      v38 = CFNumberCreate(v14, kCFNumberSInt32Type, valuePtr);
      CFArrayAppendValue(Mutable, v38);
      if (v38)
      {
        CFRelease(v38);
      }
    }

    v72 = [a1 overridePortsList];
  }

  else
  {
    if ((v13 & 1) == 0)
    {
      v39 = MXCFNumberCreateFromSInt64(v9);
      CFArrayAppendValue(Mutable, v39);
      if (v39)
      {
        CFRelease(v39);
      }
    }

    v72 = 0;
  }

  if ([a1 preferredPersistentRoute])
  {
    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = cmsmCopyQuiesceableWiredPortsForRouteConfiguration([a1 audioCategory], objc_msgSend(a1, "audioMode"), objc_msgSend(a1, "allowedPortTypes"), 1);
    v42 = cmsmCopyQuiesceableWiredPortsForRouteConfiguration([a1 audioCategory], objc_msgSend(a1, "audioMode"), objc_msgSend(a1, "allowedPortTypes"), 0);
    [v40 addObjectsFromArray:v41];
    [v40 addObjectsFromArray:v42];
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v43 = [v40 countByEnumeratingWithState:&v92 objects:v137 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v93;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v93 != v45)
          {
            objc_enumerationMutation(v40);
          }

          v47 = *(*(&v92 + 1) + 8 * k);
          v48 = [v47 unsignedIntValue];
          if (vaeDoesPortSupportRoutability(v48) && !vaeIsPortRoutable(v48))
          {
            CFArrayAppendValue(Mutable, v47);
          }
        }

        v44 = [v40 countByEnumeratingWithState:&v92 objects:v137 count:16];
      }

      while (v44);
    }

    v49 = [a1 preferredPersistentRoute];
  }

  else
  {
    v49 = 0;
  }

  if (!CFArrayGetCount(Mutable) && Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  if (MX_FeatureFlags_IsSystemInputPickerEnabled())
  {
    if (dword_1EB75DE40)
    {
      v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v51 = [a1 copyUserPreferredInputPort];
    v52 = v51 == 0;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v70 = v52;
  if (!MX_FeatureFlags_IsSharePlayEnabled() || ([a1 isSharePlayMediaSession] & 1) == 0 && !objc_msgSend(a1, "isSharePlayCallSession"))
  {
    v54 = v49;
    v69 = 0;
    goto LABEL_85;
  }

  v53 = ([a1 isSharePlayCallSession] & 1) != 0 || CMSMUtility_IsSharePlayCallSessionActive() != 0;
  v69 = v53;
  if ([a1 isSharePlayMediaSession])
  {
    v54 = v49;
    v55 = CMSMVAUtility_GetVADModeFromFigModeName([a1 audioMode]);
    goto LABEL_89;
  }

  if (!HIDWORD(v68))
  {
    v54 = v49;
    goto LABEL_85;
  }

  v54 = v49;
  SharePlayCapableActiveMediaSession = CMSMUtility_GetSharePlayCapableActiveMediaSession();
  if (!SharePlayCapableActiveMediaSession)
  {
LABEL_85:
    v55 = 0;
LABEL_89:
    v56 = 0;
    goto LABEL_90;
  }

  v61 = SharePlayCapableActiveMediaSession;
  v55 = CMSMVAUtility_GetVADModeFromFigModeName([SharePlayCapableActiveMediaSession audioMode]);
  v56 = [v61 aggregateDeviceClockUID];
LABEL_90:
  if ([a1 aggregateDeviceClockUID])
  {
    v56 = [a1 aggregateDeviceClockUID];
  }

  if (MX_FeatureFlags_IsOverdubRecordingEnabled())
  {
    v57 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(a1, "prefersEchoCancelledInput")}];
  }

  else
  {
    v57 = 0;
  }

  if (MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled())
  {
    v58 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(a1, "prefersBluetoothHighQualityContentCapture")}];
  }

  else
  {
    v58 = 0;
  }

  if (CMSMVAUtility_IsAdditiveRoutingEnabled() && !MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled())
  {
    v59 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyActiveSessionsInfo];
  }

  else
  {
    v59 = 0;
  }

  if (MX_FeatureFlags_IsPersonalTranslatorEnabled())
  {
    v62 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(a1, "prefersBluetoothFarFieldCapture")}];
  }

  else
  {
    v62 = 0;
  }

  v108 = v138;
  valuePtr[0] = VADCategoryFromFigCategoryName;
  valuePtr[1] = VADModeFromFigModeName;
  v102 = 0;
  v103 = v87;
  v104 = v85;
  v105 = v83;
  v106 = v72;
  v107 = Mutable;
  v109 = v139;
  v110 = v81;
  v111 = v77;
  *v112 = type[0];
  *&v112[3] = *(type + 3);
  v113 = cf;
  v114 = v79;
  *v115 = v99[0];
  *&v115[3] = *(v99 + 3);
  v116 = v78;
  v117 = v76;
  v118 = v75;
  v119 = v97;
  v120 = v98;
  v121 = v74;
  v122 = v73;
  v123 = a2;
  v124 = v69;
  v125 = 0;
  v126 = v55;
  v127 = v56;
  v128 = 0;
  v129 = v59;
  v130 = v54;
  v131 = v57;
  v132 = v58;
  v133 = v62;
  v134 = v51;
  v135 = v70;
  *(v136 + 3) = *(v96 + 3);
  v136[0] = v96[0];
  cmsmSetVADRouteConfiguration(valuePtr, v80, qword_1EB75E190);
  [a1 setWillSetScreenDarkModeOnVAD:0];
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (MX_FeatureFlags_IsSystemInputPickerEnabled() && v51)
  {
    CFRelease(v51);
  }

  if (MX_FeatureFlags_IsOverdubRecordingEnabled() && v57)
  {
    CFRelease(v57);
  }

  if (MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled() && v58)
  {
    CFRelease(v58);
  }

  if (CMSMVAUtility_IsAdditiveRoutingEnabled() && v59)
  {
    CFRelease(v59);
  }

  if (MX_FeatureFlags_IsPersonalTranslatorEnabled() && v62)
  {
    CFRelease(v62);
  }

  result = FigSimpleMutexUnlock();
  v64 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *CMSUtility_CopyDeviceHintsForSession(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  memset(bytes, 0, sizeof(bytes));
  v24 = 0u;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  memset(v21, 0, sizeof(v21));
  preferredBufferDuration = 0;
  IsHangsBufferedSizeHintEnabled = MX_FeatureFlags_IsHangsBufferedSizeHintEnabled();
  v3 = 0;
  if (a1 && IsHangsBufferedSizeHintEnabled)
  {
    [a1 preferredIOBufferDuration];
    v3 = v4 != 0.0;
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (([a1 currentlyControllingFlags] & 2) != 0)
  {
    [a1 preferredOutputSampleRate];
    if (v8 != 0.0)
    {
      *bytes = CMSUtility_GetVADType(a1);
      *&bytes[4] = xmmword_1B19D90C0;
      *&bytes[24] = 0;
      LODWORD(v26) = 8;
      *(&v26 + 1) = [a1 getPreferredOutputSampleRatePointer];
      v9 = CFDataCreate(v5, bytes, 48);
      CFArrayAppendValue(Mutable, v9);
      if (v9)
      {
        CFRelease(v9);
      }
    }

    if (v3)
    {
      [a1 preferredIOBufferDuration];
      if (v10 != 0.0)
      {
        [a1 preferredIOBufferDuration];
        *&preferredBufferDuration = v11;
        v21[0] = xmmword_1B19D90D0;
        LODWORD(v22) = 8;
        *(&v22 + 1) = &preferredBufferDuration;
        v12 = v21;
        goto LABEL_23;
      }
    }

    [a1 preferredOutputSampleRate];
    if (v13 != 0.0)
    {
      [a1 preferredIOBufferDuration];
      if (v14 != 0.0 && ![a1 preferredIOBufferFrames])
      {
        [a1 preferredIOBufferDuration];
        [a1 preferredOutputSampleRate];
        [a1 setPreferredIOBufferFrames:FigUInt32NearestPowerOfTwo()];
        [a1 setPreferredIOBufferDuration:0.0];
      }
    }

    if ([a1 preferredIOBufferFrames])
    {
      v15 = [a1 preferredIOBufferFrames];
      if (!FigVAEndpointManagerGetPropertyBoolean(qword_1EB75E090, 0x1F289B3F0) || !(v15 % 0x18) || !(v15 % 0x1E) || (v15 & 0x1F) == 0)
      {
        *v23 = CMSUtility_GetVADType(a1);
        *&v23[4] = xmmword_1B19D90E0;
        *&v23[24] = 0;
        LODWORD(v24) = 4;
        *(&v24 + 1) = [a1 getPreferredIOBufferFramesPointer];
        v12 = v23;
LABEL_23:
        v16 = CFDataCreate(v5, v12, 48);
        CFArrayAppendValue(Mutable, v16);
        if (v16)
        {
          CFRelease(v16);
        }
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t MX_FeatureFlags_IsHangsBufferedSizeHintEnabled()
{
  if (MX_FeatureFlags_IsHangsBufferedSizeHintEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsHangsBufferedSizeHintEnabled_cold_1();
  }

  return MX_FeatureFlags_IsHangsBufferedSizeHintEnabled_sHangsBufferedSizeHintEnabled;
}

uint64_t CMSUtility_GetVADType(void *a1)
{
  if (!a1)
  {
    return 1986291046;
  }

  v1 = [a1 audioDestinationPriority];
  if (v1)
  {
    v2 = [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v1];
  }

  else
  {
    v2 = @"VirtualAudioDevice_Default";
  }

  VADIDForVADName = CMSMUtility_GetVADIDForVADName(v2);

  return vaemGetVirtualAudioDeviceType(VADIDForVADName);
}

uint64_t vaemGetVirtualAudioDeviceType(AudioObjectID a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = 1986291046;
  ioDataSize = 4;
  outData = 1986291046;
  *&inAddress.mSelector = *"ptdvbolg";
  inAddress.mElement = 0;
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

  v3 = *MEMORY[0x1E69E9840];
  return v1;
}

BOOL FigVAEndpointManagerGetPropertyBoolean(uint64_t a1, uint64_t a2)
{
  cf = 0;
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 8) + 48);
  if (!v5)
  {
    return 0;
  }

  v6 = *(VTable + 8) + 48;
  v5(CMBaseObject, a2, *MEMORY[0x1E695E480], &cf);
  if (!cf)
  {
    return 0;
  }

  v7 = cf == *MEMORY[0x1E695E4D0];
  CFRelease(cf);
  return v7;
}

uint64_t vaemBufferFrameSizeShouldBeRestricted(AudioObjectID a1, int a2)
{
  outData = 1;
  if (a2 == 1)
  {
    v2 = 1768845428;
  }

  else
  {
    v2 = 1869968496;
  }

  inAddress.mSelector = 1650881394;
  inAddress.mScope = v2;
  inAddress.mElement = 0;
  ioDataSize = 4;
  PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData);
  v4 = outData;
  if (PropertyData)
  {
    return 1;
  }

  return v4;
}

uint64_t PVMSetEnabled(int a1)
{
  v2 = *sStorage;
  FigSimpleMutexLock();
  v3 = sStorage;
  *(sStorage + 8) = a1 == 0;
  v4 = *v3;

  return FigSimpleMutexUnlock();
}

uint64_t MX_FeatureFlags_IsOverdubRecordingEnabled()
{
  if (MX_FeatureFlags_IsOverdubRecordingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsOverdubRecordingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsOverdubRecordingEnabled_isOverdubRecordingEnabled;
}

uint64_t cmsmSetVADRouteConfiguration(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v128 = *MEMORY[0x1E69E9840];
  allocator = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (MX_FeatureFlags_IsOverdubRecordingEnabled() && dword_1EB75DE40)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled() && dword_1EB75DE40)
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CMSMVAUtility_IsAdditiveRoutingEnabled() && dword_1EB75DE40)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  IsSystemInputPickerEnabled = MX_FeatureFlags_IsSystemInputPickerEnabled();
  v10 = dword_1EB75DE40;
  if (IsSystemInputPickerEnabled && dword_1EB75DE40)
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = dword_1EB75DE40;
  }

  if (v10)
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v13 = *a1;
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 80);
  v120 = *(a1 + 72);
  v121 = *(a1 + 56);
  v20 = *(a1 + 88);
  v21 = *(a1 + 104);
  v22 = *(a1 + 120);
  v23 = *(a1 + 136);
  v125 = (a1 + 156);
  v24 = *(a1 + 160);
  v25 = *(a1 + 176);
  v26 = *(a1 + 184);
  v27 = *(a1 + 192);
  v28 = *(a1 + 208);
  v29 = *(a1 + 216);
  v30 = *(a1 + 224);
  if (*a1 && v13 != dword_1EB75E09C)
  {
    v31 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v32 = *(a1 + 4);
  if (v32 && v32 != dword_1EB75E0A0)
  {
    v31 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v119 = *(a1 + 96);
  v117 = *(a1 + 128);
  v118 = *(a1 + 112);
  v115 = *(a1 + 153);
  v116 = *(a1 + 129);
  v113 = *(a1 + 168);
  v114 = *(a1 + 156);
  v112 = *(a1 + 200);
  if (!FigCFEqual())
  {
    v31 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  if (!FigCFEqual())
  {
    v31 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  vaemGetCurrentActivationContext();
  if (!FigCFEqual())
  {
    v31 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  if (!FigCFEqual())
  {
    v31 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  if (!FigCFEqual())
  {
    v31 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  if (!FigCFEqual())
  {
    v31 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  if (v18)
  {
    v31 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  if (v121)
  {
    v31 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v33 = MX_FeatureFlags_IsSystemInputPickerEnabled();
  v34 = v119;
  if (v33)
  {
    if (v30 && qword_1EB75D1D8)
    {
      v31 = &qword_1EB75D000;
      if (dword_1EB75DE40)
      {
        goto LABEL_62;
      }

      goto LABEL_63;
    }

    if (v29)
    {
      v35 = FigCFEqual();
      v34 = v119;
      if (!v35)
      {
        v31 = &qword_1EB75D000;
        if (!dword_1EB75DE40)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }
    }
  }

  if (v120)
  {
    v31 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v31 = &qword_1EB75D000;
  if (v19)
  {
    if (dword_1EB75DE40)
    {
LABEL_62:
      v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_63:
    v37 = theDict;
    if (*a1)
    {
      v38 = CFNumberCreate(allocator, kCFNumberSInt32Type, a1);
      if (v38)
      {
        v39 = v38;
        CFDictionarySetValue(theDict, @"category", v38);
        CFRelease(v39);
      }
    }

    if (!*(a1 + 4))
    {
      if (!*a1)
      {
        goto LABEL_71;
      }

      *(a1 + 4) = 1768776806;
    }

    v40 = CFNumberCreate(allocator, kCFNumberSInt32Type, (a1 + 4));
    if (v40)
    {
      v41 = v40;
      CFDictionarySetValue(theDict, @"mode", v40);
      CFRelease(v41);
    }

LABEL_71:
    v42 = *(a1 + 16);
    if (v42)
    {
      CFDictionarySetValue(theDict, @"initiation context", v42);
    }

    v43 = *(a1 + 32);
    if (v43)
    {
      CFDictionarySetValue(theDict, @"voice processing configuration", v43);
    }

    else if (*a1)
    {
      v60 = CFDictionaryCreate(allocator, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(theDict, @"voice processing configuration", v60);
      if (v60)
      {
        CFRelease(v60);
      }
    }

    v44 = *(a1 + 40);
    if (v44)
    {
      CFDictionarySetValue(theDict, @"overridden ports", v44);
    }

    v45 = *(a1 + 88);
    if (v45)
    {
      CFDictionarySetValue(theDict, @"sub-port preferences", v45);
    }

    else if (*a1)
    {
      v61 = CFArrayCreate(0, 0, 0, 0);
      CFDictionarySetValue(theDict, @"sub-port preferences", v61);
      if (v61)
      {
        CFRelease(v61);
      }
    }

    v46 = *(a1 + 72);
    if (v46)
    {
      CFDictionarySetValue(theDict, @"aggregated ports", v46);
    }

    v47 = *(a1 + 80);
    if (v47)
    {
      CFDictionarySetValue(theDict, @"deaggregated ports", v47);
    }

    v48 = *(a1 + 48);
    if (v48)
    {
      CFDictionarySetValue(theDict, @"routable ports", v48);
    }

    v49 = MEMORY[0x1E695E4D0];
    if (*(a1 + 64))
    {
      CFDictionarySetValue(theDict, @"add fallback device", *MEMORY[0x1E695E4D0]);
    }

    v50 = *(a1 + 144);
    if (v50)
    {
      CFDictionarySetValue(theDict, @"reporter IDs", v50);
    }

    v51 = *(a1 + 56);
    if (v51)
    {
      CFDictionarySetValue(theDict, @"unroutable ports", v51);
    }

    if (*(a1 + 96))
    {
      CFDictionarySetValue(theDict, @"screen dark policy enabled", *v49);
    }

    v52 = *(a1 + 104);
    if (v52)
    {
      CFDictionarySetValue(theDict, @"device hints", v52);
    }

    v53 = MEMORY[0x1E695E4C0];
    if (byte_1EB75D130 | *(a1 + 112))
    {
      if (*(a1 + 112))
      {
        v54 = v49;
      }

      else
      {
        v54 = MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(theDict, @"create speaker vad", *v54);
    }

    if (*a1 && byte_1EB75D132 | *(a1 + 129))
    {
      if (*(a1 + 129))
      {
        v55 = v49;
      }

      else
      {
        v55 = v53;
      }

      CFDictionarySetValue(theDict, @"decoupled input/output", *v55);
    }

    if (byte_1EB75D131 | *(a1 + 128))
    {
      if (*(a1 + 128))
      {
        v56 = v49;
      }

      else
      {
        v56 = v53;
      }

      CFDictionarySetValue(theDict, @"ignore ringer switch", *v56);
    }

    v57 = *(a1 + 120);
    if (v57)
    {
      CFDictionarySetValue(theDict, @"disallowed ports", v57);
    }

    v58 = *(a1 + 136);
    if (v58)
    {
      CFDictionarySetValue(theDict, @"allowed port types", v58);
    }

    v59 = *(a1 + 24);
    if (v59)
    {
      CFDictionarySetValue(theDict, @"camera parameters", v59);
    }

    if (*(a1 + 153) || *a1)
    {
      UInt32 = FigCFNumberCreateUInt32();
      CFDictionarySetValue(theDict, @"expanse session", UInt32);
      if (UInt32)
      {
        CFRelease(UInt32);
      }
    }

    if (*v125)
    {
      v63 = CFNumberCreate(allocator, kCFNumberSInt32Type, v125);
      CFDictionarySetValue(theDict, @"optional output mode", v63);
      if (v63)
      {
        CFRelease(v63);
      }
    }

    v64 = *(a1 + 160);
    if (v64)
    {
      CFDictionarySetValue(theDict, @"aggregate device clock device", v64);
    }

    if (*(a1 + 168))
    {
      v65 = FigCFNumberCreateUInt32();
      CFDictionarySetValue(theDict, @"route to builtinspeaker", v65);
      if (v65)
      {
        CFRelease(v65);
      }
    }

    if (*a1)
    {
      dword_1EB75E09C = *a1;
    }

    v66 = *(a1 + 184);
    if (v66)
    {
      v67 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v68 = [v66 objectForKey:@"InputPortUIDs"];
      v69 = [v66 objectForKey:@"OutputPortUIDs"];
      if (v68)
      {
        [v67 setObject:v68 forKey:0x1F28973F0];
      }

      if (v69)
      {
        [v67 setObject:v69 forKey:0x1F2897410];
      }

      CFDictionarySetValue(theDict, @"persistent route", v67);
    }

    if (MX_FeatureFlags_IsSystemInputPickerEnabled())
    {
      if (*(a1 + 224))
      {
        v70 = *MEMORY[0x1E695E738];
LABEL_148:
        CFDictionarySetValue(theDict, @"user preferred input", v70);
        goto LABEL_149;
      }

      v70 = *(a1 + 216);
      if (v70)
      {
        goto LABEL_148;
      }
    }

LABEL_149:
    if (MX_FeatureFlags_IsOverdubRecordingEnabled())
    {
      v71 = *(a1 + 192);
      if (v71)
      {
        CFDictionarySetValue(theDict, @"echo cancelled input", v71);
      }
    }

    if (MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled())
    {
      v72 = *(a1 + 200);
      if (v72)
      {
        CFDictionarySetValue(theDict, @"studio mic input", v72);
      }
    }

    if (CMSMVAUtility_IsAdditiveRoutingEnabled())
    {
      v73 = *(a1 + 176);
      if (v73)
      {
        CFDictionarySetValue(theDict, @"session routing information", v73);
        if (*(v31 + 912))
        {
          v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    if (MX_FeatureFlags_IsPersonalTranslatorEnabled())
    {
      v75 = *(a1 + 208);
      if (v75)
      {
        CFDictionarySetValue(theDict, @"far field input", v75);
      }
    }

    v127 = 0;
    v76 = vaemSetRouteConfigurationDictionaryOnVAD(theDict, a2, a3, &v127);
    if (v76)
    {
      goto LABEL_246;
    }

    if (*a1)
    {
      dword_1EB75E09C = *a1;
      if (qword_1EB75D108)
      {
        CFRelease(qword_1EB75D108);
        qword_1EB75D108 = 0;
      }

      if (qword_1EB75D100)
      {
        CFRelease(qword_1EB75D100);
        qword_1EB75D100 = 0;
      }

      vaemSetCurrentActivationContext(0);
      if (qword_1EB75D120)
      {
        CFRelease(qword_1EB75D120);
        qword_1EB75D120 = 0;
      }

      if (qword_1EB75D128)
      {
        CFRelease(qword_1EB75D128);
        qword_1EB75D128 = 0;
      }

      if (qword_1EB75D138)
      {
        CFRelease(qword_1EB75D138);
        qword_1EB75D138 = 0;
      }

      if (qword_1EB75D140)
      {
        CFRelease(qword_1EB75D140);
        qword_1EB75D140 = 0;
      }

      [+[MXSessionManager setCurrentAllowedPortTypes:v110], "setCurrentAllowedPortTypes:", 0];
      if (qword_1EB75D110)
      {
        CFRelease(qword_1EB75D110);
        qword_1EB75D110 = 0;
      }

      byte_1EB75D130 = *(a1 + 112);
      *&byte_1EB75D131 = *(a1 + 128);
      byte_1EB75D1A0 = *(a1 + 153);
      dword_1EB75D1B0 = *(a1 + 156);
      if (qword_1EB75D1A8)
      {
        CFRelease(qword_1EB75D1A8);
        qword_1EB75D1A8 = 0;
      }
    }

    v77 = *(a1 + 40);
    if (v77)
    {
      v78 = qword_1EB75D100;
      qword_1EB75D100 = *(a1 + 40);
      CFRetain(v77);
      if (v78)
      {
        CFRelease(v78);
      }
    }

    if (*(a1 + 4))
    {
      dword_1EB75E0A0 = *(a1 + 4);
      vaemSetCurrentActivationContext(0);
      if (qword_1EB75D140)
      {
        CFRelease(qword_1EB75D140);
        qword_1EB75D140 = 0;
      }
    }

    v79 = *(a1 + 88);
    if (v79)
    {
      if (qword_1EB75D108)
      {
        CFRelease(qword_1EB75D108);
        qword_1EB75D108 = 0;
        v79 = *(a1 + 88);
      }

      qword_1EB75D108 = CFArrayCreateCopy(allocator, v79);
    }

    v80 = *(a1 + 16);
    if (v80)
    {
      vaemSetCurrentActivationContext(v80);
    }

    v81 = *(a1 + 104);
    if (v81)
    {
      v82 = qword_1EB75D120;
      qword_1EB75D120 = *(a1 + 104);
      CFRetain(v81);
      if (v82)
      {
        CFRelease(v82);
      }
    }

    v83 = *(a1 + 32);
    if (v83)
    {
      v84 = qword_1EB75D128;
      qword_1EB75D128 = *(a1 + 32);
      CFRetain(v83);
      if (v84)
      {
        CFRelease(v84);
      }
    }

    v85 = *(a1 + 120);
    if (v85)
    {
      v86 = qword_1EB75D138;
      qword_1EB75D138 = *(a1 + 120);
      CFRetain(v85);
      if (v86)
      {
        CFRelease(v86);
      }
    }

    v87 = *(a1 + 24);
    if (v87)
    {
      v88 = qword_1EB75D140;
      qword_1EB75D140 = *(a1 + 24);
      CFRetain(v87);
      if (v88)
      {
        CFRelease(v88);
      }
    }

    if (*(a1 + 136))
    {
      [+[MXSessionManager sharedInstance](MXSessionManager setCurrentAllowedPortTypes:"setCurrentAllowedPortTypes:", *(a1 + 136)];
    }

    v89 = *(a1 + 184);
    if (v89)
    {
      v90 = qword_1EB75D110;
      qword_1EB75D110 = *(a1 + 184);
      CFRetain(v89);
      if (v90)
      {
        CFRelease(v90);
      }
    }

    if (*(a1 + 153))
    {
      byte_1EB75D1A0 = *(a1 + 153);
      v37 = theDict;
    }

    else
    {
      v37 = theDict;
      if (*a1)
      {
        byte_1EB75D1A0 = 0;
        v91 = *v125;
        dword_1EB75D1B0 = *v125;
        if (!qword_1EB75D1A8)
        {
          goto LABEL_212;
        }

        CFRelease(qword_1EB75D1A8);
        qword_1EB75D1A8 = 0;
      }
    }

    v91 = *v125;
LABEL_212:
    if (v91)
    {
      dword_1EB75D1B0 = v91;
    }

    v92 = *(a1 + 160);
    if (v92)
    {
      v93 = qword_1EB75D1A8;
      qword_1EB75D1A8 = *(a1 + 160);
      CFRetain(v92);
      if (v93)
      {
        CFRelease(v93);
      }
    }

    if (MX_FeatureFlags_IsOverdubRecordingEnabled())
    {
      v94 = *(a1 + 192);
      if (v94)
      {
        v95 = qword_1EB75D1C0;
        qword_1EB75D1C0 = *(a1 + 192);
        CFRetain(v94);
        if (v95)
        {
          CFRelease(v95);
        }
      }
    }

    if (MX_FeatureFlags_IsSystemInputPickerEnabled())
    {
      if (*(a1 + 224))
      {
        if (qword_1EB75D1D8)
        {
          CFRelease(qword_1EB75D1D8);
          qword_1EB75D1D8 = 0;
        }
      }

      else
      {
        v96 = *(a1 + 216);
        if (v96)
        {
          v97 = qword_1EB75D1D8;
          qword_1EB75D1D8 = *(a1 + 216);
          CFRetain(v96);
          if (v97)
          {
            CFRelease(v97);
          }
        }
      }
    }

    if (MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled())
    {
      v98 = *(a1 + 200);
      if (v98)
      {
        v99 = qword_1EB75D1C8;
        qword_1EB75D1C8 = *(a1 + 200);
        CFRetain(v98);
        if (v99)
        {
          CFRelease(v99);
        }
      }
    }

    if (CMSMVAUtility_IsAdditiveRoutingEnabled() && !MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled() && *(a1 + 176))
    {
      [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager setMostRecentActiveSessions:"setMostRecentActiveSessions:", *(a1 + 176)];
    }

    if (MX_FeatureFlags_IsPersonalTranslatorEnabled())
    {
      v100 = *(a1 + 208);
      if (v100)
      {
        v101 = qword_1EB75D1D0;
        qword_1EB75D1D0 = *(a1 + 208);
        CFRetain(v100);
        if (v101)
        {
          CFRelease(v101);
        }
      }
    }

    if (*(a1 + 152) && v127 == 1920099684)
    {
      vaemConfigurePVMSettings([+[MXSessionManager currentAudioMode] sharedInstance];
    }

LABEL_246:
    v102 = 0;
    goto LABEL_247;
  }

  if (v34)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v118 != byte_1EB75D130)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v117 != byte_1EB75D131)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (!FigCFEqual())
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v116 != byte_1EB75D132)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  [+[MXSessionManager sharedInstance](MXSessionManager currentAllowedPortTypes];
  if (!FigCFEqual())
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v115)
  {
    if (v115 != byte_1EB75D1A0)
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v114 && v114 != dword_1EB75D1B0)
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (!FigCFEqual())
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }
  }

  else if (v13)
  {
    if (byte_1EB75D1A0)
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (dword_1EB75D1B0)
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (qword_1EB75D1A8)
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }
  }

  if (v113)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (!FigCFEqual())
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (MX_FeatureFlags_IsOverdubRecordingEnabled() && !FigCFEqual())
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled() && !FigCFEqual())
  {
    if (dword_1EB75DE40)
    {
      v109 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v31 = &qword_1EB75D000;
    }

    goto LABEL_63;
  }

  if (CMSMVAUtility_IsAdditiveRoutingEnabled() && !MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled())
  {
    [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager mostRecentActiveSessions];
    if (!FigCFEqual())
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }
  }

  if (MX_FeatureFlags_IsPersonalTranslatorEnabled() && !FigCFEqual())
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (*(a1 + 152))
  {
    vaemConfigurePVMSettings([+[MXSessionManager currentAudioMode] sharedInstance];
  }

  v76 = 0;
  v102 = 1;
  v37 = theDict;
LABEL_247:
  FigSimpleMutexUnlock();
  if (v37)
  {
    CFRelease(v37);
  }

  if (v76)
  {
    v103 = 1;
  }

  else
  {
    v103 = v102;
  }

  if ((v103 & 1) == 0)
  {
    v104 = *a1;
    v105 = 1;
    if (*a1 > 1668313714)
    {
      if (v104 != 1668313715 && v104 != 1668440898)
      {
        v106 = 1668441443;
LABEL_260:
        if (v104 != v106)
        {
          v105 = 0;
        }
      }
    }

    else if (v104 != 1668301427 && v104 != 1668309362)
    {
      v106 = 1668313666;
      goto LABEL_260;
    }

    byte_1EB75D148 = v105;
  }

  v107 = *MEMORY[0x1E69E9840];
  return v76;
}