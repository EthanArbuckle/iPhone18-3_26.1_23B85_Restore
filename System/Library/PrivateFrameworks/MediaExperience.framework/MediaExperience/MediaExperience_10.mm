uint64_t CMSMUtility_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlerts()
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
        if ([v4 isActive] && (objc_msgSend(v4, "prefersNoInterruptionsByRingtonesAndAlerts") & 1) != 0)
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

uint64_t CMSMUtility_IsAnyActiveSessionRoutedToDestination()
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
    v2 = v1;
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        if ([v5 isActive])
        {
          CMSUtility_GetCurrentAudioDestination(v5);
          if (FigCFEqual())
          {
            v6 = 1;
            goto LABEL_12;
          }
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_12:

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

CFMutableArrayRef CMSMUtility_CopyActiveClientPIDsThatHideTheSpeechDetectionDevice()
{
  v18 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v14;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v14 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v13 + 1) + 8 * i);
        if ([v5 isActive])
        {
          VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName([v5 audioCategory]);
          VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([v5 audioMode]);
          v8 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(VADCategoryFromFigCategoryName, VADModeFromFigModeName, [v5 activationContext], objc_msgSend(v5, "allowedPortTypes"), objc_msgSend(v5, "prefersBluetoothHighQualityContentCapture"), 1, 0x1F28978D0);
          if (v8)
          {
            v9 = v8;
            if (!CFArrayGetCount(v8))
            {
              [objc_msgSend(v5 "clientPID")];
              FigCFArrayAppendInt32();
            }

            CFRelease(v9);
          }

          else
          {
            [objc_msgSend(v5 "clientPID")];
            FigCFArrayAppendInt32();
          }
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v2);
  }

  v10 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t CMSMUtility_IsIDSSessionActive()
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
        if ([v4 isActive] && (objc_msgSend(v4, "isIDSMXCoreSession") & 1) != 0)
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

uint64_t CMSMUtility_HandOverInterruptionsToSession(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 interruptingSession] == a1 && objc_msgSend(v9, "waitingToResume"))
        {
          [v9 setInterruptingSession:a2];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  if ([a2 triggeredRemoteInterruption])
  {
    v10 = 1;
  }

  else
  {
    v10 = [a1 triggeredRemoteInterruption];
  }

  [a2 setTriggeredRemoteInterruption:v10];
  result = [a1 setTriggeredRemoteInterruption:0];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSMUtility_UpdateSupportedOutputChannelLayouts(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:{objc_msgSend(a1, "valueForKey:", @"SupportedAudioCapabilities_SupportedChannelLayoutTags"}];
    v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v31;
      v23 = v2;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v31 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v30 + 1) + 8 * i);
          if ([v8 isActive] && CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v8))
          {
            if (dword_1EB75DE40)
            {
              v29 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v2 = v23;
            }

            [v8 setSupportedOutputChannelLayouts:{v1, v21, v22}];
            CMSMNotificationUtility_PostSupportedBufferedAudioCapabilitiesDidChange(v8);
            v5 = 1;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v4);

      if (v5)
      {
        goto LABEL_38;
      }
    }

    else
    {
    }

    if (dword_1EB75DE40)
    {
      v29 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    cf[0] = 0;
    FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(cf);
    FigRoutingManagerContextUtilities_CacheSupportedOutputChannelLayouts(cf[0], v1);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_38;
  }

  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [v1 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v1);
        }

        v14 = *(*(&v24 + 1) + 8 * j);
        if ([objc_msgSend(v14 "supportedOutputChannelLayouts")])
        {
          if (dword_1EB75DE40)
          {
            v29 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v16 = v29;
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
              v18 = [v14 clientName];
              v35 = 136315394;
              v36 = "CMSMUtility_UpdateSupportedOutputChannelLayouts";
              v37 = 2114;
              v38 = v18;
              LODWORD(v22) = 22;
              v21 = &v35;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [v14 setSupportedOutputChannelLayouts:{objc_msgSend(MEMORY[0x1E695DEC8], "array", v21, v22)}];
          CMSMNotificationUtility_PostSupportedBufferedAudioCapabilitiesDidChange(v14);
        }
      }

      v11 = [v1 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v11);
  }

LABEL_38:

  v20 = *MEMORY[0x1E69E9840];
}

void CMSMUtility_UpdateBadgeType()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = *v19;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(v0);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        if ([v6 isActive] && CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v6))
        {
          v7 = [v6 copyMXSessionList];
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v8 = [v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v15;
            do
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v15 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                [*(*(&v14 + 1) + 8 * j) updateBadgeType];
              }

              v9 = [v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
            }

            while (v9);
          }

          v3 = 1;
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 1) == 0 && dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t CMSMUtility_IsAnyMXSessionPlayingWithEachMutePriority()
{
  v34 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v1)
  {
    v2 = v1;
    v23 = 0;
    v3 = 0;
    v4 = 0;
    v5 = *v29;
    v20 = *v29;
    v21 = v0;
    do
    {
      v6 = 0;
      v22 = v2;
      do
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v0);
        }

        v7 = *(*(&v28 + 1) + 8 * v6);
        if ([v7 isActive] && objc_msgSend(v7, "isPlaying") && !objc_msgSend(v7, "shadowingAudioSessionID") && !CMSUtility_GetOptOutOfMutePriority(v7))
        {
          v8 = [v7 copyMXSessionList];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v25;
            do
            {
              v12 = 0;
              do
              {
                if (*v25 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v24 + 1) + 8 * v12);
                v14 = [v13 getMutePriority];
                v15 = v14;
                if (v4 || ([v14 isEqualToString:@"MutePriority_One"] & 1) == 0)
                {
                  if ([v13 getIsPlaying] && objc_msgSend(v13, "getActuallyPlaysAudio") && (objc_msgSend(v15, "isEqualToString:", @"MutePriority_One") & 1) == 0)
                  {
                    if (v3 || ([v15 isEqualToString:@"MutePriority_Two"] & 1) == 0)
                    {
                      if (HIDWORD(v23) || ([v15 isEqualToString:@"MutePriority_Three"] & 1) == 0)
                      {
                        if (!v23)
                        {
                          LODWORD(v23) = [v15 isEqualToString:@"MutePriority_Four"];
                        }
                      }

                      else
                      {
                        HIDWORD(v23) = 1;
                      }
                    }

                    else
                    {
                      v3 = 1;
                    }
                  }
                }

                else
                {
                  v4 = 1;
                }

                ++v12;
              }

              while (v10 != v12);
              v16 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
              v10 = v16;
            }

            while (v16);
          }

          v5 = v20;
          v0 = v21;
          v2 = v22;
        }

        ++v6;
      }

      while (v6 != v2);
      v2 = [v0 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v2);
  }

  else
  {
    v23 = 0;
    v3 = 0;
    v4 = 0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v18 = *MEMORY[0x1E69E9840];
  return (HIDWORD(v23) << 16) | (v23 << 24) | (v3 << 8) | v4;
}

uint64_t CMSMUtility_AudioToolboxHandleInterruptionCommandWithMXSessionID(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (off_1EB75E068)
  {
    v12 = off_1EB75E068;
    ClientPID = CMSUtility_GetClientPID(a1);
    v7 = [a1 audioSessionID];
    v8 = *MEMORY[0x1E69E9840];

    return v12(ClientPID, v7, a2, a3, 0);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    v11 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t CMSMUtility_AudioToolboxServerRefreshMuteState()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = off_1EB75E088;
  if (off_1EB75E088)
  {
    v1 = *MEMORY[0x1E69E9840];

    return v0();
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = *MEMORY[0x1E69E9840];
    return 4294951609;
  }
}

__CFArray *CMSMUtility_CopyActiveCoreSessionsShadowingAudioSessionID(int a1)
{
  v16 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
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
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v8 isActive] && objc_msgSend(v8, "shadowingAudioSessionID") && objc_msgSend(v8, "shadowingAudioSessionID") == a1)
          {
            CFArrayAppendValue(Mutable, v8);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    if (!CFArrayGetCount(Mutable))
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void CMSMUtility_PostStopCommandToShadowingSessionsForSession(void *a1, unsigned __int8 a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v2 = CMSMUtility_CopyActiveCoreSessionsShadowingAudioSessionID([a1 audioSessionID]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(__CFArray *)v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSUtilityApplier_PostNotification_StopCommand(v7, &v14);
      }

      v4 = [(__CFArray *)v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v4);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void CMSMUtility_PostNotifyStyleFadeOutAppliedForPlaybackHandoff()
{
  if (MX_FeatureFlags_IsHandoffEnabled())
  {
    cmsmUtility_InitializeNotifyStyleTokensForPlaybackHandoff();
    if (gValidFadeOutAppliedForPlaybackHandoffToken)
    {
      if (gFadeOutDurationAppliedForPlaybackHandoff)
      {
        v0 = 1000;
      }

      else
      {
        v0 = 0;
      }

      notify_set_state(gFadeOutAppliedForPlaybackHandoffToken, v0);

      notify_post("com.apple.mediaexperience.fadeoutappliedforplaybackhandoff");
    }
  }
}

void cmsmUtility_InitializeNotifyStyleTokensForPlaybackHandoff()
{
  if (MX_FeatureFlags_IsHandoffEnabled())
  {
    if (cmsmUtility_InitializeNotifyStyleTokensForPlaybackHandoff_onceToken != -1)
    {
      cmsmUtility_InitializeNotifyStyleTokensForPlaybackHandoff_cold_1();
    }
  }
}

void CMSMUtility_PostNotifyStyleFadeInAppliedForPlaybackHandoff()
{
  if (MX_FeatureFlags_IsHandoffEnabled())
  {
    cmsmUtility_InitializeNotifyStyleTokensForPlaybackHandoff();
    if (gValidFadeInAppliedForPlaybackHandoffToken)
    {
      if (gFadeInDurationAppliedForPlaybackHandoff)
      {
        v0 = 500;
      }

      else
      {
        v0 = 0;
      }

      notify_set_state(gFadeInAppliedForPlaybackHandoffToken, v0);

      notify_post("com.apple.mediaexperience.fadeinappliedforplaybackhandoff");
    }
  }
}

uint64_t CMSMUtility_GetFadeOutDurationForPlaybackHandoff()
{
  v3 = *MEMORY[0x1E69E9840];
  result = MX_FeatureFlags_IsHandoffEnabled();
  if (result)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    gFadeOutDurationAppliedForPlaybackHandoff = 1;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSMUtility_ApplyPIDToInheritAppStateFrom(int a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v29 = a1;
  v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    v21 = a2;
    v20 = v4;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        if ([objc_msgSend(v9 clientPID] == a1 && objc_msgSend(v9, "pidToInheritAppStateFrom") != a2)
        {
          v10 = [v9 pidToInheritAppStateFrom];
          [v9 setPidToInheritAppStateFrom:a2];
          MX_RunningBoardServices_StartMonitoringForPID(a2);
          if (v10 >= 1)
          {
            v24 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            a2 = v21;
            v4 = v20;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v6);
  }

  valuePtr[0] = MX_RunningBoardServices_GetApplicationStateForPID(a2, 0);
  v12 = *MEMORY[0x1E695E480];
  v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  v14 = CFNumberCreate(v12, kCFNumberSInt32Type, &v29);
  v15 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  if (v13)
  {
    CFRetain(v13);
  }

  v16 = MXGetSerialQueue();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __CMSMUtility_ApplyPIDToInheritAppStateFrom_block_invoke;
  v22[3] = &__block_descriptor_48_e5_v8__0l;
  v22[4] = v15;
  v22[5] = v13;
  MXDispatchAsync("CMSMUtility_ApplyPIDToInheritAppStateFrom", "CMSessionManager_Utilities.m", 5877, 0, 0, v16, v22);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t CMSMUtility_IAPShouldPauseOnHeadphoneDisconnect(uint64_t a1)
{
  if (IAPLibrary_sOnce != -1)
  {
    CMSMUtility_IAPShouldPauseOnHeadphoneDisconnect_cold_1();
  }

  if (!IAPLibrary_sLib || !dlsym(IAPLibrary_sLib, "IAPAudioShouldPauseAudioOnHeadsetDisconnect"))
  {
    return 0;
  }

  v2 = softLinkIAPAudioShouldPauseAudioOnHeadsetDisconnect[0];

  return v2(a1);
}

uint64_t CMSMUtility_IAPAppProcessIDIsUsingAccessory(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (IAPLibrary_sOnce != -1)
  {
    CMSMUtility_IAPShouldPauseOnHeadphoneDisconnect_cold_1();
  }

  if (!IAPLibrary_sLib || !dlsym(IAPLibrary_sLib, "IAPAppProcessIDIsUsingAccessory"))
  {
    return 0;
  }

  v2 = softLinkIAPAppProcessIDIsUsingAccessory[0];

  return v2(a1);
}

CFIndex CMSMUtility_VibrationPatternIsActuallyGoingToVibe(CFIndex result)
{
  if (result)
  {
    v1 = result;
    if (CFDictionaryContainsKey(result, @"VibePattern"))
    {
      Value = CFDictionaryGetValue(v1, @"VibePattern");
      result = CFArrayGetCount(Value);
      if (!result)
      {
        return result;
      }

      v5.length = CFArrayGetCount(Value);
      v5.location = 0;
      v3 = CFArrayContainsValue(Value, v5, *MEMORY[0x1E695E4D0]) == 0;
      return !v3;
    }

    if (CFDictionaryContainsKey(v1, @"OnDuration"))
    {
      return 1;
    }

    result = CFDictionaryContainsKey(v1, @"Atoms");
    if (result)
    {
      v4 = CFDictionaryGetValue(v1, @"Atoms");
      v3 = CFArrayGetCount(v4) == 0;
      return !v3;
    }
  }

  return result;
}

void *CMSMUtility_GetSharePlayMediaSession()
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
        if ([v5 isSharePlayMediaSession])
        {
          break;
        }

        if (v2 == ++v4)
        {
          v2 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
          if (v2)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
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

uint64_t CMSMUtility_TransferVolumeControlFlagToSharePlayCapableMediaSession()
{
  v14 = *MEMORY[0x1E69E9840];
  result = MX_FeatureFlags_IsSharePlayEnabled();
  if (result)
  {
    result = CMSMUtility_GetSharePlayCapableActiveMediaSession();
    if (result)
    {
      v1 = result;
      result = CMSMUtility_IsSharePlayCapableCallSessionActive();
      if (result)
      {
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
          while (2)
          {
            for (i = 0; i != v4; ++i)
            {
              if (*v10 != v5)
              {
                objc_enumerationMutation(v2);
              }

              v7 = *(*(&v9 + 1) + 8 * i);
              if (CMSUtility_GetIsActive(v7) && (([v7 isSharePlayCallSession] & 1) != 0 || objc_msgSend(v7, "isSharePlayCapableCallSession")))
              {
                [v7 setCurrentlyControllingFlags:{objc_msgSend(v7, "currentlyControllingFlags") & 0xFFFFFFEFLL}];
                [v7 setHwControlFlags:2];
                goto LABEL_16;
              }
            }

            v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
            if (v4)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        cmsTryToTakeControl(v1);
        vaemConfigurePVMSettings([v1 audioMode], 0);
        result = [v1 setNeedToEndInterruption:1];
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSMUtility_TransferVolumeControlFlagToSharePlayCapableCallSession()
{
  v12 = *MEMORY[0x1E69E9840];
  if (CMSMUtility_IsSharePlayCapableCallSessionActive())
  {
    v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v1)
    {
      v2 = v1;
      v3 = *v8;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v8 != v3)
          {
            objc_enumerationMutation(v0);
          }

          v5 = *(*(&v7 + 1) + 8 * i);
          if (CMSUtility_GetIsActive(v5) && [v5 isSharePlayCapableCallSession])
          {
            [v5 setHwControlFlags:18];
            goto LABEL_13;
          }
        }

        v2 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v6 = *MEMORY[0x1E69E9840];
}

void CMSMUtility_SetMediaPlaybackVolumeToCurrentPhoneCallVolume()
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0.0;
  if (MX_FeatureFlags_IsSharePlayEnabled())
  {
    CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
    v1 = CurrentOutputPortAtIndex;
    v2 = vaeCopyFigOutputDeviceNameFromVADPort(CurrentOutputPortAtIndex);
    v3 = vaeCopyRouteSubtypeFromVADPort(v1);
    v4 = vaeCopyDeviceIdentifierFromVADPort(v1);
    v5 = getpid();
    v6 = MXSMPerformVolumeOperation(0xDu, @"PhoneCall", v2, v4, v3, 0, v5, &v11, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0);
    if (v4)
    {
      CFRelease(v4);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    if (!v6)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v8 = v11;
      v9 = getpid();
      MXSMPerformVolumeOperation(0xCu, @"Audio/Video", 0, 0, 0, 0, v9, 0, v8, 0.0, 0.0, 0, 0, 0, 1u, 0);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void CMSMUtility_SetPhoneCallVolumeToCurrentMediaPlaybackVolume()
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0.0;
  if (MX_FeatureFlags_IsSharePlayEnabled())
  {
    v0 = getpid();
    if (!MXSMPerformVolumeOperation(0xDu, @"Audio/Video", 0, 0, 0, 0, v0, &v10, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0))
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
      v3 = CurrentOutputPortAtIndex;
      v4 = vaeCopyFigOutputDeviceNameFromVADPort(CurrentOutputPortAtIndex);
      v5 = vaeCopyRouteSubtypeFromVADPort(v3);
      v6 = vaeCopyDeviceIdentifierFromVADPort(v3);
      v7 = v10;
      v8 = getpid();
      MXSMPerformVolumeOperation(0xCu, @"PhoneCall", v4, v6, v5, 0, v8, 0, v7, 0.0, 0.0, 0, 0, 0, 1u, 0);
      if (v6)
      {
        CFRelease(v6);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t CMSMUtility_SetSharePlayInfoOnVA(void *a1)
{
  result = MX_FeatureFlags_IsSharePlayEnabled();
  if (a1 && result)
  {
    if ([a1 isSharePlayMediaSession] && objc_msgSend(a1, "isActive") && CMSMUtility_IsSharePlayCallSessionActive())
    {
      VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([a1 audioMode]);
      v4 = [a1 aggregateDeviceClockUID];

      return CMSMVAUtility_SetSharePlayMediaSessionInfoOnVA(VADModeFromFigModeName, v4);
    }

    else
    {
      result = [a1 isSharePlayCallSession];
      if (result)
      {
        result = [a1 isActive];
        if (result)
        {
          IsSharePlayMediaSessionActive = CMSMUtility_IsSharePlayMediaSessionActive();

          return cmsSetCategoryOnPVMAndAudioDevice(a1, 0, IsSharePlayMediaSessionActive);
        }
      }
    }
  }

  return result;
}

id CMSMUtility_CreateCurrentlyAirPlayingVideoStreamsDictionary(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cf = 0;
  v5 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 isLongFormVideo] && objc_msgSend(v10, "isPlaying") && objc_msgSend(v10, "isActiveOverAirPlayVideo") && (objc_msgSend(v10, "isAudioOnlyAirPlayVideoActive") & 1) == 0)
        {
          if ([v10 displayID])
          {
            [v4 setObject:objc_msgSend(v10 forKey:{"displayID"), a1}];
          }

          FigRoutingManagerContextUtilities_CopyPickedEndpointNames([v10 routingContextUUID], &cf);
          if (cf)
          {
            if ([cf count] >= 2)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [v4 setObject:cf forKey:{a2, v14, v15}];
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }
          }

          goto LABEL_20;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t CMSMUtility_InterruptAudioSessionIDForHandoff(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [+[MXSessionManager sharedInstance](MXSessionManager copySessionWithAudioSessionID:"copySessionWithAudioSessionID:", a1];
    if (v1)
    {
      v2 = v1;
      CMSMUtility_PostStopCommandToShadowingSessionsForSession(v1, 1u);
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSUtilityApplier_PostNotification_StopCommand(v2, 0);

      result = 0;
    }

    else
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      result = 4294951615;
    }

    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];

    return FigSignalErrorAtGM();
  }

  return result;
}

void *__IAPLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/IAP.framework/IAP", 2);
  IAPLibrary_sLib = result;
  return result;
}

uint64_t initIAPAudioShouldPauseAudioOnHeadsetDisconnect(uint64_t a1)
{
  if (IAPLibrary_sOnce != -1)
  {
    CMSMUtility_IAPShouldPauseOnHeadphoneDisconnect_cold_1();
  }

  v2 = dlsym(IAPLibrary_sLib, "IAPAudioShouldPauseAudioOnHeadsetDisconnect");
  softLinkIAPAudioShouldPauseAudioOnHeadsetDisconnect[0] = v2;

  return (v2)(a1);
}

uint64_t initIAPAppProcessIDIsUsingAccessory(uint64_t a1)
{
  if (IAPLibrary_sOnce != -1)
  {
    CMSMUtility_IAPShouldPauseOnHeadphoneDisconnect_cold_1();
  }

  v2 = dlsym(IAPLibrary_sLib, "IAPAppProcessIDIsUsingAccessory");
  softLinkIAPAppProcessIDIsUsingAccessory[0] = v2;

  return (v2)(a1);
}

void sub_1B18C2D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B18C2E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B18C2F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B18C312C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B18C326C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __mxsystemstatus_initialize_block_invoke()
{
  v20 = *MEMORY[0x1E69E9840];
  if (!SystemStatusLibraryCore())
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_16:
    v7 = 0;
    goto LABEL_18;
  }

  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  gSerializationQueue = dispatch_queue_create("com.apple.coremedia.MXSystemStatus", v0);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__4;
  v1 = getSTMediaStatusDomainPublisherClass_softClass;
  v13 = __Block_byref_object_dispose__4;
  v14 = getSTMediaStatusDomainPublisherClass_softClass;
  if (!getSTMediaStatusDomainPublisherClass_softClass)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getSTMediaStatusDomainPublisherClass_block_invoke;
    v18 = &unk_1E7AE73A0;
    v19 = &v9;
    __getSTMediaStatusDomainPublisherClass_block_invoke(&v15);
    v1 = v10[5];
  }

  _Block_object_dispose(&v9, 8);
  stMediaStatusDomainPublisher = objc_alloc_init(v1);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__4;
  v2 = getSTMutableMediaStatusDomainDataClass_softClass;
  v13 = __Block_byref_object_dispose__4;
  v14 = getSTMutableMediaStatusDomainDataClass_softClass;
  if (!getSTMutableMediaStatusDomainDataClass_softClass)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getSTMutableMediaStatusDomainDataClass_block_invoke;
    v18 = &unk_1E7AE73A0;
    v19 = &v9;
    __getSTMutableMediaStatusDomainDataClass_block_invoke(&v15);
    v2 = v10[5];
  }

  _Block_object_dispose(&v9, 8);
  stMutableMediaStatusDomainData = objc_alloc_init(v2);
  sSystemStatusMutex = FigReentrantMutexCreate();
  sRecordingClientsInfo = objc_alloc_init(MEMORY[0x1E695DFA8]);
  result = objc_alloc_init(MEMORY[0x1E695DFA8]);
  sMutedRecordingClientsInfo = result;
  if (!gSerializationQueue || !stMediaStatusDomainPublisher || !stMutableMediaStatusDomainData || !sSystemStatusMutex || !sRecordingClientsInfo || !result)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_16;
  }

  if (dword_1EB75DE40)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = 1;
LABEL_18:
  sIsSystemStatusInitialized = v7;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B18C5214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SystemStatusLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!SystemStatusLibraryCore_frameworkLibrary)
  {
    SystemStatusLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = SystemStatusLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SystemStatusLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SystemStatusLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getSTMediaStatusDomainPublisherClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  *(*(*(a1 + 32) + 8) + 40) = objc_getClass("STMediaStatusDomainPublisher");
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getSTMediaStatusDomainPublisherClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    __getSTMediaStatusDomainPublisherClass_block_invoke_cold_1();
    SystemStatusLibrary();
  }
}

void SystemStatusLibrary()
{
  if (!SystemStatusLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

Class __getSTMutableMediaStatusDomainDataClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STMutableMediaStatusDomainData");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getSTMutableMediaStatusDomainDataClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getSTMutableMediaStatusDomainDataClass_block_invoke_cold_1();
    return __getBSExecutablePathForAuditTokenSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getBSExecutablePathForAuditTokenSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!BaseBoardLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __BaseBoardLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7AEB2D8;
    v8 = 0;
    BaseBoardLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = BaseBoardLibraryCore_frameworkLibrary;
    if (BaseBoardLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = BaseBoardLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "BSExecutablePathForAuditToken");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBSExecutablePathForAuditTokenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __BaseBoardLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BaseBoardLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getSTAttributedEntityClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STAttributedEntity");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getSTAttributedEntityClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getSTAttributedEntityClass_block_invoke_cold_1();
    return __getSTExecutableIdentityClass_block_invoke(v3);
  }

  return result;
}

Class __getSTExecutableIdentityClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STExecutableIdentity");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getSTExecutableIdentityClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getSTExecutableIdentityClass_block_invoke_cold_1();
    return __getSTActivityAttributionClass_block_invoke(v3);
  }

  return result;
}

Class __getSTActivityAttributionClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STActivityAttribution");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getSTActivityAttributionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getSTActivityAttributionClass_block_invoke_cold_1();
    return __getSTMediaStatusDomainMicrophoneRecordingAttributionClass_block_invoke(v3);
  }

  return result;
}

Class __getSTMediaStatusDomainMicrophoneRecordingAttributionClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STMediaStatusDomainMicrophoneRecordingAttribution");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getSTMediaStatusDomainMicrophoneRecordingAttributionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getSTMediaStatusDomainMicrophoneRecordingAttributionClass_block_invoke_cold_1();
    return MXCoreAnimation_IsWirelessDisplayBeingUsedInSecondDisplayMode(v3);
  }

  return result;
}

