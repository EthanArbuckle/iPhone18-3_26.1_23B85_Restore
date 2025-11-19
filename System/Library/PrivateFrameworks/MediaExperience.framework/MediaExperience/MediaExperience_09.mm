void volumeController_postEndpointVolumeControlDidChangeNotification(uint64_t a1, int a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  v4 = MEMORY[0x1E695E4C0];
  if (a2)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  v5 = *v4;
  FigCFDictionarySetValue();
  cf = 0;
  FigVolumeControllerCopySharedController(&cf);
  volumeController_postNotificationWithPayload(cf, @"canSetEndpointVolumeDidChange", Mutable);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void volumeController_postEndpointVolumeControlTypeDidChangeNotification()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  UInt64 = FigCFNumberCreateUInt64();
  FigCFDictionarySetValue();
  cf = 0;
  FigVolumeControllerCopySharedController(&cf);
  volumeController_postNotificationWithPayload(cf, @"endpointVolumeControlTypeDidChange", Mutable);
  if (UInt64)
  {
    CFRelease(UInt64);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void volumeController_postEndpointMuteByUserDidChangeNotification()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  cf = 0;
  FigVolumeControllerCopySharedController(&cf);
  volumeController_postNotificationWithPayload(cf, @"endpointMutedByUserDidChange", Mutable);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void volumeController_postMainVolumeControlDidChangeNotification(uint64_t a1, int a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf = 0;
  FigVolumeControllerCopySharedController(&cf);
  FigCFDictionarySetValue();
  v4 = MEMORY[0x1E695E4C0];
  if (a2)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  v5 = *v4;
  FigCFDictionarySetValue();
  volumeController_postNotificationWithPayload(cf, @"canSetMasterVolumeDidChange", Mutable);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

id __volumeController_postVolumeOperationsSupportedForRoutingContextDidChangeNotification_block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  volumeController_postVolumeOperationsSupportedForRoutingContextDidChangeNotification_sCachedVolumeOperationsSupportedForContext = result;
  return result;
}

uint64_t volumeController_getMainVolume(const void *a1, float *a2)
{
  v2 = 4294949706;
  if (a1 && a2)
  {
    theArray = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpoints(a1, &theArray);
    if (theArray)
    {
      if (CFArrayGetCount(theArray) < 1)
      {
        v2 = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        v6 = *MEMORY[0x1E69626A8];
        if (FigRoutingManagerIsEndpointOfType(ValueAtIndex) || (v7 = *MEMORY[0x1E69626B0], FigRoutingManagerIsEndpointOfType(ValueAtIndex)) || ((v8 = *MEMORY[0x1E69626B8], FigRoutingManagerIsEndpointOfType(ValueAtIndex)) || (v9 = *MEMORY[0x1E69626D8], FigRoutingManagerIsEndpointOfType(ValueAtIndex))) && volumeController_isBluetoothSharingMainVolumeSupported(theArray))
        {
          v2 = 0;
          *a2 = volumeController_getCachedMainVolume(a1);
        }

        else
        {
          number = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v12)
          {
            v2 = v12(CMBaseObject, *MEMORY[0x1E69621C0], *MEMORY[0x1E695E480], &number);
            v13 = number;
            if (!v2 && number)
            {
              CFNumberGetValue(number, kCFNumberFloat32Type, a2);
              v13 = number;
            }

            if (v13)
            {
              CFRelease(v13);
            }
          }

          else
          {
            v2 = 4294954514;
          }
        }
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

void volumeController_postMainVolumeControlTypeDidChangeNotification()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf = 0;
  FigVolumeControllerCopySharedController(&cf);
  FigCFDictionarySetValue();
  UInt64 = FigCFNumberCreateUInt64();
  FigCFDictionarySetValue();
  volumeController_postNotificationWithPayload(cf, @"masterVolumeControlTypeDidChange", Mutable);
  if (UInt64)
  {
    CFRelease(UInt64);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t volumeController_getVolumeForEndpoint(const void *a1, _DWORD *a2)
{
  v2 = 4294949706;
  if (a1 && a2)
  {
    v4 = CFRetain(a1);
    v14 = 0;
    v5 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v2 = v7(CMBaseObject, *MEMORY[0x1E6962338], v5, &v14);
      if (v2)
      {
        v8 = 1;
      }

      else
      {
        v8 = v14 == 0;
      }

      if (!v8)
      {
        FigCFNumberGetFloat32();
        v2 = 0;
        *a2 = v9;
      }
    }

    else
    {
      v2 = 4294954514;
    }

    cf = 0;
    v10 = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(v10, *MEMORY[0x1E69621E8], v5, &cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    if (v14)
    {
      CFRelease(v14);
      v14 = 0;
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return v2;
}

uint64_t volumeController_isBluetoothSharingMainVolumeSupported(const __CFArray *a1)
{
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v3 = a1 && CFArrayGetCount(a1) >= 2 && FigRoutingManagerAreAllEndpointsBluetoothShareable(a1);
  return (CFPreferenceNumberWithDefault != 0) & v3;
}

void volumeController_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  v2 = *(DerivedStorage + 8);
  FigSimpleMutexDestroy();
  v3 = *DerivedStorage;
  if (*DerivedStorage)
  {

    dispatch_release(v3);
  }
}

__CFString *volumeController_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  CFStringAppendFormat(Mutable, 0, @"<FigVolumeController = %p: routingContexts = %@>", a1, *(DerivedStorage + 16));
  v5 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t volumeController_ChangeMainVolumeForRoutingContext(float a1, uint64_t a2, uint64_t a3)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    MainVolume = 4294949706;
    goto LABEL_78;
  }

  if (dword_1EB75DEA0)
  {
    LODWORD(theArray) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  cf = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a3, &cf);
  v7 = cf;
  if (!cf)
  {
    MainVolume = 4294949706;
    goto LABEL_73;
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(cf, &theArray);
  if (!theArray)
  {
    goto LABEL_60;
  }

  if (CFArrayGetCount(theArray) >= 1 && (v8 = CFArrayGetValueAtIndex(theArray, 0), v9 = *MEMORY[0x1E69626B0], FigRoutingManagerIsEndpointOfType(v8)))
  {
    *type = 0;
    v10 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, *MEMORY[0x1E6962348], v10, type);
    }

    if ((FigCFNumberGetSInt64() - 1) > 1)
    {
      MainVolume = 1;
    }

    else
    {
      v44 = 0;
      v13 = FigEndpointGetCMBaseObject();
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {
        v14(v13, *MEMORY[0x1E6962270], v10, &v44);
      }

      v38 = v7;
      if (v44)
      {
        *&v40 = COERCE_DOUBLE(CFArrayGetCount(v44));
      }

      else
      {
        *&v40 = 0.0;
      }

      Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v16 = Mutable;
      v17 = MEMORY[0x1E695E4C0];
      if (a1 > 0.0)
      {
        v17 = MEMORY[0x1E695E4D0];
      }

      CFDictionarySetValue(Mutable, *MEMORY[0x1E69624B8], *v17);
      if (dword_1EB75DEA0)
      {
        *v43 = 0;
        v42 = OS_LOG_TYPE_DEFAULT;
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v19 = *v43;
        if (os_log_type_enabled(v18, v42))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v47 = 136315651;
          v48 = "volumeController_changeMainVolumeBy";
          v49 = 2048;
          v50 = *&v40;
          v51 = 2113;
          v52 = v16;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v40 >= 1)
      {
        v21 = 0;
        v39 = *MEMORY[0x1E6962498];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v44, v21);
          v23 = *&ValueAtIndex;
          if (ValueAtIndex)
          {
            v24 = CFRetain(ValueAtIndex);
          }

          else
          {
            v24 = 0;
          }

          if (dword_1EB75DEA0)
          {
            *v43 = 0;
            v42 = OS_LOG_TYPE_DEFAULT;
            v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v26 = *v43;
            if (os_log_type_enabled(v25, v42))
            {
              v27 = v26;
            }

            else
            {
              v27 = v26 & 0xFFFFFFFE;
            }

            if (v27)
            {
              v47 = 136315906;
              v48 = "volumeController_changeMainVolumeBy";
              v49 = 2048;
              v50 = v23;
              v51 = 2048;
              v52 = v24;
              v53 = 2114;
              v54 = v16;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (!v24 || (FigEndpointExtendedGetClassID(), v28 = v24, !CMBaseObjectIsMemberOfClass()))
          {
            v28 = 0;
          }

          v29 = *(*(CMBaseObjectGetVTable() + 24) + 72);
          if (v29)
          {
            v29(v28, v39, v16, 0, 0);
          }

          if (v24)
          {
            CFRelease(v24);
          }

          ++v21;
        }

        while (v40 != v21);
      }

      if (v44)
      {
        CFRelease(v44);
        v44 = 0;
      }

      MainVolume = v40 < 1;
      if (v16)
      {
        CFRelease(v16);
      }

      v7 = v38;
    }

    if (*type)
    {
      CFRelease(*type);
    }
  }

  else
  {
    MainVolume = 1;
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
    if ((MainVolume & 1) == 0)
    {
      MainVolume = 0;
      goto LABEL_73;
    }

LABEL_60:
    *type = 0;
    MainVolume = volumeController_getMainVolume(v7, type);
    if (dword_1EB75DEA0)
    {
      LODWORD(v44) = 0;
      v43[0] = OS_LOG_TYPE_DEFAULT;
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v31 = v44;
      if (os_log_type_enabled(v30, v43[0]))
      {
        v32 = v31;
      }

      else
      {
        v32 = v31 & 0xFFFFFFFE;
      }

      if (v32)
      {
        v47 = 136315394;
        v48 = "volumeController_changeMainVolumeBy";
        v49 = 2048;
        v50 = *type;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!MainVolume)
    {
      v33 = *type + a1;
      *type = v33;
      if (v33 <= 1.0)
      {
        if (v33 < 0.0)
        {
          *type = 0;
          v33 = 0.0;
        }
      }

      else
      {
        *type = 1065353216;
        v33 = 1.0;
      }

      MainVolume = volumeController_setMainVolume(v7, v33);
    }

    goto LABEL_73;
  }

  if (MainVolume)
  {
    goto LABEL_60;
  }

LABEL_73:
  IsMuteEnabled = MX_FeatureFlags_IsMuteEnabled();
  if (IsMuteEnabled)
  {
    v55[0] = 0;
    MuteOfRoutingContext = volumeController_GetMuteOfRoutingContext(IsMuteEnabled, a3, v55);
    if (v55[0])
    {
      volumeController_SetMuteOfRoutingContext(MuteOfRoutingContext, a3, 0);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_78:
  v36 = *MEMORY[0x1E69E9840];
  return MainVolume;
}

uint64_t volumeController_SetMainVolumeForRoutingContext(float a1, uint64_t a2, uint64_t a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v6 = 4294949706;
    goto LABEL_21;
  }

  if (dword_1EB75DEA0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a3, cf);
  if (FigRoutingManagerContextUtilities_GetContextType(cf[0]) != 13)
  {
    v6 = volumeController_setMainVolume(cf[0], a1);
    IsMuteEnabled = MX_FeatureFlags_IsMuteEnabled();
    if (IsMuteEnabled)
    {
      LOBYTE(v16) = 0;
      MuteOfRoutingContext = volumeController_GetMuteOfRoutingContext(IsMuteEnabled, a3, &v16);
      if (v16)
      {
        volumeController_SetMuteOfRoutingContext(MuteOfRoutingContext, a3, 0);
      }
    }

    goto LABEL_17;
  }

  if (!MX_FeatureFlags_IsSystemInputPickerEnabled())
  {
    v6 = 0;
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  if (!FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618F8]))
  {
    volumeController_SetMainVolumeForRoutingContext_cold_1(&v16);
    v9 = 0;
    v6 = v16;
    goto LABEL_18;
  }

  v7 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v8 = a1;
  v9 = [v7 initWithFloat:v8];
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v11)
  {
    v6 = 4294954514;
LABEL_15:
    FigSignalErrorAtGM();
    goto LABEL_18;
  }

  v6 = v11(CMBaseObject, 0x1F289B770, v9);
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

LABEL_21:
  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t volumeController_GetMainVolumeForRoutingContext(uint64_t a1, uint64_t a2, float *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v7 = 4294949706;
    goto LABEL_18;
  }

  v14 = 0;
  cf = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a2, &cf);
  if (FigRoutingManagerContextUtilities_GetContextType(cf) == 13)
  {
    if (!MX_FeatureFlags_IsSystemInputPickerEnabled())
    {
      v7 = 0;
      goto LABEL_15;
    }

    if (!FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618F8]))
    {
      volumeController_GetMainVolumeForRoutingContext_cold_1(v16);
      v7 = v16[0];
      goto LABEL_15;
    }

    CMBaseObject = FigEndpointManagerGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5 && !v5(CMBaseObject, 0x1F289B770, *MEMORY[0x1E695E480], &v14))
    {
      if (dword_1EB75DEA0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [v14 floatValue];
      v7 = 0;
      *a3 = v9;
      goto LABEL_15;
    }

    MainVolume = FigSignalErrorAtGM();
  }

  else
  {
    MainVolume = volumeController_getMainVolume(cf, a3);
  }

  v7 = MainVolume;
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_18:
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t volumeController_ChangeVolumeForEndpointWithID(uint64_t a1, uint64_t a2, float a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v28 = 0;
  volumeController_copyEndpointWithID(a1, a2, &v28);
  v6 = v28;
  cf = 0;
  v7 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(CMBaseObject, *MEMORY[0x1E6962348], v7, &cf);
  }

  if ((FigCFNumberGetSInt64() - 1) <= 1)
  {
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = Mutable;
    v12 = MEMORY[0x1E695E4C0];
    if (a3 > 0.0)
    {
      v12 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x1E69624B8], *v12);
    if (v6)
    {
      v13 = CFRetain(v6);
    }

    else
    {
      v13 = 0;
    }

    if (dword_1EB75DEA0)
    {
      v30 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v17 = v30;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
        v32 = 136315650;
        v33 = "volumeController_changeIndividualVolumeBy";
        v34 = 2048;
        v35 = v6;
        v36 = 2048;
        v37 = v13;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!v13 || (FigEndpointExtendedGetClassID(), v19 = v13, !CMBaseObjectIsMemberOfClass()))
    {
      v19 = 0;
    }

    v20 = *(*(CMBaseObjectGetVTable() + 24) + 72);
    if (v20)
    {
      VolumeForEndpoint = v20(v19, *MEMORY[0x1E6962498], v11, 0, 0);
      if (!v13)
      {
LABEL_27:
        if (!v11)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    else
    {
      VolumeForEndpoint = 4294954514;
      if (!v13)
      {
        goto LABEL_27;
      }
    }

    CFRelease(v13);
    goto LABEL_27;
  }

  v40[0] = 0.0;
  VolumeForEndpoint = volumeController_getVolumeForEndpoint(v6, v40);
  if (!VolumeForEndpoint)
  {
    v15 = v40[0] + a3;
    v40[0] = v15;
    if (v15 <= 1.0)
    {
      if (v15 < 0.0)
      {
        v40[0] = 0.0;
        v15 = 0.0;
      }
    }

    else
    {
      v40[0] = 1.0;
      v15 = 1.0;
    }

    VolumeForEndpoint = volumeController_setVolumeForEndpoint(v6, v15);
    v11 = FigRoutingManagerCopyRoutingContextUUIDForEndpoint(v6);
    volumeController_recomputeMainVolume(v11, v40[0]);
    if (v11)
    {
LABEL_28:
      CFRelease(v11);
    }
  }

LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v28)
  {
    v21 = FigEndpointGetCMBaseObject();
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v22)
    {
      v22(v21, *MEMORY[0x1E69621E8], v7, &cf);
    }
  }

  if (dword_1EB75DEA0)
  {
    v30 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v24 = v30;
    if (os_log_type_enabled(v23, type))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
      v32 = 136315906;
      v33 = "volumeController_ChangeVolumeForEndpointWithID";
      v34 = 2114;
      v35 = cf;
      v36 = 2114;
      v37 = a2;
      v38 = 2048;
      v39 = a3;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (MX_FeatureFlags_IsMuteEnabled())
  {
    LOBYTE(v40[0]) = 0;
    volumeController_GetMuteOfEndpointWithID(a1, a2, v40);
    if (LOBYTE(v40[0]))
    {
      volumeController_SetMuteOfEndpointWithID(a1, a2, 0);
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v28)
  {
    CFRelease(v28);
  }

  v26 = *MEMORY[0x1E69E9840];
  return VolumeForEndpoint;
}

uint64_t volumeController_SetVolumeForEndpointWithID(uint64_t a1, uint64_t a2, float a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  volumeController_copyEndpointWithID(a1, a2, &v20);
  if (v20)
  {
    v6 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, *MEMORY[0x1E6962238], v6, &v17);
    }

    v9 = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(v9, *MEMORY[0x1E69621E8], v6, &v18);
    }

    if (v17)
    {
      FigRoutingManagerContextUtilities_CopyPickedEndpoints(v17, &v19);
      v11 = FigCFArrayContainsValue();
      if (FigRoutingManagerIsEndpointWHAGroupable(v20))
      {
        cf[0] = 0;
        FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(v17, cf);
        v12 = v20;
        v13 = cf[0];
        if (!cf[0] || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
        {
          v13 = 0;
        }

        if (FigRoutingManagerIsEndpointPresentInAggregate(v12, v13))
        {
          v11 = 1;
        }

        else
        {
          v11 = v11;
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }

      if (v11)
      {
        v11 = volumeController_setVolumeForEndpoint(v20, a3);
        volumeController_recomputeMainVolume(v17, a3);
        if (dword_1EB75DEA0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    else
    {
      v11 = 0;
    }

    if (MX_FeatureFlags_IsMuteEnabled())
    {
      LOBYTE(cf[0]) = 0;
      volumeController_GetMuteOfEndpointWithID(a1, a2, cf);
      if (LOBYTE(cf[0]))
      {
        volumeController_SetMuteOfEndpointWithID(a1, a2, 0);
      }
    }

    if (v20)
    {
      CFRelease(v20);
      v20 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v18)
  {
    CFRelease(v18);
    v18 = 0;
  }

  if (v19)
  {
    CFRelease(v19);
    v19 = 0;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t volumeController_GetVolumeForEndpointWithID(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  cf = 0;
  v9 = 0;
  volumeController_copyEndpointWithID(a1, a2, &v9);
  if (!v9)
  {
    return 0;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &cf);
  }

  VolumeForEndpoint = volumeController_getVolumeForEndpoint(v9, a3);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return VolumeForEndpoint;
}

uint64_t volumeController_IsVolumeControlSupportedForEndpointWithID(uint64_t a1, uint64_t a2, BOOL *a3)
{
  if (!a3)
  {
    return 4294949706;
  }

  v14 = 0;
  volumeController_copyEndpointWithID(a1, a2, &v14);
  v4 = *MEMORY[0x1E695E4C0];
  v13 = *MEMORY[0x1E695E4C0];
  v5 = MEMORY[0x1E695E480];
  if (!v14)
  {
LABEL_6:
    v8 = 0;
    *a3 = v4 == *MEMORY[0x1E695E4D0];
    goto LABEL_9;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(CMBaseObject, *MEMORY[0x1E6962340], *v5, &v13);
    if (v8)
    {
      goto LABEL_9;
    }

    v4 = v13;
    goto LABEL_6;
  }

  v8 = 4294954514;
LABEL_9:
  cf = 0;
  if (v14)
  {
    v9 = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(v9, *MEMORY[0x1E69621E8], *v5, &cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }
  }

  if (v13)
  {
    CFRelease(v13);
    v13 = 0;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v8;
}

uint64_t volumeController_GetVolumeControlTypeOfSubEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    cf = 0;
    volumeController_copyEndpointWithID(a1, a2, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return 4294949706;
}

uint64_t volumeController_SetVolumeOfSubEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MX_FeatureFlags_IsMuteEnabled())
  {
    volumeController_GetMuteOfSubEndpointWithID(a1, a2, a3);
  }

  return 0;
}

uint64_t volumeController_GetVolumeOfSubEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 4294949706;
  }

  cf = 0;
  volumeController_copyEndpointWithID(a1, a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t volumeController_GetVolumeOfRoomWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return 0;
  }

  else
  {
    return 4294949706;
  }
}

uint64_t volumeController_SetMuteOfRoutingContext(uint64_t a1, uint64_t a2, int a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_35;
  }

  result = MX_FeatureFlags_IsMuteEnabled();
  if (!result)
  {
    goto LABEL_42;
  }

  if (dword_1EB75DEA0)
  {
    LODWORD(theArray) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v29 = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a2, &v29);
  if (!v29)
  {
LABEL_35:
    result = 4294949706;
    goto LABEL_42;
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(v29, &theArray);
  if (theArray)
  {
    if (CFArrayGetCount(theArray) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      v8 = *MEMORY[0x1E69626B0];
      if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
      {
        *type = 0;
        v9 = *MEMORY[0x1E695E480];
        CMBaseObject = FigEndpointGetCMBaseObject();
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v11)
        {
          v11(CMBaseObject, *MEMORY[0x1E6962270], v9, type);
        }

        v12 = "Yes";
        if (!a3)
        {
          v12 = "No";
        }

        v27 = v12;
        v13 = MEMORY[0x1E695E4D0];
        if (!a3)
        {
          v13 = MEMORY[0x1E695E4C0];
        }

        v14 = *type;
        if (*type)
        {
          v15 = 0;
          v26 = *MEMORY[0x1E69621E8];
          v28 = *v13;
          while (v15 < CFArrayGetCount(v14))
          {
            v16 = CFArrayGetValueAtIndex(*type, v15);
            volumeController_setMuteForEndpoint(v16, a3);
            v32 = 0;
            v17 = FigEndpointGetCMBaseObject();
            v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v18)
            {
              v18(v17, v26, v9, &v32);
            }

            if (dword_1EB75DEA0)
            {
              v31 = 0;
              v30 = OS_LOG_TYPE_DEFAULT;
              v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v20 = v31;
              if (os_log_type_enabled(v19, v30))
              {
                v21 = v20;
              }

              else
              {
                v21 = v20 & 0xFFFFFFFE;
              }

              if (v21)
              {
                v22 = v32;
                EndpointManagerName = FigRoutingManagerGetEndpointManagerName(v16);
                v35 = 136315906;
                v36 = "volumeController_setMuteByUserForRoutingContext";
                v37 = 2114;
                v38 = v22;
                v39 = 2114;
                v40 = EndpointManagerName;
                v41 = 2082;
                v42 = v27;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            cf[0] = 0;
            FigVolumeControllerCopySharedController(cf);
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            volumeController_postNotificationWithPayload(cf[0], @"routingContextMutedByUserDidChange", Mutable);
            if (cf[0])
            {
              CFRelease(cf[0]);
              cf[0] = 0;
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            if (v32)
            {
              CFRelease(v32);
            }

            ++v15;
            v14 = *type;
            if (!*type)
            {
              goto LABEL_38;
            }
          }

          if (*type)
          {
            CFRelease(*type);
          }
        }
      }
    }

LABEL_38:
    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  result = v29;
  if (v29)
  {
    CFRelease(v29);
    result = 0;
  }

LABEL_42:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t volumeController_GetMuteOfRoutingContext(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v13 = 4294949706;
    goto LABEL_44;
  }

  if (!MX_FeatureFlags_IsMuteEnabled())
  {
    v13 = 0;
    goto LABEL_44;
  }

  v29 = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a2, &v29);
  if (v29)
  {
    theArray[0] = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpoints(v29, theArray);
    *cf = 0;
    if (theArray[0])
    {
      if (CFArrayGetCount(theArray[0]) >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], 0);
        v6 = *MEMORY[0x1E69626B0];
        if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
        {
          v30 = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v8)
          {
            goto LABEL_45;
          }

          v9 = *MEMORY[0x1E695E480];
          v8(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &v30);
          if (v30)
          {
            Count = CFArrayGetCount(v30);
            if (Count >= 1)
            {
              v11 = Count;
              v12 = 0;
              v13 = 0;
              v14 = *MEMORY[0x1E6962170];
              v15 = *MEMORY[0x1E695E4D0];
              do
              {
                v16 = CFArrayGetValueAtIndex(v30, v12);
                if (v16)
                {
                  v17 = CFRetain(v16);
                  if (v17)
                  {
                    v18 = FigEndpointGetCMBaseObject();
                    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v19)
                    {
                      v13 = v19(v18, v14, v9, cf);
                    }

                    else
                    {
                      v13 = 4294954514;
                    }
                  }

                  v20 = FigCFEqual();
                  if (v17)
                  {
                    v21 = v20 == 0;
                  }

                  else
                  {
                    v21 = 0;
                  }

                  if (v21)
                  {
                    CFRelease(v17);
                  }

                  else if (v20)
                  {
                    break;
                  }
                }

                ++v12;
              }

              while (v11 != v12);
LABEL_46:
              if (v30)
              {
                CFRelease(v30);
              }

              if (v13)
              {
                goto LABEL_29;
              }

              goto LABEL_28;
            }

LABEL_45:
            v13 = 0;
            goto LABEL_46;
          }
        }
      }
    }

LABEL_28:
    v22 = *MEMORY[0x1E695E4D0];
    v13 = 0;
    *a3 = FigCFEqual();
LABEL_29:
    if (theArray[0])
    {
      CFRelease(theArray[0]);
      theArray[0] = 0;
    }

    if (*cf)
    {
      CFRelease(*cf);
    }

    goto LABEL_33;
  }

  v13 = 4294949706;
LABEL_33:
  if (dword_1EB75DEA0)
  {
    LODWORD(v30) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v24 = v30;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
      v26 = "YES";
      *&cf[4] = "volumeController_GetMuteOfRoutingContext";
      *cf = 136315650;
      if (!a3)
      {
        v26 = "NO";
      }

      v32 = 2114;
      v33 = a2;
      v34 = 2082;
      v35 = v26;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v29)
  {
    CFRelease(v29);
  }

LABEL_44:
  v27 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t volumeController_SetMuteOfSubEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MX_FeatureFlags_IsMuteEnabled();
  if (result)
  {
    if (a3)
    {
      cf = 0;
      volumeController_copyEndpointWithID(a1, a2, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      return 0;
    }

    else
    {
      return 4294949706;
    }
  }

  return result;
}

uint64_t volumeController_GetMuteOfSubEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MX_FeatureFlags_IsMuteEnabled();
  if (result)
  {
    if (a3)
    {
      cf = 0;
      volumeController_copyEndpointWithID(a1, a2, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      return 0;
    }

    else
    {
      return 4294949706;
    }
  }

  return result;
}

uint64_t volumeController_CanSetMuteOfRoutingContext(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v29[16] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_25;
  }

  if (!MX_FeatureFlags_IsMuteEnabled())
  {
    v12 = 0;
    goto LABEL_41;
  }

  v28 = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a2, &v28);
  if (!v28)
  {
LABEL_25:
    v12 = 4294949706;
    goto LABEL_41;
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(v28, &theArray);
  cf = 0;
  if (theArray)
  {
    if (CFArrayGetCount(theArray) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      v6 = *MEMORY[0x1E69626B0];
      if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
      {
        v29[0] = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v8)
        {
          goto LABEL_28;
        }

        v9 = *MEMORY[0x1E695E480];
        v8(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], v29);
        if (v29[0])
        {
          Count = CFArrayGetCount(v29[0]);
          if (Count >= 1)
          {
            v11 = Count;
            v12 = 0;
            v13 = 0;
            v14 = *MEMORY[0x1E69621E0];
            v15 = *MEMORY[0x1E695E4D0];
            do
            {
              v16 = CFArrayGetValueAtIndex(v29[0], v13);
              if (v16)
              {
                v17 = CFRetain(v16);
                if (v17)
                {
                  v18 = FigEndpointGetCMBaseObject();
                  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v19)
                  {
                    v12 = v19(v18, v14, v9, &cf);
                  }

                  else
                  {
                    v12 = 4294954514;
                  }
                }

                v20 = FigCFEqual();
                if (v17)
                {
                  v21 = v20 == 0;
                }

                else
                {
                  v21 = 0;
                }

                if (v21)
                {
                  CFRelease(v17);
                }

                else if (v20)
                {
                  break;
                }
              }

              ++v13;
            }

            while (v11 != v13);
LABEL_29:
            if (v29[0])
            {
              CFRelease(v29[0]);
            }

            if (v12)
            {
              goto LABEL_33;
            }

            goto LABEL_32;
          }

LABEL_28:
          v12 = 0;
          goto LABEL_29;
        }
      }
    }
  }

