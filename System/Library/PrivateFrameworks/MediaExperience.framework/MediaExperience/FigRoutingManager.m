@interface FigRoutingManager
@end

@implementation FigRoutingManager

void __FigRoutingManager_CloseRelayCommChannels_block_invoke(uint64_t a1)
{
  cf[22] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopyFigEndpointFromAggregateEndpointForClientUse(*(a1 + 32), cf);
  v1 = cf[0];
  if (cf[0])
  {
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v3 = *(*(CMBaseObjectGetVTable() + 24) + 144);
      if (v3)
      {
        v3(v1);
      }
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

dispatch_queue_t __FigRoutingManager_GetDataTransmissionQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.mx.datatransmissionqueue", v0);
  FigRoutingManager_GetDataTransmissionQueue_dataTransmissionQueue = result;
  return result;
}

void __FigRoutingManager_iOSEndpointActivateCompletionCallback_block_invoke(uint64_t a1)
{
  v74[16] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  if (*(a1 + 40))
  {
    v2 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E69621E8], v2, &v72);
    }

    v5 = *(a1 + 40);
    v6 = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(v6, *MEMORY[0x1E69620F8], v2, &v71);
    }

    v8 = *(a1 + 40);
    v9 = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(v9, *MEMORY[0x1E6961FD0], v2, &v70);
    }

    v11 = *(a1 + 40);
    v12 = FigEndpointGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, *MEMORY[0x1E69621B0], v2, &v69);
    }
  }

  if (dword_1EB75DF20)
  {
    LODWORD(cf) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  cf = 0;
  FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(*(a1 + 72), &cf);
  v15 = *(a1 + 104);
  if (v15 == -16727)
  {
    goto LABEL_93;
  }

  if (v15)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 64);
    FigRoutingManagerCrossfadePlayback();
    v32 = *MEMORY[0x1E69626A8];
    if (FigRoutingManagerIsEndpointOfType(*(a1 + 40)))
    {
      FigEndpointUIAgentHelper_CleanupPrompt(v72, v71, v69, 0);
    }

    v33 = *(a1 + 40);
    if (cf == v33)
    {
      v34 = *MEMORY[0x1E69626C0];
      if (FigRoutingManagerIsEndpointOfType(v33))
      {
        v35 = *(a1 + 40);
        FigRoutingManagerProcessCarPlayEndpointDeactivation(1);
      }

      v36 = *(a1 + 64);
      FigRoutingManager_iOSHandleEndpointActivationError(*(a1 + 40), *(a1 + 56), *(a1 + 104), *(a1 + 48), *(a1 + 72));
    }

    goto LABEL_93;
  }

  v16 = *MEMORY[0x1E69626A8];
  if (FigRoutingManagerIsEndpointOfType(*(a1 + 40)))
  {
    v18 = v71;
    v17 = v72;
    v19 = v69;
    v20 = *MEMORY[0x1E69616C0];
    v21 = FigCFEqual();
    FigEndpointUIAgentHelper_CleanupPrompt(v17, v18, v19, v21);
  }

  v22 = *(a1 + 40);
  if (cf != v22)
  {
    v23 = *MEMORY[0x1E69626B0];
    if (!FigRoutingManagerIsEndpointOfType(v22))
    {
      *type = 0;
      if (cf)
      {
        v41 = FigEndpointGetCMBaseObject();
        v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v42)
        {
          v42(v41, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], type);
        }
      }

      v43 = *MEMORY[0x1E69626C0];
      if (!FigRoutingManagerIsEndpointOfType(*(a1 + 40)))
      {
        if (dword_1EB75DF20)
        {
          LODWORD(theArray) = 0;
          v64[0] = OS_LOG_TYPE_DEFAULT;
          v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingManager_iOSDeactivateEndpoint(*(a1 + 40), *(a1 + 48), 1);
        FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(*(a1 + 72), *(a1 + 40), @"configUpdateReasonEndedUserCancelled");
      }

      if (*type)
      {
        CFRelease(*type);
        *type = 0;
      }

      FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 72), 0);
      goto LABEL_93;
    }
  }

  FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 72), 7);
  FigRoutingManagerRegisterForFigEndpointNotifications(*(a1 + 40));
  v24 = *MEMORY[0x1E69626C8];
  if (FigRoutingManagerIsEndpointOfType(*(a1 + 40)))
  {
    v74[0] = 0;
    v25 = *(a1 + 56);
    valuePtr = v25;
    v26 = *(a1 + 40);
    v27 = FigEndpointGetCMBaseObject();
    v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v28)
    {
      v28(v27, *MEMORY[0x1E6961F58], *MEMORY[0x1E695E480], v74);
      if (v74[0])
      {
        CFNumberGetValue(v74[0], kCFNumberSInt64Type, &valuePtr);
        v25 = valuePtr;
      }
    }

    FigRoutingManager_iOSHandleFigEndpointFeaturesActivation(*(a1 + 40), v25, *(a1 + 48), *(a1 + 72), *(a1 + 64), *(a1 + 80));
    FigRoutingManagerContextUtilities_AddActivatedEndpoint(*(a1 + 72), *(a1 + 40), valuePtr, *(a1 + 48), *(a1 + 64), *(a1 + 80));
    v29 = v74[0];
    if (!v74[0])
    {
      goto LABEL_93;
    }