uint64_t MXCoreAnimation_IsWirelessDisplayBeingUsedInSecondDisplayMode()
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [MEMORY[0x1E6979328] displays];
  result = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v1 = result;
    v2 = *v14;
    while (2)
    {
      v3 = 0;
      do
      {
        if (*v14 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v13 + 1) + 8 * v3);
        v5 = [v4 displayType];
        if ([objc_msgSend(v4 "currentMode")])
        {
          v6 = [objc_msgSend(v4 "currentMode")] != 0;
        }

        else
        {
          v6 = 0;
        }

        if (dword_1EB75DF20)
        {
          v12 = v6;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v6 = v12;
        }

        if (v5 == 2 && v6 && ![v4 isCloning])
        {
          result = 1;
          goto LABEL_17;
        }

        ++v3;
      }

      while (v1 != v3);
      result = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
      v1 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMAP_FindAirPlayPortForEndpoint(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v12 = 0;
    v1 = *MEMORY[0x1E695E480];
    FigEndpointCopyFirstStreamOfType();
    v2 = CMSMVAUtility_CopyConnectedWirelessPorts();
    v3 = v2;
    if (v2 && (Count = CFArrayGetCount(v2), Count >= 1))
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        v13 = 0;
        FigCFArrayGetInt64AtIndex();
        v7 = v13;
        v8 = vaeCopyDeviceIdentifierFromVADPort(v13);
        if (FigCFEqual())
        {
          break;
        }

        if (v8)
        {
          CFRelease(v8);
        }

        if (v5 == ++v6)
        {
          goto LABEL_9;
        }
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
LABEL_9:
      v7 = 0;
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CMSMAP_MakeAirPlayHandOffPortRoutable(int a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6 = CFNumberCreate(v4, kCFNumberSInt32Type, &dword_1EB75E0B8);
  CFArrayAppendValue(Mutable, v6);
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    memset(v17 + 8, 0, 168);
    v16 = 0;
    *&v17[0] = Mutable;
    v8 = cmsmSetVADRouteConfiguration(&v13, 0, a2);
    v10 = MXGetSerialQueue();
    MXDispatchAsync("CMSMAP_StopRouteAwayFromAirPlayHandoffTimer", "CMSessionManager_AirPlay.m", 262, 0, 0, v10, &__block_literal_global_9);
LABEL_7:
    if (!Mutable)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  CMSMAP_StartRouteAwayFromAirPlayHandoffTimer(a2, 60.0);
  v13 = 0u;
  v14 = 0u;
  memset(v17, 0, sizeof(v17));
  *&v15 = 0;
  *(&v15 + 1) = Mutable;
  v16 = Mutable;
  v8 = cmsmSetVADRouteConfiguration(&v13, 0, a2);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (Mutable)
  {
LABEL_8:
    CFRelease(Mutable);
  }

LABEL_9:
  if (v6)
  {
    CFRelease(v6);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

void CMSMAP_StartRouteAwayFromAirPlayHandoffTimer(uint64_t a1, float a2)
{
  if (qword_1EB75E160)
  {
    v4 = MXGetSerialQueue();
    MXDispatchAsync("CMSMAP_StopRouteAwayFromAirPlayHandoffTimer", "CMSessionManager_AirPlay.m", 262, 0, 0, v4, &__block_literal_global_9);
  }

  v5 = MXGetSerialQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CMSMAP_StartRouteAwayFromAirPlayHandoffTimer_block_invoke;
  v6[3] = &__block_descriptor_44_e5_v8__0l;
  v6[4] = a1;
  v7 = a2;
  MXDispatchAsync("CMSMAP_StartRouteAwayFromAirPlayHandoffTimer", "CMSessionManager_AirPlay.m", 246, 0, 0, v5, v6);
}

void CMSMAP_DisconnectAllAirPlaySessions(uint64_t a1)
{
  v2 = cmsmCopyWirelessPortsArrayForRouteConfiguration(@"Audio/Video", @"Default", 0, 0);
  cmsmUnpickWirelessRoutes(v2, 1, a1, qword_1EB75E190);
  if (v2)
  {

    CFRelease(v2);
  }
}

void CMSMAP_StartDisconnectAirPlayScreenTimer(float a1)
{
  if (qword_1EB75E158)
  {
    v2 = MXGetSerialQueue();
    MXDispatchAsync("CMSMAP_StopDisconnectAirPlayScreenTimer", "CMSessionManager_AirPlay.m", 229, 0, 0, v2, &__block_literal_global_5);
  }

  v3 = MXGetSerialQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CMSMAP_StartDisconnectAirPlayScreenTimer_block_invoke;
  v4[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = a1;
  MXDispatchAsync("CMSMAP_StartDisconnectAirPlayScreenTimer", "CMSessionManager_AirPlay.m", 215, 0, 0, v3, v4);
}

void CMSMAP_StopDisconnectAirPlayScreenTimer()
{
  v0 = MXGetSerialQueue();

  MXDispatchAsync("CMSMAP_StopDisconnectAirPlayScreenTimer", "CMSessionManager_AirPlay.m", 229, 0, 0, v0, &__block_literal_global_5);
}

uint64_t cmsmap_DisconnectAirPlayScreenIfIdle()
{
  v9 = *MEMORY[0x1E69E9840];
  IsPlayingToAirPlay = CMSMUtility_SomeClientIsPlayingToAirPlay();
  if (qword_1EB75E158)
  {
    dispatch_source_cancel(qword_1EB75E158);
    if (qword_1EB75E158)
    {
      dispatch_release(qword_1EB75E158);
      qword_1EB75E158 = 0;
    }
  }

  CMScreenGetScreenState();
  result = FigCFEqual();
  if (!result)
  {
    CMScreenGetScreenType();
    result = FigCFEqual();
    if (result && IsPlayingToAirPlay == 0)
    {
      result = CMSMDeviceState_ScreenIsBlanked();
      if (result)
      {
        if (MXCoreAnimation_IsWirelessDisplayBeingUsedInSecondDisplayMode())
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v5 = MXGetSerialQueue();
          result = MXDispatchUtilityCreateOneShotTimer(60.0, "cmsmap_DisconnectAirPlayScreenIfIdle", "CMSessionManager_AirPlay.m", 152, 0, 0, v5, &__block_literal_global_11, 0, 0);
          qword_1EB75E158 = result;
        }

        else
        {
          if (dword_1EB75DE40)
          {
            v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          IsTestCodeEnabled = MXSystemMirroring_IsTestCodeEnabled();
          v7 = [+[MXSessionManager sharedInstance](MXSessionManager systemMirroringRoutingContextUUID];
          if (IsTestCodeEnabled)
          {
            result = MXSystemMirroring_PickRouteDescriptor(v7, 0, 0, 0);
          }

          else
          {
            result = FigRoutingManagerPickRouteDescriptorForContext(v7, 0, 0, 0);
          }
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMAP_GetAirPlayDeviceVolume(uint64_t a1, uint64_t a2, float *a3)
{
  cf[20] = *MEMORY[0x1E69E9840];
  v4 = FigRoutingManagerCopyEndpointWithDeviceID(a1, 1, *MEMORY[0x1E69618D0], a2);
  if (v4)
  {
    cf[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E6962338], *MEMORY[0x1E695E480], cf);
      v7 = cf[0];
    }

    else
    {
      v7 = 0;
    }

    ValueFloat32 = MXCFNumberGetValueFloat32(v7);
    v9 = *&ValueFloat32;
    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    if (v9 >= 0.0 && v9 <= 1.0)
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = 0.3;
      if (!dword_1EB75DE40)
      {
        goto LABEL_15;
      }
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_15:
    v10 = 1;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = 0;
  v9 = 1.0;
  if (a3)
  {
LABEL_16:
    *a3 = v9;
  }

LABEL_17:
  if (v4)
  {
    CFRelease(v4);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t FigStarkModeControllerStartServer()
{
  v5 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled())
  {
    v0 = FigXPCServerStart();
    if (v0)
    {
      FigStarkModeControllerStartServer_cold_1();
    }

    else if (dword_1EB75DDF0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v0 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1B18C90CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void MXRoutingContextControllerModificationCallback(void *a1, void *a2)
{
  location[16] = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v17 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = [a1 objectForKey:{@"MXRoutingContextController", v10, v11}];
  v6 = [a1 objectForKey:@"CompletionHandler"];
  [a2 routeConfigUpdateReason];
  if (FigCFEqual())
  {
    v7 = -[MXRoutingPrewarmingChannel initWithRoutingContextUUID:endpoint:previousRouteDescriptors:]([MXRoutingPrewarmingChannel alloc], "initWithRoutingContextUUID:endpoint:previousRouteDescriptors:", [v5 routingContextUUID], 0, objc_msgSend(a1, "objectForKey:", @"PreviousRouteDescriptors"));
  }

  else
  {
    v7 = 0;
  }

  objc_initWeak(location, v5);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __MXRoutingContextControllerModificationCallback_block_invoke;
  v14[3] = &unk_1E7AEA958;
  objc_copyWeak(&v15, location);
  [(MXRoutingPrewarmingChannel *)v7 setPersistPrewarmingBlock:v14];
  v8 = [a1 objectForKey:@"PreviousRouteDescriptors"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __MXRoutingContextControllerModificationCallback_block_invoke_50;
  v12[3] = &unk_1E7AEB360;
  objc_copyWeak(&v13, location);
  v12[4] = v8;
  [(MXRoutingPrewarmingChannel *)v7 setCloseChannelBlock:v12];
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(location);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B18C9A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __MXRoutingContextControllerModificationCallback_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = [objc_loadWeak((a1 + 32)) setContextPrewarmed:0];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MXRoutingContextControllerModificationCallback_block_invoke_50(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Weak = objc_loadWeak((a1 + 40));
  [Weak setContextPrewarmed:0];
  result = [Weak selectRouteDescriptors:*(a1 + 32)];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void FigRoutingManagerSetUpSystemRemoteDisplayContextWithEndpoint(uint64_t a1)
{
  v2 = MXGetSerialQueue();
  dispatch_assert_queue_V2(v2);
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemRemoteDisplayContextUUID(&cf);
  if (a1)
  {
    if (weakCentralEndpoint)
    {
      CFRelease(weakCentralEndpoint);
      weakCentralEndpoint = 0;
    }

    weakCentralEndpoint = FigCFWeakReferenceHolderCreateWithReferencedObject();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListeners();
  }

  else
  {
    v3 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v3)
    {
      v4 = v3;
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListeners();
      CFRelease(v4);
    }

    FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(cf, 0, @"configUpdateReasonEndedBottomUpRouteChange", 0);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void FigRoutingManagerNotifyClientsOfCarPlayActivation()
{
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemRemoteDisplayContextUUID(&cf);
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(cf, v0, @"configUpdateReasonEndedBottomUpRouteChange", 0);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v0)
  {
    CFRelease(v0);
  }
}

void FigRoutingManagerSetupEndpointCentralForCarPlay(const void *a1)
{
  v21[7] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695E110];
  v3 = MEMORY[0x1E695E480];
  v4 = MEMORY[0x1E695E118];
  if (a1)
  {
    cf[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E69622F0], *v3, cf);
    }

    v7 = *MEMORY[0x1E6962698];
    v8 = FigCFEqual();
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v8)
    {
      v2 = v4;
    }
  }

  v18 = 0;
  v19 = 0;
  if (CMSessionCreate(&v19))
  {
    goto LABEL_15;
  }

  v9 = MXSessionCreate(v19, &v18);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v18 == 0;
  }

  if (!v10)
  {
    cf[0] = @"CarSession";
    v21[0] = @"ClientName";
    v21[1] = @"ClientPID";
    cf[1] = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
    cf[2] = @"MediaPlayback";
    v21[2] = @"AudioCategory";
    v21[3] = @"IAmCar";
    cf[3] = v4;
    cf[4] = v2;
    v21[4] = @"IAmWiredCar";
    v21[5] = @"AudioHardwareControlFlags";
    cf[5] = &unk_1F28AF620;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:cf forKeys:v21 count:6];
    MXSessionSetProperties(v18, v12, 2, 0);
    goto LABEL_17;
  }

  if (v9)
  {
LABEL_15:
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (v18)
    {
      CFRelease(v18);
      v18 = 0;
    }
  }

LABEL_17:
  v13 = MXGetNotificationSenderQueue();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __routingManager_createMXSessionForCarPlay_block_invoke;
  v16[3] = &__block_descriptor_40_e5_v8__0l;
  v16[4] = v19;
  MXDispatchAsync("routingManager_createMXSessionForCarPlay", "FigRoutingManager_iOSCarPlay.m", 74, 0, 0, v13, v16);
  v14 = v18;
  cf[0] = 0;
  FigEndpointCreateCentral(*v3, a1, v18, cf);
  _MXSessionSetProperty(v14, @"CarFigEndpointCentralObject", cf[0]);
  FigEndpointServerSetActiveEndpoint();
  if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled())
  {
    FigRoutingManagerSetUpSystemRemoteDisplayContextWithEndpoint(cf[0]);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t FigRoutingManagerSendCarPlayDuckCommand(const void *a1, uint64_t a2)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  if (!a1 || (cf = 0, FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf), !cf))
  {
    v10 = 4294954296;
    goto LABEL_29;
  }

  v17 = 0;
  FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(cf, &v17);
  if (v17 != a1)
  {
    theArray[0] = 0;
    FigRoutingManagerContextUtilities_CopyActivatedEndpoints(cf, theArray);
    if (!theArray[0])
    {
      goto LABEL_22;
    }

    Count = CFArrayGetCount(theArray[0]);
    if (Count < 1)
    {
      v9 = 0;
    }

    else
    {
      v5 = Count;
      if (CFArrayGetValueAtIndex(theArray[0], 0) == a1)
      {
        v9 = 1;
      }

      else
      {
        v6 = 1;
        do
        {
          v7 = v6;
          if (v5 == v6)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], v6);
          v6 = v7 + 1;
        }

        while (ValueAtIndex != a1);
        v9 = v7 < v5;
      }
    }

    if (theArray[0])
    {
      CFRelease(theArray[0]);
      if (!v9)
      {
        goto LABEL_22;
      }
    }

    else if (!v9)
    {
      goto LABEL_22;
    }
  }

  FigEndpointExtendedGetClassID();
  if (CMBaseObjectIsMemberOfClass())
  {
    v11 = CFRetain(a1);
    if (v11)
    {
      v12 = v11;
      v13 = *(*(CMBaseObjectGetVTable() + 24) + 48);
      if (v13)
      {
        v10 = v13(v12, a2);
      }

      else
      {
        v10 = 4294954514;
      }

      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFRelease(v12);
      goto LABEL_27;
    }
  }

LABEL_22:
  v10 = 4294954296;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_29:
  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t FigRoutingManagerCopyCarBluetoothIDs(uint64_t a1)
{
  theArray = 0;
  v15 = 0;
  FigRoutingManagerContextUtilities_CopyActivatedEndpoints(a1, &theArray);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      v5 = *MEMORY[0x1E69626C0];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
        if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
        {
          break;
        }

        if (v3 == ++v4)
        {
          goto LABEL_9;
        }
      }

      CMBaseObject = FigEndpointGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(CMBaseObject, *MEMORY[0x1E6961FE8], *MEMORY[0x1E695E480], &v15);
      }
    }

LABEL_9:
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }
  }

  result = v15;
  if (!v15)
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(a1, &cf);
    v10 = *MEMORY[0x1E69626C0];
    if (FigRoutingManagerIsEndpointOfType(cf))
    {
      v11 = FigEndpointGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(v11, *MEMORY[0x1E6961FE8], *MEMORY[0x1E695E480], &v15);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    return v15;
  }

  return result;
}

void FigRoutingManagerSendCarPlayDisableBluetoothCommand()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0)
  {
    CFRetain(v0);
  }

  v2 = *(FigRoutingManagerGetSharedManager() + 1);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __FigRoutingManagerSendCarPlayDisableBluetoothCommand_block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = v1;
  MXDispatchAsync("FigRoutingManagerSendCarPlayDisableBluetoothCommand", "FigRoutingManager_iOSCarPlay.m", 309, 0, 0, v2, v3);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __FigRoutingManagerSendCarPlayDisableBluetoothCommand_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v18 = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v18);
  theArray = 0;
  FigRoutingManagerContextUtilities_CopyActivatedEndpoints(v18, &theArray);
  v2 = MEMORY[0x1E69626C0];
  if (!theArray)
  {
    goto LABEL_13;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    goto LABEL_9;
  }

  v4 = Count;
  v5 = 0;
  v6 = *v2;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
    {
      break;
    }

    if (v4 == ++v5)
    {
      goto LABEL_9;
    }
  }

  if (ValueAtIndex)
  {
    v8 = CFRetain(ValueAtIndex);
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (!v8)
  {
LABEL_13:
    cf[0] = 0;
    FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(v18, cf);
    v9 = *v2;
    if (FigRoutingManagerIsEndpointOfType(cf[0]))
    {
      if (!cf[0])
      {
        goto LABEL_25;
      }

      v8 = CFRetain(cf[0]);
    }

    else
    {
      v8 = 0;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (!v8)
    {
      goto LABEL_25;
    }
  }

  FigEndpointExtendedGetClassID();
  if (CMBaseObjectIsMemberOfClass())
  {
    v10 = CFRetain(v8);
    CFRelease(v8);
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = *(*(CMBaseObjectGetVTable() + 24) + 40);
      if (v12)
      {
        v12(v10, v11, 0);
      }

      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFRelease(v10);
      goto LABEL_30;
    }
  }

  else
  {
    CFRelease(v8);
  }

LABEL_25:
  if (dword_1EB75DF20)
  {
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_30:
  v15 = *(a1 + 32);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  v16 = *MEMORY[0x1E69E9840];
}

NSObject *FigRoutingManagerStartCarPlayAudioMainPortPublishingCheckTimer(void *cf, uint64_t a2, float a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  SharedManager = FigRoutingManagerGetSharedManager();
  v7 = *(SharedManager + 4);
  if (v7)
  {
    dispatch_source_cancel(v7);
    v8 = *(SharedManager + 4);
    if (v8)
    {
      dispatch_release(v8);
      *(SharedManager + 4) = 0;
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FigRoutingManagerStartCarPlayAudioMainPortPublishingCheckTimer_block_invoke;
  v11[3] = &__block_descriptor_48_e5_v8__0l;
  v11[4] = cf;
  v11[5] = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigRoutingManagerStartCarPlayAudioMainPortPublishingCheckTimer_block_invoke_2;
  v10[3] = &__block_descriptor_40_e5_v8__0l;
  v10[4] = cf;
  result = FigRoutingManagerCreateOneShotTimer(*(SharedManager + 1), a3, v11, cf, v10);
  *(SharedManager + 4) = result;
  return result;
}

void __FigRoutingManagerStartCarPlayAudioMainPortPublishingCheckTimer_block_invoke(uint64_t a1)
{
  v12 = 0;
  cf = 0;
  if (*(a1 + 32))
  {
    v2 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v5 = *(*(VTable + 8) + 48);
    if (v5)
    {
      v6 = *(VTable + 8) + 48;
      v5(CMBaseObject, *MEMORY[0x1E69620F8], v2, &cf);
    }

    v7 = *(a1 + 32);
    v8 = FigEndpointGetCMBaseObject();
    v9 = CMBaseObjectGetVTable();
    v10 = *(*(v9 + 8) + 48);
    if (v10)
    {
      v11 = *(v9 + 8) + 48;
      v10(v8, *MEMORY[0x1E69621E8], v2, &v12);
    }

    FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(*(a1 + 40), *(a1 + 32), @"configUpdateReasonEndedSuccess");
    FigRoutingManagerPostProcessPickEndpoint(*(a1 + 32), *(a1 + 40));
    FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 40), 0);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }
}

void __FigRoutingManagerStartCarPlayAudioMainPortPublishingCheckTimer_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void FigRoutingManagerStopCarPlayAudioMainPortPublishedCheckTimer()
{
  SharedManager = FigRoutingManagerGetSharedManager();
  v1 = *(SharedManager + 4);
  if (v1)
  {
    dispatch_source_cancel(v1);
    v2 = *(SharedManager + 4);
    if (v2)
    {
      dispatch_release(v2);
      *(SharedManager + 4) = 0;
    }
  }
}

uint64_t FigRoutingManagerFindCarPlayMainAudioPortForEndpoint(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  theArray = 0;
  v16 = 0;
  v1 = *MEMORY[0x1E695E480];
  v2 = *MEMORY[0x1E69625E8];
  FigEndpointCopyStreamsForTypeAndSubType();
  v4 = vaemCopyConnectedPortsListForRouteConfiguration(0, 0, 0, 0, 0);
  v5 = v4;
  if (v4 && (Count = CFArrayGetCount(v4), Count >= 1))
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      LODWORD(cf) = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &cf);
      v10 = vaeCopyDeviceIdentifierFromVADPort(cf);
      PortTypeFromPortID = vaeGetPortTypeFromPortID(cf);
      if (FigCFEqual() && PortTypeFromPortID == 1886614639)
      {
        break;
      }

      if (v10)
      {
        CFRelease(v10);
      }

      if (v7 == ++v8)
      {
        goto LABEL_14;
      }
    }

    v3 = cf;
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
LABEL_14:
    v3 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v3;
}