LABEL_32:
  v22 = *MEMORY[0x1E695E4D0];
  v12 = 0;
  *a3 = FigCFEqual();
LABEL_33:
  if (dword_1EB75DEA0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v28)
  {
    CFRelease(v28);
  }

LABEL_41:
  v24 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t volumeController_CanSetMuteOfEndpointWithID(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  cf[22] = *MEMORY[0x1E69E9840];
  if (!MX_FeatureFlags_IsMuteEnabled())
  {
    v11 = 0;
    goto LABEL_24;
  }

  v19 = 0;
  cf[0] = 0;
  volumeController_copyEndpointWithID(a1, a2, cf);
  v6 = *MEMORY[0x1E69626A8];
  if (FigRoutingManagerIsEndpointOfType(cf[0]))
  {
    v18 = 0;
    if (!cf[0])
    {
      v11 = 4294949706;
      goto LABEL_24;
    }

    v7 = CFRetain(cf[0]);
    v8 = *MEMORY[0x1E695E480];
    if (!v7)
    {
      goto LABEL_7;
    }

    CMBaseObject = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v10)
    {
      v11 = 4294954514;
      goto LABEL_12;
    }

    v11 = v10(CMBaseObject, *MEMORY[0x1E69621E0], v8, &v18);
    if (!v11)
    {
LABEL_7:
      v12 = *MEMORY[0x1E695E4D0];
      v11 = 0;
      *a3 = FigCFEqual();
    }

LABEL_12:
    v13 = FigEndpointGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(v13, *MEMORY[0x1E69621E8], v8, &v19);
    }

    if (dword_1EB75DEA0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    goto LABEL_20;
  }

  v11 = 0;
LABEL_20:
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (v19)
  {
    CFRelease(v19);
  }

LABEL_24:
  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t volumeController_CanSetMuteOfSubEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MX_FeatureFlags_IsMuteEnabled();
  if (result)
  {
    if (a3)
    {
      cf = 0;
      volumeController_copyEndpointWithID(a1, a2, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      return 0;
    }

    else
    {
      return 4294949706;
    }
  }

  return result;
}

uint64_t volumeController_SetVolumeOfEndpointWithRoomID(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsMuteEnabled())
  {
    v5 = 0;
    volumeController_GetMuteOfEndpointWithID(a1, a2, &v5);
    if (v5)
    {
      volumeController_SetMuteOfEndpointWithID(a1, a2, 0);
    }
  }

  return 0;
}

uint64_t volumeController_GetVolumeOfEndpointWithRoomID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 4294949706;
  }

  cf = 0;
  volumeController_copyEndpointWithID(a1, a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t volumeController_setMainVolume(const void *a1, float a2)
{
  v83 = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v3 = 4294949706;
  v4 = a2 > 1.0 || a1 == 0;
  if (v4 || a2 < 0.0)
  {
    goto LABEL_87;
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(a1, &theArray);
  if (!theArray)
  {
    v3 = 0;
    goto LABEL_87;
  }

  if (CFArrayGetCount(theArray) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    v7 = *MEMORY[0x1E69626B0];
    if (!FigRoutingManagerIsEndpointOfType(ValueAtIndex) && !volumeController_isBluetoothSharingMainVolumeSupported(theArray))
    {
      v30 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
      CMBaseObject = FigEndpointGetCMBaseObject();
      v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v32)
      {
        v3 = v32(CMBaseObject, *MEMORY[0x1E69621C0], v30);
      }

      else
      {
        v3 = 4294954514;
      }

      if (v30)
      {
        CFRelease(v30);
      }

      goto LABEL_85;
    }

    CachedMainVolume = volumeController_getCachedMainVolume(a1);
    if (FVCUtilitiesIsVolumeDifferenceAboveThreshold(a2, CachedMainVolume))
    {
      volumeController_updateMainVolumeCache(a1, a2);
      v68 = 0;
      FigRoutingManagerContextUtilities_CopyPickedEndpoints(a1, &v68);
      if (v68)
      {
        if (CFArrayGetCount(v68) >= 1)
        {
          v9 = CFArrayGetValueAtIndex(v68, 0);
          if (FigRoutingManagerIsEndpointOfType(v9))
          {
            v10 = volumeController_getCachedMainVolume(a1);
            v67 = 0;
            v59 = *MEMORY[0x1E695E480];
            v11 = FigEndpointGetCMBaseObject();
            v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v12)
            {
              v12(v11, *MEMORY[0x1E6962270], v59, &v67);
            }

            if (v67)
            {
              Count = CFArrayGetCount(v67);
              if (Count >= 1)
              {
                v14 = Count;
                v15 = 0;
                v57 = *MEMORY[0x1E69620F8];
                v55 = *MEMORY[0x1E69621E8];
                do
                {
                  v16 = CFArrayGetValueAtIndex(v67, v15);
                  v17 = v16;
                  if (v16)
                  {
                    v18 = CFRetain(v16);
                  }

                  else
                  {
                    v18 = 0;
                  }

                  SubEndpointVolume = volumecontroller_getSubEndpointVolume(v18);
                  cf = 0;
                  v20 = FigEndpointGetCMBaseObject();
                  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v21)
                  {
                    v21(v20, v57, v59, &cf);
                  }

                  v65 = 0;
                  v22 = FigEndpointGetCMBaseObject();
                  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v23)
                  {
                    v23(v22, v55, v59, &v65);
                  }

                  v24 = v10;
                  if (v14 != 1)
                  {
                    v24 = volumeController_computeScaledSubEndpointVolume(a1, cf, CachedMainVolume, v10, SubEndpointVolume);
                  }

                  volumeController_setVolumeForEndpoint(v17, v24);
                  if (dword_1EB75DEA0)
                  {
                    v64 = 0;
                    type = OS_LOG_TYPE_DEFAULT;
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v26 = v64;
                    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                    {
                      v27 = v26;
                    }

                    else
                    {
                      v27 = v26 & 0xFFFFFFFE;
                    }

                    if (v27)
                    {
                      v28 = v65;
                      *&v29 = COERCE_DOUBLE(FigRoutingManagerGetEndpointManagerName(v18));
                      v69 = 136316674;
                      v70 = "volumeController_updateIndividualVolumes";
                      v71 = 2114;
                      v72 = v28;
                      v73 = 2114;
                      v74 = *&v29;
                      v75 = 2048;
                      v76 = SubEndpointVolume;
                      v77 = 2048;
                      v78 = v24;
                      v79 = 2048;
                      v80 = CachedMainVolume;
                      v81 = 2048;
                      v82 = v10;
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                    cf = 0;
                  }

                  if (v65)
                  {
                    CFRelease(v65);
                    v65 = 0;
                  }

                  if (v18)
                  {
                    CFRelease(v18);
                  }

                  ++v15;
                }

                while (v14 != v15);
              }

              if (v67)
              {
                CFRelease(v67);
              }
            }
          }

          else if (volumeController_isBluetoothSharingMainVolumeSupported(v68))
          {
            v33 = volumeController_getCachedMainVolume(a1);
            if (!v68)
            {
              goto LABEL_83;
            }

            v34 = v33;
            v35 = CFArrayGetCount(v68);
            if (v35 < 1)
            {
              v37 = 0;
              v39 = 0.0;
            }

            else
            {
              v36 = v35;
              v37 = 0;
              v38 = 0;
              v58 = *MEMORY[0x1E69620F8];
              v60 = *MEMORY[0x1E695E480];
              v56 = *MEMORY[0x1E69621E8];
              v39 = 0.0;
              do
              {
                v40 = CFArrayGetValueAtIndex(v68, v38);
                v41 = v40;
                if (v40)
                {
                  v42 = CFRetain(v40);
                }

                else
                {
                  v42 = 0;
                }

                v67 = 0;
                v43 = FigEndpointGetCMBaseObject();
                v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v44)
                {
                  v44(v43, v58, v60, &v67);
                }

                LODWORD(v65) = 0;
                volumeController_getVolumeForEndpoint(v41, &v65);
                v45 = volumeController_computeScaledSubEndpointVolume(a1, v67, CachedMainVolume, v34, *&v65);
                v46 = v45;
                if (v45 > v39)
                {
                  v37 = v38;
                  v39 = v45;
                }

                volumeController_setVolumeForEndpoint(v41, v45);
                cf = 0;
                v47 = FigEndpointGetCMBaseObject();
                v48 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v48)
                {
                  v48(v47, v56, v60, &cf);
                }

                if (dword_1EB75DEA0)
                {
                  v64 = 0;
                  type = OS_LOG_TYPE_DEFAULT;
                  v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v50 = v64;
                  if (os_log_type_enabled(v49, type))
                  {
                    v51 = v50;
                  }

                  else
                  {
                    v51 = v50 & 0xFFFFFFFE;
                  }

                  if (v51)
                  {
                    v69 = 136316418;
                    v70 = "volumeController_updateIndividualVolumes";
                    v71 = 2114;
                    v72 = cf;
                    v73 = 2048;
                    v74 = *&v65;
                    v75 = 2048;
                    v76 = v46;
                    v77 = 2048;
                    v78 = CachedMainVolume;
                    v79 = 2048;
                    v80 = v34;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                if (v67)
                {
                  CFRelease(v67);
                  v67 = 0;
                }

                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                if (v42)
                {
                  CFRelease(v42);
                }

                ++v38;
              }

              while (v36 != v38);
            }

            if (!v68)
            {
              goto LABEL_83;
            }

            v52 = CFArrayGetValueAtIndex(v68, v37);
            volumeController_setVolumeForEndpoint(v52, v39);
          }
        }

        if (v68)
        {
          CFRelease(v68);
        }
      }

LABEL_83:
      volumeController_postMainVolumeDidChangeNotification();
    }
  }

  v3 = 0;
LABEL_85:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_87:
  v53 = *MEMORY[0x1E69E9840];
  return v3;
}

float volumecontroller_getSubEndpointVolume(uint64_t a1)
{
  valuePtr = -1.0;
  if (!a1)
  {
    return -1.0;
  }

  number = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, *MEMORY[0x1E6962338], *MEMORY[0x1E695E480], &number);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberFloat32Type, &valuePtr);
      if (number)
      {
        CFRelease(number);
      }
    }
  }

  return valuePtr;
}

float volumeController_computeScaledSubEndpointVolume(uint64_t a1, uint64_t a2, float a3, float a4, float a5)
{
  MainVolumeScaleFactorForEndpointID = 1.0;
  if (a3 >= a5)
  {
    if (FVCUtilitiesIsFloatEquivalentToZero(a3))
    {
      MainVolumeScaleFactorForEndpointID = 1.0;
    }

    else
    {
      MainVolumeScaleFactorForEndpointID = a5 / a3;
    }
  }

  if (FVCUtilitiesIsFloatEquivalentToZero(a4) && !FVCUtilitiesIsFloatEquivalentToZero(a3))
  {
    FigRoutingManagerContextUtilities_SetMainVolumeScaleFactorForEndpointID(a1, a2, MainVolumeScaleFactorForEndpointID);
  }

  else if (FVCUtilitiesIsFloatEquivalentToZero(a3) && !FVCUtilitiesIsFloatEquivalentToZero(a4))
  {
    MainVolumeScaleFactorForEndpointID = FigRoutingManagerContextUtilities_GetMainVolumeScaleFactorForEndpointID(a1, a2);
  }

  return MainVolumeScaleFactorForEndpointID * a4;
}