LABEL_73:
    CFRelease(v29);
    goto LABEL_93;
  }

  v37 = *MEMORY[0x1E69626B8];
  if (!FigRoutingManagerIsEndpointOfType(*(a1 + 40)))
  {
    v45 = *MEMORY[0x1E69626B0];
    if (!FigRoutingManagerIsEndpointOfType(*(a1 + 40)) || CMSMDeviceState_IsHomePodHub())
    {
LABEL_89:
      FigRoutingManager_iOSHandleFigEndpointFeaturesActivation(*(a1 + 40), *(a1 + 56), *(a1 + 48), *(a1 + 72), *(a1 + 64), *(a1 + 80));
      FigRoutingManagerContextUtilities_AddActivatedEndpoint(*(a1 + 72), *(a1 + 40), *(a1 + 56), *(a1 + 48), *(a1 + 64), *(a1 + 80));
      v57 = *MEMORY[0x1E69626C0];
      if (FigRoutingManagerIsEndpointOfType(*(a1 + 40)))
      {
        if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled())
        {
          FigRoutingManagerNotifyClientsOfCarPlayActivation();
        }

        CMSMNotificationUtility_PostCarPlayIsConnectedDidChange(1);
        notify_post("com.apple.coremedia.carplayisconnected");
        v58 = FigRoutingManager_iOSIsCarPlayAuxStreamSupported();
        CMSMNotificationUtility_PostCarPlayAuxStreamSupportDidChange(v58);
        FigRoutingManagerUtilities_RegisterAirPlayStreamCapabilitiesDidChangeListener(0, *(a1 + 40));
      }

      goto LABEL_93;
    }

    *type = 0;
    v46 = *(a1 + 40);
    v47 = *MEMORY[0x1E6962270];
    v48 = *MEMORY[0x1E695E480];
    v49 = FigEndpointGetCMBaseObject();
    CMBaseObjectCopyProperty(v49, v47, v48, type);
    theArray = 0;
    FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints(*(a1 + 72), *(a1 + 40), &theArray);
    if ((!theArray || !CFArrayGetCount(theArray)) && (!*type || !CFArrayGetCount(*type)))
    {
      if (dword_1EB75DF20)
      {
        *v64 = 0;
        v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerAggregateAddLocalAirPlayEndpoint(*(a1 + 72), *(a1 + 40));
      goto LABEL_85;
    }

    if (theArray && CFArrayGetCount(theArray))
    {
      v50 = theArray;
      v51 = @"There are currently activating SubEndpoints: ";
    }

    else
    {
      if (!*type || !CFArrayGetCount(*type))
      {
        goto LABEL_85;
      }

      v50 = *type;
      v51 = @"There are activated SubEndpoints: ";
    }

    FigRoutingManagerLogEndpointIDs(v51, v50, 0, 1);
LABEL_85:
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

    if (*type)
    {
      CFRelease(*type);
    }

    goto LABEL_89;
  }

  *type = 0;
  FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(*(a1 + 72), type);
  theArray = 0;
  FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(*(a1 + 72), &theArray);
  if (!CMSMVAUtility_IsA2DPPortAvailableForEndpoint(*(a1 + 40), 0))
  {
    FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 72), 8);
    goto LABEL_70;
  }

  v65 = 0;
  v38 = *(a1 + 88);
  v39 = *MEMORY[0x1E6961660];
  FigCFDictionaryGetBooleanIfPresent();
  *v64 = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(*(a1 + 72), 0, v64);
  if (dword_1EB75DF20)
  {
    v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v53 = Mutable;
  if (Mutable)
  {
    if (*v64)
    {
      CFArrayAppendValue(Mutable, *v64);
    }

    CFArrayAppendValue(v53, *(a1 + 40));
  }

  if (!v65)
  {
    goto LABEL_64;
  }

  if (!*type || CFArrayGetCount(*type) < 2 || !FigRoutingManagerAreAllEndpointsBluetoothShareable(*type))
  {
    if (v53 && FigRoutingManagerIsEndpointBluetoothShareable(*v64) && FigRoutingManagerIsEndpointBluetoothShareable(*(a1 + 40)))
    {
      v54 = *(a1 + 72);
      v55 = v53;
      goto LABEL_63;
    }

LABEL_64:
    if (FigRoutingManagerIsEndpointOfType(theArray))
    {
      FigRoutingManagerRouteToBluetoothDevice(*(a1 + 72), theArray);
    }

    goto LABEL_66;
  }

  v54 = *(a1 + 72);
  v55 = *type;
LABEL_63:
  FigRoutingManagerEnableBluetoothSharingSession(v54, v55);
LABEL_66:
  if (*v64)
  {
    CFRelease(*v64);
    *v64 = 0;
  }

  if (v53)
  {
    CFRelease(v53);
  }

LABEL_70:
  if (*type)
  {
    CFRelease(*type);
    *type = 0;
  }

  v29 = theArray;
  if (theArray)
  {
    goto LABEL_73;
  }

LABEL_93:
  FigRoutingManagerDestroyEndpointActivateCompletionContext(*(a1 + 96));
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v72)
  {
    CFRelease(v72);
    v72 = 0;
  }

  if (v70)
  {
    CFRelease(v70);
    v70 = 0;
  }

  if (v69)
  {
    CFRelease(v69);
    v69 = 0;
  }

  if (v71)
  {
    CFRelease(v71);
    v71 = 0;
  }

  v59 = *(a1 + 72);
  if (v59)
  {
    CFRelease(v59);
  }

  v60 = *(a1 + 40);
  if (v60)
  {
    CFRelease(v60);
  }

  v61 = *(a1 + 64);
  if (v61)
  {
    CFRelease(v61);
  }

  v62 = *(a1 + 80);
  if (v62)
  {
    CFRelease(v62);
  }

  v63 = *MEMORY[0x1E69E9840];
}