void FigRoutingManagerProcessCarPlayEndpointDeactivation(int a1)
{
  v2 = CMSMUtility_CopyCarPlaySession();
  v3 = v2;
  if (v2)
  {
    MXCoreSessionSetProperty(v2, @"CarFigEndpointCentralObject");
    v4 = *MEMORY[0x1E695E4C0];
    MXCoreSessionSetProperty(v3, @"IAmCar");
    CMSMNotificationUtility_PostCarPlayAuxStreamSupportDidChange(0);
    CMSMNotificationUtility_PostCarPlayIsConnectedDidChange(0);
  }

  if (a1)
  {
    if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled())
    {
      FigRoutingManagerSetUpSystemRemoteDisplayContextWithEndpoint(0);
    }

    FigEndpointServerSetActiveEndpoint();
  }
}

void __routingManager_createMXSessionForCarPlay_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

__CFDictionary *CMSMPowerLogCreatePowerLogDataForAppleTV(const void *a1, int a2, const void *a3, const void *a4)
{
  valuePtr = a2;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!a2)
  {
    v10 = 0;
LABEL_6:
    v11 = 1;
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
  if (!v10)
  {
    goto LABEL_6;
  }

  CFDictionarySetValue(Mutable, @"AssertionID", v10);
  v11 = 0;
  if (a3)
  {
LABEL_7:
    CFDictionarySetValue(Mutable, @"AssertionName", a3);
  }

LABEL_8:
  if (a4)
  {
    CFDictionarySetValue(Mutable, @"CreationTime", a4);
  }

  if (a1)
  {
    CFDictionarySetValue(Mutable, @"Operation", a1);
  }

  if ((v11 & 1) == 0)
  {
    CFRelease(v10);
  }

  return Mutable;
}

__CFDictionary *CMSMPowerLogCreatePowerLogDataForStarkWiFi(const void *a1, int a2, const void *a3, const void *a4)
{
  valuePtr = a2;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!a2)
  {
    v10 = 0;
LABEL_6:
    v11 = 1;
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
  if (!v10)
  {
    goto LABEL_6;
  }

  CFDictionarySetValue(Mutable, @"AssertionID", v10);
  v11 = 0;
  if (a3)
  {
LABEL_7:
    CFDictionarySetValue(Mutable, @"AssertionName", a3);
  }

LABEL_8:
  if (a4)
  {
    CFDictionarySetValue(Mutable, @"CreationTime", a4);
  }

  if (a1)
  {
    CFDictionarySetValue(Mutable, @"Operation", a1);
  }

  v12 = CMSMUtility_CopyCarPlaySession();
  v13 = v12;
  if (v12)
  {
    if ([v12 clientPID])
    {
      v16 = [objc_msgSend(v13 "clientPID")];
      v14 = CFNumberCreate(v8, kCFNumberSInt32Type, &v16);
      FigCFDictionarySetValue();
      if (v14)
      {
        CFRelease(v14);
      }
    }

    CFDictionarySetValue(Mutable, @"ApplicationName", @"CarCMSession");
  }

  if ((v11 & 1) == 0)
  {
    CFRelease(v10);
  }

  return Mutable;
}

__CFDictionary *CMSMPowerLogCreatePowerLogDataForSession(void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if ([a1 idleSleepPreventor])
  {
    valuePtr = [a1 idleSleepPreventor];
    v4 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
    if (v4)
    {
      CFDictionarySetValue(Mutable, @"AssertionID", v4);
      v5 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = 1;
LABEL_6:
  if ([a1 idleSleepPreventorName])
  {
    CFDictionarySetValue(Mutable, @"AssertionName", [a1 idleSleepPreventorName]);
  }

  if ([a1 idleSleepPreventorCreationTime])
  {
    CFDictionarySetValue(Mutable, @"CreationTime", [a1 idleSleepPreventorCreationTime]);
  }

  if (FigCFEqual() || FigCFEqual())
  {
    if (![a1 isPlayingStartTime])
    {
      goto LABEL_15;
    }

    v6 = @"PlaybackStartTime";
    v7 = [a1 isPlayingStartTime];
  }

  else
  {
    if (!FigCFEqual() || ![a1 isPlayingStopTime])
    {
      goto LABEL_15;
    }

    v6 = @"PlaybackStopTime";
    v7 = [a1 isPlayingStopTime];
  }

  CFDictionarySetValue(Mutable, v6, v7);
LABEL_15:
  if (FigCFEqual() || FigCFEqual())
  {
    v8 = MX_RunningBoardServices_CopyAssertionReasonsStringForPID([objc_msgSend(a1 "clientPID")]);
    StringForApplicationState = CMSMUtility_GetStringForApplicationState([a1 applicationState]);
    CFDictionarySetValue(Mutable, @"ApplicationState", StringForApplicationState);
    CFDictionarySetValue(Mutable, @"AssertionReasonString", v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  if ([objc_msgSend(a1 "clientPID")])
  {
    v13 = [objc_msgSend(a1 "clientPID")];
    v10 = CFNumberCreate(v2, kCFNumberSInt32Type, &v13);
  }

  else
  {
    v10 = 0;
  }

  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if ([a1 isMemberOfClass:objc_opt_class()])
  {
    v11 = CMSUtility_CopyCurrentRouteTypeAtIndex(a1, 0);
    if (([a1 isCarSession] & 1) == 0)
    {
      [a1 displayID];
    }

    FigCFDictionarySetValue();
    cmsmpowerlogConvertToExternalRouteNameForPowerLog(v11);
    FigCFDictionarySetValue();
    if (v10)
    {
LABEL_31:
      CFRelease(v10);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 displayID];
      FigCFDictionarySetValue();
      cmsmpowerlogConvertToExternalRouteNameForPowerLog(@"MicrophoneBuiltIn");
      FigCFDictionarySetValue();
    }

    v11 = 0;
    if (v10)
    {
      goto LABEL_31;
    }
  }

  if ((v5 & 1) == 0)
  {
    CFRelease(v4);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return Mutable;
}

void CMSMPowerLogPostScreenMirroringPowerLogs(const void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, @"MirroringState", a1);
    CMSMPowerLogPostPowerLogData(@"CoreMedia_ScreenMirroring", v3);

    CFRelease(v3);
  }
}

uint64_t MX_MediaServicesUtilitiesResetMediaServices(int a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = v3;
  if (a1)
  {
    [v3 addObject:@"audiomxd"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v4 addObject:@"mediaplaybackd"];
  [v4 addObject:@"mediaparserd"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  [v4 addObject:@"cameracaptured"];
  if ((a1 & 8) != 0)
  {
LABEL_5:
    [v4 addObject:@"videocodecd"];
    [v4 addObject:@"AudioConverterService"];
  }

LABEL_6:
  if (a1 == 0xFFFF)
  {
    [v4 addObject:@"airplayd"];
    [v4 addObject:@"cvhwad"];
  }

  if ([v4 count])
  {
    v16 = v2;
    if (dword_1EB75DE40)
    {
      v22 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:{16, v14, v15}];
    if (v7)
    {
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v25 = 0;
          v26 = &v25;
          v27 = 0x2020000000;
          v11 = getSFTerminateProcessNamedSymbolLoc_ptr;
          v28 = getSFTerminateProcessNamedSymbolLoc_ptr;
          if (!getSFTerminateProcessNamedSymbolLoc_ptr)
          {
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v24[2] = __getSFTerminateProcessNamedSymbolLoc_block_invoke;
            v24[3] = &unk_1E7AE73A0;
            v24[4] = &v25;
            __getSFTerminateProcessNamedSymbolLoc_block_invoke(v24);
            v11 = v26[3];
          }

          _Block_object_dispose(&v25, 8);
          if (!v11)
          {
            __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
            __break(1u);
          }

          v11(v10, 0, @"Resetting media services");
        }

        v7 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v7);
    }

    v6 = 0;
    v2 = v16;
  }

  else
  {
    v6 = 4294954315;
  }

  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

void *__getSFTerminateProcessNamedSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!SettingsFoundationLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SettingsFoundationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7AEB3A0;
    v8 = 0;
    SettingsFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = SettingsFoundationLibraryCore_frameworkLibrary;
    if (SettingsFoundationLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SettingsFoundationLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SFTerminateProcessNamed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSFTerminateProcessNamedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SettingsFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SettingsFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t remoteSTS_DeadConnectionCallback()
{
  CMBaseObjectGetDerivedStorage();
  result = CMBaseObjectGetDerivedStorage();
  *(result + 16) = 1;
  return result;
}

__CFString *remoteSTS_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = *(DerivedStorage + 8);
  v6 = CFGetRetainCount(a1);
  v7 = *DerivedStorage;
  if (*(DerivedStorage + 16))
  {
    v8 = " SERVER DIED";
  }

  else
  {
    v8 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigSTSRemote %p (%@) RC: %ld ObjectID: %016llx%s>", a1, v5, v6, *DerivedStorage, v8);
  return Mutable;
}

uint64_t remoteSTS_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    remoteSTS_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

CFTypeRef FigPredictedRouting_CopySelectedRouteDescriptor(uint64_t a1)
{
  if (!FigPredictedRouting_IsSupported(a1))
  {
    return 0;
  }

  FigSimpleMutexLock();
  if (gPRS_1)
  {
    v1 = CFRetain(gPRS_1);
  }

  else
  {
    v1 = 0;
  }

  FigSimpleMutexUnlock();
  return v1;
}

void FigPredictedRouting_ResetSelectedRouteDescriptor(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (FigPredictedRouting_IsSupported(a1))
  {
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (a2 == 6)
    {
      v4 = 10;
    }

    else
    {
      v4 = 8;
    }

    if (a2 == 1)
    {
      v5 = 9;
    }

    else
    {
      v5 = v4;
    }

    predictedRouting_UpdatePredictedRoute(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t FigPredictedRouting_StartTimer(float a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (predictedRouting_initialize_onceToken != -1)
  {
    FigPredictedRouting_IsSupported_cold_1();
  }

  FigSimpleMutexLock();
  if (gPRS_2)
  {
    FigPredictedRouting_StopTimer();
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  SharedQueue = FigRoutingManagerGetSharedQueue();
  gPRS_2 = MXDispatchUtilityCreateOneShotTimer(a1, "FigPredictedRouting_StartTimer", "FigPredictedRouting.m", 658, 0, 0, SharedQueue, &__block_literal_global_32, 0, 0);
  result = FigSimpleMutexUnlock();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigPredictedRouting_StopTimer()
{
  v4 = *MEMORY[0x1E69E9840];
  if (predictedRouting_initialize_onceToken != -1)
  {
    FigPredictedRouting_IsSupported_cold_1();
  }

  FigSimpleMutexLock();
  v0 = gPRS_2;
  if (gPRS_2)
  {
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v0 = gPRS_2;
    }

    dispatch_source_cancel(v0);
    if (gPRS_2)
    {
      dispatch_release(gPRS_2);
      gPRS_2 = 0;
    }
  }

  result = FigSimpleMutexUnlock();
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigPredictedRouting_IsPreemptivePortChangedTimerActive()
{
  v4 = *MEMORY[0x1E69E9840];
  if (FigPredictedRouting_IsPreemptivePortLogicEnabled())
  {
    FigSimpleMutexLock();
    if (gPRS_4)
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
  }

  else
  {
    v1 = 0;
  }

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t FigPredictedRouting_StartPreemptivePortChangedTimer()
{
  v4 = *MEMORY[0x1E69E9840];
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

    v2 = MXGetSerialQueue();
    gPRS_4 = MXDispatchUtilityCreateOneShotTimer(4.0, "FigPredictedRouting_StartPreemptivePortChangedTimer", "FigPredictedRouting.m", 724, 0, 0, v2, &__block_literal_global_3, 0, 0);
    result = FigSimpleMutexUnlock();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigPredictedRouting_MuteSessionIfPreemptivePortChanged(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  result = FigPredictedRouting_IsPreemptivePortLogicEnabled();
  if (result)
  {
    result = FigPredictedRouting_IsPreemptivePortChanged();
    if (result)
    {
      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [+[MXSessionManager sharedInstance](MXSessionManager startAsyncDuckingOperation:v6];
      v4 = +[MXSessionManager sharedInstance];
      [(MXSessionManager *)v4 duckVolume:a1 duckerSession:0 duckingSource:gPRS_3];
      [+[MXSessionManager sharedInstance](MXSessionManager endAsyncDuckingOperation];
      result = FigPredictedRouting_IsPreemptivePortChangedTimerActive();
      if (!result)
      {
        result = FigPredictedRouting_StartPreemptivePortChangedTimer();
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __predictedRouting_initialize_block_invoke()
{
  gPRS_0 = FigReentrantMutexCreate();
  v0 = [MXDuckingSource alloc];
  LODWORD(v1) = 1036831949;
  result = [(MXDuckingSource *)v0 initWithType:4 ID:0 duckVolume:0.0 duckFadeDuration:v1];
  gPRS_3 = result;
  return result;
}

uint64_t FigEndpointAuthRequestHandler_AddRequest(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce != -1)
  {
    FigEndpointAuthRequestHandler_AddRequest_cold_1();
  }

  v2 = qword_1EB75CB38;
  if (qword_1EB75CB38)
  {
    v3 = &qword_1EB75CB38;
  }

  else
  {
    v3 = 8;
  }

  v4 = *v3;
  FigSimpleMutexLock();
  v5 = malloc_type_malloc(0x38uLL, 0xE004067E18789uLL);
  v6 = *a1;
  if (*a1)
  {
    v6 = CFRetain(v6);
  }

  *(v5 + 1) = v6;
  v7 = *(a1 + 8);
  if (v7)
  {
    v7 = CFRetain(v7);
  }

  *(v5 + 2) = v7;
  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = CFRetain(v8);
  }

  *(v5 + 4) = v8;
  *(v5 + 40) = *(a1 + 32);
  v9 = *(a1 + 16);
  if (v9)
  {
    v9 = CFRetain(v9);
  }

  *(v5 + 3) = v9;
  *v5 = 0;
  v10 = &qword_1EB75CB40;
  if (!v2)
  {
    v10 = 16;
  }

  if (*v10)
  {
    v11 = &unk_1EB75CB48;
    if (!v2)
    {
      v11 = 24;
    }

    **v11 = v5;
  }

  else
  {
    *v10 = v5;
    v11 = &unk_1EB75CB48;
    if (!v2)
    {
      v11 = 24;
    }
  }

  *v11 = v5;
  v12 = *v3;
  result = FigSimpleMutexUnlock();
  if (dword_1EB75DE10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigEndpointAuthRequestHandler_HasEndpoint(uint64_t a1)
{
  if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce != -1)
  {
    FigEndpointAuthRequestHandler_AddRequest_cold_1();
  }

  if (qword_1EB75CB38)
  {
    v2 = &qword_1EB75CB38;
  }

  else
  {
    v2 = 8;
  }

  v3 = *v2;
  if (qword_1EB75CB38)
  {
    v4 = &xmmword_1EB75CB40;
  }

  else
  {
    v4 = 16;
  }

  FigSimpleMutexLock();
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (*(v4 + 32) == a1)
    {
      v5 = 1;
      goto LABEL_14;
    }
  }

  v5 = 0;
LABEL_14:
  v6 = *v2;
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t FigEndpointAuthRequestHandler_RemoveRequest()
{
  v15 = *MEMORY[0x1E69E9840];
  if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce != -1)
  {
    FigEndpointAuthRequestHandler_AddRequest_cold_1();
  }

  v0 = qword_1EB75CB38;
  if (qword_1EB75CB38)
  {
    v1 = &qword_1EB75CB38;
  }

  else
  {
    v1 = 8;
  }

  v2 = *v1;
  if (qword_1EB75CB38)
  {
    v3 = &qword_1EB75CB40;
  }

  else
  {
    v3 = 16;
  }

  FigSimpleMutexLock();
  v4 = *v3;
  if (*v3)
  {
    v5 = *v4;
    *v4 = 0;
    v6 = v4[2];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = v4[3];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = v4[1];
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = v4[4];
    if (v9)
    {
      CFRelease(v9);
    }

    free(v4);
    if (v5)
    {
      *v3 = v5;
    }

    else
    {
      *v3 = 0;
      v10 = &unk_1EB75CB48;
      if (!v0)
      {
        v10 = 24;
      }

      *v10 = 0;
    }
  }

  v11 = *v1;
  result = FigSimpleMutexUnlock();
  if (dword_1EB75DE10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigEndpointAuthRequestHandler_ProcessRequest(__int128 *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v37 = 0;
  if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce != -1)
  {
    FigEndpointAuthRequestHandler_AddRequest_cold_1();
  }

  v2 = qword_1EB75CB38;
  if (qword_1EB75CB38)
  {
    v3 = &qword_1EB75CB38;
  }

  else
  {
    v3 = 8;
  }

  v4 = *v3;
  FigSimpleMutexLock();
  v5 = FigEndpointAuthRequestHandler_GetAuthRequestList_authListObj;
  v6 = *v3;
  FigSimpleMutexUnlock();
  if (*(a1 + 3))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &v37);
    }
  }

  v9 = &xmmword_1EB75CB40;
  if (!v2)
  {
    v9 = 16;
  }

  if (!*v9)
  {
    v10 = &xmmword_1EB75CB40 + 8;
    if (!v2)
    {
      v10 = 24;
    }

    if (!*v10)
    {
      if (!v5)
      {
        v18 = a1[1];
        v38 = *a1;
        v39 = v18;
        v40 = a1[2];
        FigEndpointAuthRequestHandler_AddRequest(&v38);
        if (dword_1EB75DE10)
        {
          LODWORD(cf) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v33 = a1[1];
        v38 = *a1;
        v39 = v33;
        v40 = a1[2];
        goto LABEL_39;
      }

LABEL_35:
      v31 = 0;
      goto LABEL_40;
    }
  }

  v11 = *(FigEndpointAuthRequestHandler_GetCurrentAuthToProcess() + 16);
  v12 = *(a1 + 2);
  if (!FigCFEqual())
  {
    if (!v5)
    {
      v16 = a1[1];
      v38 = *a1;
      v39 = v16;
      v40 = a1[2];
      FigEndpointAuthRequestHandler_AddRequest(&v38);
    }

    goto LABEL_35;
  }

  if (v5)
  {
    FigEndpointAuthRequestHandler_RemoveRequest();
    CurrentAuthToProcess = FigEndpointAuthRequestHandler_GetCurrentAuthToProcess();
    if (CurrentAuthToProcess)
    {
      v14 = CurrentAuthToProcess;
      if (dword_1EB75DE10)
      {
        LODWORD(cf) = 0;
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v21 = *v14;
      v22 = v14[2];
      v39 = v14[1];
      v40 = v22;
      v38 = v21;
LABEL_39:
      v31 = FigEndpointUIAgentHelper_DisplayAuthPrompt(&v38, FigEndpointAuthRequestHandler_CallbackFromUIAgent);
      goto LABEL_40;
    }

    if (dword_1EB75DE10)
    {
      LODWORD(cf) = 0;
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_35;
  }

  if (dword_1EB75DE10)
  {
    LODWORD(cf) = 0;
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v23 = a1[1];
  v38 = *a1;
  v39 = v23;
  v40 = a1[2];
  FigEndpointAuthRequestHandler_ReplaceRequest(&v38);
  v24 = FigEndpointAuthRequestHandler_GetCurrentAuthToProcess();
  v25 = *(v24 + 16);
  v26 = *(a1 + 2);
  if (!FigCFEqual())
  {
    goto LABEL_35;
  }

  cf = 0;
  v27 = *(v24 + 24);
  v28 = FigEndpointGetCMBaseObject();
  v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v29)
  {
    v29(v28, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &cf);
  }

  if (dword_1EB75DE10)
  {
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v32 = a1[1];
  v38 = *a1;
  v39 = v32;
  v40 = a1[2];
  v31 = FigEndpointUIAgentHelper_DisplayAuthPrompt(&v38, FigEndpointAuthRequestHandler_CallbackFromUIAgent);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_40:
  if (v37)
  {
    CFRelease(v37);
  }

  v34 = *MEMORY[0x1E69E9840];
  return v31;
}

void FigEndpointAuthRequestHandler_CallbackFromUIAgent(uint64_t a1, int a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!FigEndpointAuthRequestHandler_IsAuthListEmpty())
  {
    if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce == -1)
    {
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      FigEndpointAuthRequestHandler_CallbackFromUIAgent_cold_1();
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    v10 = &xmmword_1EB75CB40;
    if (!qword_1EB75CB38)
    {
      v10 = 16;
    }

    if (a2)
    {
      v11 = 4294950568;
    }

    else
    {
      v11 = 0;
    }

    a4(*(*v10 + 32), a1, v11, a5);
  }

LABEL_12:
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t FigEndpointAuthRequestHandler_GetCurrentAuthToProcess()
{
  if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce != -1)
  {
    FigEndpointAuthRequestHandler_AddRequest_cold_1();
  }

  if (qword_1EB75CB38)
  {
    v0 = &qword_1EB75CB38;
  }

  else
  {
    v0 = 8;
  }

  v1 = *v0;
  if (qword_1EB75CB38)
  {
    v2 = &xmmword_1EB75CB40;
  }

  else
  {
    v2 = 16;
  }

  FigSimpleMutexLock();
  v3 = *v2;
  v4 = *v0;
  FigSimpleMutexUnlock();
  if (v3)
  {
    return v3 + 8;
  }

  else
  {
    return 0;
  }
}

void FigEndpointAuthRequestHandler_ReplaceRequest(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce != -1)
  {
    FigEndpointAuthRequestHandler_AddRequest_cold_1();
  }

  v2 = &xmmword_1EB75CB40;
  v17 = qword_1EB75CB38;
  if (!qword_1EB75CB38)
  {
    v2 = 16;
  }

  v3 = *v2;
  if (*v2)
  {
    while (1)
    {
      v4 = v3[3];
      v5 = *(a1 + 16);
      if (FigCFEqual())
      {
        break;
      }

      if (dword_1EB75DE10)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v3 = *v3;
      if (!v3)
      {
        goto LABEL_27;
      }
    }

    if (v17)
    {
      v7 = &qword_1EB75CB38;
    }

    else
    {
      v7 = 8;
    }

    v8 = *v7;
    FigSimpleMutexLock();
    v9 = v3[1];
    v10 = *a1;
    v3[1] = *a1;
    if (v10)
    {
      CFRetain(v10);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v11 = v3[2];
    v12 = *(a1 + 8);
    v3[2] = v12;
    if (v12)
    {
      CFRetain(v12);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    *(v3 + 5) = *(a1 + 32);
    v13 = v3[3];
    v14 = *(a1 + 16);
    *(v3 + 3) = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v15 = *v7;
    FigSimpleMutexUnlock();
  }

LABEL_27:
  v16 = *MEMORY[0x1E69E9840];
}

BOOL FigEndpointAuthRequestHandler_IsAuthListEmpty()
{
  if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce != -1)
  {
    FigEndpointAuthRequestHandler_AddRequest_cold_1();
  }

  return !qword_1EB75CB38 || xmmword_1EB75CB40 == 0;
}

uint64_t FigEndpointAuthRequestHandler_SetProcessNextRequest(char a1)
{
  if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce != -1)
  {
    FigEndpointAuthRequestHandler_AddRequest_cold_1();
  }

  result = qword_1EB75CB38;
  if (qword_1EB75CB38)
  {
    FigSimpleMutexLock();
    FigEndpointAuthRequestHandler_GetAuthRequestList_authListObj = a1;

    return FigSimpleMutexUnlock();
  }

  return result;
}

void remoteXPCRouteDiscovererClient_DeadConnectionCallback()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 1;

  remoteXPCRouteDiscoverer_DisposeCaches(DerivedStorage);
}

uint64_t remoteXPCRouteDiscoverer_CopyAvailableEndpoints(uint64_t a1, void *a2)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v4 = FigEndpointXPCRemotePing();
  *(v25 + 6) = v4;
  if (!v4)
  {
    ObjectID = remoteXPCRouteDiscoverer_GetObjectID(a1, &v23);
    *(v25 + 6) = ObjectID;
    if (!ObjectID)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = FigXPCCreateBasicMessage();
      *(v25 + 6) = v7;
      if (!v7)
      {
        v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        *(v25 + 6) = v8;
        if (!v8)
        {
          value = xpc_dictionary_get_value(v21, kFigRouteDiscovererXPCMsgParam_AddedRoutes);
          v10 = xpc_dictionary_get_value(v21, kFigRouteDiscovererXPCMsgParam_SubtractedRoutes);
          v11 = *(DerivedStorage + 16);
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __remoteXPCRouteDiscoverer_CopyAvailableEndpoints_block_invoke;
          v16[3] = &unk_1E7AEB450;
          v16[4] = value;
          v16[5] = v10;
          v16[6] = &v24;
          v16[7] = &v17;
          v16[8] = DerivedStorage;
          MXDispatchSync("remoteXPCRouteDiscoverer_CopyAvailableEndpoints", "FigRouteDiscovererRemoteXPC.m", 161, 0, 0, v11, v16);
          v12 = v18;
          *a2 = v18[3];
          v12[3] = 0;
        }
      }
    }
  }

  v13 = v18[3];
  if (v13)
  {
    CFRelease(v13);
  }

  FigXPCRelease();
  FigXPCRelease();
  v14 = *(v25 + 6);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v24, 8);
  return v14;
}

void sub_1B18CF1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t figRouteDiscovererRemoteXPCCopyEndpointForRouteDescriptor(uint64_t a1, CFDictionaryRef theDict, void *a3)
{
  result = 4294949956;
  if (!theDict || !a3)
  {
    return result;
  }

  Value = CFDictionaryGetValue(theDict, @"RouteUID");
  if (!Value)
  {
    return 4294949956;
  }

  v8 = Value;
  CFDictionaryGetValue(theDict, @"AudioRouteName");
  v9 = FigCFEqual();
  theArray = 0;
  remoteXPCRouteDiscoverer_CopyAvailableEndpoints(a1, &theArray);
  v10 = theArray;
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    goto LABEL_30;
  }

  v12 = Count;
  v13 = 0;
  v25 = *MEMORY[0x1E69622F8];
  v14 = *MEMORY[0x1E695E480];
  v15 = *MEMORY[0x1E69626A8];
  v24 = *MEMORY[0x1E69620F8];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v18)
    {
      v18(CMBaseObject, v25, v14, &cf);
    }

    if (v9 && !FigCFEqual())
    {
      v22 = cf;
      if (!cf)
      {
        goto LABEL_20;
      }

LABEL_19:
      CFRelease(v22);
      goto LABEL_20;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    stringToFind = 0;
    v19 = FigEndpointGetCMBaseObject();
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20)
    {
      v20(v19, v24, v14, &stringToFind);
    }

    if (!stringToFind)
    {
      goto LABEL_20;
    }

    v21 = CFStringFind(v8, stringToFind, 1uLL);
    if (v21.length >= 1 && !v21.location)
    {
      break;
    }

    v22 = stringToFind;
    if (stringToFind)
    {
      goto LABEL_19;
    }

LABEL_20:
    if (v12 == ++v13)
    {
      goto LABEL_30;
    }
  }

  if (ValueAtIndex)
  {
    v23 = CFRetain(ValueAtIndex);
  }

  else
  {
    v23 = 0;
  }

  *a3 = v23;
  if (stringToFind)
  {
    CFRelease(stringToFind);
  }

LABEL_30:
  CFRelease(v10);
  return 0;
}

__CFString *singletonVolumeController_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigVolumeController Singleton %p, remoteVolumeController: %@>", a1, *(DerivedStorage + 16));
  return Mutable;
}

uint64_t volumeControllerRemote_deadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = 1;
  return result;
}

uint64_t singletonVolumeController_handleRemoteVolumeControllerNotifications()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t volumeControllerRemote_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *DerivedStorage;
  FigXPCRemoteClientDisassociateObject();
  if (v1)
  {
    v2 = *(DerivedStorage + 8) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2 && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendSyncMessage();
  }

  return FigXPCRelease();
}

uint64_t FigSystemControllerStartServer()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = FigXPCServerStart();
  if (dword_1EB75DEE0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t routingSession_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v6 = 8;
  }

  else if (FigCFEqual())
  {
    v6 = 9;
  }

  else
  {
    if (!FigCFEqual())
    {
      return 4294954512;
    }

    v6 = 10;
  }

  if (*(DerivedStorage + v6))
  {
    v7 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v8 = CFRetain(*v7);
  result = 0;
  *a4 = v8;
  return result;
}

MXSessionSidekick *__MXSessionCreate_block_invoke(uint64_t a1)
{
  result = [[MXSessionSidekick alloc] initWithSession:*(a1 + 40)];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

uint64_t _MXSessionCreate(void *a1, MXSession **a2)
{
  if (!a1)
  {
    _MXSessionCreate_cold_2(&v10);
    return v10;
  }

  if (!a2)
  {
    _MXSessionCreate_cold_1(&v10);
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
    v9[2] = ___MXSessionCreate_block_invoke;
    v9[3] = &unk_1E7AE7168;
    v9[4] = &v10;
    v9[5] = a1;
    MXDispatchAsyncAndWait("_MXSessionCreate", "MXSession_CInterfaceCommon.m", 104, 0, 0, v5, v9);
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

void sub_1B18D06E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MXSessionCreateWithOptions(void *a1, MXSessionSecure **a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    MXSessionCreateWithOptions_cold_2(v13);
LABEL_18:
    result = v13[0];
    goto LABEL_15;
  }

  if (!a1)
  {
    MXSessionCreateWithOptions_cold_1(v13);
    goto LABEL_18;
  }

  v4 = [objc_msgSend(a1 objectForKey:{@"SessionType", "unsignedCharValue"}];
  if (v4 == 1)
  {
    v8 = [[MXSessionSecure alloc] initWithOptions:a1];
    if (v8)
    {
      result = 0;
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      result = 4294951609;
    }

    *a2 = v8;
  }

  else if (v4 == 2)
  {
    if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled() && (v5 = [[MXSessionIndependentInputAudioResource alloc] initWithOptions:a1]) != 0)
    {
      v6 = v5;
      result = 0;
    }

    else
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v6 = 0;
      result = 4294951609;
    }

    *a2 = v6;
  }

  else
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *a2 = 0;
    result = 4294954315;
  }

LABEL_15:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MXSessionCopyProperty_block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) copyPropertyForKey:*(a1 + 48) valueOut:*(a1 + 56)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t MXSessionCopyProperties(void *a1, void *a2, CFTypeRef *a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v6 = objc_autoreleasePoolPush();
  if ([a1 isMemberOfClass:objc_opt_class()])
  {
    v7 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __MXSessionCopyProperties_block_invoke;
    v12[3] = &unk_1E7AE7A48;
    v12[4] = &v13;
    v12[5] = a1;
    v12[6] = a2;
    v12[7] = a3;
    MXDispatchAsyncAndWait("MXSessionCopyProperties", "MXSession_CInterfaceCommon.m", 342, 0, 0, v7, v12);
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v9 = [a1 copyProperties:a2 outPropertyErrors:a3];
    v14[3] = v9;
    if (a3 && *a3)
    {
      CFRetain(*a3);
    }

    -[MXAudioStatistics sendSinglePerformanceMessageForRoutine:operationTime:details:](+[MXAudioStatistics sharedInstance](MXAudioStatistics, "sharedInstance"), "sendSinglePerformanceMessageForRoutine:operationTime:details:", "MXSessionCopyProperties", FigGetUpTimeNanoseconds() - UpTimeNanoseconds, [a2 description]);
  }

  objc_autoreleasePoolPop(v6);
  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_1B18D0CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef __MXSessionCopyProperties_block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) copyProperties:*(a1 + 48) outPropertyErrors:*(a1 + 56)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  v3 = *(a1 + 56);
  if (v3)
  {
    result = *v3;
    if (*v3)
    {

      return CFRetain(result);
    }
  }

  return result;
}

uint64_t __MXSessionSetProperty_block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) setPropertyForKey:*(a1 + 48) value:*(a1 + 56)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t MXSessionSetProperties(void *a1, void *a2, uint64_t a3, CFTypeRef *a4)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (a1)
  {
    v8 = objc_autoreleasePoolPush();
    if ([a1 isMemberOfClass:objc_opt_class()])
    {
      v9 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __MXSessionSetProperties_block_invoke;
      v14[3] = &unk_1E7AEB480;
      v14[4] = &v16;
      v14[5] = a1;
      v15 = a3;
      v14[6] = a2;
      v14[7] = a4;
      MXDispatchAsyncAndWait("MXSessionSetProperties", "MXSession_CInterfaceCommon.m", 487, 0, 0, v9, v14);
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      if (![a1 isMemberOfClass:objc_opt_class()] || MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled())
      {
        v11 = [a1 setProperties:a2 usingErrorHandlingStrategy:a3 outPropertiesErrors:a4];
        *(v17 + 6) = v11;
      }

      if (a4 && *a4)
      {
        CFRetain(*a4);
      }

      -[MXAudioStatistics sendSinglePerformanceMessageForRoutine:operationTime:details:](+[MXAudioStatistics sharedInstance](MXAudioStatistics, "sharedInstance"), "sendSinglePerformanceMessageForRoutine:operationTime:details:", "MXSessionSetProperties", FigGetUpTimeNanoseconds() - UpTimeNanoseconds, [objc_msgSend(a2 "allKeys")]);
    }

    objc_autoreleasePoolPop(v8);
    v12 = *(v17 + 6);
  }

  else
  {
    v12 = FigSignalErrorAtGM();
    *(v17 + 6) = v12;
  }

  _Block_object_dispose(&v16, 8);
  return v12;
}

void sub_1B18D0FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef __MXSessionSetProperties_block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) setProperties:*(a1 + 48) usingErrorHandlingStrategy:*(a1 + 64) outPropertiesErrors:*(a1 + 56)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  v3 = *(a1 + 56);
  if (v3)
  {
    result = *v3;
    if (*v3)
    {

      return CFRetain(result);
    }
  }

  return result;
}