uint64_t volumeController_setVolumeForEndpoint(const void *a1, float a2)
{
  valuePtr = a2;
  v2 = 4294949706;
  v3 = a2 > 1.0 || a1 == 0;
  if (!v3 && a2 >= 0.0)
  {
    v5 = CFRetain(a1);
    v6 = *MEMORY[0x1E695E480];
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v2 = v9(CMBaseObject, *MEMORY[0x1E6962338], v7);
    }

    else
    {
      v2 = 4294954514;
    }

    v17 = 0;
    FigRoutingManagerIsClusterLocalEndpoint(a1);
    v10 = *MEMORY[0x1E69620F8];
    v11 = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(v11, v10, v6, &v17);
    }

    volumeController_postEndpointVolumeDidChangeNotification();
    cf = 0;
    v13 = FigEndpointGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(v13, *MEMORY[0x1E69621E8], v6, &cf);
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

    if (v7)
    {
      CFRelease(v7);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  return v2;
}

uint64_t volumeController_isAirPlayMainVolumeSupported()
{
  theArray = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = *MEMORY[0x1E695E480];
  v1(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v4 = Count;
    v5 = 0;
    v6 = *MEMORY[0x1E695E4C0];
    v7 = *MEMORY[0x1E6962340];
    v8 = *MEMORY[0x1E695E4D0];
    while (1)
    {
      CFArrayGetValueAtIndex(theArray, v5);
      cf = v6;
      v9 = FigEndpointGetCMBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(v9, v7, v2, &cf);
      }

      if (cf == v8)
      {
        break;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v4 == ++v5)
      {
        goto LABEL_11;
      }
    }

    if (v8)
    {
      CFRelease(cf);
    }

    v11 = 1;
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v11;
}

uint64_t volumeController_getAirPlayMainVolumeControlType()
{
  theArray = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v1)
  {
    goto LABEL_18;
  }

  v2 = *MEMORY[0x1E695E480];
  v1(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_18:
    SInt64 = 0;
    goto LABEL_19;
  }

  v4 = Count;
  SInt64 = 0;
  v6 = 0;
  v7 = *MEMORY[0x1E6962348];
  while (1)
  {
    CFArrayGetValueAtIndex(theArray, v6);
    cf = 0;
    v8 = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v9)
    {
      v11 = cf;
LABEL_14:
      if (v11)
      {
        CFRelease(v11);
      }

      goto LABEL_16;
    }

    v10 = v9(v8, v7, v2, &cf);
    v11 = cf;
    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = cf == 0;
    }

    if (v12)
    {
      goto LABEL_14;
    }

    SInt64 = FigCFNumberGetSInt64();
    if (SInt64 == 3)
    {
      break;
    }

    if (cf)
    {
      CFRelease(cf);
    }

LABEL_16:
    if (v4 == ++v6)
    {
      goto LABEL_19;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  SInt64 = 3;
LABEL_19:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return SInt64;
}

uint64_t volumeController_doesEndpointHaveSameID(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v5 = *(*(VTable + 8) + 48);
    if (v5)
    {
      v6 = *(VTable + 8) + 48;
      v5(CMBaseObject, *MEMORY[0x1E69620F8], *MEMORY[0x1E695E480], &cf);
    }

    v2 = FigCFEqual();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v2;
}

uint64_t volumeController_setMuteForEndpoint(const void *a1, int a2)
{
  v19[22] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = MEMORY[0x1E695E4D0];
    if (!a2)
    {
      v3 = MEMORY[0x1E695E4C0];
    }

    v4 = *v3;
    v5 = CFRetain(a1);
    if (v5)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v7)
      {
        v8 = v7(CMBaseObject, *MEMORY[0x1E6962170], v4);
      }

      else
      {
        v8 = 4294954514;
      }
    }

    else
    {
      v8 = 0;
    }

    v19[0] = 0;
    FigRoutingManagerIsClusterLocalEndpoint(a1);
    v9 = *MEMORY[0x1E69620F8];
    v10 = *MEMORY[0x1E695E480];
    v11 = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(v11, v9, v10, v19);
    }

    volumeController_postEndpointMuteByUserDidChangeNotification();
    cf = 0;
    v13 = FigEndpointGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(v13, *MEMORY[0x1E69621E8], v10, &cf);
    }

    if (dword_1EB75DEA0)
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

    if (v5)
    {
      CFRelease(v5);
    }

    if (v19[0])
    {
      CFRelease(v19[0]);
    }
  }

  else
  {
    v8 = 4294949706;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t FigRoutingManagerIsEndpointOfSubtype(uint64_t a1)
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
    v2(CMBaseObject, *MEMORY[0x1E6962278], *MEMORY[0x1E695E480], &cf);
  }

  v3 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

BOOL FigRoutingManagerIsClusterEndpoint(uint64_t a1)
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
    v2(CMBaseObject, *MEMORY[0x1E6962278], *MEMORY[0x1E695E480], &cf);
  }

  v3 = *MEMORY[0x1E6962628];
  if (FigCFEqual() || (v4 = *MEMORY[0x1E6962620], FigCFEqual()))
  {
    v5 = 1;
  }

  else
  {
    v7 = *MEMORY[0x1E6962618];
    v5 = FigCFEqual() != 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

const __CFArray *FigRoutingManagerDoEndpointsContainLocalAirPlayEndpoint(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v3 = Count;
      v4 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
        if (FigRoutingManagerIsEndpointNonRemoteControlLocalAirPlay(ValueAtIndex))
        {
          break;
        }

        if (v3 == ++v4)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

const __CFArray *FigRoutingManagerDoEndpointsContainOdeonEndpoint(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v3 = Count;
      v4 = 0;
      v5 = *MEMORY[0x1E6962278];
      v6 = *MEMORY[0x1E695E480];
      v7 = *MEMORY[0x1E6962620];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
        cf = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        VTable = CMBaseObjectGetVTable();
        v11 = *(*(VTable + 8) + 48);
        if (v11)
        {
          v12 = *(VTable + 8) + 48;
          v11(CMBaseObject, v5, v6, &cf);
        }

        if (FigRoutingManagerIsEndpointLocal(ValueAtIndex) && FigCFEqual())
        {
          break;
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v3 == ++v4)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

BOOL FigRoutingManagerIsClusterLocalEndpoint(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v15 = *MEMORY[0x1E695E4C0];
  v1 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E6962158], v1, &v15);
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

  if (v15 != *MEMORY[0x1E695E4D0])
  {
    v7 = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = *MEMORY[0x1E6962628];
  v9 = FigCFEqual();
  v6 = cf;
  if (v9 || (v10 = *MEMORY[0x1E6962620], v11 = FigCFEqual(), v6 = cf, v11))
  {
    v7 = 1;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = *MEMORY[0x1E6962618];
  v7 = FigCFEqual() != 0;
  v6 = cf;
  if (cf)
  {
LABEL_14:
    CFRelease(v6);
    cf = 0;
  }

LABEL_15:
  if (v15)
  {
    CFRelease(v15);
  }

  return v7;
}

BOOL FigRoutingManagerIsLocalHomeTheaterEndpoint(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  cf = *MEMORY[0x1E695E4C0];
  v1 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E6962158], v1, &cf);
  }

  v10 = 0;
  v4 = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, *MEMORY[0x1E6962278], v1, &v10);
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  if (cf != *MEMORY[0x1E695E4D0])
  {
    v7 = 0;
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = *MEMORY[0x1E6962620];
  v7 = FigCFEqual() != 0;
  v6 = v10;
  if (v10)
  {
LABEL_9:
    CFRelease(v6);
    v10 = 0;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

BOOL FigRoutingManagerIsEndpointWHAGroupable(uint64_t a1)
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
    v4(CMBaseObject, *MEMORY[0x1E6962190], *MEMORY[0x1E695E480], &v8);
    v1 = v8;
  }

  v6 = v1 == *MEMORY[0x1E695E4D0];
  if (v1)
  {
    CFRelease(v1);
  }

  return v6;
}

BOOL FigRoutingManagerIsEndpointLowLatencyAirPlay(uint64_t a1)
{
  v1 = *MEMORY[0x1E69626D8];
  if (!FigRoutingManagerIsEndpointOfType(a1))
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, 0x1F289CEF0, *MEMORY[0x1E695E480], &cf);
    v4 = cf;
  }

  else
  {
    v4 = 0;
  }

  v5 = CMSMVAUtility_GetPortFromCFNumber(v4) == 1885433964;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

BOOL FigRoutingManagerIsEndpointActivated(uint64_t a1)
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
    v4(CMBaseObject, *MEMORY[0x1E6962100], *MEMORY[0x1E695E480], &v8);
    v1 = v8;
  }

  v6 = v1 == *MEMORY[0x1E695E4D0];
  if (v1)
  {
    CFRelease(v1);
  }

  return v6;
}

uint64_t FigRoutingManagerCopyRoutingContextUUIDForEndpoint(uint64_t a1)
{
  v14 = 0;
  if (FigRoutingManagerIsEndpointWHAGroupable(a1) && (v2 = *MEMORY[0x1E69626D8], FigRoutingManagerIsEndpointOfType(a1)))
  {
    v3 = FigRoutingManagerCopyLocalAirPlayEndpoint();
    if (v3)
    {
      v4 = v3;
      CMBaseObject = FigEndpointGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v7 = *(*(VTable + 8) + 48);
      if (v7)
      {
        v8 = *(VTable + 8) + 48;
        v7(CMBaseObject, *MEMORY[0x1E6962238], *MEMORY[0x1E695E480], &v14);
      }

      CFRelease(v4);
    }
  }

  else if (a1)
  {
    v9 = FigEndpointGetCMBaseObject();
    v10 = CMBaseObjectGetVTable();
    v11 = *(*(v10 + 8) + 48);
    if (v11)
    {
      v12 = *(v10 + 8) + 48;
      v11(v9, *MEMORY[0x1E6962238], *MEMORY[0x1E695E480], &v14);
    }
  }

  return v14;
}

BOOL FigRoutingManagerIsEndpointBluetoothShareable(uint64_t a1)
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
    v4(CMBaseObject, *MEMORY[0x1E6962110], *MEMORY[0x1E695E480], &v8);
    v1 = v8;
  }

  v6 = v1 == *MEMORY[0x1E695E4D0];
  if (v1)
  {
    CFRelease(v1);
  }

  return v6;
}

BOOL FigRoutingManagerAreAllEndpointsBluetoothShareable(const __CFArray *a1)
{
  cf[21] = *MEMORY[0x1E69E9840];
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v3 = Count;
    v4 = 0;
    v12 = *MEMORY[0x1E69621E8];
    v5 = *MEMORY[0x1E695E480];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      if (ValueAtIndex)
      {
        cf[0] = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v8)
        {
          v8(CMBaseObject, v12, v5, cf);
        }

        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }

      result = FigRoutingManagerIsEndpointBluetoothShareable(ValueAtIndex);
      if (!result)
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    result = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigRoutingManagerGetEndpointManagerName(uint64_t a1)
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
    v2(CMBaseObject, *MEMORY[0x1E69622F8], *MEMORY[0x1E695E480], &cf);
  }

  v3 = *MEMORY[0x1E69626C8];
  if (FigCFEqual())
  {
    v4 = MEMORY[0x1E69618E8];
LABEL_15:
    v5 = *v4;
    goto LABEL_16;
  }

  v6 = *MEMORY[0x1E69626B8];
  if (FigCFEqual())
  {
    v4 = MEMORY[0x1E69618D8];
    goto LABEL_15;
  }

  v7 = *MEMORY[0x1E69626A8];
  if (FigCFEqual())
  {
    v4 = MEMORY[0x1E69618D0];
    goto LABEL_15;
  }

  v8 = *MEMORY[0x1E69626C0];
  if (FigCFEqual())
  {
    v4 = MEMORY[0x1E69618E0];
    goto LABEL_15;
  }

  v9 = *MEMORY[0x1E69626D8];
  if (FigCFEqual())
  {
    v4 = MEMORY[0x1E69618F8];
    goto LABEL_15;
  }

  v11 = *MEMORY[0x1E69626D0];
  v12 = FigCFEqual();
  v13 = *MEMORY[0x1E69618F0];
  if (v12)
  {
    v5 = *MEMORY[0x1E69618F0];
  }

  else
  {
    v5 = 0;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

CFMutableDictionaryRef FigRoutingManagerCreateEndpointDelegateContext()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  return Mutable;
}

uint64_t FigRoutingManagerRemoveCachedDelegateContext(uint64_t a1)
{
  SharedManager = FigRoutingManagerGetSharedManager();
  v3 = SharedManager[7];
  FigSimpleMutexLock();
  v4 = SharedManager[8];
  if (v4)
  {
    CFDictionaryGetValue(*(v4 + 2), @"EndpointDelegateContextKey_RoutingContextUUID");
    v5 = 0;
    while (1)
    {
      v6 = v4;
      if (*(v4 + 1) == a1)
      {
        if (FigCFEqual())
        {
          break;
        }
      }

      v4 = *v4;
      v5 = v6;
      if (!*v6)
      {
        goto LABEL_17;
      }
    }

    v7 = *v4;
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = (SharedManager + 8);
    }

    *v8 = v7;
    if (!v7)
    {
      SharedManager[9] = v5;
    }

    v9 = *(v4 + 1);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = *(v4 + 2);
    if (v10)
    {
      CFRelease(v10);
    }

    free(v4);
  }

LABEL_17:
  v11 = SharedManager[7];

  return FigSimpleMutexUnlock();
}

uint64_t FigRoutingManagerIsEndpointPresentInAggregate(const void *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    theArray = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v5)
    {
      goto LABEL_9;
    }

    v5(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
    if (!theArray)
    {
      return 0;
    }

    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      while (CFArrayGetValueAtIndex(theArray, v8) != a1)
      {
        if (v7 == ++v8)
        {
          goto LABEL_9;
        }
      }

      v2 = 1;
    }

    else
    {
LABEL_9:
      v2 = 0;
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  return v2;
}

CFMutableDictionaryRef FigRoutingManagerCreateEndpointActivateOptions(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  Mutable = 0;
  cf[16] = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    goto LABEL_40;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
  v8 = MEMORY[0x1E695E4D0];
  v9 = MEMORY[0x1E695E4C0];
  if (BooleanIfPresent)
  {
    v10 = *MEMORY[0x1E6961680];
    v11 = *MEMORY[0x1E695E4C0];
    FigCFDictionarySetValue();
  }

  if (FigCFDictionaryGetBooleanIfPresent())
  {
    v12 = *MEMORY[0x1E6961660];
    v13 = *v9;
    FigCFDictionarySetValue();
  }

  if (FigCFDictionaryGetValue())
  {
    FigCFDictionarySetValue();
  }

  v14 = FigCFDictionaryGetBooleanIfPresent();
  v15 = *v8;
  v16 = *v9;
  if (v14)
  {
    v17 = *MEMORY[0x1E6961688];
    FigCFDictionarySetValue();
  }

  FigCFDictionaryGetBooleanIfPresent();
  IsCrossfadePlaybackSupported = FigRoutingManagerIsCrossfadePlaybackSupported();
  v19 = *MEMORY[0x1E6961638];
  FigCFDictionarySetValue();
  if (IsCrossfadePlaybackSupported)
  {
    CMSMUtility_GetFadeInDurationForPlaybackHandoff();
    Float32 = FigCFNumberCreateFloat32();
    v21 = *MEMORY[0x1E6961648];
    FigCFDictionarySetValue();
    if (Float32)
    {
      CFRelease(Float32);
    }
  }

  v22 = FigRoutingManagerContextUtilities_CopyHijackID(a2);
  v23 = *MEMORY[0x1E6961658];
  FigCFDictionarySetValue();
  v24 = *MEMORY[0x1E6961678];
  FigCFDictionarySetValue();
  ContextType = FigRoutingManagerContextUtilities_GetContextType(a2);
  if (ContextType <= 3)
  {
    switch(ContextType)
    {
      case 1:
        v36 = *MEMORY[0x1E69626A8];
        if (!FigRoutingManagerIsEndpointOfType(a1))
        {
          v37 = *MEMORY[0x1E69626B0];
          if (!FigRoutingManagerIsEndpointOfType(a1))
          {
            v49 = *MEMORY[0x1E69626B8];
            if (FigRoutingManagerIsEndpointOfType(a1))
            {
              v50 = *MEMORY[0x1E6961640];
              FigCFDictionarySetValue();
              cf[0] = 0;
              FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a2, 0, cf);
              if (cf[0])
              {
                CFRelease(cf[0]);
              }
            }

            goto LABEL_38;
          }
        }

        break;
      case 2:
        v43 = *MEMORY[0x1E69626A8];
        if (!FigRoutingManagerIsEndpointOfType(a1))
        {
          goto LABEL_38;
        }

        v44 = *MEMORY[0x1E6961670];
        v45 = *MEMORY[0x1E6961F50];
        FigCFDictionarySetValue();
        v46 = *MEMORY[0x1E6961668];
        goto LABEL_37;
      case 3:
        v28 = *MEMORY[0x1E69626A8];
        if (!FigRoutingManagerIsEndpointOfType(a1))
        {
          v29 = *MEMORY[0x1E69626B0];
          if (!FigRoutingManagerIsEndpointOfType(a1))
          {
            goto LABEL_38;
          }
        }

        break;
      default:
        goto LABEL_38;
    }

    v30 = *MEMORY[0x1E6961670];
    v31 = *MEMORY[0x1E6961F48];
    FigCFDictionarySetValue();
    goto LABEL_38;
  }

  if ((ContextType - 4) < 2)
  {
    v32 = *MEMORY[0x1E69626A8];
    if (FigRoutingManagerIsEndpointOfType(a1) || (v33 = *MEMORY[0x1E69626B0], FigRoutingManagerIsEndpointOfType(a1)))
    {
      v34 = *MEMORY[0x1E6961670];
      v35 = *MEMORY[0x1E6961F48];
      goto LABEL_37;
    }
  }

  else if (ContextType == 6)
  {
    v38 = *MEMORY[0x1E69626A8];
    if (FigRoutingManagerIsEndpointOfType(a1))
    {
      v39 = *MEMORY[0x1E6961670];
      v40 = *MEMORY[0x1E6961F50];
      FigCFDictionarySetValue();
      v41 = *MEMORY[0x1E6961668];
      FigCFDictionarySetValue();
      if (a3)
      {
        CFDictionaryGetValue(a3, @"clientPID");
        v42 = *MEMORY[0x1E6961630];
        goto LABEL_37;
      }
    }
  }

  else if (ContextType == 7)
  {
    v26 = *MEMORY[0x1E69626A8];
    if (FigRoutingManagerIsEndpointOfType(a1))
    {
      v27 = *MEMORY[0x1E6961650];
LABEL_37:
      FigCFDictionarySetValue();
    }
  }

LABEL_38:
  if (v22)
  {
    CFRelease(v22);
  }

LABEL_40:
  v47 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t FigRoutingManagerCreateEndpointActivateCompletionContext(const void *a1, const void *a2, const void *a3, const void *a4, void *a5)
{
  if (!a5)
  {
    return 4294954296;
  }

  v10 = malloc_type_calloc(1uLL, 0x28uLL, 0x600407DD51EA1uLL);
  if (!v10)
  {
    return 4294954295;
  }

  v11 = v10;
  if (a4)
  {
    v12 = CFRetain(a4);
  }

  else
  {
    v12 = 0;
  }

  v11[3] = v12;
  if (a1)
  {
    v14 = CFRetain(a1);
  }

  else
  {
    v14 = 0;
  }

  *v11 = v14;
  if (a2)
  {
    v15 = CFRetain(a2);
  }

  else
  {
    v15 = 0;
  }

  v11[1] = v15;
  if (a3)
  {
    v16 = CFRetain(a3);
  }

  else
  {
    v16 = 0;
  }

  v11[2] = v16;
  v17 = objc_alloc_init(MEMORY[0x1E695DF00]);
  result = 0;
  v11[4] = v17;
  *a5 = v11;
  return result;
}

