uint64_t _FigEndpointCentralSendCommand(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t), uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v11 = *(DerivedStorage + 8);
  if (v11 && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()) && (VTable = CMBaseObjectGetVTable(), (v13 = *(*(VTable + 24) + 72)) != 0))
  {
    v14 = *(VTable + 24) + 72;
    v15 = v13(v11, a2, a3, a4, a5);
  }

  else
  {
    v15 = 4294954514;
  }

  v17 = v15 == -12782 || v15 == -12785;
  if (a4 && v17)
  {
    a4(a1, v15, 0, a5);
  }

  return v15;
}

uint64_t fsm_getFigStarkModeStateEncoding(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_1B19D88F8[v1];
  }

  v3 = a1[2];
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_1B19D8904[v3];
  }

  v5 = a1[4];
  if (v5 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_1B19D8910[v5];
  }

  v8 = a1[5];
  v7 = a1[6];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 512;
  }

  if (v8 == 10)
  {
    v10 = 1024;
  }

  else
  {
    v10 = v9;
  }

  if (v8 == 11)
  {
    v11 = 2048;
  }

  else
  {
    v11 = v10;
  }

  if (v7 > 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = dword_1B19D891C[v7];
  }

  v13 = a1[7];
  if (v13 > 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = dword_1B19D8928[v13];
  }

  return v4 | v2 | v6 | v11 | v12 | v14;
}

CFIndex __fsm_postStateChanged_block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 120);
  v4.length = CFArrayGetCount(v2);
  v4.location = 0;
  result = CFArrayGetFirstIndexOfValue(v2, v4, *(a1 + 48));
  if (result != -1 && *(*(a1 + 48) + 16) == *(a1 + 56))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t fsm_getFigStarkModeChangeActionFromDict(const __CFDictionary *a1, int a2, int a3, uint64_t a4, int a5)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, @"PreviousModeEncoding");
  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  v11 = valuePtr & a2;
  v12 = (valuePtr & a2 & 7) != 0;
  if ((valuePtr & a2 & 0x38) == 0)
  {
    v12 = 0;
  }

  if ((v11 & 0x1C0) == 0)
  {
    v12 = 0;
  }

  if ((v11 & 0xE00) == 0)
  {
    v12 = 0;
  }

  if ((v11 & 0x7000) == 0)
  {
    v12 = 0;
  }

  v13 = (v11 & 0x38000) != 0 && v12;
  v29 = 0;
  v14 = CFDictionaryGetValue(a1, @"CurrentModeEncoding");
  CFNumberGetValue(v14, kCFNumberSInt32Type, &v29);
  v15 = v29 & a3;
  v16 = (v29 & a3 & 7) != 0;
  if ((v29 & a3 & 0x38) == 0)
  {
    v16 = 0;
  }

  if ((v15 & 0x1C0) == 0)
  {
    v16 = 0;
  }

  if ((v15 & 0xE00) == 0)
  {
    v16 = 0;
  }

  if ((v15 & 0x7000) == 0)
  {
    v16 = 0;
  }

  v17 = (v15 & 0x38000) != 0 && v16;
  v28 = 0;
  v18 = CFDictionaryGetValue(a1, @"ModeRequestEncoding");
  CFNumberGetValue(v18, kCFNumberSInt64Type, &v28);
  v19 = v28 & a4;
  v20 = v28 & a4 & 7;
  if ((a5 & 2) != 0)
  {
    if (!v20 || (v19 & 0x780000) == 0 || (v19 & 0x78000) == 0 || (v19 & 0x7800) == 0 || (v19 & 0xF8) == 0 || (v19 & 0x700) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v21 = vdupq_n_s64(v19);
    if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(vandq_s8(v21, xmmword_1B19D8870)), vceqzq_s64(vandq_s8(v21, xmmword_1B19D8880))), vuzp1q_s32(vceqzq_s64(vandq_s8(v21, xmmword_1B19D8890)), vceqzq_s64(vandq_s8(v21, xmmword_1B19D88A0)))))) & 1) != 0 || !v20)
    {
LABEL_34:
      v22 = 0;
      goto LABEL_35;
    }
  }

  v22 = 1;
LABEL_35:
  v27 = 0;
  v23 = CFDictionaryGetValue(a1, @"RequestType");
  CFNumberGetValue(v23, kCFNumberSInt32Type, &v27);
  result = 0;
  if (v13 && v17 && v22)
  {
    if ((v27 & a5) != 0)
    {
      v26 = 0;
      v25 = CFDictionaryGetValue(a1, @"ModeChangeAction");
      CFNumberGetValue(v25, kCFNumberSInt64Type, &v26);
      return v26;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigRoutingManager_iOSIsCarPlayAuxStreamSupported()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = CMSMUtility_CopySystemAudioRoutingContextUUID();
  v1 = FigRoutingManagerCopyActivatedCarPlayEndpoint(v0);
  if (v1)
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = *MEMORY[0x1E69625E8];
    v4 = *MEMORY[0x1E69625D0];
    FigEndpointCopyStreamsForTypeAndSubType();
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v0)
  {
    CFRelease(v0);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t MXEndpointDescriptorLogRouteDelta(uint64_t a1, const __CFArray *a2, uint64_t a3, int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = @"The following endpoints went away for endpointManager=%@\n";
  }

  else
  {
    v5 = @"The following endpoints are newly available for endpointManager=%@\n";
  }

  v26 = v5;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  v7 = 0;
  v8 = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_5:
  for (i = CFArrayGetCount(a2); v7 < i; i = 0)
  {
    CFArrayGetValueAtIndex(a2, v7);
    FigCFDictionaryGetValue();
    if (FigCFArrayContainsValue())
    {
      FigCFDictionaryGetValue();
      Value = FigCFDictionaryGetValue();
      v11 = FigCFDictionaryGetValue();
      v12 = FigCFDictionaryGetValue();
      if (v12)
      {
        LOBYTE(v12) = FigCFNumberGetUInt64();
      }

      v13 = FigRoutingManagerCopyEndpointFeaturesAsString(v12);
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t[%ld] Endpoint=%@, routeUID = %@, supportedFeatures=%@\n", v8, Value, v11, v13];
      v15 = [v6 length];
      if (([v14 length] + v15) > 0x3FF)
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:v26, a1, v22];
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\t[%ld] Endpoint=%@, routeUID = %@, supportedFeatures=%@\n", v18, v8, Value, v11, v13];
      }

      else
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v6, v14, v23, v24, v25];
      }

      v6 = v16;
      ++v8;
      if (v13)
      {
        CFRelease(v13);
      }
    }

    ++v7;
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_6:
    ;
  }

  result = [v6 length];
  if (result && dword_1EB75DE40)
  {
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void figEndpointDescriptorUtility_setAirPlayFeatures(uint64_t a1, __CFDictionary *a2)
{
  if (a2)
  {
    SupportedFeatures = FigEndpointGetSupportedFeatures();
    v4 = *MEMORY[0x1E695E4D0];
    v5 = *MEMORY[0x1E695E4C0];
    if ((SupportedFeatures & 2) != 0)
    {
      v6 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v6 = *MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(a2, @"RouteSupportsAudio", v6);
    if ((FigEndpointGetSupportedFeatures() & 4) != 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    CFDictionarySetValue(a2, @"RouteSupportsAirPlayVideo", v7);
    if (FigEndpointGetSupportedFeatures())
    {
      v8 = v4;
    }

    else
    {
      v8 = v5;
    }

    CFDictionarySetValue(a2, @"RouteSupportsAirPlayScreen", v8);
    if ((FigEndpointGetSupportedFeatures() & 8) != 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = v5;
    }

    CFDictionarySetValue(a2, @"RouteSupportsAirPlayMusic", v9);
  }
}

void figEndpointDescriptorUtility_setAirPlayRouteSubType(uint64_t a1, __CFDictionary *a2)
{
  if (a2)
  {
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v5 = *(*(VTable + 8) + 48);
    if (v5)
    {
      v6 = *(VTable + 8) + 48;
      v5(CMBaseObject, *MEMORY[0x1E6962278], *MEMORY[0x1E695E480], &cf);
    }

    v7 = *MEMORY[0x1E6962668];
    if (FigCFEqual())
    {
      v8 = kFigEndpointDescriptorKey_AudioRouteSubType_Unknown;
    }

    else
    {
      v9 = *MEMORY[0x1E6962608];
      if (FigCFEqual())
      {
        v8 = kFigEndpointDescriptorKey_AudioRouteSubType_AppleTV;
      }

      else
      {
        v10 = *MEMORY[0x1E6962630];
        if (FigCFEqual())
        {
          v8 = kFigEndpointDescriptorKey_AudioRouteSubType_HomePod;
        }

        else
        {
          v11 = *MEMORY[0x1E6962670];
          if (FigCFEqual())
          {
            v8 = kFigEndpointDescriptorKey_AudioRouteSubType_iOS;
          }

          else
          {
            v12 = *MEMORY[0x1E6962640];
            if (FigCFEqual())
            {
              v8 = kFigEndpointDescriptorKey_AudioRouteSubType_Mac;
            }

            else
            {
              v13 = *MEMORY[0x1E6962658];
              if (FigCFEqual())
              {
                v8 = kFigEndpointDescriptorKey_AudioRouteSubType_ThirdPartyTV;
              }

              else
              {
                v14 = *MEMORY[0x1E6962648];
                if (FigCFEqual())
                {
                  v8 = kFigEndpointDescriptorKey_AudioRouteSubType_ThirdPartySetTopBox;
                }

                else
                {
                  v15 = *MEMORY[0x1E6962638];
                  if (FigCFEqual())
                  {
                    v8 = kFigEndpointDescriptorKey_AudioRouteSubType_LowFidelitySpeaker;
                  }

                  else
                  {
                    v16 = *MEMORY[0x1E6962660];
                    if (FigCFEqual())
                    {
                      v8 = kFigEndpointDescriptorKey_AudioRouteSubType_ThirdPartyTVStick;
                    }

                    else
                    {
                      v17 = *MEMORY[0x1E6962650];
                      if (FigCFEqual())
                      {
                        v8 = kFigEndpointDescriptorKey_AudioRouteSubType_ThirdPartySpeaker;
                      }

                      else
                      {
                        v18 = *MEMORY[0x1E6962628];
                        if (FigCFEqual())
                        {
                          v8 = kFigEndpointDescriptorKey_AudioRouteSubType_ClusterStereoPair;
                        }

                        else
                        {
                          v19 = *MEMORY[0x1E6962620];
                          if (FigCFEqual())
                          {
                            v8 = kFigEndpointDescriptorKey_AudioRouteSubType_ClusterHomeTheater;
                          }

                          else
                          {
                            v20 = *MEMORY[0x1E6962610];
                            if (FigCFEqual())
                            {
                              v8 = kFigEndpointDescriptorKey_AudioRouteSubType_ClusterGeneric;
                            }

                            else
                            {
                              v21 = *MEMORY[0x1E6962618];
                              if (FigCFEqual())
                              {
                                v8 = kFigEndpointDescriptorKey_AudioRouteSubType_ClusterGenericAudio;
                              }

                              else
                              {
                                v22 = *MEMORY[0x1E6962678];
                                if (!FigCFEqual())
                                {
                                  goto LABEL_36;
                                }

                                v8 = kFigEndpointDescriptorKey_AudioRouteSubType_visionOS;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    CFDictionarySetValue(a2, @"AudioRouteSubType", *v8);
LABEL_36:
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

BOOL FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v13 = *MEMORY[0x1E695E4C0];
  v1 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E6962158], v1, &v13);
  }

  cf = 0;
  v4 = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, *MEMORY[0x1E6962278], v1, &cf);
    v6 = cf;
  }

  else
  {
    v6 = 0;
  }

  if (v13 != *MEMORY[0x1E695E4D0])
  {
    v7 = 0;
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v8 = *MEMORY[0x1E6962608];
  v9 = FigCFEqual();
  v6 = cf;
  if (v9)
  {
    v7 = 1;
    if (!cf)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v11 = *MEMORY[0x1E6962630];
  v7 = FigCFEqual() != 0;
  v6 = cf;
  if (cf)
  {
LABEL_13:
    CFRelease(v6);
    cf = 0;
  }

LABEL_14:
  if (v13)
  {
    CFRelease(v13);
  }

  return v7;
}

void FigRoutingManagerHandleFigEndpointDescriptionChangedNotificationFromCache(const void *a1, const void *a2, const void *a3)
{
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

  v7 = *(SharedManager + 1);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingManagerHandleFigEndpointDescriptionChangedNotificationFromCache_block_invoke;
  v8[3] = &__block_descriptor_56_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = a3;
  MXDispatchAsync("FigRoutingManagerHandleFigEndpointDescriptionChangedNotificationFromCache", "FigRoutingManager_EndpointHelpers.m", 925, 0, 0, v7, v8);
}

void __FigRoutingManagerHandleFigEndpointDescriptionChangedNotificationFromCache_block_invoke(uint64_t *a1)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E4C0];
  v36 = *MEMORY[0x1E695E4C0];
  v3 = a1[4];
  v4 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(CMBaseObject, *MEMORY[0x1E6962100], v4, &v36);
    v2 = v36;
  }

  if (v2 == *MEMORY[0x1E695E4D0])
  {
    theArray[0] = 0;
    FigRoutingManagerContextUtilities_CopyAllRoutingContextUUIDs(theArray);
    if (theArray[0])
    {
      Count = CFArrayGetCount(theArray[0]);
    }

    else
    {
      Count = 0;
    }

    *prefix = 0;
    v8 = a1[4];
    v9 = *MEMORY[0x1E69620F8];
    v10 = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(v10, v9, v4, prefix);
    }

    if (Count >= 1)
    {
      v12 = 0;
      v13 = *MEMORY[0x1E69626B0];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], v12);
        if (!MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled() || !FigRoutingManagerContextUtilities_IsContextSystemRemoteDisplay(ValueAtIndex))
        {
          break;
        }

        v15 = a1[6];
        FigRoutingManagerHandleDescriptionChangedForRemoteDisplay(a1[4], a1[5]);
LABEL_38:
        if (Count == ++v12)
        {
          goto LABEL_39;
        }
      }

      v41 = 0;
      FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(ValueAtIndex, 0, &v41);
      theString = 0;
      if (v41)
      {
        v16 = FigEndpointGetCMBaseObject();
        v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v17)
        {
          v17(v16, v9, v4, &theString);
        }
      }

      v18 = v41;
      if (v41 != a1[4])
      {
        if (!*prefix || !theString)
        {
          goto LABEL_22;
        }

        if (!CFStringHasPrefix(theString, *prefix))
        {
          v18 = v41;
LABEL_22:
          if (!FigRoutingManagerIsEndpointOfType(v18))
          {
            goto LABEL_31;
          }

          v19 = a1[4];
          v20 = v41;
          if (!v41 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
          {
            v20 = 0;
          }

          if (!FigRoutingManagerIsEndpointPresentInAggregate(v19, v20))
          {
            goto LABEL_31;
          }
        }
      }

      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(ValueAtIndex, 0, @"configUpdateReasonEndpointDescriptorChanged");
      cf = 0;
      FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(ValueAtIndex, &cf);
      v21 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(cf, 0);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext(ValueAtIndex, v21);
      if (v21)
      {
        CFRelease(v21);
      }

LABEL_31:
      if (FigRoutingManagerContextUtilities_GetContextType(ValueAtIndex) == 1 && FigPredictedRouting_IsEndpointThePredictedRoute(a1[4], ValueAtIndex))
      {
        FigPredictedRouting_UpdatePredictedRoute(11);
      }

      if (theString)
      {
        CFRelease(theString);
        theString = 0;
      }

      if (v41)
      {
        CFRelease(v41);
      }

      goto LABEL_38;
    }

LABEL_39:
    if (*prefix)
    {
      CFRelease(*prefix);
      *prefix = 0;
    }

    if (theArray[0])
    {
      CFRelease(theArray[0]);
    }
  }

  v22 = *MEMORY[0x1E69626B8];
  if (FigRoutingManagerIsEndpointOfType(a1[4]))
  {
    v41 = 0;
    v23 = FigEndpointGetCMBaseObject();
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v24)
    {
      v24(v23, *MEMORY[0x1E69621E8], v4, &v41);
    }

    theString = 0;
    v25 = FigEndpointGetCMBaseObject();
    v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v26)
    {
      v26(v25, *MEMORY[0x1E6961FE0], v4, &theString);
    }

    cf = 0;
    v27 = FigEndpointGetCMBaseObject();
    v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v28)
    {
      v28(v27, *MEMORY[0x1E69621D8], v4, &cf);
    }

    if (dword_1EB75DF20)
    {
      v38 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v30 = v38;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (v31)
      {
        *prefix = 136315906;
        *&prefix[4] = "routingManager_logBluetoothInfo";
        v43 = 2114;
        v44 = v41;
        v45 = 2114;
        v46 = theString;
        v47 = 2114;
        v48 = cf;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (theString)
    {
      CFRelease(theString);
      theString = 0;
    }

    if (v41)
    {
      CFRelease(v41);
    }
  }

  if (v36)
  {
    CFRelease(v36);
    v36 = 0;
  }

  v32 = a1[4];
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = a1[5];
  if (v33)
  {
    CFRelease(v33);
  }

  v34 = a1[6];
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = *MEMORY[0x1E69E9840];
}

void central_endpointNotificationCallback(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E69619E8];
  if (FigCFEqual())
  {
    goto LABEL_15;
  }

  v4 = *MEMORY[0x1E69619A8];
  if (FigCFEqual())
  {
    goto LABEL_15;
  }

  v5 = *MEMORY[0x1E6961990];
  if (FigCFEqual())
  {
    goto LABEL_15;
  }

  v6 = *MEMORY[0x1E6961998];
  if (FigCFEqual())
  {
    goto LABEL_15;
  }

  v7 = *MEMORY[0x1E6961980];
  if (FigCFEqual())
  {
    goto LABEL_15;
  }

  v8 = *MEMORY[0x1E69619C0];
  if (FigCFEqual() || (v9 = *MEMORY[0x1E69619C8], FigCFEqual()) || (v10 = *MEMORY[0x1E6961930], FigCFEqual()) || (v11 = *MEMORY[0x1E69619B8], FigCFEqual()) || (v12 = *MEMORY[0x1E6961958], FigCFEqual()) || (v13 = *MEMORY[0x1E6961948], FigCFEqual()) || (v14 = *MEMORY[0x1E6961618], FigCFEqual()) || (v15 = *MEMORY[0x1E6961968], FigCFEqual()) || FigCFEqual())
  {
LABEL_15:
    CMNotificationCenterGetDefaultLocalCenter();

    CMNotificationCenterPostNotification();
  }

  else
  {
    v16 = *MEMORY[0x1E6961950];
    if (FigCFEqual() || (v17 = *MEMORY[0x1E6961960], FigCFEqual()))
    {

      central_deactivateEndpoint(a2);
    }
  }
}

uint64_t MXEndpointDescriptorEndpointDescriptionDidChangeHandler(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [a2 _getCacheMutex];
  FigSimpleMutexLock();
  [a2 _endpointDescriptionDidChangeForEndpoint:a4 notificationName:a3 payload:a5];
  [a2 _getCacheMutex];

  return FigSimpleMutexUnlock();
}

__CFDictionary *FigEndpointDescriptorUtility_CopyDescriptorForNonVirtualAudioEndpoint(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  IsBulkCopyOfRouteDescriptorEnabled = MX_FeatureFlags_IsBulkCopyOfRouteDescriptorEnabled();
  v3 = MEMORY[0x1E69626A8];
  v4 = MEMORY[0x1E695E480];
  if (IsBulkCopyOfRouteDescriptorEnabled)
  {
    v5 = *MEMORY[0x1E69626A8];
    IsEndpointOfType = FigRoutingManagerIsEndpointOfType(a1);
    v7 = *v4;
    if (IsEndpointOfType)
    {
      v51 = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v9(CMBaseObject, *MEMORY[0x1E6962060], v7, &v51);
        if (v51)
        {
          MutableCopy = FigCFDictionaryCreateMutableCopy();
          CFDictionarySetValue(MutableCopy, @"IsBTRoute", *MEMORY[0x1E695E4C0]);
          CFDictionarySetValue(MutableCopy, @"AudioRouteName", @"AirTunes");
          figEndpointDescriptorUtility_setAirPlayFeatures(a1, MutableCopy);
          figEndpointDescriptorUtility_setAirPlayRouteSubType(a1, MutableCopy);
          IsEndpointSelfOnlyLocalAirPlay = FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(a1);
          v12 = kFigEndpointDescriptor_RouteType_Default;
          if (!IsEndpointSelfOnlyLocalAirPlay)
          {
            v12 = kFigEndpointDescriptor_RouteType_Wireless;
          }

          CFDictionarySetValue(MutableCopy, @"RouteType", *v12);
          if (FigEndpointGetSupportedFeatures())
          {
            CFDictionarySetValue(MutableCopy, @"SupportsScreenMirroringControls", *MEMORY[0x1E695E4D0]);
          }

          goto LABEL_58;
        }
      }
    }
  }

  else
  {
    v7 = *MEMORY[0x1E695E480];
  }

  MutableCopy = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf = 0;
  v13 = *MEMORY[0x1E69621E8];
  v14 = FigEndpointGetCMBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    v15(v14, v13, v7, &cf);
  }

  v45 = v13;
  FigCFDictionarySetValue();
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v49 = 0;
  v16 = *MEMORY[0x1E69620F8];
  v17 = FigEndpointGetCMBaseObject();
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v18)
  {
    v18(v17, v16, v7, &v49);
  }

  FigCFDictionarySetValue();
  if (v49)
  {
    CFRelease(v49);
    v49 = 0;
  }

  v48 = 0;
  v19 = *MEMORY[0x1E69621B0];
  v20 = FigEndpointGetCMBaseObject();
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v21)
  {
    v21(v20, v19, v7, &v48);
  }

  FigCFDictionarySetValue();
  if (v48)
  {
    CFRelease(v48);
    v48 = 0;
  }

  valuePtr = 0;
  number = 0;
  v22 = FigEndpointGetCMBaseObject();
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v23)
  {
    v23(v22, *MEMORY[0x1E6961F58], v7, &number);
  }

  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
  }

  if (FigEndpointGetSupportedFeatures() & 1) != 0 || (valuePtr)
  {
    v51 = 0;
    v24 = FigEndpointGetCMBaseObject();
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v25)
    {
      v25(v24, @"subType", v7, &v51);
    }

    v26 = FigCFEqual();
    v27 = MEMORY[0x1E695E4C0];
    if (!v26)
    {
      v27 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(MutableCopy, @"SupportsScreenMirroringControls", *v27);
    if (v51)
    {
      CFRelease(v51);
    }
  }

  if (number)
  {
    CFRelease(number);
    number = 0;
  }

  v28 = *v3;
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    figEndpointDescriptorUtility_addAirPlayDetailsToDescriptor(a1, MutableCopy);
    return MutableCopy;
  }

  v29 = *MEMORY[0x1E69626B8];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    figEndpointDescriptorUtility_addBTDetailsToDescriptor(a1, MutableCopy);
    return MutableCopy;
  }

  if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled())
  {
    v30 = *MEMORY[0x1E69626C0];
    if (FigRoutingManagerIsEndpointOfType(a1))
    {
      v51 = 0;
      v31 = *MEMORY[0x1E6962100];
      v32 = FigEndpointGetCMBaseObject();
      v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v33)
      {
        v33(v32, v31, v7, &v51);
      }

      v35 = *MEMORY[0x1E695E4D0];
      if (FigCFEqual())
      {
        figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620D0], MutableCopy, @"HIDs");
      }

      SupportedFeatures = FigEndpointGetSupportedFeatures();
      v37 = *MEMORY[0x1E6962120];
      if ((SupportedFeatures & 4) != 0)
      {
        v43 = FigEndpointGetCMBaseObject();
        v39 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v39)
        {
          v41 = v43;
          v42 = v37;
          v40 = v35;
          goto LABEL_56;
        }
      }

      else
      {
        v38 = FigEndpointGetCMBaseObject();
        v39 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v39)
        {
          v40 = *MEMORY[0x1E695E4C0];
          v41 = v38;
          v42 = v37;
LABEL_56:
          v39(v41, v42, v40);
        }
      }

      FigCFDictionarySetValue();
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621D8], MutableCopy, @"RouteModel");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621B8], MutableCopy, @"Manufacturer");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620B0], MutableCopy, @"FirmwareVersion");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962248], MutableCopy, @"SerialNumber");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962358], MutableCopy, @"iOSEntityIsDoingTurnByTurn");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962240], MutableCopy, @"ScreenInfo");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962208], MutableCopy, @"OEMIcons");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621F8], MutableCopy, @"OEMIconLabel");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962200], MutableCopy, @"OEMIconVisible");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621F0], MutableCopy, @"NightMode");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962230], MutableCopy, @"RightHandDrive");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621A0], MutableCopy, @"LimitedUIElements");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962198], MutableCopy, @"LimitedUI");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961FF8], MutableCopy, @"CarEntityIsDoingTurnByTurn");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962010], MutableCopy, @"CarEntityOwnsScreen");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962000], MutableCopy, @"CarEntityIsDoingVoiceRecognition");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962328], MutableCopy, @"VehicleInformation");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69622F0], MutableCopy, @"TransportType");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961FC8], MutableCopy, @"AuthenticationType");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961FC0], MutableCopy, @"AuthenticationData");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962330], MutableCopy, @"VoiceActivationType");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962008], MutableCopy, @"CarEntityOwnsMainAudio");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962070], MutableCopy, @"ExtendedFeatures");
      figEndpointDescriptorUtility_setDescriptorKey(a1, v31, MutableCopy, @"IsActivated");
      figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6961FB0], MutableCopy, @"AlternateSiri");