uint64_t MXSessionSetOrderedProperties(void *a1, void *a2, uint64_t a3, CFTypeRef *a4)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (a1)
  {
    v8 = objc_autoreleasePoolPush();
    if ([a1 isMemberOfClass:objc_opt_class()])
    {
      v9 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __MXSessionSetOrderedProperties_block_invoke;
      v14[3] = &unk_1E7AEB480;
      v14[4] = &v16;
      v14[5] = a1;
      v15 = a3;
      v14[6] = a2;
      v14[7] = a4;
      MXDispatchAsyncAndWait("MXSessionSetOrderedProperties", "MXSession_CInterfaceCommon.m", 541, 0, 0, v9, v14);
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      if (![a1 isMemberOfClass:objc_opt_class()] || MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled())
      {
        v11 = [a1 setOrderedProperties:a2 usingErrorHandlingStrategy:a3 outPropertiesErrors:a4];
        *(v17 + 6) = v11;
      }

      if (a4 && *a4)
      {
        CFRetain(*a4);
      }

      -[MXAudioStatistics sendSinglePerformanceMessageForRoutine:operationTime:details:](+[MXAudioStatistics sharedInstance](MXAudioStatistics, "sharedInstance"), "sendSinglePerformanceMessageForRoutine:operationTime:details:", "MXSessionSetOrderedProperties", FigGetUpTimeNanoseconds() - UpTimeNanoseconds, [a2 description]);
    }

    objc_autoreleasePoolPop(v8);
    v12 = *(v17 + 6);
  }

  else
  {
    v12 = FigSignalErrorAtGM();
    *(v17 + 6) = v12;
  }

  _Block_object_dispose(&v16, 8);
  return v12;
}

void sub_1B18D1278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef __MXSessionSetOrderedProperties_block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) setOrderedProperties:*(a1 + 48) usingErrorHandlingStrategy:*(a1 + 64) outPropertiesErrors:*(a1 + 56)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  v3 = *(a1 + 56);
  if (v3)
  {
    result = *v3;
    if (*v3)
    {

      return CFRetain(result);
    }
  }

  return result;
}

uint64_t MXSessionBeginInterruption(void *a1)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (!a1)
  {
    v8 = FigSignalErrorAtGM();
    *(v26 + 6) = v8;
    goto LABEL_12;
  }

  v2 = objc_autoreleasePoolPush();
  if (isSessionSidekick(a1))
  {
    v3 = [a1 activate];
  }

  else
  {
    if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled())
    {
      v4 = v20[5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v20[5] setInterruptionCalledOffAudioControlQueue:1];
      }
    }

    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v6 = MXGetSerialQueue();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __MXSessionBeginInterruption_block_invoke;
    v10[3] = &unk_1E7AEB4A8;
    v10[4] = &v25;
    v10[5] = &v19;
    v10[6] = &v11;
    v10[7] = &v15;
    MXDispatchAsyncAndWait("MXSessionBeginInterruption", "MXSession_CInterfaceCommon.m", 637, 0, 0, v6, v10);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"MXSessionBeginInterruption" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    if (!MX_FeatureFlags_IsOffloadActivationOffACQEnabled())
    {
      goto LABEL_11;
    }

    v7 = v20[5];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    [v20[5] setInterruptionCalledOffAudioControlQueue:0];
    if (*(v26 + 6))
    {
      goto LABEL_11;
    }

    v3 = mxsession_handleAsyncDuckingSleep(v20[5], *(v12 + 24), v16[6]);
  }

  *(v26 + 6) = v3;
LABEL_11:
  objc_autoreleasePoolPop(v2);
  v8 = *(v26 + 6);
LABEL_12:
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  return v8;
}

void sub_1B18D15C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __MXSessionBeginInterruption_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = [*(*(a1[5] + 8) + 40) _beginInterruptionWithSecTask:0 andFlags:0];
  v2 = +[MXSessionManager sharedInstance];
  v3 = *(a1[6] + 8) + 24;
  v4 = *(a1[7] + 8) + 24;

  return [(MXSessionManager *)v2 getAndResetAsyncDuckingParameters:v3 mostRecentDuckFadeDuration:v4];
}

uint64_t _MXSessionBeginInterruption_WithFlags(void *a1, uint64_t a2)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    if (isSessionSidekick(a1))
    {
      v5 = [a1 activate];
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v5 = [a1 _beginInterruptionWithSecTask:0 andFlags:a2];
      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_MXSessionBeginInterruption_WithFlags" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    _MXSessionBeginInterruption_WithFlags_cold_1(&v8);
    return v8;
  }

  return v5;
}

uint64_t MXSessionBeginInterruption_WithFlags(void *a1, uint64_t a2)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__6;
  v25 = __Block_byref_object_dispose__6;
  v26 = a1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (!a1)
  {
    v10 = FigSignalErrorAtGM();
    *(v28 + 6) = v10;
    goto LABEL_12;
  }

  v4 = objc_autoreleasePoolPush();
  if (isSessionSidekick(a1))
  {
    v5 = [a1 activate];
  }

  else
  {
    if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled())
    {
      v6 = v22[5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v22[5] setInterruptionCalledOffAudioControlQueue:1];
      }
    }

    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v8 = MXGetSerialQueue();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __MXSessionBeginInterruption_WithFlags_block_invoke;
    v12[3] = &unk_1E7AEB4D0;
    v12[4] = &v27;
    v12[5] = &v21;
    v12[6] = &v13;
    v12[7] = &v17;
    v12[8] = a2;
    MXDispatchAsyncAndWait("MXSessionBeginInterruption_WithFlags", "MXSession_CInterfaceCommon.m", 733, 0, 0, v8, v12);
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"MXSessionBeginInterruption_WithFlags" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    if (!MX_FeatureFlags_IsOffloadActivationOffACQEnabled())
    {
      goto LABEL_11;
    }

    v9 = v22[5];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    [v22[5] setInterruptionCalledOffAudioControlQueue:0];
    if (*(v28 + 6))
    {
      goto LABEL_11;
    }

    v5 = mxsession_handleAsyncDuckingSleep(v22[5], *(v14 + 24), v18[6]);
  }

  *(v28 + 6) = v5;
LABEL_11:
  objc_autoreleasePoolPop(v4);
  v10 = *(v28 + 6);
LABEL_12:
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  return v10;
}

void sub_1B18D1A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t _MXSessionBeginInterruption_WithSecTaskAndFlags(void *a1, uint64_t a2, uint64_t a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    if (isSessionSidekick(a1))
    {
      v7 = [a1 activate];
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v7 = [a1 _beginInterruptionWithSecTask:a2 andFlags:a3];
      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_MXSessionBeginInterruption_WithSecTaskAndFlags" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    _MXSessionBeginInterruption_WithSecTaskAndFlags_cold_1(&v10);
    return v10;
  }

  return v7;
}

uint64_t MXSessionEndInterruption(void *a1, const __CFString *a2)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__6;
  v28 = __Block_byref_object_dispose__6;
  v29 = a1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    if (isSessionSidekick(a1))
    {
      if (a2)
      {
        v5 = CFStringHasPrefix(a2, @"resumable") != 0;
      }

      else
      {
        v5 = 0;
      }

      v12 = [a1 deactivate:v5 postInterruptionNotification:0];
      *(v31 + 6) = v12;
    }

    else
    {
      if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled())
      {
        v6 = v25[5];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v25[5] setInterruptionCalledOffAudioControlQueue:1];
        }
      }

      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v8 = MXGetSerialQueue();
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __MXSessionEndInterruption_block_invoke;
      v15[3] = &unk_1E7AEB4D0;
      v15[4] = &v30;
      v15[5] = &v24;
      v15[6] = &v16;
      v15[7] = &v20;
      v15[8] = a2;
      MXDispatchAsyncAndWait("MXSessionEndInterruption", "MXSession_CInterfaceCommon.m", 880, 0, 0, v8, v15);
      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"MXSessionEndInterruption" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
      if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled())
      {
        v9 = v25[5];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v25[5] setInterruptionCalledOffAudioControlQueue:0];
          v10 = +[MXSessionManager sharedInstance];
          LODWORD(v11) = *(v21 + 6);
          [(MXSessionManager *)v10 sleepForAsyncDucking:*(v17 + 24) duration:v11];
        }
      }
    }

    objc_autoreleasePoolPop(v4);
    v13 = *(v31 + 6);
  }

  else
  {
    v13 = FigSignalErrorAtGM();
    *(v31 + 6) = v13;
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  return v13;
}

void sub_1B18D1E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __MXSessionEndInterruption_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = [*(*(a1[5] + 8) + 40) _endInterruptionWithSecTask:0 andStatus:a1[8]];
  v2 = +[MXSessionManager sharedInstance];
  v3 = *(a1[6] + 8) + 24;
  v4 = *(a1[7] + 8) + 24;

  return [(MXSessionManager *)v2 getAndResetAsyncDuckingParameters:v3 mostRecentDuckFadeDuration:v4];
}

uint64_t MXSessionEndInterruption_WithInterruptionNotification(void *a1, const __CFString *a2, int a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__6;
  v30 = __Block_byref_object_dispose__6;
  v31 = a1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    if (isSessionSidekick(a1))
    {
      if (a2)
      {
        v7 = CFStringHasPrefix(a2, @"resumable") != 0;
      }

      else
      {
        v7 = 0;
      }

      v14 = [a1 deactivate:v7 postInterruptionNotification:a3 != 0];
      *(v33 + 6) = v14;
    }

    else
    {
      if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled())
      {
        v8 = v27[5];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v27[5] setInterruptionCalledOffAudioControlQueue:1];
        }
      }

      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v10 = MXGetSerialQueue();
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __MXSessionEndInterruption_WithInterruptionNotification_block_invoke;
      v17[3] = &unk_1E7AEB4D0;
      v17[4] = &v32;
      v17[5] = &v26;
      v17[6] = &v18;
      v17[7] = &v22;
      v17[8] = a2;
      MXDispatchAsyncAndWait("MXSessionEndInterruption_WithInterruptionNotification", "MXSession_CInterfaceCommon.m", 945, 0, 0, v10, v17);
      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"MXSessionEndInterruption_WithInterruptionNotification" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
      if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled())
      {
        v11 = v27[5];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v27[5] setInterruptionCalledOffAudioControlQueue:0];
          v12 = +[MXSessionManager sharedInstance];
          LODWORD(v13) = *(v23 + 6);
          [(MXSessionManager *)v12 sleepForAsyncDucking:*(v19 + 24) duration:v13];
        }
      }
    }

    objc_autoreleasePoolPop(v6);
    v15 = *(v33 + 6);
  }

  else
  {
    v15 = FigSignalErrorAtGM();
    *(v33 + 6) = v15;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
  return v15;
}

void sub_1B18D2228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t _MXSessionEndInterruption(void *a1, const __CFString *a2)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    if (isSessionSidekick(a1))
    {
      if (a2)
      {
        v5 = CFStringHasPrefix(a2, @"resumable") != 0;
      }

      else
      {
        v5 = 0;
      }

      v7 = [a1 deactivate:v5 postInterruptionNotification:0];
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v7 = [a1 _endInterruptionWithSecTask:0 andStatus:a2];
      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_MXSessionEndInterruption" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    _MXSessionEndInterruption_cold_1(&v9);
    return v9;
  }

  return v7;
}

