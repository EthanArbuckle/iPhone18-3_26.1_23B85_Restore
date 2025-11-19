void __FigRoutingManagerProcessCustomizedRouting_block_invoke_72(uint64_t a1, CFTypeRef cf, CFTypeRef a3, CFTypeRef a4)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  v8 = MXGetSerialQueue();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingManagerProcessCustomizedRouting_block_invoke_2_73;
  v9[3] = &unk_1E7AEB5A0;
  v10 = *(a1 + 40);
  v9[6] = a3;
  v9[7] = a4;
  v9[4] = *(a1 + 32);
  v9[5] = cf;
  MXDispatchAsync("FigRoutingManagerProcessCustomizedRouting_block_invoke", "FigRoutingManager_iOS.m", 1380, 0, 0, v8, v9);
}

void __FigRoutingManagerProcessCustomizedRouting_block_invoke_2_73(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = *(a1 + 40);
  if (v2 == 1)
  {
    CMSMVAUtility_RouteDefaultVADToCarPlayIfNecessary(v3, 1);
  }

  else
  {
    CMSMVAUtility_MakeNewlyConnectedWirelessPortsRoutableForEndpoint(v3, *(a1 + 48), *(a1 + 56), 0);
    v4 = routingManager_copyPickedEndpointsFromCurrentRoutesInfo(*(a1 + 56));
    v5 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v4, 0);
    FigRoutingManagerContextUtilities_SetPickedEndpoints(*(a1 + 56), v4, @"configUpdateReasonEndedSuccess", 0, v5);
    if (v5)
    {
      CFRelease(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [+[MX_BannerManager promptUserResponseForUndoRoute:v11], "promptUserResponseForUndoRoute:undoHandler:", *(a1 + 32), &__block_literal_global_76_1];
  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __FigRoutingManagerProcessCustomizedRouting_block_invoke_74(int a1, CFTypeRef cf, CFTypeRef a3)
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
  v6[2] = __FigRoutingManagerProcessCustomizedRouting_block_invoke_2_77;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = cf;
  v6[5] = a3;
  MXDispatchAsync("FigRoutingManagerProcessCustomizedRouting_block_invoke", "FigRoutingManager_iOS.m", 1408, 0, 0, v5, v6);
}

void __FigRoutingManagerProcessCustomizedRouting_block_invoke_2_77(uint64_t a1)
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

void FigRoutingManagerNewWirelessPortsAdded(const void *a1)
{
  theArray = 0;
  FigRoutingManagerContextUtilities_CopyAllRoutingContextUUIDs(&theArray);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      v5 = *MEMORY[0x1E69626C0];
      v6 = *MEMORY[0x1E69626B8];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
        if (FigRoutingManagerContextUtilities_GetContextType(ValueAtIndex) != 2 || !MXSystemMirroring_IsTestCodeEnabled())
        {
          break;
        }

        MXSystemMirroring_HandleNewWirelessPorts(a1, ValueAtIndex);
LABEL_33:
        if (++v4 == v3)
        {
          goto LABEL_57;
        }
      }

      cf = 0;
      FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(ValueAtIndex, &cf);
      v23 = 0;
      FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(ValueAtIndex, &v23);
      v22 = 0;
      FigRoutingManagerContextUtilities_GetPickingState(ValueAtIndex, &v22);
      if (FigRoutingManagerAreAllEndpointsBluetoothShareable(v23) && v23 && CFArrayGetCount(v23) >= 2)
      {
        for (i = 0; ; ++i)
        {
          v9 = v23;
          if (v23)
          {
            v9 = CFArrayGetCount(v23);
          }

          if (i >= v9)
          {
            v11 = 1;
            goto LABEL_28;
          }

          v10 = CFArrayGetValueAtIndex(v23, i);
          if (!CMSMVAUtility_IsA2DPPortAvailableForEndpoint(v10, 0))
          {
            break;
          }

          FigRoutingManagerContextUtilities_SetPickingState(ValueAtIndex, 6);
        }

        v11 = 1;
        v12 = 5;
        goto LABEL_27;
      }

      if (v22 == 8)
      {
        if (CMSMVAUtility_IsPortAvailableForEndpoint(cf, a1))
        {
          if (FigRoutingManagerIsEndpointOfType(cf))
          {
            FigRoutingManagerStopCarPlayAudioMainPortPublishedCheckTimer();
          }

          v11 = 0;
          v12 = 9;
LABEL_27:
          FigRoutingManagerContextUtilities_SetPickingState(ValueAtIndex, v12);
LABEL_28:
          FigRoutingManagerContextUtilities_GetPickingState(ValueAtIndex, &v22);
          if ((v22 - 5) < 2)
          {
LABEL_29:
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            if (v23)
            {
              CFRelease(v23);
            }

            goto LABEL_33;
          }

          if (v22 == 9)
          {
            if (v11)
            {
              FigRoutingManagerEnableBluetoothSharingSession(ValueAtIndex, v23);
              goto LABEL_29;
            }

            if (FigRoutingManagerIsEndpointOfType(cf))
            {
              FigRoutingManagerRouteToBluetoothDevice(ValueAtIndex, cf);
              goto LABEL_29;
            }

            v21 = 0;
            FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(ValueAtIndex, cf, &v21);
            v20 = 0;
            FigRoutingManagerContextUtilities_GetActivatedEndpointFeatures(ValueAtIndex, cf, &v20);
            theDict = 0;
            FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpointInfo(ValueAtIndex, &theDict);
            if (theDict)
            {
              Value = CFDictionaryGetValue(theDict, @"CurrentlyActivatingEndpointsInfo_ClientRouteChangeOptions");
              CFDictionaryGetValue(theDict, @"CurrentlyActivatingEndpointsInfo_InternalRouteChangeOptions");
            }

            else
            {
              Value = 0;
            }

            FigRoutingManager_iOSHandleFigEndpointFeaturesActivation(cf, v20, v21, ValueAtIndex, Value);
            v17 = theDict;
            if (!theDict)
            {
              goto LABEL_29;
            }

LABEL_56:
            CFRelease(v17);
            goto LABEL_29;
          }

          if (FigRoutingManagerContextUtilities_GetContextType(ValueAtIndex) != 1)
          {
            goto LABEL_29;
          }

          v13 = CMSMVAUtility_CopyWirelessPortsToEnableBluetoothSharing(a1);
          v14 = v13;
          if (v13 && CFArrayGetCount(v13) >= 1)
          {
            CMSMVAUtility_AggregatePorts(v14, 0, ValueAtIndex);
          }

          else
          {
            if (MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled())
            {
              FigRoutingManagerProcessCustomizedRouting(a1, ValueAtIndex);
LABEL_52:
              if (!v14)
              {
                goto LABEL_29;
              }

              v17 = v14;
              goto LABEL_56;
            }

            CMSMVAUtility_MakeNewlyConnectedWirelessPortsRoutableForEndpoint(a1, cf, ValueAtIndex, 0);
            if (!v14)
            {
LABEL_50:
              v14 = routingManager_copyPickedEndpointsFromCurrentRoutesInfo(ValueAtIndex);
              v16 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v14, 0);
              FigRoutingManagerContextUtilities_SetPickedEndpoints(ValueAtIndex, v14, @"configUpdateReasonEndedSuccess", 0, v16);
              if (v16)
              {
                CFRelease(v16);
              }

              goto LABEL_52;
            }
          }

          CFRelease(v14);
          goto LABEL_50;
        }
      }

      else if (v22 == 5)
      {
        v11 = 0;
        if (!CMSMVAUtility_IsPortAvailableForEndpoint(cf, a1))
        {
          goto LABEL_28;
        }

        v12 = 6;
        goto LABEL_27;
      }

      v11 = 0;
      goto LABEL_28;
    }
  }

LABEL_57:
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&cf);
  CMSMVAUtility_CreateMusicVADIfNeeded(a1, cf);
  if (*(FigRoutingManagerGetSharedManager() + 40))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"crossfadePlayback", *MEMORY[0x1E695E4D0]);
    FigRoutingManagerCrossfadePlayback();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

void FigRoutingManagerCrossfadePlayback()
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  v0 = *MEMORY[0x1E69E9840];
}

void FigRoutingManagerCopyAirPlayEndpointsInUseForFeatures(uint64_t a1, CFMutableArrayRef *a2, CFMutableArrayRef *a3, CFMutableArrayRef *a4, CFMutableArrayRef *a5)
{
  v5 = a5;
  v7 = a3;
  if (a2 || a3 || a4 || a5)
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v12 = CFArrayCreateMutable(v9, 0, v10);
    v13 = CFArrayCreateMutable(v9, 0, v10);
    v14 = CFArrayCreateMutable(v9, 0, v10);
    theDict = 0;
    FigRoutingManagerContextUtilities_CopyNonControlPickedContexts(&theDict);
    if (theDict)
    {
      v37 = v7;
      v38 = v5;
      v42 = v14;
      v43 = v12;
      theArray = Mutable;
      Count = CFDictionaryGetCount(theDict);
      v16 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(theDict, v16, 0);
      v41 = Count;
      if (Count >= 1)
      {
        v17 = 0;
        v18 = *MEMORY[0x1E69626A8];
        v39 = v16;
        v40 = v13;
        do
        {
          v19 = v16[v17];
          Value = CFDictionaryGetValue(theDict, v19);
          v21 = CFDictionaryGetValue(Value, @"CurrentlyActivatingEndpointsInfo");
          if (v21)
          {
            v22 = v21;
            v23 = CFArrayGetCount(v21);
            if (v23 >= 1)
            {
              v24 = v23;
              for (i = 0; i != v24; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v22, i);
                v27 = CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_Endpoint");
                if (v27)
                {
                  v28 = v27;
                  if (FigRoutingManagerIsEndpointOfType(v27))
                  {
                    CFArrayAppendValue(theArray, v28);
                    CFArrayAppendValue(v43, v19);
                  }
                }
              }
            }
          }

          v29 = CFDictionaryGetValue(Value, @"ActivatedEndpointsInfo");
          v13 = v40;
          if (v29)
          {
            v30 = v29;
            v31 = CFArrayGetCount(v29);
            if (v31 >= 1)
            {
              v32 = v31;
              for (j = 0; j != v32; ++j)
              {
                v34 = CFArrayGetValueAtIndex(v30, j);
                v35 = CFDictionaryGetValue(v34, @"ActivatedEndpointsInfo_Endpoint");
                if (v35)
                {
                  v36 = v35;
                  if (FigRoutingManagerIsEndpointOfType(v35))
                  {
                    CFArrayAppendValue(v40, v36);
                    CFArrayAppendValue(v42, v19);
                  }
                }
              }
            }
          }

          ++v17;
          v16 = v39;
        }

        while (v17 != v41);
      }

      v5 = v38;
      v12 = v43;
      Mutable = theArray;
      v14 = v42;
      v7 = v37;
      if (v16)
      {
        free(v16);
      }
    }

    if (a2)
    {
      *a2 = Mutable;
      Mutable = 0;
    }

    if (v7)
    {
      *v7 = v12;
      v12 = 0;
    }

    if (a4)
    {
      *a4 = v13;
      v13 = 0;
    }

    if (v5)
    {
      *v5 = v14;
      v14 = 0;
    }

    if (theDict)
    {
      CFRelease(theDict);
      theDict = 0;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v12)
    {
      CFRelease(v12);
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

uint64_t FigRoutingManagerPostProcessPickEndpoint(const void *a1, uint64_t a2)
{
  v32[21] = *MEMORY[0x1E69E9840];
  v26 = FigRoutingManagerContextUtilities_SetPickingState(a2, 10);
  v32[0] = 0;
  v4 = MEMORY[0x1E69626A8];
  v5 = MEMORY[0x1E695E480];
  if (a1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, *MEMORY[0x1E69620F8], *v5, v32);
    }

    v8 = *v4;
    if (FigRoutingManagerIsEndpointOfType(a1))
    {
      SharedManager = FigRoutingManagerGetSharedManager();
      CFRetain(a1);
      v10 = *(SharedManager + 1);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __FigRoutingManagerPostProcessPickEndpoint_block_invoke;
      v31[3] = &__block_descriptor_40_e5_v8__0l;
      v31[4] = a1;
      MXDispatchAsync("FigRoutingManagerPostProcessPickEndpoint", "FigRoutingManager_iOS.m", 2816, 0, 0, v10, v31);
    }
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyActivatedEndpointsInfo(a2, &theArray);
  Count = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v13 = Count;
      v14 = 0;
      v15 = *v4;
      v27 = *MEMORY[0x1E69626C0];
      v23 = *MEMORY[0x1E69626C8];
      v24 = *v5;
      v25 = *MEMORY[0x1E69621E8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v14);
        Count = CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_Endpoint");
        if (Count != a1)
        {
          v17 = Count;
          Count = FigEndpointUtility_EndpointPredicate_ContainsID();
          if (!Count)
          {
            if (FigRoutingManagerIsEndpointOfType(v17) || FigRoutingManagerIsEndpointOfType(v17) || (Count = FigRoutingManagerIsEndpointOfType(v17), Count))
            {
              if (FigRoutingManagerIsEndpointOfType(v17) || (FigRoutingManagerIsEndpointOfType(v17) || (Count = FigRoutingManagerIsEndpointOfType(v17), Count)) && (Count = FigRoutingManagerIsEndpointOfType(a1), Count))
              {
                v29 = 0;
                FigCFDictionaryGetInt64IfPresent();
                cf = 0;
                v18 = FigEndpointGetCMBaseObject();
                v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v19)
                {
                  v19(v18, v25, v24, &cf);
                }

                if (dword_1EB75DF20)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                FigRoutingManager_iOSDeactivateEndpoint(v17, v29, 0);
                Count = cf;
                if (cf)
                {
                  CFRelease(cf);
                }
              }
            }
          }
        }

        ++v14;
      }

      while (v13 != v14);
    }
  }

  FigRoutingContextUtilities_LogCurrentState(Count, v11);
  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (v32[0])
  {
    CFRelease(v32[0]);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v26;
}

void __FigRoutingManagerPostProcessPickEndpoint_block_invoke(uint64_t a1)
{
  FigRoutingManagerStopDeactivateAirPlayEndpointTimer();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void FigRoutingManagerDeactivateEndpointFromPickedContexts(const void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  theDict[21] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1;
    theDict[0] = 0;
    FigRoutingManagerContextUtilities_CopyNonControlPickedContexts(theDict);
    if (FigCFDictionaryGetCount() >= 1)
    {
      Count = CFDictionaryGetCount(theDict[0]);
      v6 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(theDict[0], v6, 0);
      v29 = Count;
      if (Count >= 1)
      {
        v7 = 0;
        v8 = *MEMORY[0x1E69622F8];
        v9 = *MEMORY[0x1E695E480];
        v10 = *MEMORY[0x1E69626A8];
        v27 = *MEMORY[0x1E69621E8];
        v28 = v6;
        v31 = v4;
        do
        {
          v32 = v7;
          v11 = v6[v7];
          ContextType = FigRoutingManagerContextUtilities_GetContextType(v11);
          v33 = v11;
          Value = CFDictionaryGetValue(theDict[0], v11);
          v14 = CFDictionaryGetValue(Value, @"ActivatedEndpointsInfo");
          if (v14)
          {
            v15 = v14;
            v16 = CFArrayGetCount(v14);
            if (v16 >= 1)
            {
              v17 = v16;
              v18 = 0;
              v35 = ContextType & 0xFFFFFFFB;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v15, v18);
                v20 = CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_Endpoint");
                v38 = 0;
                FigCFDictionaryGetInt64IfPresent();
                v37 = 0;
                CMBaseObject = FigEndpointGetCMBaseObject();
                v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v22)
                {
                  v22(CMBaseObject, v8, v9, &v37);
                }

                if (FigCFEqual() && v20 == v4 && !MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed())
                {
                  cf = 0;
                  v23 = FigEndpointGetCMBaseObject();
                  v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v24)
                  {
                    v24(v23, v27, v9, &cf);
                  }

                  if (dword_1EB75DF20)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v4 = v31;
                  }

                  FigRoutingManager_iOSDeactivateEndpoint(v20, v38, a3);
                  if (cf)
                  {
                    CFRelease(cf);
                    cf = 0;
                  }

                  if (v35 == 2)
                  {
                    FigRoutingManagerContextUtilities_SetPickedEndpoints(v33, 0, a4, 0, 0);
                  }
                }

                if (v37)
                {
                  CFRelease(v37);
                }

                ++v18;
              }

              while (v17 != v18);
            }
          }

          v7 = v32 + 1;
          v6 = v28;
        }

        while (v32 + 1 != v29);
      }

      if (v6)
      {
        free(v6);
      }
    }

    if (theDict[0])
    {
      CFRelease(theDict[0]);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t FigRoutingManagerPickEndpointForContext(uint64_t a1, const void *a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  cf[20] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69626C0];
  if (FigRoutingManagerIsEndpointOfType(a2))
  {
    if (dword_1EB75DF20)
    {
      LODWORD(cf[0]) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMUtility_SetDoNotMakeStarkAudioPortRoutableFlag(0);
  }

  else
  {
    v10 = *MEMORY[0x1E69626D8];
    if (FigRoutingManagerIsEndpointOfType(a2))
    {
      cf[0] = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(CMBaseObject, 0x1F289CEF0, *MEMORY[0x1E695E480], cf);
        v13 = cf[0];
      }

      else
      {
        v13 = 0;
      }

      if (CMSMVAUtility_GetPortFromCFNumber(v13) == 1886614639)
      {
        if (dword_1EB75DF20)
        {
          v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSMUtility_SetDoNotMakeStarkAudioPortRoutableFlag(0);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }
  }

  result = routingManager_preprocessPickEndpoint(a2, a1, a1, a3, a4);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t routingManager_preprocessPickEndpoint(const void *a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, const __CFDictionary *a5)
{
  v8 = a2;
  value[16] = *MEMORY[0x1E69E9840];
  FigRoutingContextUtilities_LogCurrentState(a1, a2);
  v100 = 0;
  v10 = MEMORY[0x1E695E480];
  if (a1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, *MEMORY[0x1E69621E8], *v10, &v100);
    }
  }

  v13 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a4);
  FigRoutingManagerLogRoutingRequestDetails(@"preprocessPickEndpoint - ", a1, 0, 0, a3, v13);
  theArray = 0;
  v93 = a3;
  FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(a3, &theArray);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v15 = Count;
      if (CFArrayGetValueAtIndex(theArray, 0) == a1)
      {
        v19 = 0;
LABEL_30:
        if (dword_1EB75DF20)
        {
          LODWORD(v98) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        value[0] = 0;
        FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointInfoAtIndex(a3, v19, value);
        FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpointInfoAtIndex(a3, v19);
        FigRoutingManagerContextUtilities_AppendCurrentlyActivatingEndpointInfo(a3, value[0]);
        FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a3, v13, a5);
        v49 = value[0];
        if (value[0])
        {
          CFRelease(value[0]);
        }

        v50 = 0;
        goto LABEL_127;
      }

      v16 = 1;
      while (1)
      {
        v17 = v16;
        if (v15 == v16)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
        v16 = v17 + 1;
        if (ValueAtIndex == a1)
        {
          v19 = v17;
          goto LABEL_29;
        }
      }

      v19 = 0;
LABEL_29:
      if (v17 < v15)
      {
        goto LABEL_30;
      }
    }
  }

  v98 = 0;
  v20 = a3;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(a3, &v98);
  allocator = *v10;
  Mutable = CFArrayCreateMutable(*v10, 0, MEMORY[0x1E695E9C0]);
  v22 = Mutable;
  if (a1)
  {
    CFArrayAppendValue(Mutable, a1);
  }

  v23 = FigCFEqual();
  if (v22)
  {
    CFRelease(v22);
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (FigRoutingManagerContextUtilities_GetContextType(a3) != 1)
  {
LABEL_64:
    FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v20, v13, a5);
    v50 = 0;
    goto LABEL_125;
  }

  v89 = v8;
  v24 = CMSMUtility_CopyCurrentRouteIdentifiers();
  NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
  if (v98)
  {
    v26 = CFArrayGetCount(v98);
    v27 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    if (v26 >= 1)
    {
      v28 = a5;
      v29 = v13;
      v30 = 0;
      v31 = *MEMORY[0x1E69620F8];
      do
      {
        CFArrayGetValueAtIndex(v98, v30);
        value[0] = 0;
        v32 = FigEndpointGetCMBaseObject();
        v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v33)
        {
          v33(v32, v31, allocator, value);
        }

        if (value[0])
        {
          CFArrayAppendValue(v27, value[0]);
          if (value[0])
          {
            CFRelease(value[0]);
          }
        }

        ++v30;
      }

      while (v26 != v30);
      v13 = v29;
      a5 = v28;
      v20 = v93;
    }
  }

  else
  {
    v27 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  }

  if (FigCFEqual())
  {
    v35 = 0;
    LODWORD(v36) = 0;
    v37 = 1;
    goto LABEL_57;
  }

  v86 = v13;
  v87 = a5;
  v38 = NumberOfCurrentOutputPorts;
  v90 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (NumberOfCurrentOutputPorts)
  {
    v39 = 0;
    v40 = *MEMORY[0x1E69618F8];
    v41 = *MEMORY[0x1E69618D0];
    do
    {
      v42 = CFArrayGetValueAtIndex(v24, v39);
      v43 = FigRoutingManagerCopyEndpointWithDeviceID(v42, 0, v40, v20);
      if (v43)
      {
        v44 = v43;
        value[0] = 0;
        v45 = FigEndpointGetCMBaseObject();
        v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v46)
        {
          v46(v45, 0x1F289CEF0, allocator, value);
        }

        PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(value[0]);
        if (PortFromCFNumber == 1885433971 || PortFromCFNumber == 1885433953)
        {
          CFRelease(v44);
          v20 = v93;
          v44 = FigRoutingManagerCopyEndpointWithDeviceID(v42, 1, v41, v93);
        }

        else
        {
          v20 = v93;
        }

        if (value[0])
        {
          CFRelease(value[0]);
        }

        if (v44)
        {
          CFArrayAppendValue(v90, v44);
          CFRelease(v44);
        }
      }

      ++v39;
    }

    while (v38 != v39);
  }

  v35 = v90;
  if (!v90)
  {
    LODWORD(v36) = 0;
    v37 = 1;
    goto LABEL_56;
  }

  if (FigCFEqual())
  {
    v37 = 0;
    LODWORD(v36) = 1;
LABEL_56:
    v13 = v86;
    a5 = v87;
    goto LABEL_57;
  }

  v36 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v90, 0);
  FigRoutingManagerContextUtilities_SetPickedEndpoints(v20, v90, 0, 0, v36);
  if (dword_1EB75DF20)
  {
    *type = 0;
    LOBYTE(v96) = 0;
    v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v35 = v90;
  }

  v13 = v86;
  a5 = v87;
  if (v36)
  {
    CFRelease(v36);
    v37 = 0;
    LODWORD(v36) = 0;
  }

  else
  {
    v37 = 0;
  }