LABEL_58:
      if (v51)
      {
        CFRelease(v51);
      }

      return MutableCopy;
    }
  }

  v34 = *MEMORY[0x1E69626D0];
  if (FigRoutingManagerIsEndpointOfType(a1) && MutableCopy)
  {
    figEndpointDescriptorUtility_setDescriptorKey(a1, v45, MutableCopy, @"RouteName");
    figEndpointDescriptorUtility_setDescriptorKey(a1, v16, MutableCopy, @"RouteUID");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962278], MutableCopy, @"RouteSubtype");
    figEndpointDescriptorUtility_setDescriptorKey(a1, v19, MutableCopy, @"MACAddress");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621D8], MutableCopy, @"RouteModel");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69621B8], MutableCopy, @"Manufacturer");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E69620B0], MutableCopy, @"FirmwareVersion");
    figEndpointDescriptorUtility_setDescriptorKey(a1, *MEMORY[0x1E6962248], MutableCopy, @"SerialNumber");
  }

  return MutableCopy;
}

uint64_t central_TakeScreen(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v16 = 0;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  *&v12 = 0x200000002;
  DWORD2(v12) = 20;
  v11 = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 8) + 48);
  if (v8)
  {
    v9 = *(VTable + 8) + 48;
    v8(CMBaseObject, *MEMORY[0x1E6962310], *MEMORY[0x1E695E480], &v11);
  }

  HIDWORD(v12) = 500;
  *(&v13 + 1) = 0x64000001F4;
  if (FigCFEqual() && v11 == *MEMORY[0x1E695E4C0])
  {
    HIDWORD(v12) = 100;
    *(&v13 + 1) = 0x6400000064;
  }

  central_requestCarModeChange(a1, &v12, a2, a3);
  return 0;
}

void fsm_requestResourceModeChangeTake(int a1, _DWORD *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  CurrentBorrower = fsm_getCurrentBorrower(a3);
  if (!CurrentBorrower || CurrentBorrower == a1)
  {
    if (*a3 == a1)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a3 + 4);
    }
  }

  else
  {
    v7 = *(a3 + 24);
  }

  if (a2[1] < v7)
  {
    if (dword_1EB75E258)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_14;
  }

  *a3 = a1;
  *(a3 + 4) = a2[4];
  *(a3 + 8) = a2[5];
  *(a3 + 24) = 0;
  v9 = *(a3 + 16);
  if (!v9)
  {
LABEL_14:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  v10 = *MEMORY[0x1E69E9840];

  CFArrayRemoveAllValues(v9);
}

uint64_t CMScreenResumeStream(const void *a1)
{
  if (!a1)
  {
    return 4294954316;
  }

  OUTLINED_FUNCTION_1_17(a1);
  if (v3)
  {
    CFRetain(v3);
  }

  if (v2)
  {
    CFRetain(v2);
  }

  if (v1)
  {
    CFRetain(v1);
  }

  OUTLINED_FUNCTION_0_24();
  v7[1] = 3221225472;
  v7[2] = __CMScreenResumeStream_block_invoke;
  v7[3] = &__block_descriptor_64_e5_v8__0l;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v2;
  v7[7] = v1;
  MXDispatchAsync("CMScreenResumeStream", "CMSessionManager_Screen.m", 417, 0, 0, v5, v7);
  return 0;
}

uint64_t FigRoutingManagerFigEndpointCentralCallback()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void __CMScreenResumeStream_block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = a1[5];
    v3 = a1[6];
    v4 = a1[7];
    if (FigCFEqual() || FigCFEqual())
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (cmscreenEndpointIsStarkWiFi() && !sCMScreenStarkWiFiIdleSleepPreventor)
      {
        if (dword_1EB75DE40)
        {
          v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v7 = *MEMORY[0x1E695E480];
        Current = CFAbsoluteTimeGetCurrent();
        v9 = CFDateCreate(v7, Current);
        PowerLogDataForStarkWiFi = CMSMPowerLogCreatePowerLogDataForStarkWiFi(@"WiFiCarPlayScreenResume", sCMScreenStarkWiFiIdleSleepPreventor, @"com.apple.cmsession.WiFiCarPlay.IsConnected", v9);
        CMSMSleep_CreateIdleSleepPreventor(@"com.apple.cmsession.WiFiCarPlay.IsConnected", @"WiFiCarPlayScreen", PowerLogDataForStarkWiFi, &sCMScreenStarkWiFiIdleSleepPreventor);
        if (v9)
        {
          CFRelease(v9);
        }

        if (PowerLogDataForStarkWiFi)
        {
          CFRelease(PowerLogDataForStarkWiFi);
        }
      }

      if (FigEndpointStreamResume())
      {
        if (dword_1EB75DE40)
        {
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        cmscreenSetCurrentState(@"ScreenState_Activated");
      }
    }

    else
    {
      FigSignalErrorAtGM();
    }
  }

  v12 = a1[4];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[5];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[6];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[7];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t FigRoutingManagerContextUtilities_CopyAllRoutingContextUUIDs(uint64_t a1)
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
  v6[2] = __FigRoutingManagerContextUtilities_CopyAllRoutingContextUUIDs_block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  if (!byte_1EB75CFA8)
  {
    v2 = 0;
  }

  v6[4] = v2;
  v6[5] = a1;
  MXDispatchSync("FigRoutingManagerContextUtilities_CopyAllRoutingContextUUIDs", "FigRoutingManagerContextUtilities.m", 4499, 0, 0, v4, v6);
  return 0;
}

uint64_t FigRoutingManagerContextUtilities_IsContextSystemRemoteDisplay(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v2 = byte_1EB75CFA8;
    if (byte_1EB75CFA8)
    {
      v3 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v3 = 0;
    }

    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v13 = 0;
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled())
    {
      v4 = &qword_1EB75CF98;
      if (!v2)
      {
        v4 = 504;
      }

      v5 = *v4;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __FigRoutingManagerContextUtilities_IsContextSystemRemoteDisplay_block_invoke;
      v7[3] = &unk_1E7AE7A20;
      v7[6] = v3;
      v7[7] = v1;
      v7[4] = v12;
      v7[5] = &v8;
      MXDispatchSync("FigRoutingManagerContextUtilities_IsContextSystemRemoteDisplay", "FigRoutingManagerContextUtilities.m", 5042, 0, 0, v5, v7);
    }

    v1 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
    _Block_object_dispose(v12, 8);
  }

  return v1;
}

void sub_1B181E3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t FigPredictedRouting_IsEndpointThePredictedRoute(uint64_t a1, uint64_t a2)
{
  if (!FigPredictedRouting_IsSupported(a2))
  {
    return 0;
  }

  v3 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(a1, 0);
  FigSimpleMutexLock();
  if (gPRS_1)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    FigSimpleMutexUnlock();
    v5 = 1;
    if (!v3)
    {
      return v5;
    }
  }

  else
  {
    if (FigCFDictionaryGetCount() && FigCFDictionaryGetCount())
    {
      Value = CFDictionaryGetValue(v3, @"RouteUID");
      if (Value)
      {
        v7 = [objc_msgSend(Value componentsSeparatedByString:{@"-", "firstObject"}];
      }

      else
      {
        v7 = 0;
      }

      v8 = CFDictionaryGetValue(gPRS_1, @"RouteUID");
      if (v8)
      {
        v8 = [objc_msgSend(v8 componentsSeparatedByString:{@"-", "firstObject"}];
      }

      v5 = CFEqual(v8, v7);
    }

    else
    {
      v5 = 1;
    }

    FigSimpleMutexUnlock();
  }

  CFRelease(v3);
  return v5;
}

uint64_t FigRoutingManagerContextUtilities_CopySystemRemoteDisplayContextUUID(uint64_t a1)
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
    v6[2] = __FigRoutingManagerContextUtilities_CopySystemRemoteDisplayContextUUID_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    if (!byte_1EB75CFA8)
    {
      v2 = 0;
    }

    v6[4] = a1;
    v6[5] = v2;
    MXDispatchSync("FigRoutingManagerContextUtilities_CopySystemRemoteDisplayContextUUID", "FigRoutingManagerContextUtilities.m", 4599, 0, 0, v4, v6);
  }

  return 0;
}

void FigRoutingManagerHandleDescriptionChangedForRemoteDisplay(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  if (a1 && a2)
  {
    FigRoutingManagerContextUtilities_CopySystemRemoteDisplayContextUUID(&v14);
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v14, 0, &v13);
    v2 = *MEMORY[0x1E69620F8];
    v3 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(CMBaseObject, v2, v3, &v16);
    }

    if (v13)
    {
      v6 = FigEndpointGetCMBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(v6, v2, v3, &v15);
      }
    }

    if (FigCFEqual() || MXCFStringHasCaseInsensitivePrefix(v15, v16))
    {
      cf = 0;
      FigRoutingManagerContextUtilities_CopyCachedSelectedRouteDescriptors(v14, &cf);
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      if (ValueAtIndex)
      {
        v9 = CFRetain(ValueAtIndex);
      }

      else
      {
        v9 = 0;
      }

      v10 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(v13, 0);
      v11 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v10, 0}];
      FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext(v14, v11);

      FigRoutingManagerContextUtilities_PostNotificationAndRouteDescriptorChangeToClientsOfContextWithUUIDAndItsFollowers(v14);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  if (v16)
  {
    CFRelease(v16);
    v16 = 0;
  }

  if (v15)
  {
    CFRelease(v15);
    v15 = 0;
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

BOOL MXCFStringHasCaseInsensitivePrefix(const __CFString *a1, CFStringRef theString)
{
  result = 0;
  if (a1 && theString)
  {
    Length = CFStringGetLength(theString);
    if (Length <= CFStringGetLength(a1))
    {
      v6.length = CFStringGetLength(theString);
      v6.location = 0;
      return CFStringCompareWithOptions(a1, theString, v6, 1uLL) == kCFCompareEqualTo;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled()
{
  if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled_cold_1();
  }

  return MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled_isSystemRemoteDisplayContextEnabled;
}

void ___routingContextUtilities_postNotificationToContextAndItsFollowers_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (FigCFEqual())
  {
    v3 = 1;
  }

  else
  {
    v3 = dword_1EB75DF20 == 0;
  }

  if (!v3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v5 = *(a1 + 32);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  CMNotificationCenterPostNotification();
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 64);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), i);
    CFDictionaryGetValue(ValueAtIndex, @"routingContextUUID");
    CFDictionaryGetValue(ValueAtIndex, @"routingContext");
    if (dword_1EB75DF20)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    CMNotificationCenterPostNotification();
  }

  CFRelease(*(a1 + 56));
  v14 = *(a1 + 40);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *MEMORY[0x1E69E9840];
}

BOOL FigRoutingManagerIsEndpointDissociated(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, @"IsDissociated", *MEMORY[0x1E695E480], &cf);
  }

  v3 = *MEMORY[0x1E695E4D0];
  v4 = FigCFEqual() != 0;
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t _fsmcontroller_GetCurrentMode(__n128 *a1, __n128 *a2)
{
  if (!a1)
  {
    return 4294950566;
  }

  if (!a2)
  {
    return 4294949645;
  }

  v4 = a1[1].n128_u64[0];
  if (_FigIsNotCurrentDispatchQueue())
  {
    MXSimulateCrash("This method should only be called from controller queue! Please file a radar against 'MediaExperience Session | All'");
  }

  fsm_getCurrentMode(a1, a2, 0);
  return 0;
}

uint64_t _FigEndpointCentralEntityHoldsResource(uint64_t result, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  memset(v32, 0, sizeof(v32));
  if (!result)
  {
    goto LABEL_11;
  }

  result = 0;
  if (!a2 || !a3)
  {
    goto LABEL_11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v9 = OUTLINED_FUNCTION_3_3();
    if (OUTLINED_FUNCTION_17(v9, v10, v11, v12, v13, v14, v15, v16, v28, v29, v30, v31, SBYTE2(v31), BYTE3(v31), SHIDWORD(v31)))
    {
      v17 = v3;
    }

    else
    {
      v17 = v3 & 0xFFFFFFFE;
    }

    if (!v17)
    {
      goto LABEL_22;
    }

LABEL_21:
    v33 = 136315138;
    OUTLINED_FUNCTION_4_7();
    _os_log_send_and_compose_impl();
LABEL_22:
    v27 = *(v4 + 528);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = 0;
    goto LABEL_11;
  }

  v6 = DerivedStorage;
  if (*DerivedStorage)
  {
    v18 = OUTLINED_FUNCTION_3_3();
    if (OUTLINED_FUNCTION_17(v18, v19, v20, v21, v22, v23, v24, v25, v28, v29, v30, v31, SBYTE2(v31), BYTE3(v31), SHIDWORD(v31)))
    {
      v26 = v6;
    }

    else
    {
      v26 = v6 & 0xFFFFFFFE;
    }

    if (!v26)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v7 = *(DerivedStorage + 48);
  if (_FigIsNotCurrentDispatchQueue())
  {
    MXSimulateCrash("This method should only be called from controller queue! Please file a radar against 'MediaExperience Session | All'");
  }

  _fsmcontroller_GetCurrentMode(*(v6 + 24), v32);
  if (FigCFEqual() || (result = FigCFEqual(), result))
  {
    result = FigCFEqual();
  }

LABEL_11:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t remoteXPCFigRoutingContext_NotificationFilter(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"didReceiveData"))
  {
    if (a4)
    {
      Value = CFDictionaryGetValue(a4, @"commChannelUUID");
      v8 = CFDictionaryGetValue(a4, @"deviceID");
      if (Value)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        v13 = *(DerivedStorage + 40);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __remoteXPCFigRoutingContext_NotificationFilter_block_invoke;
        v20[3] = &__block_descriptor_56_e5_v8__0l;
        v20[4] = DerivedStorage;
        v20[5] = Value;
        v20[6] = v8;
        v14 = v20;
        v15 = 444;
LABEL_19:
        MXDispatchSync("remoteXPCFigRoutingContext_NotificationFilter", "FigRoutingContextRemoteXPC.m", v15, 0, 0, v13, v14);
        return 0;
      }

      if (Value)
      {
        v13 = *(DerivedStorage + 40);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __remoteXPCFigRoutingContext_NotificationFilter_block_invoke_2;
        v19[3] = &__block_descriptor_48_e5_v8__0l;
        v19[4] = DerivedStorage;
        v19[5] = Value;
        v14 = v19;
        v15 = 455;
        goto LABEL_19;
      }
    }
  }

  else
  {
    v10 = CFEqual(a2, @"commChannelDidClose");
    if (a4 && v10)
    {
      v11 = CFDictionaryGetValue(a4, @"commChannelUUID");
      if (CFDictionaryGetValue(a4, @"deviceID"))
      {
        v12 = v11 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        v13 = *(DerivedStorage + 40);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __remoteXPCFigRoutingContext_NotificationFilter_block_invoke_3;
        v18[3] = &__block_descriptor_48_e5_v8__0l;
        v18[4] = DerivedStorage;
        v18[5] = v11;
        v14 = v18;
        v15 = 471;
        goto LABEL_19;
      }

      if (v11)
      {
        v13 = *(DerivedStorage + 40);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __remoteXPCFigRoutingContext_NotificationFilter_block_invoke_4;
        v17[3] = &__block_descriptor_48_e5_v8__0l;
        v17[4] = DerivedStorage;
        v17[5] = v11;
        v14 = v17;
        v15 = 478;
        goto LABEL_19;
      }
    }
  }

  return 0;
}

void routingContextResilientRemote_forwardNotificationFromRemoteContext(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef a4)
{
  v5 = FigRoutingContextResilientRemoteCopyRemoteContext();
  v6 = v5;
  if (v5 == a4)
  {
    CMNotificationCenterPostNotification();
    if (!v6)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  CFRelease(v6);
}

uint64_t FigRoutingContextServerNotificationFilter(uint64_t a1, int a2, int a3, CFDictionaryRef theDict, __CFDictionary **a5)
{
  result = 0;
  if (a1 && theDict)
  {
    if (*(a1 + 3))
    {
      return 0;
    }

    Value = CFDictionaryGetValue(theDict, @"routeConfigUpdateReasonEndedFailed_DeviceID");
    if (!(Value | CFDictionaryGetValue(theDict, @"routeConfigUpdateReasonEndedFailed_CurrentRoutes")))
    {
      return 0;
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
      CFDictionaryRemoveValue(MutableCopy, @"routeConfigUpdateReasonEndedFailed_DeviceID");
      CFDictionaryRemoveValue(MutableCopy, @"routeConfigUpdateReasonEndedFailed_CurrentRoutes");
      *a5 = MutableCopy;
      return 4;
    }
  }

  return result;
}

uint64_t central_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = *(CMBaseObjectGetDerivedStorage() + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __central_SetProperty_block_invoke;
  v9[3] = &unk_1E7AE7A48;
  v9[4] = &v10;
  v9[5] = a1;
  v9[6] = a2;
  v9[7] = a3;
  MXDispatchSync("central_SetProperty", "FigEndpoint_Central.m", 1329, 0, 0, v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_1B181F6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _FigEndpointCentralGetEntityDoingActivity(uint64_t result, const void *a2)
{
  v5 = 0u;
  v6 = 0u;
  if (result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    result = 0;
    if (a2)
    {
      if (DerivedStorage)
      {
        v4 = *(DerivedStorage + 48);
        if (_FigIsNotCurrentDispatchQueue())
        {
          MXSimulateCrash("This method should only be called from controller queue! Please file a radar against 'MediaExperience Session | All'");
        }

        _fsmcontroller_GetCurrentMode(*(DerivedStorage + 24), &v5);
        if (CFEqual(a2, @"PhoneCall"))
        {
          return DWORD2(v6);
        }

        else if (CFEqual(a2, @"Speech"))
        {
          return v6;
        }

        else
        {
          result = CFEqual(a2, @"TurnByTurnNavigation");
          if (result)
          {
            return HIDWORD(v6);
          }
        }
      }
    }
  }

  return result;
}

void FigRoutingManagerContextUtilities_PostNotificationAndRouteDescriptorChangeToClientsOfContextWithUUIDAndItsFollowers(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(a1, @"routeDescriptionEvent", Mutable);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v7[0] = 0;
      v7[1] = v7;
      v7[2] = 0x2020000000;
      v7[3] = 0;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_block_invoke;
      v6[3] = &unk_1E7AE79A8;
      v6[4] = v7;
      v6[5] = &routingContextUtilities_getSharedContextUtilities_contextState;
      v6[6] = a1;
      v6[7] = a2;
      v6[8] = a3;
      MXDispatchSync("FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers", "FigRoutingManagerContextUtilities.m", 426, 0, 0, qword_1EB75CF98, v6);
      _Block_object_dispose(v7, 8);
    }
  }
}

uint64_t FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294949876;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_cold_1();
  }

  v4 = &routingContextUtilities_getSharedContextUtilities_contextState;
  v5 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v5 = 504;
  }

  v6 = *v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_block_invoke;
  v9[3] = &unk_1E7AE7A48;
  if (!byte_1EB75CFA8)
  {
    v4 = 0;
  }

  v9[4] = &v10;
  v9[5] = v4;
  v9[6] = a1;
  v9[7] = a2;
  MXDispatchSync("FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext", "FigRoutingManagerContextUtilities.m", 5283, 0, 0, v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void _routingContextUtilities_postNotificationToContextAndItsFollowers(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    v23 = byte_1EB75CFA8;
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v6 = *(a1 + 48);
    v26 = FigCFWeakReferenceHolderCopyReferencedObject();
    v7 = *(a1 + 88);
    if (v7)
    {
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v9 = Count;
        for (i = 0; i != v9; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), i);
          if (ValueAtIndex)
          {
            ContextFromWeakRef = _routingContextUtilities_getContextFromWeakRef(ValueAtIndex);
            if (ContextFromWeakRef)
            {
              v13 = ContextFromWeakRef;
              v14 = *(ContextFromWeakRef + 6);
              v15 = FigCFWeakReferenceHolderCopyReferencedObject();
              if (v15)
              {
                v16 = v15;
                v17 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                v18 = *(v13 + 1);
                FigCFDictionarySetValue();
                FigCFDictionarySetValue();
                CFArrayAppendValue(Mutable, v17);
                if (v17)
                {
                  CFRelease(v17);
                }

                CFRelease(v16);
              }
            }
          }
        }
      }
    }

    if (v26)
    {
      v19 = *(a1 + 8);
      if (v19)
      {
        v20 = CFRetain(v19);
      }

      else
      {
        v20 = 0;
      }

      if (a2)
      {
        CFRetain(a2);
      }

      if (a3)
      {
        CFRetain(a3);
      }

      if (Mutable)
      {
        CFRetain(Mutable);
      }

      v21 = &qword_1EB75CFA0;
      if (!v23)
      {
        v21 = 512;
      }

      v22 = *v21;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = ___routingContextUtilities_postNotificationToContextAndItsFollowers_block_invoke;
      v27[3] = &__block_descriptor_72_e5_v8__0l;
      v27[4] = a2;
      v27[5] = v20;
      v27[6] = a3;
      v27[7] = v26;
      v27[8] = Mutable;
      MXDispatchAsync("_routingContextUtilities_postNotificationToContextAndItsFollowers", "FigRoutingManagerContextUtilities.m", 240, 0, 0, v22, v27);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

BOOL CMSMSleep_ReleaseIdleSleepPreventor(IOPMAssertionID a1, const void *a2, const void *a3)
{
  v5 = IOPMAssertionRelease(a1);
  v6 = v5;
  if (a2 && !v5)
  {
    CMSMPowerLogPostPowerLogData(a2, a3);
  }

  return v6 == 0;
}

void CMSMSleep_ReleasePrewarmIdleSleepPreventor(int a1, int a2)
{
  if (!FigAtomicCompareAndSwap32())
  {
    return;
  }

  if ((a1 - 1200) >= 0xC)
  {
    v4 = 0;
  }

  else
  {
    v4 = @"touchtone";
  }

  if ((a1 - 1103) >= 3)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"keypress";
  }

  PowerLogDataForSystemSound = CMSMPowerLogCreatePowerLogDataForSystemSound(v5, a2, @"SystemSoundPlayback_Stop", sCMSessionMgrPrewarmIdleSleepPreventor, sCMSessionMgrPrewarmIdleSleepPreventorName, sCMSessionMgrPrewarmIdleSleepPreventorCreationTime);
  if (!CMSMSleep_ReleaseIdleSleepPreventor(sCMSessionMgrPrewarmIdleSleepPreventor, @"CoreMedia_SystemSoundPlayback", PowerLogDataForSystemSound))
  {
    sCMSessionMgrPrewarmIdleSleepPreventorAllocated = 1;
    if (!PowerLogDataForSystemSound)
    {
      return;
    }

    goto LABEL_14;
  }

  sCMSessionMgrPrewarmIdleSleepPreventor = 0;
  if (sCMSessionMgrPrewarmIdleSleepPreventorName)
  {
    CFRelease(sCMSessionMgrPrewarmIdleSleepPreventorName);
    sCMSessionMgrPrewarmIdleSleepPreventorName = 0;
  }

  if (sCMSessionMgrPrewarmIdleSleepPreventorCreationTime)
  {
    CFRelease(sCMSessionMgrPrewarmIdleSleepPreventorCreationTime);
    sCMSessionMgrPrewarmIdleSleepPreventorCreationTime = 0;
  }

  if (PowerLogDataForSystemSound)
  {
LABEL_14:

    CFRelease(PowerLogDataForSystemSound);
  }
}

void vaemVADSerializationListener(uint64_t a1)
{
  v2 = MXGetSerialQueue();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __vaemVADSerializationListener_block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = a1;
  MXDispatchAsync("vaemVADSerializationListener", "CMSessionManager_VAEndpointManager.m", 8664, 0, 0, v2, v3);
}