uint64_t MXSessionEndInterruption_WithSecTaskAndStatus(void *a1, uint64_t a2, const __CFString *a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__6;
  v30 = __Block_byref_object_dispose__6;
  v31 = a1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    if (isSessionSidekick(a1))
    {
      if (a3)
      {
        v7 = CFStringHasPrefix(a3, @"resumable") != 0;
      }

      else
      {
        v7 = 0;
      }

      v14 = [a1 deactivate:v7 postInterruptionNotification:0];
      *(v33 + 6) = v14;
    }

    else
    {
      if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled())
      {
        v8 = v27[5];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v27[5] setInterruptionCalledOffAudioControlQueue:1];
        }
      }

      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v10 = MXGetSerialQueue();
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __MXSessionEndInterruption_WithSecTaskAndStatus_block_invoke;
      v17[3] = &unk_1E7AE7B80;
      v17[4] = &v32;
      v17[5] = &v26;
      v17[8] = a2;
      v17[9] = a3;
      v17[6] = &v18;
      v17[7] = &v22;
      MXDispatchAsyncAndWait("MXSessionEndInterruption_WithSecTaskAndStatus", "MXSession_CInterfaceCommon.m", 1025, 0, 0, v10, v17);
      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"MXSessionEndInterruption_WithSecTaskAndStatus" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
      if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled())
      {
        v11 = v27[5];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v27[5] setInterruptionCalledOffAudioControlQueue:0];
          v12 = +[MXSessionManager sharedInstance];
          LODWORD(v13) = *(v23 + 6);
          [(MXSessionManager *)v12 sleepForAsyncDucking:*(v19 + 24) duration:v13];
        }
      }
    }

    objc_autoreleasePoolPop(v6);
    v15 = *(v33 + 6);
  }

  else
  {
    v15 = FigSignalErrorAtGM();
    *(v33 + 6) = v15;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
  return v15;
}

void sub_1B18D26C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t _MXSessionEndInterruption_WithSecTaskAndStatus(void *a1, uint64_t a2, const __CFString *a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    if (isSessionSidekick(a1))
    {
      if (a3)
      {
        v7 = CFStringHasPrefix(a3, @"resumable") != 0;
      }

      else
      {
        v7 = 0;
      }

      v9 = [a1 deactivate:v7 postInterruptionNotification:0];
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v9 = [a1 _endInterruptionWithSecTask:a2 andStatus:a3];
      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_MXSessionEndInterruption_WithSecTaskAndStatus" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    _MXSessionEndInterruption_WithSecTaskAndStatus_cold_1(&v11);
    return v11;
  }

  return v9;
}

unint64_t MXIsTypeOfSession(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    return v2 == CMSessionGetTypeID() || isCoreSessionSidekick(v1) != 0;
  }

  return result;
}

uint64_t MXIsTypeOfMXSession(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ([result isMemberOfClass:objc_opt_class()])
    {
      return 1;
    }

    else
    {
      return [v1 isMemberOfClass:objc_opt_class()];
    }
  }

  return result;
}

uint64_t MXSessionAddResource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MX_FeatureFlags_IsBypassCodecArbitrationEnabled())
  {
    return 0;
  }

  +[MXInitialization waitUntilMXIsFullyInitialized];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3052000000;
  v14[3] = __Block_byref_object_copy__6;
  v14[4] = __Block_byref_object_dispose__6;
  v14[5] = a1;
  if (a1)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = isSessionSidekick(a1);
    if ((v10 & 1) == 0)
    {
      v11 = MXGetSerialQueue();
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __MXSessionAddResource_block_invoke;
      v13[3] = &unk_1E7AE79F8;
      v13[4] = &v15;
      v13[5] = v14;
      v13[6] = a2;
      v13[7] = a3;
      v13[8] = a4;
      MXDispatchAsyncAndWait("MXSessionAddResource", "MXSession_CInterfaceCommon.m", 1150, 0, 0, v11, v13);
    }

    objc_autoreleasePoolPop(v9);
    if (v10)
    {
      v8 = 4294954309;
    }

    else
    {
      v8 = *(v16 + 6);
    }
  }

  else
  {
    v8 = FigSignalErrorAtGM();
    *(v16 + 6) = v8;
  }

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v15, 8);
  return v8;
}

void sub_1B18D2AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __MXSessionAddResource_block_invoke(void *a1)
{
  result = [*(*(a1[5] + 8) + 40) _addResource:a1[6] resourceInfo:a1[7] token:a1[8]];
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t MXSessionRemoveResource(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsBypassCodecArbitrationEnabled())
  {
    return 0;
  }

  +[MXInitialization waitUntilMXIsFullyInitialized];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3052000000;
  v10[3] = __Block_byref_object_copy__6;
  v10[4] = __Block_byref_object_dispose__6;
  v10[5] = a1;
  if (a1)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = isSessionSidekick(a1);
    if ((v6 & 1) == 0)
    {
      v7 = MXGetSerialQueue();
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __MXSessionRemoveResource_block_invoke;
      v9[3] = &unk_1E7AEB4F8;
      v9[4] = &v11;
      v9[5] = v10;
      v9[6] = a2;
      MXDispatchAsyncAndWait("MXSessionRemoveResource", "MXSession_CInterfaceCommon.m", 1180, 0, 0, v7, v9);
    }

    objc_autoreleasePoolPop(v5);
    if (v6)
    {
      v4 = 4294954309;
    }

    else
    {
      v4 = *(v12 + 6);
    }
  }

  else
  {
    v4 = FigSignalErrorAtGM();
    *(v12 + 6) = v4;
  }

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void sub_1B18D2D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __MXSessionRemoveResource_block_invoke(void *a1)
{
  result = [*(*(a1[5] + 8) + 40) _removeResourceWithToken:a1[6]];
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void fsm_setupStarkModeActionMap(uint64_t a1)
{
  CelestialGetModelSpecificName();
  v2 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v3) || (v5 = *MEMORY[0x1E695E480], (v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Version%u", a1)) == 0))
  {
    v9 = v3;
LABEL_7:

    CFRelease(v9);
    return;
  }

  v7 = v6;
  Value = CFDictionaryGetValue(v3, v6);
  if (Value)
  {
    v9 = CFRetain(Value);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v7);
  CFRelease(v3);
  if (v9)
  {
    Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
    ActionMapFromDict = fsm_createActionMapFromDict(v9, @"MainAudioRequest");
    if (ActionMapFromDict)
    {
      v12 = ActionMapFromDict;
      v24.length = CFArrayGetCount(ActionMapFromDict);
      v24.location = 0;
      CFArrayAppendArray(Mutable, v12, v24);
      CFRelease(v12);
    }

    v13 = fsm_createActionMapFromDict(v9, @"SpeechRequest");
    if (v13)
    {
      v14 = v13;
      v25.length = CFArrayGetCount(v13);
      v25.location = 0;
      CFArrayAppendArray(Mutable, v14, v25);
      CFRelease(v14);
    }

    v15 = fsm_createActionMapFromDict(v9, @"PhoneCallRequest");
    if (v15)
    {
      v16 = v15;
      v26.length = CFArrayGetCount(v15);
      v26.location = 0;
      CFArrayAppendArray(Mutable, v16, v26);
      CFRelease(v16);
    }

    v17 = fsm_createActionMapFromDict(v9, @"ScreenRequest");
    if (v17)
    {
      v18 = v17;
      v27.length = CFArrayGetCount(v17);
      v27.location = 0;
      CFArrayAppendArray(Mutable, v18, v27);
      CFRelease(v18);
    }

    v19 = fsm_createActionMapFromDict(v9, @"TurnByTurnRequest");
    if (v19)
    {
      v20 = v19;
      v28.length = CFArrayGetCount(v19);
      v28.location = 0;
      CFArrayAppendArray(Mutable, v20, v28);
      CFRelease(v20);
    }

    Copy = CFArrayCreateCopy(v5, Mutable);
    v22 = &sFigStarkModeActionMap_V2;
    if (a1 == 1)
    {
      v22 = &sFigStarkModeActionMap_V1;
    }

    *v22 = Copy;
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    goto LABEL_7;
  }
}

__CFArray *fsm_createActionMapFromDict(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (FigCFEqual())
  {
    if (!Value)
    {
      return 0;
    }
  }

  else if (FigCFEqual())
  {
    if (!Value)
    {
      return 0;
    }
  }

  else if (FigCFEqual())
  {
    if (!Value)
    {
      return 0;
    }
  }

  else if (FigCFEqual())
  {
    if (!Value)
    {
      return 0;
    }
  }

  else
  {
    FigCFEqual();
    if (!Value)
    {
      return 0;
    }
  }

  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = 0;
  v42 = Value;
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v44 = v3;
  do
  {
    Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    ValueAtIndex = CFArrayGetValueAtIndex(Value, v4);
    v7 = CFDictionaryGetValue(ValueAtIndex, @"PreviousMode");
    fsm_translatePreviousOrCurrentModeDict(v7);
    UInt32 = FigCFNumberCreateUInt32();
    CFDictionarySetValue(Mutable, @"PreviousModeEncoding", UInt32);
    if (UInt32)
    {
      CFRelease(UInt32);
    }

    v9 = CFDictionaryGetValue(ValueAtIndex, @"CurrentMode");
    fsm_translatePreviousOrCurrentModeDict(v9);
    v10 = FigCFNumberCreateUInt32();
    CFDictionarySetValue(Mutable, @"CurrentModeEncoding", v10);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = CFDictionaryGetValue(ValueAtIndex, @"ModeChangeRequest");
    if (v11)
    {
      v12 = v11;
      CFDictionaryGetValue(v11, @"Requestor");
      fsm_getFigStarkModeEntityEncodingFromCFString();
      if (FigCFEqual())
      {
        v13 = CFDictionaryGetValue(v12, @"TransferType");
        fsm_getFigStarkModeTransferTypeEncodingFromCFString(v13);
        v14 = CFDictionaryGetValue(v12, @"TransferPriority");
        fsm_getFigStarkModeTransferPriorityEncodingFromCFArray(v14);
        v15 = CFDictionaryGetValue(v12, @"TakeConstraint");
        fsm_getFigStarkModeConstraintEncodingFromCFArray(v15);
        v16 = CFDictionaryGetValue(v12, @"BorrowConstraint");
        fsm_getFigStarkModeConstraintEncodingFromCFArray(v16);
        v17 = CFDictionaryGetValue(v12, @"UnborrowConstraint");
        fsm_getFigStarkModeConstraintEncodingFromCFArray(v17);
        v3 = v44;
      }

      else
      {
        if (FigCFEqual())
        {
          v18 = CFDictionaryGetValue(v12, @"TransferType");
          fsm_getFigStarkModeTransferTypeEncodingFromCFString(v18);
          v19 = CFDictionaryGetValue(v12, @"TransferPriority");
          fsm_getFigStarkModeTransferPriorityEncodingFromCFArray(v19);
          v20 = CFDictionaryGetValue(v12, @"TakeConstraint");
          fsm_getFigStarkModeConstraintEncodingFromCFArray(v20);
          v21 = CFDictionaryGetValue(v12, @"BorrowConstraint");
          fsm_getFigStarkModeConstraintEncodingFromCFArray(v21);
          v22 = CFDictionaryGetValue(v12, @"UnborrowConstraint");
          fsm_getFigStarkModeConstraintEncodingFromCFArray(v22);
        }

        v23 = CFDictionaryGetValue(v12, @"SpeechState");
        if (v23)
        {
          v24 = v23;
          v25 = CFArrayGetCount(v23);
          if (v25 >= 1)
          {
            v26 = v25;
            v27 = 0;
            v28 = 0;
            do
            {
              CFArrayGetValueAtIndex(v24, v27);
              if (FigCFEqual())
              {
                v28 |= 1u;
              }

              else if (FigCFEqual())
              {
                v28 |= 2u;
              }

              else if (FigCFEqual())
              {
                v28 |= 4u;
              }

              else if (FigCFEqual())
              {
                v28 |= 8u;
              }

              ++v27;
            }

            while (v26 != v27);
          }
        }

        v29 = CFDictionaryGetValue(v12, @"PhoneCallState");
        v3 = v44;
        if (v29)
        {
          fsm_getFigStarkModeTriStateEncodingFromCFArray(v29);
        }

        v30 = CFDictionaryGetValue(v12, @"TurnByTurnState");
        if (v30)
        {
          fsm_getFigStarkModeTriStateEncodingFromCFArray(v30);
        }

        Value = v42;
      }
    }

    UInt64 = FigCFNumberCreateUInt64();
    CFDictionarySetValue(Mutable, @"ModeRequestEncoding", UInt64);
    if (UInt64)
    {
      CFRelease(UInt64);
    }

    v32 = CFDictionaryGetValue(ValueAtIndex, @"ModeChangeAction");
    if (v32)
    {
      v33 = v32;
      v34 = CFArrayGetCount(v32);
      if (v34 >= 1)
      {
        v35 = v34;
        v36 = 0;
        v37 = 0;
        do
        {
          CFArrayGetValueAtIndex(v33, v36);
          if (FigCFEqual())
          {
            v37 |= 1u;
          }

          else if (FigCFEqual())
          {
            v37 |= 0x20000u;
          }

          else if (FigCFEqual())
          {
            v37 |= 2u;
          }

          else if (FigCFEqual())
          {
            v37 |= 4u;
          }

          else if (FigCFEqual())
          {
            v37 |= 8u;
          }

          else if (FigCFEqual())
          {
            v37 |= 0x10u;
          }

          else if (FigCFEqual())
          {
            v37 |= 0x20u;
          }

          else if (FigCFEqual())
          {
            v37 |= 0x40u;
          }

          else if (FigCFEqual())
          {
            v37 |= 0x80u;
          }

          else if (FigCFEqual())
          {
            v37 |= 0x100u;
          }

          else if (FigCFEqual())
          {
            v37 |= 0x200u;
          }

          else if (FigCFEqual())
          {
            v37 |= 0x400u;
          }

          else if (FigCFEqual())
          {
            v37 |= 0x800u;
          }

          else if (FigCFEqual())
          {
            v37 |= 0x1000u;
          }

          else if (FigCFEqual())
          {
            v37 |= 0x2000u;
          }

          else
          {
            if (FigCFEqual())
            {
              v37 |= 0x4000u;
            }

            else if (FigCFEqual())
            {
              v37 |= 0x8000u;
            }

            else if (FigCFEqual())
            {
              v37 |= 0x10000u;
            }

            Value = v42;
          }

          ++v36;
        }

        while (v35 != v36);
        v3 = v44;
      }
    }

    v38 = FigCFNumberCreateUInt64();
    CFDictionarySetValue(Mutable, @"ModeChangeAction", v38);
    if (v38)
    {
      CFRelease(v38);
    }

    v39 = FigCFNumberCreateUInt32();
    CFDictionarySetValue(Mutable, @"RequestType", v39);
    if (v39)
    {
      CFRelease(v39);
    }

    v40 = theArray;
    CFArrayAppendValue(theArray, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    ++v4;
  }

  while (v4 != Count);
  return v40;
}

const __CFDictionary *fsm_translatePreviousOrCurrentModeDict(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    CFDictionaryGetValue(result, @"ScreenEntity");
    FigStarkModeEntityEncodingFromCFString = fsm_getFigStarkModeEntityEncodingFromCFString();
    CFDictionaryGetValue(v1, @"MainAudioEntity");
    v3 = FigStarkModeEntityEncodingFromCFString | (8 * fsm_getFigStarkModeEntityEncodingFromCFString());
    CFDictionaryGetValue(v1, @"SpeechEntity");
    v4 = v3 | (fsm_getFigStarkModeEntityEncodingFromCFString() << 6);
    Value = CFDictionaryGetValue(v1, @"SpeechMode");
    if (Value && (v6 = Value, Count = CFArrayGetCount(Value), Count >= 1))
    {
      v8 = Count;
      v9 = 0;
      v10 = 0;
      do
      {
        CFArrayGetValueAtIndex(v6, v9);
        if (FigCFEqual())
        {
          v10 |= 1u;
        }

        else if (FigCFEqual())
        {
          v10 |= 2u;
        }

        else if (FigCFEqual())
        {
          v10 |= 4u;
        }

        ++v9;
      }

      while (v8 != v9);
      v11 = v10 << 9;
    }

    else
    {
      v11 = 3584;
    }

    v12 = v11 | v4;
    CFDictionaryGetValue(v1, @"PhoneCallEntity");
    v13 = v12 + (fsm_getFigStarkModeEntityEncodingFromCFString() << 12);
    CFDictionaryGetValue(v1, @"TurnByTurnEntity");
    return (v13 | (fsm_getFigStarkModeEntityEncodingFromCFString() << 15));
  }

  return result;
}

uint64_t fsm_getFigStarkModeEntityEncodingFromCFString()
{
  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 2;
  }

  if (FigCFEqual())
  {
    return 4;
  }

  return 7;
}

uint64_t fsm_getFigStarkModeTransferTypeEncodingFromCFString(uint64_t result)
{
  if (result)
  {
    if (FigCFEqual())
    {
      return 1;
    }

    else if (FigCFEqual())
    {
      return 2;
    }

    else if (FigCFEqual())
    {
      return 4;
    }

    else if (FigCFEqual())
    {
      return 8;
    }

    else
    {
      return 16 * (FigCFEqual() != 0);
    }
  }

  return result;
}

uint64_t fsm_getFigStarkModeTransferPriorityEncodingFromCFArray(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 7;
  }

  v3 = Count;
  v4 = 0;
  LODWORD(v5) = 0;
  do
  {
    CFArrayGetValueAtIndex(a1, v4);
    if (FigCFEqual())
    {
      v5 = v5 | 1;
    }

    else if (FigCFEqual())
    {
      v5 = v5 | 2;
    }

    else if (FigCFEqual())
    {
      v5 = v5 | 4;
    }

    else
    {
      v5 = v5;
    }

    ++v4;
  }

  while (v3 != v4);
  return v5;
}

uint64_t fsm_getFigStarkModeConstraintEncodingFromCFArray(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 15;
  }

  v3 = Count;
  v4 = 0;
  LODWORD(v5) = 0;
  do
  {
    CFArrayGetValueAtIndex(a1, v4);
    if (FigCFEqual())
    {
      v5 = v5 | 1;
    }

    else if (FigCFEqual())
    {
      v5 = v5 | 2;
    }

    else if (FigCFEqual())
    {
      v5 = v5 | 4;
    }

    else if (FigCFEqual())
    {
      v5 = v5 | 8;
    }

    else
    {
      v5 = v5;
    }

    ++v4;
  }

  while (v3 != v4);
  return v5;
}

uint64_t fsm_getFigStarkModeTriStateEncodingFromCFArray(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 7;
  }

  v3 = Count;
  v4 = 0;
  LODWORD(v5) = 0;
  do
  {
    CFArrayGetValueAtIndex(a1, v4);
    if (FigCFEqual())
    {
      v5 = v5 | 1;
    }

    else if (FigCFEqual())
    {
      v5 = v5 | 2;
    }

    else if (FigCFEqual())
    {
      v5 = v5 | 4;
    }

    else
    {
      v5 = v5;
    }

    ++v4;
  }

  while (v3 != v4);
  return v5;
}

void systemController_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  v1 = *DerivedStorage;
  FigNotificationCenterRemoveWeakListeners();
  v2 = *DerivedStorage;
}

__CFString *systemController_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSystemController %p MXSystemController %p figOwnedAudioSessionID %d", a1, *DerivedStorage, *(DerivedStorage + 8));
  return Mutable;
}

uint64_t systemController_ToggleInputMute()
{
  v0 = *CMBaseObjectGetDerivedStorage();

  return [v0 toggleInputMute];
}

uint64_t systemController_SetInputMute(uint64_t a1, _OWORD *a2, int a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  return [v5 setInputMute:v8 muteValue:a3 != 0];
}

uint64_t systemController_GetInputMute(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  return [v5 getInputMute:v8 outMuteValue:a3];
}

uint64_t systemController_ClearUplinkMutedCache()
{
  v0 = *CMBaseObjectGetDerivedStorage();

  return [v0 clearUplinkMutedCache];
}

uint64_t systemController_AllowAppToInitiateRecordingTemporarily(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return [v3 setAttributeForKey:@"AllowAppToInitiateRecordingTemporarily" andValue:a2];
}

uint64_t systemController_GrantMediaEndowment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();

  return [v5 grantMediaEndowmentWithEnvironmentID:a2 endowmentPayload:a3];
}

uint64_t systemController_RevokeMediaEndowment(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return [v3 revokeMediaEndowmentWithEnvironmentID:a2];
}

uint64_t systemController_SetSilentMode(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();

  return [v9 setSilentMode:a2 != 0 untilTime:a3 reason:a4 clientType:a5];
}

uint64_t systemController_RemoteDeviceControlIsAllowed(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return [v3 remoteDeviceControlIsAllowed:a2];
}

uint64_t systemController_GetVolumeButtonDelta(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();

  return [v5 getVolumeButtonDelta:a2 outVolumeDelta:a3];
}

uint64_t systemController_AllowAppsToInitiatePlayback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v8 = [MEMORY[0x1E695DFD8] setWithArray:a2];

  return [v7 allowAppsToInitiatePlayback:v8 clientType:a3 isTemporary:a4];
}

uint64_t systemController_GetAudioSessionIDForAttributedPID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();

  return [v5 getAudioSessionID:a2 forAttributedPID:a3];
}