void FigRoutingManagerDestroyEndpointActivateCompletionContext(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[4];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

uint64_t FigRoutingManagerEndpointActivateWithCompletionCallback(const void *a1, uint64_t a2, const __CFDictionary *a3, void (*a4)(void, uint64_t, void, void, uint64_t *), uint64_t *a5)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v24 = 0;
  if (a1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &v24);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    v13 = *MEMORY[0x1E69626C0];
    if (FigRoutingManagerIsEndpointOfType(a1))
    {
      FigRoutingManagerSetupEndpointCentralForCarPlay(a1);
    }

    else
    {
      v15 = *MEMORY[0x1E69626A8];
      if (FigRoutingManagerIsEndpointOfType(a1) || (v16 = *MEMORY[0x1E69626C8], FigRoutingManagerIsEndpointOfType(a1)))
      {
        if (a5)
        {
          v17 = *a5;
          v18 = a5[1];
        }

        else
        {
          v17 = 0;
          v18 = 0;
        }

        cf[0] = 0;
        v19 = FigEndpointGetCMBaseObject();
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v20)
        {
          (v20)(v19, *MEMORY[0x1E69620B8], *MEMORY[0x1E695E480], cf);
          v20 = cf[0];
        }

        FigRoutingManagerSetMirroringModeOnBKSDisplayServices(a3, v17, v18, v20 == *MEMORY[0x1E695E4D0]);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }
    }

    v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v21)
    {
      v14 = v21(a1, a2, a3, a4, a5);
    }

    else
    {
      v14 = 4294954514;
    }
  }

  else
  {
    if (a4)
    {
      a4(0, a2, 0, 0, a5);
    }

    v14 = 0;
  }

  if (v24)
  {
    CFRelease(v24);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

__CFDictionary *FigRoutingManagerCreateEndpointDeactivateOptions(uint64_t a1, uint64_t a2)
{
  Mutable = 0;
  if (a1 && a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
    v4 = *MEMORY[0x1E695E4D0];
    if (BooleanIfPresent)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E69617E0], *MEMORY[0x1E695E4C0]);
    }

    v5 = *MEMORY[0x1E69617F0];
    FigCFDictionarySetValue();
    v6 = *MEMORY[0x1E69617E8];
    v7 = *MEMORY[0x1E69617F8];
    FigCFDictionarySetValue();
    IsCrossfadePlaybackSupported = FigRoutingManagerIsCrossfadePlaybackSupported();
    v9 = *MEMORY[0x1E69617D0];
    FigCFDictionarySetValue();
    if (IsCrossfadePlaybackSupported)
    {
      CMSMUtility_GetFadeOutDurationForPlaybackHandoff();
      Float32 = FigCFNumberCreateFloat32();
      v11 = *MEMORY[0x1E69617D8];
      FigCFDictionarySetValue();
      if (Float32)
      {
        CFRelease(Float32);
      }
    }
  }

  return Mutable;
}

uint64_t FigRoutingManagerCreateEndpointDeactivateCompletionContext(const void *a1, void *a2)
{
  if (!a2)
  {
    return 4294954296;
  }

  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x60040CF05A765uLL);
  if (!v4)
  {
    return 4294954295;
  }

  v5 = v4;
  if (a1)
  {
    v6 = CFRetain(a1);
  }

  else
  {
    v6 = 0;
  }

  *v5 = v6;
  v8 = objc_alloc_init(MEMORY[0x1E695DF00]);
  result = 0;
  v5[2] = v8;
  *a2 = v5;
  return result;
}

void FigRoutingManagerDestroyEndpointDeactivateCompletionContext(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

uint64_t FigRoutingManagerEndpointDeactivateWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, void, void, uint64_t), uint64_t a5)
{
  cf[20] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  if (a1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], cf);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    v13 = *MEMORY[0x1E69626A8];
    if (FigRoutingManagerIsEndpointOfType(a1))
    {
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v14)
      {
        v14(a1, 0);
      }
    }

    v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v15)
    {
      v16 = v15(a1, a3, a4, a5);
    }

    else
    {
      v16 = 4294954514;
    }
  }

  else
  {
    if (a4)
    {
      a4(0, a2, 0, 0, a5);
    }

    v16 = 0;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

CFMutableDictionaryRef FigRoutingManagerCreateSubEndpointAddOptions(uint64_t a1, uint64_t a2)
{
  Mutable = 0;
  if (a1 && a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (FigCFDictionaryGetBooleanIfPresent())
    {
      v4 = *MEMORY[0x1E6961680];
      v5 = *MEMORY[0x1E695E4C0];
      FigCFDictionarySetValue();
    }

    if (FigCFDictionaryGetValue())
    {
      FigCFDictionarySetValue();
    }

    v6 = *MEMORY[0x1E6961678];
    FigCFDictionarySetValue();
    v7 = FigRoutingManagerContextUtilities_CopyHijackID(a2);
    v8 = *MEMORY[0x1E6961658];
    FigCFDictionarySetValue();
    if (v7)
    {
      CFRelease(v7);
    }
  }

  return Mutable;
}

uint64_t FigRoutingManagerCreateAggregateAddEndpointCompletionContext(const void *a1, const void *a2, const void *a3, void *a4)
{
  if (!a4)
  {
    return 4294954296;
  }

  v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x60040902580DDuLL);
  if (!v8)
  {
    return 4294954295;
  }

  v9 = v8;
  if (a1)
  {
    v10 = CFRetain(a1);
  }

  else
  {
    v10 = 0;
  }

  *v9 = v10;
  if (a2)
  {
    v12 = CFRetain(a2);
  }

  else
  {
    v12 = 0;
  }

  v9[1] = v12;
  if (a3)
  {
    v13 = CFRetain(a3);
  }

  else
  {
    v13 = 0;
  }

  v9[2] = v13;
  v14 = objc_alloc_init(MEMORY[0x1E695DF00]);
  result = 0;
  v9[3] = v14;
  *a4 = v9;
  return result;
}

void FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[3];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

uint64_t FigRoutingManagerAggregateAddLocalAirPlayEndpoint(const void *a1, void *a2)
{
  v22[20] = *MEMORY[0x1E69E9840];
  v22[0] = a2;
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled() || a2)
  {
    v5 = FigRoutingManagerCopyLocalAirPlayEndpoint();
    if (!v5)
    {
      if (dword_1EB75DF20)
      {
        LODWORD(v21) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_3;
    }

    v6 = v5;
    if (MX_FeatureFlags_IsAirPlayDaemonEnabled() && !a2)
    {
      if (dword_1EB75DF20)
      {
        LODWORD(v21) = 0;
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerCreateAndActivateAggregateEndpointForContext(a1);
      FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a1, v22);
      v9 = v22[0];
    }

    if (MX_FeatureFlags_IsAirPlayDaemonEnabled() && !FigRoutingManagerIsEndpointActivated(v22[0]))
    {
      if (dword_1EB75DF20)
      {
        LODWORD(v21) = 0;
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerActivateEndpoint(v22[0], a1, 0, 0);
    }

    v11 = v22[0];
    if (!v22[0] || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
    {
      v11 = 0;
    }

    if (!FigRoutingManagerIsEndpointPresentInAggregate(v6, v11))
    {
      if (FigRoutingManagerAggregateRemoveLocalAirPlayEndpoint())
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (FigRoutingManagerIsClusterLocalEndpoint(v6) && FigRoutingContextUtilities_IsFollowingAnotherContext(a1))
      {
        if (dword_1EB75DF20)
        {
          v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingContextUtilities_UnfollowUUIDFromLeader(a1, @"configUpdateReasonEndedSuccess");
      }

      v21 = 0;
      FigRoutingManagerCreateAggregateAddEndpointCompletionContext(a1, 0, 0, &v21);
      v14 = v22[0];
      if (!v22[0] || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
      {
        v14 = 0;
      }

      v15 = v21;
      v16 = *(*(CMBaseObjectGetVTable() + 32) + 8);
      if (!v16 || (v17 = v16(v14, v6, 0, FigRoutingManagerAggregateAddEndpointCompletionCallback, v15), v17 == -12782))
      {
        FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(v21);
        v4 = 4294954514;
        goto LABEL_35;
      }

      v4 = v17;
      if (v17 || !dword_1EB75DF20)
      {
        goto LABEL_35;
      }

      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = 0;
LABEL_35:
    CFRelease(v6);
    goto LABEL_36;
  }

LABEL_3:
  v4 = 0;
LABEL_36:
  v18 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t FigRoutingManagerAggregateRemoveLocalAirPlayEndpoint()
{
  v13[20] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(v13);
  cf = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(v13[0], &cf);
  theArray = 0;
  if (cf)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v1)
    {
      v1(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
    }
  }

  v2 = 0;
  do
  {
    Count = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    if (v2 >= Count)
    {
      v7 = 0;
      goto LABEL_16;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2++);
  }

  while (!FigRoutingManagerIsEndpointLocal(ValueAtIndex));
  v5 = cf;
  if (!cf || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v5 = 0;
  }

  v6 = FigRoutingManagerRemoveEndpointFromAggregate(v5, ValueAtIndex, v13[0], 0, 0, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
  v7 = 1;
  if (!v6 && dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    v7 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_16:
  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v13[0])
  {
    CFRelease(v13[0]);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

void FigRoutingManagerAggregateAddEndpointCompletionCallback(const void *a1, CFTypeRef cf, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v29 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    CFRetain(cf);
    if (a1)
    {
      CFRetain(a1);
    }

    if (*a6)
    {
      v12 = CFRetain(*a6);
    }

    else
    {
      v12 = 0;
    }

    v14 = *(a6 + 8);
    if (v14)
    {
      v15 = CFRetain(v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a6 + 16);
    if (v16)
    {
      v17 = CFRetain(v16);
    }

    else
    {
      v17 = 0;
    }

    [*(a6 + 24) timeIntervalSinceNow];
    v19 = fabs(v18) * 1000.0;
    SharedManager = FigRoutingManagerGetSharedManager();
    v21 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v22 = *(SharedManager + 1);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __FigRoutingManagerAggregateAddEndpointCompletionCallback_block_invoke;
    v24[3] = &unk_1E7AEAAC8;
    v24[4] = v21;
    v24[5] = cf;
    v25 = a5;
    v24[6] = a4;
    v24[7] = a3;
    v24[8] = v12;
    v24[9] = v15;
    v26 = v19;
    v24[10] = a1;
    v24[11] = v17;
    MXDispatchAsync("FigRoutingManagerAggregateAddEndpointCompletionCallback", "FigRoutingManager_EndpointHelpers.m", 1853, 0, 0, v22, v24);
    FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(a6);
  }

  else
  {
    v28 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t FigRoutingManagerRemoveEndpointFromAggregate(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, uint64_t a6)
{
  v29[19] = *MEMORY[0x1E69E9840];
  FigEndpoint = FigEndpointAggregateGetFigEndpoint();
  v29[0] = 0;
  FigRoutingManagerCreateAggregateAddEndpointCompletionContext(a3, a4, a5, v29);
  FigRoutingManagerCrossfadePlayback();
  if (FigEndpoint)
  {
    v13 = *MEMORY[0x1E695E4C0];
    v28 = *MEMORY[0x1E695E4C0];
    v14 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v16 || (v16(CMBaseObject, *MEMORY[0x1E6962180], v14, &v28), v17 = v28, v28 == v13))
    {
      if (FigRoutingManagerAggregateShouldEndpointRemovalInterruptSystemMusicSessions(a1, a2, v29[0]))
      {
        cf = 0;
        FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&cf);
        Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"currentRouteChanged_ShouldPause", *MEMORY[0x1E695E4D0]);
        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(cf, @"currentRouteChanged", Mutable);
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      FigVolumeControllerRemoveAirPlayVolumeNotificationListeners(a2);
      if (MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled())
      {
        FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener(a1, a2);
      }

      v17 = v28;
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v20)
  {
    v20(a2, 0);
  }

  EndpointDeactivateOptions = FigRoutingManagerCreateEndpointDeactivateOptions(a2, a3);
  v22 = v29[0];
  v23 = *(*(CMBaseObjectGetVTable() + 32) + 16);
  if (!v23 || (v24 = v23(a1, a2, 0, a6, v22), v24 == -12782))
  {
    FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(v29[0]);
    v24 = 4294954514;
  }

  if (EndpointDeactivateOptions)
  {
    CFRelease(EndpointDeactivateOptions);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

void FigRoutingManagerAggregateRemoveEndpointCompletionCallback(const void *a1, CFTypeRef cf, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v29 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    CFRetain(cf);
    if (a1)
    {
      CFRetain(a1);
    }

    if (*a6)
    {
      v12 = CFRetain(*a6);
    }

    else
    {
      v12 = 0;
    }

    v14 = *(a6 + 8);
    if (v14)
    {
      v15 = CFRetain(v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a6 + 16);
    if (v16)
    {
      v17 = CFRetain(v16);
    }

    else
    {
      v17 = 0;
    }

    [*(a6 + 24) timeIntervalSinceNow];
    v19 = fabs(v18) * 1000.0;
    SharedManager = FigRoutingManagerGetSharedManager();
    v21 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v22 = *(SharedManager + 1);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __FigRoutingManagerAggregateRemoveEndpointCompletionCallback_block_invoke;
    v24[3] = &unk_1E7AEA460;
    v24[4] = v21;
    v24[5] = cf;
    v25 = a5;
    v24[6] = a4;
    v24[7] = a3;
    v24[8] = v12;
    v24[9] = v15;
    v26 = v19;
    v24[10] = a1;
    v24[11] = v17;
    v24[12] = a6;
    MXDispatchAsync("FigRoutingManagerAggregateRemoveEndpointCompletionCallback", "FigRoutingManager_EndpointHelpers.m", 2406, 0, 0, v22, v24);
  }

  else
  {
    v28 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(a6);
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t FigRoutingManagerAddEndpointToAggregate(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, uint64_t a6)
{
  FigEndpoint = FigEndpointAggregateGetFigEndpoint();
  if (!FigRoutingManagerIsEndpointActivated(FigEndpoint))
  {
    v13 = FigEndpointAggregateGetFigEndpoint();
    FigRoutingManager_iOSActivateEndpoint(v13, a3, 0, 0);
  }

  Value = FigCFDictionaryGetValue();
  FigRoutingManager_SetAuthorizationOnEndpoint(a2, Value);
  v24 = 0;
  FigRoutingManagerCreateAggregateAddEndpointCompletionContext(a3, a4, a5, &v24);
  EndpointActivateOptions = FigRoutingManagerCreateEndpointActivateOptions(a2, a3, a4);
  FigRoutingManagerCrossfadePlayback();
  v16 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v18 = v24;
  VTable = CMBaseObjectGetVTable();
  v20 = *(*(VTable + 32) + 8);
  if (!v20 || (v21 = *(VTable + 32) + 8, v22 = v20(a1, a2, MutableCopy, a6, v18), v22 == -12782))
  {
    FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(v24);
    v22 = 4294954514;
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (EndpointActivateOptions)
  {
    CFRelease(EndpointActivateOptions);
  }

  return v22;
}

uint64_t FigRoutingManager_SetAuthorizationOnEndpoint(uint64_t a1, uint64_t a2)
{
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
LABEL_11:
    v6 = 4294954514;
    goto LABEL_12;
  }

  v5 = v4(CMBaseObject, *MEMORY[0x1E6961FD0], *MEMORY[0x1E695E480], &cf);
  v6 = v5;
  if (a2 && !v5)
  {
    v7 = *MEMORY[0x1E69616C0];
    if (FigCFEqual())
    {
      v8 = FigEndpointGetCMBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v9)
      {
        v10 = MEMORY[0x1E6962218];
LABEL_10:
        v6 = v9(v8, *v10, a2);
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v11 = *MEMORY[0x1E69616B8];
    if (FigCFEqual())
    {
      v8 = FigEndpointGetCMBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v9)
      {
        v10 = MEMORY[0x1E6962210];
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v6 = 0;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t FigRoutingManagerRetryAddingEndpointToAggregate(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, uint64_t a6)
{
  cf[20] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], cf);
  }

  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  if (cf[0])
  {
    CFRetain(cf[0]);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  SharedManager = FigRoutingManagerGetSharedManager();
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if (dword_1EB75DF20)
  {
    v23 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v16 = dispatch_time(0, 1000000000);
  v17 = *(SharedManager + 1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigRoutingManagerRetryAddingEndpointToAggregate_block_invoke;
  block[3] = &unk_1E7AEAAF0;
  block[4] = &v24;
  block[5] = cf[0];
  block[6] = a1;
  block[7] = a2;
  block[8] = a3;
  block[9] = a4;
  block[10] = a5;
  block[11] = a6;
  dispatch_after(v16, v17, block);
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v18 = *(v25 + 6);
  _Block_object_dispose(&v24, 8);
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_1B18A3D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __FigRoutingManagerRetryAddingEndpointToAggregate_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = FigRoutingManagerAddEndpointToAggregate(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  v4 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v3;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __FigRoutingManagerAggregateAddEndpointCompletionCallback_block_invoke(uint64_t a1)
{
  v41[16] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  v4 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(CMBaseObject, *MEMORY[0x1E69621E8], v4, &v39);
  }

  v7 = *v3;
  v8 = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(v8, *MEMORY[0x1E69620F8], v4, &v38);
  }

  v10 = *v3;
  v11 = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, *MEMORY[0x1E6961FD0], v4, &v37);
  }

  v13 = *v3;
  v14 = FigEndpointGetCMBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    v15(v14, *MEMORY[0x1E69621B0], v4, &v36);
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v17 = *(a1 + 96);
  if (v17)
  {
    if (v17 == -15580)
    {
      if (__FigRoutingManagerAggregateAddEndpointCompletionCallback_block_invoke_cold_1((a1 + 40), a1, (a1 + 96), v41))
      {
        goto LABEL_49;
      }

      v17 = v41[0];
    }

    if (v17 != -16727)
    {
      if (!FigRoutingManagerIsEndpointNonRemoteControlLocalAirPlay(*v3) || (__FigRoutingManagerAggregateAddEndpointCompletionCallback_block_invoke_cold_2((a1 + 40), a1) & 1) != 0)
      {
        v18 = *(a1 + 40);
        v19 = *(a1 + 72);
        FigRoutingManagerCrossfadePlayback();
        v20 = *(a1 + 88);
        FigRoutingManagerHandleAddEndpointCompletionCallbackError(*(a1 + 80), *(a1 + 40), *(a1 + 48), *(a1 + 96), *(a1 + 64), *(a1 + 72));
        if (FigEndpointAuthRequestHandler_HasEndpoint(*(a1 + 40)))
        {
          FigEndpointUIAgentHelper_CleanupPrompt(v39, v38, v36, 0);
        }

        v41[0] = 0;
        FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints(*(a1 + 64), *(a1 + 80), v41);
        if (!v41[0] || !CFArrayGetCount(v41[0]))
        {
          FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 64), 0);
        }

        FigRoutingManagerCleanupSystemMusicIfAggregateIsEmpty(*(a1 + 80), *(a1 + 48), 0);
        if (v41[0])
        {
          CFRelease(v41[0]);
        }
      }

      goto LABEL_49;
    }
  }

  else
  {
    if (CMSMVAUtility_IsPortAvailableForEndpoint(*(a1 + 80), 0))
    {
      v21 = *(a1 + 40);
      v22 = *(a1 + 72);
      FigRoutingManagerCrossfadePlayback();
    }

    else
    {
      v23 = *(a1 + 72);
      IsCrossfadePlaybackSupported = FigRoutingManagerIsCrossfadePlaybackSupported();
      FigRoutingManagerUpdateFadeInUponMusicVADCreation(IsCrossfadePlaybackSupported);
    }

    if ((*(a1 + 56) & 0x10) == 0)
    {
      FigVolumeControllerAddAirPlayVolumeNotificationListeners(*v3);
      v41[0] = 0;
      FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(v41);
      cf = 0;
      FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate(v41[0], &cf);
      if (MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled())
      {
        FigRoutingManagerUtilities_RegisterAirPlayStreamCapabilitiesDidChangeListener(cf, *v3);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v41[0])
      {
        CFRelease(v41[0]);
      }
    }

    if (FigRoutingManagerContextUtilities_GetContextType(*(a1 + 64)) == 3)
    {
      if (!*(a1 + 72))
      {
        CMSMVAUtility_DisableBluetoothSharingSession();
      }

      if (FigRoutingManagerUtilities_IsCurrentRouteHandoff())
      {
        CMSMAP_MakeAirPlayHandOffPortRoutable(0, *(a1 + 64));
      }
    }
  }

  if (FigRoutingManagerContextUtilities_GetContextType(*(a1 + 64)) == 3 || FigRoutingManagerContextUtilities_GetContextType(*(a1 + 64)) == 4 || FigRoutingManagerContextUtilities_GetContextType(*(a1 + 64)) == 9)
  {
    FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(*(a1 + 64), *(a1 + 80), @"configUpdateReasonGroupDevicesChanged", *(a1 + 72));
  }

  LODWORD(cf) = 0;
  v25 = *(a1 + 88);
  FigRoutingManagerContextUtilities_ResetCurrentlyActivatingSubEndpointsInfo(*(a1 + 64), *(a1 + 80), *(a1 + 40), @"configUpdateReasonEndedSuccess", *(a1 + 72));
  FigRoutingManagerContextUtilities_GetPickingState(*(a1 + 64), &cf);
  if (cf != 8)
  {
    v41[0] = 0;
    FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints(*(a1 + 64), *(a1 + 80), v41);
    if (!v41[0] || !CFArrayGetCount(v41[0]))
    {
      FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 64), 0);
    }

    if (v41[0])
    {
      CFRelease(v41[0]);
    }
  }

  if (FigEndpointAuthRequestHandler_HasEndpoint(*v3))
  {
    v27 = v38;
    v26 = v39;
    v28 = v36;
    v29 = *MEMORY[0x1E69616C0];
    v30 = FigCFEqual();
    FigEndpointUIAgentHelper_CleanupPrompt(v26, v27, v28, v30);
  }

LABEL_49:
  v31 = *(a1 + 88);
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *(a1 + 72);
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = *(a1 + 64);
  if (v33)
  {
    CFRelease(v33);
  }

  if (*v3)
  {
    CFRelease(*v3);
  }

  v34 = *(a1 + 80);
  if (v34)
  {
    CFRelease(v34);
  }

  if (v37)
  {
    CFRelease(v37);
    v37 = 0;
  }

  if (v36)
  {
    CFRelease(v36);
    v36 = 0;
  }

  if (v38)
  {
    CFRelease(v38);
    v38 = 0;
  }

  if (v39)
  {
    CFRelease(v39);
    v39 = 0;
  }

  v35 = *MEMORY[0x1E69E9840];
}

void FigRoutingManagerHandleAddEndpointCompletionCallbackError(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a4 <= -17601)
  {
    if (a4 != -17604)
    {
      if (a4 == -17601)
      {
        v10 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedFailed;
LABEL_9:
        v11 = *v10;

        FigRoutingManagerContextUtilities_ResetCurrentlyActivatingSubEndpointsInfo(a5, a1, a2, v11, a6);
        return;
      }

      goto LABEL_12;
    }

LABEL_8:
    v10 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedUserCancelled;
    goto LABEL_9;
  }

  if (a4 == -16728)
  {
    goto LABEL_8;
  }

  if (a4 == -17600)
  {
    v10 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedUnauthorizedNoPrompt;
    goto LABEL_9;
  }

LABEL_12:
  FigRoutingManagerContextUtilities_ResetCurrentlyActivatingSubEndpointsInfo(a5, a1, a2, @"configUpdateReasonEndedFailed", a6);
  if (FigRoutingManagerContextUtilities_GetContextType(a5) != 9)
  {

    FigRoutingManager_HandleEndpointFailed(a2, a4, a3, 0);
  }
}

void FigRoutingManager_HandleEndpointFailed(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v22[16] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_38;
  }

  v8 = *MEMORY[0x1E69626A8];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    v9 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v22[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, *MEMORY[0x1E69620F8], v9, v22);
    }

    cf = 0;
    v13 = FigEndpointGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(v13, *MEMORY[0x1E69621E8], v9, &cf);
    }

    v15 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(a1, 0);
    FigCFDictionarySetValue();
    if (v15)
    {
      CFRelease(v15);
    }

    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    if (a2 <= -17603)
    {
      switch(a2)
      {
        case -71891:
          v16 = kFigEndpointUIAgentPromptInfo_ReasonStartErrorLowSignal;
          goto LABEL_27;
        case -17609:
          v16 = kFigEndpointUIAgentPromptInfo_ReasonErrorReceiverIsOffline;
          goto LABEL_27;
        case -17608:
          v16 = kFigEndpointUIAgentPromptInfo_ReasonErrorAuthenticationFailed;
          goto LABEL_27;
      }
    }

    else if (a2 > -15583)
    {
      if (a2 == -15582)
      {
        v16 = kFigEndpointUIAgentPromptInfo_ReasonErrorInfraRelayFailedMultiDFS;
        goto LABEL_27;
      }

      if (a2 == -15581)
      {
        v16 = kFigEndpointUIAgentPromptInfo_ReasonErrorInfraRelayFailed2G;
        goto LABEL_27;
      }
    }

    else
    {
      if (a2 == -17602)
      {
        v16 = kFigEndpointUIAgentPromptInfo_ReasonErrorUnauthorizedNotHomeUser;
        goto LABEL_27;
      }

      if (a2 == -16607)
      {
        v16 = kFigEndpointUIAgentPromptInfo_ReasonIncomingConnectionsBlocked;
LABEL_27:
        v18 = *v16;
        FigCFDictionarySetValue();
LABEL_28:
        FigCFDictionaryGetValue();
        FigCFDictionarySetValue();
        FigEndpointUIAgentHelper_ShowError(Mutable);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v22[0])
        {
          CFRelease(v22[0]);
          v22[0] = 0;
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        goto LABEL_34;
      }
    }

    FigCFDictionarySetValue();
    SInt32 = FigCFNumberCreateSInt32();
    FigCFDictionarySetValue();
    if (SInt32)
    {
      CFRelease(SInt32);
    }

    goto LABEL_28;
  }

LABEL_34:
  if (a4)
  {
    FigRoutingManager_iOSDeactivateEndpoint(a1, a3, 0);
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_38:
  v20 = *MEMORY[0x1E69E9840];
}

void FigRoutingMangerDeactivateAggregateEndpointIfNecessary(uint64_t a1, uint64_t a2)
{
  v11[16] = *MEMORY[0x1E69E9840];
  IsAirPlayDaemonEnabled = MX_FeatureFlags_IsAirPlayDaemonEnabled();
  if (a1 && a2 && IsAirPlayDaemonEnabled)
  {
    v10 = 0;
    FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints(a1, a2, &v10);
    theArray = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v6 || (v6(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray), !theArray) || !CFArrayGetCount(theArray))
    {
      if (!v10 || !CFArrayGetCount(v10))
      {
        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v11[0] = 0;
        FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(a1, a2, v11);
        FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(a1, a2, v11[0]);
        FigRoutingManagerContextUtilities_SetAggregateEndpoint(a1, 0);
        FigEndpointDeactivate();
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t *FigRoutingManagerAggregateShouldEndpointRemovalInterruptSystemMusicSessions(uint64_t a1, const void *a2, uint64_t *a3)
{
  v3 = a3;
  theArray[16] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    FigRoutingManagerContextUtilities_GetContextType(*a3);
    v7 = v3[1];
    v6 = v3[2];
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    v3 = 0;
    if (a1 && a2)
    {
      theArray[0] = 0;
      FigEndpointAggregateGetFigEndpoint();
      CMBaseObject = FigEndpointGetCMBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v9 || (v9(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], theArray), !theArray[0]) || CFArrayGetCount(theArray[0]) != 1 || !FigRoutingManagerIsEndpointPresentInAggregate(a2, a1))
      {
        v3 = 0;
      }

      if (theArray[0])
      {
        CFRelease(theArray[0]);
      }
    }

    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

void __FigRoutingManagerAggregateRemoveEndpointCompletionCallback_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  v20 = 0;
  if (*(a1 + 40))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &v20);
    }
  }

  if (dword_1EB75DF20)
  {
    LODWORD(v18) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(*(a1 + 64), 0, cf);
  v5 = cf[0];
  v6 = *(a1 + 80);
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(*(a1 + 64), &theArray);
  v7 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(theArray, 0);
  FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext(*(a1 + 64), v7);
  if (v5 == v6 && (!theArray || !CFArrayGetCount(theArray)))
  {
    FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(*(a1 + 64), *(a1 + 40), *(a1 + 48));
    FigRoutingManagerContextUtilities_SetPickedEndpoints(*(a1 + 64), 0, @"configUpdateReasonEndedBottomUpRouteChange", 0, v7);
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  FigVolumeControllerSaveRoutingContextState(*(a1 + 64));
  if (v7)
  {
    CFRelease(v7);
  }

  type = OS_LOG_TYPE_DEFAULT;
  v8 = *(a1 + 88);
  FigCFDictionaryGetBooleanIfPresent();
  v9 = *(a1 + 40);
  v10 = *(a1 + 72);
  FigRoutingManagerCrossfadePlayback();
  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(a1 + 64), *(a1 + 72), @"configUpdateReasonGroupDevicesChanged");
  v18 = 0;
  FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints(*(a1 + 64), *(a1 + 80), &v18);
  if (!v18 || !CFArrayGetCount(v18))
  {
    FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 64), 0);
  }

  v11 = FigRoutingManagerAggregateShouldEndpointRemovalInterruptSystemMusicSessions(0, 0, *(a1 + 96));
  FigRoutingManagerCleanupSystemMusicIfAggregateIsEmpty(*(a1 + 80), *(a1 + 48), v11);
  FigRoutingMangerDeactivateAggregateEndpointIfNecessary(*(a1 + 64), *(a1 + 80));
  FigVolumeControllerRecomputeMainVolume(*(a1 + 64), 0.0);
  FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(*(a1 + 96));
  if (v18)
  {
    CFRelease(v18);
    v18 = 0;
  }

  if (v20)
  {
    CFRelease(v20);
    v20 = 0;
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 80);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 72);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 88);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

CFMutableDictionaryRef FigRoutingManagerCopyAuthInfoForEndpoint(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = *MEMORY[0x1E69616B8];
  v5 = FigCFEqual();
  v6 = MEMORY[0x1E695E4D0];
  if (!v5)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  v7 = *v6;
  FigCFDictionarySetValue();
  v19 = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(CMBaseObject, *MEMORY[0x1E69620F8], v2, &v19);
  }

  cf = 0;
  v10 = FigEndpointGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(v10, *MEMORY[0x1E69621E8], v2, &cf);
  }

  v12 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(a1, 0);
  v17 = 0;
  v13 = *MEMORY[0x1E69621B0];
  v14 = FigEndpointGetCMBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    v15(v14, v13, v2, &v17);
  }

  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v19)
  {
    CFRelease(v19);
    v19 = 0;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return Mutable;
}