void vaemVADRouteChangeListener()
{
  v0 = *MEMORY[0x1E69E9840];
  [+[MXSessionManager sharedInstance](MXSessionManager decoupledInputVADID];
  [+[MXSessionManager sharedInstance](MXSessionManager musicVADID];
  [+[MXSessionManager sharedInstance](MXSessionManager systemSoundLocalVADID];
  MXVW_CreateVectorCMSRouteInfo();
}

BOOL vaeIsVoiceProcessingSupportedOnVADPort(AudioObjectID a1)
{
  inAddress.mElement = 0;
  *&inAddress.mSelector = *"rpvpbolg";
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

__CFArray *vaeCopyChannelNamesForPortAndNumberOfChannels(uint64_t a1, const void *a2, CFIndex capacity)
{
  v3 = capacity;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, MEMORY[0x1E695E9C0]);
  v8 = Mutable;
  if (!v3)
  {
    return v8;
  }

  if (v3 != 2)
  {
    if (v3 == 1)
    {
      if (a2)
      {
        CFArrayAppendValue(Mutable, a2);
      }

      return v8;
    }

LABEL_20:
    v16 = CFLocaleCopyCurrent();
    v17 = CFNumberFormatterCreate(0, v16, kCFNumberFormatterDecimalStyle);
    if (v17)
    {
      v18 = 1;
      do
      {
        valuePtr = v18;
        v19 = CFNumberFormatterCreateStringWithValue(0, v17, kCFNumberSInt32Type, &valuePtr);
        v20 = CFStringCreateWithFormat(v6, 0, @"%@ %@", a2, v19);
        if (v20)
        {
          v21 = v20;
          CFArrayAppendValue(v8, v20);
          CFRelease(v21);
        }

        if (v19)
        {
          CFRelease(v19);
        }

        ++v18;
        --v3;
      }

      while (v3);
      if (!v16)
      {
        goto LABEL_29;
      }
    }

    else
    {
      vaeCopyChannelNamesForPortAndNumberOfChannels_cold_1();
      if (!v16)
      {
        goto LABEL_29;
      }
    }

    CFRelease(v16);
LABEL_29:
    if (!v17)
    {
      return v8;
    }

    v15 = v17;
LABEL_31:
    CFRelease(v15);
    return v8;
  }

  if (vaeGetPortTypeFromPortID(a1) != 1885892727 && vaeGetPortTypeFromPortID(a1) != 1885892674)
  {
    goto LABEL_20;
  }

  v9 = vaeCopyLocalizedString(@"mclf");
  v10 = vaeCopyLocalizedString(@"mcrt");
  v11 = @"Left";
  if (v9)
  {
    v11 = v9;
  }

  v12 = CFStringCreateWithFormat(v6, 0, @"%@ %@", a2, v11);
  CFArrayAppendValue(v8, v12);
  v13 = @"Right";
  if (v10)
  {
    v13 = v10;
  }

  v14 = CFStringCreateWithFormat(v6, 0, @"%@ %@", a2, v13);
  CFArrayAppendValue(v8, v14);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    v15 = v10;
    goto LABEL_31;
  }

  return v8;
}

void vaemCopyNewRoutesInfoFromRouteChangeDescription(const __CFDictionary *a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, const __CFDictionary **a8, uint64_t a9)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    v28 = 0;
    theArray = 0;
    vaemGetPortsInfoFromRouteChangeDescription(a1, &theArray, &v28, a4, a5, a6, a7, a8, a9);
    if (theArray)
    {
      CFArrayGetCount(theArray);
    }

    if (v28)
    {
      CFArrayGetCount(v28);
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v30 = 0;
    *type = 0;
    v27 = 0;
    v25 = 0;
    CMSMVAUtility_CopyRoutesInfoFromInputAndOutputPorts(v28, theArray, &v30, &v27, &v25, type);
    if (v30)
    {
      Count = CFArrayGetCount(v30);
      *a3 = Count;
      if (Count)
      {
        v13 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v30, v13);
          if (FigCFEqual())
          {
            v15 = 0;
          }

          else
          {
            v15 = ValueAtIndex;
          }

          v16 = CFArrayGetValueAtIndex(v27, v13);
          if (FigCFEqual())
          {
            v17 = 0;
          }

          else
          {
            v17 = v16;
          }

          if (v25)
          {
            v18 = CFArrayGetValueAtIndex(v25, v13);
            if (FigCFEqual())
            {
              v19 = 0;
            }

            else
            {
              v19 = v18;
            }
          }

          else
          {
            v19 = 0;
          }

          v20 = CFArrayGetValueAtIndex(*type, v13);
          if (FigCFEqual())
          {
            v21 = 0;
          }

          else
          {
            v21 = v20;
          }

          FigCFArrayGetInt64AtIndex();
          ConnectionTypeForPort = vaeGetConnectionTypeForPort(0);
          v23 = vaeCopyVADEndpointTypeForPort(0);
          *&v31 = v15;
          *(&v31 + 1) = v21;
          v32 = v17;
          v33 = v23;
          v34 = v19;
          v35 = ConnectionTypeForPort;
          v36 = 0;
          MXVW_VectorVARouteInfoPushBack(a2, &v31);
          if (v23)
          {
            CFRelease(v23);
          }

          ++v13;
        }

        while (v13 < *a3);
      }

      if (v30)
      {
        CFRelease(v30);
        v30 = 0;
      }
    }

    else
    {
      *a3 = 0;
    }

    if (v27)
    {
      CFRelease(v27);
      v27 = 0;
    }

    if (*type)
    {
      CFRelease(*type);
      *type = 0;
    }

    if (v25)
    {
      CFRelease(v25);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

id CMSMVAUtility_CopyFigIODeviceNameFromVADPortTypes(int a1, unsigned int a2)
{
  if (a1 == 1886216809 && a2 == 1886545251)
  {
    return CFRetain(@"ReceiverAndMicrophone");
  }

  if (a1 == 1886222185 && a2 == 1885892727)
  {
    return CFRetain(@"HeadsetInOut");
  }

  if (a1 == 1886216809 && a2 == 1885892727)
  {
    return CFRetain(@"HeadphonesAndMicrophone");
  }

  if (a1 == 1886216809 && a2 == 1886613611)
  {
    return CFRetain(@"SpeakerAndMicrophone");
  }

  if (a1 == 1886216820 && a2 == 1885892706)
  {
    return CFRetain(@"HeadsetBT");
  }

  if (a1 == 1886680169 && a2 == 1886680175)
  {
    return CFRetain(@"TTY");
  }

  if (a1 == 1886153070 && a2 == 1886154613)
  {
    return CFRetain(@"LineInOut");
  }

  return CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(a2);
}

const __CFDictionary *vaemGetPortsInfoFromRouteChangeDescription(const __CFDictionary *result, const void **a2, const void **a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, const __CFDictionary **a8, uint64_t a9)
{
  v24 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v16 = result;
    Value = CFDictionaryGetValue(result, @"active devices");
    if (Value)
    {
      vaemGetPortListForDevice(Value, a9, a2, a3);
      if (a3)
      {
        if (*a3)
        {
          Count = CFArrayGetCount(*a3);
          if (Count >= 1)
          {
            v19 = Count;
            v20 = 0;
            while (([qword_1EB75D0E0 containsObject:{CFArrayGetValueAtIndex(*a3, v20)}] & 1) != 0)
            {
              if (v19 == ++v20)
              {
                goto LABEL_9;
              }
            }

            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            vaemConnectedPortsPropertyListenerGuts();
          }
        }
      }

LABEL_9:
      FigCFDictionaryGetInt64IfPresent();
      if (a6)
      {
        *a6 = 0;
      }

      FigCFDictionaryGetInt64IfPresent();
      if (a4)
      {
        *a4 = 0;
      }

      FigCFDictionaryGetInt64IfPresent();
      if (a5)
      {
        *a5 = 0;
      }

      FigCFDictionaryGetInt64IfPresent();
      if (a7)
      {
        *a7 = 0;
      }

      result = CFDictionaryGetValue(v16, @"siri input source UUID");
      if (a8 && result)
      {
        *a8 = result;
      }
    }

    else
    {
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void MXVW_VectorVARouteInfoPushBack(uint64_t a1, __int128 *a2)
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

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 >= v8)
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4);
    v13 = v12 + 1;
    if (v12 + 1 > 0x555555555555555)
    {
      std::vector<CMSRouteInfo>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 4);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x2AAAAAAAAAAAAAALL)
    {
      v15 = 0x555555555555555;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<VARouteInfo>>(a1, v15);
    }

    v16 = 48 * v12;
    v17 = *a2;
    v18 = a2[2];
    *(v16 + 16) = a2[1];
    *(v16 + 32) = v18;
    *v16 = v17;
    v11 = 48 * v12 + 48;
    v19 = *(a1 + 8) - *a1;
    v20 = v16 - v19;
    memcpy((v16 - v19), *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    v9 = *a2;
    v10 = a2[2];
    v7[1] = a2[1];
    v7[2] = v10;
    *v7 = v9;
    v11 = (v7 + 3);
  }

  *(a1 + 8) = v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<VARouteInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

CFMutableDictionaryRef vaemCopyDetailedRouteDescription(AudioObjectID a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = CFNumberCreate(v2, kCFNumberSInt32Type, &dword_1EB75E0D0);
  FigCFDictionarySetValue();
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = vaemCopyCurrentSiriInputDeviceUUID();
  FigCFDictionarySetValue();
  if (v5)
  {
    CFRelease(v5);
  }

  v24 = 0;
  v6 = vaemCopyAudioStreamIDsForScope(a1, 0, &v24);
  v7 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  v23 = v7;
  if (v24)
  {
    for (i = 0; i < v24; ++i)
    {
      v9 = v6[i];
      v10 = vaemCopyAssociatedPortsForStreamID(v9);
      if (v10)
      {
        v11 = v10;
        TypeID = CFArrayGetTypeID();
        if (TypeID == CFGetTypeID(v11))
        {
          vaemCopyPortDescriptions(a1, v9, v11, 0, &v23);
        }

        CFRelease(v11);
      }
    }
  }

  FigCFDictionarySetValue();
  free(v6);
  if (v7)
  {
    CFRelease(v7);
  }

  v22 = 0;
  v13 = vaemCopyAudioStreamIDsForScope(a1, 1, &v22);
  v14 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  v21 = v14;
  if (v22)
  {
    for (j = 0; j < v22; ++j)
    {
      v16 = v13[j];
      v17 = vaemCopyAssociatedPortsForStreamID(v16);
      if (v17)
      {
        v18 = v17;
        v19 = CFArrayGetTypeID();
        if (v19 == CFGetTypeID(v18))
        {
          vaemCopyPortDescriptions(a1, v16, v18, 1, &v21);
        }

        CFRelease(v18);
      }
    }
  }

  FigCFDictionarySetValue();
  free(v13);
  if (v14)
  {
    CFRelease(v14);
  }

  return Mutable;
}

CFTypeRef vaemCopyCurrentSiriInputDeviceUUID()
{
  if ((dword_1EB75E0D0 == 1936024681 || dword_1EB75E0D0 == 1936679529) && qword_1EB75E0D8)
  {
    return CFRetain(qword_1EB75E0D8);
  }

  else
  {
    return 0;
  }
}

void *vaemCopyAudioStreamIDsForScope(AudioObjectID a1, int a2, unsigned int *a3)
{
  if (a2 == 1)
  {
    v5 = 1768845428;
  }

  else
  {
    v5 = 1869968496;
  }

  v9 = v5;
  v10 = 0;
  size = 0x73746D2300000004;
  v6 = 0;
  if (!AudioObjectGetPropertyDataSize(a1, (&size + 4), 0, 0, &size))
  {
    v6 = malloc_type_malloc(size, 0xA83E168BuLL);
    if (!AudioObjectGetPropertyData(a1, (&size + 4), 0, 0, &size, v6) && v6 && size)
    {
      if (a3)
      {
        *a3 = size >> 2;
      }
    }

    else
    {
      free(v6);
      return 0;
    }
  }

  return v6;
}

uint64_t vaemCopyAssociatedPortsForStreamID(AudioObjectID a1)
{
  outData = 0;
  inQualifierData = 1935895670;
  *&inAddress.mSelector = 0x676C6F6273617073;
  inAddress.mElement = 0;
  v2 = 8;
  if (AudioObjectGetPropertyData(a1, &inAddress, 4u, &inQualifierData, &v2, &outData))
  {
    return 0;
  }

  else
  {
    return outData;
  }
}

void vaemCopyPortDescriptions(AudioObjectID a1, AudioObjectID a2, CFArrayRef theArray, int a4, CFMutableArrayRef *a5)
{
  if (*a5)
  {
    v5 = theArray == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v8 = 0;
      v45 = *MEMORY[0x1E695E480];
      if (a4 == 1)
      {
        v9 = 1768845428;
      }

      else
      {
        v9 = 1869968496;
      }

      v36 = v9;
      v37 = a1;
      v35 = a4;
      v39 = *MEMORY[0x1E695E4C0];
      v40 = *MEMORY[0x1E695E4D0];
      do
      {
        FigCFArrayGetInt64AtIndex();
        Mutable = CFDictionaryCreateMutable(v45, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (a4 == 1)
        {
          v11 = vaeCopyFigInputDeviceNameFromVADPort(0);
        }

        else
        {
          v11 = vaeCopyFigOutputDeviceNameFromVADPort(0);
        }

        v12 = v11;
        FigCFDictionarySetValue();
        if (v12)
        {
          CFRelease(v12);
        }

        v13 = vaeCopySpecificNameForPort(0);
        if (FigCFEqual())
        {
          CFRetain(@"AirPlay");
          if (v13)
          {
            CFRelease(v13);
          }

          v14 = @"AirPlay";
        }

        else
        {
          v14 = v13;
        }

        v44 = v14;
        FigCFDictionarySetValue();
        v15 = vaeCopyDeviceIdentifierFromVADPort(0);
        FigCFDictionarySetValue();
        if (v15)
        {
          CFRelease(v15);
        }

        vaeIsHeadphonesPort(0);
        FigCFDictionarySetValue();
        vaeIsVoiceProcessingSupportedOnVADPort(0);
        FigCFDictionarySetValue();
        vaeIsLiveListenSupportedOnVADPort(0);
        FigCFDictionarySetValue();
        if (vaeGetPortTypeFromPortID(0) == 1885892674)
        {
          vaeDoesPortSupportDoAP(0);
          FigCFDictionarySetValue();
        }

        vaeDoesPortSupportSoftwareVolume(0);
        FigCFDictionarySetValue();
        vaeDoesPortSupportSoftwareVolume(0);
        FigCFDictionarySetValue();
        if (MX_FeatureFlags_IsPersonalTranslatorEnabled())
        {
          vaeDoesPortSupportFarFieldCapture(0);
          FigCFDictionarySetValue();
          vaeIsFarFieldCaptureEnabled(0);
          FigCFDictionarySetValue();
        }

        if (MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled())
        {
          vaeDoesPortSupportBluetoothHighQualityContentCapture(0);
          FigCFDictionarySetValue();
          vaeIsBluetoothHighQualityContentCaptureEnabled(0);
          FigCFDictionarySetValue();
        }

        v16 = vaeCopyVADEndpointTypeForPort(0);
        FigCFDictionarySetValue();
        if (v16)
        {
          CFRelease(v16);
        }

        SInt64 = FigCFNumberCreateSInt64();
        FigCFDictionarySetValue();
        if (SInt64)
        {
          CFRelease(SInt64);
        }

        v18 = vaeCopySubPortDescriptionsForPortAndRouteConfiguration(0, 0, 0, 0, 0);
        FigCFDictionarySetValue();
        if (v18)
        {
          CFRelease(v18);
        }

        v19 = vaeCopyHiddenSubPortDescriptionsForPort(0);
        FigCFDictionarySetValue();
        if (v19)
        {
          CFRelease(v19);
        }

        v20 = vaeCopySelectedDataSourceForPortAndRouteConfiguration(0, 0, 0, 0);
        FigCFDictionarySetValue();
        if (v20)
        {
          CFRelease(v20);
        }

        v50 = 0;
        outData = 0u;
        v49 = 0u;
        *&inAddress.mSelector = 0x676C6F6273666D74;
        inAddress.mElement = 0;
        ioDataSize = 40;
        if (AudioObjectGetPropertyData(a2, &inAddress, 0, 0, &ioDataSize, &outData))
        {
          v21 = 0;
        }

        else
        {
          v21 = HIDWORD(v49);
        }

        v22 = FigCFNumberCreateSInt64();
        FigCFDictionarySetValue();
        if (v22)
        {
          CFRelease(v22);
        }

        if (!v21)
        {
          goto LABEL_61;
        }

        v43 = v8;
        v23 = CFArrayCreateMutable(v45, 0, MEMORY[0x1E695E9C0]);
        inAddress.mSelector = 0;
        LODWORD(outData) = 1936876644;
        *(&outData + 4) = v36;
        if (AudioObjectGetPropertyDataSize(a1, &outData, 0, 0, &inAddress.mSelector))
        {
          v24 = 0;
        }

        else
        {
          v24 = malloc_type_malloc(inAddress.mSelector, 0xE6E780F3uLL);
          if (AudioObjectGetPropertyData(a1, &outData, 0, 0, &inAddress.mSelector, v24))
          {
            v25 = v45;
            if (v24)
            {
              free(v24);
              v24 = 0;
            }

            goto LABEL_47;
          }
        }

        v25 = v45;
LABEL_47:
        v26 = vaeCopyChannelNamesForPortAndNumberOfChannels(0, v44, v21);
        if (v26)
        {
          v27 = v26;
          v28 = CFArrayGetCount(v26);
          if (v28 >= 1)
          {
            v29 = v28;
            v30 = 0;
            for (i = 0; i != v29; ++i)
            {
              v32 = CFDictionaryCreateMutable(v25, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              CFArrayGetValueAtIndex(v27, i);
              FigCFDictionarySetValue();
              if (v24 && v30 < v24[2])
              {
                v33 = v24[5 * v30 + 3];
                v34 = FigCFNumberCreateSInt64();
                FigCFDictionarySetValue();
                if (v34)
                {
                  CFRelease(v34);
                }

                ++v30;
                v25 = v45;
              }

              if (v32)
              {
                CFArrayAppendValue(v23, v32);
                CFRelease(v32);
              }
            }
          }

          CFRelease(v27);
          a4 = v35;
        }

        free(v24);
        FigCFDictionarySetValue();
        a1 = v37;
        v8 = v43;
        if (v23)
        {
          CFRelease(v23);
        }

LABEL_61:
        if (v44)
        {
          CFRelease(v44);
        }

        if (Mutable)
        {
          CFArrayAppendValue(*a5, Mutable);
          CFRelease(Mutable);
        }

        ++v8;
      }

      while (v8 != Count);
    }
  }
}

void vaemVADAvailableSampleRatesListenerGuts_f()
{
  cmsmReassertPreferredSampleRate();
  [+[MXSessionManager sharedInstance](MXSessionManager refreshDeviceSampleRateCache];
  v0 = MXGetNotificationSenderQueue();

  MXDispatchAsyncFunction("vaemVADAvailableSampleRatesListenerGuts_f", "CMSessionManager_VAEndpointManager.m", 5639, 0, 0, v0, 0, CMSMNotificationUtility_PostAvailableSampleRatesDidChange_f);
}

uint64_t CMSUtility_IsPlayingToSystemSoundRemoteVAD(void *a1)
{
  v2 = [a1 audioDestinationPriority];
  if (a1 && v2)
  {
    [+[MXSessionManager sharedInstance](MXSessionManager getAvailableAudioDestination:"getAvailableAudioDestination:", v2];
  }

  return FigCFEqual();
}

uint64_t CMSUtility_ShouldSessionSetInputSampleRate(void *a1)
{
  if (CMSMUtility_IsCategoryInputOnly([a1 audioCategory]))
  {
    return 1;
  }

  result = [a1 preferredDecoupledInputOutput];
  if (result)
  {
    return vaemDecoupledInputVADExists();
  }

  return result;
}

void cmsmReassertPreferredSampleRate()
{
  v25 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsAudioFormatArbitrationEnabled())
  {
    v0 = *MEMORY[0x1E69E9840];

    cmsmUpdateDeviceAudioFormatConfigIfNeeded(1);
  }

  else
  {
    v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v2 = [v1 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = 0;
      ShouldSessionSetInputSampleRate = 0;
      v6 = 0;
      v7 = *v21;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v1);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          if (([v9 currentlyControllingFlags] & 2) != 0)
          {

            v4 = v9;
            ShouldSessionSetInputSampleRate = CMSUtility_ShouldSessionSetInputSampleRate(v9);
            CurrentOutputVADID = CMSUtility_GetCurrentOutputVADID(v9);
            IsCategoryInputOnly = CMSMUtility_IsCategoryInputOnly([v9 audioCategory]);
            [v9 preferredHardwareFormat];
            if (vaemIsNotCurrentDeviceFormat(CurrentOutputVADID, IsCategoryInputOnly))
            {
              v13 = CMSUtility_GetCurrentOutputVADID(v9);
              v14 = [v9 preferredHardwareFormat];
              if (v14)
              {
                v12 = CFRetain(v14);
              }

              else
              {
                v12 = 0;
              }

              vaemSetDeviceFormat(v13, v12, 0);
LABEL_23:
              if (ShouldSessionSetInputSampleRate)
              {
                [v4 preferredInputSampleRate];
              }

              else
              {
                [v4 preferredOutputSampleRate];
              }

              v16 = v15;
              v17 = [v4 preferredIOBufferFrames];
              [v4 preferredIOBufferDuration];
              cmsSetDeviceSampleRateAndBufferSize(v4, v17, ShouldSessionSetInputSampleRate != 0, v16, v18);

              if (v12)
              {
                CFRelease(v12);
              }

              goto LABEL_28;
            }

            v6 = 1;
          }
        }

        v3 = [v1 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }

      if (v6)
      {
        v12 = 0;
        goto LABEL_23;
      }
    }

    else
    {

      v4 = 0;
    }

LABEL_28:
    v19 = *MEMORY[0x1E69E9840];
  }
}

uint64_t CMSMNotificationUtility_PostAvailableVirtualAudioDevicesDidChange(void *a1)
{
  result = [a1 isEqualToArray:CMSMNotificationUtility_PostAvailableVirtualAudioDevicesDidChange_mostRecentAvailableVADUIDs];
  if ((result & 1) == 0)
  {
    +[MXSystemController notifyAll:payload:dontPostIfSuspended:](MXSystemController, "notifyAll:payload:dontPostIfSuspended:", @"AvailableVirtualAudioDevicesDidChange", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a1, @"AvailableVADUIDs", 0}], 0);

    result = a1;
    CMSMNotificationUtility_PostAvailableVirtualAudioDevicesDidChange_mostRecentAvailableVADUIDs = result;
  }

  return result;
}