void __fsc_createPropertyMappingDicts_block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  gFigSystemControllerSetPropertyMapping = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Mutable = CFDictionaryCreateMutable(v2, 0, v3, v4);
  gFigSystemControllerCopyPropertyMapping = Mutable;
  if (gFigSystemControllerSetPropertyMapping)
  {
    v6 = Mutable == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = -17650;
  }

  else
  {
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"PIDToInheritApplicationStateFrom", @"PIDToInheritApplicationStateFrom");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"CanBeNowPlayingApp", @"CanBeNowPlayingApp");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"AppWantsVolumeChanges", @"AppWantsVolumeChanges");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"PickedRoute", @"PickedRoute");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"RouteAwayFromAirPlay", @"RouteAwayFromAirPlay");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"PickedRouteWithPassword", @"PickedRouteWithPassword");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"AvailableForVoicePrompts", @"AvailableForVoicePrompts");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"AirPlayScreenSuspended", @"AirPlayScreenSuspended");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"AllowAppToInitiatePlaybackTemporarily", @"AllowAppToInitiatePlaybackTemporarily");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"HeadphoneVolumeLimit", @"HeadphoneVolumeLimit");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"VibeIntensity", @"VibeIntensity");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"FullMute", @"FullMute");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"UplinkMute", @"UplinkMute");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"DownlinkMute", @"DownlinkMute");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"ThermalControlInfo", @"ThermalControlInfo");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"AppToInterruptCurrentNowPlayingSession", @"AppToInterruptCurrentNowPlayingSession");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"AllowAppToFadeInTemporarily", @"AllowAppToFadeInTemporarily");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"OverrideToPartnerRoute", @"OverrideToPartnerRoute");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"InterruptAudioSessionIDForHandoff", @"InterruptAudioSessionIDForHandoff");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"PostInterruptionEndedNotification", @"PostInterruptionEndedNotification");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"WombatEnabled", @"WombatEnabled");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"CallScreeningStatus", @"CallScreeningStatus");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"IsMaximumSpeakerVolumeLimitEnabled", @"IsMaximumSpeakerVolumeLimitEnabled");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"MaximumSpeakerVolumeLimit", @"MaximumSpeakerVolumeLimit");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"DefaultMaximumSpeakerVolumeLimit", @"DefaultMaximumSpeakerVolumeLimit");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"PreferHeadphonesOverCarsAndSpeakersEnabled", @"PreferHeadphonesOverCarsAndSpeakersEnabled");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"AllowBluetoothAccessoryToRequestAudioRoute", @"AllowBluetoothAccessoryToRequestAudioRoute");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"DuckScalarForVoiceOver", @"DuckScalarForVoiceOver");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"RemoteDeviceIDs", @"RemoteDeviceIDs");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"PopNowPlayingAppStack", @"PopNowPlayingAppStack");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"ActiveAudioRoute", @"ActiveAudioRoute");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CanBeNowPlayingApp", @"CanBeNowPlayingApp");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"AppWantsVolumeChanges", @"AppWantsVolumeChanges");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"PIDToInheritApplicationStateFrom", @"PIDToInheritApplicationStateFrom");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"PickableRoutes", @"PickableRoutes");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"PickedRoute", @"PickedRoute");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CurrentExternalScreen", @"ExternalScreenType");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"HeadphoneVolumeLimit", @"HeadphoneVolumeLimit");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"VibeIntensity", @"VibeIntensity");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CurrentlyActiveCategory", @"CurrentlyActiveCategory");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CurrentlyActiveMode", @"CurrentlyActiveMode");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"ActiveInputRouteForPlayAndRecordNoBluetooth", @"ActiveInputRouteForPlayAndRecordNoBluetooth");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CurrentRouteHasVolumeControl", @"CurrentRouteHasVolumeControl");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"AudioIsPlayingSomewhere", @"SomeClientIsPlaying");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"SomeClientIsPlayingLongFormAudio", @"SomeClientIsPlayingLongFormAudio");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"ActiveClientPIDsThatHideTheSpeechDetectionDevice", @"ActiveClientPIDsThatHideTheSpeechDetectionDevice");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"HeadphoneJackIsConnected", @"HeadphoneJackIsConnected");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"HeadphoneJackHasInput", @"HeadphoneJackHasInput");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"SystemHasAudioInputDevice", @"SystemHasAudioInputDevice");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"SystemHasAudioInputDeviceExcludingBluetooth", @"SystemHasAudioInputDeviceExcludingBluetooth");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"FullMute", @"FullMute");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"IsSomeoneRecording", @"IsSomeoneRecording");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"RecordingClientPIDs", @"RecordingClientPIDs");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"UplinkMute", @"UplinkMute");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"DownlinkMute", @"DownlinkMute");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"ThermalControlInfo", @"ThermalControlInfo");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"VoicePromptStyle", @"VoicePromptStyle");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"NowPlayingAppShouldPlayOnCarPlayConnect", @"NowPlayingAppShouldResumeForCarPlay");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CarPlayIsConnected", @"CarPlayIsConnected");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CarPlayAuxStreamSupport", @"CarPlayAuxStreamSupport");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CarPlaySupportsMixableSiri", @"CarPlaySupportsMixableSiri");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CarPlayIsPlayingLongerDurationSession", @"CarPlayIsPlayingLongerDurationSession");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"NowPlayingAppPID", @"NowPlayingAppPID");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"NowPlayingAppDisplayID", @"NowPlayingAppDisplayID");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CallIsActive", @"PhoneCallExists");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"ActiveCallInfo", @"ActivePhoneCallInfo");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"ShouldIgnorePlayCommandsFromAccessory", @"ShouldIgnorePlayCommandsFromAccessory");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"NowPlayingAppIsPlaying", @"NowPlayingAppIsPlaying");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"NowPlayingAppIsInterrupted", @"NowPlayingAppIsInterrupted");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CurrentVideoStreams", @"CurrentVideoStreams");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"LongFormVideoApps", @"LongFormVideoApps");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"SpeechDetectionDevicePresent", @"SpeechDetectionDevicePresent");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"AvailableVirtualAudioDevices", @"AvailableVirtualAudioDevices");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlerts", @"SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlerts");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"PlayingSessionsDescription", @"PlayingSessionsDescription");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"RecordingSessionsDescription", @"RecordingSessionsDescription");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"WombatEnabled", @"WombatEnabled");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"ActiveNeroVisualStreamInfo", @"ActiveNeroVisualStreamInfo");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"HighestArbitrationPriorityForTipi", @"HighestArbitrationPriorityForTipi");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"SilentModeEnabled", @"SilentModeEnabled");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CallScreeningStatus", @"CallScreeningStatus");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"IsMaximumSpeakerVolumeLimitEnabled", @"IsMaximumSpeakerVolumeLimitEnabled");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"MaximumSpeakerVolumeLimit", @"MaximumSpeakerVolumeLimit");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"DefaultMaximumSpeakerVolumeLimit", @"DefaultMaximumSpeakerVolumeLimit");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"PreferHeadphonesOverCarsAndSpeakersEnabled", @"PreferHeadphonesOverCarsAndSpeakersEnabled");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"AllowBluetoothAccessoryToRequestAudioRoute", @"AllowBluetoothAccessoryToRequestAudioRoute");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"DuckScalarForVoiceOver", @"DuckScalarForVoiceOver");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"RemoteDeviceIDs", @"RemoteDeviceIDs");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"TopOfNowPlayingAppStackDisplayID", @"TopOfNowPlayingAppStackDisplayID");
    v7 = gFigSystemControllerSetPropertyMapping;

    CFDictionarySetValue(v7, @"SubscribeToNotifications", @"SubscribeToNotifications");
  }
}

void sub_1B18DC3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getGEOCountryConfigurationCountryCodeDidChangeNotification()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getGEOCountryConfigurationCountryCodeDidChangeNotificationSymbolLoc_ptr;
  v7 = getGEOCountryConfigurationCountryCodeDidChangeNotificationSymbolLoc_ptr;
  if (!getGEOCountryConfigurationCountryCodeDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = GeoServicesLibrary();
    v5[3] = dlsym(v1, "GEOCountryConfigurationCountryCodeDidChangeNotification");
    getGEOCountryConfigurationCountryCodeDidChangeNotificationSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

void sub_1B18DC624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *MX_GEOCountryConfigurationObserver_GetCurrentCountryCode()
{
  if (mx_geoCountryConfigurationObserver_Initialize_onceToken != -1)
  {
    MX_GEOCountryConfigurationObserver_GetCurrentCountryCode_cold_1();
  }

  result = gGeoCountryConfigurationObserver;
  if (gGeoCountryConfigurationObserver)
  {

    return [result getCurrentCountryCode];
  }

  return result;
}

Class __getGEOCountryConfigurationClass_block_invoke(uint64_t a1)
{
  GeoServicesLibrary();
  result = objc_getClass("GEOCountryConfiguration");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getGEOCountryConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    __getGEOCountryConfigurationClass_block_invoke_cold_1();
    return GeoServicesLibrary();
  }

  return result;
}

uint64_t GeoServicesLibrary()
{
  v0 = GeoServicesLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t GeoServicesLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!GeoServicesLibraryCore_frameworkLibrary)
  {
    GeoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = GeoServicesLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __GeoServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  GeoServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getGEOCountryConfigurationCountryCodeDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = GeoServicesLibrary();
  result = dlsym(v2, "GEOCountryConfigurationCountryCodeDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getGEOCountryConfigurationCountryCodeDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getGEODeviceCountryCodeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = GeoServicesLibrary();
  result = dlsym(v2, "GEODeviceCountryCodeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getGEODeviceCountryCodeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FigRoutingManagerCreateAndActivateAggregateEndpointForLocalPlayback()
{
  v4 = 0;
  FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&v4);
  cf = 0;
  SharedManager = FigRoutingManagerGetSharedManager();
  FigRoutingManagerInternal_CreateAirPlayAggregate(SharedManager, v4, 0, &cf);
  if (cf)
  {
    v1 = FigRoutingManager_iOSActivateEndpoint(cf, v4, 0, 0);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v1;
}

uint64_t FigRoutingManager_RouteAwayFromAirPlayEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = cmsmCopyWirelessPortsArrayForRouteConfiguration(@"Audio/Video", @"Default", 0, 0);
  v6 = v5;
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        v11 = vaeCopyDeviceIdentifierFromVADPort(valuePtr);
        if (FigEndpointUtility_EndpointPredicate_EqualsAudioStreamID() && vaeDoesPortSupportRoutability(valuePtr) && vaeIsPortRoutable(valuePtr))
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  ArrayOfPortsRoutable = vaemMakeArrayOfPortsRoutable(Mutable, 0, a3, a2, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return ArrayOfPortsRoutable;
}

void FigRemoteRoutingContextFactorySetForQueue(const void *a1, NSObject *a2)
{
  if (a1)
  {
    v3 = CFRetain(a1);
  }

  else
  {
    v3 = 0;
  }

  dispatch_queue_set_specific(a2, @"kFigRoutingSessionResilientRemoteCurrentRemoteRoutingContextFactoryKey", v3, FigRemoteRoutingContextFactoryReleaseObject);
}

void FigRemoteRoutingContextFactoryReleaseObject(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void __FigRoutingContextIsSystemContextAllowed_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.avfoundation.allow-system-wide-context", 0);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFBooleanGetTypeID())
      {
        FigRoutingContextIsSystemContextAllowed_isAllowed = CFBooleanGetValue(v3) != 0;
      }

      CFRelease(v3);
    }

    CFRelease(v1);
  }
}

const void *FigRoutingManagerCopyEndpointToAutoConnect()
{
  v0 = FigEndpointManagerCopyMatchingEndpoints();
  v1 = *MEMORY[0x1E6961FD8];
  v2 = FigEndpointManagerCopyMatchingEndpoints();
  v3 = v2;
  if (v2 && CFArrayGetCount(v2) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
    v5 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
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

  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

void FigRoutingManagerProcessEndpointToAutoconnect(const void *a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69618E0];
  if (FigCFEqual())
  {
    v3 = *MEMORY[0x1E69626C0];
    if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(0, 1))
    {
      goto LABEL_20;
    }

    theArray = 0;
    FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointsForContextType(1, &theArray);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v5 = Count;
        v6 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
          if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
          {
            break;
          }

          if (v5 == ++v6)
          {
            goto LABEL_8;
          }
        }

        if (!dword_1EB75DF20)
        {
          goto LABEL_18;
        }

        goto LABEL_50;
      }
    }

LABEL_8:
    v8 = @"to autoconnect for CarPlay, going to autoconnect to it, reset the flag doNotMakeStarkAudioPortRoutable to false";
    goto LABEL_17;
  }

  v9 = *MEMORY[0x1E69618E8];
  if (FigCFEqual())
  {
    v10 = *MEMORY[0x1E69626C8];
    if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(0, 1))
    {
      goto LABEL_20;
    }

    theArray = 0;
    FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointsForContextType(1, &theArray);
    if (theArray)
    {
      v11 = CFArrayGetCount(theArray);
      if (v11 >= 1)
      {
        v12 = v11;
        v13 = 0;
        while (1)
        {
          v14 = CFArrayGetValueAtIndex(theArray, v13);
          if (FigRoutingManagerIsEndpointOfType(v14))
          {
            break;
          }

          if (v12 == ++v13)
          {
            goto LABEL_16;
          }
        }

        if (!dword_1EB75DF20)
        {
          goto LABEL_18;
        }

LABEL_50:
        LODWORD(v44) = 0;
        LOBYTE(v43) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_18;
      }
    }

LABEL_16:
    v8 = @"to autoconnect for Nero, going to autoconnect to it";
LABEL_17:
    FigRoutingManagerLogEndpointID(@"Found an endpoint with name=", a1, v8, 1);
    routingManager_autoconnectEndpoint(a1);
    goto LABEL_18;
  }

  v16 = *MEMORY[0x1E69618D0];
  if (!FigCFEqual())
  {
    goto LABEL_20;
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyActivatedEndpointsForContextType(2, &theArray);
  if (!theArray || (v17 = CFArrayGetCount(theArray), v17 < 1))
  {
LABEL_32:
    v44 = 0;
    FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointsForContextType(2, &v44);
    if (v44 && (v28 = CFArrayGetCount(v44), v28 >= 1))
    {
      v29 = v28;
      v30 = 0;
      v31 = *MEMORY[0x1E6961FD8];
      v32 = *MEMORY[0x1E695E480];
      v33 = *MEMORY[0x1E69626A8];
      v34 = *MEMORY[0x1E695E4D0];
      while (1)
      {
        v35 = CFArrayGetValueAtIndex(v44, v30);
        v43 = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v37)
        {
          v37(CMBaseObject, v31, v32, &v43);
        }

        IsEndpointOfType = FigRoutingManagerIsEndpointOfType(v35);
        v39 = v43;
        if (IsEndpointOfType && v43 == v34)
        {
          break;
        }

        if (v43)
        {
          CFRelease(v43);
        }

        if (v29 == ++v30)
        {
          goto LABEL_44;
        }
      }

      if (dword_1EB75DF20)
      {
        v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v39 = v43;
      }

      if (v39)
      {
        CFRelease(v39);
      }
    }

    else
    {
LABEL_44:
      FigRoutingManagerLogEndpointID(@"Found an endpoint with name=", a1, @"to autoconnect for AirPlay, going to autoconnect to it", 1);
      routingManager_autoconnectEndpoint(a1);
    }

    v27 = v44;
    if (v44)
    {
      goto LABEL_46;
    }

    goto LABEL_18;
  }

  v18 = v17;
  v19 = 0;
  v20 = *MEMORY[0x1E69626A8];
  v21 = *MEMORY[0x1E6961FD8];
  v22 = *MEMORY[0x1E695E480];
  v23 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    v24 = CFArrayGetValueAtIndex(theArray, v19);
    if (FigRoutingManagerIsEndpointOfType(v24))
    {
      break;
    }

LABEL_31:
    if (v18 == ++v19)
    {
      goto LABEL_32;
    }
  }

  cf[0] = 0;
  v25 = FigEndpointGetCMBaseObject();
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v26)
  {
    v26(v25, v21, v22, cf);
  }

  v27 = cf[0];
  if (cf[0] != v23)
  {
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_31;
  }

  if (!v23)
  {
    goto LABEL_18;
  }

LABEL_46:
  CFRelease(v27);
LABEL_18:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_20:
  v15 = *MEMORY[0x1E69E9840];
}

void routingManager_autoconnectEndpoint(const void *a1)
{
  cf = 0;
  v2 = *MEMORY[0x1E69626C0];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    goto LABEL_2;
  }

  v3 = *MEMORY[0x1E69626C8];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    goto LABEL_4;
  }

  v4 = *MEMORY[0x1E69626A8];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    if ((FigEndpointGetSupportedFeatures() & 1) == 0)
    {
LABEL_2:
      FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
      goto LABEL_5;
    }

LABEL_4:
    FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(&cf);
  }

LABEL_5:
  FigRoutingManagerPickEndpointForContext(cf, a1, 0, 0);
  if (cf)
  {
    CFRelease(cf);
  }
}