LABEL_57:
  if (v27)
  {
    CFRelease(v27);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if ((v37 & 1) == 0)
  {
    CFRelease(v35);
  }

  v8 = v89;
  if (v36)
  {
    goto LABEL_64;
  }

LABEL_65:
  FigRoutingManagerContextUtilities_SetPickingState(v20, 1);
  FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint(v8, v20, a1, v13, a5);
  if (a1)
  {
    *type = 0;
    v51 = *MEMORY[0x1E69626D8];
    if (FigRoutingManagerIsEndpointOfType(a1))
    {
      v52 = FigEndpointGetCMBaseObject();
      v53 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v53)
      {
        v53(v52, 0x1F289D050, allocator, type);
      }
    }

    v54 = *MEMORY[0x1E69626A8];
    if (!FigRoutingManagerIsEndpointOfType(a1) && (!FigRoutingManagerIsEndpointOfType(a1) || !FigCFEqual()))
    {
      v61 = *MEMORY[0x1E69626C0];
      if (!FigRoutingManagerIsEndpointOfType(a1))
      {
        v62 = *MEMORY[0x1E69626C8];
        if (!FigRoutingManagerIsEndpointOfType(a1))
        {
          if (FigRoutingManagerIsEndpointOfType(a1) || (v83 = *MEMORY[0x1E69626B8], FigRoutingManagerIsEndpointOfType(a1)))
          {
            v50 = routingManager_processPickEndpoint(a1, v20, v13, a5);
          }

          else
          {
            v50 = 0;
          }

LABEL_123:
          if (*type)
          {
            CFRelease(*type);
          }

          goto LABEL_125;
        }
      }

      value[0] = 0;
      cf = 0;
      FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&cf);
      FigRoutingManagerCopyPickedEndpointForRoutingContext(cf, value);
      v63 = *MEMORY[0x1E69626B0];
      if (FigRoutingManagerIsEndpointOfType(value[0]))
      {
        FigRoutingManagerLogEndpointID(@"PreprocessPickEndpoint - Calling to remove all sub-endpoints from the aggregate", value[0], @"before calling to activate CarPlay/Nero", 1);
        FigRoutingManagerRemoveAllSubEndpointsFromAggregate(value[0], cf, 0, 0, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
        CMSMVAUtility_DestroyMusicVADIfNeeded(cf);
        FigRoutingManagerContextUtilities_SetPickedEndpoints(cf, 0, @"configUpdateReasonEndedSuccess", v13, 0);
      }

      v50 = routingManager_processPickEndpoint(a1, v20, v13, a5);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v64 = value[0];
      if (!value[0])
      {
        goto LABEL_123;
      }

LABEL_122:
      CFRelease(v64);
      goto LABEL_123;
    }

    v95 = 0;
    v96 = 0;
    FigRoutingManagerUtilities_CopyCurrentlyPickedAirPlayEndpoint(&v95, &v96, 0);
    if (FigRoutingManagerContextUtilities_GetContextType(v20) == 5 && v95)
    {
      v94 = 0;
      v55 = FigEndpointGetCMBaseObject();
      v56 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v56)
      {
        v56(v55, *MEMORY[0x1E69621E8], allocator, &v94);
      }

      FigRoutingManagerContextUtilities_SetPickingState(v20, 2);
      if (CMSMVAUtility_CreatePerAppAirPlayVADWithHandOffPort(v20))
      {
        v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v20 = v93;
      }

      if (dword_1EB75DF20)
      {
        v76 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v20 = v93;
      }

      value[0] = 0;
      FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(v96, v95, value);
      FigRoutingManager_iOSDeactivateEndpoint(v95, value[0], 1);
LABEL_118:
      FigRoutingManagerContextUtilities_SetPickedEndpoints(v96, 0, @"configUpdateReasonEndedBottomUpRouteChange", 0, 0);
      goto LABEL_119;
    }

    ContextType = FigRoutingManagerContextUtilities_GetContextType(v20);
    if (ContextType == 7)
    {
      value[0] = 0;
      FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v20, 0, value);
      if (value[0])
      {
        FigRoutingManagerLogEndpointID(@"Preprocess - Calling to deactivate endpoint with name=", value[0], @"because current picked endpoint is AirPlay", 1);
        cf = 0;
        FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(v20, value[0], &cf);
        FigRoutingManager_iOSDeactivateEndpoint(value[0], cf, 1);
        FigRoutingManagerContextUtilities_SetPickedEndpoints(v20, 0, @"configUpdateReasonEndedBottomUpRouteChange", 0, 0);
      }

      if (FigRoutingManagerIsEndpointActivated(a1))
      {
        FigRoutingManagerLogEndpointID(@"Preprocess - Calling to deactivate/remove endpoint with name=", value[0], @"because is activated for another routing context", 1);
        if (MXSystemRemotePool_RemoveEndpoint(a1) == -13002)
        {
          cf = 0;
          FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(v20, a1, &cf);
          FigRoutingManager_iOSDeactivateEndpoint(a1, cf, 1);
        }
      }

      v50 = routingManager_processPickEndpoint(a1, v20, v13, a5);
      v60 = value[0];
      if (!value[0])
      {
        goto LABEL_121;
      }
    }

    else
    {
      if (v95)
      {
        ContextType = FigRoutingManagerUtilities_IsCurrentRouteHandoff();
        if (!ContextType)
        {
          FigRoutingManagerContextUtilities_SetPickingState(v20, 2);
          CMSMAP_MakeAirPlayHandOffPortRoutable(1, v20);
          v94 = 0;
          v80 = *MEMORY[0x1E69621E8];
          v81 = FigEndpointGetCMBaseObject();
          CMBaseObjectCopyProperty(v81, v80, allocator, &v94);
          if (FigRoutingManagerIsEndpointOfType(v95))
          {
            if (dword_1EB75DF20)
            {
              v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v20 = v93;
            }

            value[0] = 0;
            FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(v96, v95, value);
            FigRoutingManager_iOSDeactivateEndpoint(v95, value[0], 1);
            if (FigRoutingManagerContextUtilities_GetContextType(v96) != 1)
            {
              goto LABEL_118;
            }
          }

          else
          {
            v84 = *MEMORY[0x1E69626B0];
            if (FigRoutingManagerIsEndpointOfType(v95))
            {
              if (dword_1EB75DF20)
              {
                v85 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v20 = v93;
              }

              FigRoutingManagerRemoveAllSubEndpointsFromAggregate(v95, v96, 0, 0, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
              CMSMVAUtility_DestroyMusicVADIfNeeded(v96);
              goto LABEL_118;
            }
          }

LABEL_119:
          v50 = routingManager_processPickEndpoint(a1, v20, v13, a5);
          v60 = v94;
          if (!v94)
          {
            goto LABEL_121;
          }

          goto LABEL_120;
        }
      }

      v88 = a5;
      v65 = v13;
      value[0] = 0;
      cf = 0;
      FigRoutingManagerCopyAirPlayEndpointsInUseForFeatures(ContextType, value, &cf, 0, 0);
      if (value[0])
      {
        v66 = CFArrayGetCount(value[0]);
        if (v66 >= 1)
        {
          v67 = v66;
          v68 = 0;
          v91 = *MEMORY[0x1E69617E8];
          v69 = *MEMORY[0x1E69617F8];
          do
          {
            v70 = CFArrayGetValueAtIndex(value[0], v68);
            v71 = CFArrayGetValueAtIndex(cf, v68);
            if (v70 != a1 || v71 != v20)
            {
              v73 = v71;
              FigEndpointFeatures = FigRoutingManagerGetFigEndpointFeatures(v70, v71);
              v75 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              FigCFDictionarySetValue();
              v94 = 0;
              FigRoutingManagerCreateEndpointDeactivateCompletionContext(v73, &v94);
              FigRoutingManagerLogEndpointID(@"Preprocess - Calling to deactivate endpoint with name=", v70, 0, 1);
              FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(v73, v70, @"configUpdateReasonEndedUserCancelled");
              FigRoutingManagerEndpointDeactivateWithCompletionCallback(v70, FigEndpointFeatures, v75, FigRoutingManager_iOSEndpointDeactivateCompletionCallback, v94);
              if (v75)
              {
                CFRelease(v75);
              }

              v20 = v93;
            }

            ++v68;
          }

          while (v67 != v68);
        }
      }

      v13 = v65;
      v50 = routingManager_processPickEndpoint(a1, v20, v65, v88);
      if (value[0])
      {
        CFRelease(value[0]);
        value[0] = 0;
      }

      v60 = cf;
      if (!cf)
      {
LABEL_121:
        v64 = v96;
        if (!v96)
        {
          goto LABEL_123;
        }

        goto LABEL_122;
      }
    }

LABEL_120:
    CFRelease(v60);
    goto LABEL_121;
  }

  v58 = FigRoutingManagerContextUtilities_GetContextType(v20);
  if (v58 <= 0xD && ((1 << v58) & 0x2012) != 0)
  {
    v50 = 4294954296;
  }

  else
  {
    v50 = routingManager_processPickEndpoint(0, v20, v13, a5);
  }

LABEL_125:
  v49 = v98;
  if (v98)
  {
    CFRelease(v98);
  }

LABEL_127:
  FigRoutingContextUtilities_LogCurrentState(v49, v48);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v100)
  {
    CFRelease(v100);
    v100 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  v77 = *MEMORY[0x1E69E9840];
  return v50;
}

uint64_t FigRoutingManagerPickRouteDescriptorForContext(const void *a1, CFDictionaryRef theDict, const __CFDictionary *a3, const __CFDictionary *a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"RouteName");
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!MX_FeatureFlags_IsSystemInputPickerEnabled() || FigRoutingManagerContextUtilities_GetContextType(a1) != 13)
  {
LABEL_10:
    if (FigRoutingManagerContextUtilities_GetContextType(a1) == 3 || FigRoutingManagerContextUtilities_GetContextType(a1) == 9)
    {
      goto LABEL_12;
    }

    if (theDict && FigCFDictionaryGetCount())
    {
      v13 = FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(theDict, a1);
      if (!v13)
      {
LABEL_12:
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_13:
        v11 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
        FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, v11, @"configUpdateReasonEndedFailed");
        if (v11)
        {
          CFRelease(v11);
        }

        v12 = 4294954296;
        goto LABEL_39;
      }

      v14 = v13;
      cf[0] = 0;
      routingManager_validateAndCopyLeaderContextForPickingRouteDescriptor(a1, theDict, cf);
      if (cf[0])
      {
        v12 = routingManager_preprocessPickEndpoint(v14, a1, cf[0], a3, a4);
        if (FigRoutingManagerContextUtilities_GetContextType(a1) == 5 && !FigCFEqual())
        {
          v12 = routingManager_preprocessPickEndpoint(0, a1, a1, a3, a4);
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
          cf[0] = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v16 = v14;
    }

    else
    {
      cf[0] = 0;
      routingManager_validateAndCopyLeaderContextForPickingRouteDescriptor(a1, theDict, cf);
      if (!cf[0])
      {
        v12 = 0;
        goto LABEL_38;
      }

      v12 = routingManager_preprocessPickEndpoint(0, a1, cf[0], a3, a4);
      v16 = cf[0];
      if (!cf[0])
      {
LABEL_38:
        if (v12 != -13000)
        {
          goto LABEL_39;
        }

        goto LABEL_13;
      }
    }

    CFRelease(v16);
    goto LABEL_38;
  }

  v8 = [+[MXSessionManager sharedInstance](MXSessionManager copyActiveCoreSessionControllingRouting];
  v9 = v8;
  if (v8 && CMSMUtility_IsInputAllowedForCategory([v8 audioCategory]))
  {

    goto LABEL_10;
  }

  if (dword_1EB75DF20)
  {
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v17 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, v17, @"configUpdateReasonEndedSuccess");
  if (v17)
  {
    CFRelease(v17);
  }

  v12 = 0;
LABEL_39:
  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

CFTypeRef routingManager_validateAndCopyLeaderContextForPickingRouteDescriptor(CFTypeRef result, const __CFDictionary *a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return result;
  }

  v5 = result;
  if (FigRoutingManagerContextUtilities_GetContextType(result) != 5)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"RouteSupportsAirPlayVideo");
    v7 = *MEMORY[0x1E695E4D0];
    IsFollowingAnotherContext = FigRoutingContextUtilities_IsFollowingAnotherContext(v5);
    if (Value != v7)
    {
      if (IsFollowingAnotherContext)
      {
        FigRoutingContextUtilities_CopyLeaderUUIDForContext(v5, a3);
      }

      else
      {
        FigRoutingContextUtilities_SetLeaderToSystemAudioContext(v5, 0);
        FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(a3);
      }

LABEL_15:
      result = *a3;
      if (*a3)
      {
        return result;
      }

      goto LABEL_16;
    }

    if (!IsFollowingAnotherContext)
    {
      goto LABEL_15;
    }

    FigRoutingContextUtilities_UnfollowUUIDFromLeader(v5, 0);
  }

  if (v5)
  {
    result = CFRetain(v5);
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  if (!result)
  {
LABEL_16:
    if (v5)
    {
      result = CFRetain(v5);
    }

    else
    {
      result = 0;
    }

    *a3 = result;
  }

  return result;
}

uint64_t FigRoutingManagerPickEndpointsForContext(const void *a1, const __CFArray *a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  FigRoutingManagerLogEndpointIDs(@"Picking routes with IDs: ", a2, 0, 1);
  if (FigRoutingManagerContextUtilities_GetContextType(a1) == 4)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v9 = 0;
    v10 = *MEMORY[0x1E6962620];
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_11:
    for (i = 0; v9 < i; i = CFArrayGetCount(a2))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
      if ((!CMSMDeviceState_IsHomePodHub() || !FigRoutingManagerIsEndpointLocal(ValueAtIndex) || !FigRoutingManagerIsEndpointOfSubtype(ValueAtIndex)) && FigRoutingManagerIsEndpointWHAGroupable(ValueAtIndex))
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }

      ++v9;
      if (!a2)
      {
        goto LABEL_11;
      }

LABEL_10:
      ;
    }
  }

  else
  {
    if (!a2)
    {
      Mutable = 0;
      v13 = 1;
      v15 = 1;
      goto LABEL_30;
    }

    Mutable = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
  }

  v13 = Mutable == 0;
  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
  }

  else
  {
    Count = 0;
  }

  v15 = a2 == 0;
  if (a2)
  {
    v16 = CFArrayGetCount(a2);
  }

  else
  {
    v16 = 0;
  }

  if (Count != v16)
  {
    if (Mutable && CFArrayGetCount(Mutable))
    {
      FigRoutingManagerLogEndpointIDs(@"Picking filtered routes with ID: ", a2, 0, 1);
      v13 = 0;
    }

    else
    {
      if (dword_1EB75DF20)
      {
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, a3, @"configUpdateReasonStarted");
      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, a3, @"configUpdateReasonEndedFailed");
    }
  }