uint64_t CMSMNotificationUtility_PostSpeechDetectionDevicePresentDidChange(uint64_t result)
{
  if (CMSMNotificationUtility_PostSpeechDetectionDevicePresentDidChange_cachedSpeechDetectionDevicePresent != result)
  {
    v1 = result;
    result = +[MXSystemController notifyAll:payload:dontPostIfSuspended:](MXSystemController, "notifyAll:payload:dontPostIfSuspended:", @"SpeechDetectionDevicePresentDidChange", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", result != 0), @"Present", 0}], 0);
    CMSMNotificationUtility_PostSpeechDetectionDevicePresentDidChange_cachedSpeechDetectionDevicePresent = v1;
  }

  return result;
}

uint64_t vaemAddVADVolumeRampStatusChangeListener(AudioObjectID a1)
{
  v9 = *MEMORY[0x1E69E9840];
  result = MX_FeatureFlags_IsAdaptiveVolumeControlEnabled();
  if (result)
  {
    *&inAddress.mSelector = *"spmrptuo";
    inAddress.mElement = 0;
    result = AudioObjectAddPropertyListener(a1, &inAddress, vaemVADVolumeRampStatusChangeListener, 0);
    v3 = result;
    v8 = result;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v3)
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled()
{
  if (MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled_isAirPodsInEarRoutingWithCarsAndSpeakersEnabled;
}

void vaemConnectedPortsPropertyListenerGuts()
{
  v12 = *MEMORY[0x1E69E9840];
  IsConnected = vaemHeadphoneJackIsConnected(0);
  HasInput = vaemHeadphoneJackHasInput(0);
  v2 = vaemGetVADPortIDFromVADPortType(1886154613) != 0;
  FigSimpleMutexLock();
  if (byte_1EB75D17A != v2)
  {
    PVMRemoveVolumesForDeviceRoute(@"LineOut", 0, 0);
    byte_1EB75D17A = v2;
    if (dword_1EB75DE40)
    {
      v3 = OUTLINED_FUNCTION_10_1();
      if (os_log_type_enabled(v3, type))
      {
        v4 = v11;
      }

      else
      {
        v4 = v11 & 0xFFFFFFFE;
      }

      if (v4)
      {
        OUTLINED_FUNCTION_12_2();
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_5();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_0_0();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (byte_1EB75D178 != IsConnected || byte_1EB75D179 != HasInput)
  {
    byte_1EB75D178 = IsConnected;
    byte_1EB75D179 = HasInput;
    if (dword_1EB75DE40)
    {
      v6 = OUTLINED_FUNCTION_10_1();
      v7 = os_log_type_enabled(v6, type);
      if (OUTLINED_FUNCTION_3_0(v7))
      {
        OUTLINED_FUNCTION_12_2();
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_5();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_13();
    }

    CMSMNotificationUtility_PostHeadphoneJackIsConnectedDidChange();
  }

  FigSimpleMutexUnlock();
  vaemUpdateConnectedOutputPortsList();
  vaemUpdateConnectedInputPortsList();
  cmsmUpdatePickableRouteDescriptionLists(1);
  if (byte_1EB75D158)
  {
    vaemUpdateSystemHasAudioInputDeviceState();
    v8 = vaemCopyActiveInputRouteNamesForRouteConfiguration(@"PlayAndRecord", @"Default", 0, 0);
    if (!FigCFEqual())
    {
      if (qword_1EB75D150)
      {
        CFRelease(qword_1EB75D150);
        qword_1EB75D150 = 0;
      }

      if (v8)
      {
        qword_1EB75D150 = CFRetain(v8);
      }

      CMSMNotificationUtility_PostActiveInputRouteForPlayAndRecordNoBluetoothDidChange();
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void vaemUpdateConnectedOutputPortsList()
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  obj = vaemCopyConnectedPortsForPortTypeAndScope(0, 0x6F757470u);
  if (![obj count])
  {
    v51 = *MEMORY[0x1E69E9840];

    return;
  }

  FigSimpleMutexLock();
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  theArray = objc_alloc_init(MEMORY[0x1E695DF70]);
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v3 = &qword_1EB75D000;
  v4 = [qword_1EB75D0E0 allObjects];
  v5 = [v4 countByEnumeratingWithState:&v126 objects:v151 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v127;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v127 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v126 + 1) + 8 * i);
        if (([obj containsObject:v9] & 1) == 0)
        {
          [v2 addObject:v9];
          [qword_1EB75D0E0 removeObject:v9];
          v10 = +[MXAudioAccessoryServices sharedInstance];
          v11 = [v9 unsignedIntValue];
          v12 = v10;
          v3 = &qword_1EB75D000;
          [(MXAudioAccessoryServices *)v12 handlePortDisconnected:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v126 objects:v151 count:16];
    }

    while (v6);
  }

  v101 = v2;
  v113 = v1;
  v102 = v0;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v13 = [obj countByEnumeratingWithState:&v122 objects:v150 count:16];
  v14 = theArray;
  if (v13)
  {
    v15 = v13;
    v116 = *v123;
    do
    {
      v16 = 0;
      v115 = v15;
      do
      {
        if (*v123 != v116)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v122 + 1) + 8 * v16);
        v18 = [v17 unsignedIntValue];
        v19 = vaeCopyNameForPort(v18);
        v20 = vaeCopyDeviceIdentifierFromVADPort(v18);
        PortTypeFromPortID = vaeGetPortTypeFromPortID(v18);
        ConnectionTypeForPort = vaeGetConnectionTypeForPort(v18);
        if (ConnectionTypeForPort == 1885566825)
        {
          if (([v3[28] containsObject:v17] & 1) == 0)
          {
            [v113 addObject:v17];
            if (dword_1EB75DE40)
            {
              v131 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v28 = v131;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v29 = v28;
              }

              else
              {
                v29 = v28 & 0xFFFFFFFE;
              }

              if (v29)
              {
                v30 = HIBYTE(PortTypeFromPortID);
                v109 = BYTE2(PortTypeFromPortID);
                v111 = PortTypeFromPortID;
                v105 = BYTE1(PortTypeFromPortID);
                DoesPortSupportRoutability = vaeDoesPortSupportRoutability(v18);
                IsPortRoutable = vaeIsPortRoutable(v18);
                IsQuiesceableWiredPort = vaeIsQuiesceableWiredPort(v18);
                *cf = 136317699;
                *&cf[4] = "vaemUpdateConnectedOutputPortsList";
                v134 = 2113;
                *v135 = v19;
                *&v135[8] = 2113;
                *&v135[10] = v20;
                *&v135[18] = 1024;
                *&v135[20] = v30;
                *&v135[24] = 1024;
                *v136 = v109;
                *&v136[4] = 1024;
                *v137 = v105;
                *&v137[4] = 1024;
                *&v137[6] = v111;
                v138 = 1024;
                v139 = v18;
                v140 = 1024;
                v141 = DoesPortSupportRoutability;
                v142 = 1024;
                v143 = IsPortRoutable;
                v144 = 1024;
                v145 = IsQuiesceableWiredPort;
                LODWORD(v99) = 80;
                v97 = cf;
LABEL_33:
                _os_log_send_and_compose_impl();
              }

LABEL_34:
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v14 = theArray;
              v15 = v115;
              v3 = &qword_1EB75D000;
            }
          }
        }

        else
        {
          v23 = ConnectionTypeForPort;
          if (ConnectionTypeForPort == 1885544823 && !FigCFEqual())
          {
            if (([v3[28] containsObject:v17] & 1) == 0)
            {
              if (!MX_FeatureFlags_IsOnenessEnabled() || PortTypeFromPortID != 1885565807)
              {
                [v102 addObject:v17];
              }

              if (dword_1EB75DE40)
              {
                v131 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v34 = v131;
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
                  v106 = HIBYTE(PortTypeFromPortID);
                  v110 = BYTE2(PortTypeFromPortID);
                  v112 = PortTypeFromPortID;
                  v104 = BYTE1(PortTypeFromPortID);
                  DoesBTPortSupportInEarDetection = vaeDoesBTPortSupportInEarDetection(v18);
                  HasUserEnabledInEarDetectionForBTPort = vaeHasUserEnabledInEarDetectionForBTPort(v18, 0);
                  DoesPortSupportMultipleConnections = vaeDoesPortSupportMultipleConnections(v18);
                  DoesPortSupportStereoHFP = vaeDoesPortSupportStereoHFP(v18);
                  DoesPortSupportHighQualityBiDirectionalAudio = vaeDoesPortSupportHighQualityBiDirectionalAudio(v18);
                  *cf = 136318211;
                  *&cf[4] = "vaemUpdateConnectedOutputPortsList";
                  v134 = 2113;
                  *v135 = v19;
                  *&v135[8] = 2113;
                  *&v135[10] = v20;
                  *&v135[18] = 1024;
                  *&v135[20] = v106;
                  *&v135[24] = 1024;
                  *v136 = v110;
                  *&v136[4] = 1024;
                  *v137 = v104;
                  *&v137[4] = 1024;
                  *&v137[6] = v112;
                  v138 = 1024;
                  v139 = v18;
                  v140 = 1024;
                  v141 = DoesBTPortSupportInEarDetection;
                  v142 = 1024;
                  v143 = HasUserEnabledInEarDetectionForBTPort;
                  v144 = 1024;
                  v145 = DoesPortSupportMultipleConnections;
                  v146 = 1024;
                  v147 = DoesPortSupportStereoHFP;
                  v148 = 1024;
                  v149 = DoesPortSupportHighQualityBiDirectionalAudio;
                  LODWORD(v99) = 92;
                  v97 = cf;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v14 = theArray;
                v15 = v115;
                v3 = &qword_1EB75D000;
              }

              -[MXAudioAccessoryServices handleNewWirelessPortConnected:](+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices, "sharedInstance", v97, v99), "handleNewWirelessPortConnected:", [v17 unsignedIntValue]);
            }
          }

          else if (([v3[28] containsObject:v17] & 1) == 0 && dword_1EB75DE40)
          {
            v131 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v25 = v131;
            if (os_log_type_enabled(v24, type))
            {
              v26 = v25;
            }

            else
            {
              v26 = v25 & 0xFFFFFFFE;
            }

            if (v26)
            {
              *cf = 136317955;
              *&cf[4] = "vaemUpdateConnectedOutputPortsList";
              v134 = 2113;
              *v135 = v19;
              *&v135[8] = 1024;
              *&v135[10] = HIBYTE(v23);
              *&v135[14] = 1024;
              *&v135[16] = BYTE2(v23);
              *&v135[20] = 1024;
              *&v135[22] = BYTE1(v23);
              *v136 = 1024;
              *&v136[2] = v23;
              *v137 = 2113;
              *&v137[2] = v20;
              v138 = 1024;
              v139 = HIBYTE(PortTypeFromPortID);
              v140 = 1024;
              v141 = BYTE2(PortTypeFromPortID);
              v142 = 1024;
              v143 = BYTE1(PortTypeFromPortID);
              v144 = 1024;
              v145 = PortTypeFromPortID;
              v146 = 1024;
              v147 = v18;
              LODWORD(v99) = 86;
              v97 = cf;
              goto LABEL_33;
            }

            goto LABEL_34;
          }
        }

        if (([v3[28] containsObject:{v17, v97, v99}] & 1) == 0)
        {
          [v3[28] addObject:v17];
          [(__CFArray *)v14 addObject:v17];
        }

        if (v19)
        {
          CFRelease(v19);
        }

        if (v20)
        {
          CFRelease(v20);
        }

        ++v16;
      }

      while (v15 != v16);
      v39 = [obj countByEnumeratingWithState:&v122 objects:v150 count:16];
      v15 = v39;
    }

    while (v39);
  }

  v40 = v102;
  v41 = v113;
  if (!dword_1EB75E0B8)
  {
    if (obj && (Count = CFArrayGetCount(obj), Count >= 1))
    {
      v43 = Count;
      v44 = 0;
      v45 = 0;
      v46 = obj;
      do
      {
        LODWORD(valuePtr[0]) = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v46, v44);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, valuePtr);
        v48 = vaeCopyDeviceIdentifierFromVADPort(valuePtr[0]);
        if (v48)
        {
          v49 = v48;
          if (FigCFEqual())
          {
            v50 = vaeCopyNameForPort(valuePtr[0]);
            if (FigCFEqual())
            {
              v45 = valuePtr[0];
            }

            if (v50)
            {
              CFRelease(v50);
            }
          }

          CFRelease(v49);
        }

        ++v44;
        v46 = obj;
      }

      while (v43 != v44);
    }

    else
    {
      v45 = 0;
    }

    dword_1EB75E0B8 = v45;
    v14 = theArray;
  }

  vaemUpdatePortIDEndpointCache(v101, v14);
  vaemUpdatePortListeners(v14);
  FigSimpleMutexUnlock();
  if (vaemUpdateSharedAudioRouteState(v101, v14))
  {
    if (CMSM_IDSConnection_IsTimerForRemotePlayingInfoReplyExpired())
    {
      if (dword_1EB75DE40)
      {
        v131 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v53 = v131;
        if (os_log_type_enabled(v52, type))
        {
          v54 = v53;
        }

        else
        {
          v54 = v53 & 0xFFFFFFFE;
        }

        if (v54)
        {
          *cf = 136315138;
          *&cf[4] = "vaemUpdateConnectedOutputPortsList";
          LODWORD(v99) = 12;
          v97 = cf;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v61 = v14;
    }

    else if (CMSMDeviceState_ItsAnAppleWatch() || !byte_1EB75E138)
    {
      if (CMSMDeviceState_ItsAnAppleWatch() || CMSM_IDSConnection_IsPairedToAnotherDevice())
      {
        if (CMSM_IDSConnection_IsNearbyPairedDevicePresent())
        {
          if (dword_1EB75DE40)
          {
            v131 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v59 = v131;
            if (os_log_type_enabled(v58, type))
            {
              v60 = v59;
            }

            else
            {
              v60 = v59 & 0xFFFFFFFE;
            }

            if (v60)
            {
              *cf = 136315138;
              *&cf[4] = "vaemUpdateConnectedOutputPortsList";
              LODWORD(v99) = 12;
              v97 = cf;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSM_IDSConnection_DelaySharedAudioRoutingUntilRemoteInitialPlayingInfoIsReceived(v14);
        }

        goto LABEL_104;
      }

      if (dword_1EB75DE40)
      {
        v131 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v94 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v95 = v131;
        if (os_log_type_enabled(v94, type))
        {
          v96 = v95;
        }

        else
        {
          v96 = v95 & 0xFFFFFFFE;
        }

        if (v96)
        {
          *cf = 136315138;
          *&cf[4] = "vaemUpdateConnectedOutputPortsList";
          LODWORD(v99) = 12;
          v97 = cf;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v61 = v14;
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v131 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v56 = v131;
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
          *cf = 136315138;
          *&cf[4] = "vaemUpdateConnectedOutputPortsList";
          LODWORD(v99) = 12;
          v97 = cf;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v61 = v14;
    }

    vaemTakeOwnershipOnSharedAudioRoute(v61);
  }

LABEL_104:
  if ([v102 count])
  {
    FigRoutingManagerNewWirelessPortsAdded(v102);
  }

  if ([v113 count])
  {
    FigRoutingManagerNewWiredPortsAdded(v113);
  }

  PortOfTypeInArray = CMSMVAUtility_GetPortOfTypeInArray(1886614639, v14);
  v63 = CMSMVAUtility_GetPortOfTypeInArray(1886745455, obj);
  if (v63 && PortOfTypeInArray)
  {
    v64 = v63;
    v131 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v66 = v131;
    if (os_log_type_enabled(v65, type))
    {
      v67 = v66;
    }

    else
    {
      v67 = v66 & 0xFFFFFFFE;
    }

    if (v67)
    {
      *cf = 136315650;
      *&cf[4] = "vaemUpdateConnectedOutputPortsList";
      v134 = 1024;
      *v135 = v64;
      *&v135[4] = 1024;
      *&v135[6] = PortOfTypeInArray;
      LODWORD(v100) = 24;
      v98 = cf;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled())
  {
    if (dword_1EB75DE40)
    {
      v131 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v69 = v131;
      if (os_log_type_enabled(v68, type))
      {
        v70 = v69;
      }

      else
      {
        v70 = v69 & 0xFFFFFFFE;
      }

      if (v70)
      {
        v71 = [(__CFArray *)v14 count];
        *cf = 136315394;
        *&cf[4] = "vaemProcessCarPlayCustomizedRouting";
        v134 = 2048;
        *v135 = v71;
        LODWORD(v100) = 22;
        v98 = cf;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([(__CFArray *)v14 count:v98])
    {
      v72 = 0;
      do
      {
        v73 = vaeCopyNameForPort([-[__CFArray objectAtIndex:](v14 objectAtIndex:{v72), "intValue"}]);
        if (dword_1EB75DE40)
        {
          v131 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v75 = v131;
          if (os_log_type_enabled(v74, type))
          {
            v76 = v75;
          }

          else
          {
            v76 = v75 & 0xFFFFFFFE;
          }

          if (v76)
          {
            v77 = [(__CFArray *)theArray objectAtIndex:v72];
            *cf = 136315906;
            *&cf[4] = "vaemProcessCarPlayCustomizedRouting";
            v134 = 1024;
            *v135 = v72;
            *&v135[4] = 2114;
            *&v135[6] = v77;
            *&v135[14] = 2114;
            *&v135[16] = v73;
            LODWORD(v100) = 38;
            v98 = cf;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v14 = theArray;
        }

        if (v73)
        {
          CFRelease(v73);
        }

        ++v72;
      }

      while ([(__CFArray *)v14 count:v98]> v72);
    }

    v78 = CMSMVAUtility_GetPortOfTypeInArray(1886614639, v14);
    if (v78)
    {
      v79 = v78;
      v40 = v102;
      v41 = v113;
      if (dword_1EB75DE40)
      {
        v131 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v81 = v131;
        if (os_log_type_enabled(v80, type))
        {
          v82 = v81;
        }

        else
        {
          v82 = v81 & 0xFFFFFFFE;
        }

        if (v82)
        {
          *cf = 136315394;
          *&cf[4] = "vaemProcessCarPlayCustomizedRouting";
          v134 = 1024;
          *v135 = v79;
          LODWORD(v100) = 18;
          v98 = cf;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      valuePtr[0] = [MEMORY[0x1E696AD98] numberWithInt:{v79, v98, v100}];
      v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:valuePtr count:1];
      *cf = 0;
      FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(cf);
      FigRoutingManagerProcessCustomizedRouting(v86, *cf);
      if (*cf)
      {
        CFRelease(*cf);
      }
    }

    else
    {
      v40 = v102;
      v41 = v113;
      if (dword_1EB75DE40)
      {
        v131 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v83 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v84 = v131;
        if (os_log_type_enabled(v83, type))
        {
          v85 = v84;
        }

        else
        {
          v85 = v84 & 0xFFFFFFFE;
        }

        if (v85)
        {
          *cf = 136315138;
          *&cf[4] = "vaemProcessCarPlayCustomizedRouting";
          LODWORD(v100) = 12;
          v98 = cf;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  else
  {
    CMSMVAUtility_RouteDefaultVADToCarPlayIfNecessary(v14, 1);
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v87 = [(__CFArray *)v14 countByEnumeratingWithState:&v118 objects:v132 count:16, v98, v100];
  if (v87)
  {
    v88 = v87;
    v89 = *v119;
    while (2)
    {
      for (j = 0; j != v88; ++j)
      {
        if (*v119 != v89)
        {
          objc_enumerationMutation(v14);
        }

        if (-[MXAudioAccessoryServices isPortManaged:](+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices, "sharedInstance"), "isPortManaged:", [*(*(&v118 + 1) + 8 * j) unsignedIntValue]))
        {
          if (MX_FeatureFlags_IsSmartRoutingOnActivationEnabled())
          {
            v91 = [+[MXSessionManager sharedInstance](MXSessionManager copyHighestPriorityActiveSession:"copyHighestPriorityActiveSession:deviceIdentifier:" deviceIdentifier:0x1F2893B50, 0];
          }

          else
          {
            v91 = CMSM_CopyHighestPriorityLocalPlayingSession(1);
          }

          v92 = v91;
          if (v91)
          {
            CMSUtility_RouteToPreferredRouteIfRequired(v91, 0, 9);
          }

          goto LABEL_169;
        }
      }

      v88 = [(__CFArray *)v14 countByEnumeratingWithState:&v118 objects:v132 count:16];
      if (v88)
      {
        continue;
      }

      break;
    }
  }

LABEL_169:
  FigPredictedRouting_UpdatePredictedRoute(1);
  [+[MXSessionManager sharedInstance](MXSessionManager updateCachedContinuityScreenOutputPortID];

  v93 = *MEMORY[0x1E69E9840];
}

void vaemCancelOutputVolumeChangeTimer()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = qword_1EB75D0B0;
  if (qword_1EB75D0B0)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v0 = qword_1EB75D0B0;
    }

    dispatch_source_cancel(v0);
    if (qword_1EB75D0B0)
    {
      dispatch_release(qword_1EB75D0B0);
      qword_1EB75D0B0 = 0;
    }
  }

  byte_1EB75D0B8 = 0;
  v2 = *MEMORY[0x1E69E9840];
}

const void *CMSMUtility_GetCurrentRouteTypeForSystemSoundAtIndex(CFIndex a1)
{
  FigSimpleMutexLock();
  Count = qword_1EB75E0B0;
  if (qword_1EB75E0B0)
  {
    Count = CFArrayGetCount(qword_1EB75E0B0);
  }

  if (Count <= a1)
  {
    ValueAtIndex = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_1EB75E0B0, a1);
  }

  FigSimpleMutexUnlock();
  return ValueAtIndex;
}

void CMSMUtility_UpdateSharePlayVolumeBehaviours()
{
  if (MX_FeatureFlags_IsSharePlayEnabled())
  {
    v0 = MXGetSerialQueue();

    MXDispatchAsync("CMSMUtility_UpdateSharePlayVolumeBehaviours", "CMSessionManager_Utilities.m", 6433, 0, 0, v0, &__block_literal_global_417);
  }
}

void CMSMUtility_UpdateCurrentRoutesInfo(const __CFArray *a1, const __CFArray *a2, void *a3, int a4)
{
  if (a1)
  {
    VectorCMSRouteInfoSize = MXVW_GetVectorCMSRouteInfoSize(qword_1EB75E0C0);
    Count = CFArrayGetCount(a1);
    dword_1EB75E0CC = Count;
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v45 = 0;
        FigCFArrayGetInt64AtIndex();
        if (i >= VectorCMSRouteInfoSize)
        {
          *cf = 0u;
          memset(v51, 0, 28);
          v51[1].i32[3] = v45;
          MXVW_VectorCMSRouteInfoPushBack(qword_1EB75E0C0, cf);
        }

        else
        {
          *(MXVW_GetCMSRouteInfoPtrAt(qword_1EB75E0C0, i) + 44) = v45;
        }
      }
    }
  }

  if (a2)
  {
    v11 = MXVW_GetVectorCMSRouteInfoSize(qword_1EB75E0C0);
    v12 = CFArrayGetCount(a2);
    dword_1EB75E0C8 = v12;
    if (v12 >= 1)
    {
      for (j = 0; j != v12; ++j)
      {
        v45 = 0;
        FigCFArrayGetInt64AtIndex();
        v14 = vaeCopyVADEndpointTypeForPort(0);
        if (j >= v11)
        {
          memset(v51, 0, sizeof(v51));
          cf[0] = 0;
          cf[1] = v14;
          MXVW_VectorCMSRouteInfoPushBack(qword_1EB75E0C0, cf);
        }

        else
        {
          CMSRouteInfoPtrAt = MXVW_GetCMSRouteInfoPtrAt(qword_1EB75E0C0, j);
          *(CMSRouteInfoPtrAt + 40) = 0;
          v16 = *(CMSRouteInfoPtrAt + 8);
          *(CMSRouteInfoPtrAt + 8) = v14;
          if (v14)
          {
            CFRetain(v14);
          }

          if (v16)
          {
            CFRelease(v16);
          }
        }

        if (v14)
        {
          CFRelease(v14);
        }
      }
    }
  }

  v17 = MXVW_GetVectorCMSRouteInfoSize(qword_1EB75E0C0);
  if (a3 && a4)
  {
    v18 = v17;
    v19 = 0;
    do
    {
      memset(v51, 0, sizeof(v51));
      *cf = 0u;
      MXVW_GetCMSRouteInfoAt(a3, v19, cf);
      if (v18 <= v19)
      {
        v48 = 0;
        v49 = 0;
        v45 = cf[0];
        v46 = vextq_s8(v51[0], v51[0], 8uLL);
        v47 = cf[1];
        MXVW_VectorCMSRouteInfoPushBack(qword_1EB75E0C0, &v45);
      }

      else
      {
        v20 = MXVW_GetCMSRouteInfoPtrAt(qword_1EB75E0C0, v19);
        v21 = *v20;
        v22 = cf[0];
        *v20 = cf[0];
        if (v22)
        {
          CFRetain(v22);
        }

        if (v21)
        {
          CFRelease(v21);
        }

        v23 = *(v20 + 16);
        v24 = v51[0].i64[0];
        *(v20 + 16) = v51[0].i64[0];
        if (v24)
        {
          CFRetain(v24);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        v25 = *(v20 + 24);
        v26 = cf[1];
        *(v20 + 24) = cf[1];
        if (v26)
        {
          CFRetain(v26);
        }

        if (v25)
        {
          CFRelease(v25);
        }

        v27 = *(v20 + 8);
        v28 = v51[0].i64[1];
        *(v20 + 8) = v51[0].i64[1];
        if (v28)
        {
          CFRetain(v28);
        }

        if (v27)
        {
          CFRelease(v27);
        }

        v29 = *(v20 + 32);
        if (v29)
        {
          CFRelease(v29);
          *(v20 + 32) = 0;
        }
      }

      ++v19;
    }

    while (a4 != v19);
  }

  v30 = CMSMUtility_CopyCurrentRouteTypes();
  if (FigCFArrayContainsValue() && a4)
  {
    v31 = 0;
    v32 = *MEMORY[0x1E69618D0];
    v33 = *MEMORY[0x1E69621D8];
    v34 = *MEMORY[0x1E695E480];
    do
    {
      CFArrayGetValueAtIndex(v30, v31);
      if (FigCFEqual() || FigCFEqual())
      {
        MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, v31, v44);
        v35 = FigRoutingManagerCopyEndpointWithDeviceID(v44[2], 1, v32, qword_1EB75E190);
        if (v35)
        {
          v36 = v35;
          cf[0] = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          VTable = CMBaseObjectGetVTable();
          v39 = *(*(VTable + 8) + 48);
          if (v39)
          {
            v40 = *(VTable + 8) + 48;
            v39(CMBaseObject, v33, v34, cf);
          }

          v41 = MXVW_GetCMSRouteInfoPtrAt(qword_1EB75E0C0, v31);
          v42 = *(v41 + 32);
          v43 = cf[0];
          *(v41 + 32) = cf[0];
          if (v43)
          {
            CFRetain(v43);
          }

          if (v42)
          {
            CFRelease(v42);
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          CFRelease(v36);
        }
      }

      ++v31;
    }

    while (a4 != v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }
}

void vaemCopyVARoutesInfoAsCFArrays(void *a1, int a2, void *a3, void *a4, CFTypeRef *a5)
{
  if (a1 && a2)
  {
    v10 = *MEMORY[0x1E695E480];
    v11 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v13 = CFArrayCreateMutable(v10, 0, v11);
    v14 = CFArrayCreateMutable(v10, 0, v11);
    v15 = 0;
    do
    {
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      MXVW_GetCMSRouteInfoAt(a1, v15, &v21);
      if (v21)
      {
        v16 = v21;
      }

      else
      {
        v16 = &stru_1F2890CF0;
      }

      CFArrayAppendValue(Mutable, v16);
      if (v22)
      {
        v17 = v22;
      }

      else
      {
        v17 = &stru_1F2890CF0;
      }

      CFArrayAppendValue(v13, v17);
      if (*(&v21 + 1))
      {
        v18 = *(&v21 + 1);
      }

      else
      {
        v18 = &stru_1F2890CF0;
      }

      CFArrayAppendValue(v14, v18);
      ++v15;
    }

    while (a2 != v15);
    if (a3)
    {
      if (Mutable)
      {
        v19 = CFRetain(Mutable);
      }

      else
      {
        v19 = 0;
      }

      *a3 = v19;
    }

    if (a4)
    {
      if (v13)
      {
        v20 = CFRetain(v13);
      }

      else
      {
        v20 = 0;
      }

      *a4 = v20;
    }

    if (v14)
    {
      *a5 = CFRetain(v14);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }
}

uint64_t MX_FeatureFlags_IsInterruptingPlayingSessionsInOnenessEnabled()
{
  if (MX_FeatureFlags_IsInterruptingPlayingSessionsInOnenessEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsInterruptingPlayingSessionsInOnenessEnabled_cold_1();
  }

  return MX_FeatureFlags_IsInterruptingPlayingSessionsInOnenessEnabled_sIsInterruptingPlayingSessionsInOnenessEnabled;
}

uint64_t vaemUpdateThermalGainAdjustment()
{
  inAddress.mElement = 0;
  *&inAddress.mSelector = *"#vedbolg";
  outDataSize = 0;
  PropertyDataSize = AudioObjectGetPropertyDataSize(1u, &inAddress, 0, 0, &outDataSize);
  if (!PropertyDataSize)
  {
    if (outDataSize >= 4)
    {
      v1 = outDataSize >> 2;
      v2 = malloc_type_calloc(v1, 4uLL, 0x100004052888210uLL);
      PropertyDataSize = AudioObjectGetPropertyData(1u, &inAddress, 0, 0, &outDataSize, v2);
      v3 = 0;
      v4 = 4 * v1;
      do
      {
        v5 = *&v2[v3];
        *&inAddress.mSelector = 0x6F7574707473636CLL;
        inAddress.mElement = 0;
        if (AudioObjectHasProperty(v5, &inAddress))
        {
          *&inAddress.mSelector = 0x676C6F6275696420;
          inAddress.mElement = 0;
          ioDataSize = 8;
          outData = 0;
          PropertyDataSize = AudioObjectGetPropertyData(v5, &inAddress, 0, 0, &ioDataSize, &outData);
          if (!PropertyDataSize)
          {
            v6 = FigCFEqual();
            v7 = &qword_1EB75D188 + 1;
            if (!v6)
            {
              v7 = &qword_1EB75D188;
            }

            if (*v7 <= 1.0)
            {
              *&inAddress.mSelector = 0x6F7574707473636CLL;
              inAddress.mElement = 0;
              PropertyDataSize = CMSMVAUtility_AudioObjectSetPropertyData();
            }

            else
            {
              PropertyDataSize = 0;
            }
          }

          if (outData)
          {
            CFRelease(outData);
          }
        }

        v3 += 4;
      }

      while (v4 != v3);
      free(v2);
    }

    else
    {
      return 0;
    }
  }

  return PropertyDataSize;
}

uint64_t cmsmRequestCarMainAudioForSession(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_13;
  }

  if ([a1 isActiveOverAirPlayVideo] && CMSMUtility_IsCarPlayVideoActive())
  {
    if (!dword_1EB75DE40)
    {
LABEL_13:
      v4 = 0;
      goto LABEL_31;
    }

LABEL_5:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_13;
  }

  if ([+[MXSessionManager sessionUtilizesIndependentRecordingOnly:"sessionUtilizesIndependentRecordingOnly:"]
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  if (([a1 hasPhoneCallBehavior] & 1) != 0 || CMSUtility_IsAudioCategoryRingtone(a1))
  {
    if (CMSMUtility_IsPhoneCallActive())
    {
      v3 = 1;
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v3 = 1;
      [+[MXSessionManager setPhoneCallIsAboutToGoActiveOverCarPlay:v11], "setPhoneCallIsAboutToGoActiveOverCarPlay:", 1];
    }
  }

  else if (CMSMUtility_IsPhoneCallActive())
  {
    v3 = 0;
  }

  else
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager phoneCallIsAboutToGoActiveOverCarPlay]- 1;
  }

  if (CMSUtility_IsAudioCategoryRingtone(a1))
  {
    v6 = -1;
  }

  else if (CMSMUtility_ShouldCarPlaySpeechAppStateBeSet(a1))
  {
    v6 = 10;
  }

  else
  {
    v6 = 0;
  }

  v13 = @"Take";
  if (CMSUtility_ShouldBorrowCarMainAudio(a1))
  {
    v13 = @"Borrow";
    [a1 setNeedToEndInterruption:1];
  }

  v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Connected to car; Requesting main audio for session, %@ '%@'", [a1 clientName], objc_msgSend(a1, "displayID"));
  v8 = [a1 audioCategory];
  v14[0] = 0;
  v14[1] = 0;
  v15 = v3;
  v16 = 0;
  v17 = v6;
  v18 = 0;
  v19 = v8;
  FigEndpointCentralRequestResource(qword_1EB75E178, 0x1F2899C50, v14, v7, &v13);
  if (FigCFEqual())
  {
    [a1 setStarkBorrowCount:{objc_msgSend(a1, "starkBorrowCount") + 1}];
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v4 = FigEndpointCentralEntityHoldsResource(qword_1EB75E178, 0x1F288E610, 0x1F2899C50);
  [a1 setTookControlOfStarkMainAudio:v4 != 0];
LABEL_31:
  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL CMSMUtility_IsPhoneCallActive()
{
  v0 = CMSMUtility_CopyActivePhoneCallInfo();
  v1 = v0 != 0;

  return v1;
}

uint64_t __FigEndpointCentralEntityHoldsResource_block_invoke(void *a1)
{
  result = _FigEndpointCentralEntityHoldsResource(a1[5], a1[6], a1[7]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t routingContextRemoteXPC_CopySelectedRouteDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_6_7(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20, v21, v22);
  if (v9 || (OUTLINED_FUNCTION_8(), v9 = FigXPCCreateBasicMessage(), v9) || (OUTLINED_FUNCTION_12_4(), v9 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v9))
  {
    v8 = v9;
  }

  else
  {
    v10 = FigXPCMessageCopyCFDictionary();
    OUTLINED_FUNCTION_10_4(v10, v11, v12, v13, v14, v15, v16, v17, 0);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

BOOL vaemIsMATAtmosEnabled()
{
  outData = 0;
  if (vaemGetStream0([+[MXSessionManager defaultVADID] sharedInstance])
  {
    v0 = 1;
  }

  else
  {
    v0 = outData == 0;
  }

  result = 0;
  if (!v0)
  {
    v2 = vaemStreamSupportsFormat();
    if (v2 || vaemStreamSupportsFormat())
    {
      return 1;
    }
  }

  return result;
}

uint64_t vaemStreamSupportsFormat()
{
  vaemCopySupportedStreamFormats();
  free(0);
  return 0;
}

uint64_t FigVAEndpointManagerCopyPropertyForScope(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  VTable = CMBaseObjectGetVTable();
  v13 = *(*(VTable + 24) + 32);
  if (!v13)
  {
    return 4294954514;
  }

  v14 = *(VTable + 24) + 32;

  return v13(a1, a2, a3, a4, a5, a6);
}

uint64_t _VAEndpointManager_CopyPropertyForScope(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  CMBaseObjectGetDerivedStorage();
  result = 4294950586;
  if (a2 && a6)
  {
    *a6 = 0;
    if (CFEqual(a2, @"VAEM_NumberOfStreams"))
    {
      v9 = OUTLINED_FUNCTION_14_1();
      NumberOfStreams = vaemGetNumberOfStreams(v9, v10, 0);
    }

    else
    {
      result = CFEqual(a2, @"VAEM_MaximumNumberOfChannels");
      if (!result)
      {
        return result;
      }

      v12 = OUTLINED_FUNCTION_14_1();
      NumberOfStreams = vaemGetMaximumNumberOfChannels(v12, v13, 0);
    }

    v14 = MXCFNumberCreateFromSInt64(NumberOfStreams);
    return OUTLINED_FUNCTION_6_3(v14);
  }

  return result;
}

uint64_t vaemGetMaximumNumberOfChannels(int a1, AudioObjectID inObjectID, int a3)
{
  if (a1 == 1)
  {
    v6 = 1768845428;
  }

  else
  {
    v6 = 1869968496;
  }

  inAddress.mSelector = 1937009955;
  inAddress.mScope = v6;
  inAddress.mElement = 0;
  if (!a3)
  {
    inObjectID = [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
  }

  NumberOfStreams = vaemGetNumberOfStreams(a1, inObjectID, a3);
  ioDataSize = 4 * NumberOfStreams;
  v8 = malloc_type_malloc((4 * NumberOfStreams), 0x36049085uLL);
  PropertyData = AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, v8);
  if (v8)
  {
    v10 = PropertyData == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10 && NumberOfStreams != 0)
  {
    v12 = 0;
    do
    {
      v13 = v8[v12];
      if (vaemCopySupportedStreamFormats())
      {
        break;
      }

      ++v12;
    }

    while (v12 != NumberOfStreams);
  }

  free(v8);
  return 0;
}

uint64_t vaemGetNumberOfStreams(int a1, AudioObjectID inObjectID, int a3)
{
  outDataSize = 4;
  if (!a3)
  {
    inObjectID = [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
  }

  if (a1 == 1)
  {
    v5 = 1768845428;
  }

  else
  {
    v5 = 1869968496;
  }

  v7.mSelector = 1937009955;
  v7.mScope = v5;
  v7.mElement = 0;
  if (AudioObjectGetPropertyDataSize(inObjectID, &v7, 0, 0, &outDataSize))
  {
    return 0;
  }

  else
  {
    return outDataSize >> 2;
  }
}

__CFArray *vaemCopyAllEndpoints()
{
  v0 = vaemCopyConnectedPortsForPortTypeAndScope(0, 0x6F757470u);
  v1 = vaemCopyEndpointsForListOfPorts(v0, 0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t FigRoutingManagerShouldSkipEndpointManager()
{
  cf = 0;
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v2 = *(*(VTable + 8) + 48);
  if (v2)
  {
    v3 = *(VTable + 8) + 48;
    v2(CMBaseObject, *MEMORY[0x1E69618B8], *MEMORY[0x1E695E480], &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return 0;
}

uint64_t FigRoutingManagerCopyEndpointWithDeviceID(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = +[MXEndpointDescriptorCache sharedInstance];

  return [(MXEndpointDescriptorCache *)v8 copyEndpointWithDeviceID:a1 isStreamID:a2 != 0 managerType:a3 routingContextUUID:a4];
}

BOOL PVMVolumePrefExistsForRouteAndCategory(const void *a1, unint64_t a2, uint64_t a3, const __CFString *a4, const void *a5)
{
  if (PVMInitialize())
  {
    return 0;
  }

  DeviceRouteString = pvmCreateDeviceRouteString(a1, a2, a3);
  if (!DeviceRouteString)
  {
    return 0;
  }

  v12 = DeviceRouteString;
  v13 = *sStorage;
  FigSimpleMutexLock();
  if (!*(sStorage + 16))
  {
    goto LABEL_14;
  }

  v14 = *(sStorage + 184);
  if (v14)
  {
    Value = CFDictionaryGetValue(v14, a4);
    if (Value)
    {
      a4 = Value;
    }
  }

  if (!a4)
  {
    a4 = *(sStorage + 232);
  }

  if (!a5)
  {
    a5 = *(sStorage + 240);
  }

  MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(a4, a5);
  v17 = CFDictionaryGetValue(*(sStorage + 16), v12);
  if (v17)
  {
    v10 = CFDictionaryGetValue(v17, MappedCategoryWithModeAppended) != 0;
  }

  else
  {
LABEL_14:
    v10 = 0;
  }

  v18 = *sStorage;
  FigSimpleMutexUnlock();
  CFRelease(v12);
  return v10;
}

void routingSessionManager_routeConfigUpdated(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a5, @"routeConfigUpdateReason");
  cf = 0;
  v10 = *DerivedStorage;
  if (v10 == a4)
  {
    v11 = Value;
    VTable = CMBaseObjectGetVTable();
    v13 = *(*(VTable + 16) + 64);
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = *(VTable + 16) + 64;
    if (v13(v10, &cf))
    {
      goto LABEL_12;
    }

    if (FigCFEqual() || FigCFEqual())
    {
      goto LABEL_9;
    }

    if (FigCFEqual())
    {
      if (!routingSessionManager_routeIsBuiltIn(cf))
      {
LABEL_9:
        routingSessionManager_establishRoutingSessionFromCurrentRoutes(a2, cf, v11);
        goto LABEL_12;
      }
    }

    else if (!FigCFEqual())
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_19_2(v15, v16, v17, v18, v19, v20, v21, v22, 0, 0, v11, 0);
  }

  else
  {
    FigSignalErrorAtGM();
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CMSMUtility_ShouldChangeMainVolume(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  theArray[20] = *MEMORY[0x1E69E9840];
  ContextType = FigRoutingManagerContextUtilities_GetContextType([a1 routingContextUUID]);
  v9 = ContextType > 4 || ((1 << ContextType) & 0x1A) == 0;
  if (v9 || (theArray[0] = 0, FigRoutingManagerContextUtilities_CopyPickedEndpoints([a1 routingContextUUID], theArray), !theArray[0]))
  {
    v18 = 0;
    goto LABEL_47;
  }

  Count = CFArrayGetCount(theArray[0]);
  if (Count == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], 0);
    v12 = *MEMORY[0x1E69626B0];
    if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
    {
      v32 = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {
        v14(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &v32);
      }

      v15 = v32;
      if (!v32 || (v15 = CFArrayGetCount(v32), v15 != 1))
      {
        if (a4)
        {
          v20 = 1;
        }

        else
        {
          v20 = v15 < 2;
        }

        v21 = v20;
LABEL_28:
        if (v32)
        {
          CFRelease(v32);
        }

        if (v21)
        {
          goto LABEL_31;
        }

LABEL_37:
        v32 = 0;
        PVMCopyVolumeCategoryAndMode([+[MXSessionManager getUncustomizedCategory:v30], "getUncustomizedCategory:", a3], 0, &v32, 0);
        if (CMSessionMgrIsVolumeChangeTriggered(a2) && dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if ((a2 - 11) < 2)
        {
          v18 = FigCFEqual();
        }

        else
        {
          v18 = (a2 - 1) <= 1;
        }

        if (v32)
        {
          CFRelease(v32);
        }

        goto LABEL_45;
      }

      v16 = CFArrayGetValueAtIndex(v32, 0);
      IsEndpointSelfOnlyLocalAirPlay = FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(v16);
      if (!a4 && IsEndpointSelfOnlyLocalAirPlay)
      {
        if (dword_1EB75DE40)
        {
          goto LABEL_58;
        }

        goto LABEL_49;
      }

      IsClusterLocalEndpoint = FigRoutingManagerIsClusterLocalEndpoint(v16);
      if (a4 || !IsClusterLocalEndpoint)
      {
        if (a4)
        {
          goto LABEL_49;
        }

        if (dword_1EB75DE40)
        {
LABEL_55:
          v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        v23 = *MEMORY[0x1E6962628];
        if (FigRoutingManagerIsEndpointOfSubtype(v16))
        {
          if (dword_1EB75DE40)
          {
            goto LABEL_58;
          }

          goto LABEL_49;
        }

        v27 = *MEMORY[0x1E6962620];
        if (!FigRoutingManagerIsEndpointOfSubtype(v16))
        {
          goto LABEL_49;
        }

        if (!CMSMDeviceState_ItsAnAppleTV())
        {
          if (dword_1EB75DE40)
          {
LABEL_58:
            v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
            v21 = 1;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_28;
          }

LABEL_49:
          v21 = 1;
          goto LABEL_28;
        }

        if (dword_1EB75DE40)
        {
          goto LABEL_55;
        }
      }

      v21 = 0;
      goto LABEL_28;
    }

LABEL_31:
    v18 = 0;
    goto LABEL_45;
  }

  v18 = 0;
  if (!a4 && Count >= 2)
  {
    if (FigRoutingManagerAreAllEndpointsBluetoothShareable(theArray[0]))
    {
      if (dword_1EB75DE40)
      {
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_37;
    }

    goto LABEL_31;
  }

LABEL_45:
  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }

LABEL_47:
  v25 = *MEMORY[0x1E69E9840];
  return v18;
}

__CFDictionary *frcXPCServer_copySanitizedRouteDescriptor(const __CFDictionary *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, @"RouteSupportsAudio");
  CFArrayAppendValue(Mutable, @"RouteSupportsAirPlayVideo");
  CFArrayAppendValue(Mutable, @"RouteSupportsAirPlayScreen");
  CFArrayAppendValue(Mutable, @"AudioRouteName");
  CFArrayAppendValue(Mutable, @"AudioRouteSubType");
  CFArrayAppendValue(Mutable, @"RouteSupportsAirPlayMusic");
  CFArrayAppendValue(Mutable, @"RouteHasAirPlayCloudConnectivity");
  CFArrayAppendValue(Mutable, @"ExternalPlaybackCannotFetchMediaFromSender");
  CFArrayAppendValue(Mutable, @"ExternalPlaybackDoesNotSupportEncryptedCRABS");
  CFArrayAppendValue(Mutable, @"ExternalPlaybackDoesNotShowProperUIForAudioOnlyAssets");
  CFArrayAppendValue(Mutable, @"BTDetails_HighQualityContentCaptureSupported");
  CFArrayAppendValue(Mutable, @"BTDetails_HighQualityContentCaptureEnabled");
  CFArrayAppendValue(Mutable, @"RouteName");
  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
  }

  else
  {
    Count = 0;
  }

  v5 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(v5, @"RouteUID");
  CFArrayAppendValue(v5, @"RouteName");
  CFArrayAppendValue(v5, @"GroupUUID");
  CFArrayAppendValue(v5, @"TightSyncUUID");
  if (a1)
  {
    v6 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    if (Count >= 1)
    {
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v7);
        Value = CFDictionaryGetValue(a1, ValueAtIndex);
        if (Value)
        {
          break;
        }

        if (FigCFArrayContainsValue())
        {
          v11 = v6;
          v12 = ValueAtIndex;
          v10 = @"*** Missing entitlement ***";
          goto LABEL_11;
        }

LABEL_12:
        if (Count == ++v7)
        {
          goto LABEL_13;
        }
      }

      v10 = Value;
      v11 = v6;
      v12 = ValueAtIndex;
LABEL_11:
      CFDictionarySetValue(v11, v12, v10);
      goto LABEL_12;
    }

LABEL_13:
    if (!CFDictionaryContainsKey(v6, @"RouteName"))
    {
      CFDictionarySetValue(v6, @"RouteName", @"*** Missing entitlement ***");
    }
  }

  else
  {
    v6 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t FigRoutingManagerIsNonSelfOnlyLocalAirPlayEndpointPicked(uint64_t a1)
{
  if (FigRoutingManagerContextUtilities_GetContextType(a1) != 3)
  {
    return 0;
  }

  cf = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a1, 0, &cf);
  v2 = *MEMORY[0x1E69626B0];
  if (FigRoutingManagerIsEndpointOfType(cf))
  {
    theArray = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
    }

    v5 = 0;
    while (1)
    {
      v6 = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        v6 = theArray;
      }

      else
      {
        Count = 0;
      }

      if (v5 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v6, v5++);
      if (!FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(ValueAtIndex))
      {
        v9 = 1;
        v6 = theArray;
        if (!theArray)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    v9 = 0;
    if (!v6)
    {
      goto LABEL_17;
    }

LABEL_16:
    CFRelease(v6);
  }

  else
  {
    v9 = 0;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t vaemIsAC3EncodingSupported()
{
  v3 = *MEMORY[0x1E69E9840];
  vaemGetAC3IsSupported();
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_0_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v1 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t vaemGetAC3IsSupported()
{
  outData = 0;
  if (vaemGetStream0([+[MXSessionManager defaultVADID] sharedInstance])
  {
    return 0;
  }

  result = outData;
  if (outData)
  {
    return vaemStreamSupportsFormat();
  }

  return result;
}

uint64_t FigRoutingManagerContextUtilities_DoesContextSupportWHAMultiDeviceRouting(uint64_t a1)
{
  if (a1)
  {
    ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
    v2 = 0x1000000000101uLL >> (8 * (ContextType - 3));
    if ((ContextType - 3) > 6)
    {
      LOBYTE(v2) = 0;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

uint64_t remoteSystemController_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = CFGetRetainCount(a1);
  v5 = *DerivedStorage;
  if (*(DerivedStorage + 8))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  return [v3 initWithFormat:@"<FigSystemControllerRemote %p retainCount: %ld objectID: %016llx%s>", a1, v4, *DerivedStorage, v6];
}

__CFString *FigRoutingManagerCopyEndpointFeaturesAsString(char a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = Mutable;
  if (a1)
  {
    CFStringAppend(Mutable, @"screen");
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (v3 && CFStringGetLength(v3) >= 1)
  {
    v4 = @"+audio";
  }

  else
  {
    v4 = @"audio";
  }

  CFStringAppend(v3, v4);
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_14:
  if (v3 && CFStringGetLength(v3) >= 1)
  {
    v5 = @"+playback";
  }

  else
  {
    v5 = @"playback";
  }

  CFStringAppend(v3, v5);
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_19:
  if (v3 && CFStringGetLength(v3) >= 1)
  {
    v6 = @"+music";
  }

  else
  {
    v6 = @"music";
  }

  CFStringAppend(v3, v6);
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      return v3;
    }

    goto LABEL_29;
  }

LABEL_24:
  if (v3 && CFStringGetLength(v3) >= 1)
  {
    v7 = @"+control";
  }

  else
  {
    v7 = @"control";
  }

  CFStringAppend(v3, v7);
  if ((a1 & 0x20) != 0)
  {
LABEL_29:
    if (v3 && CFStringGetLength(v3) >= 1)
    {
      v8 = @"+low latency audio";
    }

    else
    {
      v8 = @"low latency audio";
    }

    CFStringAppend(v3, v8);
  }

  return v3;
}

uint64_t FigEndpointDescriptorUtility_IsEndpointOfType()
{
  v0 = FigEndpointUtility_CopyEndpointType();
  v1 = FigCFEqual();
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

BOOL FigRoutingManagerIsEndpointNonRemoteControlLocalAirPlay(uint64_t a1)
{
  IsEndpointLocal = FigRoutingManagerIsEndpointLocal(a1);
  v2 = *MEMORY[0x1E695E4C0];
  v3 = *MEMORY[0x1E695E4C0];
  v10 = *MEMORY[0x1E695E4C0];
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 8) + 48);
  if (v6)
  {
    v7 = *(VTable + 8) + 48;
    v6(CMBaseObject, *MEMORY[0x1E6962180], *MEMORY[0x1E695E480], &v10);
    v3 = v10;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return IsEndpointLocal && v3 == v2;
}

BOOL FigRoutingManagerIsEndpointLocal(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *MEMORY[0x1E695E4C0];
  v8 = *MEMORY[0x1E695E4C0];
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 8) + 48);
  if (v4)
  {
    v5 = *(VTable + 8) + 48;
    v4(CMBaseObject, *MEMORY[0x1E6962158], *MEMORY[0x1E695E480], &v8);
    v1 = v8;
  }

  v6 = v1 == *MEMORY[0x1E695E4D0];
  if (v1)
  {
    CFRelease(v1);
  }

  return v6;
}

void __discoverer_postRoutePresentChangedIfNecessary_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = *(a1 + 32);
  CMNotificationCenterPostNotification();
  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t vaemVADAvailableSampleRatesListener()
{
  v0 = MXGetSerialQueue();
  MXDispatchAsyncFunction("vaemVADAvailableSampleRatesListener", "CMSessionManager_VAEndpointManager.m", 5666, 0, 0, v0, 0, vaemVADAvailableSampleRatesListenerGuts_f);
  return 0;
}

uint64_t vaemCurrentRouteHasVolumeControlListener(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2;
    v4 = (a3 + 4);
    do
    {
      if (*(v4 - 1) == 1986229104)
      {
        if (*v4 == 1869968496)
        {
          v5 = MXGetSerialQueue();
          v6 = 5402;
          v7 = &__block_literal_global_93;
          goto LABEL_8;
        }

        if (*v4 == 1768845428)
        {
          v5 = MXGetSerialQueue();
          v6 = 5395;
          v7 = &__block_literal_global_91;
LABEL_8:
          MXDispatchAsync("vaemCurrentRouteHasVolumeControlListener", "CMSessionManager_VAEndpointManager.m", v6, 0, 0, v5, v7);
        }
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return 0;
}

void vaemAQMERouteChanged(const __CFDictionary *a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!unk_1EB75E040)
  {
    goto LABEL_32;
  }

  if (FigRoutingManagerContextUtilities_IsContextVideoAndIndependent(a2))
  {
    CMSMUtility_UpdateAudioBehaviourForSessionsUsingRoutingContextUUID();
    v5 = *MEMORY[0x1E695E480];
    values = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = CFArrayCreate(v5, &values, 1, MEMORY[0x1E695E9C0]);
    if (values)
    {
      CFRelease(values);
      values = 0;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, a1);
    v8 = MutableCopy;
    if (v6)
    {
      v9 = MutableCopy == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (!v6)
      {
LABEL_24:
        unk_1EB75E040(v8);
        if (v8)
        {
          CFRelease(v8);
        }

LABEL_32:
        v21 = *MEMORY[0x1E69E9840];
        return;
      }
    }

    else
    {
      CFDictionarySetValue(MutableCopy, @"SessionAudioBehaviors", v6);
    }

    CFRelease(v6);
    goto LABEL_24;
  }

  if (CMSMVAUtility_IsAdditiveRoutingEnabled() && [a3 count])
  {
    v24 = a1;
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [a3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(a3);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", objc_msgSend(v14, "audioSessionID")), @"AudioSessionID"}];
          [v15 setObject:objc_msgSend(v14 forKey:{"audioBehaviour"), @"AudioBehavior"}];
          [v25 addObject:v15];
        }

        v11 = [a3 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v11);
    }

    v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v24];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v16 setObject:v25 forKey:{@"SessionAudioBehaviors", v22, v23}];
    if (dword_1EB75DE40)
    {
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    unk_1EB75E040(v16);

    goto LABEL_32;
  }

  v18 = unk_1EB75E040;
  v19 = *MEMORY[0x1E69E9840];

  v18(a1);
}

FigResilientRemoteRoutingContextFactory *FigResilientRemoteRoutingContextFactoryGetCurrent()
{
  v0 = objc_alloc_init(FigResilientRemoteRoutingContextFactory);

  return v0;
}

BOOL CMSUtilityPredicate_IsSessionUsingRoutingContext(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 routingContextUUID];

  return CMSUtility_AreRoutingContextsEquivalent(a3, v4);
}

__CFDictionary *routingSessionManager_createDestinationWithRouteDescriptors(const __CFArray *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v3 = routingSessionManager_routeDescriptorsProvideExternalVideoPlayback(a1);
  v4 = *MEMORY[0x1E695E4D0];
  v5 = *MEMORY[0x1E695E4C0];
  if (a1)
  {
    CFDictionarySetValue(Mutable, @"routingSessionDestination_RouteDescriptors", a1);
  }

  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  CFDictionarySetValue(Mutable, @"routingSessionDestination_ProvidesExternalVideoPlayback", v6);
  return Mutable;
}

uint64_t routingSessionManager_routeDescriptorsProvideExternalVideoPlayback(CFArrayRef theArray)
{
  for (i = 0; ; ++i)
  {
    v3 = theArray ? CFArrayGetCount(theArray) : 0;
    if (i >= v3)
    {
      break;
    }

    CFArrayGetValueAtIndex(theArray, i);
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

uint64_t routingSession_createInternal(uint64_t a1, char a2, char a3, char a4, const void *a5, void *a6)
{
  if (a6)
  {
    FigRoutingSessionGetClassID();
    v11 = CMDerivedObjectCreate();
    if (!v11)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (a5)
      {
        v13 = CFRetain(a5);
      }

      else
      {
        v13 = 0;
      }

      *DerivedStorage = v13;
      *(DerivedStorage + 8) = a2;
      *(DerivedStorage + 9) = a3;
      *(DerivedStorage + 10) = a4;
      *a6 = 0;
    }
  }

  else
  {
    routingSession_createInternal_cold_1(&v15);
    return v15;
  }

  return v11;
}

uint64_t FigRoutingSessionGetClassID()
{
  if (_MergedGlobals_11 != -1)
  {
    FigRoutingSessionGetClassID_cold_1();
  }

  return qword_1ED6D2FB0;
}

void routingSessionManager_updateCurrentSession(const void *a1, const void *a2, void *a3, char a4, int a5, int a6, char a7, int a8, uint64_t a9, char a10, void *a11, char *a12)
{
  values[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  isVideoOnScreen = routingSessionManager_isVideoOnScreen(a1);
  v22 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v23 = *(DerivedStorage + 72);
  if ((!a8 || v23 == a9) && routingSessionManager_shouldUpdateCurrentSession(*(DerivedStorage + 24), v23, *(DerivedStorage + 88), *(DerivedStorage + 96), a2, a3, a5, a6, a7, isVideoOnScreen))
  {
    v27 = *(DerivedStorage + 72);
    *(DerivedStorage + 72) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    v28 = *(DerivedStorage + 88);
    if (v28 != a3)
    {

      *(DerivedStorage + 88) = a3;
    }

    v29 = *(DerivedStorage + 80);
    if (v29)
    {
      CFRelease(v29);
      *(DerivedStorage + 80) = 0;
    }

    if (!a10)
    {
      *(DerivedStorage + 96) = a4;
    }

    v30 = *(DerivedStorage + 40);
    FigSimpleMutexUnlock();
    if (v27 != a2)
    {
      if (dword_1EB75DF00)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      values[0] = a11;
      v32 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigRoutingSessionManagerPayloadValue_Reason, values, 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (v32)
      {
        CFRelease(v32);
      }

      routingSessionManager_updateSessionExpiration(a1);
      if (!a2)
      {
        if (dword_1EB75DF00)
        {
          v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        routingSessionManager_updateSessionFromLatestInEarHeadphones(a1);
        if (dword_1EB75DF00)
        {
          v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        routingSessionManager_updateSessionFromLatestActiveStatusOfSharePlayCapableCallSession();
      }
    }

    v25 = 1;
  }

  else
  {
    v24 = *(DerivedStorage + 40);
    FigSimpleMutexUnlock();
    v25 = 0;
  }

  if (a12)
  {
    *a12 = v25;
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t routingSessionManager_isVideoOnScreen(uint64_t a1)
{
  v7 = 0;
  VTable = CMBaseObjectGetVTable();
  v3 = *(*(VTable + 16) + 40);
  if (!v3)
  {
    return 0;
  }

  v4 = *(VTable + 16) + 40;
  if (v3(a1, &v7))
  {
    return 0;
  }

  v5 = [*(CMBaseObjectGetDerivedStorage() + 16) someLongFormVideoClientIsPlaying];
  return (v7 != 0) | v5 & 1u;
}

uint64_t routingSessionManager_getAirPlayVideoActive(uint64_t a1, _BYTE *a2)
{
  v3 = [*(CMBaseObjectGetDerivedStorage() + 16) someLongFormVideoClientIsActiveOverAirPlayVideo];
  if (a2)
  {
    v4 = v3;
    result = 0;
    *a2 = v4;
  }

  else
  {
    routingSessionManager_getAirPlayVideoActive_cold_1(&v6);
    return v6;
  }

  return result;
}

void routingSessionManager_establishRoutingSessionFromCurrentRoutes(const void *a1, const __CFArray *a2, void *a3)
{
  cf = 0;
  DestinationWithRouteDescriptors = routingSessionManager_createDestinationWithRouteDescriptors(a2);
  v6 = *MEMORY[0x1E695E480];
  if (!FigRoutingSessionCreate(*MEMORY[0x1E695E480], 0, DestinationWithRouteDescriptors, &cf))
  {
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_19_2(v7, v8, v9, v10, v11, v12, v13, v14, 0, 0, a3, 0);
    v15 = cf;
    Current = CFAbsoluteTimeGetCurrent();
    routingSessionManager_getConfiguration(&v27);
    v17 = CFDateCreate(v6, Current - v28);
    if (a1)
    {
      CFRetain(a1);
    }

    if (v15)
    {
      CFRetain(v15);
    }

    routingSessionManager_getConfiguration(v26);
    OUTLINED_FUNCTION_13_5();
    v21 = 3221225472;
    v22 = __routingSessionManager_updatePredictionContextForSession_block_invoke;
    v23 = &__block_descriptor_48_e42_v24__0__NSArray_8__ARPPredictionContext_16l;
    v24 = a1;
    v25 = v15;
    routingSessionManager_waitForRecentPredictions(a1, v17, v20, v18);
    if (v17)
    {
      CFRelease(v17);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (DestinationWithRouteDescriptors)
  {
    CFRelease(DestinationWithRouteDescriptors);
  }
}

__CFString *routingSession_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  cf = 0;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 8);
  if (v6 && (v7 = *(VTable + 16) + 8, v6(a1, &cf), cf))
  {
    v8 = FigRoutingSessionDestinationCopyDescription(v3, cf);
  }

  else
  {
    v8 = 0;
  }

  v9 = "Y";
  if (DerivedStorage[8])
  {
    v10 = "Y";
  }

  else
  {
    v10 = "N";
  }

  if (DerivedStorage[9])
  {
    v11 = "Y";
  }

  else
  {
    v11 = "N";
  }

  if (!DerivedStorage[10])
  {
    v9 = "N";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigRoutingSession = %p: establishedAutomaticallyFromLikelyDestination %s, establishedBasedOnInEarStatusOfConnectedHeadphones %s, establishedBasedOnActiveSharePlayCapableCallSession %s, chosenDestination = %@>", a1, v10, v11, v9, v8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return Mutable;
}

CFStringRef FigRoutingSessionDestinationCopyDescription(const __CFAllocator *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"routingSessionDestination_RouteDescriptors");
  v4 = FigRouteDescriptorArrayCopySuccinctDescription(a1, Value);
  FigCFDictionaryGetFloatIfPresent();
  v5 = CFStringCreateWithFormat(a1, 0, @"<FigRoutingDestination: probability = %f, routeNames = %@>", 0.0, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

__CFString *FigRouteDescriptorArrayCopySuccinctDescription(const __CFAllocator *a1, const __CFArray *a2)
{
  Mutable = CFStringCreateMutable(a1, 0);
  v4 = 0;
  if (!a2)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a2); v4 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v4);
    Value = CFDictionaryGetValue(ValueAtIndex, @"RouteName");
    CFStringAppendFormat(Mutable, 0, @"%@", Value);
    if (a2)
    {
      v8 = CFArrayGetCount(a2) - 1;
    }

    else
    {
      v8 = -1;
    }

    if (v4 < v8)
    {
      CFStringAppend(Mutable, @", ");
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

void routingSessionManager_updateSessionExpiration(const void *a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Current = CFAbsoluteTimeGetCurrent();
  v4 = DerivedStorage[5];
  FigSimpleMutexLock();
  v5 = DerivedStorage[9];
  if (!v5)
  {
    v11 = DerivedStorage[5];
    FigSimpleMutexUnlock();
    goto LABEL_10;
  }

  cf[0] = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v6(v5, cf);
    v7 = cf[0];
  }

  else
  {
    v7 = 0;
  }

  Value = CFDictionaryGetValue(v7, @"routingSessionDestination_RouteDescriptors");
  v9 = routingSessionManager_routeIsBuiltIn(Value);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v10 = DerivedStorage[5];
  FigSimpleMutexUnlock();
  if (v9)
  {
LABEL_10:
    v12 = [*(CMBaseObjectGetDerivedStorage() + 16) someLongFormVideoClientIsPlaying];
    v13 = DerivedStorage[5];
    FigSimpleMutexLock();
    if (v12)
    {
      v14 = DerivedStorage[10];
      if (v14)
      {
        CFRelease(v14);
        DerivedStorage[10] = 0;
        if (dword_1EB75DF00)
        {
          v31 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    else
    {
      if (!DerivedStorage[9])
      {
        goto LABEL_19;
      }

      if (!DerivedStorage[10])
      {
        v16 = *MEMORY[0x1E695E480];
        routingSessionManager_getConfiguration(cf);
        FigGetCFPreferenceDoubleWithDefault();
        DerivedStorage[10] = CFDateCreate(v16, Current + v17);
      }
    }

    v18 = DerivedStorage[9];
    if (v18)
    {
      v19 = CFRetain(v18);
      goto LABEL_20;
    }

LABEL_19:
    v19 = 0;
LABEL_20:
    v20 = DerivedStorage[10];
    if (v20)
    {
      v21 = CFRetain(v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = DerivedStorage[5];
    FigSimpleMutexUnlock();
    if (v19 && v21)
    {
      v23 = MEMORY[0x1B2734210](v21);
      if (Current <= v23)
      {
        v25 = v23;
        if (dword_1EB75DF00)
        {
          v31 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (a1)
        {
          CFRetain(a1);
        }

        v27 = dispatch_time(0, ((v25 - Current) * 1000000000.0));
        v28 = DerivedStorage[4];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __routingSessionManager_updateSessionExpiration_block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = a1;
        dispatch_after(v27, v28, block);
      }

      else
      {
        routingSessionManager_updateCurrentSession(a1, 0, 0, 0, 0, 0, 0, 1, v19, 0, @"Session expiration after playback end", 0);
      }
    }

    else if (!v19)
    {
      if (!v21)
      {
        goto LABEL_30;
      }

LABEL_29:
      CFRelease(v21);
      goto LABEL_30;
    }

    CFRelease(v19);
    if (!v21)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_30:
  v24 = *MEMORY[0x1E69E9840];
}

uint64_t CMSMUtility_IsAnyLongFormVideoSessionPlaying()
{
  FigSimpleMutexLock();
  v0 = byte_1EB75E0AA;
  FigSimpleMutexUnlock();
  return v0;
}

BOOL routingSessionManager_shouldUpdateCurrentSession(void *a1, uint64_t a2, _BOOL8 a3, int a4, uint64_t a5, void *a6, int a7, int a8, char a9, char a10)
{
  v232[16] = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(a2 | a5))
  {
    if (dword_1EB75DF00)
    {
      OUTLINED_FUNCTION_12_6();
      v10 = OUTLINED_FUNCTION_8_8();
      v18 = OUTLINED_FUNCTION_4_13(v10, v11, v12, v13, v14, v15, v16, v17, v220, v221, v222, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
      if (OUTLINED_FUNCTION_3_0(v18))
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (routingSession_isFromForcedPrediction(a2))
  {
    v27 = routingSession_establishedAutomaticallyFromLikelyDestination(a2);
    if (a4)
    {
      if (v27)
      {
        if (dword_1EB75DF00)
        {
          OUTLINED_FUNCTION_12_6();
          v28 = OUTLINED_FUNCTION_8_8();
          v36 = OUTLINED_FUNCTION_4_13(v28, v29, v30, v31, v32, v33, v34, v35, v220, v221, v222, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
          if (OUTLINED_FUNCTION_3_0(v36))
          {
LABEL_10:
            *theDict = 136315138;
            OUTLINED_FUNCTION_0_29();
            OUTLINED_FUNCTION_2();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_15_6();
          }

LABEL_15:
          OUTLINED_FUNCTION_0_0();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

LABEL_16:
        a3 = 0;
        goto LABEL_17;
      }
    }
  }

  if (!routingSession_isFromForcedPrediction(a5))
  {
    v232[0] = @"RouteUID";
    v232[1] = @"RouteName";
    v232[2] = @"AudioRouteName";
    v232[3] = @"RouteSupportsAirPlayVideo";
    v228 = 0;
    *theDict = 0;
    v223 = a3;
    if (a2)
    {
      v48 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v48 || v48(a2, theDict))
      {
        v50 = 0;
        goto LABEL_32;
      }

      Value = CFDictionaryGetValue(*theDict, @"routingSessionDestination_RouteDescriptors");
      v50 = routingSessionManager_copyFilteredRouteDescriptors(Value, v232);
      if (!a5)
      {
LABEL_24:
        v51 = 0;
LABEL_31:
        a3 = FigCFEqual() == 0;
        goto LABEL_33;
      }
    }

    else
    {
      v50 = 0;
      if (!a5)
      {
        goto LABEL_24;
      }
    }

    v52 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v52 && !v52(a5, &v228))
    {
      v53 = CFDictionaryGetValue(v228, @"routingSessionDestination_RouteDescriptors");
      v51 = routingSessionManager_copyFilteredRouteDescriptors(v53, v232);
      goto LABEL_31;
    }

LABEL_32:
    v51 = 0;
    a3 = 1;
LABEL_33:
    if (*theDict)
    {
      CFRelease(*theDict);
    }

    if (v228)
    {
      CFRelease(v228);
    }

    if (v50)
    {
      CFRelease(v50);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    if (!a3)
    {
      if (!dword_1EB75DF00)
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_12_6();
      v63 = OUTLINED_FUNCTION_8_8();
      v71 = OUTLINED_FUNCTION_4_13(v63, v64, v65, v66, v67, v68, v69, v70, v220, v221, v223, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
      if (OUTLINED_FUNCTION_3_0(v71))
      {
        *theDict = 136315138;
        OUTLINED_FUNCTION_0_29();
        OUTLINED_FUNCTION_2();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_15_6();
      }

      goto LABEL_15;
    }

    if (a7 && a10)
    {
      if (!dword_1EB75DF00)
      {
        goto LABEL_16;
      }

      v54 = OUTLINED_FUNCTION_1_20();
      v62 = OUTLINED_FUNCTION_4_13(v54, v55, v56, v57, v58, v59, v60, v61, v220, v221, v223, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
      if (!OUTLINED_FUNCTION_3_0(v62))
      {
        goto LABEL_15;
      }

      *theDict = 136315138;
      OUTLINED_FUNCTION_0_29();
      goto LABEL_47;
    }

    if (!a2)
    {
      if (!dword_1EB75DF00)
      {
        goto LABEL_128;
      }

      v78 = OUTLINED_FUNCTION_1_20();
      v86 = OUTLINED_FUNCTION_4_13(v78, v79, v80, v81, v82, v83, v84, v85, v220, v221, v223, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
      if (OUTLINED_FUNCTION_3_0(v86))
      {
        *theDict = 136315138;
        OUTLINED_FUNCTION_0_29();
LABEL_90:
        OUTLINED_FUNCTION_2();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_15_6();
        goto LABEL_25;
      }

      goto LABEL_25;
    }

    if (FigRoutingSessionCopyDestination(a2, &cf))
    {
      goto LABEL_16;
    }

    v72 = CFDictionaryGetValue(cf, @"routingSessionDestination_RouteDescriptors");
    a3 = v223;
    if (a7)
    {
      v73 = v72;
      if (v223 && a6)
      {
        v74 = [a6 microLocationProbabilityVector];
        v75 = [v223 microLocationProbabilityVector];
        v76 = sARPMicroLocationSimilarityFunction(v74, v75);
        [a1 microLocationSimilarityThreshold];
        a3 = v76 >= v77;
      }

      else if (dword_1EB75DF00)
      {
        v96 = OUTLINED_FUNCTION_1_20();
        v97 = v228;
        if (os_log_type_enabled(v96, HIBYTE(type)))
        {
          v98 = v97;
        }

        else
        {
          v98 = v97 & 0xFFFFFFFE;
        }

        if (v98)
        {
          *theDict = 136315138;
          OUTLINED_FUNCTION_0_29();
          OUTLINED_FUNCTION_7_9();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_9_8();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        a3 = 1;
      }

      v118 = routingSession_establishedAutomaticallyFromLikelyDestination(a2);
      if (a4 && v118)
      {
        if (!dword_1EB75DF00)
        {
          goto LABEL_128;
        }

        v119 = OUTLINED_FUNCTION_1_20();
        v127 = OUTLINED_FUNCTION_4_13(v119, v120, v121, v122, v123, v124, v125, v126, v220, v221, v223, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
        if (OUTLINED_FUNCTION_3_0(v127))
        {
          goto LABEL_89;
        }

LABEL_25:
        OUTLINED_FUNCTION_9_8();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_17;
      }

      if (!a5)
      {
        if (!dword_1EB75DF00)
        {
          goto LABEL_16;
        }

        v138 = OUTLINED_FUNCTION_1_20();
        OUTLINED_FUNCTION_16_4(v138, v139, v140, v141, v142, v143, v144, v145, v220, v221, v223, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
        goto LABEL_15;
      }

      if (a3)
      {
        if (!dword_1EB75DF00)
        {
          goto LABEL_16;
        }

        v128 = OUTLINED_FUNCTION_1_20();
        if (OUTLINED_FUNCTION_16_4(v128, v129, v130, v131, v132, v133, v134, v135, v220, v221, v223, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228))
        {
          v136 = a5;
        }

        else
        {
          v136 = a5 & 0xFFFFFFFE;
        }

        if (v136)
        {
          v137 = "NULL";
          if (v224)
          {
            v137 = "non-NULL";
          }

          *theDict = 136315394;
          *&theDict[4] = "routingSessionManager_shouldUpdateCurrentSession";
          v230 = 2082;
          v231 = v137;
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_7_9();
          _os_log_send_and_compose_impl();
        }

        goto LABEL_15;
      }

      if (routingSessionManager_routeIsBuiltIn(v73) || routingSessionManager_routeDescriptorsProvideExternalVideoPlayback(v73) && v73 && CFArrayGetCount(v73) == 1)
      {
        if (dword_1EB75DF00)
        {
          v146 = OUTLINED_FUNCTION_1_20();
          if (OUTLINED_FUNCTION_16_4(v146, v147, v148, v149, v150, v151, v152, v153, v220, v221, v223, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228))
          {
            v154 = a5;
          }

          else
          {
            v154 = a5 & 0xFFFFFFFE;
          }

          if (v154)
          {
            v155 = "NULL";
            if (v225)
            {
              v155 = "non-NULL";
            }

            *theDict = 136315394;
            *&theDict[4] = "routingSessionManager_shouldUpdateCurrentSession";
            v230 = 2082;
            v231 = v155;
            OUTLINED_FUNCTION_6();
            OUTLINED_FUNCTION_7_9();
            _os_log_send_and_compose_impl();
          }

          goto LABEL_25;
        }

        goto LABEL_128;
      }

      if (!dword_1EB75DF00)
      {
        goto LABEL_16;
      }

      v165 = OUTLINED_FUNCTION_1_20();
      v173 = OUTLINED_FUNCTION_4_13(v165, v166, v167, v168, v169, v170, v171, v172, v220, v221, v223, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
      if (!OUTLINED_FUNCTION_3_0(v173))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!a8)
      {
        if (a9)
        {
          if (routingSession_establishedBasedOnActiveSharePlayCapableCallSession())
          {
            if (!dword_1EB75DF00)
            {
              goto LABEL_128;
            }

            v99 = OUTLINED_FUNCTION_1_20();
            v107 = OUTLINED_FUNCTION_4_13(v99, v100, v101, v102, v103, v104, v105, v106, v220, v221, v223, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
            if (OUTLINED_FUNCTION_3_0(v107))
            {
              goto LABEL_89;
            }

            goto LABEL_25;
          }

          if (!a5)
          {
            if (!dword_1EB75DF00)
            {
              goto LABEL_16;
            }

            v202 = OUTLINED_FUNCTION_1_20();
            v210 = OUTLINED_FUNCTION_4_13(v202, v203, v204, v205, v206, v207, v208, v209, v220, v221, v223, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
            if (!OUTLINED_FUNCTION_3_0(v210))
            {
              goto LABEL_15;
            }

            goto LABEL_142;
          }

          v174 = routingSession_establishedAutomaticallyFromLikelyDestination(a2);
          if (!a4 || !v174)
          {
            if (!dword_1EB75DF00)
            {
              goto LABEL_16;
            }

            v211 = OUTLINED_FUNCTION_1_20();
            v219 = OUTLINED_FUNCTION_4_13(v211, v212, v213, v214, v215, v216, v217, v218, v220, v221, v223, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
            if (!OUTLINED_FUNCTION_3_0(v219))
            {
              goto LABEL_15;
            }

            goto LABEL_142;
          }

          if (!dword_1EB75DF00)
          {
            goto LABEL_128;
          }

          v175 = OUTLINED_FUNCTION_1_20();
          v183 = OUTLINED_FUNCTION_4_13(v175, v176, v177, v178, v179, v180, v181, v182, v220, v221, v223, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
          if (!OUTLINED_FUNCTION_3_0(v183))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (!dword_1EB75DF00)
          {
            goto LABEL_128;
          }

          v156 = OUTLINED_FUNCTION_1_20();
          v164 = OUTLINED_FUNCTION_4_13(v156, v157, v158, v159, v160, v161, v162, v163, v220, v221, v223, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
          if (!OUTLINED_FUNCTION_3_0(v164))
          {
            goto LABEL_25;
          }
        }

LABEL_89:
        *theDict = 136315138;
        OUTLINED_FUNCTION_0_29();
        goto LABEL_90;
      }

      if (routingSession_establishedBasedOnInEarStatusOfConnectedHeadphones())
      {
        if (!dword_1EB75DF00)
        {
          goto LABEL_128;
        }

        v87 = OUTLINED_FUNCTION_1_20();
        v95 = OUTLINED_FUNCTION_4_13(v87, v88, v89, v90, v91, v92, v93, v94, v220, v221, v223, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
        if (OUTLINED_FUNCTION_3_0(v95))
        {
          goto LABEL_89;
        }

        goto LABEL_25;
      }

      if (a5)
      {
        v108 = routingSession_establishedAutomaticallyFromLikelyDestination(a2);
        if (a4 && v108)
        {
          if (!dword_1EB75DF00)
          {
            goto LABEL_128;
          }

          v109 = OUTLINED_FUNCTION_1_20();
          v117 = OUTLINED_FUNCTION_4_13(v109, v110, v111, v112, v113, v114, v115, v116, v220, v221, v223, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
          if (OUTLINED_FUNCTION_3_0(v117))
          {
            goto LABEL_89;
          }

          goto LABEL_25;
        }

        if (!dword_1EB75DF00)
        {
          goto LABEL_16;
        }

        v193 = OUTLINED_FUNCTION_1_20();
        v201 = OUTLINED_FUNCTION_4_13(v193, v194, v195, v196, v197, v198, v199, v200, v220, v221, v223, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
        if (!OUTLINED_FUNCTION_3_0(v201))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (!dword_1EB75DF00)
        {
          goto LABEL_16;
        }

        v184 = OUTLINED_FUNCTION_1_20();
        v192 = OUTLINED_FUNCTION_4_13(v184, v185, v186, v187, v188, v189, v190, v191, v220, v221, v223, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
        if (!OUTLINED_FUNCTION_3_0(v192))
        {
          goto LABEL_15;
        }
      }
    }

LABEL_142:
    *theDict = 136315138;
    OUTLINED_FUNCTION_0_29();
LABEL_47:
    OUTLINED_FUNCTION_2();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_15_6();
    goto LABEL_15;
  }

  if (dword_1EB75DF00)
  {
    OUTLINED_FUNCTION_12_6();
    v37 = OUTLINED_FUNCTION_8_8();
    v45 = OUTLINED_FUNCTION_4_13(v37, v38, v39, v40, v41, v42, v43, v44, v220, v221, v222, type, SWORD2(type), SBYTE6(type), HIBYTE(type), cf, v228);
    if (OUTLINED_FUNCTION_3_0(v45))
    {
      *theDict = 136315138;
      OUTLINED_FUNCTION_0_29();
      OUTLINED_FUNCTION_2();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_15_6();
    }

    goto LABEL_25;
  }

LABEL_128:
  a3 = 1;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  v46 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t routingSession_isFromForcedPrediction(uint64_t a1)
{
  v9 = 0;
  cf = 0;
  if (a1)
  {
    VTable = CMBaseObjectGetVTable();
    v3 = *(*(VTable + 16) + 8);
    if (v3)
    {
      v4 = *(VTable + 16) + 8;
      v5 = v3(a1, &cf);
      v6 = cf;
      if (!v5)
      {
        FigCFDictionaryGetBooleanIfPresent();
        v6 = cf;
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  return v9;
}

uint64_t routingSession_CopyDestination(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *DerivedStorage;
    if (v4)
    {
      v5 = CFRetain(v4);
    }

    else
    {
      v5 = 0;
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    routingSession_CopyDestination_cold_1(&v7);
    return v7;
  }

  return result;
}

__CFSet *routingSessionManager_copyFilteredRouteDescriptors(const __CFArray *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v6 = 0;
  v7 = MEMORY[0x1E695E9E8];
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a1); v6 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    v10 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E528], v7);
    for (j = 0; j != 32; j += 8)
    {
      v12 = *(a2 + j);
      Value = CFDictionaryGetValue(ValueAtIndex, v12);
      if (Value)
      {
        CFDictionarySetValue(v10, v12, Value);
      }
    }

    CFSetAddValue(Mutable, v10);
    if (v10)
    {
      CFRelease(v10);
    }

    ++v6;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return Mutable;
}

uint64_t routingSessionManager_getConfiguration@<X0>(_OWORD *a1@<X8>)
{
  if (FigRoutingSessionManager_ensureConfigurationInitialized_onceToken != -1)
  {
    routingSessionManager_getConfiguration_cold_1();
  }

  FigSimpleMutexLock();
  v2 = xmmword_1EB75D7A8;
  a1[2] = xmmword_1EB75D798;
  a1[3] = v2;
  a1[4] = xmmword_1EB75D7B8;
  v3 = xmmword_1EB75D788;
  *a1 = gConfiguration;
  a1[1] = v3;

  return FigSimpleMutexUnlock();
}

void routingSessionManager_waitForRecentPredictions(const void *a1, const void *a2, uint64_t a3, double a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.coremedia.routing-session-manager.route-prediction", v9);
  v11 = FigNotificationListenerCreate(*(DerivedStorage + 24), sARPRoutePredictorPredictionsForCurrentContextUpdatedNotificationName);
  v12 = [[FigRoutePredictionFetchOneShotCompletion alloc] initWithCompletionHandler:a3];
  routingSessionManager_updatePredictedDestinations(a1, &__block_literal_global_188);
  if (v11)
  {
    CFRetain(v11);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __routingSessionManager_waitForRecentPredictions_block_invoke_2;
  v24[3] = &unk_1E7AECFB0;
  v24[4] = v12;
  v24[5] = DerivedStorage;
  v24[6] = a2;
  v24[7] = v11;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __routingSessionManager_waitForRecentPredictions_block_invoke_3;
  v23[3] = &__block_descriptor_48_e10_v16__0r_v8l;
  v23[4] = v11;
  v23[5] = a2;
  if (FigNotificationListenerStartNotifications(v11, v10, v24, v23))
  {
    [(FigRoutePredictionFetchOneShotCompletion *)v12 invokeWithRoutePredictions:0 predictionContext:0];
  }

  else
  {
    if (v11)
    {
      CFRetain(v11);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    OUTLINED_FUNCTION_13_5();
    v16 = 3221225472;
    v17 = __routingSessionManager_waitForRecentPredictions_block_invoke_4;
    v18 = &unk_1E7AE7230;
    v19 = v12;
    v20 = DerivedStorage;
    v21 = a2;
    v22 = v11;
    MXDispatchAsync("routingSessionManager_waitForRecentPredictions", "FigRoutingSessionManager.m", 2891, 0, 0, v10, v15);
    if (v11)
    {
      CFRetain(v11);
    }

    v13 = dispatch_time(0, (a4 * 1000000000.0));
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __routingSessionManager_waitForRecentPredictions_block_invoke_5;
    v14[3] = &unk_1E7AEBCA0;
    v14[4] = v12;
    v14[5] = v11;
    dispatch_after(v13, v10, v14);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

__CFDictionary *FigNotificationListenerCreate(const void *a1, const void *a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.coremedia.notification-listener.serialization", v4);
  Mutable = 0;
  if (a1 && a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    CFDictionarySetValue(Mutable, @"notificationCenter", DefaultLocalCenter);
    CFDictionarySetValue(Mutable, @"observedObject", a1);
    CFDictionarySetValue(Mutable, @"notificationName", a2);
    CFDictionarySetValue(Mutable, @"serializationQueue", v5);
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  return Mutable;
}

void routingSessionManager_updatePredictedDestinations(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Current = CFAbsoluteTimeGetCurrent();
  routingSessionManager_getConfiguration(&v15);
  v6 = v16;
  cf = 0;
  v7 = *DerivedStorage;
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 16) + 64);
  if (v9)
  {
    v10 = *(VTable + 16) + 64;
    v9(v7, &cf);
  }

  v11 = Current + v6;
  if (a1)
  {
    CFRetain(a1);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __routingSessionManager_updatePredictedDestinations_block_invoke;
  v13[3] = &__block_descriptor_48_e20_C16__0____CFArray__8l;
  v13[4] = a1;
  v13[5] = DerivedStorage;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __routingSessionManager_updatePredictedDestinations_block_invoke_276;
  v12[3] = &unk_1E7AECE58;
  v12[4] = a2;
  v12[5] = a1;
  routingSessionManager_discoverRoutes(v13, v12, v11);
  if (cf)
  {
    CFRelease(cf);
  }
}

void routingSessionManager_discoverRoutes(uint64_t a1, uint64_t a2, double a3)
{
  cf = 0;
  v6 = *MEMORY[0x1E695E480];
  getpid();
  SInt32 = FigCFNumberCreateSInt32();
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.coremedia.routing-session-manager.discovery", v8);
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = FigCFNumberCreateSInt32();
  CFDictionarySetValue(Mutable, @"discovererType", v11);
  v12 = FigRouteDiscovererCreate(v6, Mutable, &cf);
  if (v12)
  {
    goto LABEL_35;
  }

  v13 = cf;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v14)
  {
    goto LABEL_19;
  }

  v12 = v14(v13, @"clientPID", SInt32);
  if (v12)
  {
    goto LABEL_35;
  }

  v15 = cf;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v16)
  {
LABEL_19:
    v29 = 4294954514;
    if (!a2)
    {
LABEL_21:
      v18 = 0;
      goto LABEL_22;
    }

LABEL_20:
    (*(a2 + 16))(a2, v29);
    goto LABEL_21;
  }

  v12 = v16(v15, @"clientName", @"FigRoutingSessionManager");
  if (v12)
  {
LABEL_35:
    v29 = v12;
    if (!a2)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v17 = cf;
  v18 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v18, @"RouteDiscoverer", v17);
  if (v18)
  {
    CFRetain(v18);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __routingSessionManager_discoverRoutes_block_invoke;
  v35[3] = &unk_1E7AECE80;
  v35[4] = a1;
  v35[5] = v18;
  v30 = a1;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __routingSessionManager_discoverRoutes_block_invoke_2;
  v34[3] = &unk_1E7AECE58;
  v34[4] = a2;
  v34[5] = v18;
  Value = CFDictionaryGetValue(v18, @"RouteDiscoverer");
  v20 = FigNotificationListenerCreate(Value, @"Discoverer_AvailableRoutesChanged");
  v21 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v9);
  Current = CFAbsoluteTimeGetCurrent();
  CFDictionarySetValue(v18, @"NotificationListener", v20);
  if (v18)
  {
    CFRetain(v18);
  }

  v38[10] = MEMORY[0x1E69E9820];
  v38[11] = 3221225472;
  v38[12] = __routingSessionManager_startDiscovery_block_invoke;
  v38[13] = &__block_descriptor_40_e5_v8__0l;
  v38[14] = v18;
  DispatchSourceBlock = FigDispatchCreateDispatchSourceBlock();
  v38[5] = MEMORY[0x1E69E9820];
  v38[6] = 3221225472;
  v38[7] = __routingSessionManager_startDiscovery_block_invoke_129;
  v38[8] = &__block_descriptor_40_e5_v8__0l;
  v38[9] = v18;
  v24 = FigDispatchCreateDispatchSourceBlock();
  v25 = dispatch_time(0, ((a3 - Current) * 1000000000.0));
  dispatch_source_set_timer(v21, v25, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(v21, DispatchSourceBlock);
  dispatch_source_set_mandatory_cancel_handler();
  dispatch_resume(v21);
  CFDictionarySetValue(v18, @"TimeoutTimer", v21);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __routingSessionManager_startDiscovery_block_invoke_2;
  v38[3] = &unk_1E7AECEA8;
  v38[4] = v35;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __routingSessionManager_startDiscovery_block_invoke_3;
  v37[3] = &unk_1E7AECED0;
  v37[4] = v34;
  started = FigNotificationListenerStartNotifications(v20, v9, v38, v37);
  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  _Block_release(DispatchSourceBlock);
  _Block_release(v24);
  if (!started)
  {
    if (v18)
    {
      CFRetain(v18);
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __routingSessionManager_discoverRoutes_block_invoke_3;
    v33[3] = &unk_1E7AECE80;
    v33[4] = v30;
    v33[5] = v18;
    v27 = v33;
    v28 = 3024;
    goto LABEL_18;
  }

  if (v18)
  {
    CFRetain(v18);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __routingSessionManager_discoverRoutes_block_invoke_4;
    v31[3] = &__block_descriptor_44_e5_v8__0l;
    v31[4] = v18;
    v32 = started;
    v27 = v31;
    v28 = 3032;
LABEL_18:
    MXDispatchAsync("routingSessionManager_discoverRoutes", "FigRoutingSessionManager.m", v28, 0, 0, v9, v27);
  }

LABEL_22:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v9)
  {
    dispatch_release(v9);
  }
}

uint64_t CMSMUtility_DoesCarPlaySupportMixableSiri()
{
  v8[20] = *MEMORY[0x1E69E9840];
  v0 = CMSMUtility_CopySystemAudioRoutingContextUUID();
  v1 = FigRoutingManagerCopyActivatedCarPlayEndpoint(v0);
  v8[0] = *MEMORY[0x1E695E4C0];
  if (v1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E69622B8], *MEMORY[0x1E695E480], v8);
    }
  }

  v4 = *MEMORY[0x1E695E4D0];
  if (FigCFEqual())
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_9;
    }
  }

  else if (!dword_1EB75DE40)
  {
    goto LABEL_9;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_9:
  if (v1)
  {
    CFRelease(v1);
  }

  if (v0)
  {
    CFRelease(v0);
  }

  result = FigCFEqual();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaemUpdateSharedAudioRouteState(const __CFArray *a1, CFArrayRef theArray)
{
  if (!theArray || (Count = CFArrayGetCount(theArray), Count < 1))
  {
    v6 = 0;
    if (!a1)
    {
      return v6;
    }

    goto LABEL_12;
  }

  v5 = Count;
  v6 = 0;
  for (i = 0; i != v5; ++i)
  {
    PortAtIndex = CMSMVAUtility_GetPortAtIndex(theArray, i);
    if (vaeDoesPortSupportMultipleConnections(PortAtIndex))
    {
      if (![+[MXAudioAccessoryServices isPortManaged:"isPortManaged:"]
      {
        v6 = 1;
        CMSM_IDSConnection_AddPortToSharedAudioRoutePortIDs(PortAtIndex, 0, 1);
        CMSM_IDSConnection_UpdateSharedAudioRouteIsConnectedToLocal(1);
        global_queue = dispatch_get_global_queue(0, 0);
        MXDispatchAsync("vaemUpdateSharedAudioRouteState", "CMSessionManager_VAEndpointManager.m", 10586, 0, 0, global_queue, &__block_literal_global_69);
        if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToRemote())
        {
          CMSMNotificationUtility_PostPickableRoutesDidChange(1);
        }
      }
    }
  }

  if (a1)
  {
LABEL_12:
    v10 = CFArrayGetCount(a1);
    if (v10 >= 1)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = CMSMVAUtility_GetPortAtIndex(a1, j);
        v14 = CMSM_IDSConnection_CopySharedAudioRoutePortIDs();
        ValueAtIndex = CFArrayGetValueAtIndex(a1, j);
        if (v14)
        {
          v16 = ValueAtIndex;
          v21.length = CFArrayGetCount(v14);
          v21.location = 0;
          if (CFArrayContainsValue(v14, v21, v16))
          {
            CMSM_IDSConnection_RemovePortFromSharedAudioRoutePortIDs(v13);
          }

          CFRelease(v14);
        }

        v17 = CMSM_IDSConnection_CopySharedAudioRoutePortIDs();
        v18 = v17;
        if (v17 && CFArrayGetCount(v17))
        {
          goto LABEL_23;
        }

        CMSM_IDSConnection_UpdateSharedAudioRouteIsConnectedToLocal(0);
        CMSM_IDSConnection_ResetRemotePlayingInfo();
        CMSM_IDSConnection_StopWaitForRemoteToReplyWithInitialPlayingInfoTimer();
        v19 = dispatch_get_global_queue(0, 0);
        MXDispatchAsync("vaemUpdateSharedAudioRouteState", "CMSessionManager_VAEndpointManager.m", 10647, 0, 0, v19, &__block_literal_global_71);
        cmsmUpdateEnableSharedAudioRouteSyntheticMute(0, 0, 0, 0, 1, 0);
        if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToRemote())
        {
          CMSMNotificationUtility_PostPickableRoutesDidChange(1);
        }

        if (v18)
        {
LABEL_23:
          CFRelease(v18);
        }
      }
    }
  }

  return v6;
}

const __CFArray *CMSMVAUtility_GetPortOfTypeInArray(int a1, CFArrayRef theArray)
{
  v2 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        if (vaeGetPortTypeFromPortID(valuePtr) == a1)
        {
          break;
        }

        if (v5 == ++v6)
        {
          return 0;
        }
      }

      v2 = valuePtr;
      if (valuePtr)
      {
        v9 = vaeCopyNameForPort(valuePtr);
        if (v9)
        {
          CFRelease(v9);
        }
      }
    }
  }

  return v2;
}

uint64_t FigRouteDiscoveryManagerGetNotificationQueue()
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  v0 = &qword_1EB75D480;
  if (!qword_1EB75D478)
  {
    v0 = 16;
  }

  return *v0;
}

uint64_t __vaemVADSerializationListener_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v5 = *(a1 + 32);
  CMSMVAUtility_AudioObjectSetPropertyData();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  result = FigSimpleMutexUnlock();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void CMSMNotificationUtility_PostAvailableVirtualFormatsDidChange()
{
  v0 = MXGetNotificationSenderQueue();

  MXDispatchAsync("CMSMNotificationUtility_PostAvailableVirtualFormatsDidChange", "CMSessionManager_NotificationUtilities.m", 1296, 0, 0, v0, &__block_literal_global_39_0);
}

CFArrayRef vaemCopyVirtualFormatsSupported()
{
  outData = 0;
  Copy = 0;
  if (vaemGetStream0([+[MXSessionManager defaultVADID] sharedInstance])
  {
    Mutable = 0;
  }

  else
  {
    Mutable = 0;
    if (outData)
    {
      if (vaemCopySupportedStreamFormats())
      {
        Copy = 0;
        Mutable = 0;
      }

      else
      {
        v2 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        Copy = CFArrayCreateCopy(v2, Mutable);
      }
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

BOOL vaemIsVolumeRampInProgress(AudioObjectID a1)
{
  inAddress_8[22] = *MEMORY[0x1E69E9840];
  if (!vaemDeviceSupportsVolumeRamp(a1))
  {
    if (!dword_1EB75DE40)
    {
LABEL_8:
      result = 0;
      goto LABEL_9;
    }

    LODWORD(inAddress) = 0;
    BYTE4(inAddress_8[0]) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_7:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_8;
  }

  inAddress = *"spmrptuo";
  inAddress_8[0] = 0;
  ioDataSize = 4;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, inAddress_8 + 4))
  {
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    goto LABEL_7;
  }

  result = HIDWORD(inAddress_8[0]) == 1;
LABEL_9:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSUtility_ResetIsPlayingStates(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  [a1 setClientIsPlaying:0];
  [a1 setHapticEngineIsPlaying:0];
  v2 = [a1 copyMXSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
        if ([v7 getIsPlaying])
        {
          [v7 resetIsPlayingStates];
        }

        if ([v7 getIsPlayingOutput])
        {
          [v7 setIsPlayingOutput:0];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [a1 setSomeMXSessionIsPlaying:0];
  [a1 setIsPlayingOutput:0];
  [a1 setDoesntActuallyPlayAudio:0];
  [a1 restoreSavedHWControlFlagsForClientThatDoesActuallyPlayAudio];
  result = cmsSetIsPlaying(a1, 0);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMDeviceState_ScreenIsBlankedByProximitySensor()
{
  if (byte_1EB75D360)
  {
    return byte_1EB75D358;
  }

  state64[1] = v0;
  state64[2] = v1;
  state64[0] = 0;
  if (notify_get_state(dword_1EB75D35C, state64))
  {
    v3 = 1;
  }

  else
  {
    v3 = state64[0] == 0;
  }

  return !v3;
}

void cmsmGetAndSetVolumePreferencesForNonActiveVolumeClient(void *a1, uint64_t a2, int a3, float a4, uint64_t a5, uint64_t a6, CFTypeRef *a7, const void *a8, _BYTE *a9, _BYTE *a10, float *a11, _BYTE *a12, _BYTE *a13, unsigned __int8 a14, char a15, unsigned __int8 a16)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a9)
  {
    goto LABEL_70;
  }

  if (!a11 || a12 == 0)
  {
    goto LABEL_70;
  }

  v17 = a9;
  v49 = 0;
  cf = 0;
  v48 = 0;
  *v46 = 0u;
  *v47 = 0u;
  CMSUtility_CopyCurrentCategoryAndDeviceRoute(a1, &cf, &v49, &v46[1], &v47[1], v47);
  v23 = +[MXSessionManager sharedInstance];
  v24 = [(MXSessionManager *)v23 getUncustomizedCategory:cf];
  if (v24)
  {
    v24 = CFRetain(v24);
  }

  cf = v24;
  v51 = *v46;
  v52 = *v47;
  v53 = v48;
  v46[0] = PVMGetMappedEndpointType(&v51);
  if (a3 > 7)
  {
    if (a3 <= 10)
    {
      if (a3 == 8)
      {
        if (!a13)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (a3 == 9)
        {
          v51 = *v46;
          v52 = *v47;
          v53 = v48;
          if (!PVMIsCurrentDeviceRoute(&v51))
          {
            goto LABEL_57;
          }

          goto LABEL_48;
        }

        if (!a13)
        {
          goto LABEL_57;
        }

        v51 = *v46;
        v52 = *v47;
        v53 = v48;
        if (!PVMIsCurrentDeviceRoute(&v51))
        {
          *a13 = 0;
          goto LABEL_57;
        }
      }

      *a13 = [a1 userMuted];
      goto LABEL_57;
    }

    if ((a3 - 11) >= 3)
    {
      if (a3 != 14)
      {
        goto LABEL_57;
      }

      v51 = *v46;
      v52 = *v47;
      v53 = v48;
      v32 = PVMGetVolumePreference(cf, v49, &v51);
      v51 = *v46;
      v52 = *v47;
      v53 = v48;
      PVMSetRawVolumePreference(cf, v49, &v51, a2, a14, a16, a4);
      v51 = *v46;
      v52 = *v47;
      v53 = v48;
      v33 = PVMGetVolumePreference(cf, v49, &v51);
      *a11 = v33;
      MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(0xEu, a16, v32, v33);
      v17 = a10;
      if (!dword_1EB75DE40)
      {
        goto LABEL_51;
      }

      goto LABEL_40;
    }

    if (!a8)
    {
      goto LABEL_57;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v49)
    {
      CFRelease(v49);
      v49 = 0;
    }

    v27 = CFRetain(a8);
    cf = v27;
    if (a3 == 12)
    {
      v30 = a10;
      if (!a15)
      {
        vaemUnmuteFullMuteIfMuted();
        v27 = cf;
      }

      v51 = *v46;
      v52 = *v47;
      v53 = v48;
      v43 = PVMGetVolumePreference(v27, v49, &v51);
      v51 = *v46;
      v52 = *v47;
      v53 = v48;
      PVMSetVolumePreference(cf, v49, a16, &v51, a2, a14, a4, 0.0, 0.0);
      MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(0xCu, a16, v43, a4);
      if (!dword_1EB75DE40)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (a3 != 11)
      {
LABEL_56:
        v51 = *v46;
        v52 = *v47;
        v53 = v48;
        *a11 = PVMGetVolumePreference(cf, v49, &v51);
        goto LABEL_57;
      }

      vaemUnmuteFullMuteIfMuted();
      v51 = *v46;
      v52 = *v47;
      v53 = v48;
      v28 = PVMGetVolumePreference(cf, v49, &v51);
      *a11 = v28 + a4;
      v51 = *v46;
      v52 = *v47;
      v53 = v48;
      PVMSetVolumePreference(cf, v49, a16, &v51, a2, a14, v28 + a4, 0.0, 0.0);
      v51 = *v46;
      v52 = *v47;
      v53 = v48;
      v29 = PVMGetVolumePreference(cf, v49, &v51);
      MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(0xBu, a16, v28, v29);
      v30 = a10;
      if (!dword_1EB75DE40)
      {
LABEL_55:
        *v30 = 1;
        goto LABEL_56;
      }
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_55;
  }

  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        vaemUnmuteFullMuteIfMuted();
        v51 = *v46;
        v52 = *v47;
        v53 = v48;
        v34 = PVMGetVolumePreference(cf, v49, &v51);
        v51 = *v46;
        v52 = *v47;
        v53 = v48;
        PVMSetVolumePreference(cf, v49, a16, &v51, a2, a14, v34 + a4, 0.0, 0.0);
        v51 = *v46;
        v52 = *v47;
        v53 = v48;
        v35 = PVMGetVolumePreference(cf, v49, &v51);
        *a11 = v35;
        MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(4u, a16, v34, v35);
        v17 = a10;
        if (dword_1EB75DE40)
        {
LABEL_40:
          v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        vaemUnmuteFullMuteIfMuted();
        v51 = *v46;
        v52 = *v47;
        v53 = v48;
        v25 = PVMGetVolumePreference(cf, v49, &v51);
        v51 = *v46;
        v52 = *v47;
        v53 = v48;
        PVMSetVolumePreference(cf, v49, a16, &v51, a2, a14, a4, 0.0, 0.0);
        v51 = *v46;
        v52 = *v47;
        v53 = v48;
        v26 = PVMGetVolumePreference(cf, v49, &v51);
        *a11 = v26;
        MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(5u, a16, v25, v26);
        v17 = a10;
        if (dword_1EB75DE40)
        {
          goto LABEL_40;
        }
      }

LABEL_51:
      *v17 = 1;
      goto LABEL_57;
    }

    if (a3 != 6)
    {
LABEL_48:
      v40 = [a1 userMuted];
      v41 = MEMORY[0x1E695E4C0];
      if (!v40)
      {
        v41 = MEMORY[0x1E695E4D0];
      }

      v42 = *v41;
      *a12 = v40 ^ (MXCoreSessionSetProperty(a1, @"UserMuted") == 0);
      goto LABEL_51;
    }

    goto LABEL_56;
  }

  switch(a3)
  {
    case 1:
      vaemUnmuteFullMuteIfMuted();
      v51 = *v46;
      v52 = *v47;
      v53 = v48;
      v37 = PVMGetVolumePreference(cf, v49, &v51);
      v51 = *v46;
      v52 = *v47;
      v53 = v48;
      PVMSetVolumePreference(cf, v49, a16, &v51, a2, a14, v37 + a4, 0.0, 0.0);
      v51 = *v46;
      v52 = *v47;
      v53 = v48;
      *a11 = PVMGetVolumePreference(cf, v49, &v51);
      *a10 = 1;
      MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(1u, a16, v37, *a11);
      if (!dword_1EB75DE40)
      {
        break;
      }

      goto LABEL_42;
    case 2:
      vaemUnmuteFullMuteIfMuted();
      v51 = *v46;
      v52 = *v47;
      v53 = v48;
      v39 = PVMGetVolumePreference(cf, v49, &v51);
      v51 = *v46;
      v52 = *v47;
      v53 = v48;
      PVMSetVolumePreference(cf, v49, a16, &v51, a2, a14, a4, 0.0, 0.0);
      v51 = *v46;
      v52 = *v47;
      v53 = v48;
      *a11 = PVMGetVolumePreference(cf, v49, &v51);
      *a10 = 1;
      MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(2u, a16, v39, *a11);
      if (!dword_1EB75DE40)
      {
        break;
      }

LABEL_42:
      v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      break;
    case 3:
      goto LABEL_56;
  }

LABEL_57:
  if (a7)
  {
    *a7 = cf;
LABEL_61:
    cf = 0;
    goto LABEL_62;
  }

  if (cf)
  {
    CFRelease(cf);
    goto LABEL_61;
  }

LABEL_62:
  if (v49)
  {
    CFRelease(v49);
    v49 = 0;
  }

  if (v47[1])
  {
    CFRelease(v47[1]);
    v47[1] = 0;
  }

  if (v46[1])
  {
    CFRelease(v46[1]);
    v46[1] = 0;
  }

  if (v47[0])
  {
    CFRelease(v47[0]);
  }

LABEL_70:
  v44 = *MEMORY[0x1E69E9840];
}

BOOL CMSUtility_PlaysToCarMainAudio(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_10:
    v2 = 0;
    goto LABEL_11;
  }

  [a1 audioCategory];
  v2 = 0;
  if (!FigCFEqual())
  {
    [a1 audioCategory];
    if (!FigCFEqual() && !CMSUtility_PlaysToCarAltAudio(a1) && CMSUtility_DoesSessionActuallyPlayAudio(a1))
    {
      v2 = 1;
    }
  }

  if ([a1 isTheAssistant] && FigRoutingManager_iOSIsCarPlayAuxStreamSupported())
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_10;
  }

LABEL_11:
  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t CMSUtility_DoesSessionActuallyPlayAudio(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1 && [a1 doesntActuallyPlayAudio])
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = 0;
  }

  else
  {
    result = 1;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigEndpointCentralRequestResource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  memset(v26, 0, sizeof(v26));
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  memset(v22, 0, sizeof(v22));
  v21 = 0;
  if (!a1)
  {
    goto LABEL_13;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_13;
  }

  v9 = DerivedStorage;
  v10 = *(a3 + 16);
  v19[0] = *a3;
  v19[1] = v10;
  v20 = *(a3 + 32);
  v11 = central_ConstructModeChangeRequestToGet(a5, a2, v19, v22);
  if (v11)
  {
    v16 = v11;
    goto LABEL_17;
  }

  v12 = *(v9 + 24);
  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  v14 = fsmcontroller_RequestModeChange(v12, v22, CStringPtrAndBufferToFree, v26, 0);
  if (FigCFEqual())
  {
    v15 = DWORD2(v26[0]);
  }

  else
  {
    if (!FigCFEqual())
    {
      v16 = 4294954311;
      goto LABEL_17;
    }

    v15 = v26[0];
  }

  v16 = 4294954311;
  if (!v14 && v15 == 2)
  {
    if (a5)
    {
      if ((v23 - 20) > 3)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(&off_1E7AEA590 + (v23 - 20));
      }

      v16 = 0;
      *a5 = v17;
      goto LABEL_17;
    }

LABEL_13:
    v16 = 0;
  }

LABEL_17:
  free(v21);
  return v16;
}

uint64_t fsmcontroller_RequestModeChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (a1)
  {
    v5 = *(a1 + 24);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __fsmcontroller_RequestModeChange_block_invoke;
    v8[3] = &unk_1E7AEA980;
    v8[4] = &v10;
    v8[5] = a1;
    v8[6] = a2;
    v8[7] = a3;
    v8[8] = a4;
    v9 = a5;
    MXDispatchSync("fsmcontroller_RequestModeChange", "FigStarkMode.m", 1340, 0, 0, v5, v8);
    v6 = *(v11 + 6);
  }

  else
  {
    v6 = 4294950566;
    v13 = -16730;
  }

  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t CMSUtility_ShouldBorrowCarMainAudio(void *a1)
{
  if (a1)
  {
    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    if (-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [a1 audioCategory]))
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    [a1 audioMode];
    if (FigCFEqual())
    {
      goto LABEL_29;
    }

    if ([a1 hasPhoneCallBehavior])
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (FigCFEqual() || ([a1 isTheAssistant] & 1) != 0)
    {
      goto LABEL_29;
    }

    [a1 audioCategory];
    if (!FigCFEqual())
    {
      [a1 audioCategory];
      if (!FigCFEqual())
      {
        LOBYTE(v3) = 0;
        return v3;
      }
    }

    v2 = [a1 interruptionStyle] - 1;
    if (v2 > 7)
    {
LABEL_29:
      LOBYTE(v3) = 1;
    }

    else
    {
      return (0x1010100010100uLL >> (8 * v2));
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

uint64_t central_ConstructModeChangeRequestToGet(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *(a3 + 16);
  v7 = *(a3 + 24);
  *a4 = 0x200000002;
  if (FigCFEqual())
  {
    v8 = 32;
  }

  else
  {
    if (!FigCFEqual())
    {
      return 4294949808;
    }

    v8 = 8;
  }

  v9 = (a4 + v8);
  if (a1)
  {
    v10 = *a1;
    if (FigCFEqual())
    {
      v11 = 500;
      v12 = 0x1F400000016;
    }

    else
    {
      v13 = *a1;
      FigCFEqual();
      v12 = 0x1F400000014;
      v11 = 0x6400000064;
    }

    *v9 = v12;
    v9[2] = v11;
  }

  *(a4 + 60) = v18;
  *(a4 + 56) = v7;
  if ((v7 & 0xFFFFFFFE) == 0xA)
  {
    *(v9 + 4) = 500;
    v14 = *(a4 + 60);
  }

  else
  {
    v14 = v18;
  }

  if (v14 == 1)
  {
    *(v9 + 4) = 1000;
  }

  v15 = *(a3 + 32);
  if (FigCFEqual() || (v16 = *(a3 + 32), result = FigCFEqual(), result))
  {
    result = 0;
    *(v9 + 4) = 1000;
  }

  return result;
}

void *CMSUtility_PlaysToCarAltAudio(void *result)
{
  if (result)
  {
    v1 = result;
    [result audioCategory];
    if (FigCFEqual() || ([v1 audioCategory], result = FigCFEqual(), result))
    {
      [v1 audioMode];
      return (FigCFEqual() != 0);
    }
  }

  return result;
}

uint64_t vaemConnectedPortsPropertyListener()
{
  v0 = MXGetSerialQueue();
  MXDispatchAsync("vaemConnectedPortsPropertyListener", "CMSessionManager_VAEndpointManager.m", 11139, 0, 0, v0, &__block_literal_global_135);
  return 0;
}

uint64_t fsmcontroller_GetCurrentMode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294950566;
  }

  if (!a2)
  {
    return 4294949645;
  }

  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_15();
  MXDispatchSync(v3, v4, v5, v6, v7, v8, v9);
  return 0;
}

MXAudioStatistics *MXSessionBeginInterruption_WithSecTaskAndFlags(void *a1, uint64_t a2, MXAudioStatistics *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__6;
  v32 = __Block_byref_object_dispose__6;
  v33 = a1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (!a1)
  {
    a3 = FigSignalErrorAtGM();
    *(v35 + 6) = a3;
    goto LABEL_8;
  }

  v6 = objc_autoreleasePoolPush();
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (isSessionSidekick(a1))
  {
    v8 = [a1 activate];
    goto LABEL_4;
  }

  v12 = v29[5];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_14:
    v16 = MXGetSerialQueue();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __MXSessionBeginInterruption_WithSecTaskAndFlags_block_invoke;
    v17[3] = &unk_1E7AE7B80;
    v17[4] = &v34;
    v17[5] = &v28;
    v17[8] = a2;
    v17[9] = a3;
    v17[6] = &v20;
    v17[7] = &v24;
    MXDispatchAsyncAndWait("MXSessionBeginInterruption_WithSecTaskAndFlags", "MXSession_CInterfaceCommon.m", 794, 0, 0, v16, v17);
    a3 = +[MXAudioStatistics sharedInstance];
    [(MXAudioStatistics *)a3 sendSinglePerformanceMessageForRoutine:"MXSessionBeginInterruption_WithSecTaskAndFlags" operationTime:FigGetUpTimeNanoseconds() - UpTimeNanoseconds details:0];
    if (!MX_FeatureFlags_IsOffloadActivationOffACQEnabled())
    {
      goto LABEL_5;
    }

    a3 = v29[5];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    [v29[5] setInterruptionCalledOffAudioControlQueue:0];
    if (*(v35 + 6))
    {
      goto LABEL_5;
    }

    v8 = mxsession_handleAsyncDuckingSleep(v29[5], *(v21 + 24), v25[6]);
LABEL_4:
    *(v35 + 6) = v8;
LABEL_5:
    v9 = 1;
    goto LABEL_6;
  }

  v13 = +[MXSessionManager sharedInstance];
  v14 = -[MXSessionManager prepareSessionActivationBeforeACQDispatch:](v13, "prepareSessionActivationBeforeACQDispatch:", [v29[5] getCoreSession]);
  *(v35 + 6) = v14;
  if (!v14)
  {
    if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled())
    {
      [v29[5] setInterruptionCalledOffAudioControlQueue:1];
    }

    goto LABEL_14;
  }

  v19 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v9 = 0;
  a3 = *(v35 + 6);
LABEL_6:
  objc_autoreleasePoolPop(v6);
  if (v9)
  {
    a3 = *(v35 + 6);
  }

LABEL_8:
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
  v10 = *MEMORY[0x1E69E9840];
  return a3;
}

void sub_1B18305B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t routingContextResilientRemote_CopySelectedRouteDescriptor(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingContextResilientRemote_CopySelectedRouteDescriptor_block_invoke;
  v3[3] = &__block_descriptor_40_e34_i16__0__OpaqueFigRoutingContext__8l;
  v3[4] = a2;
  return routingContextResilientRemote_withRemoteContext(a1, v3);
}

uint64_t FigRoutingContextXPCHandleCopySelectedRouteDescriptorMessage()
{
  if (*(*(OUTLINED_FUNCTION_30_1() + 16) + 32))
  {
    v1 = OUTLINED_FUNCTION_26_1();
    v3 = v2(v1);
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      if (!*(v0 + 3))
      {
        v4 = frcXPCServer_copySanitizedRouteDescriptor(cf);
        v5 = v4;
        v6 = cf;
        cf = v4;
        if (v4)
        {
          CFRetain(v4);
        }

        if (v6)
        {
          CFRelease(v6);
        }

        if (v5)
        {
          CFRelease(v5);
        }
      }

      FigXPCMessageSetCFDictionary();
      v7 = 0;
    }
  }

  else
  {
    v7 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t routingContext_CopySelectedRouteDescriptor(uint64_t a1, void *a2)
{
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 1);
  if (!IsOperationOnSystemInputContextAllowedInternal)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    theArray = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    IsOperationOnSystemInputContextAllowedInternal = FigRoutingManagerContextUtilities_CopyCachedSelectedRouteDescriptors(*(DerivedStorage + 8), &theArray);
    if (theArray)
    {
      if (CFArrayGetCount(theArray) >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        if (ValueAtIndex)
        {
          ValueAtIndex = CFRetain(ValueAtIndex);
        }

        *a2 = ValueAtIndex;
      }

      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }
    }

    v7 = objc_autoreleasePoolPush();
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"routingContext_CopySelectedRouteDescriptor" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    objc_autoreleasePoolPop(v7);
  }

  return IsOperationOnSystemInputContextAllowedInternal;
}

float CMSUtility_GetUserVolume(void *a1)
{
  v11 = 0;
  *v9 = 0u;
  *v10 = 0u;
  v7 = 0;
  cf = 0;
  v1 = 0.5;
  if (!CMSUtility_CopyCurrentCategoryAndDeviceRoute(a1, &cf, &v7, &v9[1], &v10[1], v10))
  {
    v2 = +[MXSessionManager sharedInstance];
    v3 = [(MXSessionManager *)v2 getUncustomizedCategory:cf];
    v5[0] = *v9;
    v5[1] = *v10;
    v6 = v11;
    v1 = PVMGetVolumePreference(v3, v7, v5);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v7)
  {
    CFRelease(v7);
    v7 = 0;
  }

  if (v9[1])
  {
    CFRelease(v9[1]);
    v9[1] = 0;
  }

  if (v10[1])
  {
    CFRelease(v10[1]);
    v10[1] = 0;
  }

  if (v10[0])
  {
    CFRelease(v10[0]);
  }

  return v1;
}

uint64_t FigRoutingManagerCopyActiveNeroVisualStream(uint64_t a1)
{
  theArray = 0;
  v9 = 0;
  FigRoutingManagerContextUtilities_CopyActivatedEndpoints(a1, &theArray);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v2 = Count;
      v3 = 0;
      v4 = *MEMORY[0x1E69626C8];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
        if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
        {
          break;
        }

        if (v2 == ++v3)
        {
          goto LABEL_8;
        }
      }

      v6 = *MEMORY[0x1E69625F8];
      FigEndpointCopyFirstStreamOfType();
    }

LABEL_8:
    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  return v9;
}

uint64_t FigRoutingManagerCopyActiveNeroVisualStreamInfo(uint64_t a1)
{
  v7 = 0;
  result = FigRoutingManagerCopyActiveNeroVisualStream(a1);
  if (result)
  {
    v2 = result;
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v5 = *(*(VTable + 8) + 48);
    if (v5)
    {
      v6 = *(VTable + 8) + 48;
      v5(CMBaseObject, *MEMORY[0x1E6962580], *MEMORY[0x1E695E480], &v7);
    }

    CFRelease(v2);
    return v7;
  }

  return result;
}

uint64_t vaemGetDownlinkMute()
{
  v1 = 0;
  if (!qword_1EB75E070)
  {
    return 0;
  }

  qword_1EB75E070(0, &v1);
  return (v1 >> 1) & 1;
}

uint64_t central_UnborrowScreen(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v4 = 0x200000002;
  LODWORD(v5) = 23;
  central_requestCarModeChange(a1, &v4, a2, a3);
  return 0;
}

void fsm_requestResourceModeChangeUnborrowWithoutBorrowID(int a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
  }

  else
  {
    Count = 0;
  }

  while (Count-- >= 1)
  {
    CFArrayGetValueAtIndex(*(a2 + 16), Count);
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
    if (!a1)
    {
      CFArrayRemoveValueAtIndex(*(a2 + 16), Count);
      return;
    }
  }
}

uint64_t mxsession_handleAsyncDuckingSleep(void *a1, int a2, float a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3 <= 0.0 || (v6 = +[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), *&v7 = a3, -[MXSessionManager sleepForAsyncDucking:duration:](v6, "sleepForAsyncDucking:duration:", a2 != 0, v7), ([objc_msgSend(a1 "getCoreSession")] & 1) != 0))
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

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void vaemUpdateSystemHasAudioInputDeviceState()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = vaemSystemHasAudioInputDeviceForRouteConfiguration(1668309362, 1768776806);
  v1 = vaemSystemHasAudioInputDeviceForRouteConfiguration(1668313666, 1768776806);
  v2 = v1;
  v3 = byte_1EB75D159;
  if (byte_1EB75D159 == v0)
  {
    if (byte_1EB75D15A == v1 || dword_1EB75DE40 == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!dword_1EB75DE40)
  {
    goto LABEL_10;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v3 = byte_1EB75D159;
LABEL_10:
  if (v3 != v0)
  {
    byte_1EB75D159 = v0;
    CMSMNotificationUtility_PostSystemHasAudioInputDeviceDidChange();
  }

LABEL_12:
  if (byte_1EB75D15A != v2)
  {
    byte_1EB75D15A = v2;
    CMSMNotificationUtility_PostSystemHasAudioInputDeviceExcludingBluetoothDidChange();
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __FigRoutingContextResilientRemoteCopySystemAudioContext_block_invoke_2(uint64_t a1)
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

uint64_t CMSUtility_CopyCurrentCategoryAndDeviceRoute(void *a1, NSDictionary **a2, void *a3, CFTypeRef *a4, CFTypeRef *a5, CFTypeRef *a6)
{
  v19 = 0;
  cf = 0;
  v18 = 0;
  if ([a1 audioCategory])
  {
    v12 = CFRetain([a1 audioCategory]);
    v13 = [a1 audioMode];
    v14 = [a1 activationContext];
    v15 = [a1 prefersBluetoothHighQualityContentCapture];
    if (v13)
    {
      CFRetain(v13);
    }
  }

  else
  {
    v12 = CFRetain(@"Audio/Video");
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  if (![a1 isActive])
  {
    v16 = CMSMUtility_CopyDeviceRouteAtIndexForInactiveRouteConfiguration(v12, v13, v14, v15, 0, &cf, &v19, &v18);
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  PVMCopyCurrentDeviceRoute(&cf, &v19, &v18);
  v16 = 0;
  if (a2)
  {
LABEL_9:
    *a2 = v12;
    v12 = 0;
  }

LABEL_10:
  if (a3)
  {
    *a3 = v13;
    v13 = 0;
  }

  if (a4)
  {
    *a4 = cf;
    cf = 0;
  }

  if (a5)
  {
    *a5 = v19;
    v19 = 0;
  }

  if (a6)
  {
    *a6 = v18;
    v18 = 0;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v16;
}

uint64_t FigVAEndpointManagerCopyPropertyForAudioDevice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, 0, a5);
}

uint64_t _VAEndpointManager_CopyPropertyForAudioDevice(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, _DWORD *a5, void *a6)
{
  CMBaseObjectGetDerivedStorage();
  v10 = 4294950586;
  if (a2 && a4 && a6)
  {
    *a6 = 0;
    if (CFEqual(a2, @"VAEM_Stream0"))
    {
      LODWORD(outData) = 0;
      v11 = OUTLINED_FUNCTION_9_2();
      Stream0 = vaemGetStream0(v11, v12, v13);
LABEL_6:
      v10 = Stream0;
      v15 = MXCFNumberCreateFromSInt64(outData);
LABEL_14:
      *a6 = v15;
      return v10;
    }

    if (CFEqual(a2, @"VAEM_DeviceFormatID"))
    {
      LODWORD(outData) = 0;
      v25 = OUTLINED_FUNCTION_9_2();
      vaemGetDeviceFormatID(v25, v26, v27);
      goto LABEL_6;
    }

    if (CFEqual(a2, @"VAEM_DeviceVolume"))
    {
      outData = 0x6F757470766F6C6DLL;
      v35 = 0;
      OUTLINED_FUNCTION_7_1();
      AudioObjectGetPropertyData(v16, v17, v18, v19, v20, v21);
      CurrentLatencyForVADIDAndScope = 0.0;
LABEL_10:
      v15 = MXCFNumberCreateFromFloat32(CurrentLatencyForVADIDAndScope);
LABEL_11:
      v10 = 0;
      goto LABEL_14;
    }

    if (CFEqual(a2, @"VAEM_DecibelEquivalentInVAD"))
    {
      LODWORD(outData) = *a5;
      v10 = vaemConvertToDecibelInVAD(a4, &outData);
      v15 = MXCFNumberCreateFromFloat32(*&outData);
      goto LABEL_14;
    }

    if (CFEqual(a2, @"VAEM_DeviceSampleRate"))
    {
      SampleRateForDevice = vaemGetSampleRateForDevice(a4);
      v15 = MXCFNumberCreateFromFloat64(SampleRateForDevice);
      goto LABEL_11;
    }

    if (CFEqual(a2, @"VAEM_DeviceFormat"))
    {
      outData = 0;
      v28 = OUTLINED_FUNCTION_9_2();
      vaemCopyDeviceFormat(v28, v29, v30);
    }

    else
    {
      if (!CFEqual(a2, @"VAEM_AudioClockDevice"))
      {
        if (CFEqual(a2, @"VAEM_DetailedActiveAudioRoute"))
        {
          v15 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyDetailedRouteDescription:"copyDetailedRouteDescription:", a4];
          goto LABEL_11;
        }

        if (CFEqual(a2, @"VAEM_CurrentInputLatency"))
        {
          v32 = a4;
          v33 = 1;
        }

        else
        {
          if (!CFEqual(a2, @"VAEM_CurrentOutputLatency"))
          {
            return 0;
          }

          v32 = OUTLINED_FUNCTION_14_1();
        }

        CurrentLatencyForVADIDAndScope = vaemGetCurrentLatencyForVADIDAndScope(v32, v33);
        goto LABEL_10;
      }

      outData = 0;
      v31 = vaemCopyClockDeviceForAudioDevice(a4, &outData);
    }

    v10 = v31;
    *a6 = outData;
  }

  return v10;
}

float vaemGetCurrentLatencyForVADIDAndScope(uint64_t a1, int a2)
{
  v7[24] = *MEMORY[0x1E69E9840];
  v7[0] = 0.0;
  if (off_1EB75E078)
  {
    VADNameForVADID = CMSMUtility_GetVADNameForVADID(a1);
    off_1EB75E078(VADNameForVADID, a2 == 1, v7);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v7[0];
}

uint64_t vaemSetDeviceFormat(uint64_t a1, const void *a2, int a3)
{
  v76 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (dword_1EB75DE40)
  {
    LODWORD(v71[0]) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_0_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (byte_1EB75D184)
  {
    Stream0 = 4294954309;
    goto LABEL_39;
  }

  Stream0 = vaemGetStream0(a1, 0, &outData);
  if (!Stream0 && outData)
  {
    v75 = 0;
    memset(v74, 0, sizeof(v74));
    vaemGetStreamASBD(outData, v74);
    if (v8)
    {
      Stream0 = v8;
      goto LABEL_39;
    }

    if (!a2)
    {
      goto LABEL_28;
    }

    if (CFEqual(a2, @"MATAtmos"))
    {
      if ((v74[2] & 0xFFFFFEFF) != 0x6D74622B)
      {
        v9 = 1836344107;
        v10 = vaemStreamSupportsFormat();
        v11 = vaemStreamSupportsFormat();
        if (v10 || (v9 = 1836343851, v11))
        {
          *&v71[0] = 0x40E7700000000000;
          DWORD2(v71[0]) = v9;
          *(v71 + 12) = xmmword_1B19D8640;
          *(&v71[1] + 12) = 0x1000000020;
          DWORD1(v71[2]) = 0;
          v72 = 0x6F75747073666D74;
          v73 = 0;
          OUTLINED_FUNCTION_7_1();
          Stream0 = CMSMVAUtility_AudioObjectSetPropertyData();
          [+[MXSessionManager sharedInstance](MXSessionManager updateDeviceSampleRate:"updateDeviceSampleRate:", a1];
          if (Stream0)
          {
            goto LABEL_39;
          }

          if (dword_1EB75DE40)
          {
            v12 = OUTLINED_FUNCTION_4_8();
            v20 = OUTLINED_FUNCTION_16_1(v12, v13, v14, v15, v16, v17, v18, v19, v65, v66, v67, SWORD2(v67), SBYTE6(v67), HIBYTE(v67), v68);
            if (OUTLINED_FUNCTION_3_0(v20))
            {
              OUTLINED_FUNCTION_12_2();
              OUTLINED_FUNCTION_1_5();
              OUTLINED_FUNCTION_2_4();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_0_0();
            OUTLINED_FUNCTION_13();
          }

          goto LABEL_32;
        }

        v24 = OUTLINED_FUNCTION_11_1();
        v32 = OUTLINED_FUNCTION_17_2(v24, v25, v26, v27, v28, v29, v30, v31, v65, v66, v67, v68, outData, *type);
        if (OUTLINED_FUNCTION_3_0(v32))
        {
          goto LABEL_36;
        }

        goto LABEL_37;
      }

LABEL_38:
      Stream0 = 0;
      goto LABEL_39;
    }

    if (CFEqual(a2, @"AC-3"))
    {
      if (v74[2] == 1667326771)
      {
        goto LABEL_38;
      }

      if (!vaemStreamSupportsFormat())
      {
        v33 = OUTLINED_FUNCTION_11_1();
        v41 = OUTLINED_FUNCTION_17_2(v33, v34, v35, v36, v37, v38, v39, v40, v65, v66, v67, v68, outData, *type);
        if (OUTLINED_FUNCTION_3_0(v41))
        {
LABEL_36:
          OUTLINED_FUNCTION_8_3();
          OUTLINED_FUNCTION_2_4();
          _os_log_send_and_compose_impl();
        }

LABEL_37:
        OUTLINED_FUNCTION_13();
        goto LABEL_38;
      }

      *&v71[0] = 0x40E7700000000000;
      *(v71 + 8) = xmmword_1B19D8650;
      *(&v71[1] + 8) = xmmword_1B19D8660;
      Stream0 = vaemSetStreamASBD(outData, v71, 0, a1);
      if (!Stream0)
      {
        if (dword_1EB75DE40)
        {
          v21 = OUTLINED_FUNCTION_4_8();
          if (os_log_type_enabled(v21, HIBYTE(v67)))
          {
            v22 = v68;
          }

          else
          {
            v22 = v68 & 0xFFFFFFFE;
          }

          if (v22)
          {
            OUTLINED_FUNCTION_12_2();
            OUTLINED_FUNCTION_1_5();
            OUTLINED_FUNCTION_2_4();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_0_0();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        HDMILatencyMgr_SetIsPlayingAtmos();
      }
    }

    else
    {
LABEL_28:
      if (!a3 && v74[2] == 1819304813)
      {
        goto LABEL_38;
      }

      memset(v71, 0, 40);
      v72 = 0;
      *type = 0;
      v23 = vaemCopySupportedStreamFormats();
      if (v23)
      {
        Stream0 = v23;
        free(v72);
        goto LABEL_39;
      }

      v44 = *type;
      if (*type)
      {
        v45 = 0;
        v46 = 0;
        v47 = v72;
        v48 = *type;
        do
        {
          if (*(v47 + 2) == 1819304813)
          {
            if (v46 && *(v47 + 7) != 2)
            {
              v46 = 1;
            }

            else
            {
              v49 = *v47;
              v50 = v47[1];
              *&v71[2] = *(v47 + 4);
              v71[0] = v49;
              v71[1] = v50;
              v51 = *v47;
              *&v71[0] = *v47;
              v45 = HIDWORD(v50);
              v46 = 1;
              if (HIDWORD(v50) == 2 && v51 == 44100.0)
              {
                goto LABEL_59;
              }
            }
          }

          v47 = (v47 + 56);
          --v48;
        }

        while (v48);
        if (v45 != 2)
        {
          v52 = v72;
          while (v52[2] != 1819304813 || *v52 != 44100.0)
          {
            v52 += 14;
            if (!--v44)
            {
              goto LABEL_59;
            }
          }

          v53 = *(v52 + 4);
          v55 = *v52;
          v54 = *(v52 + 1);
          *(&v71[0] + 1) = *(v52 + 1);
          v71[1] = v54;
          *&v71[2] = v53;
          *&v71[0] = 0x40E5888000000000;
        }
      }

LABEL_59:
      free(v72);
      v72 = 0x6F75747073666D74;
      v73 = 0;
      OUTLINED_FUNCTION_7_1();
      Stream0 = CMSMVAUtility_AudioObjectSetPropertyData();
      [+[MXSessionManager sharedInstance](MXSessionManager updateDeviceSampleRate:"updateDeviceSampleRate:", a1];
      if (!Stream0)
      {
        if (dword_1EB75DE40)
        {
          v56 = OUTLINED_FUNCTION_4_8();
          v64 = OUTLINED_FUNCTION_16_1(v56, v57, v58, v59, v60, v61, v62, v63, v65, v66, v67, SWORD2(v67), SBYTE6(v67), HIBYTE(v67), v68);
          if (OUTLINED_FUNCTION_3_0(v64))
          {
            OUTLINED_FUNCTION_12_2();
            OUTLINED_FUNCTION_1_5();
            OUTLINED_FUNCTION_2_4();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_0_0();
          OUTLINED_FUNCTION_13();
        }

LABEL_32:
        HDMILatencyMgr_SetIsPlayingAtmos();
        goto LABEL_38;
      }
    }
  }

LABEL_39:
  v42 = *MEMORY[0x1E69E9840];
  return Stream0;
}