void routingManager_updateSmartRoutingBackoffTimer(uint64_t a1, uint64_t a2, int a3)
{
  v25[24] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    cf = *MEMORY[0x1E695E4C0];
    v25[0] = cf;
    v23 = 0;
    v4 = *MEMORY[0x1E69621E8];
    v5 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, v4, v5, &v23);
    }

    v22 = 0;
    v8 = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(v8, v4, v5, &v22);
    }

    v10 = FigRoutingManagerCopyBluetoothEndpointAssociatedWithVAEndpoint();
    if (v10)
    {
      v11 = FigEndpointGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(v11, @"SupportsSmartRouting", v5, v25);
      }
    }

    v13 = FigRoutingManagerCopyBluetoothEndpointAssociatedWithVAEndpoint();
    if (v13)
    {
      v14 = FigEndpointGetCMBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(v14, @"SupportsSmartRouting", v5, &cf);
      }
    }

    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v17 = FigCFEqual();
    v18 = *MEMORY[0x1E695E4D0];
    if (v17 && (v19 = *MEMORY[0x1E695E4D0], v20 = FigCFEqual(), a3) && v20)
    {
      FigPredictedRouting_StartTimer(480.0);
    }

    else if (FigCFEqual())
    {
      FigPredictedRouting_StopTimer();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v25[0])
    {
      CFRelease(v25[0]);
      v25[0] = 0;
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v22)
    {
      CFRelease(v22);
      v22 = 0;
    }

    if (v23)
    {
      CFRelease(v23);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void FigRoutingManagerNewWiredPortsAdded(void *a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v62 = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v62);
  v61 = 0;
  if (!v62)
  {
    goto LABEL_80;
  }

  FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(v62, &v61);
  v1 = *MEMORY[0x1E69626C0];
  if (FigRoutingManagerIsEndpointOfType(v61))
  {
    LODWORD(cf) = 0;
    FigRoutingManagerContextUtilities_GetPickingState(v62, &cf);
    CarPlayMainAudioPortForEndpoint = FigRoutingManagerFindCarPlayMainAudioPortForEndpoint(v61);
    if (cf == 4)
    {
      if (!CarPlayMainAudioPortForEndpoint)
      {
        goto LABEL_28;
      }

      FigRoutingManagerStopCarPlayAudioMainPortPublishedCheckTimer();
      v3 = v62;
      v4 = 6;
    }

    else
    {
      if (cf != 8 || !CarPlayMainAudioPortForEndpoint)
      {
LABEL_28:
        FigRoutingManagerContextUtilities_GetPickingState(v62, &cf);
        if (cf == 9)
        {
          v67[0] = 0;
          FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(v62, v61, v67);
          *v63 = 0;
          FigRoutingManagerContextUtilities_GetActivatedEndpointFeatures(v62, v61, v63);
          FigRoutingManager_iOSHandleFigEndpointFeaturesActivation(v61, v63[0], v67[0], v62, 0);
        }

        goto LABEL_76;
      }

      FigRoutingManagerStopCarPlayAudioMainPortPublishedCheckTimer();
      v3 = v62;
      v4 = 9;
    }

    FigRoutingManagerContextUtilities_SetPickingState(v3, v4);
    goto LABEL_28;
  }

  if (MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled())
  {
    v59 = 0;
    cf = 0;
    v58 = 0;
    v5 = CMSMUtility_CopyNonNullCurrentlyActiveCategory();
    v6 = CMSMUtility_CopyNonNullCurrentlyActiveMode();
    v7 = CMSMUtility_CopyCurrentAllowedPortTypes();
    v8 = cmsmCopyQuiesceableWiredPortsForRouteConfiguration(v5, v6, v7, 0);
    v44 = v5;
    v45 = v6;
    v46 = v7;
    v9 = cmsmCopyPickableQuiesceableWiredPortsForRouteConfiguration();
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v11 = [v8 countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v55;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v55 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v54 + 1) + 8 * i);
          if (([v9 containsObject:v15] & 1) == 0)
          {
            [v10 addObject:v15];
          }
        }

        v12 = [v8 countByEnumeratingWithState:&v54 objects:v68 count:16];
      }

      while (v12);
    }

    if ([v10 count] && !vaemIsPersistentRouteActive())
    {
      cmsmUnpickQuiesceableWiredPortsRoutes(v10, 0, v62, 0, 0);
    }

    FigRoutingManagerCopyPickedEndpointForRoutingContext(v62, &cf);
    v16 = *MEMORY[0x1E69626D8];
    if (FigRoutingManagerIsEndpointOfType(cf))
    {
      v17 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        v19(CMBaseObject, 0x1F289D0F0, v17, &v59);
      }

      v20 = FigEndpointGetCMBaseObject();
      v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v21)
      {
        v21(v20, 0x1F289D0D0, v17, &v58);
      }
    }

    else if (dword_1EB75DF20)
    {
      v53 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([v59 BOOLValue] && (objc_msgSend(v58, "BOOLValue") & 1) != 0)
    {
      if (dword_1EB75DF20)
      {
        v53 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_67:
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v44)
      {
        CFRelease(v44);
      }

      if (v45)
      {
        CFRelease(v45);
      }

      if (v46)
      {
        CFRelease(v46);
      }

      goto LABEL_76;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v24 = [a1 countByEnumeratingWithState:&v48 objects:v66 count:16];
    if (!v24)
    {
      goto LABEL_67;
    }

    v25 = v24;
    v26 = *v49;
LABEL_38:
    v27 = 0;
    while (1)
    {
      if (*v49 != v26)
      {
        objc_enumerationMutation(a1);
      }

      v28 = *(*(&v48 + 1) + 8 * v27);
      v29 = [v28 unsignedIntValue];
      if (!vaeIsQuiesceableWiredPort(v29))
      {
        goto LABEL_65;
      }

      if ([v9 containsObject:v28])
      {
        if ([+[MXSessionManager getQuiesceableWiredPortAutoRouteOnConnectPreference:"getQuiesceableWiredPortAutoRouteOnConnectPreference:"]
        {
          if (dword_1EB75DF20)
          {
            v53 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v31 = v53;
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
              *v63 = 136315394;
              *&v63[4] = "FigRoutingManagerNewWiredPortsAdded";
              v64 = 1024;
              v65 = v29;
              LODWORD(v43) = 18;
              v41 = v63;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          vaeMakePortRoutable(v29, 1, 0, v62);
          goto LABEL_65;
        }

        if (dword_1EB75DF20)
        {
          v53 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v37 = v53;
          if (os_log_type_enabled(v36, type))
          {
            v38 = v37;
          }

          else
          {
            v38 = v37 & 0xFFFFFFFE;
          }

          if (v38)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }
      }

      else if (dword_1EB75DF20)
      {
        v53 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v34 = v53;
        if (os_log_type_enabled(v33, type))
        {
          v35 = v34;
        }

        else
        {
          v35 = v34 & 0xFFFFFFFE;
        }

        if (v35)
        {
LABEL_61:
          *v63 = 136315394;
          *&v63[4] = "FigRoutingManagerNewWiredPortsAdded";
          v64 = 1024;
          v65 = v29;
          LODWORD(v43) = 18;
          v41 = v63;
          _os_log_send_and_compose_impl();
        }

LABEL_62:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_65:
      if (v25 == ++v27)
      {
        v25 = [a1 countByEnumeratingWithState:&v48 objects:v66 count:16];
        if (!v25)
        {
          goto LABEL_67;
        }

        goto LABEL_38;
      }
    }
  }

LABEL_76:
  if (v61)
  {
    CFRelease(v61);
    v61 = 0;
  }

  if (v62)
  {
    CFRelease(v62);
  }

LABEL_80:
  v39 = *MEMORY[0x1E69E9840];
}

void FigRoutingManagerRouteToBluetoothDevice(const void *a1, uint64_t a2)
{
  theDict[19] = *MEMORY[0x1E69E9840];
  IsSystemAudioRouteAirPlayLowLatency = FigRoutingManagerUtilities_IsSystemAudioRouteAirPlayLowLatency();
  theDict[0] = 0;
  FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpointInfo(a1, theDict);
  if (theDict[0])
  {
    Value = CFDictionaryGetValue(theDict[0], @"CurrentlyActivatingEndpointsInfo_ClientRoutingContextUUID");
    if (Value)
    {
      v5 = CFRetain(Value);
    }

    else
    {
      v5 = 0;
    }

    v7 = CFDictionaryGetValue(theDict[0], @"CurrentlyActivatingEndpointsInfo_ClientRouteChangeOptions");
    if (v7)
    {
      v29 = CFRetain(v7);
    }

    else
    {
      v29 = 0;
    }

    v8 = CFDictionaryGetValue(theDict[0], @"CurrentlyActivatingEndpointsInfo_InternalRouteChangeOptions");
    if (v8)
    {
      v6 = CFRetain(v8);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v29 = 0;
    v5 = 0;
  }

  cf = 0;
  v9 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(CMBaseObject, *MEMORY[0x1E69620F8], v9, &cf);
  }

  allocator = v9;
  IsContextSystemMusicAndIndependent = FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(v5);
  if (IsContextSystemMusicAndIndependent)
  {
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigRoutingContextUtilities_SetLeaderToSystemAudioContext(v5, @"configUpdateReasonEndedSuccess");
  }

  v14 = FigRoutingManagerCopyEndpointWithDeviceID(cf, 0, *MEMORY[0x1E69618F8], 0);
  v15 = v14;
  if (v14)
  {
    v26 = v6;
    EndpointActivateOptions = FigRoutingManagerCreateEndpointActivateOptions(v14, a1, v29);
    FigRoutingManagerGetFigEndpointFeatures(v15, a1);
    v25 = EndpointActivateOptions;
    FigEndpointActivate();
    v17 = CMSMUtility_CopyCurrentRouteIdentifiers();
    v18 = FigRoutingManagerCopyEndpointsFromRouteIdentifiers(v17, a1);
    v19 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v18, 0);
    if (theDict[0])
    {
      FigRoutingManagerContextUtilities_SetPickedEndpoints(a1, v18, @"configUpdateReasonEndedSuccess", v29, v19);
      if (!FigRoutingContextUtilities_DoesArrayOfEndpointsContainEndpoint(v18, a2))
      {
        FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a1, a2, @"routeChangeEndedSuccess");
      }
    }

    else
    {
      if (dword_1EB75DF20)
      {
        v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerContextUtilities_SetPickedEndpoints(a1, v18, @"configUpdateReasonEndedSuccess", v29, v19);
    }

    FigRoutingManagerContextUtilities_SetPickingState(a1, 0);
    if (v19)
    {
      CFRelease(v19);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    v6 = v26;
    if (v25)
    {
      CFRelease(v25);
    }
  }

  if (IsContextSystemMusicAndIndependent)
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"initiator", @"SelectRouteInitiator_RouteToBluetoothDevice");
    if (IsSystemAudioRouteAirPlayLowLatency)
    {
      v22 = FigRoutingManagerCopyLocalAirPlayEndpoint();
      ArrayFromEndpoint = FigRoutingManagerCreateArrayFromEndpoint(v22);
      routingManager_processPickEndpoints(ArrayFromEndpoint, v5, 0, Mutable, 0);
      if (ArrayFromEndpoint)
      {
        CFRelease(ArrayFromEndpoint);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }

    else if (!FigRoutingManagerContextUtilities_IsContextSystemAudio(v5))
    {
      routingManager_processPickEndpoints(0, v5, 0, Mutable, 0);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (theDict[0])
  {
    CFRelease(theDict[0]);
  }

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t routingManager_processPickEndpoints(const __CFArray *a1, const void *a2, const __CFDictionary *a3, const void *a4, int a5)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    FigRoutingManagerCreateAggregateForContextIfNecessary(a2, a1);
    v75 = 0;
    FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a2, &v75);
    v19 = FigRoutingManagerUtilities_CopyEndpointsToAdd(a2, a1);
    theArray = FigRoutingManagerUtilities_CopyEndpointsToRemove(a2, a1);
    if (v19)
    {
      if (CFArrayGetCount(v19) >= 1)
      {
        FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoints(a2, v75, v19, a3, a4);
      }

      v20 = v75;
      if (!v75)
      {
        v17 = 4294954296;
        v29 = theArray;
LABEL_115:
        CFRelease(v19);
LABEL_116:
        if (v29)
        {
          CFRelease(v29);
        }

        v28 = v75;
        if (v75)
        {
          goto LABEL_119;
        }

        goto LABEL_120;
      }

      v17 = FigRoutingManagerContextUtilities_SetPickingState(a2, 4);
      if (CFArrayGetCount(v19))
      {
        v66 = 0;
        v21 = 0;
        v22 = 1;
        if (!a1)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v20 = v75;
      if (!v75)
      {
        v17 = 4294954296;
        v29 = theArray;
        goto LABEL_116;
      }

      v17 = FigRoutingManagerContextUtilities_SetPickingState(a2, 4);
    }

    if (theArray && CFArrayGetCount(theArray) >= 1)
    {
      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, a3, @"configUpdateReasonStarted");
      v22 = 0;
      v66 = 1;
    }

    else
    {
      v66 = 0;
      v22 = 1;
    }

    v21 = 1;
    if (!a1)
    {
LABEL_43:
      if (dword_1EB75DF20)
      {
        LODWORD(v79) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v32 = v79;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
        {
          v33 = v32;
        }

        else
        {
          v33 = v32 & 0xFFFFFFFE;
        }

        if (v33)
        {
          v80 = 136315138;
          v81 = "routingManager_processPickAirPlayEndpoints";
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerRemoveAllSubEndpointsFromAggregate(v20, a2, a3, a4, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
      CMSMVAUtility_DestroyMusicVADIfNeeded(a2);
      FigRoutingManagerPostProcessPickEndpoint(0, a2);
      LOBYTE(cf[0]) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      v61 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedSuccess;
      if (!LOBYTE(cf[0]))
      {
        v61 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedBottomUpRouteChange;
      }

      FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, 0, *v61, a3, 0);
      v29 = theArray;
      if (!v22)
      {
        goto LABEL_112;
      }

      goto LABEL_110;
    }

    if (!v19)
    {
      v64 = 1;
      v30 = 0;
LABEL_51:
      v29 = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      else
      {
        Count = 0;
      }

      v34 = MEMORY[0x1E69620F8];
      v35 = MEMORY[0x1E69621E8];
      v65 = v22;
      if (v30 >= 1)
      {
        v36 = 0;
        v68 = *MEMORY[0x1E69620F8];
        v70 = *MEMORY[0x1E695E480];
        v67 = *MEMORY[0x1E69621E8];
        do
        {
          v37 = v19;
          ValueAtIndex = CFArrayGetValueAtIndex(v19, v36);
          if (FigRoutingManagerIsEndpointActivated(ValueAtIndex))
          {
            v39 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v39)
            {
              v39(ValueAtIndex, 0);
            }

            FigEndpointDeactivate();
          }

          FigEndpointAggregateGetClassID();
          if (CMBaseObjectIsMemberOfClass())
          {
            v40 = v20;
          }

          else
          {
            v40 = 0;
          }

          v17 = FigRoutingManagerAddEndpointToAggregate(v40, ValueAtIndex, a2, a3, a4, FigRoutingManagerAggregateAddEndpointCompletionCallback);
          if (!v17)
          {
            v79 = 0;
            CMBaseObject = FigEndpointGetCMBaseObject();
            v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v42)
            {
              v42(CMBaseObject, v68, v70, &v79);
            }

            *type = 0;
            v43 = FigEndpointGetCMBaseObject();
            v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v44)
            {
              v44(v43, v67, v70, type);
            }

            if (dword_1EB75DF20)
            {
              v77 = 0;
              v76 = OS_LOG_TYPE_DEFAULT;
              v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v46 = v77;
              if (os_log_type_enabled(v45, v76))
              {
                v47 = v46;
              }

              else
              {
                v47 = v46 & 0xFFFFFFFE;
              }

              if (v47)
              {
                v80 = 136315650;
                v81 = "routingManager_processPickAirPlayEndpoints";
                v82 = 2114;
                v83 = v79;
                v84 = 2114;
                v85 = *type;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v29 = theArray;
            }

            if (*type)
            {
              CFRelease(*type);
              *type = 0;
            }

            if (v79)
            {
              CFRelease(v79);
            }
          }

          ++v36;
          v19 = v37;
        }

        while (v30 != v36);
        v22 = v65;
        v35 = MEMORY[0x1E69621E8];
        v34 = MEMORY[0x1E69620F8];
      }

      if (Count >= 1)
      {
        v48 = v19;
        v49 = 0;
        v50 = *MEMORY[0x1E695E480];
        v51 = *v35;
        v69 = *v35;
        v71 = *v34;
        do
        {
          v52 = CFArrayGetValueAtIndex(v29, v49);
          FigEndpointAggregateGetClassID();
          if (CMBaseObjectIsMemberOfClass())
          {
            v53 = v20;
          }

          else
          {
            v53 = 0;
          }

          v17 = FigRoutingManagerRemoveEndpointFromAggregate(v53, v52, a2, a3, a4, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
          if (!v17)
          {
            v79 = 0;
            v54 = FigEndpointGetCMBaseObject();
            v55 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v55)
            {
              v55(v54, v71, v50, &v79);
            }

            *type = 0;
            v56 = FigEndpointGetCMBaseObject();
            v57 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v57)
            {
              v57(v56, v69, v50, type);
            }

            if (dword_1EB75DF20)
            {
              v77 = 0;
              v76 = OS_LOG_TYPE_DEFAULT;
              v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v59 = v77;
              if (os_log_type_enabled(v58, v76))
              {
                v60 = v59;
              }

              else
              {
                v60 = v59 & 0xFFFFFFFE;
              }

              if (v60)
              {
                v80 = 136315650;
                v81 = "routingManager_processPickAirPlayEndpoints";
                v82 = 2114;
                v83 = v79;
                v84 = 2114;
                v85 = *type;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v29 = theArray;
            }

            if (*type)
            {
              CFRelease(*type);
              *type = 0;
            }

            if (v79)
            {
              CFRelease(v79);
            }
          }

          ++v49;
        }

        while (Count != v49);
        v19 = v48;
        v22 = v65;
      }

      v21 = v64;
      if (!v22)
      {
        goto LABEL_112;
      }

LABEL_110:
      if (v21)
      {
        FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, a3, a4);
        goto LABEL_114;
      }

LABEL_112:
      if ((v66 & v21) == 1)
      {
        FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, a3, @"configUpdateReasonEndedSuccess");
      }

LABEL_114:
      if (!v19)
      {
        goto LABEL_116;
      }

      goto LABEL_115;
    }

LABEL_42:
    v64 = v21;
    v30 = CFArrayGetCount(v19);
    goto LABEL_51;
  }

  v8 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionarySetValue(MutableCopy, @"RouteChangeOptionKey_IsAddOperation", *MEMORY[0x1E695E4D0]);
  FigRoutingManagerContextUtilities_SetPickingState(a2, 4);
  if (a1)
  {
    v10 = CFArrayGetCount(a1);
    v11 = v10 - 1;
    if (v10 >= 1)
    {
      v12 = v10;
      v13 = 0;
      v14 = *MEMORY[0x1E69626B8];
      v15 = 1;
      do
      {
        while (1)
        {
          v16 = CFArrayGetValueAtIndex(a1, v13);
          if (!FigRoutingManagerIsEndpointOfType(v16))
          {
            break;
          }

          FigRoutingManager_iOSActivateEndpoint(v16, a2, a3, MutableCopy);
          v15 = 0;
          v17 = 0;
          if (v11 == v13++)
          {
            goto LABEL_31;
          }
        }

        ++v13;
      }

      while (v12 != v13);
      if ((v15 & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  FigRoutingManagerContextUtilities_SetPickingState(a2, 6);
  v23 = CMSMVAUtility_AggregateEndpoints(a1, 1, a2);
  if (!v23)
  {
    cf[0] = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a2, 0, cf);
    v25 = *MEMORY[0x1E69626A8];
    if (FigRoutingManagerIsEndpointOfType(cf[0]))
    {
      FigRoutingManagerDeactivateEndpointFromPickedContexts(cf[0], v26, 1u, @"configUpdateReasonEndedSuccess");
    }

    v27 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(a1, 0);
    FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, a1, @"configUpdateReasonEndedSuccess", a3, v27);
    if (v27)
    {
      CFRelease(v27);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

LABEL_30:
    v17 = 0;
    goto LABEL_31;
  }

  v17 = v23;
  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(a2, cf);
  v24 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(cf[0], 0);
  FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, cf[0], @"configUpdateReasonEndedFailed", a3, v24);
  FigRoutingManagerContextUtilities_SetPickingState(a2, 0);
  if (v24)
  {
    CFRelease(v24);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_31:
  if (MutableCopy)
  {
    v28 = MutableCopy;
LABEL_119:
    CFRelease(v28);
  }

LABEL_120:
  v62 = *MEMORY[0x1E69E9840];
  return v17;
}

void FigRoutingManagerEnableBluetoothSharingSession(const void *a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    v5 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      return;
    }

    goto LABEL_11;
  }

  Count = CFArrayGetCount(theArray);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      LODWORD(cf) = 0;
      if (CMSMVAUtility_IsA2DPPortAvailableForEndpoint(ValueAtIndex, &cf))
      {
        SInt64 = FigCFNumberCreateSInt64();
        CFArrayAppendValue(Mutable, SInt64);
        if (SInt64)
        {
          CFRelease(SInt64);
        }
      }
    }
  }

  if (Mutable)
  {
LABEL_11:
    v10 = CFArrayGetCount(Mutable);
    if (v10 > 0)
    {
      if (v10 == 1)
      {
        cf = 0;
        FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a1, 0, &cf);
        if (FigRoutingManagerIsEndpointBluetoothShareable(cf))
        {
          value = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v12)
          {
            v12(CMBaseObject, 0x1F289CDB0, v5, &value);
            if (value)
            {
              CFArrayAppendValue(Mutable, value);
              if (value)
              {
                CFRelease(value);
              }
            }
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      CMSMVAUtility_AggregatePorts(Mutable, 1, a1);
      v13 = routingManager_copyPickedEndpointsFromCurrentRoutesInfo(a1);
      v14 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v13, 0);
      FigRoutingManagerContextUtilities_SetPickedEndpoints(a1, v13, @"configUpdateReasonEndedSuccess", 0, v14);
      if (v14)
      {
        CFRelease(v14);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    CFRelease(Mutable);
  }
}

__CFArray *routingManager_copyPickedEndpointsFromCurrentRoutesInfo(uint64_t a1)
{
  v2 = CMSMUtility_CopyCurrentRouteIdentifiers();
  NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
  if (!NumberOfCurrentOutputPorts)
  {
    Mutable = 0;
    if (!v2)
    {
      return Mutable;
    }

    goto LABEL_21;
  }

  v4 = NumberOfCurrentOutputPorts;
  v18 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6 = 0;
  v7 = *MEMORY[0x1E69618F8];
  v8 = *MEMORY[0x1E69618D0];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
    v10 = FigRoutingManagerCopyEndpointWithDeviceID(ValueAtIndex, 0, v7, 0);
    cf = 0;
    if (v10)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(CMBaseObject, 0x1F289CEF0, v18, &cf);
      }
    }

    PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(cf);
    if (PortFromCFNumber == 1885433971 || PortFromCFNumber == 1885433953)
    {
      v15 = FigRoutingManagerCopyEndpointWithDeviceID(ValueAtIndex, 1, v8, a1);
      if (v15)
      {
        v16 = v15;
        CFArrayAppendValue(Mutable, v15);
        CFRelease(v16);
      }
    }

    else if (v10)
    {
      CFArrayAppendValue(Mutable, v10);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v10)
    {
      CFRelease(v10);
    }

    ++v6;
  }

  while (v4 != v6);
  if (v2)
  {
LABEL_21:
    CFRelease(v2);
  }

  return Mutable;
}