LABEL_30:
  v63 = 0;
  ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (ContextType != 3)
  {
    if (ContextType == 1 && !v15 && CFArrayGetCount(a2) >= 2 && !FigRoutingManagerAreAllEndpointsBluetoothShareable(a2))
    {
LABEL_61:
      *type = 0;
      v61[0] = OS_LOG_TYPE_DEFAULT;
      v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v38 = 4294954296;
      goto LABEL_67;
    }

LABEL_66:
    v38 = 0;
LABEL_67:
    v39 = v63;
    if (v63)
    {
      goto LABEL_68;
    }

    goto LABEL_81;
  }

  if (v15 || (v19 = CFArrayGetCount(a2), v19 < 1))
  {
    FigRoutingContextUtilities_SetLeaderToSystemAudioContext(a1, 0);
    if (dword_1EB75DF20)
    {
      *type = 0;
      v61[0] = OS_LOG_TYPE_DEFAULT;
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_66;
  }

  v20 = v19;
  if (!FigRoutingManagerUtilities_AreAllEndpointsWHAGroupable(a2))
  {
    if (v20 != 1 && !FigRoutingManagerAreAllEndpointsBluetoothShareable(a2))
    {
      goto LABEL_61;
    }

    if (FigRoutingContextUtilities_IsFollowingAnotherContext(a1))
    {
      goto LABEL_62;
    }

    v24 = CFArrayGetValueAtIndex(a2, 0);
    v25 = *MEMORY[0x1E69626B8];
    if (FigRoutingManagerIsEndpointOfType(v24))
    {
      v26 = a4;
      v27 = *MEMORY[0x1E695E4C0];
      cf[0] = *MEMORY[0x1E695E4C0];
      v28 = *MEMORY[0x1E6962130];
      v29 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      CMBaseObjectCopyProperty(CMBaseObject, v28, v29, cf);
      v31 = cf[0];
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      v32 = v31 == v27;
      a4 = v26;
      if (v32)
      {
        if (dword_1EB75DF20)
        {
          *type = 0;
          v61[0] = OS_LOG_TYPE_DEFAULT;
          v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          a4 = v26;
        }

        goto LABEL_65;
      }
    }

    if (!dword_1EB75DF20)
    {
LABEL_64:
      FigRoutingContextUtilities_SetLeaderToSystemAudioContext(a1, 0);
LABEL_65:
      FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v63);
      goto LABEL_66;
    }

    *type = 0;
    v61[0] = OS_LOG_TYPE_DEFAULT;
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
LABEL_63:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_64;
  }

  shouldSystemMusicFollowSystemAudio = routingManager_shouldSystemMusicFollowSystemAudio(a2, 0);
  if (!FigRoutingContextUtilities_IsFollowingAnotherContext(a1))
  {
    if (!shouldSystemMusicFollowSystemAudio)
    {
      if (dword_1EB75DF20)
      {
        *type = 0;
        v61[0] = OS_LOG_TYPE_DEFAULT;
        v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_77;
    }

    if (!dword_1EB75DF20)
    {
      goto LABEL_64;
    }

    *type = 0;
    v61[0] = OS_LOG_TYPE_DEFAULT;
    v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    goto LABEL_63;
  }

  if (shouldSystemMusicFollowSystemAudio)
  {
    if (dword_1EB75DF20)
    {
      *type = 0;
      v61[0] = OS_LOG_TYPE_DEFAULT;
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_62:
    FigRoutingContextUtilities_CopyLeaderUUIDForContext(a1, &v63);
    goto LABEL_66;
  }

  if (dword_1EB75DF20)
  {
    *type = 0;
    v61[0] = OS_LOG_TYPE_DEFAULT;
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRoutingContextUtilities_UnfollowUUIDFromLeader(a1, 0);
LABEL_77:
  if (a1)
  {
    v39 = CFRetain(a1);
  }

  else
  {
    v39 = 0;
  }

  v38 = 0;
  v63 = v39;
  if (v39)
  {
LABEL_68:
    if (v38)
    {
      goto LABEL_69;
    }

    goto LABEL_85;
  }

LABEL_81:
  if (a1)
  {
    v39 = CFRetain(a1);
  }

  else
  {
    v39 = 0;
  }

  v63 = v39;
  if (v38)
  {
LABEL_69:
    if (!v39)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_85:
  v43 = a4;
  v44 = !v13 && CFArrayGetCount(Mutable) > 0;
  v45 = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (v45 == 1)
  {
    goto LABEL_91;
  }

  if (v45 == 4)
  {
    if (CMSMDeviceState_IsHomePodHub())
    {
      v50 = MXAudioContext_HandlePickEndpoints(Mutable, a1, a3, v43);
      goto LABEL_130;
    }

    if (dword_1EB75DF20)
    {
      *type = 0;
      v61[0] = OS_LOG_TYPE_DEFAULT;
      v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_114:
    v38 = 0;
    goto LABEL_131;
  }

  if (v45 != 3)
  {
    goto LABEL_114;
  }

LABEL_91:
  if (!v44)
  {
    v51 = 0;
    v52 = a1;
    v53 = a3;
    v54 = v43;
LABEL_128:
    v57 = 0;
    goto LABEL_129;
  }

  if (FigRoutingManagerUtilities_AreAllEndpointsWHAGroupable(Mutable))
  {
    v46 = v43;
    if (FigRoutingManagerDoEndpointsContainLocalAirPlayEndpoint(Mutable))
    {
      *type = 0;
      FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(type);
      *v61 = 0;
      FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(*type, 0, v61);
      if (!FigRoutingManagerIsEndpointWHAGroupable(*v61) && !FigRoutingManagerUtilities_IsSystemAudioRouteNull() && !FigRoutingManagerIsEndpointLowLatencyAirPlay(*v61))
      {
        IsSystemAudioRouteAirPlayLowLatency = FigRoutingManagerUtilities_IsSystemAudioRouteAirPlayLowLatency();
        v48 = FigRoutingManagerDoEndpointsContainOdeonEndpoint(Mutable);
        if (!IsSystemAudioRouteAirPlayLowLatency && v48 && CMSMDeviceState_ItsAnAppleTV())
        {
          if (dword_1EB75DF20)
          {
            v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v46 = v43;
          }

          routingManager_routeToLowLatencyAirPlay(a3);
        }

        else
        {
          if (dword_1EB75DF20)
          {
            v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v46 = v43;
          }

          if (!v13 && CFArrayGetCount(Mutable) == 1)
          {
            FigRoutingContextUtilities_SetLeaderToSystemAudioContext(a1, @"configUpdateReasonEndedSuccess");
          }

          v60 = FigRoutingManagerCopyWHAGroupableVAEndpoint();
          FigRoutingManagerPickEndpointForContext(*type, v60, 0, 0);
          if (v60)
          {
            CFRelease(v60);
          }
        }
      }

      if (*type)
      {
        CFRelease(*type);
        *type = 0;
      }

      if (*v61)
      {
        CFRelease(*v61);
      }
    }

    v51 = Mutable;
    v52 = a1;
    v53 = a3;
    v54 = v46;
    goto LABEL_128;
  }

  v56 = !FigRoutingManagerAreAllEndpointsBluetoothShareable(Mutable) || v13;
  if ((v56 & 1) == 0 && CFArrayGetCount(Mutable) >= 2)
  {
    v52 = v63;
    v51 = Mutable;
    v53 = a3;
    v54 = v43;
    v57 = 1;
LABEL_129:
    v50 = routingManager_preprocessPickEndpoints(v51, v52, v53, v54, v57);
    goto LABEL_130;
  }

  v58 = CFArrayGetValueAtIndex(Mutable, 0);
  routingManager_emptyAggregateEndpointIfNecessary(v58, a1);
  v50 = routingManager_preprocessPickEndpoint(v58, a1, v63, a3, v43);
LABEL_130:
  v38 = v50;
LABEL_131:
  v39 = v63;
  if (v63)
  {
LABEL_70:
    CFRelease(v39);
    v63 = 0;
  }

LABEL_71:
  if (!v13)
  {
    CFRelease(Mutable);
  }

  v40 = *MEMORY[0x1E69E9840];
  return v38;
}

void routingManager_routeToLowLatencyAirPlay(uint64_t a1)
{
  v10[20] = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF20)
  {
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10[0] = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(v10);
  if (CMSMVAUtility_MakeLowLatencyAirPlayPortRoutable(v10[0]))
  {
    v3 = CMSMUtility_CopyCurrentRouteIdentifiers();
    v4 = FigRoutingManagerCopyEndpointsFromRouteIdentifiers(v3, v10[0]);
    v5 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v4, 0);
    FigRoutingManagerContextUtilities_SetPickedEndpoints(v10[0], v4, @"configUpdateReasonEndedSuccess", a1, v5);
    *type = 0;
    FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(type);
    cf = 0;
    FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(*type, &cf);
    FigRoutingManagerAggregateAddLocalAirPlayEndpoint(*type, cf);
    FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(*type, cf, @"configUpdateReasonEndedBottomUpRouteChange", 0);
    if (dword_1EB75DF20)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigRoutingContextUtilities_UnfollowUUIDFromLeader(*type, @"configUpdateReasonEndedBottomUpRouteChange");
    if (v5)
    {
      CFRelease(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (*type)
    {
      CFRelease(*type);
    }
  }

  if (v10[0])
  {
    CFRelease(v10[0]);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t routingManager_preprocessPickEndpoints(const __CFArray *a1, const void *a2, const __CFDictionary *a3, const void *a4, int a5)
{
  cf[20] = *MEMORY[0x1E69E9840];
  FigRoutingContextUtilities_LogCurrentState(a1, a2);
  v10 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(a3);
  FigRoutingManagerLogRoutingRequestDetails(@"preprocessPickEndpoints - ", 0, a1, 0, a2, v10);
  FigRoutingManagerContextUtilities_SetPickingState(a2, 1);
  if (a5)
  {
    v11 = routingManager_processPickEndpoints(a1, a2, v10, a4, 1);
    v13 = 0;
  }

  else
  {
    v21 = 0;
    cf[0] = 0;
    FigRoutingManagerUtilities_CopyCurrentlyPickedAirPlayEndpoint(cf, &v21, 0);
    if (cf[0] && v21 && !FigCFEqual())
    {
      v20 = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v17)
      {
        v17(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &v20);
      }

      if (FigRoutingManagerUtilities_IsCurrentRouteHandoff())
      {
        v13 = 0;
      }

      else
      {
        FigRoutingManagerContextUtilities_SetPickingState(a2, 2);
        CMSMAP_MakeAirPlayHandOffPortRoutable(1, a2);
        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingManagerDeactivateEndpointFromPickedContexts(cf[0], v18, 1u, @"configUpdateReasonEndedSuccess");
        v13 = routingManager_processPickEndpoints(a1, a2, v10, a4, 0);
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    else
    {
      v13 = routingManager_processPickEndpoints(a1, a2, v10, a4, 0);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    v11 = v21;
    if (v21)
    {
      CFRelease(v21);
    }
  }

  FigRoutingContextUtilities_LogCurrentState(v11, v12);
  if (v10)
  {
    CFRelease(v10);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void routingManager_emptyAggregateEndpointIfNecessary(uint64_t a1, const void *a2)
{
  v20[16] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_26;
  }

  cf = 0;
  theArray = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a2, &cf);
  v4 = MEMORY[0x1E695E480];
  if (cf && (CMBaseObject = FigEndpointGetCMBaseObject(), (v6 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v6(CMBaseObject, *MEMORY[0x1E6962270], *v4, &theArray), theArray))
  {
    v9 = CFArrayGetCount(theArray) != 1 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0), v8 = *MEMORY[0x1E6962620], !FigRoutingManagerIsEndpointOfSubtype(ValueAtIndex)) || CMSMDeviceState_ItsAnAppleTV() == 0;
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = *MEMORY[0x1E69626B8];
  if (!FigRoutingManagerIsEndpointOfType(a1))
  {
    goto LABEL_14;
  }

  v11 = *MEMORY[0x1E695E4C0];
  v20[0] = *MEMORY[0x1E695E4C0];
  v12 = FigEndpointGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(v12, *MEMORY[0x1E6962130], *v4, v20);
    v14 = v20[0];
    if (!v20[0])
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = v11;
  if (v11)
  {
LABEL_12:
    CFRelease(v14);
  }

LABEL_13:
  if (v14 == v11)
  {
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_24;
  }

LABEL_14:
  if (v9)
  {
    Mutable = CFDictionaryCreateMutable(*v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"initiator", @"SelectRouteInitiator_EmptyAggregateEndpoint");
    routingManager_processPickEndpoints(0, a2, 0, Mutable, 0);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_26:
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t FigRoutingManagerPickRouteDescriptorsForContext(const void *a1, const __CFArray *a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v11 = Count;
      for (i = 0; i != v11; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        Value = CFDictionaryGetValue(ValueAtIndex, @"RouteName");
        if (Value)
        {
          CFArrayAppendValue(Mutable, Value);
        }
      }
    }
  }

  if (dword_1EB75DF20)
  {
    LODWORD(cf) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    FigRoutingManagerPickEndpointsForContext(a1, 0, a3, a4);
    goto LABEL_70;
  }

  v47 = v8;
  v16 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
  v17 = CFArrayGetCount(a2);
  if (v17 < 1)
  {
    goto LABEL_60;
  }

  v18 = v17;
  v45 = a4;
  v46 = Mutable;
  v19 = 0;
  v20 = *MEMORY[0x1E69626C0];
  v49 = *MEMORY[0x1E69626C0];
  v50 = *MEMORY[0x1E69626D8];
  v48 = v16;
  do
  {
    v21 = CFArrayGetValueAtIndex(a2, v19);
    v22 = FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(v21, a1);
    if (v22)
    {
      v23 = v22;
      if (FigRoutingManagerIsEndpointOfType(v22))
      {
        if (dword_1EB75DF20)
        {
          LODWORD(cf) = 0;
          v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v25 = cf;
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
            v52 = 136315138;
            v53 = "FigRoutingManagerPickRouteDescriptorsForContext";
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSMUtility_SetDoNotMakeStarkAudioPortRoutableFlag(0);
      }

      else if (FigRoutingManagerIsEndpointOfType(v23))
      {
        cf = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v31)
        {
          v31(CMBaseObject, 0x1F289CEF0, v47, &cf);
        }

        if (CMSMVAUtility_GetPortFromCFNumber(cf) == 1886614639)
        {
          if (dword_1EB75DF20)
          {
            v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSMUtility_SetDoNotMakeStarkAudioPortRoutableFlag(0);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (FigRoutingManagerIsEndpointOfType(v23) && FigRoutingManagerIsEndpointWHAGroupable(v23))
      {
        v33 = FigRoutingManagerCopyLocalAirPlayEndpoint();
        if (dword_1EB75DF20)
        {
          LODWORD(cf) = 0;
          v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v35 = cf;
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
            v52 = 136315138;
            v53 = "FigRoutingManagerPickRouteDescriptorsForContext";
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v16 = v48;
        }

        if (v33)
        {
          CFArrayAppendValue(v16, v33);
          CFRelease(v33);
        }

        else
        {
          LODWORD(cf) = 0;
          v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v38 = cf;
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
            v52 = 136315138;
            v53 = "FigRoutingManagerPickRouteDescriptorsForContext";
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        CFArrayAppendValue(v16, v23);
      }

      CFRelease(v23);
    }

    else
    {
      LODWORD(cf) = 0;
      v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v28 = cf;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
      }

      else
      {
        v29 = v28 & 0xFFFFFFFE;
      }

      if (v29)
      {
        v52 = 136315138;
        v53 = "FigRoutingManagerPickRouteDescriptorsForContext";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    ++v19;
  }

  while (v18 != v19);
  Mutable = v46;
  a4 = v45;
  if (v16)
  {
    if (CFArrayGetCount(v16))
    {
LABEL_60:
      FigRoutingManagerPickEndpointsForContext(a1, v16, a3, a4);
      if (!v16)
      {
        goto LABEL_70;
      }

LABEL_69:
      CFRelease(v16);
      goto LABEL_70;
    }
  }

  LODWORD(cf) = 0;
  v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v41 = cf;
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
    v52 = 136315394;
    v53 = "FigRoutingManagerPickRouteDescriptorsForContext";
    v54 = 2114;
    v55 = v46;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, a3, @"configUpdateReasonStarted");
  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, a3, @"configUpdateReasonEndedFailed");
  v16 = v48;
  if (v48)
  {
    goto LABEL_69;
  }

LABEL_70:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v43 = *MEMORY[0x1E69E9840];
  return 0;
}

void routingManager_preprocessAddBluetoothEndpoint(const void *a1, uint64_t a2, const void *a3, CFDictionaryRef theDict, const __CFDictionary *a5)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v9 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(theDict);
  FigRoutingManagerLogRoutingRequestDetails(@"preprocessAddBluetoothEndpoint - ", a1, 0, 0, a3, v9);
  v36 = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(a3, &v36);
  if (FigCFArrayContainsValue())
  {
    FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a3, v9, a5);
    goto LABEL_55;
  }

  FigRoutingManagerContextUtilities_SetPickingState(a3, 1);
  FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint(a2, a3, a1, v9, a5);
  FigEndpointDescriptorUtilitySetUserManualRoute(a1);
  EndpointActivateOptions = FigRoutingManagerCreateEndpointActivateOptions(a1, a3, v9);
  FigRoutingManagerGetFigEndpointFeatures(a1, a3);
  v11 = *MEMORY[0x1E69626B8];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    FigRoutingManagerContextUtilities_SetPickingState(a3, 4);
    FigRoutingManager_iOSActivateEndpoint(a1, a3, v9, a5);
    v12 = *MEMORY[0x1E695E4C0];
    v40 = *MEMORY[0x1E695E4C0];
    v13 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v15(CMBaseObject, *MEMORY[0x1E6962130], v13, &v40);
      v12 = v40;
    }

    if (v12 == *MEMORY[0x1E695E4D0])
    {
      v39 = 0;
      v18 = FigEndpointGetCMBaseObject();
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        v19(v18, *MEMORY[0x1E69620F8], v13, &v39);
      }

      v20 = FigRoutingManagerCopyEndpointWithDeviceID(v39, 0, *MEMORY[0x1E69618F8], 0);
      if (v20)
      {
        v21 = v20;
        FigRoutingManagerContextUtilities_SetPickingState(a3, 6);
        if (FigEndpointActivate())
        {
          FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a3, a1, @"routeChangeEndedFailed");
          FigRoutingManagerContextUtilities_SetPickingState(a3, 0);
        }

        else
        {
          v31 = CMSMUtility_CopyCurrentRouteIdentifiers();
          v32 = FigRoutingManagerCopyEndpointsFromRouteIdentifiers(v31, a3);
          v33 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v32, 0);
          FigRoutingManagerContextUtilities_SetPickedEndpoints(a3, v32, @"configUpdateReasonEndedSuccess", v9, v33);
          if (!FigRoutingContextUtilities_DoesArrayOfEndpointsContainEndpoint(v32, a1))
          {
            FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a3, a1, @"routeChangeEndedSuccess");
          }

          cf[0] = 0;
          FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(a3, cf);
          if (FigRoutingManagerIsEndpointBluetoothShareable(cf[0]))
          {
            v34 = 5;
          }

          else
          {
            v34 = 0;
          }

          FigRoutingManagerContextUtilities_SetPickingState(a3, v34);
          if (cf[0])
          {
            CFRelease(cf[0]);
            cf[0] = 0;
          }

          if (v33)
          {
            CFRelease(v33);
          }

          if (v32)
          {
            CFRelease(v32);
          }

          if (v31)
          {
            CFRelease(v31);
          }
        }

        CFRelease(v21);
      }

      else
      {
        FigRoutingManagerContextUtilities_SetPickingState(a3, 5);
        if (dword_1EB75DF20)
        {
          v38 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v29 = v38;
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
            v41 = 136315395;
            v42 = "routingManager_processAddBluetoothEndpoint";
            v43 = 2113;
            v44 = v39;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      if (v39)
      {
        CFRelease(v39);
      }
    }

    else
    {
      FigRoutingManagerContextUtilities_SetPickingState(a3, 5);
    }

    v27 = v40;
    if (!v40)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v16 = *MEMORY[0x1E69626D8];
    if (!FigRoutingManagerIsEndpointOfType(a1))
    {
      goto LABEL_53;
    }

    FigRoutingManagerContextUtilities_SetPickingState(a3, 6);
    v17 = FigEndpointActivate();
    cf[0] = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a3, 0, cf);
    if (v17)
    {
      FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a3, a1, @"routeChangeEndedFailed");
      FigRoutingManagerContextUtilities_SetPickingState(a3, 0);
    }

    else
    {
      v22 = *MEMORY[0x1E69626A8];
      if (FigRoutingManagerIsEndpointOfType(cf[0]))
      {
        FigRoutingManagerDeactivateEndpointFromPickedContexts(cf[0], v23, 1u, @"configUpdateReasonEndedSuccess");
      }

      v24 = CMSMUtility_CopyCurrentRouteIdentifiers();
      v25 = FigRoutingManagerCopyEndpointsFromRouteIdentifiers(v24, a3);
      v26 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v25, 0);
      FigRoutingManagerContextUtilities_SetPickedEndpoints(a3, v25, @"configUpdateReasonEndedSuccess", v9, v26);
      if (!FigRoutingContextUtilities_DoesArrayOfEndpointsContainEndpoint(v25, a1))
      {
        FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a3, a1, @"routeChangeEndedSuccess");
      }

      FigRoutingManagerContextUtilities_SetPickingState(a3, 0);
      if (v26)
      {
        CFRelease(v26);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      if (v24)
      {
        CFRelease(v24);
      }
    }

    v27 = cf[0];
    if (!cf[0])
    {
      goto LABEL_53;
    }
  }

  CFRelease(v27);
LABEL_53:
  if (EndpointActivateOptions)
  {
    CFRelease(EndpointActivateOptions);
  }

LABEL_55:
  if (v36)
  {
    CFRelease(v36);
    v36 = 0;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v35 = *MEMORY[0x1E69E9840];
}

uint64_t FigRoutingManager_iOSRemoveEndpointFromContext(const void *a1, const void *a2, CFDictionaryRef theDict)
{
  v74[16] = *MEMORY[0x1E69E9840];
  v3 = 4294954296;
  if (!a1 || !a2)
  {
    goto LABEL_137;
  }

  v6 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(theDict);
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_IsRemoveOperation", *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_UserPickedRoute", v9);
  FigRoutingManagerLogEndpointID(@"Removing endpoint=", a2, 0, 1);
  v10 = *MEMORY[0x1E695E4C0];
  v62 = *MEMORY[0x1E695E4C0];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(CMBaseObject, *MEMORY[0x1E6962190], v7, &v62);
  }

  v61 = v10;
  v13 = FigEndpointGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(v13, *MEMORY[0x1E6962110], v7, &v61);
  }

  v60 = 0;
  ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (ContextType == 4)
  {
LABEL_10:
    v60 = CFRetain(a1);
    if (v60)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (ContextType == 3)
  {
    if (FigRoutingManagerIsEndpointWHAGroupable(a2))
    {
      goto LABEL_10;
    }

    if (FigRoutingContextUtilities_IsFollowingAnotherContext(a1))
    {
      FigRoutingContextUtilities_CopyLeaderUUIDForContext(a1, &v60);
    }

    else
    {
      if (dword_1EB75DF20)
      {
        LODWORD(v68) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v36 = v68;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
        {
          v37 = v36;
        }

        else
        {
          v37 = v36 & 0xFFFFFFFE;
        }

        if (v37)
        {
          *cf = 136315395;
          *&cf[4] = "routingManager_validateAndCopyLeaderContextForRemovingEndpoint";
          v70 = 2113;
          v71 = a1;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingContextUtilities_SetLeaderToSystemAudioContext(a1, 0);
      FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v60);
    }
  }

  if (!v60)
  {
LABEL_11:
    v60 = CFRetain(a1);
  }

LABEL_12:
  v16 = FigRoutingManagerContextUtilities_GetContextType(a1);
  v3 = 0;
  if (v16 > 3)
  {
    if (v16 == 4)
    {
      if (!CMSMDeviceState_IsHomePodHub())
      {
        if (dword_1EB75DF20)
        {
          LODWORD(v68) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v33 = v68;
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
            *cf = 136315138;
            *&cf[4] = "FigRoutingManager_iOSRemoveEndpointFromContext";
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_115;
      }

      v20 = MXAudioContext_HandleRemoveEndpoint(a2, a1, v6, Mutable);
    }

    else
    {
      if (v16 != 13)
      {
        goto LABEL_127;
      }

      v20 = routingManager_processRemoveVirtualAudioEndpoint(a2, a1, v60, v6);
    }

    v3 = v20;
    goto LABEL_127;
  }

  if (v16 == 1)
  {
    if (v61 != v9)
    {
      v21 = *MEMORY[0x1E69626A8];
      if (!FigRoutingManagerIsEndpointOfType(a2))
      {
        LODWORD(v68) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v39 = v68;
        if (os_log_type_enabled(v38, type[0]))
        {
          v40 = v39;
        }

        else
        {
          v40 = v39 & 0xFFFFFFFE;
        }

        if (!v40)
        {
          goto LABEL_67;
        }

        *cf = 136315138;
        *&cf[4] = "FigRoutingManager_iOSRemoveEndpointFromContext";
        goto LABEL_66;
      }

      v22 = FigRoutingManagerCopyRoutingContextUUIDForEndpoint(a2);
      if (FigCFEqual())
      {
        v68 = 0;
        FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(v22, a2, &v68);
        FigRoutingManagerLogEndpointID(@"FigRoutingManager_iOSRemoveEndpointFromContext deactivate endpoint with name=", a2, 0, 1);
        v3 = FigRoutingManager_iOSDeactivateEndpoint(a2, v68, 1);
        if (v3)
        {
          *type = 0;
          v66[0] = OS_LOG_TYPE_DEFAULT;
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v24 = *type;
          if (os_log_type_enabled(v23, v66[0]))
          {
            v25 = v24;
          }

          else
          {
            v25 = v24 & 0xFFFFFFFE;
          }

          if (v25)
          {
            *cf = 136315394;
            *&cf[4] = "FigRoutingManager_iOSRemoveEndpointFromContext";
            v70 = 1024;
            LODWORD(v71) = v3;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v22, v6, @"configUpdateReasonEndedSuccess");
        }

        goto LABEL_111;
      }

      LODWORD(v68) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v42 = v68;
      if (os_log_type_enabled(v41, type[0]))
      {
        v43 = v42;
      }

      else
      {
        v43 = v42 & 0xFFFFFFFE;
      }

      if (v43)
      {
        *cf = 136315138;
        *&cf[4] = "FigRoutingManager_iOSRemoveEndpointFromContext";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_110;
    }

    goto LABEL_40;
  }

  if (v16 == 3)
  {
    if (v62 != v9)
    {
      if (v61 != v9)
      {
        if (v62 != v10)
        {
          LODWORD(v68) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v18 = v68;
          if (os_log_type_enabled(v17, type[0]))
          {
            v19 = v18;
          }

          else
          {
            v19 = v18 & 0xFFFFFFFE;
          }

          if (!v19)
          {
            goto LABEL_67;
          }

          *cf = 136315138;
          *&cf[4] = "FigRoutingManager_iOSRemoveEndpointFromContext";
LABEL_66:
          _os_log_send_and_compose_impl();
LABEL_67:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v3 = 4294954296;
          goto LABEL_127;
        }

        v22 = FigRoutingManagerCopyRoutingContextUUIDForEndpoint(a2);
        if (!FigCFEqual())
        {
          v74[0] = 0;
          FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(v22, a2, v74);
          FigRoutingManagerLogEndpointID(@"FigRoutingManager_iOSRemoveEndpointFromContext deactivate endpoint with name=", a2, 0, 1);
          v3 = FigRoutingManager_iOSDeactivateEndpoint(a2, v74[0], 1);
          *cf = 0;
          FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v22, 0, cf);
          if (!v3 && FigCFEqual())
          {
            v57 = *MEMORY[0x1E69626A8];
            if (FigRoutingManagerIsEndpointOfType(*cf))
            {
              FigRoutingManagerContextUtilities_SetPickedEndpoints(v22, 0, @"configUpdateReasonEndedSuccess", v6, 0);
            }

            else
            {
              FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v22, v6, @"configUpdateReasonEndedSuccess");
            }
          }

          if (*cf)
          {
            CFRelease(*cf);
          }

          goto LABEL_111;
        }

LABEL_110:
        v3 = 0;
LABEL_111:
        if (!v22)
        {
          goto LABEL_127;
        }

        v56 = v22;
LABEL_126:
        CFRelease(v56);
        goto LABEL_127;
      }

LABEL_40:
      routingManager_processRemoveBluetoothAndVAEndpoint(a2, a1, v60, v6);
LABEL_115:
      v3 = 0;
      goto LABEL_127;
    }

    v26 = v60;
    FigRoutingManagerLogRoutingRequestDetails(@"processRemoveAirPlayEndpoint - ", a2, 0, 0, v60, v6);
    v68 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v26, 0, &v68);
    v27 = *MEMORY[0x1E69626B0];
    if (FigRoutingManagerIsEndpointOfType(v68))
    {
      v28 = v68;
      if (!v68 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
      {
        v28 = 0;
      }

      if (FigRoutingManagerIsEndpointPresentInAggregate(a2, v28))
      {
        *type = 0;
        v29 = FigEndpointGetCMBaseObject();
        v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        v31 = v30 && (v30(v29, *MEMORY[0x1E6962270], v7, type), *type) && CFArrayGetCount(*type) == 1;
        if (FigRoutingManagerIsEndpointLocal(a2) && FigRoutingManagerDoesDeviceAlwaysHaveAggregateForLocalPlayback() != 0 && v31 && (ValueAtIndex = CFArrayGetValueAtIndex(*type, 0), FigRoutingManagerIsEndpointLocal(ValueAtIndex)))
        {
          FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v26, v6, @"configUpdateReasonEndedFailed");
        }

        else
        {
          FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpoint(a1, v26, a2, v6);
          v48 = v68;
          if (!v68 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
          {
            v48 = 0;
          }

          v3 = FigRoutingManagerRemoveEndpointFromAggregate(v48, a2, v26, v6, Mutable, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
          if (v3)
          {
LABEL_125:
            v56 = *type;
            if (!*type)
            {
              goto LABEL_127;
            }

            goto LABEL_126;
          }

          *v66 = 0;
          v49 = FigEndpointGetCMBaseObject();
          v50 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v50)
          {
            v50(v49, *MEMORY[0x1E69620F8], v7, v66);
          }

          v65 = 0;
          v51 = FigEndpointGetCMBaseObject();
          v52 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v52)
          {
            v52(v51, *MEMORY[0x1E69621E8], v7, &v65);
          }

          if (dword_1EB75DF20)
          {
            v64 = 0;
            v63 = OS_LOG_TYPE_DEFAULT;
            v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v54 = v64;
            if (os_log_type_enabled(v53, v63))
            {
              v55 = v54;
            }

            else
            {
              v55 = v54 & 0xFFFFFFFE;
            }

            if (v55)
            {
              *cf = 136315650;
              *&cf[4] = "routingManager_processRemoveAirPlayEndpoint";
              v70 = 2114;
              v71 = *v66;
              v72 = 2114;
              v73 = v65;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (v65)
          {
            CFRelease(v65);
            v65 = 0;
          }

          if (*v66)
          {
            CFRelease(*v66);
          }
        }

        v3 = 0;
        goto LABEL_125;
      }

      FigRoutingManagerLogEndpointID(@"endpoint=", a2, @" is already removed", 1);
    }

    else
    {
      *type = 0;
      v66[0] = OS_LOG_TYPE_DEFAULT;
      v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v45 = *type;
      if (os_log_type_enabled(v44, v66[0]))
      {
        v46 = v45;
      }

      else
      {
        v46 = v45 & 0xFFFFFFFE;
      }

      if (v46)
      {
        *cf = 136315138;
        *&cf[4] = "routingManager_processRemoveAirPlayEndpoint";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v26, v6, @"configUpdateReasonEndedNoop");
    goto LABEL_115;
  }

LABEL_127:
  if (v60)
  {
    CFRelease(v60);
    v60 = 0;
  }

  if (v61)
  {
    CFRelease(v61);
    v61 = 0;
  }

  if (v62)
  {
    CFRelease(v62);
    v62 = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_137:
  v58 = *MEMORY[0x1E69E9840];
  return v3;
}

void routingManager_processRemoveBluetoothAndVAEndpoint(uint64_t a1, uint64_t a2, const void *a3, const __CFDictionary *a4)
{
  FigRoutingManagerLogRoutingRequestDetails(@"processRemoveBluetoothEndpoint - ", a1, 0, 0, a3, a4);
  v8 = *MEMORY[0x1E69626B8];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpoint(a2, a3, a1, a4);
    v9 = *MEMORY[0x1E695E4C0];
    v23 = *MEMORY[0x1E695E4C0];
    v10 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, *MEMORY[0x1E6962130], v10, &v23);
      v9 = v23;
    }

    if (v9 == *MEMORY[0x1E695E4D0])
    {
      cf = 0;
      v16 = FigEndpointGetCMBaseObject();
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v17)
      {
        v17(v16, *MEMORY[0x1E69620F8], v10, &cf);
        v18 = cf;
      }

      else
      {
        v18 = 0;
      }

      v19 = FigRoutingManagerCopyEndpointWithDeviceID(v18, 0, *MEMORY[0x1E69618F8], 0);
      if (v19)
      {
        v20 = v19;
        EndpointDeactivateOptions = FigRoutingManagerCreateEndpointDeactivateOptions(a1, a3);
        FigEndpointDeactivate();
        routingManager_updatePickedEndpoints(a3, a4);
        if (EndpointDeactivateOptions)
        {
          CFRelease(EndpointDeactivateOptions);
        }

        v14 = v20;
        goto LABEL_18;
      }
    }

    else
    {
      cf = 0;
      FigRoutingManagerContextUtilities_CopyPickedEndpoints(a3, &cf);
      v13 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(cf, 0);
      FigRoutingManagerContextUtilities_SetPickedEndpoints(a3, cf, @"configUpdateReasonEndedSuccess", a4, v13);
      if (v13)
      {
        v14 = v13;
LABEL_18:
        CFRelease(v14);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    return;
  }

  v15 = *MEMORY[0x1E69626D8];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {

    routingManager_processRemoveVirtualAudioEndpoint(a1, a2, a3, a4);
  }
}

uint64_t routingManager_processRemoveVirtualAudioEndpoint(uint64_t a1, uint64_t a2, const void *a3, const __CFDictionary *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69626D8];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    FigRoutingManagerLogRoutingRequestDetails(@"processRemoveVirtualAudioEndpoint - ", a1, 0, 0, a3, a4);
    FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpoint(a2, a3, a1, a4);
    EndpointDeactivateOptions = FigRoutingManagerCreateEndpointDeactivateOptions(a1, a3);
    FigEndpointDeactivate();
    routingManager_updatePickedEndpoints(a3, a4);
    if (EndpointDeactivateOptions)
    {
      CFRelease(EndpointDeactivateOptions);
    }

    result = 0;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = 4294954296;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *FigRoutingManagerUpdateFadeInUponMusicVADCreation(char a1)
{
  result = FigRoutingManagerGetSharedManager();
  result[40] = a1;
  return result;
}

uint64_t FigRoutingManagerCleanupSystemMusicIfAggregateIsEmpty(CFTypeRef a1, uint64_t a2, char a3)
{
  v4 = a1;
  cf[22] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v5 = MEMORY[0x1E695E480];
  if (a1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, *MEMORY[0x1E6962238], *v5, cf);
      a1 = cf[0];
    }

    else
    {
      a1 = 0;
    }
  }

  if (FigRoutingManagerContextUtilities_GetContextType(a1) == 3)
  {
    SharedManager = FigRoutingManagerGetSharedManager();
    theArray = 0;
    v9 = *v5;
    v10 = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(v10, *MEMORY[0x1E6962270], v9, &theArray);
    }

    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        if (FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(ValueAtIndex))
        {
          *type = 0;
          FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(type);
          if (dword_1EB75DF20)
          {
            *v27 = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRoutingContextUtilities_SetLeaderToSystemAudioContext(*type, @"configUpdateReasonEndedSuccess");
          v26 = *type;
          if (!*type)
          {
            goto LABEL_19;
          }
        }

        else
        {
          *type = 0;
          v21 = FigEndpointGetCMBaseObject();
          v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v22)
          {
            v22(v21, *MEMORY[0x1E69621E8], v9, type);
          }

          *v27 = 0;
          v23 = FigEndpointGetCMBaseObject();
          v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v24)
          {
            v24(v23, *MEMORY[0x1E69622F8], v9, v27);
          }

          if (dword_1EB75DF20)
          {
            v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (*type)
          {
            CFRelease(*type);
            *type = 0;
          }

          v26 = *v27;
          if (!*v27)
          {
            goto LABEL_19;
          }
        }

        CFRelease(v26);
LABEL_19:
        if (theArray)
        {
          CFRelease(theArray);
          theArray = 0;
        }

        goto LABEL_21;
      }

      if (Count)
      {
        if (dword_1EB75DF20)
        {
          *type = 0;
          v27[0] = OS_LOG_TYPE_DEFAULT;
          v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_19;
      }
    }

    if (v4)
    {
      CFRetain(v4);
    }

    if (cf[0])
    {
      CFRetain(cf[0]);
      v13 = cf[0];
    }

    else
    {
      v13 = 0;
    }

    v15 = *(SharedManager + 1);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __FigRoutingManagerCleanupSystemMusicIfAggregateIsEmpty_block_invoke;
    v29[3] = &__block_descriptor_49_e5_v8__0l;
    v30 = a3;
    v29[4] = v13;
    v29[5] = v4;
    MXDispatchAsync("FigRoutingManagerCleanupSystemMusicIfAggregateIsEmpty", "FigRoutingManager_iOS.m", 4806, 0, 0, v15, v29);
    goto LABEL_19;
  }

  if (dword_1EB75DF20)
  {
    LODWORD(theArray) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_21:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v16 = *MEMORY[0x1E69E9840];
  return 0;
}

void __FigRoutingManagerCleanupSystemMusicIfAggregateIsEmpty_block_invoke(uint64_t a1)
{
  theArray[23] = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    if (dword_1EB75DF20)
    {
      LODWORD(theArray[0]) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = *(a1 + 32);
    CMSMUtility_InterruptSessionsWithRoutingContextUUID();
  }

  v4 = FigRoutingManagerCopyLocalAirPlayEndpoint();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_UserPickedRoute", *MEMORY[0x1E695E4C0]);
  CFDictionarySetValue(Mutable, @"initiator", @"SelectRouteInitiator_CleanupSystemMusic");
  if (v4)
  {
    theArray[0] = 0;
    FigRoutingManagerCopyAirPlayEndpointsInUseForFeatures(v6, theArray, 0, 0, 0);
    if (theArray[0])
    {
      Count = CFArrayGetCount(theArray[0]);
      IsSystemAudioRouteWHAGroupableLocal = FigRoutingManagerUtilities_IsSystemAudioRouteWHAGroupableLocal();
      if (Count)
      {
        FigRoutingManagerLogEndpointIDs(@"The following AirPlay endpoints are activating: ", theArray[0], 0, 1);
LABEL_20:
        if (theArray[0])
        {
          CFRelease(theArray[0]);
        }

        goto LABEL_22;
      }
    }

    else
    {
      IsSystemAudioRouteWHAGroupableLocal = FigRoutingManagerUtilities_IsSystemAudioRouteWHAGroupableLocal();
    }

    if (IsSystemAudioRouteWHAGroupableLocal || FigRoutingManagerUtilities_IsSystemAudioRouteNull() || FigRoutingManagerUtilities_IsSystemAudioRouteAirPlayLowLatency())
    {
      if (dword_1EB75DF20)
      {
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      ArrayFromEndpoint = FigRoutingManagerCreateArrayFromEndpoint(v4);
      FigRoutingManagerPickEndpointsForContext(*(a1 + 32), ArrayFromEndpoint, 0, Mutable);
      if (ArrayFromEndpoint)
      {
        CFRelease(ArrayFromEndpoint);
      }
    }

    else if (dword_1EB75DF20)
    {
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_20;
  }

  if (dword_1EB75DF20)
  {
    LODWORD(theArray[0]) = 0;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRoutingManagerPickRouteDescriptorsForContext(*(a1 + 32), 0, 0, Mutable);
LABEL_22:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void FigRoutingManagerPrintPickedRoutesForAllRoutingContexts()
{
  theArray[16] = *MEMORY[0x1E69E9840];
  v17 = 0;
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v17);
  FigRoutingManagerCopyPickedEndpointsForRoutingContext(v17, &cf);
  FigRoutingManagerLogEndpointIDs(@"System audio routes:", cf, 0, 1);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (CMSMDeviceState_IsHomePodHub())
  {
    theArray[0] = 0;
    FigRoutingManagerContextUtilities_CopyAudioContextUUIDs(theArray);
    v0 = 0;
    v1 = *MEMORY[0x1E695E480];
    while (1)
    {
      v2 = theArray[0] ? CFArrayGetCount(theArray[0]) : 0;
      v3 = theArray[0];
      if (v0 >= v2)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], v0);
      FigRoutingManagerCopyPickedEndpointsForRoutingContext(ValueAtIndex, &cf);
      v5 = CFStringCreateWithFormat(v1, 0, @"Audio context routes for UUID=%@", ValueAtIndex);
      FigRoutingManagerLogEndpointIDs(v5, cf, 0, 1);
      if (v5)
      {
        CFRelease(v5);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      ++v0;
    }
  }

  else
  {
    v16 = 0;
    FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&v16);
    FigRoutingManagerCopyPickedEndpointsForRoutingContext(v16, &cf);
    FigRoutingManagerLogEndpointIDs(@"System music routes:", cf, 0, 1);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v6 = FigRoutingManagerCopyLocalAirPlayEndpoint();
    if (v6)
    {
      v15 = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &v15);
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (v15)
      {
        CFRelease(v15);
      }
    }

    else
    {
      LODWORD(v15) = 0;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    theArray[0] = 0;
    FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(v16, theArray);
    v19 = 0;
    if (theArray[0] && (v11 = FigEndpointGetCMBaseObject(), (v12 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0))
    {
      v12(v11, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &v19);
      v13 = v19;
    }

    else
    {
      v13 = 0;
    }

    FigRoutingManagerLogEndpointIDs(@"SubEndpoints in the system music aggregate:", v13, 0, 1);
    if (v19)
    {
      CFRelease(v19);
      v19 = 0;
    }

    if (theArray[0])
    {
      CFRelease(theArray[0]);
      theArray[0] = 0;
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v3 = v16;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  v14 = *MEMORY[0x1E69E9840];
}

BOOL routingManager_isSystemMusicOnlyRoutedToLocalHomeTheaterEndpoint()
{
  v7 = 0;
  FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&v7);
  cf = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(v7, &cf);
  theArray = 0;
  if (cf)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v1 && (v1(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray), theArray))
    {
      if (CFArrayGetCount(theArray) == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        IsLocalHomeTheaterEndpoint = FigRoutingManagerIsLocalHomeTheaterEndpoint(ValueAtIndex);
      }

      else
      {
        IsLocalHomeTheaterEndpoint = 0;
      }

      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }
    }

    else
    {
      IsLocalHomeTheaterEndpoint = 0;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  else
  {
    IsLocalHomeTheaterEndpoint = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return IsLocalHomeTheaterEndpoint;
}

void __routingManager_handleBottomUpRouteChange_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_UserPickedRoute", *MEMORY[0x1E695E4C0]);
  FigRoutingManagerPickRouteDescriptorsForContext(*(a1 + 32), 0, 0, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t routingManager_processPickEndpoint(const void *a1, const void *a2, const __CFDictionary *a3, const void *a4)
{
  v37[16] = *MEMORY[0x1E69E9840];
  ContextType = FigRoutingManagerContextUtilities_SetPickingState(a2, 3);
  v10 = ContextType;
  if (a1)
  {
    if (!ContextType)
    {
      ContextType = FigRoutingManager_iOSActivateEndpoint(a1, a2, a3, a4);
      v10 = ContextType;
    }

    goto LABEL_32;
  }

  ContextType = FigRoutingManagerContextUtilities_GetContextType(a2);
  v11 = ContextType;
  if ((ContextType - 5) < 2)
  {
    goto LABEL_7;
  }

  if (!ContextType)
  {
    goto LABEL_32;
  }

  if (ContextType == 2)
  {
LABEL_7:
    v35 = 0;
    FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v35);
    v34 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a2, 0, &v34);
    v33 = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v35, 0, &v33);
    cf = 0;
    if (v34)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v13(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &cf);
      }
    }

    if (v33 == v34 && (v15 = *MEMORY[0x1E69626A8], FigRoutingManagerIsEndpointOfType(v34)))
    {
      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v10 = FigRoutingManager_RouteAwayFromAirPlayEndpoint(v34, a2, 1);
      v31 = 0;
      FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(a2, v34, &v31);
      FigRoutingManagerLogEndpointID(@"Going to deactivate endpoint with name=", v34, @"because most recent currently activating endpoint is NULL", 1);
      FigRoutingManager_iOSDeactivateEndpoint(v34, v31, 1);
      FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, 0, @"configUpdateReasonEndedSuccess", a3, 0);
      v20 = CMSMUtility_CopyCurrentRouteIdentifiers();
      NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
      if (NumberOfCurrentOutputPorts)
      {
        v22 = NumberOfCurrentOutputPorts;
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        v24 = 0;
        v25 = *MEMORY[0x1E69618F8];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v20, v24);
          v27 = FigRoutingManagerCopyEndpointWithDeviceID(ValueAtIndex, 0, v25, v35);
          if (v27)
          {
            v28 = v27;
            CFArrayAppendValue(Mutable, v27);
            CFRelease(v28);
          }

          ++v24;
        }

        while (v22 != v24);
      }

      else
      {
        Mutable = 0;
      }

      v29 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(Mutable, 0);
      FigRoutingManagerContextUtilities_SetPickedEndpoints(v35, Mutable, @"configUpdateReasonEndedSuccess", a3, v29);
      FigRoutingManagerContextUtilities_SetPickingState(a2, 0);
      if (v29)
      {
        CFRelease(v29);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v35)
      {
        CFRelease(v35);
        v35 = 0;
      }

      if (v10)
      {
        v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      if (dword_1EB75DF20)
      {
        LODWORD(v31) = 0;
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v11 == 5)
      {
        CMSMVAUtility_DestroyPerAppAirPlayVAD(a2);
      }

      FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, 0, @"configUpdateReasonEndedSuccess", a3, 0);
      v37[0] = 0;
      FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(a2, v34, v37);
      FigRoutingManager_iOSDeactivateEndpoint(v34, v37[0], 1);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v33)
    {
      CFRelease(v33);
      v33 = 0;
    }

    if (v34)
    {
      CFRelease(v34);
      v34 = 0;
    }

    ContextType = v35;
    if (v35)
    {
LABEL_31:
      CFRelease(ContextType);
    }
  }

  else
  {
    v37[0] = 0;
    ContextType = FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a2, 0, v37);
    if (v37[0])
    {
      FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, 0, @"configUpdateReasonEndedSuccess", a3, 0);
      v36 = 0;
      FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(a2, v37[0], &v36);
      v17 = *MEMORY[0x1E69626A8];
      if (FigRoutingManagerIsEndpointOfType(v37[0]))
      {
        FigRoutingManagerLogEndpointID(@"Going to deactivate endpoint with name=", v37[0], @"because user selected NULL", 1);
        FigRoutingManager_iOSDeactivateEndpoint(v37[0], v36, 1);
      }

      ContextType = v37[0];
      if (v37[0])
      {
        goto LABEL_31;
      }
    }
  }