void FigRoutingManager_HandleAuthorizationRequiredDelegate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_30;
  }

  if (dword_1EB75DF20)
  {
    v28 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  cf = 0;
  *type = 0;
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v14 = *MEMORY[0x1E69626B0];
  if (!FigRoutingManagerIsEndpointOfType(a1) && !FigRoutingManagerIsClusterEndpoint(a1))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v21(CMBaseObject, *MEMORY[0x1E69621E8], v12, &cf);
    }

    v22 = FigEndpointGetCMBaseObject();
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v23)
    {
      v23(v22, *MEMORY[0x1E69620F8], v12, type);
    }

    v19 = FigRoutingManagerCopyAuthInfoForEndpoint(a1);
    FigCFDictionarySetValue();
    *(&v30 + 1) = a1;
    if (!dword_1EB75DF20)
    {
      goto LABEL_22;
    }

LABEL_21:
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_22;
  }

  if (!a2)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }

    v19 = 0;
    goto LABEL_22;
  }

  v15 = FigEndpointGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v16(v15, *MEMORY[0x1E69621E8], v12, &cf);
  }

  v17 = FigEndpointGetCMBaseObject();
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v18)
  {
    v18(v17, *MEMORY[0x1E69620F8], v12, type);
  }

  v19 = FigRoutingManagerCopyAuthInfoForEndpoint(a2);
  FigCFDictionarySetValue();
  *(&v30 + 1) = a2;
  if (dword_1EB75DF20)
  {
    goto LABEL_21;
  }

LABEL_22:
  *&v29 = v19;
  *(&v29 + 1) = Mutable;
  *&v31 = a6;
  *(&v31 + 1) = a7;
  *&v30 = *type;
  FigEndpointAuthRequestHandler_ProcessRequest(&v29);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (*type)
  {
    CFRelease(*type);
  }

LABEL_30:
  v25 = *MEMORY[0x1E69E9840];
}

void FigRoutingManagerRemoveAllSubEndpointsFromAggregate(uint64_t a1, const void *a2, const void *a3, const void *a4, uint64_t a5)
{
  theArray = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v12 = *(*(VTable + 8) + 48);
  if (!v12)
  {
LABEL_12:
    if (theArray)
    {
      CFRelease(theArray);
    }

    return;
  }

  v13 = *(VTable + 8) + 48;
  v12(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v15 = Count;
      for (i = 0; i != v15; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        if (!a1 || (FigEndpointAggregateGetClassID(), IsMemberOfClass = CMBaseObjectIsMemberOfClass(), v19 = a1, !IsMemberOfClass))
        {
          v19 = 0;
        }

        if (!FigRoutingManagerRemoveEndpointFromAggregate(v19, ValueAtIndex, a2, a3, a4, a5))
        {
          FigRoutingManagerLogEndpointID(@"removeSubEndpoints: Removed endpoint with ID from aggregate: ", ValueAtIndex, 0, 1);
        }
      }
    }

    goto LABEL_12;
  }
}

void FigRoutingManager_HandleDidReceiveDataFromCommChannelDelegate(const void *a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5)
{
  if (a1 && a3)
  {
    if (a4)
    {
      CFRetain(a1);
      CFRetain(a3);
      CFRetain(a4);
      DataTransmissionQueue = FigRoutingManager_GetDataTransmissionQueue();
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __FigRoutingManager_HandleDidReceiveDataFromCommChannelDelegate_block_invoke;
      v10[3] = &__block_descriptor_64_e5_v8__0l;
      v10[4] = a5;
      v10[5] = a1;
      v10[6] = a3;
      v10[7] = a4;
      MXDispatchAsync("FigRoutingManager_HandleDidReceiveDataFromCommChannelDelegate", "FigRoutingManager_EndpointHelpers.m", 2734, 0, 0, DataTransmissionQueue, v10);
    }
  }
}

void FigRoutingManager_HandleDidCloseCommChannelDelegate(CFTypeRef cf, uint64_t a2, const void *a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (cf && a3)
  {
    if (dword_1EB75DF20)
    {
      v12 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFRetain(cf);
    CFRetain(a3);
    DataTransmissionQueue = FigRoutingManager_GetDataTransmissionQueue();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __FigRoutingManager_HandleDidCloseCommChannelDelegate_block_invoke;
    v10[3] = &__block_descriptor_56_e5_v8__0l;
    v10[4] = a4;
    v10[5] = cf;
    v10[6] = a3;
    MXDispatchAsync("FigRoutingManager_HandleDidCloseCommChannelDelegate", "FigRoutingManager_EndpointHelpers.m", 2796, 0, 0, DataTransmissionQueue, v10);
  }

  v9 = *MEMORY[0x1E69E9840];
}

NSObject *FigRoutingManagerCreateOneShotTimer(NSObject *a1, double a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = (a2 * 1000000000.0);
  DispatchSourceBlock = FigDispatchCreateDispatchSourceBlock();
  v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a1);
  v11 = dispatch_time(0, v8);
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_set_context(v10, a4);
  dispatch_source_set_event_handler(v10, DispatchSourceBlock);
  _Block_release(DispatchSourceBlock);
  if (a5)
  {
    v12 = FigDispatchCreateDispatchSourceBlock();
    dispatch_source_set_cancel_handler(v10, v12);
    _Block_release(v12);
  }

  dispatch_resume(v10);
  return v10;
}

NSObject *FigRoutingManagerStartDeactivateAirPlayEndpointTimer(void *cf, uint64_t a2, float a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  SharedManager = FigRoutingManagerGetSharedManager();
  v7 = *(SharedManager + 6);
  if (v7)
  {
    dispatch_source_cancel(v7);
    v8 = *(SharedManager + 6);
    if (v8)
    {
      dispatch_release(v8);
      *(SharedManager + 6) = 0;
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FigRoutingManagerStartDeactivateAirPlayEndpointTimer_block_invoke;
  v11[3] = &__block_descriptor_48_e5_v8__0l;
  v11[4] = cf;
  v11[5] = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigRoutingManagerStartDeactivateAirPlayEndpointTimer_block_invoke_2;
  v10[3] = &__block_descriptor_40_e5_v8__0l;
  v10[4] = cf;
  result = FigRoutingManagerCreateOneShotTimer(*(SharedManager + 1), a3, v11, cf, v10);
  *(SharedManager + 6) = result;
  return result;
}

void __FigRoutingManagerStartDeactivateAirPlayEndpointTimer_block_invoke(uint64_t a1)
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

    FigRoutingManager_iOSDeactivateEndpoint(*(a1 + 32), *(a1 + 40), 0);
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

void __FigRoutingManagerStartDeactivateAirPlayEndpointTimer_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void FigRoutingManagerStopDeactivateAirPlayEndpointTimer()
{
  SharedManager = FigRoutingManagerGetSharedManager();
  v1 = *(SharedManager + 6);
  if (v1)
  {
    dispatch_source_cancel(v1);
    v2 = *(SharedManager + 6);
    if (v2)
    {
      dispatch_release(v2);
      *(SharedManager + 6) = 0;
    }
  }
}

CFTypeRef FigRoutingManagerCopyEndpointWithDeviceIDFromBluetoothManager()
{
  v0 = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache copyAvailableEndpointsForManager:"copyAvailableEndpointsForManager:", FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618D8])];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (CFArrayGetCount(v0) < 1 || (Count = CFArrayGetCount(v1), Count < 1))
  {
LABEL_11:
    v10 = 0;
  }

  else
  {
    v3 = Count;
    v4 = 0;
    v5 = *MEMORY[0x1E69620F8];
    v6 = *MEMORY[0x1E695E480];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
      cf = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v9(CMBaseObject, v5, v6, &cf);
      }

      if (FigCFStringFind())
      {
        break;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v3 == ++v4)
      {
        goto LABEL_11;
      }
    }

    if (ValueAtIndex)
    {
      v10 = CFRetain(ValueAtIndex);
    }

    else
    {
      v10 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  CFRelease(v1);
  return v10;
}

CFMutableDictionaryRef FigRoutingManagerCreateDuckAudioPayload()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v1 = *MEMORY[0x1E6961810];
  FigCFDictionarySetValue();
  v2 = *MEMORY[0x1E6961820];
  FigCFDictionarySetValue();
  v3 = *MEMORY[0x1E6961818];
  FigCFDictionarySetValue();
  return Mutable;
}

CFIndex FigRoutingManagerUtilities_AreAllEndpointsWHAGroupable(CFIndex result)
{
  if (result)
  {
    v1 = result;
    result = CFArrayGetCount(result);
    if (result)
    {
      v2 = result;
      if (result < 1)
      {
        return 1;
      }

      else
      {
        v3 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v1, v3);
          if (!FigRoutingManagerIsEndpointWHAGroupable(ValueAtIndex))
          {
            break;
          }

          if (v2 == ++v3)
          {
            return 1;
          }
        }

        FigRoutingManagerLogEndpointID(@"Found non-groupable route", ValueAtIndex, @"in inEndpoints", 0);
        return 0;
      }
    }
  }

  return result;
}