void FigRoutingManagerProcessCustomizedRouting(const __CFArray *a1, const void *a2)
{
  v129 = *MEMORY[0x1E69E9840];
  v3 = &qword_1EB75D000;
  if (dword_1EB75DF20)
  {
    LODWORD(cf) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = CMSMUtility_CopyCurrentOutputPorts();
  if (v5)
  {
    v6 = v5;
    if (CFArrayGetCount(v5) >= 1)
    {
      v7 = 0;
      do
      {
        FigCFArrayGetValueAtIndex();
        SInt32 = FigCFNumberGetSInt32();
        v9 = vaeCopyNameForPort(SInt32);
        if (v9)
        {
          CFRelease(v9);
        }

        ++v7;
      }

      while (v7 < CFArrayGetCount(v6));
    }

    CFRelease(v6);
  }

  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v10 = 0;
    v95 = *MEMORY[0x1E69626C0];
    v94 = a1;
    do
    {
      *type = CFArrayGetValueAtIndex(a1, v10);
      v11 = [*type intValue];
      v12 = v11;
      IsPortOfTypeCarPlayMainAudio = CMSMVAUtility_IsPortOfTypeCarPlayMainAudio(v11);
      v97 = IsPortOfTypeCarPlayMainAudio;
      v107 = vaeCopyNameForPort(v12);
      VADEndpointTypeForPort = vaeGetVADEndpointTypeForPort(v12);
      v106 = vaeCopyVADEndpointTypeForPort(v12);
      v14 = vaeCopyDeviceIdentifierFromVADPort(v12);
      v15 = MXCFCopyPrefixSubstring(v14, 17);
      v102 = v12;
      v16 = CMSMVAUtility_CopyBluetoothDeviceModelID(v12);
      if (dword_1EB75DF20)
      {
        LODWORD(cf) = 0;
        v113[0] = OS_LOG_TYPE_DEFAULT;
        v17 = v3[483];
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v19 = cf;
        if (os_log_type_enabled(v18, v113[0]))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v115 = 136316930;
          v116 = "FigRoutingManagerProcessCustomizedRouting";
          v117 = 2048;
          *v118 = v10;
          *&v118[8] = 2114;
          *&v118[10] = v107;
          v119 = 2114;
          v120 = v106;
          v121 = 2114;
          v122 = v14;
          v123 = 2114;
          v124 = v15;
          v125 = 1024;
          v126 = IsPortOfTypeCarPlayMainAudio;
          v127 = 2114;
          *v128 = v16;
          LODWORD(v91) = 78;
          v89 = &v115;
          _os_log_send_and_compose_impl();
        }

        v21 = v3[483];
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v99 = IsPortOfTypeCarPlayMainAudio;
      v104 = v10;
      v105 = v14;
      v103 = v15;
      v22 = v3;
      if (v16)
      {
        CFRelease(v16);
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
      v24 = vaeCopyNameForPort([ValueAtIndex intValue]);
      v25 = vaeGetVADEndpointTypeForPort([ValueAtIndex intValue]);
      v26 = vaeCopyVADEndpointTypeForPort([ValueAtIndex intValue]);
      v27 = vaeCopyDeviceIdentifierFromVADPort([ValueAtIndex intValue]);
      cf = 0;
      v28 = vaemCopyEndpointForPort([ValueAtIndex intValue]);
      if (FigRoutingManagerIsEndpointOfType(v28))
      {
        cf = MXCFCopyPrefixSubstring(v27, 17);
      }

      else
      {
        CMSMUtility_CreateTokensFromDeviceUID(v27, &cf, 0);
      }

      *v113 = 0;
      v100 = [+[MXSessionManager isCurrentRouteHeadphoneAndInEar:v89], "isCurrentRouteHeadphoneAndInEar:", v113];
      v30 = v25 == 1701868400 || v25 == 1701869160;
      if (*v113)
      {
        v31 = vaeCopyNameForPort(*v113);
      }

      else
      {
        v31 = 0;
      }

      if (dword_1EB75DF20)
      {
        v112 = 0;
        v111 = OS_LOG_TYPE_DEFAULT;
        v32 = v22[483];
        v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v34 = v112;
        if (os_log_type_enabled(v33, v111))
        {
          v35 = v34;
        }

        else
        {
          v35 = v34 & 0xFFFFFFFE;
        }

        if (v35)
        {
          v115 = 136317186;
          v116 = "routingManager_shouldUseCustomizedRouting";
          v117 = 2114;
          *v118 = v24;
          *&v118[8] = 2114;
          *&v118[10] = v26;
          v119 = 2114;
          v120 = v27;
          v121 = 2114;
          v122 = cf;
          v123 = 2114;
          v124 = v31;
          v125 = 1026;
          v126 = v100;
          v127 = 1026;
          *v128 = v30;
          *&v128[4] = 2114;
          *&v128[6] = v26;
          LODWORD(v91) = 84;
          v89 = &v115;
          _os_log_send_and_compose_impl();
        }

        v36 = v22[483];
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        a1 = v94;
      }

      if (!MX_FeatureFlags_IsCustomizedRoutingWithCarsAndSpeakersEnabled())
      {
        if (!MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled())
        {
          v101 = 0;
          v30 = 0;
          if (!v24)
          {
            goto LABEL_45;
          }

LABEL_44:
          CFRelease(v24);
          goto LABEL_45;
        }

        v30 = v100 & v30;
      }

      v101 = *v113;
      if (v24)
      {
        goto LABEL_44;
      }

LABEL_45:
      if (v26)
      {
        CFRelease(v26);
      }

      v3 = v22;
      if (v27)
      {
        CFRelease(v27);
      }

      v37 = v105;
      v38 = v107;
      if (cf)
      {
        CFRelease(cf);
      }

      if (v31)
      {
        CFRelease(v31);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      if (dword_1EB75DF20)
      {
        v112 = 0;
        v111 = OS_LOG_TYPE_DEFAULT;
        v39 = v22[483];
        v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v41 = v112;
        if (os_log_type_enabled(v40, v111))
        {
          v42 = v41;
        }

        else
        {
          v42 = v41 & 0xFFFFFFFE;
        }

        if (v42)
        {
          v43 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v30];
          v115 = 136315394;
          v116 = "routingManager_shouldUseCustomizedRouting";
          v117 = 2114;
          *v118 = v43;
          LODWORD(v91) = 22;
          v89 = &v115;
          _os_log_send_and_compose_impl();
        }

        v44 = v22[483];
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v30)
      {
        CMSMVAUtility_LogPartnerPorts(v101);
        if (!CMSMVAUtility_IsPortOfTypeBluetooth(v102))
        {
          goto LABEL_102;
        }

        v45 = vaeCopyDeviceIdentifierFromVADPort(v102);
        v46 = MXCFCopyPrefixSubstring(v45, 17);
        if (NSClassFromString(&cfstr_Crpairedvehicl.isa))
        {
          gotLoadHelper_x8__OBJC_CLASS___CRPairedVehicleManager(v47);
          v49 = objc_alloc_init(*(v48 + 2432));
          v50 = [v49 vehicleForBluetoothAddress:v46];
          if (v50)
          {
            if (dword_1EB75DF20)
            {
              LODWORD(cf) = 0;
              v113[0] = OS_LOG_TYPE_DEFAULT;
              v51 = v22[483];
              v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v53 = cf;
              if (os_log_type_enabled(v52, v113[0]))
              {
                v54 = v53;
              }

              else
              {
                v54 = v53 & 0xFFFFFFFE;
              }

              if (v54)
              {
                v55 = [v50 vehicleName];
                v56 = [v50 identifier];
                v115 = 136315906;
                v116 = "routingManager_isBluetoothPortPairedToCarPlay";
                v117 = 2114;
                *v118 = v46;
                *&v118[8] = 2114;
                *&v118[10] = v55;
                v119 = 2114;
                v120 = v56;
                LODWORD(v91) = 42;
                v89 = &v115;
                _os_log_send_and_compose_impl();
              }

              v68 = v22[483];
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              a1 = v94;
            }
          }

          else if (dword_1EB75DF20)
          {
            LODWORD(cf) = 0;
            v113[0] = OS_LOG_TYPE_DEFAULT;
            v63 = v22[483];
            v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v65 = cf;
            if (os_log_type_enabled(v64, v113[0]))
            {
              v66 = v65;
            }

            else
            {
              v66 = v65 & 0xFFFFFFFE;
            }

            if (v66)
            {
              v115 = 136315394;
              v116 = "routingManager_isBluetoothPortPairedToCarPlay";
              v117 = 2114;
              *v118 = v46;
              LODWORD(v91) = 22;
              v89 = &v115;
              _os_log_send_and_compose_impl();
            }

            v70 = v22[483];
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v71 = [v50 isPaired];

          v67 = v71 ^ 1;
          v37 = v105;
          v38 = v107;
        }

        else if (dword_1EB75DF20)
        {
          LODWORD(cf) = 0;
          v113[0] = OS_LOG_TYPE_DEFAULT;
          v59 = v22[483];
          v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v61 = cf;
          if (os_log_type_enabled(v60, v113[0]))
          {
            v62 = v61;
          }

          else
          {
            v62 = v61 & 0xFFFFFFFE;
          }

          if (v62)
          {
            v115 = 136315138;
            v116 = "routingManager_isBluetoothPortPairedToCarPlay";
            LODWORD(v91) = 12;
            v89 = &v115;
            _os_log_send_and_compose_impl();
          }

          v69 = v22[483];
          v67 = 1;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          v67 = 1;
        }

        if (v45)
        {
          CFRelease(v45);
        }

        if (v46)
        {
          CFRelease(v46);
        }

        if ((v67 & 1) == 0)
        {
          if (dword_1EB75DF20)
          {
            LODWORD(cf) = 0;
            v113[0] = OS_LOG_TYPE_DEFAULT;
            v77 = v22[483];
            v78 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v79 = cf;
            if (os_log_type_enabled(v78, v113[0]))
            {
              v80 = v79;
            }

            else
            {
              v80 = v79 & 0xFFFFFFFE;
            }

            if (v80)
            {
              v115 = 136315650;
              v116 = "FigRoutingManagerProcessCustomizedRouting";
              v117 = 1024;
              *v118 = v102;
              *&v118[4] = 2114;
              *&v118[6] = v38;
              LODWORD(v91) = 28;
              v89 = &v115;
              _os_log_send_and_compose_impl();
            }

            v85 = v22[483];
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else
        {
LABEL_102:
          v72 = [MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled:v89];
          if (dword_1EB75DF20)
          {
            LODWORD(cf) = 0;
            v113[0] = OS_LOG_TYPE_DEFAULT;
            v73 = v22[483];
            v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v75 = cf;
            if (os_log_type_enabled(v74, v113[0]))
            {
              v76 = v75;
            }

            else
            {
              v76 = v75 & 0xFFFFFFFE;
            }

            if (v76)
            {
              v115 = 136315394;
              v116 = "FigRoutingManagerProcessCustomizedRouting";
              v117 = 1024;
              *v118 = v72;
              LODWORD(v92) = 18;
              v90 = &v115;
              _os_log_send_and_compose_impl();
            }

            v81 = v22[483];
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v82 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v82 setValue:v103 forKey:@"PortMacAddress"];
          [v82 setValue:v37 forKey:@"PortDeviceIdentifier"];
          [v82 setValue:v38 forKey:@"PortName"];
          [v82 setValue:*type forKey:@"PortID"];
          [v82 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", VADEndpointTypeForPort), @"PortType"}];
          [v82 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", v101), @"OldPort"}];
          [v82 setValue:a2 forKey:@"RoutingContextUUID"];
          if (v72)
          {
            if ([+[MXSessionManager isCurrentRouteHeadphoneAndInEar:"isCurrentRouteHeadphoneAndInEar:"]
            {
              if (v99)
              {
                CMSMVAUtility_RouteDefaultVADToCarPlayIfNecessary(a1, 2);
              }

              else
              {
                CMSMVAUtility_MakeNewlyConnectedWirelessPortsRoutableForEndpoint(a1, 0, a2, 1);
              }
            }

            v86 = CFArrayCreate(0, type, 1, MEMORY[0x1E695E9C0]);
            [v82 setValue:v86 forKey:@"WirelessPorts"];
            if (v86)
            {
              CFRelease(v86);
            }

            v87 = [MX_BannerManager sharedInstance:v90];
            v108[0] = MEMORY[0x1E69E9820];
            v108[1] = 3221225472;
            v108[2] = __FigRoutingManagerProcessCustomizedRouting_block_invoke_72;
            v108[3] = &unk_1E7AEB5C8;
            v109 = v97;
            v108[4] = v82;
            [(MX_BannerManager *)v87 promptUserResponseForRoute:v82 connectHandler:v108];
          }

          else
          {
            if (v99)
            {
              CMSMVAUtility_RouteDefaultVADToCarPlayIfNecessary(a1, 1);
            }

            else
            {
              CMSMVAUtility_MakeNewlyConnectedWirelessPortsRoutableForEndpoint(a1, 0, a2, 0);
              v83 = routingManager_copyPickedEndpointsFromCurrentRoutesInfo(a2);
              v84 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v83, 0);
              FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, v83, @"configUpdateReasonEndedSuccess", 0, v84);
              if (v84)
              {
                CFRelease(v84);
              }

              if (v83)
              {
                CFRelease(v83);
              }
            }

            [+[MX_BannerManager promptUserResponseForUndoRoute:v90], "promptUserResponseForUndoRoute:undoHandler:", v82, &__block_literal_global_42];
          }
        }
      }

      else if (v99)
      {
        CMSMVAUtility_RouteDefaultVADToCarPlayIfNecessary(a1, 1);
      }

      else
      {
        CMSMVAUtility_MakeNewlyConnectedWirelessPortsRoutableForEndpoint(a1, 0, a2, 0);
        v57 = routingManager_copyPickedEndpointsFromCurrentRoutesInfo(a2);
        v58 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v57, 0);
        FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, v57, @"configUpdateReasonEndedSuccess", 0, v58);
        if (v58)
        {
          CFRelease(v58);
        }

        if (v57)
        {
          CFRelease(v57);
        }
      }

      if (v38)
      {
        CFRelease(v38);
      }

      if (v106)
      {
        CFRelease(v106);
      }

      if (v37)
      {
        CFRelease(v37);
      }

      if (v103)
      {
        CFRelease(v103);
      }

      v10 = v104 + 1;
    }

    while (Count != v104 + 1);
  }

  v88 = *MEMORY[0x1E69E9840];
}

void __FigRoutingManagerProcessCustomizedRouting_block_invoke(int a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v5 = MXGetSerialQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FigRoutingManagerProcessCustomizedRouting_block_invoke_2;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = cf;
  v6[5] = a3;
  MXDispatchAsync("FigRoutingManagerProcessCustomizedRouting_block_invoke", "FigRoutingManager_iOS.m", 1301, 0, 0, v5, v6);
}

void __FigRoutingManagerProcessCustomizedRouting_block_invoke_2(uint64_t a1)
{
  cf[23] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = dword_1EB75DF20 == 0;
  }

  if (!v3)
  {
    LODWORD(cf[0]) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      v8 = *MEMORY[0x1E695E480];
      v18 = *MEMORY[0x1E69621E8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v7);
        cf[0] = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v11)
        {
          v11(CMBaseObject, 0x1F289CDB0, v8, cf);
        }

        if (cf[0])
        {
          CMSMVAUtility_GetPortFromCFNumber(cf[0]);
          if (cf[0])
          {
            CFRelease(cf[0]);
            cf[0] = 0;
          }
        }

        *type = 0;
        v12 = FigEndpointGetCMBaseObject();
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v13)
        {
          v13(v12, v18, v8, type);
        }

        FigRoutingManager_iOSAddEndpointToContext(*(a1 + 40), ValueAtIndex, 0);
        if (dword_1EB75DF20)
        {
          v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (*type)
        {
          CFRelease(*type);
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t FigRoutingManager_iOSAddEndpointToContext(const void *a1, const void *a2, CFDictionaryRef theDict)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v3 = 4294954296;
  if (!a1 || !a2)
  {
    goto LABEL_155;
  }

  v6 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(theDict);
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_IsAddOperation", *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_UserPickedRoute", v9);
  IsMandrakeEverywhereEnabled = MX_FeatureFlags_IsMandrakeEverywhereEnabled();
  v11 = MEMORY[0x1E695E4C0];
  if (IsMandrakeEverywhereEnabled || MX_FeatureFlags_IsMandrakeEverywhereEnabled())
  {
    Value = FigCFDictionaryGetValue();
    v13 = *v11;
    if (Value)
    {
      v14 = Value;
    }

    else
    {
      v14 = v13;
    }

    CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_IsPredictedRouteOperation", v14);
  }

  else
  {
    v13 = *v11;
  }

  FigRoutingManagerLogEndpointID(@"Adding endpoint=", a2, 0, 1);
  v82 = v13;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v16(CMBaseObject, *MEMORY[0x1E6962190], v7, &v82);
  }

  v81 = v13;
  v17 = FigEndpointGetCMBaseObject();
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v18)
  {
    v18(v17, *MEMORY[0x1E6962110], v7, &v81);
  }

  v80 = 0;
  ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (ContextType == 1)
  {
    if (routingManager_doesEndpointRepresentBluetoothRoute(a2) && routingManager_isSystemMusicOnlyRoutedToLocalHomeTheaterEndpoint())
    {
      if (dword_1EB75DF20)
      {
        LODWORD(v89) = 0;
        v88[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v27 = v89;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v88[0]))
        {
          v28 = v27;
        }

        else
        {
          v28 = v27 & 0xFFFFFFFE;
        }

        if (v28)
        {
          v90 = 136315395;
          v91 = "routingManager_validateAndCopyLeaderContextForAddingEndpoint";
          v92 = 2113;
          v93 = a1;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      cf[0] = 0;
      FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(cf);
      FigRoutingContextUtilities_SetLeaderToSystemAudioContext(cf[0], 0);
      FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v80);
      v45 = cf[0];
      if (cf[0])
      {
        goto LABEL_99;
      }
    }

    goto LABEL_100;
  }

  if (ContextType != 4)
  {
    if (ContextType != 3)
    {
      goto LABEL_100;
    }

    if (!FigRoutingManagerIsEndpointWHAGroupable(a2))
    {
      if (FigRoutingContextUtilities_IsFollowingAnotherContext(a1))
      {
        if (dword_1EB75DF20)
        {
          LODWORD(v89) = 0;
          v88[0] = OS_LOG_TYPE_DEFAULT;
          v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v30 = v89;
          if (os_log_type_enabled(v29, v88[0]))
          {
            v31 = v30;
          }

          else
          {
            v31 = v30 & 0xFFFFFFFE;
          }

          if (v31)
          {
            v90 = 136315395;
            v91 = "routingManager_validateAndCopyLeaderContextForAddingEndpoint";
            v92 = 2113;
            v93 = a1;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingContextUtilities_CopyLeaderUUIDForContext(a1, &v80);
      }

      else
      {
        v38 = *MEMORY[0x1E69626B8];
        if (!FigRoutingManagerIsEndpointOfType(a2))
        {
          goto LABEL_62;
        }

        cf[0] = v13;
        v39 = *MEMORY[0x1E6962130];
        v40 = FigEndpointGetCMBaseObject();
        CMBaseObjectCopyProperty(v40, v39, v7, cf);
        v41 = cf[0];
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (v41 == v13)
        {
          if (dword_1EB75DF20)
          {
            LODWORD(v89) = 0;
            v88[0] = OS_LOG_TYPE_DEFAULT;
            v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v50 = v89;
            if (os_log_type_enabled(v49, v88[0]))
            {
              v51 = v50;
            }

            else
            {
              v51 = v50 & 0xFFFFFFFE;
            }

            if (v51)
            {
              v90 = 136315138;
              v91 = "routingManager_validateAndCopyLeaderContextForAddingEndpoint";
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else
        {
LABEL_62:
          if (dword_1EB75DF20)
          {
            LODWORD(v89) = 0;
            v88[0] = OS_LOG_TYPE_DEFAULT;
            v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v43 = v89;
            if (os_log_type_enabled(v42, v88[0]))
            {
              v44 = v43;
            }

            else
            {
              v44 = v43 & 0xFFFFFFFE;
            }

            if (v44)
            {
              v90 = 136315395;
              v91 = "routingManager_validateAndCopyLeaderContextForAddingEndpoint";
              v92 = 2113;
              v93 = a1;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRoutingContextUtilities_SetLeaderToSystemAudioContext(a1, 0);
        }

        FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v80);
      }

      goto LABEL_100;
    }

    v89 = 0;
    FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a1, &v89);
    *v88 = 0;
    v20 = FigEndpointGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v21(v20, *MEMORY[0x1E6962270], v7, v88);
    }

    shouldSystemMusicFollowSystemAudio = routingManager_shouldSystemMusicFollowSystemAudio(*v88, a2);
    if (FigRoutingContextUtilities_IsFollowingAnotherContext(a1))
    {
      if (shouldSystemMusicFollowSystemAudio)
      {
        if (dword_1EB75DF20)
        {
          LODWORD(v87) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v24 = v87;
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
            v90 = 136315395;
            v91 = "routingManager_validateAndCopyLeaderContextForAddingEndpoint";
            v92 = 2113;
            v93 = a1;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingContextUtilities_CopyLeaderUUIDForContext(a1, &v80);
        goto LABEL_96;
      }

      if (dword_1EB75DF20)
      {
        LODWORD(v87) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v36 = v87;
        if (os_log_type_enabled(v35, type[0]))
        {
          v37 = v36;
        }

        else
        {
          v37 = v36 & 0xFFFFFFFE;
        }

        if (v37)
        {
          v90 = 136315395;
          v91 = "routingManager_validateAndCopyLeaderContextForAddingEndpoint";
          v92 = 2113;
          v93 = a1;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingContextUtilities_UnfollowUUIDFromLeader(a1, 0);
    }

    else
    {
      if (shouldSystemMusicFollowSystemAudio)
      {
        if (dword_1EB75DF20)
        {
          LODWORD(v87) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v33 = v87;
          if (os_log_type_enabled(v32, type[0]))
          {
            v34 = v33;
          }

          else
          {
            v34 = v33 & 0xFFFFFFFE;
          }

          if (v34)
          {
            v90 = 136315395;
            v91 = "routingManager_validateAndCopyLeaderContextForAddingEndpoint";
            v92 = 2113;
            v93 = a1;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingContextUtilities_SetLeaderToSystemAudioContext(a1, 0);
        FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v80);
LABEL_96:
        if (v89)
        {
          CFRelease(v89);
          v89 = 0;
        }

        v45 = *v88;
        if (*v88)
        {
LABEL_99:
          CFRelease(v45);
        }

LABEL_100:
        if (v80)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (dword_1EB75DF20)
      {
        LODWORD(v87) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v47 = v87;
        if (os_log_type_enabled(v46, type[0]))
        {
          v48 = v47;
        }

        else
        {
          v48 = v47 & 0xFFFFFFFE;
        }

        if (v48)
        {
          v90 = 136315138;
          v91 = "routingManager_validateAndCopyLeaderContextForAddingEndpoint";
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v80 = CFRetain(a1);
    goto LABEL_96;
  }

  v80 = CFRetain(a1);
  if (v80)
  {
    goto LABEL_102;
  }

LABEL_101:
  v80 = CFRetain(a1);
LABEL_102:
  v52 = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (v52 == 1)
  {
    v54 = v80;
    if (v81 == v9)
    {
      goto LABEL_107;
    }

LABEL_112:
    v55 = routingManager_preprocessPickEndpoint(a2, a1, v54, v6, Mutable);
    goto LABEL_113;
  }

  if (v52 != 4)
  {
    if (v52 != 3)
    {
LABEL_144:
      v3 = 0;
      goto LABEL_145;
    }

    if (v82 == v9)
    {
      v59 = v80;
      v89 = 0;
      v60 = *MEMORY[0x1E69621E8];
      v61 = FigEndpointGetCMBaseObject();
      v62 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v62)
      {
        v62(v61, v60, v7, &v89);
      }

      v63 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(v6);
      FigRoutingManagerLogRoutingRequestDetails(@"preprocessAddAirPlayEndpoint - ", a2, 0, 0, v59, v63);
      *v88 = 0;
      FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a1, v88);
      v64 = *v88;
      if (!*v88 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
      {
        v64 = 0;
      }

      if (FigRoutingManagerIsEndpointPresentInAggregate(a2, v64))
      {
        IsSystemAudioRouteAirPlayLowLatency = FigRoutingManagerUtilities_IsSystemAudioRouteAirPlayLowLatency();
        if (!FigRoutingManagerUtilities_IsSystemAudioRouteWHAGroupableLocal())
        {
          if (FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(a2))
          {
            if (dword_1EB75DF20)
            {
              LODWORD(v87) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v67 = v87;
              if (os_log_type_enabled(v66, type[0]))
              {
                v68 = v67;
              }

              else
              {
                v68 = v67 & 0xFFFFFFFE;
              }

              if (v68)
              {
                v90 = 136315138;
                v91 = "routingManager_preprocessAddAirPlayEndpoint";
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            routingManager_routeToWHAGroupableVAEndpoint(v6);
          }

          else if (FigRoutingManagerIsClusterLocalEndpoint(a2) && !IsSystemAudioRouteAirPlayLowLatency)
          {
            if (dword_1EB75DF20)
            {
              LODWORD(v87) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v71 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v72 = v87;
              if (os_log_type_enabled(v71, type[0]))
              {
                v73 = v72;
              }

              else
              {
                v73 = v72 & 0xFFFFFFFE;
              }

              if (v73)
              {
                v90 = 136315138;
                v91 = "routingManager_preprocessAddAirPlayEndpoint";
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            routingManager_routeToLowLatencyAirPlay(v6);
          }
        }

        FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v59, v63, @"configUpdateReasonEndedSuccess");
        v3 = 0;
      }

      else
      {
        FigRoutingManagerContextUtilities_SetPickingState(v59, 1);
        *type = 0;
        v87 = 0;
        FigRoutingManagerUtilities_CopyCurrentlyPickedAirPlayEndpoint(&v87, type, 0);
        if (v87 && *type && !FigCFEqual())
        {
          v85 = 0;
          v74 = FigEndpointGetCMBaseObject();
          v75 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v75)
          {
            v75(v74, v60, v7, &v85);
          }

          if (FigRoutingManagerUtilities_IsCurrentRouteHandoff())
          {
            v3 = 0;
          }

          else
          {
            FigRoutingManagerContextUtilities_SetPickingState(v59, 2);
            CMSMAP_MakeAirPlayHandOffPortRoutable(1, v59);
            if (dword_1EB75DF20)
            {
              v84 = 0;
              v83 = OS_LOG_TYPE_DEFAULT;
              v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v78 = v84;
              if (os_log_type_enabled(v77, v83))
              {
                v79 = v78;
              }

              else
              {
                v79 = v78 & 0xFFFFFFFE;
              }

              if (v79)
              {
                v90 = 136315650;
                v91 = "routingManager_preprocessAddAirPlayEndpoint";
                v92 = 2114;
                v93 = v85;
                v94 = 2114;
                v95 = v89;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            FigRoutingManagerDeactivateEndpointFromPickedContexts(v87, v76, 1u, @"configUpdateReasonEndedSuccess");
            v3 = routingManager_processAddAirPlayEndpoint(a2, a1, v59, v63, Mutable);
          }

          if (v85)
          {
            CFRelease(v85);
          }
        }

        else
        {
          v3 = routingManager_processAddAirPlayEndpoint(a2, a1, v59, v63, Mutable);
        }

        if (v87)
        {
          CFRelease(v87);
          v87 = 0;
        }

        if (*type)
        {
          CFRelease(*type);
        }
      }

      if (*v88)
      {
        CFRelease(*v88);
        *v88 = 0;
      }

      if (v63)
      {
        CFRelease(v63);
      }

      if (v89)
      {
        CFRelease(v89);
      }

      goto LABEL_145;
    }

    v53 = v81;
    routingManager_emptyAggregateEndpointIfNecessary(a2, a1);
    v54 = v80;
    if (v53 == v9)
    {
LABEL_107:
      routingManager_preprocessAddBluetoothEndpoint(a2, a1, v54, v6, Mutable);
      goto LABEL_144;
    }

    goto LABEL_112;
  }

  if (!CMSMDeviceState_IsHomePodHub())
  {
    if (dword_1EB75DF20)
    {
      LODWORD(v89) = 0;
      v88[0] = OS_LOG_TYPE_DEFAULT;
      v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v57 = v89;
      if (os_log_type_enabled(v56, v88[0]))
      {
        v58 = v57;
      }

      else
      {
        v58 = v57 & 0xFFFFFFFE;
      }

      if (v58)
      {
        v90 = 136315138;
        v91 = "FigRoutingManager_iOSAddEndpointToContext";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_144;
  }

  if (v82 != v9)
  {
    FigRoutingManagerLogEndpointID(@"Notifying clients of failure because the following endpoint is not WHA groupable ", a2, 0, 1);
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, v6, @"configUpdateReasonStarted");
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, v6, @"configUpdateReasonEndedFailed");
    goto LABEL_144;
  }

  v55 = MXAudioContext_HandleAddEndpoint(a2, a1, v6, Mutable);
LABEL_113:
  v3 = v55;
LABEL_145:
  if (v80)
  {
    CFRelease(v80);
    v80 = 0;
  }

  if (v81)
  {
    CFRelease(v81);
    v81 = 0;
  }

  if (v82)
  {
    CFRelease(v82);
    v82 = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_155:
  v69 = *MEMORY[0x1E69E9840];
  return v3;
}