LABEL_32:
  FigRoutingContextUtilities_LogCurrentState(ContextType, v9);
  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

BOOL routingManager_shouldSystemMusicFollowSystemAudio(const __CFArray *a1, uint64_t a2)
{
  if (a1 && CFArrayGetCount(a1))
  {
    if (CFArrayGetCount(a1) != 1)
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    result = FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(ValueAtIndex);
    if (!result)
    {
      return result;
    }
  }

  if (!a2)
  {
    return 1;
  }

  result = FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(a2);
  if (result)
  {
    return 1;
  }

  return result;
}

void routingManager_routeToWHAGroupableVAEndpoint(const __CFDictionary *a1)
{
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
  v2 = FigRoutingManagerCopyWHAGroupableVAEndpoint();
  EndpointActivateOptions = FigRoutingManagerCreateEndpointActivateOptions(v2, cf, a1);
  FigRoutingManagerGetFigEndpointFeatures(v2, cf);
  FigEndpointActivate();
  v4 = CMSMUtility_CopyCurrentRouteIdentifiers();
  v5 = FigRoutingManagerCopyEndpointsFromRouteIdentifiers(v4, cf);
  v6 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v5, 0);
  FigRoutingManagerContextUtilities_SetPickedEndpoints(cf, v5, @"configUpdateReasonEndedSuccess", a1, v6);
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

  if (EndpointActivateOptions)
  {
    CFRelease(EndpointActivateOptions);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t routingManager_processAddAirPlayEndpoint(const void *a1, const void *a2, const void *a3, const __CFDictionary *a4, const void *a5)
{
  cf[22] = *MEMORY[0x1E69E9840];
  FigRoutingManagerContextUtilities_SetPickingState(a3, 4);
  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a2, cf);
  FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoint(a3, cf[0], a1, a4, a5);
  if (FigRoutingManagerIsEndpointActivated(a1))
  {
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v10)
    {
      v10(a1, 0);
    }

    FigEndpointDeactivate();
  }

  IsSystemAudioRouteAirPlayLowLatency = FigRoutingManagerUtilities_IsSystemAudioRouteAirPlayLowLatency();
  if (FigRoutingManagerUtilities_IsSystemAudioRouteWHAGroupableLocal())
  {
    theArray = 0;
    if (!cf[0])
    {
      goto LABEL_45;
    }

    CMBaseObject = FigEndpointGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
    }

    if (!theArray || !CFArrayGetCount(theArray))
    {
LABEL_45:
      if (!FigRoutingManagerIsEndpointLocal(a1) && !CMSMDeviceState_IsHomePodHub())
      {
        if (dword_1EB75DF20)
        {
          *v27 = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingManagerAggregateAddLocalAirPlayEndpoint(a2, cf[0]);
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  else if (FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(a1))
  {
    if (dword_1EB75DF20)
    {
      LODWORD(theArray) = 0;
      v27[0] = OS_LOG_TYPE_DEFAULT;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    routingManager_routeToWHAGroupableVAEndpoint(a4);
  }

  else if (!FigRoutingManagerIsClusterLocalEndpoint(a1) && !IsSystemAudioRouteAirPlayLowLatency)
  {
    if (dword_1EB75DF20)
    {
      LODWORD(theArray) = 0;
      v27[0] = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigRoutingManagerAggregateRemoveLocalAirPlayEndpoint();
  }

  v17 = cf[0];
  if (!cf[0] || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v17 = 0;
  }

  v18 = FigRoutingManagerAddEndpointToAggregate(v17, a1, a3, a4, a5, FigRoutingManagerAggregateAddEndpointCompletionCallback);
  if (!v18)
  {
    theArray = 0;
    v19 = *MEMORY[0x1E695E480];
    v20 = FigEndpointGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v21(v20, *MEMORY[0x1E69620F8], v19, &theArray);
    }

    *v27 = 0;
    v22 = FigEndpointGetCMBaseObject();
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v23)
    {
      v23(v22, *MEMORY[0x1E69621E8], v19, v27);
    }

    if (dword_1EB75DF20)
    {
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*v27)
    {
      CFRelease(*v27);
      *v27 = 0;
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v18;
}

void routingManager_updatePickedEndpoints(const void *a1, uint64_t a2)
{
  v15[20] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioInputContextUUID(v15);
  if (FigCFEqual())
  {
    v4 = CMSMUtility_CopyCurrentInputRouteIdentifiers();
  }

  else
  {
    v4 = CMSMUtility_CopyCurrentRouteIdentifiers();
  }

  v5 = v4;
  v6 = FigRoutingManagerCopyEndpointsFromRouteIdentifiers(v4, a1);
  v7 = v6;
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    cf = 0;
    FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&cf);
    if (Count >= 1)
    {
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v9);
        if (FigRoutingManagerIsEndpointLowLatencyAirPlay(ValueAtIndex))
        {
          if (FigRoutingContextUtilities_IsFollowingAnotherContext(cf))
          {
            break;
          }
        }

        if (Count == ++v9)
        {
          goto LABEL_15;
        }
      }

      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingContextUtilities_UnfollowUUIDFromLeader(cf, @"configUpdateReasonEndedSuccess");
    }
  }

  else
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&cf);
  }