CFIndex FigRoutingManagerUtilities_AreAllEndpointsOfTypeAirPlay(CFIndex result)
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = CFArrayGetCount(result);
    if (result)
    {
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        v3 = v2;
        v4 = *v9;
        v5 = *MEMORY[0x1E69626A8];
LABEL_5:
        v6 = 0;
        while (1)
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(v1);
          }

          result = FigRoutingManagerIsEndpointOfType(*(*(&v8 + 1) + 8 * v6));
          if (!result)
          {
            break;
          }

          if (v3 == ++v6)
          {
            v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
            result = 1;
            if (v3)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      else
      {
        result = 1;
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigRoutingManagerUtilities_IsEndpointPicked(CFTypeRef a1, uint64_t a2)
{
  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(a2, &theArray);
  if (a1)
  {
    goto LABEL_2;
  }

  if (!theArray)
  {
    return 1;
  }

  if (CFArrayGetCount(theArray))
  {
LABEL_2:
    v3 = 0;
    v4 = *MEMORY[0x1E69626D8];
    while (1)
    {
      Count = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      if (v3 >= Count)
      {
        v9 = 0;
        goto LABEL_21;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
      if (ValueAtIndex == a1)
      {
        break;
      }

      v7 = ValueAtIndex;
      if (FigRoutingManagerIsEndpointOfType(ValueAtIndex) && FigRoutingManagerIsEndpointWHAGroupable(v7))
      {
        v8 = FigRoutingManagerCopyLocalAirPlayEndpoint();
        if (v8 == a1)
        {
          if (a1)
          {
            CFRelease(v8);
          }

          break;
        }

        if (v8)
        {
          CFRelease(v8);
        }
      }

      ++v3;
    }
  }

  v9 = 1;
LABEL_21:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v9;
}

__CFArray *FigRoutingManagerUtilities_CopyEndpointsToAdd(uint64_t a1, CFArrayRef theArray)
{
  if (!theArray || !CFArrayGetCount(theArray))
  {
    return 0;
  }

  cf = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a1, &cf);
  theArraya = 0;
  v4 = *MEMORY[0x1E695E480];
  if (cf && (CMBaseObject = FigEndpointGetCMBaseObject(), VTable = CMBaseObjectGetVTable(), (v7 = *(*(VTable + 8) + 48)) != 0) && (v8 = *(VTable + 8) + 48, v7(CMBaseObject, *MEMORY[0x1E6962270], v4, &theArraya), theArraya))
  {
    Count = CFArrayGetCount(theArraya);
  }

  else
  {
    Count = 0;
  }

  v11 = CFArrayGetCount(theArray);
  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (Count < 1)
      {
LABEL_16:
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }

      else
      {
        v14 = 0;
        while (ValueAtIndex != CFArrayGetValueAtIndex(theArraya, v14))
        {
          if (Count == ++v14)
          {
            goto LABEL_16;
          }
        }
      }
    }
  }

  if (theArraya)
  {
    CFRelease(theArraya);
    theArraya = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return Mutable;
}

__CFArray *FigRoutingManagerUtilities_CopyEndpointsToRemove(uint64_t a1, const __CFArray *a2)
{
  cf = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a1, &cf);
  theArray = 0;
  v3 = MEMORY[0x1E695E480];
  if (cf && (CMBaseObject = FigEndpointGetCMBaseObject(), VTable = CMBaseObjectGetVTable(), (v6 = *(*(VTable + 8) + 48)) != 0) && (v7 = *(VTable + 8) + 48, v6(CMBaseObject, *MEMORY[0x1E6962270], *v3, &theArray), theArray))
  {
    Count = CFArrayGetCount(theArray);
    if (!a2)
    {
LABEL_6:
      v9 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    Count = 0;
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  v9 = CFArrayGetCount(a2);
LABEL_9:
  Mutable = CFArrayCreateMutable(*v3, 0, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (v9 < 1)
      {
LABEL_15:
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }

      else
      {
        v13 = 0;
        while (ValueAtIndex != CFArrayGetValueAtIndex(a2, v13))
        {
          if (v9 == ++v13)
          {
            goto LABEL_15;
          }
        }
      }
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

  return Mutable;
}

uint64_t FigVAEndpointManagerGetClassID()
{
  if (FigVAEndpointManagerGetClassID_sRegisterFigVAEndpointManagerBaseTypeOnce != -1)
  {
    FigVAEndpointManagerGetClassID_cold_1();
  }

  return FigVAEndpointManagerGetClassID_sFigVAEndpointManagerClassID;
}

uint64_t __FigVAEndpointManagerGetClassID_block_invoke()
{
  ClassID = FigEndpointManagerGetClassID();

  return MEMORY[0x1EEDBC160](&FigVAEndpointManagerGetClassID_sFigVAEndpointManagerClassDesc, ClassID, 0, &FigVAEndpointManagerGetClassID_sFigVAEndpointManagerClassID);
}

uint64_t FigVAEndpointManagerSetPropertyFloat32(float a1, uint64_t a2, uint64_t a3)
{
  v4 = MXCFNumberCreateFromFloat32(a1);
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 8) + 56);
  if (v7)
  {
    v8 = *(VTable + 8) + 56;
    v9 = v7(CMBaseObject, a3, v4);
  }

  else
  {
    v9 = 4294954514;
  }

  CFRelease(v4);
  return v9;
}

void figConnection_ServerConnectionDied_Callback(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = *MEMORY[0x1E695E4C0];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
  v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || v6 == 0)
  {
    v11 = 0;
  }

  else
  {
    v9 = v6;
    v10 = objc_alloc(MEMORY[0x1E695DF20]);
    v11 = [v10 initWithObjectsAndKeys:{v4, AVSystemController_RecordingStateNotificationParameter, v5, AVSystemController_RecordingClientPIDNotificationParameter, v9, AVSystemController_RecordingClientPIDsNotificationParameter, 0}];
  }

  [AVSystemControllerCommon postNotificationOnMainQueue:v11 notification:AVSystemController_RecordingStateDidChangeNotification object:a2];

  if (v5)
  {
    v12 = objc_alloc(MEMORY[0x1E695DF20]);
    v13 = [v12 initWithObjectsAndKeys:{v5, AVSystemController_NowPlayingAppPIDNotificationParameter, 0}];
  }

  else
  {
    v13 = 0;
  }

  [AVSystemControllerCommon postNotificationOnMainQueue:v13 notification:AVSystemController_NowPlayingAppPIDDidChangeNotification object:a2];

  [AVSystemControllerCommon postNotificationOnMainQueue:0 notification:AVSystemController_NowPlayingAppDidChangeNotification object:a2];
  if (v4)
  {
    v14 = objc_alloc(MEMORY[0x1E695DF20]);
    v4 = [v14 initWithObjectsAndKeys:{v4, AVSystemController_NowPlayingAppIsPlayingNotificationParameter, 0}];
  }

  [AVSystemControllerCommon postNotificationOnMainQueue:v4 notification:AVSystemController_NowPlayingAppIsPlayingDidChangeNotification object:a2];

  [a2 handleServerDied];

  objc_autoreleasePoolPop(v3);
}

uint64_t FigSTSGetClassID()
{
  if (_MergedGlobals_2 != -1)
  {
    FigSTSGetClassID_cold_1();
  }

  return qword_1ED6D2EC8;
}

uint64_t STSObtainClassID(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&STSObtainClassID_sFigSTSClassDesc, ClassID, 1, a1);
}

uint64_t FigSTSGetTypeID()
{
  if (_MergedGlobals_2 != -1)
  {
    FigSTSGetClassID_cold_1();
  }

  v1 = qword_1ED6D2EC8;

  return MEMORY[0x1EEDBB488](v1);
}

uint64_t FigSTSCreate(uint64_t a1, CFTypeRef cf, uint64_t a3, void *a4)
{
  v13 = 0;
  if (STSInitializeFlavorCreationState_sInitFlavorCreationStateOnce == -1)
  {
    if (!cf)
    {
LABEL_17:
      FigSTSCreate_cold_4(&value);
      return value;
    }
  }

  else
  {
    FigSTSCreate_cold_1();
    if (!cf)
    {
      goto LABEL_17;
    }
  }

  v8 = CFGetTypeID(cf);
  if (v8 != CFStringGetTypeID())
  {
    goto LABEL_17;
  }

  if (!a4)
  {
    FigSTSCreate_cold_3(&value);
    return value;
  }

  value = 0;
  FigSimpleMutexLock();
  if (CFDictionaryGetValueIfPresent(sFigSTSFlavorCreationState_1, cf, &value))
  {
    goto LABEL_12;
  }

  if (CFEqual(cf, @"B"))
  {
    v9 = "/System/Library/Frameworks/MediaToolbox.framework/Support/libSTS-B.dylib";
    v10 = "STSCreateFlavorB";
  }

  else
  {
    if (!CFEqual(cf, @"N"))
    {
      Function = value;
      if (!value)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v9 = "/System/Library/Frameworks/MediaToolbox.framework/Support/libSTS-N.dylib";
    v10 = "STSCreateFlavorN";
  }

  Function = STSLoadCreateFunction(v9, v10);
  value = Function;
  if (Function)
  {
LABEL_11:
    CFDictionarySetValue(sFigSTSFlavorCreationState_1, cf, Function);
  }

LABEL_12:
  FigSimpleMutexUnlock();
  if (value)
  {
    result = (value)(a1, a3, &v13);
    *a4 = v13;
    return result;
  }

  FigSTSCreate_cold_2(&value);
  return value;
}

CFMutableDictionaryRef __STSInitializeFlavorCreationState_block_invoke()
{
  sFigSTSFlavorCreationState_0 = FigSimpleMutexCreate();
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  sFigSTSFlavorCreationState_1 = result;
  return result;
}

void *STSLoadCreateFunction(const char *a1, const char *a2)
{
  result = dlopen(a1, 4);
  if (result)
  {

    return dlsym(result, a2);
  }

  return result;
}

void sub_1B18A9438(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B18A9DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void FigRouteDiscovererSetDiscoveryModeDetailedOnDiscoverer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v1 = CFRetain(*DerivedStorage);
  }

  else
  {
    v1 = 0;
  }

  if (FigCFEqual())
  {
    v2 = *DerivedStorage;
    *DerivedStorage = @"DiscoveryMode_Detailed";
    if (@"DiscoveryMode_Detailed")
    {
      CFRetain(@"DiscoveryMode_Detailed");
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  if (v1)
  {

    CFRelease(v1);
  }
}

void FigRouteDiscovererSetDiscoveryModeNoneOnDiscoverer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v1 = CFRetain(*DerivedStorage);
  }

  else
  {
    v1 = 0;
  }

  if (FigCFEqual())
  {
    v2 = *DerivedStorage;
    *DerivedStorage = @"DiscoveryMode_None";
    if (@"DiscoveryMode_None")
    {
      CFRetain(@"DiscoveryMode_None");
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  if (v1)
  {

    CFRelease(v1);
  }
}

BOOL FigRouteDiscovererIsFastDiscoveryEnabledForDiscoverer()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 56) == 8)
  {
    return 0;
  }

  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 80);
  FigSimpleMutexLock();
  v4 = *(v2 + 40);
  v5 = *MEMORY[0x1E695E4D0];
  v1 = FigCFEqual() != 0;
  v6 = *(v2 + 80);
  FigSimpleMutexUnlock();
  return v1;
}

id FigRouteDiscovererCopyAvailableRoutes(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled() && (v2 = *MEMORY[0x1E695E4D0], !FigCFEqual()))
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      v9 = *MEMORY[0x1E695E480];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(a2);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          cf = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          VTable = CMBaseObjectGetVTable();
          v14 = *(*(VTable + 8) + 48);
          if (v14)
          {
            v15 = *(VTable + 8) + 48;
            v14(CMBaseObject, @"IsCached", v9, &cf);
          }

          if (!FigCFEqual())
          {
            [v5 addObject:v11];
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }

        v7 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    v16 = *MEMORY[0x1E69E9840];
    return v5;
  }

  else
  {
    v3 = *MEMORY[0x1E69E9840];

    return a2;
  }
}

void __FigRouteDiscoveryManagerStoreDiscoverer_block_invoke(uint64_t a1)
{
  theArray[24] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(v5, @"clientPID", v4);
    }
  }

  FigRouteDiscoveryManagerAddDiscoverer(*(a1 + 32), *(DerivedStorage + 56));
  v7 = MEMORY[0x1E696AEC0];
  v8 = [*(a1 + 48) stringValue];
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
  v15 = FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation();
  v16 = [v15 objectForKey:v14];
  theArray[0] = 0;
  if (v16)
  {
    v17 = v16;
    theArray[0] = [v16 objectForKey:@"FigRouteDiscoverer_Endpoints_Key"];
    v18 = [v17 objectForKey:@"FigRouteDiscoverer_RouteDescriptors_Key"];
  }

  else
  {
    v19 = *(a1 + 32);
    if (FigRouteDiscovererIsFastDiscoveryEnabledForDiscoverer())
    {
      FigRouteDiscoveryManagerCopyRoutesForTypeAndAudioSessionID(*MEMORY[0x1E695E480], *(DerivedStorage + 56), *(DerivedStorage + 8), *(DerivedStorage + 24), theArray);
      v18 = FigRouteDiscoveryManagerCopyRouteDescriptorsFromEndpointsAndAudioSessionID(theArray[0], *(DerivedStorage + 8));
    }

    else
    {
      theArray[0] = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v18 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }
  }

  v20 = v18;
  v21 = *(DerivedStorage + 80);
  FigSimpleMutexLock();

  *(DerivedStorage + 104) = theArray[0];
  *(DerivedStorage + 96) = v20;
  v22 = *(DerivedStorage + 80);
  FigSimpleMutexUnlock();
  if (theArray[0] && CFArrayGetCount(theArray[0]))
  {
    v23 = *(a1 + 32);
    if (v23)
    {
      CFRetain(v23);
    }

    NotificationQueue = FigRouteDiscoveryManagerGetNotificationQueue();
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __FigRouteDiscoveryManagerStoreDiscoverer_block_invoke_2;
    v30[3] = &__block_descriptor_40_e5_v8__0l;
    v30[4] = *(a1 + 32);
    MXDispatchAsync("FigRouteDiscoveryManagerStoreDiscoverer_block_invoke", "FigRouteDiscoverer.m", 836, 0, 0, NotificationQueue, v30);
  }

  if (dword_1EB75DF60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  v26 = *(a1 + 32);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(a1 + 40);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(a1 + 48);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __FigRouteDiscoveryManagerStoreDiscoverer_block_invoke_2(uint64_t a1)
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

uint64_t figEndpointUIAgent_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  *DerivedStorage = 1;
  v2 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t figEndpointUIAgent_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figEndpointUIAgent_Invalidate();
  DerivedStorage[3] = 0;
  v1 = DerivedStorage[2];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[2] = 0;
  }

  v2 = DerivedStorage[1];
  result = FigSimpleMutexDestroy();
  DerivedStorage[1] = 0;
  return result;
}

uint64_t figEndpointUIAgent_showAuthPrompt(int a1, CFDictionaryRef theDict, const void *a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"ATVName");
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = *(DerivedStorage + 8);
    FigSimpleMutexLock();
    if (*DerivedStorage)
    {
      v9 = *(DerivedStorage + 8);
      FigSimpleMutexUnlock();
      v10 = 4294950514;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"promptInfo", theDict);
      *(DerivedStorage + 24) = a4;
      if (a3)
      {
        v13 = CFRetain(a3);
      }

      else
      {
        v13 = 0;
      }

      *(DerivedStorage + 16) = v13;
      v14 = *(DerivedStorage + 8);
      FigSimpleMutexUnlock();
      CMNotificationCenterGetDefaultLocalCenter();
      v10 = CMNotificationCenterPostNotification();
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    if (dword_1EB75DFA0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = 4294950516;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t figEndpointUIAgent_screenStarted()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t figEndpointUIAgent_screenStopped()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

__CFString *CMSMSleep_CreateDefaultIdlePreventorName()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  FormattedDateAndTime = CMSMUtility_CreateFormattedDateAndTime();
  CFStringAppend(Mutable, @"MediaExperience-idleSleepPreventor");
  CFStringAppend(Mutable, FormattedDateAndTime);
  if (FormattedDateAndTime)
  {
    CFRelease(FormattedDateAndTime);
  }

  return Mutable;
}

void CMSMSleep_ReleaseIdleSleepPreventorForSession(void *a1)
{
  if (a1 && [a1 idleSleepPreventorAllocated])
  {
    PowerLogDataForSession = CMSMPowerLogCreatePowerLogDataForSession(a1);
    if (CMSMSleep_ReleaseIdleSleepPreventor([a1 idleSleepPreventor], @"CoreMedia_AudioPlayback", PowerLogDataForSession))
    {
      [a1 setIdleSleepPreventor:0];
      [a1 setIdleSleepPreventorAllocated:0];
      [a1 setIdleSleepPreventorName:0];
      [a1 setIdleSleepPreventorCreationTime:0];
    }

    if (PowerLogDataForSession)
    {

      CFRelease(PowerLogDataForSession);
    }
  }
}

void CMSMSleep_CreateIdleSleepPreventorForSession(void *a1, const __CFString *a2)
{
  if (a1 && ([a1 idleSleepPreventorAllocated] & 1) == 0)
  {
    v4 = MEMORY[0x1E695E480];
    if (a2)
    {
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
    }

    else
    {
      v6 = CFGetAllocator(a1);
      MutableCopy = CFStringCreateMutable(v6, 0);
      v7 = [a1 displayID];
      v8 = [a1 clientName];
      if (v7)
      {
        CFStringAppendFormat(MutableCopy, 0, @"MediaExperience.%@(%@).isplaying", v8, [a1 displayID]);
      }

      else
      {
        CFStringAppendFormat(MutableCopy, 0, @"MediaExperience.%@.isplaying", v8);
      }
    }

    v9 = *v4;
    Current = CFAbsoluteTimeGetCurrent();
    v11 = CFDateCreate(v9, Current);
    [a1 setIdleSleepPreventorName:MutableCopy];
    [a1 setIdleSleepPreventorCreationTime:v11];
    PowerLogDataForSession = CMSMPowerLogCreatePowerLogDataForSession(a1);
    v13 = 0;
    [a1 setIdleSleepPreventorAllocated:{CMSMSleep_CreateIdleSleepPreventor(MutableCopy, @"CoreMedia_AudioPlayback", PowerLogDataForSession, &v13)}];
    [a1 setIdleSleepPreventor:v13];
    if (v11)
    {
      CFRelease(v11);
    }

    if (PowerLogDataForSession)
    {
      CFRelease(PowerLogDataForSession);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }
}

void CMSMSleep_UpdateIdleSleepPreventor(void *a1, int a2)
{
  if ([a1 idleSleepPreventorUpdaterTimer])
  {
    dispatch_source_cancel([a1 idleSleepPreventorUpdaterTimer]);
    [a1 setIdleSleepPreventorUpdaterTimer:0];
  }

  if (a2)
  {

    CMSMSleep_CreateIdleSleepPreventorForSession(a1, 0);
  }

  else
  {

    CMSMSleep_ReleaseIdleSleepPreventorForSession(a1);
  }
}

void *CMSMSleep_ExtendPlaybackProcessAssertion(void *result)
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if ([result extendBackgroundAppAssertionTimer])
    {
      dispatch_source_cancel([v1 extendBackgroundAppAssertionTimer]);
      [v1 setExtendBackgroundAppAssertionTimer:0];
    }

    if ([v1 playbackAssertionRef])
    {
      v2 = +[MXAudioStatistics sharedInstance];
      v3 = [objc_msgSend(v1 "playbackAssertionRef")];
      [(MXAudioStatistics *)v2 sendSinglePerformanceMessageForAssertion:"CMSMSleep_ExtendPlaybackProcessAssertion" explanation:v3 activity:kMXAudioStatistics_AssertionActivity_AssertionExtended];
      v4 = MXGetAssertionLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 136447234;
        v10 = "-CMSSleep-";
        v11 = 2082;
        v12 = "CMSMSleep_ExtendPlaybackProcessAssertion";
        v13 = 1024;
        v14 = 494;
        v15 = 2048;
        v16 = [v1 playbackAssertionRef];
        v17 = 2114;
        v18 = [objc_msgSend(v1 "playbackAssertionRef")];
        _os_log_impl(&dword_1B17A2000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s:%i Creating extendBackgroundAppAssertionTimer for assertion %p explanation %{public}@", buf, 0x30u);
      }
    }

    v5 = [objc_msgSend(v1 "ID")];
    v6 = MXGetSerialQueue();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __CMSMSleep_ExtendPlaybackProcessAssertion_block_invoke;
    v8[3] = &__block_descriptor_40_e5_v8__0l;
    v8[4] = v5;
    result = [v1 setExtendBackgroundAppAssertionTimer:{MXDispatchUtilityCreateOneShotTimer(5.0, "CMSMSleep_ExtendPlaybackProcessAssertion", "CMSessionManager_Sleep.m", 498, 0, 0, v6, v8, 0, 0)}];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMSleep_FetchTemporaryPlaybackProcessAssertion(void *a1)
{
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"MediaExperience.%d.%@.%@.%@.temporaryIsPlayingProcessAssertion", [objc_msgSend(a1 "clientPID")], objc_msgSend(a1, "displayID"), objc_msgSend(a1, "clientName"), objc_msgSend(a1, "audioCategory"));
  if (![a1 resumeAssertionRef] || (MX_RunningBoardServices_IsAssertionValid(objc_msgSend(a1, "resumeAssertionRef")) & 1) == 0)
  {
    PlaybackProcessAssertionForPID = MX_RunningBoardServices_CreatePlaybackProcessAssertionForPID([objc_msgSend(a1 "clientPID")], v2);
    [a1 setResumeAssertionRef:PlaybackProcessAssertionForPID];
    if (PlaybackProcessAssertionForPID)
    {
      CFRelease(PlaybackProcessAssertionForPID);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if ([a1 resumeBackgroundAppUpdaterTimer])
  {
    dispatch_source_cancel([a1 resumeBackgroundAppUpdaterTimer]);
    [a1 setResumeBackgroundAppUpdaterTimer:0];
  }

  v4 = [objc_msgSend(a1 "ID")];
  v5 = MXGetSerialQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CMSMSleep_FetchTemporaryPlaybackProcessAssertion_block_invoke;
  v7[3] = &__block_descriptor_40_e5_v8__0l;
  v7[4] = v4;
  return [a1 setResumeBackgroundAppUpdaterTimer:{MXDispatchUtilityCreateOneShotTimer(5.0, "CMSMSleep_FetchTemporaryPlaybackProcessAssertion", "CMSessionManager_Sleep.m", 539, 0, 0, v5, v7, 0, 0)}];
}

void CMSMSleep_UpdatePlaybackProcessAssertionsForHostProcesses(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [objc_msgSend(a3 differenceFromArray:{a2), "removals"}];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v4 count])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v4);
            }

            [v5 addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * v9++), "object")}];
          }

          while (v7 != v9);
          v7 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }

      CMSMSleep_ReleasePlaybackProcessAssertionsForHostProcesses(a1, v5);
    }

    CMSMSleep_FetchPlaybackProcessAssertionsForHostProcesses(a1);
  }

  v10 = *MEMORY[0x1E69E9840];
}