void __FigRoutingManager_iOSEndpointDeactivateCompletionCallback_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  v27 = 0;
  v2 = MEMORY[0x1E695E480];
  if (*(a1 + 40))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E69621E8], *v2, &v27);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = *(a1 + 64);
  v7 = MEMORY[0x1E69626C0];
  if (v6)
  {
    cf[0] = *v6;
    if (cf[0])
    {
LABEL_8:
      v8 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    cf[0] = 0;
  }

  v9 = *MEMORY[0x1E69626C0];
  if (FigRoutingManagerIsEndpointOfType(*(a1 + 40)))
  {
    FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(cf);
    FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener(0, *(a1 + 40));
  }

  else
  {
    v10 = *MEMORY[0x1E69626C8];
    if (!FigRoutingManagerIsEndpointOfType(*(a1 + 40)))
    {
      goto LABEL_8;
    }

    FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(cf);
  }

  v8 = 1;
LABEL_15:
  v11 = *(a1 + 40);
  if (v11)
  {
    FigEndpointAggregateGetClassID();
    IsMemberOfClass = CMBaseObjectIsMemberOfClass();
    v13 = *(a1 + 40);
    if (!IsMemberOfClass)
    {
      goto LABEL_26;
    }

    theArray = 0;
    v14 = FigEndpointGetCMBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v15(v14, *MEMORY[0x1E6962270], *v2, &theArray);
      if (!theArray)
      {
LABEL_24:
        v13 = *(a1 + 40);
        goto LABEL_26;
      }

      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v17 = Count;
        for (i = 0; i != v17; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          FigRoutingManagerRemoveEndpointFromAggregate(v11, ValueAtIndex, 0, 0, 0, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
        }
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
    }

    goto LABEL_24;
  }

  v13 = 0;
LABEL_26:
  FigRoutingManager_iOSHandleFigEndpointFeaturesDeactivation(v13, *(a1 + 56), cf[0]);
  v20 = *v7;
  if (FigRoutingManagerIsEndpointOfType(*(a1 + 40)))
  {
    v21 = *(a1 + 40);
    FigRoutingManagerProcessCarPlayEndpointDeactivation(1);
  }

  FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(cf[0], *(a1 + 40), *(a1 + 48));
  v22 = *MEMORY[0x1E69626B0];
  if (FigRoutingManagerIsEndpointOfType(*(a1 + 40)) || (v23 = *MEMORY[0x1E69626A8], FigRoutingManagerIsEndpointOfType(*(a1 + 40))))
  {
    FigRoutingManagerRemoveCachedDelegateContext(*(a1 + 40));
  }

  if (cf[0])
  {
    v24 = v8;
  }

  else
  {
    v24 = 0;
  }

  if (v24 == 1)
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  FigRoutingManagerDestroyEndpointDeactivateCompletionContext(*(a1 + 72));
  v25 = *(a1 + 40);
  if (v25)
  {
    CFRelease(v25);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __FigRoutingManager_iOSDeactivateEndpoint_block_invoke(uint64_t a1)
{
  FigRoutingManagerStopDeactivateAirPlayEndpointTimer();
  FigRoutingManagerStopCarPlayAudioMainPortPublishedCheckTimer();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __FigRoutingManager_iOSHandleEndpointFailedDelegate_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v64 = 0;
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = *(a1 + 32);
  if (!v4)
  {
    Value = 0;
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(v4, @"EndpointDelegateContextKey_RoutingContextUUID");
  v6 = *(a1 + 32);
  if (!v6)
  {
LABEL_7:
    v7 = 0;
LABEL_8:
    MutableCopy = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_9;
  }

  v7 = CFDictionaryGetValue(v6, @"EndpointDelegateContextKey_ClientRouteChangeOptions");
  v8 = *(a1 + 32);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = CFDictionaryGetValue(v8, @"EndpointDelegateContextKey_InternalRouteChangeOptions");
  if (!v9)
  {
    goto LABEL_8;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v2, 0, v9);
LABEL_9:
  v11 = MutableCopy;
  v12 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(MutableCopy, @"RouteChangeOptionKey_IsRemoveOperation", *MEMORY[0x1E695E4D0]);
  v63 = 0;
  v13 = *(a1 + 40);
  v14 = *MEMORY[0x1E6961850];
  FigCFDictionaryGetInt32IfPresent();
  v15 = CFDictionaryGetValue(*(a1 + 40), *MEMORY[0x1E6961848]);
  v16 = CFDictionaryGetValue(*(a1 + 40), *MEMORY[0x1E6961690]);
  IsAirPlayDaemonEnabled = MX_FeatureFlags_IsAirPlayDaemonEnabled();
  v18 = *MEMORY[0x1E69626B0];
  if (IsAirPlayDaemonEnabled)
  {
    v19 = *MEMORY[0x1E69626B0];
    if (FigRoutingManagerIsEndpointOfType(*(a1 + 48)))
    {
      if (!v16)
      {
        FigRoutingManagerHandleAggregateFailure(*(a1 + 48));
        goto LABEL_60;
      }
    }
  }

  if (FigRoutingManagerIsEndpointOfType(*(a1 + 48)))
  {
    v62 = 0;
    v20 = *(a1 + 40);
    v21 = *MEMORY[0x1E6961908];
    FigCFDictionaryGetInt64IfPresent();
    if (!v16)
    {
      LODWORD(v61) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_60;
    }

    if (FigRoutingManagerIsEndpointActivated(v16))
    {
      v61 = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v23)
      {
        v23(CMBaseObject, *MEMORY[0x1E69620F8], v2, &v61);
      }

      v24 = FigEndpointGetCMBaseObject();
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v25)
      {
        v25(v24, *MEMORY[0x1E69621E8], v2, &v64);
      }

      v26 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(v16, 0);
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      v58 = v26;
      FigCFDictionarySetValue();
      if (v63)
      {
        cf[0] = 0;
        v27 = *(a1 + 48);
        v28 = FigEndpointGetCMBaseObject();
        v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v29)
        {
          v29(v28, *MEMORY[0x1E6962270], v2, cf);
        }

        RouteConfigUpdatedFailedPayload = FigRoutingContextUtilities_CreateRouteConfigUpdatedFailedPayload(0, v61, v63, cf[0]);
        FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(Value, @"routeConfigUpdated", RouteConfigUpdatedFailedPayload);
        if (RouteConfigUpdatedFailedPayload)
        {
          CFRelease(RouteConfigUpdatedFailedPayload);
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }

      *type = 0;
      FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate(Value, type);
      if (*type)
      {
        v59 = 0;
        v31 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(v31, @"RouteChangeOptionKey_IsRemoveOperation", v12);
        FigRoutingManagerCreateAggregateAddEndpointCompletionContext(Value, v31, v31, &v59);
        v32 = FigRoutingManagerAggregateShouldEndpointRemovalInterruptSystemMusicSessions(*type, v16, v59);
        FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(v59);
        if (v31)
        {
          CFRelease(v31);
        }

        if (*(a1 + 32))
        {
          FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(Value, 0, @"configUpdateReasonEndedFailed");
          v33 = *type;
          v34 = v16;
          v35 = Value;
          v36 = v7;
          v37 = v11;
        }

        else
        {
          v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v33 = *type;
          v34 = v16;
          v35 = 0;
          v36 = 0;
          v37 = 0;
        }

        if (FigRoutingManagerRemoveEndpointFromAggregate(v33, v34, v35, v36, v37, FigRoutingManagerAggregateRemoveEndpointCompletionCallback))
        {
          v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          FigRoutingManagerLogEndpointID(@"HandleEndpointFailedDelegate: Removed endpoint with ID from aggregate: ", v16, 0, 0);
        }
      }

      else
      {
        v32 = 0;
      }

      FigRoutingManagerCleanupSystemMusicIfAggregateIsEmpty(*(a1 + 48), *(a1 + 56), v32);
      v50 = *MEMORY[0x1E6961830];
      if (FigCFEqual())
      {
        FigRoutingManager_iOSHandleStartupFailed(v63, Mutable);
      }

      if (*type)
      {
        CFRelease(*type);
        *type = 0;
      }

      if (v61)
      {
        CFRelease(v61);
        v61 = 0;
      }

      v47 = v58;
      if (v58)
      {
        goto LABEL_59;
      }
    }
  }

  else if (FigRoutingManagerIsEndpointActivated(*(a1 + 48)))
  {
    cf[0] = 0;
    v38 = *(a1 + 48);
    v39 = FigEndpointGetCMBaseObject();
    v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v40)
    {
      v40(v39, *MEMORY[0x1E69620F8], v2, cf);
    }

    v41 = *(a1 + 48);
    v42 = FigEndpointGetCMBaseObject();
    v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v43)
    {
      v43(v42, *MEMORY[0x1E69621E8], v2, &v64);
    }

    v44 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(*(a1 + 48), 0);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigRoutingManager_iOSDeactivateEndpoint(*(a1 + 48), *(a1 + 56), 0);
    if (FigRoutingManagerContextUtilities_GetContextType(Value) == 1)
    {
      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(Value, 0, @"configUpdateReasonEndedFailed");
    }

    else
    {
      FigRoutingManagerContextUtilities_SetPickedEndpoints(Value, 0, @"configUpdateReasonEndedFailed", v7, 0);
    }

    v46 = *MEMORY[0x1E6961830];
    if (FigCFEqual())
    {
      FigRoutingManager_iOSHandleStartupFailed(v63, Mutable);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    if (v44)
    {
      v47 = v44;
LABEL_59:
      CFRelease(v47);
    }
  }

LABEL_60:
  if (dword_1EB75DF20)
  {
    LODWORD(v62) = 0;
    LOBYTE(v61) = 0;
    v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v52 = v62;
    if (os_log_type_enabled(v51, v61))
    {
      v53 = v52;
    }

    else
    {
      v53 = v52 & 0xFFFFFFFE;
    }

    if (v53)
    {
      v65 = 136315906;
      v66 = "FigRoutingManager_iOSHandleEndpointFailedDelegate_block_invoke";
      v67 = 2114;
      v68 = v64;
      v69 = 1024;
      v70 = v63;
      v71 = 2114;
      v72 = v15;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v64)
  {
    CFRelease(v64);
    v64 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v54 = *(a1 + 48);
  if (v54)
  {
    CFRelease(v54);
  }

  v55 = *(a1 + 40);
  if (v55)
  {
    CFRelease(v55);
  }

  v56 = *(a1 + 32);
  if (v56)
  {
    CFRelease(v56);
  }

  v57 = *MEMORY[0x1E69E9840];
}

void __FigRoutingManager_HandleDidReceiveDataFromCommChannelDelegate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, @"EndpointDelegateContextKey_RoutingContextUUID");
    if (Value)
    {
      v4 = Value;
      v5 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (FigRoutingManagerContextUtilities_GetContextType(v4) == 9)
      {
        v18 = 0;
        v7 = *(a1 + 40);
        CMBaseObject = FigEndpointGetCMBaseObject();
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v9)
        {
          v9(CMBaseObject, *MEMORY[0x1E69621E8], v5, &v18);
        }

        cf = 0;
        v10 = *(a1 + 40);
        v11 = FigEndpointGetCMBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v12)
        {
          v12(v11, *MEMORY[0x1E69620F8], v5, &cf);
          v13 = cf;
        }

        else
        {
          v13 = 0;
        }

        CFDictionarySetValue(Mutable, @"deviceID", v13);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v18)
        {
          CFRelease(v18);
        }
      }

      CFDictionarySetValue(Mutable, @"commChannelUUID", *(a1 + 48));
      CFDictionarySetValue(Mutable, @"data", *(a1 + 56));
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(v4, @"didReceiveData", Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    CFRelease(v16);
  }
}

void __FigRoutingManager_HandleDidCloseCommChannelDelegate_block_invoke(void *a1)
{
  v19[24] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, @"EndpointDelegateContextKey_RoutingContextUUID");
    if (Value)
    {
      v4 = Value;
      v5 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (FigRoutingManagerContextUtilities_GetContextType(v4) == 9)
      {
        v19[0] = 0;
        v7 = a1[5];
        CMBaseObject = FigEndpointGetCMBaseObject();
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v9)
        {
          v9(CMBaseObject, *MEMORY[0x1E69621E8], v5, v19);
        }

        cf = 0;
        v10 = a1[5];
        v11 = FigEndpointGetCMBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v12)
        {
          v12(v11, *MEMORY[0x1E69620F8], v5, &cf);
        }

        FigCFDictionarySetValue();
        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v19[0])
        {
          CFRelease(v19[0]);
        }
      }

      v14 = a1[6];
      FigCFDictionarySetValue();
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(v4, @"commChannelDidClose", Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  v15 = a1[5];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = a1[6];
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end