LABEL_15:
  v12 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v7, 0);
  FigRoutingManagerContextUtilities_SetPickedEndpoints(a1, v7, @"configUpdateReasonEndedSuccess", a2, v12);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v15[0])
  {
    CFRelease(v15[0]);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t FigVolumeControllerStartServer()
{
  v4 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  if (dword_1EB75DEC0 >= 0x100)
  {
    dword_1EB75DEC0 = 0;
  }

  v0 = FigXPCServerStart();
  if (v0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

_xpc_connection_s *volumeControllerServer_getClientInfo(_xpc_connection_s *result, _DWORD *a2, void *a3)
{
  if (a2 && a3)
  {
    result = xpc_connection_get_pid(result);
    v5 = result;
    if (result >= 1)
    {
      result = proc_name(result, a3, 0x80u);
      if ((result & 0x80000000) == 0)
      {
        *(a3 + result) = 0;
      }
    }

    *a2 = v5;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return CMBaseObjectGetVTable();
}

uint64_t FigVibratorIsVibratorAvailable()
{
  if (_MergedGlobals_6 != -1)
  {
    FigVibratorIsVibratorAvailable_cold_1();
  }

  result = gvVibeSynthIsAvailable;
  if (!gvVibeSynthIsAvailable)
  {
    v1 = *MEMORY[0x1E696CD60];
    v2 = IOServiceNameMatching("vibrator");
    result = IOServiceGetMatchingService(v1, v2);
    if (result)
    {
      IOObjectRelease(result);
      return 1;
    }
  }

  return result;
}

uint64_t fvGetVibeSynthIsAvailable()
{
  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libVibeSynthEngine.dylib", 4);
  qword_1ED6D2F20 = result;
  if (result)
  {
    result = dlsym(result, "VibeSynthEngineHasHardwareSupport");
    if (result)
    {
      result = (result)();
      gvVibeSynthIsAvailable = result;
      if (result)
      {
        return result;
      }

      goto LABEL_4;
    }

    if (!gvVibeSynthIsAvailable)
    {
LABEL_4:
      result = dlclose(qword_1ED6D2F20);
      qword_1ED6D2F20 = 0;
    }
  }

  return result;
}

void FigVibratorPostNotification(const __CFString *a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, a1, 0, 0, 1u);
}

CFArrayRef vaeCreatePortListArrayFromPortID(int a1)
{
  values[1] = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  v1 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v2 = CFArrayCreate(v1, values, 1, MEMORY[0x1E695E9C0]);
  if (values[0])
  {
    CFRelease(values[0]);
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

CFTypeRef vaeCopyBluetoothShareablePortsForPort(AudioObjectID a1)
{
  outData[22] = *MEMORY[0x1E69E9840];
  outData[0] = 0;
  if (a1 && (inAddress.mElement = 0, *&inAddress.mSelector = *"gaswbolg", AudioObjectHasProperty(a1, &inAddress)))
  {
    ioDataSize = 8;
    if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, outData))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (outData[0])
      {
        CFRelease(outData[0]);
        outData[0] = 0;
      }
    }

    if (dword_1EB75DE40)
    {
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = outData[0];
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef vaeCopyDeviceMacAddressFromVADPort(AudioObjectID a1)
{
  v1 = vaeCopyDeviceIdentifierFromVADPort(a1);
  v2 = MXCFCopyPrefixSubstring(v1, 17);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

CFStringRef vaeCopyDeviceAddressFromVADPort(AudioObjectID a1)
{
  v3 = 0;
  v1 = vaeCopyDeviceIdentifierFromVADPort(a1);
  CMSMUtility_CreateTokensFromDeviceUID(v1, &v3, 0);
  if (v1)
  {
    CFRelease(v1);
  }

  return v3;
}

CFTypeRef vaeCopyPersistentUID(AudioObjectID a1)
{
  v7 = *MEMORY[0x1E69E9840];
  outData = 0;
  *&inAddress.mSelector = *"dippbolg";
  inAddress.mElement = 0;
  ioDataSize = 8;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = outData;
    if (outData)
    {
      CFRelease(outData);
      result = 0;
    }
  }

  else
  {
    result = outData;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef vaeCopyModelUIDForPort(AudioObjectID a1)
{
  outData[24] = *MEMORY[0x1E69E9840];
  outData[0] = 0;
  *&inAddress.mSelector = *"dimpbolg";
  inAddress.mElement = 0;
  ioDataSize = 8;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, outData))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = outData[0];
    if (outData[0])
    {
      CFRelease(outData[0]);
      result = 0;
    }
  }

  else
  {
    result = outData[0];
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef vaeCopyExclavesSensorStatusInfo()
{
  outData[22] = *MEMORY[0x1E69E9840];
  VADPortIDFromVADPortType = vaemGetVADPortIDFromVADPortType(1886216809);
  outData[0] = 0;
  *&inAddress.mSelector = *"SSxEbolg";
  inAddress.mElement = 0;
  if (!AudioObjectHasProperty(VADPortIDFromVADPortType, &inAddress))
  {
    goto LABEL_7;
  }

  ioDataSize = 8;
  if (AudioObjectGetPropertyData(VADPortIDFromVADPortType, &inAddress, 0, 0, &ioDataSize, outData))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = outData[0];
    if (outData[0])
    {
      CFRelease(outData[0]);
LABEL_7:
      result = 0;
    }
  }

  else
  {
    result = outData[0];
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL vaeIsAvailableForVoicePrompts(_BOOL8 result)
{
  v7 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    *&inAddress.mSelector = 0x676C6F6274627461;
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

uint64_t vaeGetPartnersForPort(AudioObjectID inObjectID, void *outData)
{
  result = 0;
  v9 = *MEMORY[0x1E69E9840];
  if (inObjectID && outData)
  {
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"trppbolg";
    ioDataSize = 32;
    if (AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, outData))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      result = 0;
    }

    else
    {
      result = ioDataSize >> 2;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaePartnerRouteRoutable(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  result = vaeGetPartnersForPort(a1, v4);
  if (result)
  {
    result = vaeDoesBluetoothSupportFeature(a1) == 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL vaeIsSiblingRoutePresent(_BOOL8 result)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(outData, 0, sizeof(outData));
  if (result)
  {
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"bispbolg";
    ioDataSize = 32;
    if (AudioObjectGetPropertyData(result, &inAddress, 0, 0, &ioDataSize, outData))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      result = 0;
    }

    else
    {
      result = ioDataSize > 3;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeSignalOwnershipIsTaken()
{
  if (getOwnershipCondition_onceToken != -1)
  {
    vaeSignalOwnershipIsTaken_cold_1();
  }

  [getOwnershipCondition_sOwnershipCondition lock];
  if (getOwnershipCondition_onceToken != -1)
  {
    vaeSignalOwnershipIsTaken_cold_1();
  }

  [getOwnershipCondition_sOwnershipCondition broadcast];
  if (getOwnershipCondition_onceToken != -1)
  {
    vaeSignalOwnershipIsTaken_cold_1();
  }

  v0 = getOwnershipCondition_sOwnershipCondition;

  return [v0 unlock];
}

uint64_t vaeRequestOwnershipOnBTPort(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  SInt64 = FigCFNumberCreateSInt64();
  IsPortPresentInConnectedOutputPorts = vaemIsPortPresentInConnectedOutputPorts(SInt64);
  if (MX_FeatureFlags_IsSystemInputPickerEnabled())
  {
    v5 = vaemIsPortPresentInConnectedInputPorts(SInt64) != 0;
    if (!SInt64)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (SInt64)
  {
LABEL_3:
    CFRelease(SInt64);
  }

LABEL_4:
  if (!a1)
  {
    valuePtr.mSelector = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    MXSimulateCrash("Calling for ownership on unknown port is unexpected. Please file a bug to MediaExperience (New Bugs) | All.");
    goto LABEL_16;
  }

  *&inAddress.mSelector = 0x676C6F626F736163;
  inAddress.mElement = 0;
  if (!AudioObjectHasProperty(a1, &inAddress))
  {
    goto LABEL_8;
  }

  if (vaeGetBTPortOwnsSharedAudioConnection(a1))
  {
    if (!dword_1EB75DE40)
    {
LABEL_19:
      result = 0;
      goto LABEL_20;
    }

LABEL_8:
    valuePtr.mSelector = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_19;
  }

  if (IsPortPresentInConnectedOutputPorts == 0 && !v5)
  {
    if (dword_1EB75DE40)
    {
      valuePtr.mSelector = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_16;
  }

  if (vaeGetPortTypeFromPortID(a1) != 1885892674)
  {
    memset(&valuePtr, 0, 32);
    PartnersForPort = vaeGetPartnersForPort(a1, &valuePtr);
    Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
    if (PartnersForPort)
    {
      v14 = PartnersForPort;
      p_valuePtr = &valuePtr;
      do
      {
        if (p_valuePtr->mSelector)
        {
          v16 = CFNumberCreate(v2, kCFNumberSInt32Type, p_valuePtr);
          CFArrayAppendValue(Mutable, v16);
          if (v16)
          {
            CFRelease(v16);
          }
        }

        p_valuePtr = (p_valuePtr + 4);
        --v14;
      }

      while (v14);
    }

    A2DPPort = cmsmGetA2DPPort(Mutable);
    if (dword_1EB75DE40)
    {
      *type = 0;
      v28[0] = OS_LOG_TYPE_DEFAULT;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (A2DPPort)
    {
      goto LABEL_32;
    }

LABEL_16:
    result = 4294954310;
    goto LABEL_20;
  }

  A2DPPort = a1;
LABEL_32:
  *type = 1;
  *&valuePtr.mSelector = 0x676C6F626F736163;
  valuePtr.mElement = 0;
  result = AudioObjectHasProperty(A2DPPort, &valuePtr);
  if (result)
  {
    [MEMORY[0x1E695DF00] now];
    if (getOwnershipCondition_onceToken != -1)
    {
      vaeRequestOwnershipOnBTPort_cold_1();
    }

    [getOwnershipCondition_sOwnershipCondition lock];
    *v28 = CMSMVAUtility_AudioObjectSetPropertyData();
    if (*v28)
    {
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (getOwnershipCondition_onceToken != -1)
      {
        vaeRequestOwnershipOnBTPort_cold_1();
      }

      [getOwnershipCondition_sOwnershipCondition unlock];
      result = *v28;
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (getOwnershipCondition_onceToken != -1)
      {
        vaeRequestOwnershipOnBTPort_cold_1();
      }

      v20 = [getOwnershipCondition_sOwnershipCondition waitUntilDate:{objc_msgSend(MEMORY[0x1E695DF00], "dateWithTimeIntervalSinceNow:", 6.0, v23, v26)}];
      if (dword_1EB75DE40)
      {
        v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (getOwnershipCondition_onceToken != -1)
      {
        vaeRequestOwnershipOnBTPort_cold_1();
      }

      [getOwnershipCondition_sOwnershipCondition unlock];
      if (v20)
      {
        result = 0;
      }

      else
      {
        result = 4294954310;
      }
    }
  }

LABEL_20:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *vaeGetOwnershipRequestReasonString(int a1)
{
  if ((a1 - 1) > 0x11)
  {
    return @"Not defined yet";
  }

  else
  {
    return off_1E7AEB680[a1 - 1];
  }
}

uint64_t vaeHasUserEnabledInEarDetectionForBTPort(AudioObjectID a1, _BYTE *a2)
{
  result = vaeDoesBTPortSupportInEarDetection(a1);
  v5 = result;
  if (result)
  {
    v6.mElement = 0;
    *&v6.mSelector = *"eitbbolg";
    result = AudioObjectHasProperty(a1, &v6) != 0;
  }

  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t vaeIsInEarStatusTrueForBTPort(AudioObjectID a1)
{
  v9 = *MEMORY[0x1E69E9840];
  outData = 0;
  result = vaeDoesBTPortSupportInEarDetection(a1);
  if (result)
  {
    if (!a1)
    {
LABEL_6:
      result = 0;
      goto LABEL_7;
    }

    *&inAddress.mSelector = 0x676C6F6262746965;
    inAddress.mElement = 0;
    ioDataSize = 4;
    if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_6;
    }

    result = outData != 0;
  }

LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeGetBTPortInEarStatusForBud(AudioObjectID a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  outData = 0;
  v11 = 0;
  HasUserEnabledInEarDetectionForBTPort = vaeHasUserEnabledInEarDetectionForBTPort(a1, &v11);
  if (!v11)
  {
    goto LABEL_10;
  }

  if (HasUserEnabledInEarDetectionForBTPort)
  {
    if (a2)
    {
      v5 = 1651796336;
    }

    else
    {
      v5 = 1651796339;
    }

    *&inAddress.mScope = 1735159650;
    ioDataSize = 4;
    inAddress.mSelector = v5;
    if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_10:
      result = 0;
      goto LABEL_11;
    }

    result = outData;
  }

  else
  {
    result = 1;
  }

LABEL_11:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *vaeGetBluetoothListeningModeString(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7AEB710[a1];
  }
}

__CFString *vaeGetBluetoothSpatialAudioModeString(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7AEB738[a1];
  }
}

__CFString *vaeGetBluetoothAlternateTransportString(int a1)
{
  v1 = @"AlternateTransportUSBc";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"AlternateTransportDefault";
  }
}

uint64_t vaeGetBluetoothListeningMode(uint64_t result)
{
  v8 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    v1 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"mtslbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      ioDataSize = 4;
      if (AudioObjectGetPropertyData(v1, &inAddress, 0, 0, &ioDataSize, &outData))
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
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeGetBluetoothSpatialAudioMode(uint64_t result)
{
  v8 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    v1 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"dmpsbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      ioDataSize = 4;
      if (AudioObjectGetPropertyData(v1, &inAddress, 0, 0, &ioDataSize, &outData))
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
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeGetBluetoothAlternateTransport(uint64_t result)
{
  v8 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    v1 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"tlabbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      ioDataSize = 4;
      if (AudioObjectGetPropertyData(v1, &inAddress, 0, 0, &ioDataSize, &outData))
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
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeDoesPortSupportStereoHFP(uint64_t result)
{
  v8 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    v1 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"pshsbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      ioDataSize = 4;
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

uint64_t vaeGetSupportedBluetoothListeningModes(uint64_t result)
{
  v8 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    v1 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"smslbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      ioDataSize = 4;
      if (AudioObjectGetPropertyData(v1, &inAddress, 0, 0, &ioDataSize, &outData))
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
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef vaeCopyLocalizedString(CFStringRef key)
{
  if (vaeCopyLocalizedString_kCMSession_LoadVirtualAudioBundleOnce != -1)
  {
    vaeCopyLocalizedString_cold_1();
  }

  v2 = vaeCopyLocalizedString_bundleRef;

  return CFBundleCopyLocalizedString(v2, key, key, @"Localizable");
}

BOOL vaeDoesPortSupportHeadTrackedSpatialAudio(AudioObjectID a1)
{
  v2.mElement = 0;
  *&v2.mSelector = *"nepsbolg";
  return AudioObjectHasProperty(a1, &v2) != 0;
}

uint64_t vaeIsHeadTrackedSpatialAudioActive(AudioObjectID a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"nepsbolg";
  inAddress.mElement = 0;
  result = AudioObjectHasProperty(a1, &inAddress);
  if (result)
  {
    ioDataSize = 4;
    outData = 0;
    if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
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

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeDoesPortAllowHeadTrackedSpatialAudio(AudioObjectID a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"shpsbolg";
  inAddress.mElement = 0;
  result = AudioObjectHasProperty(a1, &inAddress);
  if (result)
  {
    ioDataSize = 4;
    outData = 0;
    if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
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

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeDoesPortSupportSecureMicrophone(AudioObjectID a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"smcsbolg";
  inAddress.mElement = 0;
  result = AudioObjectHasProperty(a1, &inAddress);
  if (result)
  {
    ioDataSize = 4;
    outData = 0;
    if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
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

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeSetPortAvailableForVoicePrompts(uint64_t result, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a2;
  outIsSettable = 1;
  if (result)
  {
    *&inAddress.mSelector = 0x676C6F6274627461;
    inAddress.mElement = 0;
    AudioObjectIsPropertySettable(result, &inAddress, &outIsSettable);
    if (outIsSettable)
    {
      [+[MXSessionManager sharedInstance](MXSessionManager isCurrentRouteHeadphoneAndInEar:"isCurrentRouteHeadphoneAndInEar:", 0];
      result = CMSMVAUtility_AudioObjectSetPropertyData();
      v5 = result;
      if (result)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        result = v5;
      }
    }

    else
    {
      result = 0;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeSetBTLowLatencyMode(AudioObjectID a1, int a2)
{
  v3.mElement = 0;
  v4 = a2;
  *&v3.mSelector = *"lltbbolg";
  result = AudioObjectHasProperty(a1, &v3);
  if (result)
  {
    return CMSMVAUtility_AudioObjectSetPropertyData();
  }

  return result;
}

float vaeGetDestinationVolumeScalarFactor(double a1, float a2)
{
  v2 = a2;
  inQualifierData[22] = *MEMORY[0x1E69E9840];
  *inQualifierData = a1;
  outData = a2;
  *&inAddress.mSelector = *"fsvdbolg";
  inAddress.mElement = 0;
  if (AudioObjectHasProperty([+[MXSessionManager defaultVADID] sharedInstance])
  {
    ioDataSize = 8;
    if (AudioObjectGetPropertyData([[MXSessionManager defaultVADID] sharedInstance:8u])
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v2 = outData;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t vaeMakePortRoutable(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  PortListArrayFromPortID = vaeCreatePortListArrayFromPortID(a1);
  if (a2 == 2 && dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ArrayOfPortsRoutable = vaemMakeArrayOfPortsRoutable(PortListArrayFromPortID, a2, a3, a4, 0);
  if (PortListArrayFromPortID)
  {
    CFRelease(PortListArrayFromPortID);
  }

  v10 = *MEMORY[0x1E69E9840];
  return ArrayOfPortsRoutable;
}

BOOL vaeCopyIfBluetoothEndpointSupportsConversationDetect(AudioObjectID a1)
{
  cf = 0;
  if (!MX_FeatureFlags_IsConversationDetectSupported())
  {
    return 0;
  }

  vaeCopyDeviceIdentifierFromVADPort(a1);
  v2 = FigRoutingManagerCopyEndpointWithDeviceIDFromBluetoothManager();
  if (v2)
  {
    v3 = v2;
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v6 = *(*(VTable + 8) + 48);
    if (v6)
    {
      v7 = *(VTable + 8) + 48;
      v6(CMBaseObject, @"SupportsConversationDetect", *MEMORY[0x1E695E480], &cf);
    }

    v9 = *MEMORY[0x1E695E4D0];
    v10 = FigCFEqual();
    CFRelease(v3);
  }

  else
  {
    v11 = *MEMORY[0x1E695E4D0];
    v10 = FigCFEqual();
  }

  v8 = v10 != 0;
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

BOOL vaeCopyIfBluetoothEndpointHasConversationDetectEnabled(AudioObjectID a1)
{
  cf = 0;
  if (!MX_FeatureFlags_IsConversationDetectSupported())
  {
    return 0;
  }

  vaeCopyDeviceIdentifierFromVADPort(a1);
  v2 = FigRoutingManagerCopyEndpointWithDeviceIDFromBluetoothManager();
  if (v2)
  {
    v3 = v2;
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v6 = *(*(VTable + 8) + 48);
    if (v6)
    {
      v7 = *(VTable + 8) + 48;
      v6(CMBaseObject, @"ConversationDetectEnable", *MEMORY[0x1E695E480], &cf);
    }

    v9 = *MEMORY[0x1E695E4D0];
    v10 = FigCFEqual();
    CFRelease(v3);
  }

  else
  {
    v11 = *MEMORY[0x1E695E4D0];
    v10 = FigCFEqual();
  }

  v8 = v10 != 0;
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t vaeUpdateBluetoothCallScreeningStatus(uint64_t result, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (result)
  {
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"sslcbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      v6 = CMSMVAUtility_AudioObjectSetPropertyData();
      if (v6)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        result = v6;
      }

      else
      {
        if (dword_1EB75DE40)
        {
          v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        result = 0;
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeAddInEarBluetoothStatusListenerForPort(AudioObjectID a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = 0x676C6F6262746965;
  inAddress.mElement = 0;
  v8 = AudioObjectAddPropertyListener(a1, &inAddress, cmsmInEarBluetoothStatusListener, 0);
  if (v8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *&inAddress.mSelector = 0x676C6F6262746970;
  inAddress.mElement = 0;
  v8 = AudioObjectAddPropertyListener(a1, &inAddress, cmsmPrimaryBudInEarBluetoothStatusListener, 0);
  if (v8)
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *&inAddress.mSelector = 0x676C6F6262746973;
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmSecondaryBudInEarBluetoothStatusListener, 0);
  v8 = result;
  if (result)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeAddOwnsSharedAudioConnectionListenerForPort(AudioObjectID a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"casobolg";
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmOwnsSharedAudioConnectionListener, 0);
  v4 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeAddSharedAudioConnectionFailedListenerForPort(AudioObjectID a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"fcasbolg";
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmSharedAudioConnectionFailedListener, 0);
  v4 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeAddBluetoothListeningModeListenerForPort(AudioObjectID a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"mtslbolg";
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmBluetoothListeningModeListener, 0);
  v4 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeAddBluetoothSharingAggregationListenerForPort(AudioObjectID a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"gaswbolg";
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmBluetoothSharingAggregationListener, 0);
  v4 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeAddBluetoothSpatialAudioEnabledListenerForPort(AudioObjectID a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"nepsbolg";
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmBluetoothSpatialAudioEnabledListener, 0);
  v4 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeAddBluetoothSpatialAudioUserEnableFeatureListenerForPort(AudioObjectID a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"shpsbolg";
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmBluetoothSpatialAudioUserEnableFeatureListener, 0);
  v4 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeAddBluetoothSpatialAudioModeListenerForPort(AudioObjectID a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"dmpsbolg";
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmBluetoothSpatialAudioModeListener, 0);
  v4 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeAddBluetoothAlternateTransportListenerForPort(AudioObjectID a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"tlabbolg";
  inAddress.mElement = 0;
  result = AudioObjectAddPropertyListener(a1, &inAddress, cmsmBluetoothAlternateTransportListener, 0);
  v4 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeAddExclavesStatusChangedNotificationListener()
{
  v5 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"SSxEbolg";
  inAddress.mElement = 0;
  VADPortIDFromVADPortType = vaemGetVADPortIDFromVADPortType(1886216809);
  result = AudioObjectAddPropertyListener(VADPortIDFromVADPortType, &inAddress, cmsmExclavesSensorStatusListener, 0);
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigVAEndpointCreate(uint64_t a1, int a2, void *a3)
{
  if (a3)
  {
    FigVAEndpointGetClassID();
    v5 = CMDerivedObjectCreate();
    if (!v5)
    {
      *CMBaseObjectGetDerivedStorage() = a2;
      *a3 = 0;
    }
  }

  else
  {
    FigVAEndpointCreate_cold_1(&v7);
    return v7;
  }

  return v5;
}

_DWORD *FigVAEndpointDisassociatePort()
{
  result = CMBaseObjectGetDerivedStorage();
  *result = 0;
  return result;
}

id __getOwnershipCondition_block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E696AB30]);
  getOwnershipCondition_sOwnershipCondition = result;
  return result;
}

void __vaeCopyLocalizedString_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  vaeCopyLocalizedString_bundleUrl = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/Library/Audio/Plug-Ins/HAL/VirtualAudio.plugin", kCFURLPOSIXPathStyle, 1u);
  v1 = CFBundleCreate(v0, vaeCopyLocalizedString_bundleUrl);
  vaeCopyLocalizedString_bundleRef = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  v2 = vaeCopyLocalizedString_bundleUrl;
  if (vaeCopyLocalizedString_bundleUrl)
  {

    CFRelease(v2);
  }
}

void _VAEndpoint_Finalize()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t _VAEndpoint_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v56[16] = *MEMORY[0x1E69E9840];
  result = 4294950586;
  if (!a2 || !a3)
  {
    goto LABEL_27;
  }

  v6 = *CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x1E69621C0]))
  {
    v7 = CFGetTypeID(a3);
    if (v7 == CFNumberGetTypeID())
    {
      valuePtr.mSelector = 0;
      CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
      v8 = CMSMUtility_CopyCurrentRouteTypesAsCFString();
      if (dword_1EB75DE40)
      {
        LODWORD(v44) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v17 = [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID:v42];
      vaemSetDeviceVolumeIfNotSet(v17, 0, v8, 0, *&valuePtr.mSelector, 0.0, 0.0);
      if (!v8)
      {
        goto LABEL_26;
      }

      v18 = v8;
      goto LABEL_25;
    }

    result = 4294950586;
LABEL_27:
    v19 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (CFEqual(a2, *MEMORY[0x1E6962338]))
  {
    v10 = CFGetTypeID(a3);
    if (v10 != CFNumberGetTypeID())
    {
      goto LABEL_26;
    }

    LODWORD(v44) = 0;
    CFNumberGetValue(a3, kCFNumberFloat32Type, &v44);
    if (vaeIsPortBluetoothShareable(v6) && CMSMVAUtility_IsBluetoothSharingSessionEnabled(0))
    {
      CMSMVAUtility_SetVolumePreferenceForPort();
    }

    if (!vaeIsPortWHAGroupable(v6))
    {
      goto LABEL_26;
    }

    IsPortActiveForCurrentRouteConfiguration = vaeIsPortActiveForCurrentRouteConfiguration(v6);
    *&valuePtr.mSelector = 0;
    FigSimpleMutexLock();
    PVMCopyVolumeCategoryAndMode([+[MXSessionManager sharedInstance](MXSessionManager getUncustomizedCategory:"getUncustomizedCategory:", [+[MXSessionManager currentAudioCategory] sharedInstance], 0, &valuePtr, 0];
    FigSimpleMutexUnlock();
    if (!IsPortActiveForCurrentRouteConfiguration || !FigCFEqual())
    {
      CMSMVAUtility_SetVolumePreferenceForPort();
    }

    CMSMVAUtility_SetCurrentPreferredVolume(*&v44);
    PortTypeFromPortID = vaeGetPortTypeFromPortID(v6);
    v22 = CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(PortTypeFromPortID);
    if (dword_1EB75DE40)
    {
      *type = 0;
      v48[0] = OS_LOG_TYPE_DEFAULT;
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v24 = *type;
      if (os_log_type_enabled(v23, v48[0]))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        VADNameForVADID = CMSMUtility_GetVADNameForVADID([+[MXSessionManager defaultVADID] sharedInstance];
        v50 = 136315906;
        v51 = "_VAEndpoint_SetProperty";
        v52 = 2114;
        *v53 = VADNameForVADID;
        *&v53[8] = 2114;
        *v54 = v22;
        *&v54[8] = 2114;
        v55 = *&valuePtr.mSelector;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v22)
    {
      CFRelease(v22);
    }

    v18 = *&valuePtr.mSelector;
    if (!*&valuePtr.mSelector)
    {
      goto LABEL_26;
    }

LABEL_25:
    CFRelease(v18);
    goto LABEL_26;
  }

  if (CFEqual(a2, *MEMORY[0x1E69621A8]))
  {
    v11 = CFGetTypeID(a3);
    if (v11 != CFNumberGetTypeID())
    {
      goto LABEL_26;
    }

    v44 = 0;
    CFNumberGetValue(a3, kCFNumberSInt64Type, &v44);
    *type = v44;
    if (!v6)
    {
      goto LABEL_26;
    }

    valuePtr.mElement = 0;
    *&valuePtr.mSelector = *"mtslbolg";
    result = AudioObjectHasProperty(v6, &valuePtr);
    if (result)
    {
      v12 = CMSMVAUtility_AudioObjectSetPropertyData();
      *v48 = v12;
      if (v12)
      {
        v13 = v12;
        v46 = 0;
        v45 = OS_LOG_TYPE_DEFAULT;
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v15 = v46;
        if (os_log_type_enabled(v14, v45))
        {
          v16 = v15;
        }

        else
        {
          v16 = v15 & 0xFFFFFFFE;
        }

        if (v16)
        {
          v50 = 136315906;
          v51 = "vaeSetBluetoothListeningMode";
          v52 = 1024;
          *v53 = v13;
          *&v53[4] = 1042;
          *&v53[6] = 4;
          *v54 = 2082;
          *&v54[2] = v48;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        result = *v48;
        goto LABEL_27;
      }

      if (dword_1EB75DE40)
      {
        v46 = 0;
        v45 = OS_LOG_TYPE_DEFAULT;
        v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v32 = v46;
        if (os_log_type_enabled(v31, v45))
        {
          v33 = v32;
        }

        else
        {
          v33 = v32 & 0xFFFFFFFE;
        }

        if (v33)
        {
          if (*type > 4u)
          {
            v34 = 0;
          }

          else
          {
            v34 = off_1E7AEB710[*type];
          }

          v50 = 136315394;
          v51 = "vaeSetBluetoothListeningMode";
          v52 = 2114;
          *v53 = v34;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (CFEqual(a2, *MEMORY[0x1E6962170]))
  {
    v27 = CFGetTypeID(a3);
    if (v27 == CFBooleanGetTypeID())
    {
      CFBooleanGetValue(a3);
      vaemSetFullMute();
    }

    goto LABEL_26;
  }

  if (CFEqual(a2, *MEMORY[0x1E6961FA8]))
  {
    v28 = CFGetTypeID(a3);
    if (v28 == CFBooleanGetTypeID())
    {
      v29 = CFBooleanGetValue(a3) != 0;
      vaeSetBluetoothSpatialAudioUserEnableFeature(v6, v29);
    }

    goto LABEL_26;
  }

  if (CFEqual(a2, *MEMORY[0x1E69620E8]))
  {
    v30 = CFGetTypeID(a3);
    if (v30 == CFNumberGetTypeID())
    {
      v56[0] = 0;
      CFNumberGetValue(a3, kCFNumberSInt64Type, v56);
      result = vaeSetBluetoothSpatialAudioMode(v6, v56[0]);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  result = CFEqual(a2, @"ConversationDetectEnable");
  if (!result)
  {
    goto LABEL_27;
  }

  v35 = CFGetTypeID(a3);
  if (v35 != CFBooleanGetTypeID())
  {
LABEL_26:
    result = 0;
    goto LABEL_27;
  }

  if (!MX_FeatureFlags_IsConversationDetectSupported() || (Value = CFBooleanGetValue(a3), vaeCopyDeviceIdentifierFromVADPort(v6), (v37 = FigRoutingManagerCopyEndpointWithDeviceIDFromBluetoothManager()) == 0))
  {
    result = 4294954311;
    goto LABEL_27;
  }

  v38 = v37;
  v39 = MEMORY[0x1E695E4D0];
  if (!Value)
  {
    v39 = MEMORY[0x1E695E4C0];
  }

  v40 = FigEndpointSetProperty(v37, @"ConversationDetectEnable", *v39);
  CFRelease(v38);
  v41 = *MEMORY[0x1E69E9840];
  return v40;
}

uint64_t vaeIsPortActiveForCurrentRouteConfiguration(int a1)
{
  v2 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(0, 0, 0, 0, 0, 0, 0x1F2893B50);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
LABEL_6:
    v7 = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    while (CMSMVAUtility_GetPortAtIndex(v3, v6) != a1)
    {
      if (v5 == ++v6)
      {
        goto LABEL_6;
      }
    }

    v7 = 1;
  }

  CFRelease(v3);
  return v7;
}

uint64_t vaeSetBluetoothSpatialAudioUserEnableFeature(uint64_t result, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (result)
  {
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"shpsbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      result = CMSMVAUtility_AudioObjectSetPropertyData();
      v5 = result;
      if (result || dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        result = fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaeSetBluetoothSpatialAudioMode(uint64_t result, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (result)
  {
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"dmpsbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      v6 = CMSMVAUtility_AudioObjectSetPropertyData();
      if (v6)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        result = v6;
      }

      else
      {
        if (dword_1EB75DE40)
        {
          v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        result = 0;
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigEndpointSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 8) + 56);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = *(VTable + 8) + 56;

  return v7(CMBaseObject, a2, a3);
}

uint64_t _VAEndpoint_ActivateWithCompletionCallback(uint64_t a1, uint64_t a2, const void *a3, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t), uint64_t a5)
{
  v38 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *DerivedStorage;
  if (!v11)
  {
    v16 = 4294950573;
    goto LABEL_22;
  }

  v12 = DerivedStorage;
  v13 = *(DerivedStorage + 1);
  *(DerivedStorage + 1) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(v12 + 3) + 1;
  *(v12 + 2) = a2;
  *(v12 + 3) = v14;
  if (a3)
  {
    v15 = CFDictionaryGetValue(a3, *MEMORY[0x1E6961678]);
    CFDictionaryGetValue(a3, *MEMORY[0x1E6961660]);
  }

  else
  {
    v15 = 0;
    v17 = *MEMORY[0x1E695E4C0];
  }

  v18 = *MEMORY[0x1E695E4D0];
  if (!FigCFEqual() || !vaeIsPortBluetoothShareable(v11))
  {
    goto LABEL_19;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
  v16 = NumberOfCurrentOutputPorts;
  if (!NumberOfCurrentOutputPorts)
  {
    goto LABEL_20;
  }

  if (NumberOfCurrentOutputPorts == 1)
  {
    CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
    if (vaeIsPortBluetoothShareable(CurrentOutputPortAtIndex))
    {
      if (dword_1EB75DE40)
      {
        valuea = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(valuea, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      SInt64 = FigCFNumberCreateSInt64();
      CFArrayAppendValue(Mutable, SInt64);
      if (SInt64)
      {
        CFRelease(SInt64);
      }

      v34 = FigCFNumberCreateSInt64();
      CFArrayAppendValue(Mutable, v34);
      if (v34)
      {
        CFRelease(v34);
      }

      v16 = vaeRequestOwnershipOnBTPort(v11);
      if (v16)
      {
        if (dword_1EB75DE40)
        {
          v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        vaemAggregatePorts(Mutable, 1, 0, v15);
      }

      if (!Mutable)
      {
        goto LABEL_20;
      }

      v29 = Mutable;
      goto LABEL_53;
    }

LABEL_19:
    ControllingRoutingSession = CMSMUtility_GetControllingRoutingSession();
    v16 = vaeRouteToSelectedPort(v11, ControllingRoutingSession, v15);
    goto LABEL_20;
  }

  if (!CMSMVAUtility_IsBluetoothSharingSessionEnabled(0))
  {
    if (dword_1EB75DE40)
    {
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v16 = 0;
    goto LABEL_20;
  }

  v25 = *MEMORY[0x1E695E480];
  CMSMUtility_GetCurrentOutputPortAtIndex(1);
  v26 = FigCFNumberCreateSInt64();
  value = FigCFNumberCreateSInt64();
  v27 = CFArrayCreateMutable(v25, 0, MEMORY[0x1E695E9C0]);
  v28 = v27;
  if (v26)
  {
    CFArrayAppendValue(v27, v26);
  }

  if (value)
  {
    CFArrayAppendValue(v28, value);
  }

  if (vaeGetBTPortOwnsSharedAudioConnection(v11))
  {
    vaemAggregatePorts(v28, 1, 1, v15);
    v16 = 0;
  }

  else
  {
    v16 = vaeRequestOwnershipOnBTPort(v11);
    if (v16)
    {
      if (dword_1EB75DE40)
      {
        v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      vaemAggregatePorts(v28, 1, 0, v15);
    }
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v28)
  {
    v29 = v28;
LABEL_53:
    CFRelease(v29);
  }

LABEL_20:
  if (a4)
  {
    a4(a1, a2, *(v12 + 3), v16, a5);
  }

LABEL_22:
  v23 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t _VAEndpoint_DeactivateWithCompletionCallback(uint64_t a1, const __CFDictionary *a2, void (*a3)(uint64_t, void, void, uint64_t, uint64_t), uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *DerivedStorage;
  if (a2)
  {
    CFDictionaryGetValue(a2, *MEMORY[0x1E69617E8]);
    Value = CFDictionaryGetValue(a2, *MEMORY[0x1E69617F0]);
    v11 = CFDictionaryGetValue(a2, *MEMORY[0x1E69617E0]);
  }

  else
  {
    Value = 0;
    v11 = *MEMORY[0x1E695E4C0];
  }

  v12 = *MEMORY[0x1E69617F8];
  v13 = FigCFEqual();
  if (v11 != *MEMORY[0x1E695E4D0] || !vaeIsPortBluetoothShareable(v9))
  {
    goto LABEL_5;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
  PortRoutable = NumberOfCurrentOutputPorts;
  if (NumberOfCurrentOutputPorts)
  {
    if (NumberOfCurrentOutputPorts == 1)
    {
      if (CMSMUtility_GetCurrentOutputPortAtIndex(0) != v9)
      {
        goto LABEL_35;
      }

LABEL_5:
      PortRoutable = vaeMakePortRoutable(v9, 0, v13, Value);
      goto LABEL_6;
    }

    if (!CMSMVAUtility_IsBluetoothSharingSessionEnabled(0))
    {
      if (dword_1EB75DE40)
      {
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_35;
    }

    if (PortRoutable != 2 || CMSMUtility_GetCurrentOutputPortAtIndex(0) != v9 && CMSMUtility_GetCurrentOutputPortAtIndex(1) != v9)
    {
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      PortRoutable = 4294954315;
      goto LABEL_6;
    }

    v19 = *MEMORY[0x1E695E480];
    PortRoutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    cf = FigCFNumberCreateSInt64();
    CFArrayAppendValue(PortRoutable, cf);
    MutableCopy = CFArrayCreateMutableCopy(v19, 0, PortRoutable);
    if (CMSMUtility_GetCurrentOutputPortAtIndex(0) == v9)
    {
      if (CMSMUtility_GetCurrentOutputPortAtIndex(1) == v9)
      {
        goto LABEL_29;
      }

      v21 = 1;
    }

    else
    {
      v21 = 0;
    }

    CMSMUtility_GetCurrentOutputPortAtIndex(v21);
    SInt64 = FigCFNumberCreateSInt64();
    CFArrayAppendValue(MutableCopy, SInt64);
    if (SInt64)
    {
      CFRelease(SInt64);
    }

LABEL_29:
    vaemDeaggregatePorts(MutableCopy, PortRoutable, v13, Value);
    if (cf)
    {
      CFRelease(cf);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (PortRoutable)
    {
      CFRelease(PortRoutable);
LABEL_35:
      PortRoutable = 0;
    }
  }

LABEL_6:
  if (a3)
  {
    a3(a1, *(DerivedStorage + 2), *(DerivedStorage + 3), PortRoutable, a4);
  }

  v15 = *MEMORY[0x1E69E9840];
  return PortRoutable;
}

uint64_t vaeRouteToSelectedPort(uint64_t a1, void *a2, uint64_t a3)
{
  v82 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = CMSMUtility_CopyNonNullCurrentlyActiveCategory();
  v8 = CMSMUtility_CopyNonNullCurrentlyActiveMode();
  v9 = CMSMUtility_CopyCurrentAllowedPortTypes();
  v10 = [a2 prefersBluetoothHighQualityContentCapture];
  ConnectionTypeForPort = vaeGetConnectionTypeForPort(a1);
  PortTypeFromPortID = vaeGetPortTypeFromPortID(a1);
  v79 = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioInputContextUUID(&v79);
  v72 = a3;
  v12 = FigCFEqual();
  v73 = ConnectionTypeForPort;
  if (v9 || MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled() && ([a2 prefersBluetoothHighQualityContentCapture] & 1) != 0)
  {
    VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v7);
    VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(v8);
    if (v12)
    {
      if (MX_FeatureFlags_IsSystemInputPickerEnabled())
      {
        if (a2)
        {
          v15 = [a2 activationContext];
        }

        else
        {
          v15 = 0;
        }

        v18 = VADCategoryFromFigCategoryName;
        v19 = VADModeFromFigModeName;
        v20 = v9;
        v21 = v10;
        v22 = 1;
LABEL_20:
        v23 = cmsmCopyActiveNonQuiesceablePortsForRouteConfigurationScopeAndDevice(v18, v19, v15, v20, v21, v22, 0x1F2893B50);
        goto LABEL_45;
      }

      if (a2)
      {
        v17 = [a2 activationContext];
      }

      else
      {
        v17 = 0;
      }

      v31 = VADCategoryFromFigCategoryName;
      v32 = VADModeFromFigModeName;
      v33 = v9;
      v34 = 1;
    }

    else
    {
      if (MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled() && !vaemIsPersistentRouteActive())
      {
        if (a2)
        {
          v15 = [a2 activationContext];
        }

        else
        {
          v15 = 0;
        }

        v18 = VADCategoryFromFigCategoryName;
        v19 = VADModeFromFigModeName;
        v20 = v9;
        v21 = v10;
        v22 = 0;
        goto LABEL_20;
      }

      if (a2)
      {
        v17 = [a2 activationContext];
      }

      else
      {
        v17 = 0;
      }

      v31 = VADCategoryFromFigCategoryName;
      v32 = VADModeFromFigModeName;
      v33 = v9;
      v34 = 0;
    }

    v23 = cmsmCopyActiveNonWirelessPortsListForRouteConfigurationScopeAndDevice(v31, v32, v17, v33, v34, 0x1F2893B50);
LABEL_45:
    v35 = v23;
    if ([v23 count])
    {
      v30 = [objc_msgSend(v35 "firstObject")];
    }

    else
    {
      v30 = 0;
    }

    v24 = 0;
    if (!v12)
    {
      goto LABEL_52;
    }

LABEL_49:
    if (!MX_FeatureFlags_IsSystemInputPickerEnabled())
    {
      goto LABEL_52;
    }

    if (dword_1EB75DE40)
    {
      v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (([a2 hasInput] & 1) == 0)
    {
      v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      PortRoutable = 4294954296;
      if (!v7)
      {
        goto LABEL_133;
      }

LABEL_132:
      CFRelease(v7);
      goto LABEL_133;
    }

    v49 = vaemSendUserPreferredInputPortInRouteConfigToVA(1);
    if (dword_1EB75DE40)
    {
      v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v49 | vaeTakeOwnershipForSelectedPortIfRequired(a1, v72))
    {
      PortRoutable = 0;
      goto LABEL_145;
    }

    if (v30 == a1 || v73 != 1885561449)
    {
      if (v73 == 1885544823 || vaeIsQuiesceableWiredPort(a1))
      {
        if (dword_1EB75DE40)
        {
          v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        PortRoutable = vaeMakePortRoutable(a1, 1, 1, v72);
LABEL_145:
        vaemUpdateSystemHasAudioInputDeviceState();
        if (!v7)
        {
          goto LABEL_133;
        }

        goto LABEL_132;
      }

      v53 = v72;
      if (dword_1EB75DE40)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v53 = v72;
      if (dword_1EB75DE40)
      {
LABEL_143:
        v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    PortRoutable = cmsmUnrouteAllInputRoutes(v7, v8, v9, v53, a2);
    goto LABEL_145;
  }

  if (a2)
  {
    v16 = [a2 activationContext];
  }

  else
  {
    v16 = 0;
  }

  v24 = cmsmCopyPickableRoutesForRouteConfiguration(v7, v8, v16, 0, v10);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v25 = [(__CFArray *)v24 countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (!v25)
  {
    v30 = 0;
    if (!v12)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  v26 = v25;
  cf = v7;
  v69 = v8;
  v27 = *v76;
  while (2)
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v76 != v27)
      {
        objc_enumerationMutation(v24);
      }

      v29 = *(*(&v75 + 1) + 8 * i);
      if ([objc_msgSend(v29 objectForKey:{@"PortNumber", v67, v68), "unsignedIntValue"}] == a1)
      {
        if ([objc_msgSend(v29 objectForKey:{@"RouteType", "isEqualToString:", @"Default"}])
        {
          v30 = a1;
        }

        else
        {
          v30 = 0;
        }

        goto LABEL_34;
      }
    }

    v26 = [(__CFArray *)v24 countByEnumeratingWithState:&v75 objects:v80 count:16];
    if (v26)
    {
      continue;
    }

    break;
  }

  v30 = 0;
LABEL_34:
  v9 = 0;
  v8 = v69;
  v7 = cf;
  if (v12)
  {
    goto LABEL_49;
  }

LABEL_52:
  if (v30 == a1 || v73 != 1885561449)
  {
    v38 = CMSMUtility_CopyMatchingSessions(0, CMSUtilityPredicate_IsActive, 0);
    v39 = v38;
    if ((!v38 || !CFArrayGetCount(v38)) && v9)
    {
      CFRelease(v9);
      v9 = 0;
    }

    if (v39)
    {
      CFRelease(v39);
    }

    v45 = cmsmCopyQuiesceableWiredPortsForRouteConfiguration(v7, v8, v9, 0);
    v46 = cmsmCopyWirelessPortsArrayForRouteConfiguration(v7, v8, v9, v10);
    IsOnenessEnabled = MX_FeatureFlags_IsOnenessEnabled();
    if (v73 != 1885544823 || IsOnenessEnabled && PortTypeFromPortID == 1885565807)
    {
      if (vaeIsQuiesceableWiredPort(a1))
      {
        if (dword_1EB75DE40)
        {
          v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [+[MXSessionManager setQuiesceableWiredPortPreference:v67], "setQuiesceableWiredPortPreference:autoRouteOnConnect:", a1, 1];
        PortRoutable = vaeMakePortRoutable(a1, 1, 1, v72);
        if (PortRoutable)
        {
          v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        if (v46 && CFArrayGetCount(v46))
        {
          PortRoutable = cmsmUnpickWirelessRoutes(v46, 0, 1, v72);
        }

        else
        {
          PortRoutable = 0;
        }

        if ([v45 count])
        {
          cmsmUnpickQuiesceableWiredPortsRoutes(v45, 1, v72, 1, v12 != 0);
        }
      }

      goto LABEL_126;
    }

    if (dword_1EB75DE40)
    {
      v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (a1)
    {
      *&inAddress.mSelector = 0x676C6F626F736163;
      inAddress.mElement = 0;
      v56 = v72;
      if (AudioObjectHasProperty(a1, &inAddress))
      {
        vaeTakeOwnershipForSelectedPortIfRequired(a1, v72);
        goto LABEL_108;
      }
    }

    else
    {
      v56 = v72;
    }

    PortRoutable = vaeMakePortRoutable(a1, 1, 1, v56);
    if (PortRoutable)
    {
LABEL_126:
      if ([objc_msgSend(a2 overridePortsList])
      {
        PortRoutable = MXCoreSessionSetProperty(a2, @"OverrideRoute");
      }

      if (!v46)
      {
LABEL_131:
        if (!v7)
        {
          goto LABEL_133;
        }

        goto LABEL_132;
      }

      v44 = v46;
LABEL_130:
      CFRelease(v44);
      goto LABEL_131;
    }

LABEL_108:
    v57 = *MEMORY[0x1E69626C0];
    if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1))
    {
      v58 = v45;
      v59 = FigRoutingManagerCopyActivatedCarPlayEndpoint(qword_1EB75E190);
      *&inAddress.mSelector = 0;
      if (v59)
      {
        v60 = v59;
        v70 = v8;
        FigEndpointCopyProperty(v59, *MEMORY[0x1E69622F0], *MEMORY[0x1E695E480], &inAddress);
        v61 = *MEMORY[0x1E6962698];
        if (FigCFEqual())
        {
          v62 = dword_1EB75E168 == 0;
        }

        else
        {
          v62 = 1;
        }

        v63 = v62;
        if (*&inAddress.mSelector)
        {
          CFRelease(*&inAddress.mSelector);
          *&inAddress.mSelector = 0;
        }

        CFRelease(v60);
        if (v63)
        {
          PortRoutable = 0;
        }

        else
        {
          PortRoutable = vaeMakePortRoutable(dword_1EB75E168, 0, 1, v56);
        }

        v8 = v70;
      }

      else
      {
        PortRoutable = 0;
      }

      v45 = v58;
    }

    else
    {
      PortRoutable = 0;
    }

    goto LABEL_126;
  }

  if (a2)
  {
    v40 = vaeGetPortTypeFromPortID(a1);
    v41 = CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(v40);
    if (v41)
    {
      v42 = v41;
      PortRoutable = MXCoreSessionSetProperty(a2, @"OverrideRoute");
      v44 = v42;
      goto LABEL_130;
    }
  }

  PortRoutable = 0;
  if (v7)
  {
    goto LABEL_132;
  }

LABEL_133:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  v64 = *MEMORY[0x1E69E9840];
  return PortRoutable;
}

BOOL vaeTakeOwnershipForSelectedPortIfRequired(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (vaeGetConnectionTypeForPort(a1) != 1885544823)
  {
    goto LABEL_8;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  *&inAddress.mSelector = 0x676C6F626F736163;
  inAddress.mElement = 0;
  if (!AudioObjectHasProperty(a1, &inAddress))
  {
    goto LABEL_8;
  }

  if (vaeRequestOwnershipOnBTPort(a1))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  ArrayFromPortIDAndPartners = CMSMVAUtility_CreateArrayFromPortIDAndPartners(a1);
  ArrayOfPortsRoutable = vaemMakeArrayOfPortsRoutable(ArrayFromPortIDAndPartners, 1, 1u, a2, 0);
  if (ArrayOfPortsRoutable || dword_1EB75DE40)
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = ArrayOfPortsRoutable == 0;

LABEL_9:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CMSM_IDSServer_StartAutomaticOwnershipTransferToPhoneTimer()
{
  result = CMSMDeviceState_ItsAniPhone();
  if (result)
  {
    result = CMSM_IDSConnection_IsNearbyPairedDevicePresentAndConnected();
    if (result)
    {
      result = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
      if (!result)
      {
        CMSM_IDSServer_CancelAutomaticOwnershipTransferToPhoneTimer();
        v1 = MXGetSerialQueue();
        result = MXDispatchUtilityCreateOneShotTimer(15.0, "CMSM_IDSServer_StartAutomaticOwnershipTransferToPhoneTimer", "CMSessionManager_IDSServer.m", 460, 0, 0, v1, &__block_literal_global_45, 0, 0);
        sAutomaticOwnershipTransferToPhoneTimer = result;
      }
    }
  }

  return result;
}

void CMSM_IDSServer_CancelAutomaticOwnershipTransferToPhoneTimer()
{
  if (sAutomaticOwnershipTransferToPhoneTimer)
  {
    dispatch_source_cancel(sAutomaticOwnershipTransferToPhoneTimer);
    if (sAutomaticOwnershipTransferToPhoneTimer)
    {
      dispatch_release(sAutomaticOwnershipTransferToPhoneTimer);
      sAutomaticOwnershipTransferToPhoneTimer = 0;
    }
  }
}

void CMSM_IDSServer_Initialize()
{
  if (!gIDSServer)
  {
    gIDSServer = objc_alloc_init(CMSM_IDSServer);
  }

  sAutomaticOwnershipTransferToPhoneTimer = 0;
}

uint64_t cmsm_IDSServer_ProcessBTDeviceConnectionStatusChangedMessage(const __CFDictionary *a1)
{
  v1 = CFDictionaryGetValue(a1, kMXSession_IDSMessage_BTDeviceIsConnectedKey) == *MEMORY[0x1E695E4D0];

  return CMSM_IDSConnection_UpdateSharedAudioRouteIsConnectedToRemote(v1);
}

void cmsm_IDSServer_ProcessRemotePlayingInfoQueryMessage()
{
  v0 = CMSMUtility_CopyPlayingSessionsInfo();
  CMSM_IDSClient_ReplyToRemote_PlayingInfo(v0);
  if (v0)
  {

    CFRelease(v0);
  }
}

void cmsm_IDSServer_ProcessRemotePlayingInfoReplyMessage(const __CFDictionary *a1)
{
  CMSM_IDSConnection_StopWaitForRemoteToReplyWithInitialPlayingInfoTimer();
  Value = CFDictionaryGetValue(a1, kMXSession_IDSMessage_AllPlayingSessionsKey);
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  v4 = MXGetSerialQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __cmsm_IDSServer_ProcessRemotePlayingInfoReplyMessage_block_invoke;
  v7[3] = &__block_descriptor_40_e5_v8__0l;
  v7[4] = v3;
  MXDispatchAsync("cmsm_IDSServer_ProcessRemotePlayingInfoReplyMessage", "CMSessionManager_IDSServer.m", 140, 0, 0, v4, v7);
  v5 = CFDictionaryGetValue(a1, kMXSession_IDSMessage_CurrentRouteIsSharedKey);
  CMSM_IDSConnection_UpdateRemoteIsUsingSharedAudioRoute(v5 == *MEMORY[0x1E695E4D0]);
  CMSM_IDSConnection_UpdateRemoteRepliedWithInitialPlayingInfo(1);
  CMSM_IDSConnection_ResetWaitingForGizmoPlayingInfo();
  v6 = CFDictionaryGetValue(a1, kMXSession_IDSMessage_CurrentRouteUIDKey);
  CMSM_IDSConnection_UpdateRemoteCurrentRouteUID(v6);
  if (v5 == *MEMORY[0x1E695E4C0] || !v3 && CMSMDeviceState_ItsAniPhone())
  {
    CMSM_IDSConnection_RouteToSharedAudioRouteUponReceivingOwnership();
  }
}

void cmsm_IDSServer_ProcessLocalIsPlayingStartMessage(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, kMXSession_IDSMessage_PlayingSessionKey);
  if (Value)
  {
    v3 = Value;
    v4 = CFDictionaryGetValue(Value, @"CMSessionID");
    RemotePlayingInfo = CMSM_IDSConnection_GetRemotePlayingInfo();
    if (RemotePlayingInfo && (v6 = RemotePlayingInfo, CFArrayGetCount(RemotePlayingInfo) >= 1))
    {
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
        if (ValueAtIndex)
        {
          v9 = CFDictionaryGetValue(ValueAtIndex, @"CMSessionID");
          if (CFNumberCompare(v4, v9, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }

        if (++v7 >= CFArrayGetCount(v6))
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      CMSM_IDSConnection_AddRemotePlayingInfo(v3);
    }

    v10 = CFDictionaryGetValue(a1, kMXSession_IDSMessage_CurrentRouteIsSharedKey) == *MEMORY[0x1E695E4D0];
    CMSM_IDSConnection_UpdateRemoteIsUsingSharedAudioRoute(v10);
    v11 = CFDictionaryGetValue(a1, kMXSession_IDSMessage_CurrentRouteUIDKey);
    CMSM_IDSConnection_UpdateRemoteCurrentRouteUID(v11);
  }

  if (CMSMDeviceState_ItsAniPhone())
  {

    CMSM_IDSServer_CancelAutomaticOwnershipTransferToPhoneTimer();
  }
}

uint64_t cmsm_IDSServer_ProcessLocalIsPlayingDoneMessage(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, kMXSession_IDSMessage_PlayingSessionKey);
  if (Value)
  {
    v2 = CFDictionaryGetValue(Value, @"CMSessionID");
    RemotePlayingInfo = CMSM_IDSConnection_GetRemotePlayingInfo();
    if (RemotePlayingInfo)
    {
      v4 = RemotePlayingInfo;
      if (CFArrayGetCount(RemotePlayingInfo) >= 1)
      {
        v5 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
          if (ValueAtIndex)
          {
            v7 = CFDictionaryGetValue(ValueAtIndex, @"CMSessionID");
            if (CFNumberCompare(v2, v7, 0) == kCFCompareEqualTo)
            {
              break;
            }
          }

          if (++v5 >= CFArrayGetCount(v4))
          {
            goto LABEL_10;
          }
        }

        CMSM_IDSConnection_RemoveRemotePlayingInfo(v5);
      }
    }
  }

LABEL_10:

  return CMSM_IDSServer_StartAutomaticOwnershipTransferToPhoneTimer();
}

uint64_t cmsm_IDSServer_ProcessLocalIsDoingEndInterruption(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, kMXSession_IDSMessage_LocalEndInterruptionStatusKey);

  return CMSM_IDSConnection_DeactivateIDSMXCoreSession(Value);
}

void cmsm_IDSServer_ProcessUpdateSharedAudioRouteMacAddress(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, kMXSession_IDSMessage_SharedAudioRouteMacAddress);
  v3 = CFDictionaryGetValue(a1, kMXSession_IDSMessage_ClearSharedAudioRoute);
  if (Value)
  {
    CFRetain(Value);
  }

  v4 = MXGetSerialQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __cmsm_IDSServer_ProcessUpdateSharedAudioRouteMacAddress_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = Value;
  v5[5] = v3;
  MXDispatchAsync("cmsm_IDSServer_ProcessUpdateSharedAudioRouteMacAddress", "CMSessionManager_IDSServer.m", 530, 0, 0, v4, v5);
}

void sub_1B18F5A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FVSynthEngine_SendVibeStoppedNotification(uint64_t a1, void *a2)
{
  values = a2;
  v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigVibratorNotificationKey_VibeStopped_Context, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = *(a1 + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __FVSynthEngine_SendVibeStoppedNotification_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = a1;
  v5[5] = v3;
  MXDispatchAsync("FVSynthEngine_SendVibeStoppedNotification", "FigVibrator_VibeSynthEngine.m", 135, 0, 0, v4, v5);
}

double HDMILatencyMgr_GetHDMILatencyForCurrentRefreshRate(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = llround(*(a1 + 16));
  v4 = *a1;
  if (a2)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 41);
    if (v3 - 24 <= 6)
    {
      if (*(a1 + 41))
      {
        v7 = v5 == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = @"MeasuredHDMILatency_MeasuredAtmosAudioHDMILatency24Hz";
      v9 = @"MeasuredHDMILatency_MeasuredAudioHDMILatency24Hz";
LABEL_26:
      if (v7)
      {
        v15 = v9;
      }

      else
      {
        v15 = v8;
      }

      ValueDouble = MXCFDictionaryGetValueDouble(v4, v15);
      goto LABEL_30;
    }

    ValueDouble = 0.0;
    if (v3 - 50 <= 0xA)
    {
      if (*(a1 + 41))
      {
        v7 = v5 == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = @"MeasuredHDMILatency_MeasuredAtmosAudioHDMILatency60Hz";
      v9 = @"MeasuredHDMILatency_MeasuredAudioHDMILatency60Hz";
      goto LABEL_26;
    }
  }

  else
  {
    v10 = *(a1 + 8);
    v11 = *(a1 + 40);
    v12 = *(a1 + 41);
    if (v3 - 24 > 6)
    {
      ValueDouble = 0.0;
      if (v3 - 61 < 0xFFFFFFF5 || v4 == 0)
      {
        goto LABEL_30;
      }

      FigCFDictionarySetDouble();
      if (v12)
      {
        v7 = v11 == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = @"MeasuredHDMILatency_MeasureAtmosVideoHDMILatency60Hz";
      v9 = @"MeasuredHDMILatency_MeasuredVideoHDMILatency60Hz";
      goto LABEL_26;
    }

    if (v4)
    {
      FigCFDictionarySetDouble();
      if (v12)
      {
        v7 = v11 == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = @"MeasuredHDMILatency_MeasureAtmosVideoHDMILatency24Hz";
      v9 = @"MeasuredHDMILatency_MeasuredVideoHDMILatency24Hz";
      goto LABEL_26;
    }

    ValueDouble = 0.0;
  }

LABEL_30:
  if (dword_1EB75E238)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v17 = *MEMORY[0x1E69E9840];
  return ValueDouble;
}

const __CFDictionary *copyMeasuredHDMILatencyFromDisk()
{
  v0 = CFPreferencesCopyValue(@"measuredHDMILatency", @"com.apple.mediaexperience", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v1 = v0;
  if (v0 && (!CFDictionaryContainsKey(v0, @"MeasuredHDMILatency_MeasuredAudioHDMILatency24Hz") || !CFDictionaryContainsKey(v1, @"MeasuredHDMILatency_MeasuredAudioHDMILatency60Hz") || !CFDictionaryContainsKey(v1, @"MeasuredHDMILatency_MeasuredVideoHDMILatency24Hz") || !CFDictionaryContainsKey(v1, @"MeasuredHDMILatency_MeasuredVideoHDMILatency60Hz")))
  {
    CFRelease(v1);
    return 0;
  }

  return v1;
}

uint64_t updateMeasuredHDMILatencyOnCoreAnimationAndHAL()
{
  v3 = xmmword_1ED6D2F50;
  v4 = *&qword_1ED6D2F60;
  v5 = xmmword_1ED6D2F70;
  HDMILatencyForCurrentRefreshRate = HDMILatencyMgr_GetHDMILatencyForCurrentRefreshRate(&v3, 0);
  FigCFDictionarySetDouble();
  if (!DisplayModeRefreshRateObserver_UpdateHDMILatencyOnCoreAnimation())
  {
    *&xmmword_1ED6D2F70 = HDMILatencyForCurrentRefreshRate;
  }

  v3 = xmmword_1ED6D2F50;
  v4 = *&qword_1ED6D2F60;
  v5 = xmmword_1ED6D2F70;
  v1 = HDMILatencyMgr_GetHDMILatencyForCurrentRefreshRate(&v3, 1);
  FigCFDictionarySetDouble();
  result = vaemSetHDMILatencyOverride((v1 * 1000000.0));
  if (!result)
  {
    qword_1ED6D2F68 = *&v1;
  }

  return result;
}

uint64_t writeMeasuredHDMILatencyToDisk(const void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EB75E238)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  MXCFPreferencesSetAndSynchronizeUserPreference(@"measuredHDMILatency", a1);
  MXCFPreferencesSetAndSynchronizeUserPreference(@"measuredHDMILatencyForCurrentRefreshRate", *(&xmmword_1ED6D2F50 + 1));
  result = notify_post("com.apple.mediaexperience.measuredhdmilatencychanged");
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HDMILatencyMgr_CopyMeasuredHDMILatency()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  if (_MergedGlobals_8)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __HDMILatencyMgr_CopyMeasuredHDMILatency_block_invoke;
    v2[3] = &unk_1E7AE73A0;
    v2[4] = &v3;
    MXDispatchSync("HDMILatencyMgr_CopyMeasuredHDMILatency", "HDMILatencyManager.m", 431, 0, 0, _MergedGlobals_8, v2);
    v0 = v4[3];
  }

  else
  {
    v0 = 0;
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B18F8984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __FigRoutingContextRemoteCreateVideoContext_block_invoke(uint64_t a1)
{
  key = 0;
  v2 = **(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = **(a1 + 32);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, @"contextUUID", *MEMORY[0x1E695E480], &key);
    if (key)
    {
      v6 = **(a1 + 32);
      v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (v7)
      {
        v8 = v7;
        CFDictionarySetValue(gFigRoutingContextRemoteObject_0, key, v7);
        CFRelease(v8);
      }

      v9 = *(DerivedStorage + 72);
      v10 = key;
      *(DerivedStorage + 72) = key;
      if (v10)
      {
        CFRetain(v10);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (key)
      {
        CFRelease(key);
      }
    }
  }
}

uint64_t FigRoutingContextRemoteCopyAllAudioContexts(CFArrayRef *a1)
{
  if (!a1)
  {
    return 4294955276;
  }

  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v4 = routingContextRemoteXPC_EnsureClientEstablished();
  if (v4 || (v4 = FigXPCCreateBasicMessage(), v4) || (v4 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v4))
  {
    v5 = v4;
    if (!Mutable)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = FigXPCMessageCopyCFArray();
    if (!v5)
    {
      v5 = 0;
      *a1 = CFArrayCreateCopy(v2, Mutable);
    }

    if (!Mutable)
    {
      goto LABEL_9;
    }
  }

  CFRelease(Mutable);
LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  return v5;
}

void remoteXPCRoutingContext_DeadConnectionCallback(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 72);
  *DerivedStorage = 1;
  v4 = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  LODWORD(context) = -16722;
  v5 = *(v4 + 16);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __remoteXPCRoutingContext_runAllCallbacks_block_invoke;
  v14 = &unk_1E7AE7168;
  v15 = &v22;
  v16 = v4;
  MXDispatchSync("remoteXPCRoutingContext_runAllCallbacks", "FigRoutingContextRemoteXPC.m", 246, 0, 0, v5, &v11);
  CFDictionaryApplyFunction(v23[3], remoteXPCRoutingContext_runOneCallback, &context);
  v6 = v23[3];
  if (v6)
  {
    CFRelease(v6);
  }

  _Block_object_dispose(&v22, 8);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  context = 0;
  p_context = &context;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = CMBaseObjectGetDerivedStorage();
  v8 = *(v7 + 40);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __remoteXPCRoutingContext_notifyAboutAllCommChannelsClosures_block_invoke;
  v14 = &unk_1E7AEB4F8;
  v16 = &context;
  v17 = v7;
  v15 = &v22;
  MXDispatchSync("remoteXPCRoutingContext_notifyAboutAllCommChannelsClosures", "FigRoutingContextRemoteXPC.m", 157, 0, 0, v8, &v11);
  v9 = v23[3];
  v26.length = CFArrayGetCount(v9);
  v26.location = 0;
  CFArrayApplyFunction(v9, v26, remoteXPCRoutingContext_notifyAboutCommChannelClosure, a1);
  CFDictionaryApplyFunction(p_context[3], remoteXPCRoutingContext_notifyAboutCommChannelClosureWithDeviceID, a1);
  CFRelease(v23[3]);
  CFRelease(p_context[3]);
  _Block_object_dispose(&context, 8);
  _Block_object_dispose(&v22, 8);
  if (v3)
  {
    CFRetain(v3);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __remoteXPCRoutingContext_DeadConnectionCallback_block_invoke;
    v10[3] = &__block_descriptor_40_e5_v8__0l;
    v10[4] = v3;
    MXDispatchAsync("remoteXPCRoutingContext_DeadConnectionCallback", "FigRoutingContextRemoteXPC.m", 535, 0, 0, gFigRoutingContextRemoteObject_1, v10);
  }
}

uint64_t remoteXPCFigRoutingContext_HandleClientMessage()
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

void sub_1B18F92D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __remoteXPCRoutingContext_runAllCallbacks_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(*(a1 + 40) + 24));
  v2 = *(*(a1 + 40) + 24);

  CFDictionaryRemoveAllValues(v2);
}

void remoteXPCRoutingContext_runOneCallback(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  if (!a2)
  {
    return;
  }

  v4 = *a2;
  if (*a2 <= 1919316835)
  {
    if (v4 != 1635021668)
    {
      if (v4 == 1668246893)
      {
LABEL_10:
        v6 = a2[2];
        if (v6)
        {
          v7 = a2[1];
          v8 = *a3;
          v9 = a2[3];
          v10 = a2[4];

          v6(v7, v9, v8, v10);
        }

        return;
      }

      v5 = 1684108385;
LABEL_9:
      if (v4 != v5)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else if (v4 > 1936024690)
  {
    if (v4 != 1936024691 && v4 != 1936026724)
    {
      return;
    }
  }

  else if (v4 != 1919316836)
  {
    v5 = 1935959652;
    goto LABEL_9;
  }

  if (a2[2])
  {
    v12 = [[MXRoutingContextModificationResult alloc] initWithRouteConfigUpdatedReason:@"configUpdateReasonEndedFailed" modificationMetrics:0 previousRouteDescriptors:0 currentRouteDescriptors:0];
    (a2[2])(a2[3], v12);
  }
}

void __remoteXPCRoutingContext_notifyAboutAllCommChannelsClosures_block_invoke(void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  *(*(a1[4] + 8) + 24) = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(a1[6] + 56));
  CFArrayRemoveAllValues(*(a1[6] + 56));
  *(*(a1[5] + 8) + 24) = CFDictionaryCreateCopy(v2, *(a1[6] + 64));
  v3 = *(a1[6] + 64);

  CFDictionaryRemoveAllValues(v3);
}

void remoteXPCRoutingContext_notifyAboutCommChannelClosure(void *a1, uint64_t a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = @"commChannelUUID";
  values = a1;
  v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    CFRetain(v3);
  }

  v5 = *(DerivedStorage + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __remoteXPCRoutingContext_notifyAboutCommChannelClosure_block_invoke;
  v7[3] = &__block_descriptor_48_e5_v8__0l;
  v7[4] = a2;
  v7[5] = v3;
  MXDispatchAsync("remoteXPCRoutingContext_notifyAboutCommChannelClosure", "FigRoutingContextRemoteXPC.m", 125, 0, 0, v5, v7);
  CFRelease(v3);
  v6 = *MEMORY[0x1E69E9840];
}

void remoteXPCRoutingContext_notifyAboutCommChannelClosureWithDeviceID(void *a1, void *a2, uint64_t a3)
{
  keys[2] = *MEMORY[0x1E69E9840];
  keys[0] = @"deviceID";
  keys[1] = @"commChannelUUID";
  values[0] = a2;
  values[1] = a1;
  v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v4)
  {
    CFRetain(v4);
  }

  v6 = *(DerivedStorage + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __remoteXPCRoutingContext_notifyAboutCommChannelClosureWithDeviceID_block_invoke;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a3;
  v8[5] = v4;
  MXDispatchAsync("remoteXPCRoutingContext_notifyAboutCommChannelClosureWithDeviceID", "FigRoutingContextRemoteXPC.m", 144, 0, 0, v6, v8);
  if (v4)
  {
    CFRelease(v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __remoteXPCRoutingContext_notifyAboutCommChannelClosure_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  CMNotificationCenterPostNotification();
  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

void __remoteXPCRoutingContext_notifyAboutCommChannelClosureWithDeviceID_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  CMNotificationCenterPostNotification();
  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

void __remoteXPCRoutingContext_handleCompletionCallback_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(*(a1 + 40) + 24), *(a1 + 48));
  if (Value)
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *Value;
    v5 = Value[1];
    *(v3 + 64) = *(Value + 4);
    *(v3 + 32) = v4;
    *(v3 + 48) = v5;
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    if (v7)
    {
      CFRetain(v7);
      v6 = *(*(a1 + 32) + 8);
    }

    v8 = *(v6 + 56);
    if (v8)
    {
      CFRetain(v8);
    }
  }

  v9 = *(a1 + 48);
  v10 = *(*(a1 + 40) + 24);

  CFDictionaryRemoveValue(v10, v9);
}

uint64_t remoteXPCRoutingContext_cloneCompletionCallback(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1B2733FE0](a1, 40, 0x10E004005DA489DLL, 0);
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 8);
  if (v6)
  {
    CFRetain(v6);
  }

  v7 = *(v3 + 24);
  if (v7)
  {
    CFRetain(v7);
  }

  return v3;
}

void remoteXPCRoutingContext_freeCompletionCallback(CFAllocatorRef allocator, void *ptr)
{
  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[3];
  if (v5)
  {
    CFRelease(v5);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t routingContextRemoteXPC_SendData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  if (!a2)
  {
    v13 = 738;
LABEL_13:
    routingContextRemoteXPC_SendData_cold_1(v13, &v15);
    v10 = v15;
    goto LABEL_15;
  }

  if (!a3)
  {
    v13 = 739;
    goto LABEL_13;
  }

  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v14);
  if (ObjectID)
  {
    v10 = ObjectID;
    goto LABEL_15;
  }

  v10 = FigXPCCreateBasicMessage();
  if (v10)
  {
LABEL_15:
    FigXPCRelease();
    return v10;
  }

  FigXPCMessageSetCFString();
  FigXPCMessageSetCFData();
  if (a4)
  {
    v11 = malloc_type_malloc(0x28uLL, 0x10E004005DA489DuLL);
    v11[2] = a4;
    v11[3] = a2;
    v11[4] = a5;
    *v11 = 1684108385;
    v11[1] = a1;
  }

  else
  {
    v11 = 0;
  }

  v10 = remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback(a1, 0, v11);
  FigXPCRelease();
  if (v11)
  {
    free(v11);
  }

  return v10;
}

uint64_t routingContextRemoteXPC_CreateCommChannelForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v20 = 0;
  if (*(DerivedStorage + 80) != 9)
  {
    return 4294955271;
  }

  if (a2)
  {
    v8 = DerivedStorage;
    v17 = 0;
    v18 = 0;
    ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v17);
    if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (FigXPCMessageSetCFDictionary(), FigXPCMessageSetCFString(), ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(), ObjectID) || (ObjectID = FigXPCMessageCopyCFString(), ObjectID))
    {
      v12 = ObjectID;
    }

    else
    {
      v10 = v18;
      if (v18)
      {
        v11 = *(v8 + 40);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __routingContextRemoteXPC_CreateCommChannelForDeviceID_block_invoke;
        v16[3] = &__block_descriptor_56_e5_v8__0l;
        v16[4] = v8;
        v16[5] = v18;
        v16[6] = a2;
        MXDispatchSync("routingContextRemoteXPC_CreateCommChannelForDeviceID", "FigRoutingContextRemoteXPC.m", 710, 0, 0, v11, v16);
        v10 = v18;
      }

      v12 = 0;
      *a4 = v10;
    }

    v13 = v20;
    if (v20)
    {
      v20 = 0;
      xpc_release(v13);
    }
  }

  else
  {
    routingContextRemoteXPC_CreateCommChannelForDeviceID_cold_1(&v18);
    v12 = v18;
  }

  v14 = v19;
  if (v19)
  {
    v19 = 0;
    xpc_release(v14);
  }

  return v12;
}

uint64_t routingContextRemoteXPC_SendDataForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  object = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 80) != 9)
  {
    a4 = 0;
    v13 = 4294955271;
    goto LABEL_13;
  }

  if (!a3)
  {
    routingContextRemoteXPC_SendDataForDeviceID_cold_3(&v16);
LABEL_17:
    a4 = 0;
    goto LABEL_18;
  }

  if (!a4)
  {
    routingContextRemoteXPC_SendDataForDeviceID_cold_2(&v16);
LABEL_18:
    v13 = v16;
    goto LABEL_13;
  }

  if (!a2)
  {
    routingContextRemoteXPC_SendDataForDeviceID_cold_1(&v16);
    goto LABEL_17;
  }

  v16 = 0;
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v16);
  if (ObjectID)
  {
    v13 = ObjectID;
    a4 = 0;
    goto LABEL_13;
  }

  v13 = FigXPCCreateBasicMessage();
  v14 = object;
  if (v13)
  {
    a4 = 0;
    if (!object)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  FigXPCMessageSetCFString();
  FigXPCMessageSetCFString();
  FigXPCMessageSetCFData();
  if (a5)
  {
    a4 = malloc_type_malloc(0x28uLL, 0x10E004005DA489DuLL);
    a4[2] = a5;
    a4[3] = a3;
    a4[4] = a6;
    *a4 = 1935959652;
    a4[1] = a1;
  }

  else
  {
    a4 = 0;
  }

  v13 = remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback(a1, object, a4);
  v14 = object;
  if (object)
  {
LABEL_12:
    object = 0;
    xpc_release(v14);
  }

LABEL_13:
  free(a4);
  return v13;
}

uint64_t routingContextRemoteXPC_CloseCommChannelForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  if (*(DerivedStorage + 80) != 9)
  {
    return 4294955271;
  }

  if (!a3)
  {
    routingContextRemoteXPC_CloseCommChannelForDeviceID_cold_2(&v14);
    return v14;
  }

  if (!a2)
  {
    routingContextRemoteXPC_CloseCommChannelForDeviceID_cold_1(&v14);
    return v14;
  }

  v7 = DerivedStorage;
  v14 = 0;
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v14);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v9 = ObjectID;
  }

  else
  {
    FigXPCMessageSetCFString();
    FigXPCMessageSetCFString();
    v9 = FigXPCRemoteClientSendSyncMessage();
    if (!v9)
    {
      v10 = *(v7 + 40);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __routingContextRemoteXPC_CloseCommChannelForDeviceID_block_invoke;
      v13[3] = &__block_descriptor_48_e5_v8__0l;
      v13[4] = v7;
      v13[5] = a3;
      MXDispatchSync("routingContextRemoteXPC_CloseCommChannelForDeviceID", "FigRoutingContextRemoteXPC.m", 879, 0, 0, v10, v13);
    }
  }

  v11 = v15;
  if (v15)
  {
    v15 = 0;
    xpc_release(v11);
  }

  return v9;
}

uint64_t routingContextRemoteXPC_AddToSelectedRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v12);
  if (ObjectID)
  {
    v9 = ObjectID;
    goto LABEL_10;
  }

  v9 = FigXPCCreateBasicMessage();
  if (v9)
  {
LABEL_10:
    FigXPCRelease();
    return v9;
  }

  FigXPCMessageSetCFDictionary();
  FigXPCMessageSetCFDictionary();
  if (a4)
  {
    v10 = malloc_type_malloc(0x28uLL, 0x10E004005DA489DuLL);
    v10[1] = a1;
    v10[2] = a4;
    v10[4] = a5;
    *v10 = 1635021668;
  }

  else
  {
    v10 = 0;
  }

  v9 = remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback(a1, 0, v10);
  FigXPCRelease();
  if (v10)
  {
    free(v10);
  }

  return v9;
}

uint64_t routingContextRemoteXPC_RemoveFromSelectedRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v12);
  if (ObjectID)
  {
    v9 = ObjectID;
    goto LABEL_10;
  }

  v9 = FigXPCCreateBasicMessage();
  if (v9)
  {
LABEL_10:
    FigXPCRelease();
    return v9;
  }

  FigXPCMessageSetCFDictionary();
  FigXPCMessageSetCFDictionary();
  if (a4)
  {
    v10 = malloc_type_malloc(0x28uLL, 0x10E004005DA489DuLL);
    v10[1] = a1;
    v10[2] = a4;
    v10[4] = a5;
    *v10 = 1919316836;
  }

  else
  {
    v10 = 0;
  }

  v9 = remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback(a1, 0, v10);
  FigXPCRelease();
  if (v10)
  {
    free(v10);
  }

  return v9;
}

uint64_t routingContextRemoteXPC_SelectRouteDescriptorWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v12);
  if (ObjectID)
  {
    v9 = ObjectID;
    goto LABEL_10;
  }

  v9 = FigXPCCreateBasicMessage();
  if (v9)
  {
LABEL_10:
    FigXPCRelease();
    return v9;
  }

  FigXPCMessageSetCFDictionary();
  FigXPCMessageSetCFDictionary();
  if (a4)
  {
    v10 = malloc_type_malloc(0x28uLL, 0x10E004005DA489DuLL);
    v10[1] = a1;
    v10[2] = a4;
    v10[4] = a5;
    *v10 = 1936026724;
  }

  else
  {
    v10 = 0;
  }

  v9 = remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback(a1, 0, v10);
  FigXPCRelease();
  if (v10)
  {
    free(v10);
  }

  return v9;
}

uint64_t routingContextRemoteXPC_SelectRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v12);
  if (ObjectID)
  {
    v9 = ObjectID;
    goto LABEL_10;
  }

  v9 = FigXPCCreateBasicMessage();
  if (v9)
  {
LABEL_10:
    FigXPCRelease();
    return v9;
  }

  FigXPCMessageSetCFArray();
  FigXPCMessageSetCFDictionary();
  if (a4)
  {
    v10 = malloc_type_malloc(0x28uLL, 0x10E004005DA489DuLL);
    v10[1] = a1;
    v10[2] = a4;
    v10[4] = a5;
    *v10 = 1936024691;
  }

  else
  {
    v10 = 0;
  }

  v9 = remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback(a1, 0, v10);
  FigXPCRelease();
  if (v10)
  {
    free(v10);
  }

  return v9;
}

uint64_t remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback(uint64_t a1, void *a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (a3)
  {
    v8 = *(DerivedStorage + 16);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke;
    v18[3] = &unk_1E7AE7A48;
    v18[4] = &v23;
    v18[5] = a1;
    v18[6] = DerivedStorage;
    v18[7] = a3;
    MXDispatchSync("remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback", "FigRoutingContextRemoteXPC.m", 387, 0, 0, v8, v18);
    xpc_dictionary_set_uint64(a2, kFigRoutingContextXPCMsgParam_CompletionID, v24[3]);
  }

  v9 = FigXPCRemoteClientSendSyncMessage();
  v10 = v9;
  if (a3)
  {
    if (v9)
    {
      v11 = *(v7 + 16);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke_2;
      v17[3] = &unk_1E7AE7A20;
      v17[6] = v7;
      v17[7] = a3;
      v17[4] = &v23;
      v17[5] = &v19;
      MXDispatchSync("remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback", "FigRoutingContextRemoteXPC.m", 403, 0, 0, v11, v17);
      if (*(v20 + 24))
      {
        v16 = v10;
        remoteXPCRoutingContext_runOneCallback(v12, a3, &v16);
        v13 = a3[1];
        if (v13)
        {
          CFRelease(v13);
        }

        v14 = a3[3];
        if (v14)
        {
          CFRelease(v14);
        }
      }
    }
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v10;
}

void sub_1B18FA788(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void __remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke(void *a1)
{
  v2 = a1[5];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 32);
  v5 = 1;
  if ((v4 + 1) > 1)
  {
    v5 = v4 + 1;
  }

  *(DerivedStorage + 32) = v5;
  *(*(a1[4] + 8) + 24) = v4;
  v6 = a1[7];
  v7 = *(a1[6] + 24);
  v8 = *(*(a1[4] + 8) + 24);

  CFDictionarySetValue(v7, v8, v6);
}

void __remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke_2(void *a1)
{
  v2 = *(a1[6] + 24);
  if (v2)
  {
    if (CFDictionaryGetValueIfPresent(v2, *(*(a1[4] + 8) + 24), 0))
    {
      v3 = a1[7];
      v4 = *(v3 + 8);
      if (v4)
      {
        CFRetain(v4);
        v3 = a1[7];
      }

      v5 = *(v3 + 24);
      if (v5)
      {
        CFRetain(v5);
      }

      *(*(a1[5] + 8) + 24) = 1;
    }

    v6 = *(a1[6] + 24);
    v7 = *(*(a1[4] + 8) + 24);

    CFDictionaryRemoveValue(v6, v7);
  }
}

uint64_t FigRoutingContextResilientRemoteCreateAudioContext(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  v6 = routingContextResilientRemote_copyCreationOptionsEnsuringContextID(a1);
  if (a1)
  {
    CFRetain(a1);
  }

  if (v6)
  {
    CFRetain(v6);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigRoutingContextResilientRemoteCreateAudioContext_block_invoke;
  v10[3] = &unk_1E7AEB9C8;
  v10[4] = Current;
  v10[5] = a1;
  v10[6] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingContextResilientRemoteCreateAudioContext_block_invoke_2;
  v9[3] = &__block_descriptor_48_e5_v8__0l;
  v9[4] = a1;
  v9[5] = v6;
  v7 = FigRoutingContextResilientRemoteCreate(v10, v9, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

__CFDictionary *routingContextResilientRemote_copyCreationOptionsEnsuringContextID(const __CFAllocator *a1)
{
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!CFDictionaryContainsKey(MutableCopy, @"contextUUID"))
  {
    v3 = CFUUIDCreate(a1);
    v4 = CFUUIDCreateString(a1, v3);
    CFDictionarySetValue(MutableCopy, @"contextUUID", v4);
    if (v3)
    {
      CFRelease(v3);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return MutableCopy;
}

void __FigRoutingContextResilientRemoteCreateAudioContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCopyAllAudioContexts(uint64_t a1)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();

  return [(FigRemoteRoutingContextFactory *)Current copyAllAudioContexts:a1];
}

uint64_t FigRoutingContextResilientRemoteCreateVideoContext(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  v6 = routingContextResilientRemote_copyCreationOptionsEnsuringContextID(a1);
  if (a1)
  {
    CFRetain(a1);
  }

  if (v6)
  {
    CFRetain(v6);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigRoutingContextResilientRemoteCreateVideoContext_block_invoke;
  v10[3] = &unk_1E7AEB9C8;
  v10[4] = Current;
  v10[5] = a1;
  v10[6] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingContextResilientRemoteCreateVideoContext_block_invoke_2;
  v9[3] = &__block_descriptor_48_e5_v8__0l;
  v9[4] = a1;
  v9[5] = v6;
  v7 = FigRoutingContextResilientRemoteCreate(v10, v9, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

void __FigRoutingContextResilientRemoteCreateVideoContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCreatePerAppSecondDisplayContext(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  v6 = routingContextResilientRemote_copyCreationOptionsEnsuringContextID(a1);
  if (a1)
  {
    CFRetain(a1);
  }

  if (v6)
  {
    CFRetain(v6);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigRoutingContextResilientRemoteCreatePerAppSecondDisplayContext_block_invoke;
  v10[3] = &unk_1E7AEB9C8;
  v10[4] = Current;
  v10[5] = a1;
  v10[6] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingContextResilientRemoteCreatePerAppSecondDisplayContext_block_invoke_2;
  v9[3] = &__block_descriptor_48_e5_v8__0l;
  v9[4] = a1;
  v9[5] = v6;
  v7 = FigRoutingContextResilientRemoteCreate(v10, v9, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

void __FigRoutingContextResilientRemoteCreatePerAppSecondDisplayContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCopySystemAudioInputContext(const void *a1, const void *a2, void *a3)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingContextResilientRemoteCopySystemAudioInputContext_block_invoke;
  v9[3] = &unk_1E7AEB9C8;
  v9[4] = Current;
  v9[5] = a1;
  v9[6] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingContextResilientRemoteCopySystemAudioInputContext_block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  return FigRoutingContextResilientRemoteCreate(v9, v8, a3);
}

void __FigRoutingContextResilientRemoteCopySystemAudioInputContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCopySystemMirroringContext(const void *a1, const void *a2, void *a3)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingContextResilientRemoteCopySystemMirroringContext_block_invoke;
  v9[3] = &unk_1E7AEB9C8;
  v9[4] = Current;
  v9[5] = a1;
  v9[6] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingContextResilientRemoteCopySystemMirroringContext_block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  return FigRoutingContextResilientRemoteCreate(v9, v8, a3);
}

void __FigRoutingContextResilientRemoteCopySystemMirroringContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCopySidePlayContext(const void *a1, const void *a2, void *a3)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingContextResilientRemoteCopySidePlayContext_block_invoke;
  v9[3] = &unk_1E7AEB9C8;
  v9[4] = Current;
  v9[5] = a1;
  v9[6] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingContextResilientRemoteCopySidePlayContext_block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  return FigRoutingContextResilientRemoteCreate(v9, v8, a3);
}

void __FigRoutingContextResilientRemoteCopySidePlayContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCreateRemoteMusicControllerContext(const void *a1, const void *a2, void *a3)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingContextResilientRemoteCreateRemoteMusicControllerContext_block_invoke;
  v9[3] = &unk_1E7AEB9C8;
  v9[4] = Current;
  v9[5] = a1;
  v9[6] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingContextResilientRemoteCreateRemoteMusicControllerContext_block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  return FigRoutingContextResilientRemoteCreate(v9, v8, a3);
}

void __FigRoutingContextResilientRemoteCreateRemoteMusicControllerContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCopySystemRemotePoolContext(const void *a1, const void *a2, void *a3)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingContextResilientRemoteCopySystemRemotePoolContext_block_invoke;
  v9[3] = &unk_1E7AEB9C8;
  v9[4] = Current;
  v9[5] = a1;
  v9[6] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingContextResilientRemoteCopySystemRemotePoolContext_block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  return FigRoutingContextResilientRemoteCreate(v9, v8, a3);
}

void __FigRoutingContextResilientRemoteCopySystemRemotePoolContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCreateControlChannelOnlyContext(const void *a1, const void *a2, void *a3)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingContextResilientRemoteCreateControlChannelOnlyContext_block_invoke;
  v9[3] = &unk_1E7AEB9C8;
  v9[4] = Current;
  v9[5] = a1;
  v9[6] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingContextResilientRemoteCreateControlChannelOnlyContext_block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  return FigRoutingContextResilientRemoteCreate(v9, v8, a3);
}

void __FigRoutingContextResilientRemoteCreateControlChannelOnlyContext_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCopyDisplayMenuVideoContext(const void *a1, const void *a2, void *a3)
{
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingContextResilientRemoteCopyDisplayMenuVideoContext_block_invoke;
  v9[3] = &unk_1E7AEB9C8;
  v9[4] = Current;
  v9[5] = a1;
  v9[6] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingContextResilientRemoteCopyDisplayMenuVideoContext_block_invoke_2;
  v8[3] = &__block_descriptor_48_e5_v8__0l;
  v8[4] = a1;
  v8[5] = a2;
  return FigRoutingContextResilientRemoteCreate(v9, v8, a3);
}

void __FigRoutingContextResilientRemoteCopyDisplayMenuVideoContext_block_invoke_2(uint64_t a1)
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

uint64_t __FigRoutingContextResilientRemoteCopyContextForUUID_block_invoke(uint64_t a1, uint64_t a2)
{
  MutableCopy = CFDictionaryCreateMutableCopy(*(a1 + 40), 0, *(a1 + 48));
  CFDictionaryRemoveValue(MutableCopy, @"contextUUID");
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v5 > 4)
  {
    if (v5 > 11)
    {
      if (v5 == 12)
      {
        v8 = [v6 copySidePlayContextWithAllocator:v7 options:*(a1 + 48) context:a2];
        goto LABEL_20;
      }

      if (v5 == 13)
      {
        v8 = [v6 copySystemAudioInputContextWithAllocator:v7 options:MutableCopy context:a2];
        goto LABEL_20;
      }
    }

    else
    {
      if (v5 == 5)
      {
        v8 = [v6 createVideoContextWithAllocator:v7 options:*(a1 + 48) context:a2];
        goto LABEL_20;
      }

      if (v5 == 6)
      {
        v8 = [v6 createPerAppSecondDisplayContextWithAllocator:v7 options:*(a1 + 48) context:a2];
        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v8 = [v6 copySystemAudioContextWithAllocator:v7 options:MutableCopy context:a2];
      goto LABEL_20;
    }

    if (v5 == 2)
    {
      v8 = [v6 copySystemMirroringContextWithAllocator:v7 options:MutableCopy context:a2];
      goto LABEL_20;
    }

LABEL_19:
    v8 = [v6 copyContextForUUIDWithAllocator:v7 options:*(a1 + 48) context:a2];
    goto LABEL_20;
  }

  if (v5 == 3)
  {
    v8 = [v6 copySystemMusicContextWithAllocator:v7 options:MutableCopy context:a2];
  }

  else
  {
    v8 = [v6 createAudioContextWithAllocator:v7 options:*(a1 + 48) context:a2];
  }

LABEL_20:
  v9 = v8;
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v9;
}

void __FigRoutingContextResilientRemoteCopyContextForUUID_block_invoke_2(uint64_t a1)
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

uint64_t FigRoutingContextResilientRemoteCopyDefaultContext(uint64_t a1, uint64_t a2, void *a3)
{
  if (!_CFMZEnabled())
  {
    goto LABEL_8;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __routingContextResilientRemote_copySharedAudioContext_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (routingContextResilientRemote_copySharedAudioContext_sSharedAudioContextOnce != -1)
  {
    dispatch_once(&routingContextResilientRemote_copySharedAudioContext_sSharedAudioContextOnce, block);
  }

  v5 = routingContextResilientRemote_copySharedAudioContext_sSharedAudioContextErr;
  if (routingContextResilientRemote_copySharedAudioContext_sSharedAudioContextErr)
  {
    return v5;
  }

  if (!routingContextResilientRemote_copySharedAudioContext_sSharedAudioContext)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = CFRetain(routingContextResilientRemote_copySharedAudioContext_sSharedAudioContext);
  v5 = routingContextResilientRemote_copySharedAudioContext_sSharedAudioContextErr;
  if (!routingContextResilientRemote_copySharedAudioContext_sSharedAudioContextErr)
  {
LABEL_9:
    if (!a3)
    {
      FigRoutingContextResilientRemoteCopyDefaultContext_cold_1(block);
      v5 = LODWORD(block[0]);
      if (!v6)
      {
        return v5;
      }

      goto LABEL_15;
    }

    if (v6)
    {
      v7 = CFRetain(v6);
    }

    else
    {
      v7 = 0;
    }

    v5 = 0;
    *a3 = v7;
  }

  if (v6)
  {
LABEL_15:
    CFRelease(v6);
  }

  return v5;
}

uint64_t routingContextResilientRemote_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_SetProperty_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

void routingContextResilientRemote_serverConnectionDied(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
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

  v7 = *(DerivedStorage + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __routingContextResilientRemote_serverConnectionDied_block_invoke;
  v8[3] = &__block_descriptor_56_e5_v8__0l;
  v8[4] = DerivedStorage;
  v8[5] = a2;
  v8[6] = a4;
  MXDispatchAsync("routingContextResilientRemote_serverConnectionDied", "FigRoutingContextResilientRemote.m", 146, 0, 0, v7, v8);
}

void __routingContextResilientRemote_compareAndSwapRemoteContext_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  CMNotificationCenterGetDefaultLocalCenter();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  for (i = 0; i != 3; ++i)
  {
    v5 = *sFigRoutingContextPropertyChangeNotifications[i];
    CMNotificationCenterPostNotification();
  }

  CFDictionarySetValue(Mutable, @"routeConfigUpdateReason", @"configUpdateReasonEndedFailed");
  CMNotificationCenterPostNotification();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v6 = *(a1 + 32);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t routingContextResilientRemote_SelectRoute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_SelectRoute_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_SelectRouteDescriptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_SelectRouteDescriptor_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_CopyRoute(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingContextResilientRemote_CopyRoute_block_invoke;
  v3[3] = &__block_descriptor_40_e34_i16__0__OpaqueFigRoutingContext__8l;
  v3[4] = a2;
  return routingContextResilientRemote_withRemoteContext(a1, v3);
}

uint64_t routingContextResilientRemote_SelectRoutes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_SelectRoutes_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_SelectRouteDescriptors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_SelectRouteDescriptors_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_CopySelectedRouteForRemoteControl(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingContextResilientRemote_CopySelectedRouteForRemoteControl_block_invoke;
  v3[3] = &__block_descriptor_40_e34_i16__0__OpaqueFigRoutingContext__8l;
  v3[4] = a2;
  return routingContextResilientRemote_withRemoteContext(a1, v3);
}

uint64_t routingContextResilientRemote_AddToSelectedRoutes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_AddToSelectedRoutes_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_AddToSelectedRouteDescriptors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_AddToSelectedRouteDescriptors_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_RemoveFromSelectedRoutes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_RemoveFromSelectedRoutes_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_RemoveFromSelectedRouteDescriptors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_RemoveFromSelectedRouteDescriptors_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_CreateCommChannel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_CreateCommChannel_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_SendData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = FigRoutingContextResilientRemoteCopyRemoteContext();
  VTable = CMBaseObjectGetVTable();
  v11 = *(*(VTable + 16) + 120);
  if (v11)
  {
    v12 = *(VTable + 16) + 120;
    v13 = v11(v9, a2, a3, a4, a5);
    if (!v9)
    {
      return v13;
    }

    goto LABEL_5;
  }

  v13 = 4294954514;
  if (v9)
  {
LABEL_5:
    CFRelease(v9);
  }

  return v13;
}

uint64_t routingContextResilientRemote_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingContextResilientRemote_CloseCommChannel_block_invoke;
  v3[3] = &__block_descriptor_40_e34_i16__0__OpaqueFigRoutingContext__8l;
  v3[4] = a2;
  return routingContextResilientRemote_withRemoteContext(a1, v3);
}

uint64_t routingContextResilientRemote_SendCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __routingContextResilientRemote_SendCommand_block_invoke;
  v6[3] = &__block_descriptor_64_e34_i16__0__OpaqueFigRoutingContext__8l;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  return routingContextResilientRemote_withRemoteContext(a1, v6);
}

uint64_t routingContextResilientRemote_CopySelectedBufferedEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_CopySelectedBufferedEndpoint_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_CreateCommChannelForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __routingContextResilientRemote_CreateCommChannelForDeviceID_block_invoke;
  v5[3] = &__block_descriptor_56_e34_i16__0__OpaqueFigRoutingContext__8l;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  return routingContextResilientRemote_withRemoteContext(a1, v5);
}

uint64_t routingContextResilientRemote_SendDataForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = FigRoutingContextResilientRemoteCopyRemoteContext();
  VTable = CMBaseObjectGetVTable();
  v13 = *(*(VTable + 16) + 160);
  if (v13)
  {
    v14 = *(VTable + 16) + 160;
    v15 = v13(v11, a2, a3, a4, a5, a6);
    if (!v11)
    {
      return v15;
    }

    goto LABEL_5;
  }

  v15 = 4294954514;
  if (v11)
  {
LABEL_5:
    CFRelease(v11);
  }

  return v15;
}

uint64_t routingContextResilientRemote_CloseCommChannelForDeviceID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_CloseCommChannelForDeviceID_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_ResetPredictedSelectedRouteDescriptor(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingContextResilientRemote_ResetPredictedSelectedRouteDescriptor_block_invoke;
  v3[3] = &__block_descriptor_40_e34_i16__0__OpaqueFigRoutingContext__8l;
  v3[4] = a2;
  return routingContextResilientRemote_withRemoteContext(a1, v3);
}

uint64_t routingContextResilientRemote_CopySelectedBufferedEndpointForTesting(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_CopySelectedBufferedEndpointForTesting_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t routingContextResilientRemote_AddToSelectedRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __routingContextResilientRemote_AddToSelectedRouteDescriptorsWithCompletionCallback_block_invoke;
  v6[3] = &__block_descriptor_64_e34_i16__0__OpaqueFigRoutingContext__8l;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  return routingContextResilientRemote_withRemoteContext(a1, v6);
}

uint64_t routingContextResilientRemote_RemoveFromSelectedRouteDescriptorsWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __routingContextResilientRemote_RemoveFromSelectedRouteDescriptorsWithCompletionCallback_block_invoke;
  v6[3] = &__block_descriptor_64_e34_i16__0__OpaqueFigRoutingContext__8l;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  return routingContextResilientRemote_withRemoteContext(a1, v6);
}