const __CFNumber *MXCFNumberGetValueSInt32(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

double MXCFNumberGetValueFloat32(const __CFNumber *a1)
{
  valuePtr = 0;
  if (!a1)
  {
    return 0.0;
  }

  CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
  LODWORD(result) = valuePtr;
  return result;
}

double MXCFDictionaryGetValueDouble(const __CFDictionary *a1, const void *a2)
{
  if (!a1)
  {
    return 0.0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  valuePtr = 0.0;
  if (!Value)
  {
    return 0.0;
  }

  CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
  return valuePtr;
}

BOOL MXCFArrayAreArrayContentsEqual(CFArrayRef theArray, const __CFArray *a2)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a2)
    {
LABEL_3:
      v5 = CFArrayGetCount(a2);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_6:
  if (Count != v5)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (theArray)
    {
      v8 = CFArrayGetCount(theArray);
    }

    else
    {
      v8 = 0;
    }

    if (v7 >= v8)
    {
      break;
    }

    CFArrayGetValueAtIndex(theArray, v7);
    v9 = FigCFArrayContainsValue();
    v6 = v7 + 1;
  }

  while (v9);
  return v7 >= v8;
}

CFDataRef MXCFDataCreate(UInt8 *bytes, CFIndex length)
{
  if (bytes && length)
  {
    return CFDataCreate(*MEMORY[0x1E695E480], bytes, length);
  }

  else
  {
    return 0;
  }
}

void MXCFPreferencesMigrateUserPreferencesToMXDomain()
{
  v8 = *MEMORY[0x1E69E9840];
  if (CFPreferencesGetAppBooleanValue(@"celestialToMediaExperienceDomainMigrationFullyCompleted", @"com.apple.mediaexperience", 0))
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
    v1 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"AirTunesEntriesDeleted", @"AirPlayLowLatencyEntriesDeleted", @"BluetoothA2DPAndHFPVolumesCombined", @"endpointTypeInfo", @"inputVolumes", @"measuredHDMILatency", @"measuredHDMILatencyForCurrentRefreshRate", @"nowPlayingAppDisplayID", @"nowPlayingAppDisplayIDUponCarPlayDisconnect", @"nowPlayingAppWasPlayingUponCarPlayDisconnect", @"vibeIntensity", @"volumeLimits", @"volumeMultiplier", @"volumes", 0}];
    if (CFPreferencesGetAppBooleanValue(@"celestialToMediaExperienceDomainMigrationCompleted", @"com.apple.mediaexperience", 0))
    {
      if (dword_1EB75DE40)
      {
        v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v4 = *MEMORY[0x1E695E8B8];
      v5 = *MEMORY[0x1E695E898];
      CFPreferencesSetValue(@"celestialToMediaExperienceDomainMigrationCompleted", 0, @"com.apple.mediaexperience", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v4 = *MEMORY[0x1E695E8B8];
      v5 = *MEMORY[0x1E695E898];
      v6 = CFPreferencesCopyMultiple(v1, @"com.apple.celestial", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      CFPreferencesSetMultiple(v6, 0, @"com.apple.mediaexperience", v4, v5);
      if (v6)
      {
        CFRelease(v6);
      }
    }

    CFPreferencesSetMultiple(0, v1, @"com.apple.celestial", v4, v5);
    CFPreferencesSetValue(@"celestialToMediaExperienceDomainMigrationFullyCompleted", *MEMORY[0x1E695E4D0], @"com.apple.mediaexperience", v4, v5);
    CFPreferencesSynchronize(@"com.apple.mediaexperience", v4, v5);
    CFPreferencesSynchronize(@"com.apple.celestial", v4, v5);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void MXCFPreferencesMigrateSilentModeUserPreferenceToMXDomain()
{
  v8 = *MEMORY[0x1E69E9840];
  if (!MX_FeatureFlags_IsMXSilentModeEnabled())
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  if (CFPreferencesGetAppBooleanValue(@"ringerMutePreferenceToMediaExperienceDomainMigrationComplete", @"com.apple.mediaexperience", 0))
  {
    if (dword_1EB75DE40)
    {
LABEL_4:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFPreferenceBooleanWithDefault = FigGetCFPreferenceBooleanWithDefault();
    v3 = *MEMORY[0x1E695E4D0];
    if (CFPreferenceBooleanWithDefault)
    {
      v4 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v4 = *MEMORY[0x1E695E4C0];
    }

    v5 = *MEMORY[0x1E695E8B8];
    v6 = *MEMORY[0x1E695E898];
    CFPreferencesSetValue(@"silentModeEnabled", v4, @"com.apple.mediaexperience", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    CFPreferencesSetValue(@"ringerMutePreferenceToMediaExperienceDomainMigrationComplete", v3, @"com.apple.mediaexperience", v5, v6);
  }

LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
}

void CelesteGetRegionSpecificVolumeLimit(const __CFDictionary *a1)
{
  valuePtr = 1065353216;
  if (a1)
  {
    v2 = MGCopyAnswer();
    if (v2)
    {
      v3 = v2;
      Value = CFBooleanGetValue(v2);
      CFRelease(v3);
      if (Value)
      {
        gRegionSpecificLimitEnabled = 1;
        v5 = CFDictionaryGetValue(a1, @"HighVolumeLimit");
        if (v5)
        {
          v6 = v5;
          TypeID = CFNumberGetTypeID();
          if (TypeID == CFGetTypeID(v6))
          {
            CFNumberGetValue(v6, kCFNumberFloatType, &valuePtr);
          }
        }
      }
    }
  }
}

uint64_t FVCUtilitiesIsVolumeDifferenceAboveThreshold(float a1, float a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1 < 0.0;
  if (a1 >= 0.0)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0.0;
  }

  if (a2 >= 0.0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0.0;
  }

  if (v4 > 1.0)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = v4;
  }

  if (fabsf(a1) < 0.00000011921)
  {
    v2 = 1;
  }

  if (v3 > 1.0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = v3;
  }

  if (v3 <= 1.0 && v2)
  {
    goto LABEL_26;
  }

  v7 = a2 < 0.0;
  if (fabsf(a2) < 0.00000011921)
  {
    v7 = 1;
  }

  if (v4 <= 1.0 && v7 || ((v8 = fabsf(v5 + -1.0), fabsf(v6 + -1.0) >= 0.00000011921) ? (v9 = v8 < 0.00000011921) : (v9 = 1), v9))
  {
LABEL_26:
    if (vabds_f32(v6, v5) < 0.00000011921)
    {
      if (!dword_1EB75DEA0)
      {
LABEL_33:
        result = 0;
        goto LABEL_34;
      }

LABEL_28:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_33;
    }
  }

  else if (vabds_f32(v6, v5) < 0.009)
  {
    if (!dword_1EB75DEA0)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  result = 1;
LABEL_34:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigVAEndpointGetClassID()
{
  if (FigVAEndpointGetClassID_sRegisterFigVAEndpointBaseTypeOnce != -1)
  {
    FigVAEndpointGetClassID_cold_1();
  }

  return FigVAEndpointGetClassID_sFigVAEndpointClassID;
}

uint64_t __FigVAEndpointGetClassID_block_invoke()
{
  ClassID = FigEndpointGetClassID();

  return MEMORY[0x1EEDBC160](&FigVAEndpointGetClassID_sFigVAEndpointClassDesc, ClassID, 0, &FigVAEndpointGetClassID_sFigVAEndpointClassID);
}

__CFArray *CMSMUtility_CopyPlayingSessionsInfo()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v20;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v20 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v19 + 1) + 8 * i);
          if ([v7 isActive])
          {
            if ([v7 isPlaying])
            {
              if (([v7 doesntActuallyPlayAudio] & 1) == 0)
              {
                v8 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v8)
                {
                  v9 = v8;
                  [objc_msgSend(v7 "ID")];
                  SInt64 = FigCFNumberCreateSInt64();
                  CFDictionarySetValue(v9, @"CMSessionID", SInt64);
                  if (SInt64)
                  {
                    CFRelease(SInt64);
                  }

                  CMSUtility_GetClientName(v7, v11);
                  FigCFDictionarySetValue();
                  CMSUtility_GetDisplayID(v7, v12);
                  FigCFDictionarySetValue();
                  CMSUtility_GetAudioCategory(v7, v13);
                  FigCFDictionarySetValue();
                  CMSUtility_GetAudioMode(v7, v14);
                  FigCFDictionarySetValue();
                  [v7 interruptionStyle];
                  SInt32 = FigCFNumberCreateSInt32();
                  CFDictionarySetValue(v9, @"InterruptionStyle", SInt32);
                  if (SInt32)
                  {
                    CFRelease(SInt32);
                  }

                  [v7 clientPriority];
                  v16 = FigCFNumberCreateSInt32();
                  FigCFDictionarySetValue();
                  if (v16)
                  {
                    CFRelease(v16);
                  }

                  CFArrayAppendValue(Mutable, v9);
                  CFRelease(v9);
                }
              }
            }
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v4);
    }

    if (!CFArrayGetCount(Mutable))
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t CMSMUtility_PostInterruptionEndedNotificationForAudioSessionID(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    v4 = [+[MXSessionManager sharedInstance](MXSessionManager copySessionWithAudioSessionID:"copySessionWithAudioSessionID:", a1];
    v5 = v4;
    if (v4)
    {
      if (a2)
      {
        v6 = @"resumable.MXSessionManager";
      }

      else
      {
        v6 = @"non-resumable.MXSessionManager";
      }

      if ([v4 waitingToResume])
      {
        if (dword_1EB75DE40)
        {
          v18 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSUtility_PostInterruptionCommandNotification(v5, 1u, @"MXSessionManager", v6, 0, 0, 0, 0);
      }

      else
      {
        v18 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v9 = +[MXSessionManagerSidekick sharedInstance];
      v10 = [(MXSessionManagerSidekick *)v9 serialQueue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __CMSMUtility_PostInterruptionEndedNotificationForAudioSessionID_block_invoke;
      v14[3] = &unk_1E7AEAF90;
      v14[4] = v9;
      v15 = v3;
      v16 = a2;
      MXDispatchAsync("CMSMUtility_PostInterruptionEndedNotificationForAudioSessionID", "CMSessionManager_Utilities.m", 293, 0, 0, v10, v14);
    }

    result = 0;
  }

  else
  {
    v18 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = 4294951615;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef CMSMUtility_GetCurrentDeviceIdentifierAtIndex(uint64_t a1)
{
  FigSimpleMutexLock();
  if (dword_1EB75E0C8 <= a1)
  {
    v2 = 0;
  }

  else
  {
    MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, a1, &v4);
    v2 = cf;
    if (cf)
    {
      CFRetain(cf);
      CFAutorelease(v2);
    }
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t CMSMUtility_GetCurrentInputPortAtIndex(uint64_t a1)
{
  v2 = dword_1EB75E0CC;
  FigSimpleMutexLock();
  if (v2 <= a1)
  {
    v3 = 0;
  }

  else
  {
    MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, a1, v5);
    v3 = v5[11];
  }

  FigSimpleMutexUnlock();
  return v3;
}

CFMutableStringRef CMSMUtility_CopyCurrentRouteTypesAsCFString()
{
  v0 = CMSMUtility_CopyCurrentRouteTypes();
  if (v0)
  {
    v1 = v0;
    Count = CFArrayGetCount(v0);
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
        CFStringAppend(Mutable, ValueAtIndex);
        if (i < Count - 1)
        {
          CFStringAppend(Mutable, @"~");
        }
      }
    }

    CFRelease(v1);
    return Mutable;
  }

  else
  {
    v7 = *MEMORY[0x1E695E480];

    return CFStringCreateMutable(v7, 0);
  }
}

uint64_t CMSMUtility_SomeSessionHasDoNotResetAudioCategoryOnNextInactive()
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

        if ([*(*(&v6 + 1) + 8 * i) doNotResetAudioCategoryOnNextInactive])
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

uint64_t CMSMUtility_CopyCurrentPhoneCallIsRoutedViaCarBT()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = FigRoutingManagerCopyCarBluetoothIDs(qword_1EB75E190);
  v1 = CMSMUtility_CopyCurrentRouteTypes();
  if (!CMSMUtility_PhoneCallOrRingtoneExists())
  {
    goto LABEL_7;
  }

  if (FigCFArrayContainsValue())
  {
    CurrentDeviceIdentifierAtIndex = CMSMUtility_GetCurrentDeviceIdentifierAtIndex(0);
    if (cmsmIsDeviceIDIncludedInCarBluetoothIDs(CurrentDeviceIdentifierAtIndex, v0))
    {
      v3 = objc_alloc(MEMORY[0x1E696AD98]);
      v4 = 1;
      goto LABEL_21;
    }
  }

  if (FigCFArrayContainsValue() || !dword_1EB75E0C8)
  {
    v5 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(0, 0, 0, 0, 0, 0, 0x1F2893B50);
    if (v5)
    {
      v6 = v5;
      Count = CFArrayGetCount(v5);
      if (Count < 1)
      {
LABEL_16:
        v13 = 0;
      }

      else
      {
        v8 = Count;
        v9 = 0;
        while (1)
        {
          valuePtr[0] = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
          CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, valuePtr);
          if (vaeGetPortTypeFromPortID(valuePtr[0]) == 1885892706)
          {
            v11 = vaeCopyDeviceIdentifierFromVADPort(valuePtr[0]);
            IsDeviceIDIncludedInCarBluetoothIDs = cmsmIsDeviceIDIncludedInCarBluetoothIDs(v11, v0);
            if (v11)
            {
              CFRelease(v11);
            }

            if (IsDeviceIDIncludedInCarBluetoothIDs)
            {
              break;
            }
          }

          if (v8 == ++v9)
          {
            goto LABEL_16;
          }
        }

        v13 = 1;
      }

      CFRelease(v6);
    }

    else
    {
      v13 = 0;
    }

    v3 = objc_alloc(MEMORY[0x1E696AD98]);
    v4 = v13;
  }

  else
  {
LABEL_7:
    v3 = objc_alloc(MEMORY[0x1E696AD98]);
    v4 = 0;
  }

LABEL_21:
  v14 = [v3 initWithBool:v4];
  v15 = CMSMUtility_CopyCurrentRouteIdentifiers();
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v0)
  {
    CFRelease(v0);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

CFArrayRef CMSMUtility_CopyDisplayIDsOfActiveSessions()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
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
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 isActive] && objc_msgSend(v7, "displayID") && !-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", objc_msgSend(v7, "audioCategory")))
        {
          CFArrayAppendValue(Mutable, [v7 displayID]);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  Copy = CFArrayCreateCopy(v0, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v9 = *MEMORY[0x1E69E9840];
  return Copy;
}

__CFArray *CMSMUtility_CreateOverridePortsList(int a1, int a2)
{
  valuePtr = a2;
  v13 = a1;
  if ((a1 + 1) <= 1 && a2 == 0)
  {
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a2)
  {
    v7 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
    if (v7)
    {
      v8 = v7;
      CFArrayAppendValue(Mutable, v7);
      CFRelease(v8);
    }
  }

  if ((a1 - 1) <= 0xFFFFFFFD)
  {
    v9 = CFNumberCreate(v5, kCFNumberSInt32Type, &v13);
    if (v9)
    {
      v10 = v9;
      CFArrayAppendValue(Mutable, v9);
      CFRelease(v10);
    }
  }

  return Mutable;
}

__CFArray *CMSMUtility_CopyPlayingSessionsUsingRoutingContext()
{
  v14 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isActive])
        {
          if ([v6 isPlaying])
          {
            [v6 routingContextUUID];
            if (FigCFEqual())
            {
              CFArrayAppendValue(Mutable, v6);
            }
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void *CMSMUtility_CopyMXCoreSessionWithID(uint64_t a1)
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
        if ([objc_msgSend(v7 "ID")] == a1)
        {
          v8 = v7;
          goto LABEL_11;
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

  v7 = 0;
LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

id CMSMUtility_CopyActiveMXCoreSessionEligibleForNowPlayingAppConsideration(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v10;
LABEL_4:
      v5 = 0;
      while (1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        if ([v6 isActive])
        {
          [v6 displayID];
          if (FigCFEqual())
          {
            if (CMSUtility_GetIsEligibleForNowPlayingAppConsideration(v6))
            {
              break;
            }
          }
        }

        if (v3 == ++v5)
        {
          v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
          if (v3)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  result = v6;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMUtility_IsSiriControllingRoutingAndNotVolume()
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
        if ([v4 currentlyControllingFlags] & 2) != 0 && (objc_msgSend(v4, "currentlyControllingFlags") & 0x10) == 0 && (objc_msgSend(v4, "isTheAssistant"))
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

void *CMSMUtility_GetPlayingPhoneCallOrRingtoneSession()
{
  v13 = *MEMORY[0x1E69E9840];
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
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v9 != v3)
      {
        objc_enumerationMutation(v0);
      }

      v5 = *(*(&v8 + 1) + 8 * v4);
      if (([v5 hasPhoneCallBehavior] & 1) != 0 || CMSUtility_IsAudioCategoryRingtone(v5)) && objc_msgSend(v5, "isActive") && (objc_msgSend(v5, "isPlaying"))
      {
        break;
      }

      if (v2 == ++v4)
      {
        v2 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v2)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void *CMSMUtility_CopyActiveSessionWithPhoneCallBehaviorOrRingtone()
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
        if ([v5 isActive] && ((objc_msgSend(v5, "hasPhoneCallBehavior") & 1) != 0 || CMSUtility_IsAudioCategoryRingtone(v5)))
        {
          v6 = v5;
          goto LABEL_13;
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

  v5 = 0;
LABEL_13:

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

void *CMSMUtility_CopyActiveSiriSession()
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
        if ([v5 isTheAssistant] && objc_msgSend(v5, "isActive"))
        {
          v6 = v5;
          goto LABEL_12;
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

  v5 = 0;
LABEL_12:

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t CMSMUtility_IsSomeOtherPhoneCallPrioritySessionActive(void *a1)
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
        if ([v7 isActive])
        {
          v8 = [v7 isIDSMXCoreSession];
          if (v7 != a1 && (v8 & 1) == 0 && [v7 hasPhoneCallBehavior] && objc_msgSend(v7, "clientPriority") == 10)
          {
            v9 = 1;
            goto LABEL_15;
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
LABEL_15:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t CMSMUtility_ActiveVideoConferenceExists()
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
          [v5 audioMode];
          if (FigCFEqual() || ([v5 audioMode], FigCFEqual()))
          {
            if (CMSMUtility_IsPlayAndRecordCategory([v5 audioCategory]))
            {
              v6 = 1;
              goto LABEL_14;
            }
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
LABEL_14:

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t CMSMUtility_IsSiriActive()
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
        if ([v4 isTheAssistant] && (objc_msgSend(v4, "isActive") & 1) != 0)
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

uint64_t CMSMUtility_IsSiriRecording()
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
        if ([v4 isTheAssistant] && objc_msgSend(v4, "isRecording") && (objc_msgSend(v4, "isActive") & 1) != 0)
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

uint64_t CMSMUtility_DoesSiriAllowMixableAudioWhileRecording()
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
        if ([v4 isTheAssistant] && objc_msgSend(v4, "isRecording") && (objc_msgSend(v4, "allowMixableAudioWhileRecording") & 1) != 0)
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

uint64_t CMSMUtility_DoesCurrentInputPortSupportSecureMicrophone()
{
  result = CMSMUtility_GetCurrentInputPortAtIndex(0);
  if (result)
  {

    return vaeDoesPortSupportSecureMicrophone(result);
  }

  return result;
}

uint64_t CMSMUtility_ShouldIgnorePlayCommandsFromAccessory()
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
          if (([v5 hasPhoneCallBehavior] & 1) != 0 || CMSUtility_IsAudioCategoryRingtone(v5) || (objc_msgSend(v5, "isTheAssistant") & 1) != 0 || (objc_msgSend(v5, "audioCategory"), FigCFEqual()))
          {
            v6 = 1;
            goto LABEL_16;
          }
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v6 = 0;
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_16:

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t CMSMUtility_SomeClientIsPlayingLongFormAudio()
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
        if ([v4 isPlaying] && (objc_msgSend(v4, "doesntActuallyPlayAudio") & 1) == 0 && CMSUtility_IsSessionPlayingLongFormAudio(v4))
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

uint64_t CMSMUtility_SomeClientIsPlayingToAirPlay()
{
  v21 = *MEMORY[0x1E69E9840];
  if (FigVAEndpointManagerGetPropertyBoolean(qword_1EB75E090, 0x1F289B410) && (CMScreenGetScreenState(), !FigCFEqual()) && (CMScreenGetScreenType(), FigCFEqual()))
  {
    v18 = 0;
    cf = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex([+[MXSessionManager systemMirroringRoutingContextUUID] sharedInstance];
    if (cf)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v5 = *(*(VTable + 8) + 48);
      if (v5)
      {
        v6 = *(VTable + 8) + 48;
        v5(CMBaseObject, *MEMORY[0x1E6961F90], *MEMORY[0x1E695E480], &v18);
      }
    }

    v7 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      v11 = *MEMORY[0x1E695E4D0];
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if ([v13 isPlaying] && (!objc_msgSend(v13, "doesntActuallyPlayAudio") || FigCFEqual()) && CMSUtility_IsPlayingToDefaultVAD(v13))
          {
            v0 = 1;
            goto LABEL_23;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v0 = 0;
LABEL_23:

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

  else
  {
    v0 = 0;
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t CMSMUtility_IsAnyVoicePromptSessionThatDoesNotControlHardwareActive()
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
        [v5 audioMode];
        if (FigCFEqual() && [v5 dontTakeOverHardware] && (objc_msgSend(v5, "isActive") & 1) != 0)
        {
          v6 = 1;
          goto LABEL_13;
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
LABEL_13:

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t CMSMUtility_IsAirPlayVideoActive()
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

        if ([*(*(&v6 + 1) + 8 * i) isActiveOverAirPlayVideo])
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

uint64_t CMSMUtility_UpdateSomeLongFormVideoClientIsActiveOverAirPlayVideo()
{
  v14 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v0 = byte_1EB75E0A8;
  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        if ([v5 isActiveOverAirPlayVideo] && (objc_msgSend(v5, "isAudioOnlyAirPlayVideoActive") & 1) == 0 && (objc_msgSend(v5, "isLongFormVideo") & 1) != 0)
        {
          LODWORD(v2) = 1;
          goto LABEL_13;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  byte_1EB75E0A8 = v2;
  result = FigSimpleMutexUnlock();
  if (v2 != v0)
  {
    result = CMSMNotificationUtility_PostSomeLongFormVideoClientIsActiveOverAirPlayVideoDidChange(v2);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMUtility_UpdateSomeLongFormVideoClientIsPlayingOverAirPlayVideo()
{
  v14 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v0 = byte_1EB75E0A9;
  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        if ([v5 isActiveOverAirPlayVideo] && (objc_msgSend(v5, "isAudioOnlyAirPlayVideoActive") & 1) == 0 && objc_msgSend(v5, "isPlaying") && (objc_msgSend(v5, "isLongFormVideo") & 1) != 0)
        {
          LODWORD(v2) = 1;
          goto LABEL_14;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  byte_1EB75E0A9 = v2;
  result = FigSimpleMutexUnlock();
  if (v2 != v0)
  {
    result = CMSMNotificationUtility_PostSomeLongFormVideoClientIsPlayingOverAirPlayVideoDidChange(v2);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMUtility_UpdateSomeLongFormVideoClientIsPlaying()
{
  v14 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v0 = byte_1EB75E0AA;
  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        if ([v5 isPlaying] && (objc_msgSend(v5, "isLongFormVideo") & 1) != 0)
        {
          LODWORD(v2) = 1;
          goto LABEL_12;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  byte_1EB75E0AA = v2;
  result = FigSimpleMutexUnlock();
  if (v2 != v0)
  {
    result = CMSMNotificationUtility_PostSomeLongFormVideoClientIsPlayingDidChange(v2);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMUtility_IsAnyLongFormVideoSessionPlayingOverAirPlayVideo()
{
  FigSimpleMutexLock();
  v0 = byte_1EB75E0A9;
  FigSimpleMutexUnlock();
  return v0;
}

BOOL CMSMUtility_AllowedToUseGPSInBackground(const __CFArray *a1)
{
  v3.length = CFArrayGetCount(a1);
  v3.location = 0;
  return CFArrayContainsValue(a1, v3, @"location") != 0;
}

uint64_t CMSMUtility_CarPlayIsPlayingLongerDurationSession()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = CMSMUtility_CopyCarPlaySession();
  if (v0)
  {

    FigSimpleMutexLock();
    v1 = FigEndpointCentralEntityHoldsResource(qword_1EB75E178, 0x1F288E5F0, 0x1F2899C50);
    ResourceTypeBorrowConstraint = FigEndpointCentralGetResourceTypeBorrowConstraint(qword_1EB75E178, 0x1F2899C50);
    FigSimpleMutexUnlock();
    if (v1 && ResourceTypeBorrowConstraint == 1000)
    {
      v3 = 1;
    }

    else
    {
      v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v3 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        v5 = *v12;
        while (2)
        {
          for (i = 0; i != v3; ++i)
          {
            if (*v12 != v5)
            {
              objc_enumerationMutation(v4);
            }

            v7 = *(*(&v11 + 1) + 8 * i);
            if ([v7 isActive] && (CMSUtility_IsAudioCategoryVoicemail(v7) || (objc_msgSend(v7, "hasPhoneCallBehavior") & 1) != 0))
            {
              v3 = 1;
              goto LABEL_18;
            }
          }

          v3 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v3)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }
  }

  else
  {
    v3 = 0;
  }

  if (v3 != CMSMUtility_CarPlayIsPlayingLongerDurationSession_cachedIsPlayingLongerDurationSession)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMUtility_CarPlayIsPlayingLongerDurationSession_cachedIsPlayingLongerDurationSession = v3;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t CMSMUtility_IsCarPlayVideoActive()
{
  v0 = CMSMUtility_CopySystemAudioRoutingContextUUID();
  v1 = FigRoutingManagerCopyActivatedCarPlayEndpoint(v0);
  if (v1)
  {
    IsAirPlayVideoActive = CMSMUtility_IsAirPlayVideoActive();
    if (!v0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  IsAirPlayVideoActive = 0;
  if (v0)
  {
LABEL_3:
    CFRelease(v0);
  }

LABEL_4:
  if (v1)
  {
    CFRelease(v1);
  }

  return IsAirPlayVideoActive;
}

uint64_t CMSMUtility_CopyFigStarkModeController(CFTypeRef *a1)
{
  v11[20] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    LODWORD(v11[0]) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_9;
  }

  v11[0] = 0;
  if (!qword_1EB75E178 || (v2 = CFRetain(qword_1EB75E178)) == 0)
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
LABEL_9:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = 4294954315;
    goto LABEL_12;
  }

  v3 = v2;
  v4 = FigEndpointCentralCopyStarkModeController(v2, v11);
  v5 = v4;
  if (v4)
  {
    CMSMUtility_CopyFigStarkModeController_cold_1(v4, v11);
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *a1 = v11[0];
    v11[0] = 0;
  }

  CFRelease(v3);
LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

void CMSMUtility_ReassignHWControlFlagsAfterMusicVADDestruction()
{
  v26 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v21;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v21 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v20 + 1) + 8 * i);
        if ([v5 isActive])
        {
          CMSUtility_GetCurrentAudioDestination(v5);
          if (FigCFEqual())
          {
            if (([v5 prefersToTakeHWControlFlagsFromAnotherSession] & 1) == 0 && (objc_msgSend(v5, "currentlyControllingFlags") & 2) != 0)
            {
              if (v5)
              {
                v18 = 0u;
                v19 = 0u;
                v16 = 0u;
                v17 = 0u;
                v6 = [v0 countByEnumeratingWithState:&v16 objects:v24 count:16];
                if (v6)
                {
                  v7 = v6;
                  v8 = *v17;
                  v15 = v0;
                  do
                  {
                    for (j = 0; j != v7; ++j)
                    {
                      if (*v17 != v8)
                      {
                        objc_enumerationMutation(v0);
                      }

                      v10 = *(*(&v16 + 1) + 8 * j);
                      if ([v10 isActive])
                      {
                        CMSUtility_GetCurrentAudioDestination(v10);
                        if (FigCFEqual())
                        {
                          if ([v10 prefersToTakeHWControlFlagsFromAnotherSession] && ((objc_msgSend(v10, "hwControlFlags") & 2) != 0 || (objc_msgSend(v10, "hwControlFlags") & 0x20000) != 0))
                          {
                            if (dword_1EB75DE40)
                            {
                              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                              fig_log_call_emit_and_clean_up_after_send_and_compose();
                              v0 = v15;
                            }

                            cmsTryToTakeControl(v10);
                          }
                        }
                      }
                    }

                    v7 = [v0 countByEnumeratingWithState:&v16 objects:v24 count:16];
                  }

                  while (v7);
                }
              }

              goto LABEL_29;
            }
          }
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_29:

  v12 = *MEMORY[0x1E69E9840];
}

float CMSMUtility_GetVoiceOverDuckFadeDuration()
{
  if ((CMSMUtility_GetVoiceOverDuckFadeDuration_gCheckedVoiceOverDuckFadeDuration & 1) == 0)
  {
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"voiceover_duckfadeduration_ms", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      *&CMSMUtility_GetVoiceOverDuckFadeDuration_gVoiceOverDuckFadeDuration = AppIntegerValue / 1000.0;
    }

    CMSMUtility_GetVoiceOverDuckFadeDuration_gCheckedVoiceOverDuckFadeDuration = 1;
  }

  return *&CMSMUtility_GetVoiceOverDuckFadeDuration_gVoiceOverDuckFadeDuration;
}

void CMSMUtility_CreateTokensFromDeviceUID(CFStringRef theString, CFStringRef *a2, CFStringRef *a3)
{
  if (a2 | a3)
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      *a3 = 0;
    }

    if (theString)
    {
      v6 = CFStringFind(theString, @"-", 4uLL);
      Length = CFStringGetLength(theString);
      if (v6.length <= 0)
      {
        v11.length = Length;
        v10 = 0;
        v9 = *MEMORY[0x1E695E480];
      }

      else
      {
        v8 = CFStringGetLength(theString);
        v9 = *MEMORY[0x1E695E480];
        v14.location = v6.location + 1;
        v14.length = v8 + ~v6.location;
        v10 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], theString, v14);
        v11.length = v6.location;
      }

      v11.location = 0;
      v12 = CFStringCreateWithSubstring(v9, theString, v11);
      if (a2)
      {
        *a2 = v12;
        v12 = 0;
      }

      if (a3)
      {
        *a3 = v10;
        v10 = 0;
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (v10)
      {

        CFRelease(v10);
      }
    }
  }
}

const __CFString *CMSMUtility_CFStringEqualCaseInsensitive(const __CFString *result, const __CFString *a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (result)
  {
    return (CFStringCompare(result, a2, 1uLL) == kCFCompareEqualTo);
  }

  return result;
}

__CFString *CMSMUtility_CreateFormattedDateAndTime()
{
  v0 = CFCalendarCopyCurrent();
  v6 = 0;
  v7 = 0;
  v5 = 0;
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v2 = Mutable;
  if (v0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    CFCalendarDecomposeAbsoluteTime(v0, Current, "yMdHms", &v7 + 4, &v7, &v6 + 4, &v6, &v5 + 4, &v5);
    CFStringAppendFormat(v2, 0, @"%d/%d/%d-%.2d:%.2d:%.2d", v7, HIDWORD(v6), HIDWORD(v7), v6, HIDWORD(v5), v5);
    CFRelease(v0);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"%d/%d/%d-%.2d:%.2d:%.2d", 0, 0, 0, 0, 0, 0);
  }

  return v2;
}

CFIndex CMSMUtility_PrintRouteDescriptions(int a1, CFArrayRef theArray)
{
  if (theArray)
  {
    return CFArrayGetCount(theArray);
  }

  return result;
}

CFTypeRef CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary()
{
  v4[1] = *MEMORY[0x1E69E9840];
  result = CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary_audioBehaviour;
  if (CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary_audioBehaviour)
  {
    goto LABEL_5;
  }

  v4[0] = @"VirtualAudioDevice_Default";
  v1 = *MEMORY[0x1E695E480];
  v2 = CFArrayCreate(*MEMORY[0x1E695E480], v4, 1, MEMORY[0x1E695E9C0]);
  CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary_audioBehaviour = CFDictionaryCreateMutable(v1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary_audioBehaviour, @"AudioBehaviour_Destination", v2);
  CFDictionarySetValue(CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary_audioBehaviour, @"AudioBehaviour_Stream", @"Stream_Primary");
  if (v2)
  {
    CFRelease(v2);
  }

  result = CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary_audioBehaviour;
  if (CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary_audioBehaviour)
  {
LABEL_5:
    result = CFRetain(result);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMUtility_GetFadeInDurationForPlaybackHandoff()
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

    gFadeInDurationAppliedForPlaybackHandoff = 1;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

const char *CMSMUtility_GetVolumeOperationName(int a1)
{
  if ((a1 - 1) > 0xD)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_1E7AEB158[a1 - 1];
  }
}

__CFString *CMSMUtility_GetStringForRouteControlFeatures(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E7AEB1C8[a1];
  }
}

CFTypeRef CMSMUtility_CopyMostRelevantAirPlayAudioModeForRoutingContext()
{
  v0 = CMSMUtility_CopyPlayingSessionsUsingRoutingContext();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Count = CFArrayGetCount(v0);
  if (Count < 1)
  {
    goto LABEL_16;
  }

  v3 = Count;
  v4 = 0;
  v5 = 0;
  v6 = *MEMORY[0x1E6962508];
  v7 = *MEMORY[0x1E6962500];
  v8 = *MEMORY[0x1E6962510];
  do
  {
    v9 = v5;
    ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
    [ValueAtIndex audioCategory];
    if (FigCFEqual())
    {
      [ValueAtIndex audioMode];
      v11 = FigCFEqual();
      v5 = v6;
      if (!v11)
      {
        [ValueAtIndex audioMode];
        v12 = FigCFEqual();
        v5 = v7;
        if (v12)
        {
          v5 = v8;
          if (v9)
          {
            v13 = FigCFEqual();
            v5 = v8;
            if (!v13)
            {
              v5 = v7;
            }
          }
        }
      }
    }

    else if (v9)
    {
      v5 = v9;
    }

    else
    {
      v5 = v7;
    }

    ++v4;
  }

  while (v3 != v4);
  if (v5)
  {
    v14 = CFRetain(v5);
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  CFRelease(v1);
  return v14;
}

uint64_t CMSMUtility_ChangeMainVolumeForSession(void *a1, float a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  cf[24] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  FigVolumeControllerCopySharedController(cf);
  v26 = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextForContextUUID([a1 routingContextUUID], &v26);
  v10 = 0;
  if (a5 > 10)
  {
    if (a5 == 12)
    {
      goto LABEL_9;
    }

    if (a5 != 11)
    {
      goto LABEL_21;
    }

LABEL_7:
    v12 = v26;
    v11 = cf[0];
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v13)
    {
      v10 = v13(v11, v12, a2);
    }

    else
    {
      v10 = 4294954514;
    }

    v18 = v26;
    v17 = cf[0];
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v19)
    {
      v19(v17, v18, a6);
    }

    if (dword_1EB75DE40)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (a5 == 1)
  {
    goto LABEL_7;
  }

  if (a5 != 2)
  {
    goto LABEL_21;
  }

LABEL_9:
  v15 = v26;
  v14 = cf[0];
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v16)
  {
    v10 = v16(v14, v15, a2);
  }

  else
  {
    v10 = 4294954514;
  }

  v21 = v26;
  v20 = cf[0];
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v22)
  {
    v22(v20, v21, a6);
  }

  if (dword_1EB75DE40)
  {
LABEL_20:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_21:
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (v26)
  {
    CFRelease(v26);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t CMSMUtility_UpdateAudioBehaviourForSessionsUsingRoutingContextUUID()
{
  v13 = *MEMORY[0x1E69E9840];
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
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        [v5 routingContextUUID];
        if (FigCFEqual())
        {
          cmsUpdateAudioBehavior(v5);
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v2);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t CMSMUtility_SetNonLongFormMediaApps(const void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v3 = qword_1EB75E1C8;
  qword_1EB75E1C8 = a1;
  if (a1)
  {
    CFRetain(a1);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  result = FigSimpleMutexUnlock();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSMUtility_InterruptSessionsWithRoutingContextUUID()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v12;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v12 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v11 + 1) + 8 * i);
        [v5 routingContextUUID];
        if (FigCFEqual() && [v5 isActive] && objc_msgSend(v5, "isPlaying"))
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSUtilityApplier_PostNotification_StopCommand(v5, 0);
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v2);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t CMSMUtility_InterruptActiveSiriSession()
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
        if ([v5 isTheAssistant] && objc_msgSend(v5, "isActive"))
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSUtilityApplier_PostNotification_StopCommand(v5, 0);
          goto LABEL_14;
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

LABEL_14:

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}