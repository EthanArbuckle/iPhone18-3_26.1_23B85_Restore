uint64_t OUTLINED_FUNCTION_1_20()
{
  v2 = *(v0 + 3832);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_1_22(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_1_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;
  a10 = 0;

  return remoteSystemController_getObjectID(a1, &a10);
}

uint64_t OUTLINED_FUNCTION_1_26()
{
  v2 = *(v0 + 3960);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t volumeControllerServer_handleCanUseForRoutingContextMessage()
{
  OUTLINED_FUNCTION_5_4();
  cf = 0;
  uint64 = xpc_dictionary_get_uint64(v0, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v2 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v2)
  {
    v5 = v2;
  }

  else if (*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v3 = OUTLINED_FUNCTION_14_3();
    v5 = v4(v3);
    if (!v5)
    {
      OUTLINED_FUNCTION_15_3(kFigVolumeControllerXPCMsgParam_CanUseForRoutingContext, 0);
    }
  }

  else
  {
    v5 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t volumeController_AreVolumeOperationsSupportedForRoutingContext(uint64_t a1, uint64_t a2, Boolean *a3)
{
  result = 4294949706;
  if (a2 && a3)
  {
    key = 0;
    FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a2, &key);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = *(DerivedStorage + 8);
    FigSimpleMutexLock();
    v7 = CFDictionaryContainsKey(*(DerivedStorage + 16), key);
    v8 = *(DerivedStorage + 8);
    FigSimpleMutexUnlock();
    *a3 = v7;
    if (key)
    {
      CFRelease(key);
    }

    return 0;
  }

  return result;
}

uint64_t vaeIsPortBluetoothShareable(uint64_t result)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"usswbolg";
    result = AudioObjectHasProperty(result, &inAddress);
    if (result)
    {
      ioDataSize = 4;
      outData = 0;
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

uint64_t singletonVolumeController_GetMasterVolumeControlTypeOfRoutingContext(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_15_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v5 = singletonVolumeController_copyRemoteVolumeController(v3, v4);
  if (!v5)
  {
    if (!*(*(OUTLINED_FUNCTION_38() + 16) + 48))
    {
      v8 = 4294954514;
      if (!v2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v6 = OUTLINED_FUNCTION_17_0();
    v5 = v7(v6);
  }

  v8 = v5;
  if (v2)
  {
LABEL_7:
    CFRelease(v2);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t volumeControllerRemote_GetMasterVolumeControlTypeOfRoutingContext()
{
  OUTLINED_FUNCTION_0_13();
  if (v4)
  {
    v5 = v2;
    if (v2)
    {
      if (OUTLINED_FUNCTION_10_2(v3, value, v28, xdict) || (OUTLINED_FUNCTION_8(), v6 = FigXPCCreateBasicMessage(), v6) || OUTLINED_FUNCTION_31(v6, v7, v8, v9, v10, v11, v12, v13, valuea))
      {
        OUTLINED_FUNCTION_21();
      }

      else
      {
        xpc_dictionary_set_uint64(xdicta, kFigVolumeControllerXPCMsgParam_RoutingContext, valueb);
        v14 = OUTLINED_FUNCTION_11_2();
        v22 = OUTLINED_FUNCTION_22(v14, v15, v16, v17, v18, v19, v20, v21, valueb, v29);
        if (!v0)
        {
          *v5 = xpc_dictionary_get_uint64(v22, kFigVolumeControllerXPCMsgParam_GetMasterVolumeControlType);
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  v23 = *(v1 + 3512);
  OUTLINED_FUNCTION_29();
  return v0;
}

uint64_t volumeControllerServer_handleGetMasterVolumeControlTypeMessage()
{
  OUTLINED_FUNCTION_5_4();
  cf = 0;
  value = 0;
  uint64 = xpc_dictionary_get_uint64(v1, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v3 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v3)
  {
    v6 = v3;
  }

  else if (*(*(OUTLINED_FUNCTION_22_0() + 16) + 48))
  {
    v4 = OUTLINED_FUNCTION_14_3();
    v6 = v5(v4);
    if (!v6)
    {
      xpc_dictionary_set_uint64(v0, kFigVolumeControllerXPCMsgParam_GetMasterVolumeControlType, value);
    }
  }

  else
  {
    v6 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t routingContextResilientRemote_CopySelectedRouteDescriptors(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __routingContextResilientRemote_CopySelectedRouteDescriptors_block_invoke;
  v3[3] = &__block_descriptor_40_e34_i16__0__OpaqueFigRoutingContext__8l;
  v3[4] = a2;
  return routingContextResilientRemote_withRemoteContext(a1, v3);
}

uint64_t MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled()
{
  if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled_cold_1();
  }

  return MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled_relativeVoiceOverVolumeEnabled;
}

uint64_t HandleNoReplySystemControllerMessage(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v6 = OpCode;
  }

  else
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    v5 = LookupSystemControllerByObjectIDForConnection();
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = 4294951138;
    }
  }

  objc_autoreleasePoolPop(v3);
  return v6;
}

uint64_t singletonVolumeController_CanUseForRoutingContext(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_15_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v5 = singletonVolumeController_copyRemoteVolumeController(v3, v4);
  if (!v5)
  {
    if (!*(*(OUTLINED_FUNCTION_38() + 16) + 8))
    {
      v8 = 4294954514;
      if (!v2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v6 = OUTLINED_FUNCTION_17_0();
    v5 = v7(v6);
  }

  v8 = v5;
  if (v2)
  {
LABEL_7:
    CFRelease(v2);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t OUTLINED_FUNCTION_38()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return CMBaseObjectGetVTable();
}

const void *singletonVolumeController_copyRemoteRoutingContext(const void *a1)
{
  BOOLean = 0;
  VTable = CMBaseObjectGetVTable();
  v3 = *(*(VTable + 8) + 48);
  if (v3 && (v4 = *(VTable + 8) + 48, (v3(a1, 0x1F289A1F0, *MEMORY[0x1E695E480], &BOOLean), BOOLean) && CFBooleanGetValue(BOOLean)))
  {
    v5 = FigRoutingContextResilientRemoteCopyRemoteContext();
  }

  else
  {
    if (!a1)
    {
      goto LABEL_9;
    }

    v5 = CFRetain(a1);
  }

  a1 = v5;
LABEL_9:
  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return a1;
}

CFTypeRef FigRoutingContextResilientRemoteCopyRemoteContext()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t OUTLINED_FUNCTION_13()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_19()
{
  v2 = *(v0 + 3512);

  return FigXPCRemoteClientSendSyncMessageCreatingReply();
}

void OUTLINED_FUNCTION_19_2(const void *a1, const void *a2, void *a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, char *a12)
{

  routingSessionManager_updateCurrentSession(a1, a2, a3, a4, a5, 0, 0, 0, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_23()
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

void OUTLINED_FUNCTION_23_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t value)
{
  v17 = *v15;

  xpc_dictionary_set_uint64(v14, v17, value);
}

uint64_t systemController_SetProperty(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(gFigSystemControllerSetPropertyMapping, a2);
  if (Value)
  {
    v7 = Value;
    v8 = *DerivedStorage;

    return [v8 setAttributeForKey:v7 andValue:a3];
  }

  else if (FigCFEqual())
  {

    return HDMILatencyMgr_UpdateMeasuredHDMILatency(a3);
  }

  else
  {
    return 4294954512;
  }
}

uint64_t singletonVolumeController_CanSetMasterVolumeOfRoutingContext(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_15_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v5 = singletonVolumeController_copyRemoteVolumeController(v3, v4);
  if (!v5)
  {
    if (!*(*(OUTLINED_FUNCTION_38() + 16) + 40))
    {
      v8 = 4294954514;
      if (!v2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v6 = OUTLINED_FUNCTION_17_0();
    v5 = v7(v6);
  }

  v8 = v5;
  if (v2)
  {
LABEL_7:
    CFRelease(v2);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t remoteSystemController_SetProperty(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  if (!a2)
  {
    FigSignalErrorAtGM();
    goto LABEL_10;
  }

  if (remoteSystemController_getObjectID(a1, &v7))
  {
LABEL_10:
    OUTLINED_FUNCTION_10_8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_14();
  v3 = FigXPCCreateBasicMessage();
  if (v3 || (v4 = *MEMORY[0x1E69615C0], v3 = FigXPCMessageSetCFString(), v3) || (v5 = *MEMORY[0x1E69615C8], OUTLINED_FUNCTION_16_5(v8), v3 = FigXPCMessageSetCFObject(), v3))
  {
    v2 = v3;
  }

  else
  {
    FigXPCRemoteClientSendAsyncMessage();
    OUTLINED_FUNCTION_15_8();
  }

LABEL_7:
  FigXPCRelease();
  return v2;
}

void OUTLINED_FUNCTION_25_0(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{

  xpc_dictionary_set_double(v13, a2, *&a13);
}

NSString *CMSMUtility_CopyCurrentlyActiveCategory()
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
      for (i = 0; i != v1; i = (i + 1))
      {
        if (*v8 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v7 + 1) + 8 * i);
        if ([v4 isActive] && !-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", objc_msgSend(v4, "audioCategory")))
        {
          v1 = [+[MXSessionManager sharedInstance](MXSessionManager currentAudioCategory];
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

uint64_t CMSMVAUtility_GetVADModeFromFigModeName(uint64_t a1)
{
  v1 = 1768776806;
  if (a1 && [+[MXSessionManager figModeTypeToVADModeType] sharedInstance]
  {
    v3 = -[NSDictionary objectForKey:]([+[MXSessionManager sharedInstance](MXSessionManager figModeTypeToVADModeType], "objectForKey:", a1);
    if (v3)
    {
      return v3;
    }

    else
    {
      return 1768776806;
    }
  }

  return v1;
}

__CFDictionary *CMSMVAUtility_CreateRouteConfigurationDictionary(int a1, int a2, const void *a3, const void *a4, int a5)
{
  v18 = a2;
  valuePtr = a1;
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a1)
  {
    v12 = CFNumberCreate(v10, kCFNumberSInt32Type, &valuePtr);
    if (v12)
    {
      CFDictionarySetValue(Mutable, @"category", v12);
    }

    if (a2)
    {
      v13 = CFNumberCreate(v10, kCFNumberSInt32Type, &v18);
      if (v13)
      {
        v14 = v13;
        CFDictionarySetValue(Mutable, @"mode", v13);
        CFRelease(v14);
      }
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  if (a3)
  {
    CFDictionarySetValue(Mutable, @"initiation context", a3);
  }

  if (a4)
  {
    CFDictionarySetValue(Mutable, @"allowed port types", a4);
  }

  IsAirPodsStudioVoiceMicEnabled = MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled();
  if (a5 && IsAirPodsStudioVoiceMicEnabled)
  {
    CFDictionarySetValue(Mutable, @"studio mic input", *MEMORY[0x1E695E4D0]);
  }

  if (CFDictionaryGetCount(Mutable))
  {
    v16 = 1;
  }

  else
  {
    v16 = Mutable == 0;
  }

  if (!v16)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t vaemShouldIncludePortTypeForRouteConfiguration(int a1, int a2, const void *a3, int a4, AudioObjectPropertyElement a5)
{
  *&inAddress.mSelector = 0x676C6F6270727370;
  inAddress.mElement = a5;
  outData = 0;
  ioDataSize = 4;
  RouteConfigurationDictionary = CMSMVAUtility_CreateRouteConfigurationDictionary(a1, a2, 0, a3, a4);
  AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 8 * (RouteConfigurationDictionary != 0), RouteConfigurationDictionary, &ioDataSize, &outData);
  if (RouteConfigurationDictionary)
  {
    CFRelease(RouteConfigurationDictionary);
  }

  return outData;
}

uint64_t MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled()
{
  if (MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled_sIsAirPodsStudioVoiceMicEnabled;
}

__CFArray *cmsmCopyPickableRoutesForRouteConfiguration(NSDictionary *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  Mutable = 0;
  v146 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a2;
    if (a2)
    {
      v10 = a1;
      if ([a4 count])
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      v12 = objc_alloc(MEMORY[0x1E696AEC0]);
      v126 = a3;
      if (a3)
      {
        v13 = [v12 initWithFormat:@"%lu", objc_msgSend(objc_msgSend(a3, "description"), "hash")];
      }

      else
      {
        v13 = [v12 initWithUTF8String:"null"];
      }

      v14 = v13;
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v11)
      {
        v16 = [v15 initWithFormat:@"%lu", objc_msgSend(objc_msgSend(v11, "description"), "hash")];
      }

      else
      {
        v16 = [v15 initWithUTF8String:"null"];
      }

      v17 = v16;
      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = [v18 initWithFormat:@"%@~%@~%@~%@~%@", v10, v6, v14, v17, objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedChar:", a5)];
      -[NSRecursiveLock lock]([+[MXSessionManager sharedInstance](MXSessionManager propertiesLock], "lock");
      if ([(NSMutableDictionary *)[+[MXSessionManager sharedInstance](MXSessionManager pickableRoutesDescriptions] count]
      {
        Mutable = -[NSMutableDictionary objectForKey:]([+[MXSessionManager sharedInstance](MXSessionManager pickableRoutesDescriptions], "objectForKey:", v19);
      }

      else
      {
        Mutable = 0;
      }

      -[NSRecursiveLock unlock]([+[MXSessionManager sharedInstance](MXSessionManager propertiesLock], "unlock");
      if (Mutable)
      {
LABEL_16:

        goto LABEL_17;
      }

      v114 = v19;
      v137 = 0;
      cmsmCopyVADPickedRouteDescriptionForRouteConfiguration(v10, v6, v126, v11, a5, &v137);
      v22 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v23 = v137;
      v24 = cmsmCopyWirelessPortsArrayForRouteConfiguration(v10, v6, v11, a5);
      theArray = 0;
      if (v24)
      {
        v25 = v24;
        if (CFArrayGetCount(v24))
        {
          theArray = cmsmCreateRouteDescriptionArrayFromPortIDsForRouteConfiguration(v10, v25, 1, v23);
        }

        else
        {
          theArray = 0;
        }

        CFRelease(v25);
      }

      v115 = v14;
      VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v10);
      VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(v6);
      key = vaemShouldIncludePortTypeForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, v11, 0, 0x70617061u);
      v128 = VADCategoryFromFigCategoryName;
      v127 = VADModeFromFigModeName;
      ShouldIncludePortTypeForRouteConfiguration = vaemShouldIncludePortTypeForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, v11, 0, 0x70617073u);
      v29 = +[MXEndpointDescriptorCache sharedInstance];
      v30 = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache copyAvailableEndpointsForManager:"copyAvailableEndpointsForManager:", [(MXEndpointDescriptorCache *)v29 getEndpointManagerForType:*MEMORY[0x1E69618D0]]];
      obj = Mutable;
      v120 = v6;
      v121 = v10;
      v119 = v11;
      v118 = a5;
      allocator = v22;
      v116 = v17;
      if (v30)
      {
        v31 = v30;
        Count = CFArrayGetCount(v30);
        if (theArray)
        {
          MutableCopy = CFArrayCreateMutableCopy(0, 0, theArray);
        }

        else
        {
          MutableCopy = CFArrayCreateMutable(v22, 0, MEMORY[0x1E695E9C0]);
        }

        v34 = MutableCopy;
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v31, i);
            if (!FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(ValueAtIndex))
            {
              SupportedFeatures = FigEndpointGetSupportedFeatures();
              if ((SupportedFeatures & 2) != 0 && key)
              {
                cmsmCreateAndInsertAirPlayRouteDescription(ValueAtIndex, 0x1F2897C90, v34);
              }

              if ((SupportedFeatures & 1) != 0 && ShouldIncludePortTypeForRouteConfiguration)
              {
                FigRoutingManagerGetMirroringModeFromEndpoint(ValueAtIndex);
                if (FigCFEqual())
                {
                  v38 = 0x1F288FA70;
                }

                else
                {
                  v38 = 0x1F2897CB0;
                }

                cmsmCreateAndInsertAirPlayRouteDescription(ValueAtIndex, v38, v34);
              }
            }
          }
        }

        v22 = allocator;
        v39 = CFArrayCreateMutableCopy(allocator, 0, v34);
        if (v34)
        {
          CFRelease(v34);
        }

        v117 = v39;
        CFRelease(v31);
        v6 = v120;
        v10 = v121;
        v11 = v119;
      }

      else
      {
        v117 = 0;
      }

      v40 = v128;
      v41 = MEMORY[0x1E695E9C0];
      v125 = CFArrayCreateMutable(v22, 0, MEMORY[0x1E695E9C0]);
      v129 = CFArrayCreateMutable(v22, 0, v41);
      keya = vaemShouldIncludePortTypeForRouteConfiguration(v40, v127, v11, a5, 0x70687062u);
      v42 = vaemShouldIncludePortTypeForRouteConfiguration(v40, v127, v11, a5, 0x70687042u);
      v43 = vaemShouldIncludePortTypeForRouteConfiguration(v40, v127, v11, a5, 0x706C656Fu);
      v44 = +[MXEndpointDescriptorCache sharedInstance];
      v45 = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache copyAvailableEndpointsForManager:"copyAvailableEndpointsForManager:", [(MXEndpointDescriptorCache *)v44 getEndpointManagerForType:*MEMORY[0x1E69618D8]]];
      if (v45)
      {
        v46 = v45;
        if (keya || v42 || v43)
        {
          v47 = CFArrayGetCount(v45);
          if (v47 >= 1)
          {
            v48 = v47;
            v49 = 0;
            v50 = *MEMORY[0x1E6962130];
            v51 = *MEMORY[0x1E695E4C0];
            v52 = *MEMORY[0x1E69620F8];
            do
            {
              v53 = CFArrayGetValueAtIndex(v46, v49);
              cf[0] = 0;
              CMBaseObject = FigEndpointGetCMBaseObject();
              v55 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v55)
              {
                v55(CMBaseObject, v50, v22, cf);
              }

              if (FigCFEqual())
              {
                NonConnectedBTRouteDescription = cmsmCreateNonConnectedBTRouteDescription(v53);
                if (NonConnectedBTRouteDescription)
                {
                  v57 = NonConnectedBTRouteDescription;
                  CFArrayAppendValue(v129, NonConnectedBTRouteDescription);
                  *&v143[0] = 0;
                  v58 = FigEndpointGetCMBaseObject();
                  v59 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v59)
                  {
                    v59(v58, v52, v22, v143);
                  }

                  if (*&v143[0])
                  {
                    CFRelease(*&v143[0]);
                  }

                  CFRelease(v57);
                }
              }

              if (cf[0])
              {
                CFRelease(cf[0]);
              }

              ++v49;
            }

            while (v48 != v49);
          }
        }

        CFRelease(v46);
        Mutable = obj;
        v6 = v120;
        v10 = v121;
        v11 = v119;
        LODWORD(a5) = v118;
      }

      v60 = v125;
      v61 = v129;
      if (v129 && CFArrayGetCount(v129))
      {
        v147.length = CFArrayGetCount(v129);
        v147.location = 0;
        CFArrayAppendArray(v125, v129, v147);
      }

      v62 = v126;
      v63 = v117;
      if (v117 && CFArrayGetCount(v117))
      {
        v148.length = CFArrayGetCount(v117);
        v148.location = 0;
        CFArrayAppendArray(v125, v117, v148);
      }

      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      if ((UpTimeNanoseconds - cmsmLogBluetoothDetails_availableRoutesLastLoggedTimestamp) >= 0x2540BE400)
      {
        v113 = UpTimeNanoseconds;
        if (v125)
        {
          v65 = CFArrayGetCount(v125);
          if (v65 >= 1)
          {
            v66 = v65;
            v67 = 0;
            v68 = *MEMORY[0x1E695E4D0];
            v123 = v65;
            do
            {
              v69 = CFArrayGetValueAtIndex(v60, v67);
              if (CFDictionaryGetValue(v69, @"IsBTRoute") == v68)
              {
                Value = CFDictionaryGetValue(v69, @"RouteName");
                v71 = CFDictionaryGetValue(v69, @"RouteUID");
                v72 = CFDictionaryGetValue(v69, @"BTDetails_ProductID");
                CFDictionaryGetValue(v69, @"BTDetails_IsHFPRoute");
                if (dword_1EB75DE40)
                {
                  inAddress.mSelector = 0;
                  type[0] = OS_LOG_TYPE_DEFAULT;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  mSelector = inAddress.mSelector;
                  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
                  {
                    v75 = mSelector;
                  }

                  else
                  {
                    v75 = mSelector & 0xFFFFFFFE;
                  }

                  if (v75)
                  {
                    v76 = FigCFEqual();
                    LODWORD(v143[0]) = 136316163;
                    *(v143 + 4) = "cmsmLogBluetoothDetails";
                    WORD6(v143[0]) = 2113;
                    *(v143 + 14) = Value;
                    WORD3(v143[1]) = 2113;
                    *(&v143[1] + 1) = v71;
                    LOWORD(v144) = 2114;
                    *(&v144 + 2) = v72;
                    WORD5(v144) = 1024;
                    HIDWORD(v144) = v76;
                    LODWORD(v112) = 48;
                    v111 = v143;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v22 = allocator;
                  v60 = v125;
                  v66 = v123;
                }
              }

              ++v67;
            }

            while (v66 != v67);
          }
        }

        cmsmLogBluetoothDetails_availableRoutesLastLoggedTimestamp = v113;
        Mutable = obj;
        v6 = v120;
        v10 = v121;
        v11 = v119;
        LODWORD(a5) = v118;
        v62 = v126;
        v63 = v117;
        v61 = v129;
      }

      if (theArray)
      {
        CFRelease(theArray);
        if (!v63)
        {
LABEL_85:
          if (!v61)
          {
            goto LABEL_86;
          }

          goto LABEL_90;
        }
      }

      else if (!v63)
      {
        goto LABEL_85;
      }

      CFRelease(v63);
      if (!v61)
      {
LABEL_86:
        if (!v60)
        {
          goto LABEL_95;
        }

LABEL_91:
        if (CFArrayGetCount(v60) && CFArrayGetCount(v60))
        {
          v149.length = CFArrayGetCount(v60);
          v149.location = 0;
          CFArrayAppendArray(Mutable, v60, v149);
        }

        CFRelease(v60);
LABEL_95:
        if (MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled() && !vaemIsPersistentRouteActive())
        {
          v77 = v137;
          if (MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled())
          {
            v79 = cmsmCopyPickableQuiesceableWiredPortsForRouteConfiguration();
            if ([v79 count])
            {
              RouteDescriptionArrayFromPortIDsForRouteConfiguration = cmsmCreateRouteDescriptionArrayFromPortIDsForRouteConfiguration(v10, v79, 1, v77);
            }

            else
            {
              RouteDescriptionArrayFromPortIDsForRouteConfiguration = 0;
            }

            if (![(__CFArray *)RouteDescriptionArrayFromPortIDsForRouteConfiguration count:v111])
            {

              RouteDescriptionArrayFromPortIDsForRouteConfiguration = 0;
            }
          }

          else
          {
            RouteDescriptionArrayFromPortIDsForRouteConfiguration = 0;
          }

          if ([(__CFArray *)RouteDescriptionArrayFromPortIDsForRouteConfiguration count])
          {
            v150.length = [(__CFArray *)RouteDescriptionArrayFromPortIDsForRouteConfiguration count];
            v150.location = 0;
            CFArrayAppendArray(Mutable, RouteDescriptionArrayFromPortIDsForRouteConfiguration, v150);
          }
        }

        if (!FigCFEqual() && !FigCFEqual() || !FigCFEqual())
        {
          goto LABEL_116;
        }

        *type = 0;
        ioDataSize = 8;
        *&inAddress.mSelector = *"strpptuo";
        inAddress.mElement = 0;
        if (!AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 0, 0, &ioDataSize, type) && *type)
        {
          v101 = CFGetTypeID(*type);
          if (v101 == CFArrayGetTypeID())
          {
            v102 = v62;
            v103 = objc_alloc_init(MEMORY[0x1E695DF70]);
            memset(v143, 0, sizeof(v143));
            v144 = 0u;
            v145 = 0u;
            v104 = *type;
            v105 = [*type countByEnumeratingWithState:v143 objects:cf count:16];
            if (v105)
            {
              v106 = v105;
              v107 = **&v143[1];
              do
              {
                for (j = 0; j != v106; ++j)
                {
                  if (**&v143[1] != v107)
                  {
                    objc_enumerationMutation(v104);
                  }

                  v109 = *(*(&v143[0] + 1) + 8 * j);
                  v110 = [v109 unsignedIntValue];
                  if (vaeGetPortTypeFromPortID(v110) == 1885892706 && !vaeIsAvailableForVoicePrompts(v110) && vaeGetVADEndpointTypeForPort(v110) == 1701869160)
                  {
                    [v103 addObject:v109];
                  }
                }

                v106 = [v104 countByEnumeratingWithState:v143 objects:cf count:16];
              }

              while (v106);
            }

            v62 = v102;
            if (*type)
            {
              CFRelease(*type);
              *type = 0;
            }

            v10 = v121;
            v80 = cmsmCreateRouteDescriptionArrayFromPortIDsForRouteConfiguration(v121, v103, 1, 0);
            v11 = v119;
            v6 = v120;
            LODWORD(a5) = v118;
            if (v103)
            {
              CFRelease(v103);
            }

            goto LABEL_114;
          }

          if (*type)
          {
            CFRelease(*type);
            *type = 0;
          }
        }

        v80 = CFArrayCreateMutable(v22, 0, MEMORY[0x1E695E9C0]);
LABEL_114:
        v151.length = CFArrayGetCount(v80);
        v151.location = 0;
        CFArrayAppendArray(Mutable, v80, v151);
        if (v80)
        {
          CFRelease(v80);
        }

LABEL_116:
        v81 = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v10);
        v82 = CMSMVAUtility_GetVADModeFromFigModeName(v6);
        v83 = CMSMCreateRouteDescriptionFromPortIDOrRouteConfiguration(0, v81, v82, v62, v11, a5);
        CFArrayAppendValue(Mutable, v83);
        LODWORD(cf[0]) = 0;
        FigCFDictionaryGetInt32IfPresent();
        v84 = cf[0];
        v85 = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v10);
        v86 = CMSMVAUtility_GetVADModeFromFigModeName(v6);
        v87 = cmsmCopyBuiltinPortsListForRouteConfigurationScopeAndDevice(v85, v86, v11);
        if ([v87 count] <= 1)
        {

          v17 = v116;
        }

        else
        {
          v88 = 1;
          if ([objc_msgSend(v87 objectAtIndex:{1), "unsignedIntValue"}] == v84)
          {
            v89 = 0;
          }

          else
          {
            v88 = [v87 count] - 1;
            v89 = 1;
          }

          v17 = v116;
          v90 = cmsmCreateRouteDescriptionArrayFromPortIDsForRouteConfiguration(v10, [v87 subarrayWithRange:{v89, v88, v111}], 0, 0);

          if (v90)
          {
            if (CFArrayGetCount(v90))
            {
              v152.length = CFArrayGetCount(v90);
              v152.location = 0;
              CFArrayAppendArray(Mutable, v90, v152);
            }

            CFRelease(v90);
          }
        }

        if (CFArrayGetCount(Mutable) < 1)
        {
LABEL_129:
          v93 = 1;
        }

        else
        {
          v91 = 0;
          while (1)
          {
            v92 = CFArrayGetValueAtIndex(Mutable, v91);
            if (cmsmRouteDescriptionEqual(v137, v92))
            {
              break;
            }

            if (++v91 >= CFArrayGetCount(Mutable))
            {
              goto LABEL_129;
            }
          }

          CFDictionarySetValue(v92, @"RouteCurrentlyPicked", *MEMORY[0x1E695E4D0]);
          v93 = 0;
        }

        if (v137)
        {
          CFRelease(v137);
          v137 = 0;
        }

        if (v93)
        {
          CFDictionarySetValue(v83, @"RouteCurrentlyPicked", *MEMORY[0x1E695E4D0]);
        }

        if (v83)
        {
          CFRelease(v83);
        }

        v94 = 0x1ED6D2000;
        if (Mutable)
        {
          if (vaemIsContinuityScreenOutputPortPresentInConnectedOutputPorts())
          {
            v95 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v136 = 0u;
            v96 = [(__CFArray *)Mutable countByEnumeratingWithState:&v133 objects:v141 count:16];
            if (v96)
            {
              v97 = v96;
              v98 = *v134;
              do
              {
                for (k = 0; k != v97; ++k)
                {
                  if (*v134 != v98)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v100 = [*(*(&v133 + 1) + 8 * k) mutableCopy];
                  if (vaeGetPortTypeFromPortID([objc_msgSend(v100 objectForKey:{@"PortNumber", "unsignedIntValue"}]) == 1885565807)
                  {
                    [v100 setObject:@"Speaker" forKey:@"RouteName"];
                    [v100 setObject:@"Speaker" forKey:@"RouteUID"];
                  }

                  [v95 addObject:v100];
                }

                v97 = [(__CFArray *)obj countByEnumeratingWithState:&v133 objects:v141 count:16];
              }

              while (v97);
            }

            Mutable = [v95 copy];
            v17 = v116;
            v94 = 0x1ED6D2000uLL;
          }

          [objc_msgSend(objc_msgSend((v94 + 2272) sharedInstance];
          v19 = v114;
          [objc_msgSend(objc_msgSend((v94 + 2272) "sharedInstance")];
          [objc_msgSend(objc_msgSend((v94 + 2272) "sharedInstance")];
          v14 = v115;
        }

        else
        {
          v19 = v114;
          v14 = v115;
        }

        goto LABEL_16;
      }

LABEL_90:
      CFRelease(v61);
      if (!v60)
      {
        goto LABEL_95;
      }

      goto LABEL_91;
    }
  }

LABEL_17:
  v20 = *MEMORY[0x1E69E9840];
  return Mutable;
}

__CFArray *vaemCopyAvailableEndpointsForRouteConfiguration(NSDictionary *a1, NSString *a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a2;
  v9 = a1;
  if (!a1)
  {
    v9 = [+[MXSessionManager sharedInstance](MXSessionManager currentAudioCategory];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_15:
    v8 = [+[MXSessionManager sharedInstance](MXSessionManager currentAudioMode];
    goto LABEL_3;
  }

  if (!a2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v10 = cmsmCopyPickableRoutesForRouteConfiguration(v9, v8, a3, a4, a5);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (v10)
  {
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
        Value = CFDictionaryGetValue(ValueAtIndex, @"PortNumber");
        if (Value)
        {
          CFArrayAppendValue(Mutable, Value);
        }
      }
    }
  }

  v17 = vaemCopyEndpointsForListOfPorts(Mutable, 1);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v17;
}

const __CFArray *__discoveryManager_iOSAppendAvailableEndpoints_block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = *MEMORY[0x1E695E4D0];
  v58 = *MEMORY[0x1E69618B8];
  allocator = *MEMORY[0x1E695E480];
  v61 = *MEMORY[0x1E69618F8];
  v62 = *MEMORY[0x1E69618D8];
  v56 = *MEMORY[0x1E69618E8];
  v50 = *MEMORY[0x1E69618D0];
  v54 = *MEMORY[0x1E69618A8];
  v53 = *MEMORY[0x1E6961FB8];
  v60 = *MEMORY[0x1E695E4D0] != 0;
  v52 = *MEMORY[0x1E69620F8];
  v51 = *MEMORY[0x1E6962130];
  v55 = *MEMORY[0x1E695E4C0];
  v49 = 1;
  v57 = *MEMORY[0x1E69618E0];
  while (1)
  {
    result = *(*(a1 + 32) + 240);
    if (result)
    {
      result = CFArrayGetCount(result);
    }

    if (v2 >= result)
    {
      return result;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 240), v2);
    Value = CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_RefKey");
    if (*(a1 + 40) == v3)
    {
      v67[0] = 0;
      CMBaseObject = FigEndpointManagerGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(CMBaseObject, v58, allocator, v67);
      }

      v9 = !FigCFEqual() && !FigCFEqual();
      if (v67[0])
      {
        CFRelease(v67[0]);
      }

      if (v9)
      {
        goto LABEL_35;
      }
    }

    v10 = *(a1 + 56);
    v11 = *(a1 + 60);
    v67[0] = 0;
    v12 = FigEndpointManagerGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, v58, allocator, v67);
    }

    if (FigCFEqual() || FigCFEqual())
    {
      v14 = v11 == 6;
LABEL_19:
      v15 = !v14;
      goto LABEL_22;
    }

    if (!FigCFEqual() || (v15 = 1, v49) && v11 != 8)
    {
      if (!FigCFEqual())
      {
        v47 = FigCFEqual();
        v14 = v11 != 8 || v47 == 0;
        goto LABEL_19;
      }

      if (v11 <= 8 && ((1 << v11) & 0x121) != 0)
      {
        v15 = 0;
      }

      else
      {
        v66 = v3;
        v48 = *(*(CMBaseObjectGetVTable() + 24) + 24);
        if (v48)
        {
          v48(Value, 0x1F289BAF0, allocator, v10, 0, &v66);
        }

        v15 = 0;
        v49 = v66 == v3;
      }
    }

LABEL_22:
    if (v67[0])
    {
      CFRelease(v67[0]);
    }

    if ((v15 & 1) == 0)
    {
      if (ValueAtIndex && (v16 = *(a1 + 56), v17 = *(a1 + 60), v59 = *(a1 + 40), (v18 = discoveryManager_mapDiscovererTypeToEndpointFeatures(v17)) != 0) && ((v19 = v18, v17 != 8) ? (v20 = v54) : (v20 = 0x1F289BB30), CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_SupportedEndpointFeaturesKey"), (FigCFNumberGetUInt64() & v19) != 0))
      {
        v21 = CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_RefKey");
        v66 = 0;
        if (v21)
        {
          v22 = FigEndpointManagerGetCMBaseObject();
          v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v23)
          {
            v23(v22, v58, allocator, &v66);
          }
        }

        v65 = 0;
        if (FigCFEqual())
        {
          v25 = *(*(CMBaseObjectGetVTable() + 24) + 24);
          if (v25)
          {
            v25(v21, v20, allocator, v16, 0, &v65);
          }
        }

        else
        {
          v65 = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache copyAvailableEndpointsForManager:"copyAvailableEndpointsForManager:", v21];
        }

        Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
        if (v65)
        {
          Count = CFArrayGetCount(v65);
          if (Count >= 1)
          {
            v28 = Count;
            for (i = 0; v28 != i; ++i)
            {
              v30 = CFArrayGetValueAtIndex(v65, i);
              if (!v30)
              {
                continue;
              }

              v31 = v30;
              if ((FigEndpointGetSupportedFeatures() & v19) == 0)
              {
                continue;
              }

              if ((v19 & 2) != 0)
              {
                v67[0] = 0;
                v32 = FigEndpointGetCMBaseObject();
                v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                v34 = v60;
                if (v33 && (v33(v32, v53, allocator, v67), v35 = v67[0], v34 = v67[0] != v3, v67[0]))
                {
                  CFRelease(v67[0]);
                  if (v35 == v3)
                  {
                    continue;
                  }
                }

                else if (!v34)
                {
                  continue;
                }
              }

              v36 = FigCFEqual();
              if (v17 != 6 && v36)
              {
                v67[0] = 0;
                v37 = FigEndpointGetCMBaseObject();
                v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v38)
                {
                  v38(v37, v51, allocator, v67);
                }

                if (v67[0] == v55)
                {
                  CFArrayAppendValue(Mutable, v31);
                }

                else
                {
                  v64 = 0;
                  v39 = FigEndpointGetCMBaseObject();
                  v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v40)
                  {
                    v40(v39, v52, allocator, &v64);
                  }

                  v41 = FigRoutingManagerCopyEndpointWithDeviceID(v64, 0, v61, 0);
                  if (v41)
                  {
                    CFRelease(v41);
                  }

                  else
                  {
                    CFArrayAppendValue(Mutable, v31);
                  }

                  if (v64)
                  {
                    CFRelease(v64);
                  }
                }

                v45 = v67[0];
                if (!v67[0])
                {
                  continue;
                }

                goto LABEL_84;
              }

              if (FigCFEqual() && FigCFEqual())
              {
                v67[0] = 0;
                v42 = FigEndpointGetCMBaseObject();
                v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v43)
                {
                  v43(v42, v52, allocator, v67);
                }

                v44 = FigRoutingManagerCopyEndpointWithDeviceIDFromBluetoothManager();
                if (v44)
                {
                  CFArrayAppendValue(Mutable, v31);
                }

                if (v67[0])
                {
                  CFRelease(v67[0]);
                  v67[0] = 0;
                }

                if (!v44)
                {
                  continue;
                }

                v45 = v44;
LABEL_84:
                CFRelease(v45);
                continue;
              }

              CFArrayAppendValue(Mutable, v31);
            }
          }

          if (v65)
          {
            CFRelease(v65);
            v65 = 0;
          }
        }

        if (v66)
        {
          CFRelease(v66);
        }

        v46 = *(a1 + 48);
        FigCFArrayAppendArray();
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      else
      {
        v24 = *(a1 + 48);
        FigCFArrayAppendArray();
      }
    }

LABEL_35:
    ++v2;
  }
}

uint64_t _VAEndpointManager_CopyPropertyForAudioSessionID(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v93 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v9 = 4294950586;
  if (a2 && a6)
  {
    *a6 = 0;
    if (CFEqual(a2, *MEMORY[0x1E69618A8]))
    {
      v10 = [+[MXSessionManager sharedInstance](MXSessionManager copySessionWithAudioSessionID:"copySessionWithAudioSessionID:", a4];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 audioCategory];
        v13 = [v11 audioMode];
        v14 = [v11 activationContext];
        v15 = [v11 allowedPortTypes];
      }

      else
      {
        v14 = 0;
        v12 = 0;
        v13 = 0;
        v15 = 0;
      }

      *a6 = vaemCopyAvailableEndpointsForRouteConfiguration(v12, v13, v14, v15, [v11 prefersBluetoothHighQualityContentCapture]);
      goto LABEL_11;
    }

    if (CFEqual(a2, @"VAEM_AvailableInputEndpoints"))
    {
      v16 = +[MXSessionManager sharedInstance];
      if (a4)
      {
        v17 = [(MXSessionManager *)v16 copySessionWithAudioSessionID:a4];
      }

      else
      {
        v17 = [(MXSessionManager *)v16 copyActiveCoreSessionControllingRouting];
      }

      v20 = v17;
      v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v29 = v21;
      *a6 = 0;
      if (v20)
      {
        CMSMVAUtility_GetVADCategoryFromFigCategoryName([v20 audioCategory]);
        CMSMVAUtility_GetVADModeFromFigModeName([v20 audioMode]);
        [v20 allowedPortTypes];
        v21 = OUTLINED_FUNCTION_15_1([v20 prefersBluetoothHighQualityContentCapture]);
        v30 = v21;
      }

      else
      {
        v30 = 0;
      }

      v31 = OUTLINED_FUNCTION_18(v21, v22, v23, v24, v25, v26, v27, v28, v70, v72, 0, 0, 0, 0, 0, 0, 0, 0, v82, v84, v86, *(&v86 + 1), v87, *(&v87 + 1), v88, *(&v88 + 1), v89, *(&v89 + 1), v90);
      if (v31)
      {
        v32 = v31;
        v33 = *v76;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v76 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = vaemCopyEndpointForPort([*(v75 + 8 * i) unsignedIntValue]);
            v36 = [v29 addObject:v35];
            if (v35)
            {
              CFRelease(v35);
            }
          }

          v32 = OUTLINED_FUNCTION_18(v36, v37, v38, v39, v40, v41, v42, v43, v71, v73, v74, v75, v76, v77, v78, v79, v80, v81, v83, v85, v86, *(&v86 + 1), v87, *(&v87 + 1), v88, *(&v88 + 1), v89, *(&v89 + 1), v90);
        }

        while (v32);
      }

      *a6 = v29;

      goto LABEL_29;
    }

    if (!CFEqual(a2, @"VAEM_FallbackInputRouteEndpoint"))
    {
      if (!CFEqual(a2, @"VAEM_IsAirPlayIncluded"))
      {
        goto LABEL_29;
      }

      v46 = [+[MXSessionManager sharedInstance](MXSessionManager copySessionWithAudioSessionID:"copySessionWithAudioSessionID:", a4];
      v11 = v46;
      if (v46)
      {
        VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName([v46 audioCategory]);
        VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([v11 audioMode]);
        v49 = [v11 allowedPortTypes];
      }

      else
      {
        VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(@"Audio/Video");
        VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(@"Default");
        v49 = 0;
      }

      ShouldIncludePortTypeForRouteConfiguration = vaemShouldIncludePortTypeForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, v49, [v11 prefersBluetoothHighQualityContentCapture], 0x70617061u);
      if (v11)
      {
        v66 = [v11 allowedPortTypes];
      }

      else
      {
        v66 = 0;
      }

      if (ShouldIncludePortTypeForRouteConfiguration | vaemShouldIncludePortTypeForRouteConfiguration(VADCategoryFromFigCategoryName, VADModeFromFigModeName, v66, [v11 prefersBluetoothHighQualityContentCapture], 0x70617073u))
      {
        v67 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v67 = MEMORY[0x1E695E4C0];
      }

      v68 = *v67;
      *a6 = *v67;
      CFRetain(v68);
LABEL_11:

LABEL_29:
      v9 = 0;
      goto LABEL_30;
    }

    v18 = &qword_1EB75D000;
    if (dword_1EB75DE40)
    {
      LODWORD(v86) = 0;
      type[0] = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_0_0();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v50 = [MXSessionManager sharedInstance:v70];
    if (a4)
    {
      v51 = [(MXSessionManager *)v50 copySessionWithAudioSessionID:a4];
    }

    else
    {
      v51 = [(MXSessionManager *)v50 copyActiveCoreSessionControllingRouting];
    }

    v52 = v51;
    if (!v51)
    {
      v63 = 0;
      v54 = 0;
      goto LABEL_55;
    }

    CMSMVAUtility_GetVADCategoryFromFigCategoryName([v51 audioCategory]);
    CMSMVAUtility_GetVADModeFromFigModeName([v52 audioMode]);
    [v52 allowedPortTypes];
    v53 = OUTLINED_FUNCTION_15_1([v52 prefersBluetoothHighQualityContentCapture]);
    v54 = v53;
    if (v53 && [v53 count])
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v55 = [objc_msgSend(v54 "reverseObjectEnumerator")];
      v56 = [v55 countByEnumeratingWithState:&v86 objects:v92 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v87;
        while (2)
        {
          for (j = 0; j != v57; ++j)
          {
            if (*v87 != v58)
            {
              objc_enumerationMutation(v55);
            }

            v60 = [*(*(&v86 + 1) + 8 * j) unsignedIntValue];
            if (vaeIsPortRoutable(v60))
            {
              if (dword_1EB75DE40)
              {
                v61 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
                OUTLINED_FUNCTION_0_0();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              goto LABEL_52;
            }
          }

          v57 = [v55 countByEnumeratingWithState:&v86 objects:v92 count:16];
          if (v57)
          {
            continue;
          }

          break;
        }

LABEL_52:
        if (v60)
        {
          v64 = vaemCopyEndpointForPort(v60);
          v18 = &qword_1EB75D000;
          if (v64)
          {
            v63 = v64;
LABEL_55:
            v9 = 0;
LABEL_56:

            if (v9)
            {
              v69 = v18[455];
              FigSignalErrorAtGM();
            }

            else
            {
              *a6 = v63;
            }

            goto LABEL_30;
          }
        }

        else
        {
          v18 = &qword_1EB75D000;
        }
      }

      v62 = v18[455];
      v9 = FigSignalErrorAtGM();
      v63 = 0;
      goto LABEL_56;
    }

    v63 = 0;
    goto LABEL_55;
  }

LABEL_30:
  v44 = *MEMORY[0x1E69E9840];
  return v9;
}

NSDictionary *CMSMVAUtility_GetVADCategoryFromFigCategoryName(NSDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = [+[MXSessionManager sharedInstance](MXSessionManager figCategoryToVADCategoryDict];
    if (result)
    {
      return -[NSDictionary objectForKey:]([+[MXSessionManager sharedInstance](MXSessionManager figCategoryToVADCategoryDict], "objectForKey:", v1);
    }
  }

  return result;
}

uint64_t FigRouteDiscovererCreate(uint64_t a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  v29[16] = *MEMORY[0x1E69E9840];
  cf = 0;
  v3 = *MEMORY[0x1E695E480];
  if (!a1)
  {
    v4 = *MEMORY[0x1E695E480];
  }

  valuePtr = 0;
  if (!theDict)
  {
    goto LABEL_33;
  }

  Value = CFDictionaryGetValue(theDict, @"discovererType");
  v8 = CFDictionaryGetValue(theDict, @"discovererPID");
  if (!Value)
  {
    goto LABEL_33;
  }

  v9 = v8;
  v10 = CFGetTypeID(Value);
  if (v10 != CFNumberGetTypeID())
  {
    goto LABEL_33;
  }

  if ([Value intValue] == 8 && !MX_FeatureFlags_IsSystemInputPickerEnabled())
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v23 = 4294949955;
    goto LABEL_29;
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr > 8)
  {
    goto LABEL_33;
  }

  FigRouteDiscovererGetClassID();
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
    v23 = v11;
    goto LABEL_29;
  }

  v12 = CFDictionaryGetValue(theDict, @"audioSessionID");
  v13 = v12;
  if (v12)
  {
    v14 = CFGetTypeID(v12);
    if (v14 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v13, kCFNumberSInt32Type, 8);
      goto LABEL_13;
    }

LABEL_33:
    v23 = 4294949956;
    goto LABEL_29;
  }

LABEL_13:
  v15 = CFUUIDCreate(v3);
  v16 = CFUUIDCreateString(v3, v15);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = CFRetain(@"DiscoveryMode_None");
  v18 = *MEMORY[0x1E695E4C0];
  if (*MEMORY[0x1E695E4C0])
  {
    *(DerivedStorage + 24) = CFRetain(*MEMORY[0x1E695E4C0]);
    v19 = CFRetain(v18);
  }

  else
  {
    v19 = 0;
    *(DerivedStorage + 24) = 0;
  }

  *(DerivedStorage + 32) = v19;
  v20 = *MEMORY[0x1E695E4D0];
  if (*MEMORY[0x1E695E4D0])
  {
    v20 = CFRetain(v20);
  }

  *(DerivedStorage + 40) = v20;
  *(DerivedStorage + 56) = valuePtr;
  *(DerivedStorage + 64) = 0;
  *(DerivedStorage + 72) = CFRetain(v16);
  *(DerivedStorage + 80) = FigReentrantMutexCreate();
  *(DerivedStorage + 88) = 0;
  *(DerivedStorage + 48) = 0;
  *(DerivedStorage + 104) = objc_alloc_init(MEMORY[0x1E695DEC8]);
  *(DerivedStorage + 96) = objc_alloc_init(MEMORY[0x1E695DEC8]);
  *(DerivedStorage + 12) = 0;
  *(DerivedStorage + 16) = 0;
  v21 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v9)
  {
    CFRetain(v9);
  }

  if (v13)
  {
    CFRetain(v13);
  }

  DiscoveryQueue = FigRouteDiscoveryManagerGetDiscoveryQueue();
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __FigRouteDiscoveryManagerStoreDiscoverer_block_invoke;
  v29[3] = &__block_descriptor_56_e5_v8__0l;
  v29[4] = v21;
  v29[5] = v9;
  v29[6] = v13;
  MXDispatchAsync("FigRouteDiscoveryManagerStoreDiscoverer", "FigRouteDiscoverer.m", 785, 0, 0, DiscoveryQueue, v29);
  *a3 = cf;
  cf = 0;
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v23 = 0;
LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t FigRouteDiscoveryManagerGetDiscoveryQueue()
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  v0 = &qword_1EB75D478;
  if (!qword_1EB75D478)
  {
    v0 = 8;
  }

  return *v0;
}

uint64_t discoveryManager_copyDiscovererFromWeakRef(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFGetTypeID(a1);
  if (v1 != FigCFWeakReferenceHolderGetTypeID())
  {
    return 0;
  }

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

uint64_t discoverer_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v12 = 4294949956;
    goto LABEL_9;
  }

  v9 = DerivedStorage;
  if (CFEqual(a2, @"DiscoveryMode"))
  {
    v10 = *v9;
    if (!*v9)
    {
LABEL_8:
      v12 = 0;
      *a4 = v10;
      goto LABEL_9;
    }

LABEL_4:
    v10 = CFRetain(v10);
    goto LABEL_8;
  }

  if (CFEqual(a2, @"clientPID"))
  {
    v11 = (v9 + 12);
LABEL_7:
    v10 = CFNumberCreate(a3, kCFNumberSInt32Type, v11);
    goto LABEL_8;
  }

  if (CFEqual(a2, @"clientName"))
  {
    v10 = *(v9 + 16);
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, @"BluetoothRoutesOnly"))
  {
    v10 = *(v9 + 24);
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, @"CachedDiscovery"))
  {
    v10 = *(v9 + 32);
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  if (FigCFEqual())
  {
    v16 = *(v9 + 80);
    FigSimpleMutexLock();
    v17 = *(v9 + 40);
    if (v17)
    {
      v17 = CFRetain(v17);
    }

    *a4 = v17;
    v18 = *(v9 + 80);
    FigSimpleMutexUnlock();
    v12 = 0;
    goto LABEL_9;
  }

  if (CFEqual(a2, @"audioSessionID"))
  {
    v11 = (v9 + 8);
    goto LABEL_7;
  }

  if (CFEqual(a2, @"discoversLocalRoute"))
  {
    v12 = 0;
    v19 = MEMORY[0x1E695E4C0];
    if ((*(v9 + 56) & 0xFFFFFFFA) != 0)
    {
      v19 = MEMORY[0x1E695E4D0];
    }

    v20 = *v19;
LABEL_29:
    *a4 = v20;
    goto LABEL_9;
  }

  if (CFEqual(a2, @"discovererUUID"))
  {
    v10 = *(v9 + 72);
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, @"OnBehalfOf"))
  {
    v10 = *(v9 + 48);
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, @"routePresent"))
  {
    v12 = FigRouteDiscoveryManagerCopyRoutePresentForType(a3, *(v9 + 56), a4);
    goto LABEL_9;
  }

  if (!CFEqual(a2, @"userSelectionAvailable"))
  {
    if (FigCFEqual())
    {
      v23 = FigGetUpTimeNanoseconds();
      v24 = *(v9 + 80);
      FigSimpleMutexLock();
      v25 = *(v9 + 104);
      cf[0] = v25;
      if (FigRouteDiscovererIsFastDiscoveryEnabledForDiscoverer())
      {
        v12 = 0;
      }

      else
      {

        cf[0] = 0;
        v36 = *MEMORY[0x1E695E480];
        OUTLINED_FUNCTION_0_7();
        v12 = FigRouteDiscoveryManagerCopyRoutesForTypeAndAudioSessionID(v37, v38, v39, v40, v41);
        v25 = 0;
      }

      FigRouteDiscovererCopyAvailableRoutes(*(v9 + 32), v25);
      OUTLINED_FUNCTION_1_6();
      if (!v43 & v42)
      {
        *(v9 + 64) = v23;
      }
    }

    else
    {
      if (!CFEqual(a2, @"availableRouteDescriptors"))
      {
        if (!CFEqual(a2, @"fallbackRouteDescriptor"))
        {
          v12 = 4294954512;
          goto LABEL_9;
        }

        cf[0] = 0;
        v12 = FigRouteDiscoveryManagerCopyFallbackRouteDescriptor(*(v9 + 56), *(v9 + 8), cf);
        if (v12)
        {
          FigSignalErrorAtGM();
          goto LABEL_9;
        }

        v20 = cf[0];
        goto LABEL_29;
      }

      v35 = *(v9 + 16);
      if (FigCFEqual() && MX_FeatureFlags_IsCorianderEnabled())
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DEC8]);
        goto LABEL_8;
      }

      v45 = FigGetUpTimeNanoseconds();
      v46 = *(v9 + 80);
      FigSimpleMutexLock();
      v25 = *(v9 + 96);
      cf[0] = v25;
      if (FigRouteDiscovererIsFastDiscoveryEnabledForDiscoverer())
      {
        v12 = 0;
      }

      else
      {

        cf[0] = 0;
        v47 = *MEMORY[0x1E695E480];
        OUTLINED_FUNCTION_0_7();
        v12 = FigRouteDiscoveryManagerCopyRouteDescriptorsForTypeAndAudioSessionID(v48, v49, v50, v51, v52);
        v25 = 0;
      }

      FigRouteDiscovererCopyAvailableRouteDescriptors(*(v9 + 32), v25);
      OUTLINED_FUNCTION_1_6();
      if (!v43 & v42)
      {
        *(v9 + 64) = v45;
        v53 = *(v9 + 80);
        FigSimpleMutexUnlock();
        *a4 = v25;
        v54 = *(v9 + 16);
        if (FigRouteDiscovererShouldLogForClient())
        {
          discoverer_logAvailableRouteDetails(*(v9 + 16), *(v9 + 56), v25);
        }

        goto LABEL_64;
      }
    }

    v44 = *(v9 + 80);
    FigSimpleMutexUnlock();
    *a4 = v25;
LABEL_64:

    goto LABEL_9;
  }

  v21 = *(v9 + 80);
  FigSimpleMutexLock();
  if (FigRouteDiscovererIsFastDiscoveryEnabledForDiscoverer())
  {
    if (*(v9 + 88) == 1)
    {
      v22 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v22 = MEMORY[0x1E695E4C0];
    }

    v32 = *v22;
    if (*v22)
    {
      v32 = CFRetain(v32);
    }

    v12 = 0;
    *a4 = v32;
  }

  else
  {
    cf[0] = 0;
    v26 = *MEMORY[0x1E695E480];
    OUTLINED_FUNCTION_0_7();
    v12 = FigRouteDiscoveryManagerCopyRoutesForTypeAndAudioSessionID(v27, v28, v29, v30, v31);
    *a4 = FigRouteDiscovererCopyUserSelectionAvailable(*(v9 + 56), 0);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  if (dword_1EB75DF60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v34 = *(v9 + 80);
  FigSimpleMutexUnlock();
LABEL_9:
  v13 = objc_autoreleasePoolPush();
  [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"discoverer_CopyProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
  objc_autoreleasePoolPop(v13);
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

__CFString *discoverer_getTypeString(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E7AEAD88[a1];
  }
}

id FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation()
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  if (qword_1EB75D478)
  {
    v0 = &qword_1EB75D570;
  }

  else
  {
    v0 = 256;
  }

  v1 = *v0;
  if (qword_1EB75D478)
  {
    v2 = &qword_1EB75D580;
  }

  else
  {
    v2 = 272;
  }

  FigSimpleMutexLock();
  v3 = *v2;
  v4 = *v0;
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigRouteDiscoveryManagerCopyRoutesForTypeAndAudioSessionID(uint64_t a1, int a2, int a3, uint64_t a4, CFMutableArrayRef *a5)
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  if (qword_1EB75D478)
  {
    v9 = &discoverManager_getSharedManager_discoveryState;
  }

  else
  {
    v9 = 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v11 = Mutable;
  if (*v9)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __discoveryManager_appendAvailableEndpoints_block_invoke;
    v13[3] = &__block_descriptor_64_e5_v8__0l;
    v13[4] = v9;
    v13[5] = Mutable;
    v14 = a2;
    v15 = a3;
    v13[6] = a4;
    FigRouteDiscoveryManagerRunBlockWhileEndpointManagerInfoLockIsLocked(v13);
  }

  if (a5)
  {
    *a5 = v11;
  }

  else if (v11)
  {
    CFRelease(v11);
  }

  return 0;
}

void __discoveryManager_appendAvailableEndpoints_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 240);
  if (v2 && CFArrayGetCount(v2) >= 1)
  {
    v3 = *(a1 + 56);
    if (v3 == 7)
    {
      v4 = *(a1 + 40);
      v5 = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache copyAvailableEndpointsForManager:"copyAvailableEndpointsForManager:", FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618F0])];
      if (v5)
      {
        v6 = v5;
        if (CFArrayGetCount(v5) >= 1)
        {
          v16.length = CFArrayGetCount(v6);
          v16.location = 0;
          CFArrayAppendArray(v4, v6, v16);
        }

        CFRelease(v6);
      }
    }

    else
    {
      v7 = *(a1 + 32);
      AudioSessionIDForActiveCMSession = *(a1 + 60);
      v9 = *(a1 + 40);
      if (!AudioSessionIDForActiveCMSession)
      {
        v10 = *(a1 + 40);
        AudioSessionIDForActiveCMSession = CMSMUtility_GetAudioSessionIDForActiveCMSession();
        v9 = v10;
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __discoveryManager_iOSAppendAvailableEndpoints_block_invoke;
      v11[3] = &__block_descriptor_64_e5_v8__0l;
      v11[4] = v7;
      v13 = AudioSessionIDForActiveCMSession;
      v14 = v3;
      v12 = vextq_s8(v9, v9, 8uLL);
      FigRouteDiscoveryManagerRunBlockWhileEndpointManagerInfoLockIsLocked(v11);
    }
  }
}

uint64_t _VAEndpointManager_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294950586;
  if (!a2 || !a4)
  {
    goto LABEL_12;
  }

  if (*(DerivedStorage + 8))
  {
    result = 4294950584;
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x1E69618B8]))
  {
    v9 = MEMORY[0x1E69618F8];
LABEL_6:
    v10 = CFRetain(*v9);
LABEL_7:
    result = OUTLINED_FUNCTION_6_3(v10);
    goto LABEL_12;
  }

  if (!CFEqual(a2, *MEMORY[0x1E69618A8]))
  {
    if (CFEqual(a2, *MEMORY[0x1E69618B0]))
    {
LABEL_14:
      v9 = MEMORY[0x1E695E4D0];
      goto LABEL_6;
    }

    if (CFEqual(a2, *MEMORY[0x1E69618C8]) || CFEqual(a2, *MEMORY[0x1E69618C0]))
    {
      v23[0] = 2;
      v10 = CFNumberCreate(a3, kCFNumberSInt64Type, v23);
      goto LABEL_7;
    }

    if (CFEqual(a2, @"VAEM_StarkIsAvailableForCurrentCategoryAndMode"))
    {
      PortOfTypeInConnectedPortsList = CMSMVAUtility_GetPortOfTypeInConnectedPortsList(1886614639);
      goto LABEL_20;
    }

    if (CFEqual(a2, @"VAEM_StarkAudioPortIsCurrentlyActive"))
    {
      v14 = MEMORY[0x1E695E4C0];
      v15 = dword_1EB75E168;
      goto LABEL_25;
    }

    if (CFEqual(a2, @"VAEM_DeviceBufferSizeRange"))
    {
      vaemGetDeviceBufferNumPCMFramesRange([[MXSessionManager defaultVADID] sharedInstance:v23];
      v10 = MXCFArrayCreateFromCArrayOfSInt32(v23, 2u);
      goto LABEL_7;
    }

    if (CFEqual(a2, @"VAEM_AllEndpoints"))
    {
      v10 = vaemCopyAllEndpoints();
      goto LABEL_7;
    }

    if (CFEqual(a2, @"VAEM_BufferFrameSizeShouldBeRestricted"))
    {
      PortOfTypeInConnectedPortsList = vaemBufferFrameSizeShouldBeRestricted([+[MXSessionManager defaultVADID] sharedInstance];
      goto LABEL_20;
    }

    if (CFEqual(a2, @"VAEM_SystemLocalVADExists"))
    {
      PortOfTypeInConnectedPortsList = [+[MXSessionManager sharedInstance](MXSessionManager systemSoundLocalVADID];
      goto LABEL_20;
    }

    if (CFEqual(a2, @"VAEM_SystemRemoteVADExists"))
    {
      PortOfTypeInConnectedPortsList = [+[MXSessionManager sharedInstance](MXSessionManager systemSoundRemoteVADID];
      goto LABEL_20;
    }

    if (CFEqual(a2, @"VAEM_AC3IsSupported"))
    {
      PortOfTypeInConnectedPortsList = vaemGetAC3IsSupported();
      goto LABEL_20;
    }

    if (CFEqual(a2, @"VAEM_AC3EncodeIsSupported"))
    {
      goto LABEL_41;
    }

    if (CFEqual(a2, @"VAEM_VirtualFormatsSupported"))
    {
      v10 = vaemCopyVirtualFormatsSupported();
      goto LABEL_7;
    }

    if (CFEqual(a2, @"VAEM_UplinkMute"))
    {
      PortOfTypeInConnectedPortsList = vaemGetUplinkMute();
      goto LABEL_20;
    }

    if (CFEqual(a2, @"VAEM_DownlinkMute"))
    {
      LODWORD(v23[0]) = 0;
      if (qword_1EB75E070)
      {
        qword_1EB75E070(0, v23);
        if ((v23[0] & 2) != 0)
        {
          goto LABEL_14;
        }
      }

LABEL_41:
      v9 = MEMORY[0x1E695E4C0];
      goto LABEL_6;
    }

    if (CFEqual(a2, @"VAEM_DeviceSupportsMute"))
    {
      PortOfTypeInConnectedPortsList = vaemDeviceSupportsMute();
      goto LABEL_20;
    }

    if (CFEqual(a2, @"VAEM_LineOutIsConnected"))
    {
      v18 = 1886154613;
    }

    else if (CFEqual(a2, @"VAEM_USBAudioOutputIsConnected"))
    {
      v18 = 1886745455;
    }

    else if (CFEqual(a2, @"VAEM_HDMIAudioOutputIsConnected"))
    {
      v18 = 1885889645;
    }

    else if (CFEqual(a2, @"VAEM_DisplayPortAudioOutputIsConnected"))
    {
      v18 = 1885631344;
    }

    else
    {
      if (!CFEqual(a2, @"VAEM_ThunderboltOutputIsConnected"))
      {
        if (CFEqual(a2, @"VAEM_HeadphoneJackIsConnected"))
        {
          v16 = objc_alloc(MEMORY[0x1E696AD98]);
          v17 = byte_1EB75D178;
LABEL_62:
          v10 = [v16 initWithBool:v17 != 0];
          goto LABEL_7;
        }

        if (CFEqual(a2, @"VAEM_HeadphoneJackHasInput"))
        {
          v16 = objc_alloc(MEMORY[0x1E696AD98]);
          v17 = byte_1EB75D179;
          goto LABEL_62;
        }

        if (CFEqual(a2, @"VAEM_CurrentRouteHasVolumeControl"))
        {
          PortOfTypeInConnectedPortsList = vaemCurrentRouteHasVolumeControl();
          goto LABEL_20;
        }

        if (CFEqual(a2, @"VAEM_CurrentRouteHasMuteControl"))
        {
          PortOfTypeInConnectedPortsList = vaemCurrentRouteHasMuteControl();
          goto LABEL_20;
        }

        if (CFEqual(a2, @"VAEM_CurrentRouteHasInputGainControl"))
        {
          PortOfTypeInConnectedPortsList = vaemCurrentRouteHasInputGainControl();
          goto LABEL_20;
        }

        if (CFEqual(a2, @"VAEM_CurrentInputDataSource"))
        {
          v10 = vaemCopyCurrentInputDataSource();
          goto LABEL_7;
        }

        if (CFEqual(a2, @"VAEM_CurrentOutputDataDestination"))
        {
          v10 = vaemCopyCurrentOutputDataDestination();
          goto LABEL_7;
        }

        if (CFEqual(a2, @"VAEM_InputDataSources"))
        {
          v10 = vaemCopyInputDataSources();
          goto LABEL_7;
        }

        if (CFEqual(a2, @"VAEM_OutputDataDestinations"))
        {
          v10 = vaemCopyOutputDataDestinations();
          goto LABEL_7;
        }

        if (CFEqual(a2, @"VAEM_VirtualAudioCategory"))
        {
          VirtualAudioPlugInCategory = vaemGetVirtualAudioPlugInCategory();
LABEL_85:
          v10 = MXCFNumberCreateFromSInt64(VirtualAudioPlugInCategory);
          goto LABEL_7;
        }

        if (CFEqual(a2, @"VAEM_VADInRecordingCategory"))
        {
          PortOfTypeInConnectedPortsList = vaemIsVADInRecordingCategory();
LABEL_20:
          v9 = MEMORY[0x1E695E4C0];
          if (PortOfTypeInConnectedPortsList)
          {
            v9 = MEMORY[0x1E695E4D0];
          }

          goto LABEL_6;
        }

        if (CFEqual(a2, @"VAEM_VirtualAudioMode"))
        {
          VirtualAudioPlugInCategory = vaemGetVirtualAudioPlugInMode();
          goto LABEL_85;
        }

        if (CFEqual(a2, @"VAEM_DeviceInputGainScalar"))
        {
          LODWORD(v23[0]) = 0;
          DeviceInputGainScalar = vaemGetDeviceInputGainScalar(v23);
          if (!DeviceInputGainScalar)
          {
            v21 = *v23;
LABEL_96:
            *a4 = MXCFNumberCreateFromFloat32(v21);
          }
        }

        else
        {
          if (!CFEqual(a2, @"VAEM_RoundedDeviceInputGainScalar"))
          {
            if (CFEqual(a2, @"VAEM_ThermalGainAdjustment_Speaker"))
            {
              v22 = *&qword_1EB75D188;
            }

            else
            {
              if (!CFEqual(a2, @"VAEM_ThermalGainAdjustment_Haptics"))
              {
                if (CFEqual(a2, @"VAEM_AudioInputDeviceIsAvailable"))
                {
                  v14 = MEMORY[0x1E695E4C0];
                  v15 = byte_1EB75D159;
                }

                else if (CFEqual(a2, @"VAEM_AudioInputDeviceExcludingBluetoothIsAvailable"))
                {
                  v14 = MEMORY[0x1E695E4C0];
                  v15 = byte_1EB75D15A;
                }

                else if (CFEqual(a2, @"VAEM_DisallowAudioFormatChanges"))
                {
                  v14 = MEMORY[0x1E695E4C0];
                  v15 = byte_1EB75D184;
                }

                else
                {
                  if (!CFEqual(a2, @"VAEM_InLongPullMode"))
                  {
                    if (CFEqual(a2, @"VAEM_MATAtmosIsEnabled"))
                    {
                      PortOfTypeInConnectedPortsList = vaemIsMATAtmosEnabled();
                    }

                    else
                    {
                      result = CFEqual(a2, @"VAEM_MATAtmosIsAvailable");
                      if (!result)
                      {
                        goto LABEL_12;
                      }

                      PortOfTypeInConnectedPortsList = vaemIsMATAtmosAvailable();
                    }

                    goto LABEL_20;
                  }

                  v14 = MEMORY[0x1E695E4C0];
                  v15 = byte_1EB75D185;
                }

LABEL_25:
                if (v15)
                {
                  v9 = MEMORY[0x1E695E4D0];
                }

                else
                {
                  v9 = v14;
                }

                goto LABEL_6;
              }

              v22 = *(&qword_1EB75D188 + 1);
            }

            v10 = MXCFNumberCreateFromFloat32(v22);
            goto LABEL_7;
          }

          LODWORD(v23[0]) = 0;
          DeviceInputGainScalar = vaemGetDeviceInputGainScalar(v23);
          if (!DeviceInputGainScalar)
          {
            v21 = roundf(*v23 * 1000.0) / 1000.0;
            *v23 = v21;
            goto LABEL_96;
          }
        }

        result = DeviceInputGainScalar;
        goto LABEL_12;
      }

      v18 = 1886675567;
    }

    PortOfTypeInConnectedPortsList = vaemGetVADPortIDFromVADPortType(v18);
    goto LABEL_20;
  }

  v11 = CMSMUtility_CopyCurrentAllowedPortTypes();
  *a4 = vaemCopyAvailableEndpointsForRouteConfiguration(0, 0, 0, v11, 0);
  if (v11)
  {
    CFRelease(v11);
  }

  result = 0;
LABEL_12:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 OUTLINED_FUNCTION_12_1()
{
  v2 = *(v1 + 4040);
  result = *(v2 + 72);
  v0[1].n128_u64[0] = *(v2 + 88);
  *v0 = result;
  return result;
}

uint64_t HandleRouteDiscovererRemoteMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  value = 0;
  v4 = FigXPCServerLookupAndRetainAssociatedObject();
  if (!v4)
  {
    fig_log_get_emitter();
    v4 = FigSignalErrorAtGM();
  }

  v6 = v4;
  if (!v4)
  {
    return 4294949956;
  }

  return v6;
}

uint64_t FigRouteDiscoveryManagerAddDiscoverer(uint64_t a1, unsigned int a2)
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  v3 = &unk_1EB75D488;
  v4 = qword_1EB75D478;
  v5 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v4)
  {
    v3 = 24;
  }

  if (a2 == 3)
  {
    v12 = &unk_1EB75D4B8;
    if (!v4)
    {
      v12 = 72;
    }

    v13 = *v12;
    v14 = 48;
    if (v4)
    {
      v14 = &unk_1EB75D4A0;
    }

    v15 = *v14;
    if (v4)
    {
      v16 = &qword_1EB75D570;
    }

    else
    {
      v16 = 256;
    }

    v17 = *v16;
    FigSimpleMutexLock();
    CFArrayAppendValue(v13, v5);
LABEL_29:
    CFArrayAppendValue(v15, v5);
    v19 = *v16;
    FigSimpleMutexUnlock();
    if (!v5)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (a2 != 6)
  {
    v15 = *(v3 + 24 * a2);
    if (v4)
    {
      v16 = &qword_1EB75D570;
    }

    else
    {
      v16 = 256;
    }

    v18 = *v16;
    FigSimpleMutexLock();
    goto LABEL_29;
  }

  v6 = 0;
  if (v4)
  {
    v7 = &qword_1EB75D570;
  }

  else
  {
    v7 = 256;
  }

  do
  {
    if (v6 != 3 && v6 != 6)
    {
      v8 = *v3;
      v9 = *v7;
      FigSimpleMutexLock();
      CFArrayAppendValue(v8, v5);
      v10 = *v7;
      FigSimpleMutexUnlock();
    }

    ++v6;
    v3 += 24;
  }

  while (v6 != 9);
  if (v5)
  {
LABEL_15:
    CFRelease(v5);
  }

  return 0;
}

uint64_t FigRouteDiscoveryManagerRunBlockWhileEndpointManagerInfoLockIsLocked(uint64_t a1)
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  if (qword_1EB75D478)
  {
    v2 = &qword_1EB75D568;
  }

  else
  {
    v2 = 248;
  }

  v3 = *v2;
  FigSimpleMutexLock();
  (*(a1 + 16))(a1);
  v4 = *v2;

  return FigSimpleMutexUnlock();
}

uint64_t CMSMUtility_GetAudioSessionIDForActiveCMSession()
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
      if ([v5 isActive])
      {
        if (([v5 currentlyControllingFlags] & 2) != 0)
        {
          break;
        }
      }

      if (v2 == ++v4)
      {
        v2 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v2)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    if (!v5)
    {
      goto LABEL_13;
    }

    result = [v5 audioSessionID];
  }

  else
  {
LABEL_10:

LABEL_13:
    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t discoveryManager_mapDiscovererTypeToEndpointFeatures(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return qword_1B19D83E8[a1];
  }
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_21_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigRouteDiscovererXPCRemoteCreate(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    if (dword_1ED6D31B0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (figRouteDiscovererRemoteXPC_EnsureClientEstablished_onceToken != -1)
    {
      FigRouteDiscovererXPCRemoteCreate_cold_1();
    }

    os_unfair_lock_lock(&figRouteDiscovererRemoteXPC_EnsureClientEstablished_lock);
    if (figRouteDiscovererRemoteXPC_EnsureClientEstablished_err || !gFigRouteDiscovererRemoteClient)
    {
      v7 = objc_alloc(MEMORY[0x1E695DF20]);
      v8 = [v7 initWithObjectsAndKeys:{@"RouteDiscoverer_ServerConnectionDied", *MEMORY[0x1E69633B0], 0}];
      figRouteDiscovererRemoteXPC_EnsureClientEstablished_err = FigXPCRemoteClientCreate();

      if (figRouteDiscovererRemoteXPC_EnsureClientEstablished_err)
      {
        if (gFigRouteDiscovererRemoteClient)
        {
          CFRelease(gFigRouteDiscovererRemoteClient);
          gFigRouteDiscovererRemoteClient = 0;
        }

        FigSignalErrorAtGM();
      }
    }

    os_unfair_lock_unlock(&figRouteDiscovererRemoteXPC_EnsureClientEstablished_lock);
    Internal = figRouteDiscovererRemoteXPC_EnsureClientEstablished_err;
    if (!figRouteDiscovererRemoteXPC_EnsureClientEstablished_err)
    {
      v9 = FigXPCCreateBasicMessage();
      if (v9 || (v9 = FigXPCMessageSetCFDictionary(), v9) || (v9 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v9))
      {
        Internal = v9;
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
LABEL_20:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_21:
        FigXPCRelease();
        FigXPCRelease();
        goto LABEL_22;
      }

      uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
      if (!uint64)
      {
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        Internal = 0xFFFFFFFFLL;
        goto LABEL_21;
      }

      Internal = remoteXPCRouteDiscoverer_CreateInternal(uint64, a3);
      if (!Internal)
      {
        goto LABEL_21;
      }
    }

    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    goto LABEL_20;
  }

  v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  Internal = 4294954516;
LABEL_22:
  v11 = *MEMORY[0x1E69E9840];
  return Internal;
}

uint64_t FigRouteDiscovererGetClassID()
{
  if (FigRouteDiscovererGetClassID_sRegisterFigRouteDiscovererTypeOnce != -1)
  {
    FigRouteDiscovererGetClassID_cold_1();
  }

  return sFigRouteDiscovererClassID;
}

uint64_t vaeIsPortAnInputPort(uint64_t a1)
{
  PortTypeFromPortID = vaeGetPortTypeFromPortID(a1);
  result = 1;
  if (PortTypeFromPortID <= 1886222184)
  {
    if (PortTypeFromPortID > 1886216808)
    {
      if (PortTypeFromPortID == 1886216809)
      {
        return result;
      }

      v3 = 1886216820;
    }

    else
    {
      if (PortTypeFromPortID == 1885564781)
      {
        return result;
      }

      v3 = 1886152041;
    }

    goto LABEL_13;
  }

  if (PortTypeFromPortID <= 1886675560)
  {
    if (PortTypeFromPortID == 1886222185)
    {
      return result;
    }

    v3 = 1886614633;
    goto LABEL_13;
  }

  if (PortTypeFromPortID != 1886675561 && PortTypeFromPortID != 1886680169)
  {
    v3 = 1886745449;
LABEL_13:
    if (PortTypeFromPortID != v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t remoteXPCRouteDiscoverer_CreateInternal(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E695E480];
  FigRouteDiscovererGetClassID();
  result = CMDerivedObjectCreate();
  if (!result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.coremedia.remoteroutediscoverer.cache", v7);
    *(DerivedStorage + 16) = v8;
    if (v8)
    {
      result = FigEndpointRPCCacheCreate();
      if (!result)
      {
        *(DerivedStorage + 8) = a1;
        FigXPCRemoteClientAssociateObject();
        result = 0;
      }
    }

    else
    {
      result = FigSignalErrorAtGM();
    }
  }

  *a2 = 0;
  return result;
}

uint64_t FigRoutingManagerIsEndpointOfType(uint64_t a1)
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

  v3 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

const __CFArray *FigEndpointDescriptorUtility_CopyAndRemoveDuplicateRouteDescriptors(CFArrayRef theArray)
{
  v28 = *MEMORY[0x1E69E9840];
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
  v2 = 0;
  if (!MutableCopy)
  {
    goto LABEL_3;
  }

LABEL_2:
  v3 = CFArrayGetCount(MutableCopy) - 1;
LABEL_4:
  if (v2 < v3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v2);
    if (ValueAtIndex)
    {
      v5 = CFRetain(ValueAtIndex);
    }

    else
    {
      v5 = 0;
    }

    Value = CFDictionaryGetValue(v5, @"RouteUID");
    if (Value)
    {
      v7 = CFRetain(Value);
    }

    else
    {
      v7 = 0;
    }

    v8 = CFDictionaryGetValue(v5, @"PortNumber");
    theDict = v5;
    if (v8)
    {
      cf = CFRetain(v8);
    }

    else
    {
      cf = 0;
    }

    v9 = v2 + 1;
    v25 = v2;
    while (1)
    {
      v10 = v9;
      if (MutableCopy)
      {
        Count = CFArrayGetCount(MutableCopy);
      }

      else
      {
        Count = 0;
      }

      if (v10 >= Count)
      {
LABEL_45:
        if (theDict)
        {
          CFRelease(theDict);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v2 = v2 - (v10 < Count) + 1;
        if (MutableCopy)
        {
          goto LABEL_2;
        }

LABEL_3:
        v3 = -1;
        goto LABEL_4;
      }

      v12 = CFArrayGetValueAtIndex(MutableCopy, v10);
      if (v12)
      {
        v13 = CFRetain(v12);
      }

      else
      {
        v13 = 0;
      }

      v14 = CFDictionaryGetValue(v13, @"RouteUID");
      if (v14)
      {
        v15 = CFRetain(v14);
        v16 = v15;
        v17 = 1;
        if (!v7 || !v15)
        {
          goto LABEL_32;
        }

        location = CFStringFind(v15, v7, 0).location;
        v19 = CFStringFind(v7, v16, 0).location;
        if (FigCFEqual() || location != -1 || v19 != -1)
        {
          if (location == -1)
          {
            v20 = theDict;
            CFDictionarySetValue(theDict, @"RouteUID", v16);
          }

          else
          {
            CFDictionarySetValue(v13, @"RouteUID", v7);
            v20 = theDict;
          }

          if (cf)
          {
            CFDictionaryApplyFunction(v13, figEndpointDescriptorUtility_addMissingEntriesApplierFunction, v20);
            v21 = v10;
          }

          else
          {
            CFDictionaryApplyFunction(v20, figEndpointDescriptorUtility_addMissingEntriesApplierFunction, v13);
            v21 = v2;
          }

          CFArrayRemoveValueAtIndex(MutableCopy, v21);
          if (dword_1EB75DF60)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v17 = 0;
            v2 = v25;
          }

          else
          {
            v17 = 0;
          }

          goto LABEL_32;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = 1;
LABEL_32:
      if (v13)
      {
        CFRelease(v13);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      v9 = v10 + 1;
      if ((v17 & 1) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

uint64_t discoverer_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    goto LABEL_36;
  }

  v7 = DerivedStorage;
  if (!DerivedStorage)
  {
    v20 = v34;
    v21 = -17346;
    goto LABEL_37;
  }

  if (!CFEqual(a2, @"clientPID"))
  {
    if (CFEqual(a2, @"clientName"))
    {
      if (a3)
      {
        v11 = CFGetTypeID(a3);
        if (v11 == CFStringGetTypeID())
        {
          v12 = v7[2];
          if (v12)
          {
            CFRelease(v12);
            v7[2] = 0;
          }

          v13 = CFRetain(a3);
          goto LABEL_23;
        }
      }
    }

    else if (CFEqual(a2, @"audioSessionID"))
    {
      if (!a3)
      {
        *(v7 + 2) = 0;
        goto LABEL_38;
      }

      v14 = CFGetTypeID(a3);
      if (v14 == CFNumberGetTypeID())
      {
        CFNumberGetValue(a3, kCFNumberSInt32Type, v7 + 1);
        goto LABEL_38;
      }
    }

    else if (CFEqual(a2, @"OnBehalfOf"))
    {
      if (a3)
      {
        v15 = CFGetTypeID(a3);
        if (v15 == CFDictionaryGetTypeID())
        {
          v16 = v7[6];
          v7[6] = a3;
          CFRetain(a3);
          if (v16)
          {
            CFRelease(v16);
          }

          goto LABEL_38;
        }
      }
    }

    else
    {
      if (!CFEqual(a2, @"BluetoothRoutesOnly"))
      {
        if (FigCFEqual())
        {
          v25 = v7[10];
          FigSimpleMutexLock();
          v26 = v7[5];
          if (v26)
          {
            CFRelease(v26);
            v7[5] = 0;
          }

          if (a3)
          {
            v27 = CFRetain(a3);
          }

          else
          {
            v27 = 0;
          }

          v7[5] = v27;
          v30 = v7[10];
          FigSimpleMutexUnlock();
        }

        else if (FigCFEqual())
        {
          v28 = v7[4];
          if (v28)
          {
            CFRelease(v28);
            v7[4] = 0;
          }

          if (a3)
          {
            v29 = CFRetain(a3);
          }

          else
          {
            v29 = 0;
          }

          v7[4] = v29;
        }

        else
        {
          DiscoveryQueue = FigRouteDiscoveryManagerGetDiscoveryQueue();
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __discoverer_SetProperty_block_invoke_2;
          v32[3] = &unk_1E7AE79A8;
          v32[6] = v7;
          v32[7] = a1;
          v32[8] = a3;
          v32[4] = &v33;
          v32[5] = a2;
          MXDispatchSync("discoverer_SetProperty", "FigRouteDiscoverer.m", 616, 0, 0, DiscoveryQueue, v32);
        }

        goto LABEL_38;
      }

      if (a3)
      {
        v17 = CFGetTypeID(a3);
        if (v17 == CFBooleanGetTypeID())
        {
          v18 = v7[3];
          if (v18)
          {
            CFRelease(v18);
            v7[3] = 0;
          }

          v7[3] = CFRetain(a3);
          v19 = FigRouteDiscoveryManagerGetDiscoveryQueue();
          MXDispatchAsync("discoverer_SetProperty", "FigRouteDiscoverer.m", 578, 0, 0, v19, &__block_literal_global_52);
          goto LABEL_38;
        }
      }
    }

    goto LABEL_36;
  }

  if (!a3)
  {
    goto LABEL_38;
  }

  v8 = CFGetTypeID(a3);
  if (v8 != CFNumberGetTypeID())
  {
LABEL_36:
    v20 = v34;
    v21 = -17340;
LABEL_37:
    *(v20 + 6) = v21;
    goto LABEL_38;
  }

  CFNumberGetValue(a3, kCFNumberSInt32Type, v7 + 12);
  memset(buffer, 0, sizeof(buffer));
  v9 = *(v7 + 3);
  if (v9 < 1)
  {
    v10 = 0;
    goto LABEL_20;
  }

  MX_RunningBoardServices_StartMonitoringForPID(v9);
  v10 = proc_name(*(v7 + 3), buffer, 0x20u);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_20:
    *(buffer + v10) = 0;
  }

  if (!v7[2])
  {
    v13 = CFStringCreateWithCString(*MEMORY[0x1E695E480], buffer, 0x8000100u);
LABEL_23:
    v7[2] = v13;
  }

LABEL_38:
  v22 = *(v34 + 6);
  _Block_object_dispose(&v33, 8);
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

void sub_1B17BF5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigRouteDiscovererGetTypeID()
{
  if (FigRouteDiscovererGetClassID_sRegisterFigRouteDiscovererTypeOnce != -1)
  {
    FigRouteDiscovererGetClassID_cold_1();
  }

  v1 = sFigRouteDiscovererClassID;

  return MEMORY[0x1EEDBB488](v1);
}

__CFArray *MXEndpointDescriptorCopyAvailableRouteDescriptorsFromEndpoints(const __CFArray *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = 0;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a1); v3 < i; i = 0)
  {
    CFArrayGetValueAtIndex(a1, v3);
    FigCFDictionaryGetValue();
    if (FigCFArrayContainsValue())
    {
      Value = FigCFDictionaryGetValue();
      if (Value)
      {
        MutableCopy = MXCFDictionaryCreateMutableCopy(Value);
        CFArrayAppendValue(Mutable, MutableCopy);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }
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

  return Mutable;
}

uint64_t FigRouteDiscovererRemoteXPC_SetProperty(uint64_t a1)
{
  v2 = 0;
  result = remoteXPCRouteDiscoverer_GetObjectID(a1, &v2);
  if (!result)
  {

    return FigXPCSendStdSetPropertyMessage();
  }

  return result;
}

uint64_t remoteXPCRouteDiscoverer_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    remoteXPCRouteDiscoverer_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *(v4 + 1);
  }

  return result;
}

__CFArray *FigRoutingManagerCopyEndpointsWithType(const __CFArray *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = 0;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a1); v3 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
    if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
    {
      v6 = CFArrayGetValueAtIndex(a1, v3);
      CFArrayAppendValue(Mutable, v6);
    }

    ++v3;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return Mutable;
}

const __CFArray *FigRouteDiscoveryManagerCopyRouteDescriptorsFromEndpointsAndAudioSessionID(const __CFArray *a1, uint64_t a2)
{
  v4 = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache copyRouteDescriptorsForEndpoints:"copyRouteDescriptorsForEndpoints:", a1];
  v5 = *MEMORY[0x1E69626D8];
  v6 = FigRoutingManagerCopyEndpointsWithType(a1);
  v7 = v6;
  if (v6 && CFArrayGetCount(v6) >= 1)
  {
    v8 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v7, a2);
  }

  else
  {
    v8 = 0;
  }

  cf = 0;
  MXCFArrayCopyAppendedArray(v8, v4, &cf);
  v9 = FigEndpointDescriptorUtility_CopyAndRemoveDuplicateRouteDescriptors(cf);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (!v9)
  {
    return MEMORY[0x1E695E0F0];
  }

  return v9;
}

void MXCFArrayCopyAppendedArray(const __CFArray *a1, const __CFArray *a2, __CFArray **a3)
{
  if (a3)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (a1 && CFArrayGetCount(a1))
    {
      v7.length = CFArrayGetCount(a1);
      v7.location = 0;
      CFArrayAppendArray(Mutable, a1, v7);
    }

    if (a2)
    {
      if (CFArrayGetCount(a2))
      {
        v8.length = CFArrayGetCount(a2);
        v8.location = 0;
        CFArrayAppendArray(Mutable, a2, v8);
      }
    }

    *a3 = Mutable;
  }
}

uint64_t CMSMVAUtility_GetPortAtIndex(const __CFArray *a1, CFIndex a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  valuePtr = 0;
  CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
  return valuePtr;
}

__CFArray *FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(const __CFArray *a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count > 0)
    {
      FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints_cold_1(a1, a2, Count, Mutable);
    }
  }

  v6 = 0;
  if (Mutable)
  {
    goto LABEL_5;
  }

LABEL_6:
  v7 = -1;
LABEL_7:
  if (v6 < v7)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v6);
    if (ValueAtIndex)
    {
      v9 = CFRetain(ValueAtIndex);
    }

    else
    {
      v9 = 0;
    }

    Value = CFDictionaryGetValue(v9, @"RouteUID");
    if (Value)
    {
      v11 = CFRetain(Value);
    }

    else
    {
      v11 = 0;
    }

    v12 = CFDictionaryGetValue(v9, @"PortNumber");
    if (v12)
    {
      cf = CFRetain(v12);
    }

    else
    {
      cf = 0;
    }

    idx = v6;
    v13 = v6 + 1;
    while (1)
    {
      v14 = v13;
      if (Mutable)
      {
        v15 = CFArrayGetCount(Mutable);
      }

      else
      {
        v15 = 0;
      }

      if (v14 >= v15)
      {
LABEL_47:
        if (v9)
        {
          CFRelease(v9);
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v6 = idx - (v14 < v15) + 1;
        if (!Mutable)
        {
          goto LABEL_6;
        }

LABEL_5:
        v7 = CFArrayGetCount(Mutable) - 1;
        goto LABEL_7;
      }

      v16 = CFArrayGetValueAtIndex(Mutable, v14);
      v17 = v16 ? CFRetain(v16) : 0;
      v18 = CFDictionaryGetValue(v17, @"RouteUID");
      if (!v18)
      {
        break;
      }

      v19 = CFRetain(v18);
      v20 = v19;
      v21 = 1;
      if (v11 && v19)
      {
        location = CFStringFind(v19, v11, 0).location;
        v23 = CFStringFind(v11, v20, 0).location;
        if (FigCFEqual() || location != -1 || v23 != -1)
        {
          if (location == -1)
          {
            v24 = v9;
            v25 = v20;
          }

          else
          {
            v24 = v17;
            v25 = v11;
          }

          CFDictionarySetValue(v24, @"RouteUID", v25);
          if (cf)
          {
            CFDictionaryApplyFunction(v17, figEndpointDescriptorUtility_addMissingEntriesApplierFunction, v9);
            v26 = v14;
          }

          else
          {
            CFDictionaryApplyFunction(v9, figEndpointDescriptorUtility_addMissingEntriesApplierFunction, v17);
            v26 = idx;
          }

          CFArrayRemoveValueAtIndex(Mutable, v26);
          v21 = 0;
          if (!v17)
          {
            goto LABEL_37;
          }

LABEL_36:
          CFRelease(v17);
          goto LABEL_37;
        }

        goto LABEL_34;
      }

LABEL_35:
      if (v17)
      {
        goto LABEL_36;
      }

LABEL_37:
      if (v20)
      {
        CFRelease(v20);
      }

      v13 = v14 + 1;
      if ((v21 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v20 = 0;
LABEL_34:
    v21 = 1;
    goto LABEL_35;
  }

  return Mutable;
}

__CFArray *vaemCopyEndpointsForListOfPorts(const __CFArray *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v6 = Count;
    for (i = 0; i != v6; ++i)
    {
      PortAtIndex = CMSMVAUtility_GetPortAtIndex(a1, i);
      v9 = vaeCopyNameForPort(PortAtIndex);
      PortTypeFromPortID = vaeGetPortTypeFromPortID(PortAtIndex);
      if (!a2 || (v11 = PortTypeFromPortID, !FigCFEqual()) && v11 != 1885433975 && v11 != 1885433964)
      {
        v12 = vaemCopyEndpointForPort(PortAtIndex);
        if (v12)
        {
          v13 = v12;
          CFArrayAppendValue(Mutable, v12);
          CFRelease(v13);
        }
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  if (Mutable && !CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t vaeGetPortTypeFromPortID(uint64_t result)
{
  outData = 0;
  if (result)
  {
    *&inAddress.mSelector = 0x676C6F6270747970;
    inAddress.mElement = 0;
    ioDataSize = 4;
    if (AudioObjectGetPropertyData(result, &inAddress, 0, 0, &ioDataSize, &outData))
    {
      return 0;
    }

    else
    {
      return outData;
    }
  }

  return result;
}

const void *vaemCopyEndpointForPort(int a1)
{
  valuePtr = a1;
  if (!a1)
  {
    return 0;
  }

  if (vaemInitializePortEndpointCache_onceToken != -1)
  {
    vaemCopyEndpointForPort_cold_1();
  }

  v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(qword_1EB75D0D0, v1);
  if (Value)
  {
    v3 = Value;
  }

  else
  {
    vaemAddToPortEndpointCache(valuePtr);
    v3 = CFDictionaryGetValue(qword_1EB75D0D0, v1);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  CFRetain(v3);
LABEL_9:
  FigSimpleMutexUnlock();
  if (v1)
  {
    CFRelease(v1);
  }

  return v3;
}

__CFArray *MXEndpointDescriptorCopyReducedForManager(const __CFArray *a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v5 = 0;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a1); v5 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
    FigCFDictionaryGetValue();
    if (FigCFEqual())
    {
      if (a2)
      {
        ValueAtIndex = FigCFDictionaryGetValue();
      }

      CFArrayAppendValue(Mutable, ValueAtIndex);
    }

    ++v5;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return Mutable;
}

void FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints_cold_1(CFArrayRef theArray, uint64_t a2, uint64_t a3, __CFArray *a4)
{
  v8 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
    v10 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(ValueAtIndex, a2);
    if (v10)
    {
      v11 = v10;
      MutableCopy = MXCFDictionaryCreateMutableCopy(v10);
      CFArrayAppendValue(a4, MutableCopy);
      CFRelease(v11);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }

    ++v8;
  }

  while (a3 != v8);
}

__CFDictionary *FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(uint64_t a1, uint64_t a2)
{
  number[16] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69626D8];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    v5 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!a1)
    {
      goto LABEL_166;
    }

    value = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, *MEMORY[0x1E69621E8], v5, &value);
      if (value)
      {
        CFDictionarySetValue(Mutable, @"RouteName", value);
        CFRelease(value);
        value = 0;
      }
    }

    cf = 0;
    v9 = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(v9, *MEMORY[0x1E69620F8], v5, &cf);
    }

    if (cf)
    {
      CFDictionarySetValue(Mutable, @"RouteUID", cf);
      CFRelease(cf);
      cf = 0;
    }

    v151 = 0;
    v11 = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v14 = *(VTable + 8);
    v13 = VTable + 8;
    v15 = *(v14 + 48);
    if (v15)
    {
      v13 = v15(v11, *MEMORY[0x1E69621B0], v5, &v151);
    }

    if (v151)
    {
      CFDictionarySetValue(Mutable, @"MACAddress", v151);
      CFRelease(v151);
      v151 = 0;
    }

    v16 = &kMXSessionReporterIDLog_IsSideKickSession;
    if (!Mutable)
    {
      v43 = 0x1F289CEF0;
      goto LABEL_146;
    }

    v17 = *MEMORY[0x1E695E4D0];
    OUTLINED_FUNCTION_3_9(v13, @"RouteSupportsAudio");
    v154 = *MEMORY[0x1E695E4C0];
    v18 = v154;
    v19 = FigEndpointGetCMBaseObject();
    v20 = CMBaseObjectGetVTable();
    v23 = *(v20 + 8);
    v22 = v20 + 8;
    v24 = *(v23 + 48);
    v149 = v18;
    v25 = v18;
    if (v24)
    {
      v22 = v24(v19, 0x1F289D010, v5, &v154);
      v25 = v154;
    }

    v26 = &kFigVAEndpointProperty_FigOutputDeviceName;
    if (v25 == v17)
    {
      v26 = &kFigVAEndpointProperty_FigInputDeviceName;
    }

    OUTLINED_FUNCTION_0_23(v22, *v26, v21, @"AudioRouteName");
    v28 = v154;
    if (v154)
    {
      CFRelease(v154);
      v154 = 0;
    }

    OUTLINED_FUNCTION_0_23(v28, *MEMORY[0x1E6962190], v27, @"IsWHAGroupable");
    v160 = 0;
    v29 = FigEndpointGetCMBaseObject();
    v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v30)
    {
      v30(v29, 0x1F289CDB0, v5, &v160);
      if (v160)
      {
        CFDictionarySetValue(Mutable, @"PortNumber", v160);
        if (v160)
        {
          CFRelease(v160);
          v160 = 0;
        }
      }
    }

    v158 = 0;
    *type = 0;
    v156 = 0;
    v157 = 0;
    if (a2)
    {
      v31 = [MXSessionManagerBase copySessionWithAudioSessionID:a2];
      v32 = [v31 isMemberOfClass:objc_opt_class()];
      if (v32)
      {
        v34 = OUTLINED_FUNCTION_8_5(v32, @"AudioCategory", v33, type);
        v36 = OUTLINED_FUNCTION_8_5(v34, @"AudioMode", v35, &v158);
        v38 = OUTLINED_FUNCTION_8_5(v36, @"AllowedRouteTypes", v37, &v157);
        OUTLINED_FUNCTION_8_5(v38, @"ActivationContext", v39, &v156);
        v40 = [v31 prefersBluetoothHighQualityContentCapture];
      }

      else
      {
        v40 = 0;
      }

      v44 = v157;
    }

    else
    {
      *type = CMSMUtility_CopyNonNullCurrentlyActiveCategory();
      v158 = CMSMUtility_CopyNonNullCurrentlyActiveMode();
      v44 = CMSMUtility_CopyCurrentAllowedPortTypes();
      v157 = v44;
      v45 = [+[MXSessionManager sharedInstance](MXSessionManager copyActiveCoreSessionControllingRouting];
      v40 = [v45 prefersBluetoothHighQualityContentCapture];
    }

    if (v44 || (v40 & 1) != 0)
    {
      v155 = 0;
      cmsmCopyVADPickedRouteDescriptionForRouteConfiguration(*type, v158, v156, v44, v40, &v155);
      v46 = 0;
      v53 = v155;
      if (v155)
      {
LABEL_53:
        v54 = [objc_msgSend(v53 objectForKey:{@"RouteUID", "isEqualToString:", -[__CFDictionary objectForKey:](Mutable, "objectForKey:", @"RouteUID"}];
        if (v54)
        {
          OUTLINED_FUNCTION_3_9(v54, @"RouteCurrentlyPicked");
        }
      }
    }

    else
    {
      v46 = cmsmCopyPickableRoutesForRouteConfiguration(*type, v158, v156, 0, 0);
      v155 = 0;
      memset(valuePtr, 0, sizeof(valuePtr));
      v47 = [(__CFArray *)v46 countByEnumeratingWithState:valuePtr objects:number count:16];
      if (v47)
      {
        v49 = v47;
        v50 = **&valuePtr[1];
LABEL_43:
        v51 = 0;
        while (1)
        {
          if (**&valuePtr[1] != v50)
          {
            objc_enumerationMutation(v46);
          }

          v52 = *(*(&valuePtr[0] + 1) + 8 * v51);
          if ([objc_msgSend(v52 objectForKey:{@"RouteCurrentlyPicked", "BOOLValue"}])
          {
            break;
          }

          if (v49 == ++v51)
          {
            v49 = [(__CFArray *)v46 countByEnumeratingWithState:valuePtr objects:number count:16];
            if (v49)
            {
              goto LABEL_43;
            }

            v16 = &kMXSessionReporterIDLog_IsSideKickSession;
            goto LABEL_55;
          }
        }

        v53 = v52;
        v155 = v53;
        v16 = &kMXSessionReporterIDLog_IsSideKickSession;
        if (!v53)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }
    }

LABEL_55:
    if (v46)
    {
      CFRelease(v46);
    }

    if (v155)
    {
      CFRelease(v155);
      v155 = 0;
    }

    if (*type)
    {
      CFRelease(*type);
      *type = 0;
    }

    if (v158)
    {
      CFRelease(v158);
      v158 = 0;
    }

    if (v157)
    {
      CFRelease(v157);
      v157 = 0;
    }

    v55 = v156;
    if (v156)
    {
      CFRelease(v156);
    }

    OUTLINED_FUNCTION_0_23(v55, 0x1F289CEB0, v48, @"RouteSubtype");
    v160 = 0;
    v43 = v16[467];
    v56 = FigEndpointGetCMBaseObject();
    v57 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v57)
    {
      v57(v56, v43, v5, &v160);
    }

    PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(v160);
    v60 = v160;
    if (v160)
    {
      CFRelease(v160);
      v160 = 0;
    }

    OUTLINED_FUNCTION_0_23(v60, 0x1F289D1B0, v58, @"SupportsSharePlay");
    OUTLINED_FUNCTION_0_23(v61, 0x1F289CE10, v62, @"SoftwareVolumeEnabled");
    OUTLINED_FUNCTION_5_8();
    v63 = v63 || PortFromCFNumber == 1885892706;
    if (!v63 && PortFromCFNumber != 1886152041 && PortFromCFNumber != 1886216820 && PortFromCFNumber != 1886152047)
    {
      CFDictionarySetValue(Mutable, @"IsBTRoute", v149);
      CFDictionarySetValue(Mutable, @"PreferredExternalRouteDetails_InEarDetectSupported", v149);
      if (PortFromCFNumber == 1885565807)
      {
        OUTLINED_FUNCTION_3_9(v143, @"IsContinuityScreenOutput");
      }

      else
      {
        OUTLINED_FUNCTION_5_8();
        if (!v63)
        {
          if (PortFromCFNumber == 1886614639)
          {
            OUTLINED_FUNCTION_3_9(v144, @"PreferredExternalRouteDetails_IsActive");
            OUTLINED_FUNCTION_3_9(v146, @"IsPreferredExternalRoute");
          }

          goto LABEL_146;
        }
      }

      OUTLINED_FUNCTION_0_23(v144, 0x1F289D1D0, v145, @"RouteModel");
LABEL_146:
      v150 = 0;
      v134 = FigEndpointGetCMBaseObject();
      v135 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v135)
      {
        v135(v134, v43, v5, &v150);
        v136 = v150;
      }

      else
      {
        v136 = 0;
      }

      v137 = CMSMVAUtility_GetPortFromCFNumber(v136);
      if (v150)
      {
        CFRelease(v150);
        v150 = 0;
      }

      if (v137 == 1885433964)
      {
        v138 = FigRoutingManagerCopyLocalAirPlayEndpoint();
        if (v138)
        {
          v139 = v138;
          figEndpointDescriptorUtility_addAirPlayDetailsToDescriptor(v138, Mutable);
          CFRelease(v139);
        }

        else
        {
          OUTLINED_FUNCTION_2_14();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v141 = v160;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
          {
            v142 = v141;
          }

          else
          {
            v142 = v141 & 0xFFFFFFFE;
          }

          if (v142)
          {
            LODWORD(valuePtr[0]) = 136315138;
            *(valuePtr + 4) = "figEndpointDescriptorUtility_addAirPlayDetailsForLowLatencyRoute";
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_6_9();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      goto LABEL_166;
    }

    CFDictionarySetValue(Mutable, @"IsBTRoute", v17);
    OUTLINED_FUNCTION_0_23(v67, 0x1F289CE30, v68, @"BTDetails_PartnerRoutePresent");
    OUTLINED_FUNCTION_0_23(v69, 0x1F289CE50, v70, @"BTDetails_PartnerRouteRoutable");
    if (PortFromCFNumber == 1886152047)
    {
      OUTLINED_FUNCTION_0_23(v71, 0x1F289CE70, v72, @"BTDetails_SiblingRoutePresent");
    }

    OUTLINED_FUNCTION_0_23(v71, *MEMORY[0x1E6962110], v72, @"IsBluetoothShareable");
    number[0] = 0;
    v73 = FigEndpointGetCMBaseObject();
    v74 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v74)
    {
      goto LABEL_97;
    }

    v74(v73, 0x1F289CFD0, v5, number);
    if (!number[0])
    {
      goto LABEL_97;
    }

    *&valuePtr[0] = 0;
    CFNumberGetValue(number[0], kCFNumberSInt64Type, valuePtr);
    OUTLINED_FUNCTION_1_16();
    if (v63)
    {
      v75 = kFigEndpointDescriptor_BTDetails_EndpointType_HearingAid;
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_1_16();
    if (v63)
    {
      v75 = kFigEndpointDescriptor_BTDetails_EndpointType_Headphones;
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_1_16();
    if (v63)
    {
      v75 = kFigEndpointDescriptor_BTDetails_EndpointType_Other;
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_1_16();
    if (v63)
    {
      v75 = kFigEndpointDescriptor_BTDetails_EndpointType_Speakers;
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_1_16();
    if (v63)
    {
      v75 = kFigEndpointDescriptor_BTDetails_EndpointType_TTY;
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_1_16();
    if (v63)
    {
      v75 = kFigEndpointDescriptor_BTDetails_EndpointType_Vehicle;
    }

    else
    {
LABEL_97:
      v75 = kFigEndpointDescriptor_BTDetails_EndpointType_Unspecified;
    }

LABEL_98:
    CFDictionarySetValue(Mutable, @"BTDetails_EndpointType", *v75);
    v77 = number[0];
    if (number[0])
    {
      CFRelease(number[0]);
    }

    OUTLINED_FUNCTION_0_23(v77, *MEMORY[0x1E6962288], v76, @"BTDetails_SupportedListeningModes");
    OUTLINED_FUNCTION_0_23(v78, *MEMORY[0x1E69621A8], v79, @"BTDetails_ListeningMode");
    OUTLINED_FUNCTION_0_23(v80, *MEMORY[0x1E69622B0], v81, @"SupportsHeadTrackedSpatialAudio");
    OUTLINED_FUNCTION_0_23(v82, *MEMORY[0x1E69620E0], v83, @"HeadTrackedSpatialAudioIsActive");
    OUTLINED_FUNCTION_0_23(v84, *MEMORY[0x1E6961FA8], v85, @"AllowsHeadTrackedSpatialAudio");
    OUTLINED_FUNCTION_0_23(v86, *MEMORY[0x1E69620E8], v87, @"HeadTrackedSpatialAudioMode");
    number[0] = 0;
    v88 = FigEndpointGetCMBaseObject();
    v89 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v89)
    {
      v89(v88, 0x1F289D090, v5, number);
      v90 = number[0];
    }

    else
    {
      v90 = 0;
    }

    if (v90 == v17)
    {
      OUTLINED_FUNCTION_3_9(v90, @"IsPreferredExternalRoute");
      OUTLINED_FUNCTION_0_23(v91, 0x1F289CE90, v92, @"BTDetails_IsBTManaged");
      if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote())
      {
        v93 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
        v94 = CMSM_IDSConnection_CopyNearbyPairedDeviceInfo();
        if (v94)
        {
          CFArrayAppendValue(v93, v94);
          CFDictionarySetValue(Mutable, @"OtherDevicesConnected", v93);
        }

        FakeSharedAudioRouteAsPicked = CMSM_GetFakeSharedAudioRouteAsPicked();
        if (FakeSharedAudioRouteAsPicked)
        {
          OUTLINED_FUNCTION_3_9(FakeSharedAudioRouteAsPicked, @"IsCurrentlyPickedOnPairedDevice");
        }

        if (v94)
        {
          CFRelease(v94);
        }

        if (v93)
        {
          CFRelease(v93);
        }
      }

      v90 = number[0];
    }

    if (v90)
    {
      CFRelease(v90);
    }

    number[0] = 0;
    v96 = FigEndpointGetCMBaseObject();
    v97 = CMBaseObjectGetVTable();
    v99 = *(v97 + 8);
    v98 = v97 + 8;
    v100 = *(v99 + 48);
    if (v100)
    {
      v98 = (v100)(v96, 0x1F289D0B0, v5, number);
      v100 = number[0];
    }

    if (v100 == v17)
    {
      OUTLINED_FUNCTION_3_9(v98, @"IsPreferredExternalRoute");
      figEndpointDescriptorUtility_setDescriptorKey(a1, 0x1F289D0B0, Mutable, @"PreferredExternalRouteDetails_InEarDetectSupported");
      OUTLINED_FUNCTION_0_23(v105, 0x1F289D0F0, v106, @"PreferredExternalRouteDetails_InEarDetectEnabled");
      OUTLINED_FUNCTION_0_23(v107, 0x1F289D0D0, v108, @"PreferredExternalRouteDetails_IsActive");
    }

    else
    {
      *&valuePtr[0] = 0;
      v101 = FigEndpointGetCMBaseObject();
      v103 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v103)
      {
        v103(v101, 0x1F289D090, v5, valuePtr);
        v104 = *&valuePtr[0];
      }

      else
      {
        v104 = 0;
      }

      if (v104 == v17)
      {
        CFDictionarySetValue(Mutable, @"PreferredExternalRouteDetails_InEarDetectSupported", v149);
        CFDictionarySetValue(Mutable, @"PreferredExternalRouteDetails_IsActive", v149);
        v104 = *&valuePtr[0];
      }

      if (v104)
      {
        CFRelease(v104);
      }
    }

    v109 = number[0];
    if (number[0])
    {
      CFRelease(number[0]);
    }

    OUTLINED_FUNCTION_0_23(v109, 0x1F289BA90, v102, @"BTDetails_AlternateTransport");
    if (PortFromCFNumber == 1886216820)
    {
      OUTLINED_FUNCTION_3_9(v110, @"BTDetails_IsHFPRoute");
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
      if (v63)
      {
        OUTLINED_FUNCTION_3_9(v111, @"BTDetails_IsHFPRoute");
        OUTLINED_FUNCTION_0_23(v117, 0x1F289D070, v118, @"BTDetails_SupportsLiveListen");
        OUTLINED_FUNCTION_0_23(v119, 0x1F289CF70, v120, @"BTDetails_IsAvailableForVoicePrompts");
        OUTLINED_FUNCTION_0_23(v121, 0x1F289D110, v122, @"BTDetails_SupportsStereoHFP");
        IsPersonalTranslatorEnabled = MX_FeatureFlags_IsPersonalTranslatorEnabled();
        if (IsPersonalTranslatorEnabled)
        {
          OUTLINED_FUNCTION_0_23(IsPersonalTranslatorEnabled, 0x1F289D1F0, v124, @"BTDetails_SupportsFarFieldCapture");
          OUTLINED_FUNCTION_0_23(v125, 0x1F289D210, v126, @"BTDetails_IsFarFieldCaptureEnabled");
        }
      }

      else
      {
        OUTLINED_FUNCTION_5_8();
        if (v63)
        {
          OUTLINED_FUNCTION_3_9(v112, @"BTDetails_IsA2DPRoute");
          number[0] = v149;
          v113 = FigEndpointGetCMBaseObject();
          v114 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v114)
          {
            v114(v113, 0x1F289CDD0, v5, number);
            v149 = number[0];
          }

          CFDictionarySetValue(Mutable, @"BTDetails_SupportsDoAP", v149);
          v116 = number[0];
          if (number[0] == v17)
          {
            OUTLINED_FUNCTION_0_23(number[0], 0x1F289CDF0, v115, @"BTDetails_SupportsSoftwareVolume");
            v116 = number[0];
          }

          if (v116)
          {
            CFRelease(v116);
          }
        }
      }
    }

    IsAirPodsStudioVoiceMicEnabled = MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled();
    if (IsAirPodsStudioVoiceMicEnabled)
    {
      OUTLINED_FUNCTION_0_23(IsAirPodsStudioVoiceMicEnabled, 0x1F289D130, v128, @"BTDetails_HighQualityContentCaptureSupported");
      OUTLINED_FUNCTION_0_23(v129, 0x1F289D150, v130, @"BTDetails_HighQualityContentCaptureEnabled");
    }

    v131 = CFDictionaryGetValue(Mutable, @"RouteUID");
    v132 = FigRoutingManagerCopyEndpointWithDeviceID(v131, 1, *MEMORY[0x1E69618D8], 0);
    if (v132)
    {
      v133 = v132;
      figEndpointDescriptorUtility_addBTDetailsToDescriptor(v132, Mutable);
      CFRelease(v133);
    }

    goto LABEL_146;
  }

  Mutable = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache copyRouteDescriptorForEndpoint:"copyRouteDescriptorForEndpoint:", a1];
  if (!Mutable)
  {
    if (dword_1EB75DF60)
    {
      OUTLINED_FUNCTION_2_14();
      v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (os_log_type_enabled(v41, type[0]))
      {
        v42 = v160;
      }

      else
      {
        v42 = v160 & 0xFFFFFFFE;
      }

      if (v42)
      {
        LODWORD(valuePtr[0]) = 136315394;
        *(valuePtr + 4) = "FigEndpointDescriptorUtility_CopyDescriptorForEndpoint";
        WORD6(valuePtr[0]) = 2048;
        *(valuePtr + 14) = a1;
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_6_9();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    Mutable = FigEndpointDescriptorUtility_CopyDescriptorForNonVirtualAudioEndpoint(a1);
  }

LABEL_166:
  v147 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t OUTLINED_FUNCTION_3_0(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return FigXPCRemoteClientSendSyncMessageCreatingReply();
}

_xpc_connection_s *OUTLINED_FUNCTION_3_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  a12 = 0;
  *v37 = 0u;
  v37[1] = 0u;
  v37[2] = 0u;
  v37[3] = 0u;
  v37[4] = 0u;
  v37[5] = 0u;
  v37[6] = 0u;
  v37[7] = 0u;

  return volumeControllerServer_getClientInfo(v36, &a12, &a36);
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_3_7()
{
  v2 = *(v0 + 3640);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_3_9(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

uint64_t OUTLINED_FUNCTION_3_13()
{

  return CMNotificationCenterPostNotification();
}

id CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(unsigned int a1)
{
  v1 = -[NSDictionary objectForKey:]([+[MXSessionManager sharedInstance](MXSessionManager vadOutputPortTypeToFigOutputDeviceNameDict], "objectForKey:", a1);
  v2 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  return v2;
}

NSString *CMSMUtility_CopyNonNullCurrentlyActiveCategory()
{
  result = CMSMUtility_CopyCurrentlyActiveCategory();
  if (!result)
  {

    return CFRetain(@"Audio/Video");
  }

  return result;
}

NSString *CMSMUtility_CopyCurrentlyActiveMode()
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
      for (i = 0; i != v1; i = (i + 1))
      {
        if (*v8 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v7 + 1) + 8 * i);
        if ([v4 isActive] && !-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", objc_msgSend(v4, "audioCategory")))
        {
          v1 = [+[MXSessionManager sharedInstance](MXSessionManager currentAudioMode];
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

NSString *CMSMUtility_CopyNonNullCurrentlyActiveMode()
{
  result = CMSMUtility_CopyCurrentlyActiveMode();
  if (!result)
  {

    return CFRetain(@"Default");
  }

  return result;
}

NSArray *CMSMUtility_CopyCurrentAllowedPortTypes()
{
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager currentAllowedPortTypes];

  return v0;
}

id vaeCopyFigOutputDeviceNameFromVADPort(uint64_t a1)
{
  PortTypeFromPortID = vaeGetPortTypeFromPortID(a1);

  return CMSMVAUtility_CopyFigOutputDeviceNameFromVADPortType(PortTypeFromPortID);
}

const __CFNumber *CMSMVAUtility_GetPortFromCFNumber(const __CFNumber *result)
{
  if (result)
  {
    valuePtr = 0;
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

CFStringRef vaeCopyRouteSubtypeFromVADPort(AudioObjectID a1)
{
  outData = 0;
  if (!a1)
  {
    return 0;
  }

  *&inAddress.mSelector = 0x676C6F6270737562;
  inAddress.mElement = 0;
  ioDataSize = 4;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData) || !outData)
  {
    return 0;
  }

  LOBYTE(inAddress.mSelector) = HIBYTE(outData);
  BYTE1(inAddress.mSelector) = BYTE2(outData);
  BYTE2(inAddress.mSelector) = BYTE1(outData);
  HIBYTE(inAddress.mSelector) = outData;
  LOBYTE(inAddress.mScope) = 0;
  return CFStringCreateWithCString(*MEMORY[0x1E695E480], &inAddress, 0);
}

BOOL vaeDoesPortSupportSharePlay(AudioObjectID a1)
{
  v2 = 1;
  ioDataSize = 4;
  outData = 1;
  *&inAddress.mSelector = 0x676C6F6270737073;
  inAddress.mElement = 0;
  if (AudioObjectHasProperty(a1, &inAddress) && !AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    return outData != 0;
  }

  return v2;
}

uint64_t vaeDoesPortSupportSoftwareVolume(AudioObjectID a1)
{
  v9 = *MEMORY[0x1E69E9840];
  ioDataSize = 4;
  outData = 0;
  *&inAddress.mSelector = *"newsbolg";
  inAddress.mElement = 0;
  result = AudioObjectHasProperty(a1, &inAddress);
  if (result)
  {
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

__n128 OUTLINED_FUNCTION_7_0()
{
  result = *v0;
  v2 = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_7_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return [v8 countByEnumeratingWithState:va objects:v9 - 216 count:16];
}

BOOL OUTLINED_FUNCTION_7_7(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_7_11()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

id MXCFDictionaryCreateMutableCopy(uint64_t a1)
{
  v2 = MEMORY[0x1E695DF90];
  if (a1)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF90]);

    return [v3 initWithDictionary:a1 copyItems:1];
  }

  else
  {

    return objc_alloc_init(v2);
  }
}

uint64_t volumeControllerRemote_CanSetMasterVolumeOfRoutingContext()
{
  OUTLINED_FUNCTION_0_13();
  if (v4 && v2)
  {
    if (OUTLINED_FUNCTION_10_2(v3, value, v36, xdict) || (OUTLINED_FUNCTION_8(), v5 = FigXPCCreateBasicMessage(), v5) || OUTLINED_FUNCTION_31(v5, v6, v7, v8, v9, v10, v11, v12, valuea))
    {
      OUTLINED_FUNCTION_21();
    }

    else
    {
      xpc_dictionary_set_uint64(xdicta, kFigVolumeControllerXPCMsgParam_RoutingContext, valueb);
      v13 = OUTLINED_FUNCTION_11_2();
      v21 = OUTLINED_FUNCTION_22(v13, v14, v15, v16, v17, v18, v19, v20, valueb, v37);
      if (!v0)
      {
        v22 = xpc_dictionary_get_BOOL(v21, kFigVolumeControllerXPCMsgParam_CanSetMasterVolume);
        OUTLINED_FUNCTION_32(v22, v23, v24, v25, v26, v27, v28, v29, valuec, v38);
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  v30 = *(v1 + 3512);
  OUTLINED_FUNCTION_29();
  return v0;
}

uint64_t volumeControllerServer_handleCanSetMasterVolumeMessage()
{
  OUTLINED_FUNCTION_0_16();
  uint64 = xpc_dictionary_get_uint64(v0, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v2 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v2)
  {
    v11 = v2;
  }

  else if (*(*(OUTLINED_FUNCTION_22_0() + 16) + 40))
  {
    v3 = OUTLINED_FUNCTION_9_4();
    v11 = v4(v3);
    if (!v11)
    {
      OUTLINED_FUNCTION_13_3(0, kFigVolumeControllerXPCMsgParam_CanSetMasterVolume, v5, v6, v7, v8, v9, v10, cf, v14, v15, v16, v17);
    }
  }

  else
  {
    v11 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t volumeController_GetMainVolumeControlTypeForRoutingContext(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = 4294949706;
  if (a2 && a3)
  {
    v15 = 0;
    FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a2, &v15);
    theArray = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpoints(v15, &theArray);
    if (theArray)
    {
      if (CFArrayGetCount(theArray) < 1)
      {
        v3 = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        v6 = *MEMORY[0x1E69626B0];
        if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
        {
          AirPlayMainVolumeControlType = volumeController_getAirPlayMainVolumeControlType();
          v3 = 0;
        }

        else
        {
          cf = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v9)
          {
            v3 = v9(CMBaseObject, *MEMORY[0x1E6962348], *MEMORY[0x1E695E480], &cf);
            v10 = cf;
            if (v3)
            {
              v11 = 1;
            }

            else
            {
              v11 = cf == 0;
            }

            if (v11)
            {
              AirPlayMainVolumeControlType = 3;
            }

            else
            {
              AirPlayMainVolumeControlType = FigCFNumberGetSInt64();
              v10 = cf;
            }

            if (v10)
            {
              CFRelease(v10);
            }
          }

          else
          {
            v3 = 4294954514;
            AirPlayMainVolumeControlType = 3;
          }
        }

        *a3 = AirPlayMainVolumeControlType;
      }

      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }
    }

    else
    {
      v3 = 0;
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_10_0@<X0>(__int128 a1@<0:X6, 8:X7>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, __int128 time2a, uint64_t time2_16, uint64_t a7, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, uint64_t a11, __int128 a12, uint64_t a13)
{
  time1_16 = a2;
  time2a = a12;
  time2_16 = a13;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_10_1()
{
  v2 = *(v0 + 3640);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_10_2@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return volumeControllerRemote_getObjectID(a1, va);
}

BOOL OUTLINED_FUNCTION_35(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_10_7()
{
  v2 = *(v0 + 592);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_14_0(void *value)
{

  CFArrayAppendValue(v1, value);
}

const void *OUTLINED_FUNCTION_14_2(uint64_t a1, const void *a2)
{

  return singletonVolumeController_copyRemoteRoutingContext(a2);
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;
  a10 = 0;

  return remoteXPCRoutingContext_GetObjectID(a1, &a10);
}

BOOL OUTLINED_FUNCTION_4_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_14_6()
{
  v2 = *(v0 + 3832);

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t FigRoutingManagerContextUtilities_CopyCachedSelectedRouteDescriptors(uint64_t a1, uint64_t a2)
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
  v9[2] = __FigRoutingManagerContextUtilities_CopyCachedSelectedRouteDescriptors_block_invoke;
  v9[3] = &unk_1E7AE7A48;
  if (!byte_1EB75CFA8)
  {
    v4 = 0;
  }

  v9[4] = &v10;
  v9[5] = v4;
  v9[6] = a1;
  v9[7] = a2;
  MXDispatchSync("FigRoutingManagerContextUtilities_CopyCachedSelectedRouteDescriptors", "FigRoutingManagerContextUtilities.m", 5240, 0, 0, v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t FigRoutingManagerContextUtilities_CopyRoutingContextUUID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294954296;
  }

  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  v4 = &routingContextUtilities_getSharedContextUtilities_contextState;
  v5 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v5 = 504;
  }

  v6 = *v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FigRoutingManagerContextUtilities_CopyRoutingContextUUID_block_invoke;
  v8[3] = &__block_descriptor_56_e5_v8__0l;
  if (!byte_1EB75CFA8)
  {
    v4 = 0;
  }

  v8[4] = v4;
  v8[5] = a1;
  v8[6] = a2;
  MXDispatchSync("FigRoutingManagerContextUtilities_CopyRoutingContextUUID", "FigRoutingManagerContextUtilities.m", 2579, 0, 0, v6, v8);
  return 0;
}

uint64_t OUTLINED_FUNCTION_28()
{

  return FigXPCMessageCopyCFString();
}

id OUTLINED_FUNCTION_15_1(int a1)
{

  return vaemCopyConnectedInputPortsForDefaultVADFromDeviceListWithRouteConfiguration(v1, v2, v3, a1);
}

const void *OUTLINED_FUNCTION_15_2(uint64_t a1, const void *a2)
{

  return singletonVolumeController_copyRemoteRoutingContext(a2);
}

void OUTLINED_FUNCTION_15_3(const char *a1@<X1>, int a2@<W8>)
{

  xpc_dictionary_set_BOOL(v2, a1, a2 != 0);
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1)
{

  return MEMORY[0x1EEDBD0E8](a1, 0, v1);
}

uint64_t OUTLINED_FUNCTION_15_7()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t volumeController_IsMainVolumeControlSupportedForRoutingContext(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  v3 = 4294949706;
  if (!a2 || !a3)
  {
    goto LABEL_28;
  }

  v16 = 0;
  v17 = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a2, &v17);
  if (FigRoutingManagerContextUtilities_GetContextType(v17) != 13)
  {
    theArray[0] = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpoints(v17, theArray);
    if (theArray[0])
    {
      if (CFArrayGetCount(theArray[0]) < 1)
      {
        v3 = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], 0);
        v9 = *MEMORY[0x1E69626B0];
        if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
        {
          isAirPlayMainVolumeSupported = volumeController_isAirPlayMainVolumeSupported();
          v3 = 0;
        }

        else
        {
          v11 = *MEMORY[0x1E695E4C0];
          cf = *MEMORY[0x1E695E4C0];
          CMBaseObject = FigEndpointGetCMBaseObject();
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v13)
          {
            v3 = v13(CMBaseObject, *MEMORY[0x1E69621C8], *MEMORY[0x1E695E480], &cf);
            v11 = cf;
          }

          else
          {
            v3 = 4294954514;
          }

          isAirPlayMainVolumeSupported = v11 == *MEMORY[0x1E695E4D0];
          if (v11)
          {
            CFRelease(v11);
          }
        }

        *a3 = isAirPlayMainVolumeSupported;
      }

      if (theArray[0])
      {
        CFRelease(theArray[0]);
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (MX_FeatureFlags_IsSystemInputPickerEnabled())
  {
    if (!FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618F8]))
    {
      volumeController_IsMainVolumeControlSupportedForRoutingContext_cold_1(theArray);
      v3 = LODWORD(theArray[0]);
      goto LABEL_25;
    }

    v5 = FigEndpointManagerGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      if (!v6(v5, 0x1F289B650, *MEMORY[0x1E695E480], &v16))
      {
        *a3 = [v16 BOOLValue];
        if (dword_1EB75DEA0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

LABEL_24:
        v3 = 0;
        goto LABEL_25;
      }
    }
  }

  v3 = FigSignalErrorAtGM();
LABEL_25:
  if (v17)
  {
    CFRelease(v17);
    v17 = 0;
  }

LABEL_28:
  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t routingContextRemoteXPC_CopySelectedRouteDescriptors(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_14_4(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v22, v23);
  if (v9 || (OUTLINED_FUNCTION_9_0(), v9 = FigXPCCreateBasicMessage(), v9) || (OUTLINED_FUNCTION_8(), v9 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v9))
  {
    v8 = v9;
  }

  else
  {
    v10 = FigXPCMessageCopyCFArray();
    OUTLINED_FUNCTION_10_4(v10, v11, v12, v13, v14, v15, v16, v17, v20);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t FigRoutingContextXPCHandleCopySelectedRouteDescriptorsMessage()
{
  if (*(*(OUTLINED_FUNCTION_30_1() + 16) + 64))
  {
    v1 = OUTLINED_FUNCTION_26_1();
    v3 = v2(v1);
    if (v3)
    {
      v11 = v3;
    }

    else
    {
      if (!*(v0 + 3))
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (cf)
        {
          Count = CFArrayGetCount(cf);
          if (Count >= 1)
          {
            v6 = Count;
            for (i = 0; i != v6; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(cf, i);
              v9 = frcXPCServer_copySanitizedRouteDescriptor(ValueAtIndex);
              CFArrayAppendValue(Mutable, v9);
              if (v9)
              {
                CFRelease(v9);
              }
            }
          }
        }

        v10 = cf;
        cf = Mutable;
        if (Mutable)
        {
          CFRetain(Mutable);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      FigXPCMessageSetCFArray();
      v11 = 0;
    }
  }

  else
  {
    v11 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t FigVolumeControllerGetTypeID()
{
  if (_MergedGlobals_9 != -1)
  {
    FigVolumeControllerGetClassID_cold_1();
  }

  v1 = qword_1ED6D2F88;

  return MEMORY[0x1EEDBB488](v1);
}

uint64_t routingContext_CopySelectedRouteDescriptors(uint64_t a1, CFTypeRef *a2)
{
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  if (IsOperationOnSystemInputContextAllowedInternal)
  {
    return IsOperationOnSystemInputContextAllowedInternal;
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    CFRetain(*(DerivedStorage + 8));
  }

  IsOperationOnSystemInputContextAllowedInternal = FigRoutingManagerContextUtilities_CopyCachedSelectedRouteDescriptors(v6, &cf);
  if (IsOperationOnSystemInputContextAllowedInternal)
  {
    if (!cf)
    {
      goto LABEL_9;
    }

    CFRelease(cf);
  }

  else
  {
    *a2 = cf;
  }

  cf = 0;
LABEL_9:
  v7 = objc_autoreleasePoolPush();
  [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"routingContext_CopySelectedRouteDescriptors" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
  objc_autoreleasePoolPop(v7);
  if (v6)
  {
    CFRelease(v6);
  }

  return IsOperationOnSystemInputContextAllowedInternal;
}

uint64_t vaeIsPortWHAGroupable(uint64_t a1)
{
  PortTypeFromPortID = vaeGetPortTypeFromPortID(a1);
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (CMSMDeviceState_ItsAHomePod() && PortTypeFromPortID == 1886613611)
  {
    return 1;
  }

  result = 0;
  if (CFPreferenceNumberWithDefault && PortTypeFromPortID == 1886613611)
  {
    result = 1;
    if ((vaeIsPortWHAGroupable_didLog & 1) == 0)
    {
      vaeIsPortWHAGroupable_didLog = 1;
    }
  }

  return result;
}

void figEndpointDescriptorUtility_setDescriptorKey(uint64_t a1, uint64_t a2, __CFDictionary *a3, const void *a4)
{
  if (a3)
  {
    value = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, a2, *MEMORY[0x1E695E480], &value);
      v9 = value;
      if (value && value != *MEMORY[0x1E695E738])
      {
        CFDictionarySetValue(a3, a4, value);
        v9 = value;
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }
}

uint64_t __FigRouteDiscovererGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&sFigRouteDiscovererClassDesc, ClassID, 1, &sFigRouteDiscovererClassID);
}

uint64_t volumeControllerRemote_GetVolumeControlTypeOfEndpointWithID()
{
  OUTLINED_FUNCTION_2_7();
  if (v4)
  {
    v5 = v2;
    if (v2)
    {
      if (OUTLINED_FUNCTION_10_2(v3, v17, v19, v21) || (OUTLINED_FUNCTION_8(), FigXPCCreateBasicMessage()) || FigXPCMessageSetCFString())
      {
        OUTLINED_FUNCTION_12_3();
      }

      else
      {
        v6 = OUTLINED_FUNCTION_11_2();
        v14 = OUTLINED_FUNCTION_16_2(v6, v7, v8, v9, v10, v11, v12, v13, v18, v20);
        if (!v0)
        {
          *v5 = xpc_dictionary_get_uint64(v14, kFigVolumeControllerXPCMsgParam_GetEndpointVolumeControlType);
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  v15 = *(v1 + 3512);
  OUTLINED_FUNCTION_23();
  return v0;
}

uint64_t routingContextRemoteXPC_CopyPredictedSelectedRouteDescriptor(uint64_t a1)
{
  memset(v12, 0, sizeof(v12));
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, v12);
  if (ObjectID || (OUTLINED_FUNCTION_9_0(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (ObjectID = FigXPCMessageSetCFDictionary(), ObjectID) || (OUTLINED_FUNCTION_8(), ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(), ObjectID))
  {
    v1 = ObjectID;
  }

  else
  {
    v3 = FigXPCMessageCopyCFDictionary();
    OUTLINED_FUNCTION_10_4(v3, v4, v5, v6, v7, v8, v9, v10, 0);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v1;
}

void sub_1B17C33C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t singletonVolumeController_GetVolumeControlTypeOfEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_6_4(a1, a2, a3, a4, a5, a6, a7, a8, v13, cf);
  if (v8)
  {
LABEL_4:
    v11 = v8;
    if (!cfa)
    {
      return v11;
    }

    goto LABEL_7;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 88))
  {
    v9 = OUTLINED_FUNCTION_4();
    v8 = v10(v9);
    goto LABEL_4;
  }

  v11 = 4294954514;
  if (cfa)
  {
LABEL_7:
    CFRelease(cfa);
  }

  return v11;
}

uint64_t routingContextResilientRemote_CopyPredictedSelectedRouteDescriptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __routingContextResilientRemote_CopyPredictedSelectedRouteDescriptor_block_invoke;
  v4[3] = &__block_descriptor_48_e34_i16__0__OpaqueFigRoutingContext__8l;
  v4[4] = a2;
  v4[5] = a3;
  return routingContextResilientRemote_withRemoteContext(a1, v4);
}

uint64_t FigPredictedRouting_IsSupported(uint64_t a1)
{
  if (predictedRouting_initialize_onceToken == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

    return 1;
  }

  FigPredictedRouting_IsSupported_cold_1();
  if (!a1)
  {
    return 1;
  }

LABEL_3:
  result = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (result != 1)
  {
    return result == 3 && FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(a1) == 0;
  }

  return result;
}

uint64_t FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
    {
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
    }

    if (byte_1EB75CFA8)
    {
      v2 = &routingContextUtilities_getSharedContextUtilities_contextState;
    }

    else
    {
      v2 = 0;
    }

    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v3 = &qword_1EB75CF98;
    if (!byte_1EB75CFA8)
    {
      v3 = 504;
    }

    v4 = *v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent_block_invoke;
    v6[3] = &unk_1E7AE7A20;
    v6[6] = v2;
    v6[7] = v1;
    v6[4] = v11;
    v6[5] = &v7;
    MXDispatchSync("FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent", "FigRoutingManagerContextUtilities.m", 4917, 0, 0, v4, v6);
    v1 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(v11, 8);
  }

  return v1;
}

void sub_1B17C36E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

BOOL FigPredictedRouting_IsPreemptivePortLogicEnabled()
{
  if (predictedRouting_initialize_onceToken != -1)
  {
    FigPredictedRouting_IsSupported_cold_1();
  }

  IsPreemptiveConnectedBannerEnabled = MX_FeatureFlags_IsPreemptiveConnectedBannerEnabled();
  if (predictedRouting_initialize_onceToken != -1)
  {
    FigPredictedRouting_IsSupported_cold_1();
  }

  return (MX_FeatureFlags_IsCorianderEnabled() | IsPreemptiveConnectedBannerEnabled) != 0;
}

uint64_t FigRoutingContextXPCHandleCopyPredictedSelectedRouteDescriptorMessage(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v4 = FigXPCMessageCopyCFDictionary();
  if (v4)
  {
    v10 = v4;
    FigRoutingContextXPCHandleCopyPredictedSelectedRouteDescriptorMessage_cold_1();
    goto LABEL_12;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v5)
  {
    v10 = 4294954514;
LABEL_16:
    FigRoutingContextXPCHandleCopyPredictedSelectedRouteDescriptorMessage_cold_2();
    goto LABEL_12;
  }

  v6 = v5(a1, 0, &cf);
  if (v6)
  {
    v10 = v6;
    goto LABEL_16;
  }

  if (!*(a2 + 3))
  {
    v7 = frcXPCServer_copySanitizedRouteDescriptor(cf);
    v8 = v7;
    v9 = cf;
    cf = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  FigXPCMessageSetCFDictionary();
  v10 = 0;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t routingContext_CopyPredictedSelectedRouteDescriptor(uint64_t a1, uint64_t a2, void *a3)
{
  cf[20] = *MEMORY[0x1E69E9840];
  IsOperationOnSystemInputContextAllowedInternal = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 1);
  if (IsOperationOnSystemInputContextAllowedInternal)
  {
    goto LABEL_21;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a1, cf);
  if (FigRoutingManagerContextUtilities_GetContextType(*(DerivedStorage + 8)) != 13)
  {
    if (!FigPredictedRouting_IsSupported(cf[0]) || ![+[MXAudioAccessoryServices isAnyManagedDeviceConnected]&& !FigPredictedRouting_IsPreemptivePortChanged() sharedInstance]
    {
      if (a3)
      {
        *a3 = 0;
      }

      goto LABEL_19;
    }

    v9 = FigPredictedRouting_CopySelectedRouteDescriptor(*(DerivedStorage + 8));
    if (a3)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (MX_FeatureFlags_IsSystemInputPickerEnabled())
  {
    Value = FigCFDictionaryGetValue();
    if (dword_1EB75DF40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v9 = [+[MXUserPreferredInputRouteCache copyUserPreferredRoute:v12], "copyUserPreferredRoute:", Value];
    if (a3)
    {
      goto LABEL_16;
    }

LABEL_17:
    if (v9)
    {
      CFRelease(v9);
    }

    goto LABEL_19;
  }

  if (!a3)
  {
    goto LABEL_19;
  }

  v9 = 0;
LABEL_16:
  *a3 = v9;
LABEL_19:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_21:
  v10 = *MEMORY[0x1E69E9840];
  return IsOperationOnSystemInputContextAllowedInternal;
}

uint64_t FigRoutingManagerContextUtilities_GetContextType(uint64_t a1)
{
  if (!a1)
  {
    return 4294949876;
  }

  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  if (byte_1EB75CFA8)
  {
    v2 = &routingContextUtilities_getSharedContextUtilities_contextState;
  }

  else
  {
    v2 = 0;
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = &qword_1EB75CF98;
  if (!byte_1EB75CFA8)
  {
    v3 = 504;
  }

  v4 = *v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FigRoutingManagerContextUtilities_GetContextType_block_invoke;
  v7[3] = &unk_1E7AE7A20;
  v7[6] = v2;
  v7[7] = a1;
  v7[4] = v12;
  v7[5] = &v8;
  MXDispatchSync("FigRoutingManagerContextUtilities_GetContextType", "FigRoutingManagerContextUtilities.m", 3992, 0, 0, v4, v7);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(v12, 8);
  return v5;
}

void sub_1B17C3C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t FigPredictedRouting_IsPreemptivePortChanged()
{
  if (!FigPredictedRouting_IsPreemptivePortLogicEnabled())
  {
    return 0;
  }

  FigSimpleMutexLock();
  v0 = gPRS_5;
  FigSimpleMutexUnlock();
  return v0;
}

uint64_t MX_FeatureFlags_IsCorianderEnabled()
{
  if (MX_FeatureFlags_IsCorianderEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsCorianderEnabled_cold_1();
  }

  return MX_FeatureFlags_IsCorianderEnabled_corianderEnabled;
}

uint64_t volumeControllerServer_handleGetEndpointVolumeControlTypeMessage()
{
  OUTLINED_FUNCTION_5_4();
  v1 = OUTLINED_FUNCTION_27_0();
  if (v1)
  {
    return v1;
  }

  if (!*(*(OUTLINED_FUNCTION_22_0() + 16) + 88))
  {
    return 4294954514;
  }

  v2 = OUTLINED_FUNCTION_14_3();
  v4 = v3(v2);
  if (!v4)
  {
    xpc_dictionary_set_uint64(v0, kFigVolumeControllerXPCMsgParam_GetEndpointVolumeControlType, 0);
  }

  return v4;
}

uint64_t volumeController_GetVolumeControlTypeForEndpointWithID(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    return 4294949706;
  }

  v11 = 0;
  volumeController_copyEndpointWithID(a1, a2, &v11);
  cf = 0;
  if (!v11)
  {
    return 0;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(CMBaseObject, *MEMORY[0x1E6962348], *MEMORY[0x1E695E480], &cf);
    v7 = cf;
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = cf == 0;
    }

    if (!v8)
    {
      *a3 = FigCFNumberGetUInt64();
      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
      cf = 0;
    }
  }

  else
  {
    v6 = 4294954514;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v6;
}

uint64_t volumeController_copyEndpointWithID(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v48 = result;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = *(DerivedStorage + 8);
    FigSimpleMutexLock();
    Count = CFDictionaryGetCount(*(DerivedStorage + 16));
    v7 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(*(DerivedStorage + 16), v7, 0);
    if (Count >= 1)
    {
      v8 = 0;
      v9 = *MEMORY[0x1E69626B0];
      v46 = *MEMORY[0x1E6962270];
      v45 = *MEMORY[0x1E695E480];
      while (1)
      {
        v10 = v7[v8];
        theArray = 0;
        FigRoutingManagerContextUtilities_CopyPickedEndpoints(v10, &theArray);
        v11 = theArray;
        if (!theArray)
        {
          goto LABEL_39;
        }

        v12 = CFArrayGetCount(theArray);
        if (v12 < 1)
        {
          goto LABEL_20;
        }

        v13 = v12;
        v14 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
          if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
          {
            break;
          }

          if (v13 == ++v14)
          {
            goto LABEL_20;
          }
        }

        if (!ValueAtIndex || (v16 = CFRetain(ValueAtIndex)) == 0)
        {
LABEL_20:
          if (!theArray)
          {
            goto LABEL_39;
          }

          v24 = CFArrayGetCount(theArray);
          if (v24 < 1)
          {
            goto LABEL_28;
          }

          v25 = v24;
          v26 = 0;
          while (1)
          {
            v27 = CFArrayGetValueAtIndex(theArray, v26);
            if (volumeController_doesEndpointHaveSameID(v27, a2))
            {
              break;
            }

            if (v25 == ++v26)
            {
              goto LABEL_28;
            }
          }

          if (v27)
          {
            v28 = CFRetain(v27);
          }

          else
          {
LABEL_28:
            v28 = 0;
          }

          goto LABEL_36;
        }

        v17 = v16;
        if (FigRoutingManagerIsEndpointOfType(v16))
        {
          v52 = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v19)
          {
            goto LABEL_32;
          }

          v19(CMBaseObject, v46, v45, &v52);
          if (v52)
          {
            break;
          }
        }

        v28 = 0;
LABEL_35:
        CFRelease(v17);
LABEL_36:
        if (theArray)
        {
          CFRelease(theArray);
        }

        if (v28)
        {
          goto LABEL_41;
        }

LABEL_39:
        if (++v8 == Count)
        {
          goto LABEL_40;
        }
      }

      v20 = CFArrayGetCount(v52);
      if (v20 < 1)
      {
        goto LABEL_32;
      }

      v21 = v20;
      v22 = 0;
      while (1)
      {
        v23 = CFArrayGetValueAtIndex(v52, v22);
        if (volumeController_doesEndpointHaveSameID(v23, a2))
        {
          break;
        }

        if (v21 == ++v22)
        {
          goto LABEL_32;
        }
      }

      if (v23)
      {
        v28 = CFRetain(v23);
      }

      else
      {
LABEL_32:
        v28 = 0;
      }

      if (v52)
      {
        CFRelease(v52);
      }

      goto LABEL_35;
    }

LABEL_40:
    v28 = 0;
LABEL_41:
    free(v7);
    *a3 = v28;
    v29 = *(DerivedStorage + 8);
    FigSimpleMutexUnlock();
    result = v48;
    if (!*a3)
    {
      v30 = CMBaseObjectGetDerivedStorage();
      v31 = *(v30 + 8);
      FigSimpleMutexLock();
      v32 = CFDictionaryGetCount(*(v30 + 16));
      v47 = v30;
      v49 = malloc_type_calloc(v32, 8uLL, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(*(v30 + 16), v49, 0);
      v33 = FigRoutingManagerCopyRegisteredEndpointManagers();
      v34 = v33;
      if (v33)
      {
        v35 = CFArrayGetCount(v33);
      }

      else
      {
        v35 = 0;
      }

      if (v32 < 1)
      {
LABEL_56:
        v43 = 0;
      }

      else
      {
        v36 = 0;
        v37 = *MEMORY[0x1E69618B8];
        v38 = *MEMORY[0x1E695E480];
        while (v35 < 1)
        {
LABEL_55:
          if (++v36 == v32)
          {
            goto LABEL_56;
          }
        }

        v39 = 0;
        v40 = v49[v36];
        while (1)
        {
          CFArrayGetValueAtIndex(v34, v39);
          v52 = 0;
          v41 = FigEndpointManagerGetCMBaseObject();
          v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v42)
          {
            v42(v41, v37, v38, &v52);
          }

          v43 = FigRoutingManagerCopyEndpointWithDeviceID(a2, 0, v52, v40);
          if (v52)
          {
            CFRelease(v52);
          }

          if (v43)
          {
            break;
          }

          if (v35 == ++v39)
          {
            goto LABEL_55;
          }
        }
      }

      *a3 = v43;
      if (v34)
      {
        CFRelease(v34);
      }

      free(v49);
      v44 = *(v47 + 8);
      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

uint64_t FigRoutingManagerCopyRegisteredEndpointManagers()
{
  v0 = +[MXEndpointDescriptorCache sharedInstance];

  return [(MXEndpointDescriptorCache *)v0 copyRegisteredEndpointMangers];
}

uint64_t MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled()
{
  if (MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled_sIsDiscoveryEnhancementEnabled;
}

void FigRouteDiscovererRemoteXPC_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 8);
  if (*(DerivedStorage + 16))
  {
    remoteXPCRouteDiscoverer_DisposeCaches(DerivedStorage);
  }

  FigXPCRemoteClientDisassociateObject();
  if (*v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (!v3 && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendSyncMessage();
    FigXPCRelease();
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    dispatch_release(v4);
  }
}

void discoverer_Finalize()
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EB75DF60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  MX_RunningBoardServices_StopMonitoringForPID(*(DerivedStorage + 12));
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 32) = 0;
  }

  v5 = *(DerivedStorage + 40);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 40) = 0;
  }

  v6 = *(DerivedStorage + 72);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 72) = 0;
  }

  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 48) = 0;
  }

  v8 = *(DerivedStorage + 80);
  FigSimpleMutexDestroy();

  DiscoveryQueue = FigRouteDiscoveryManagerGetDiscoveryQueue();
  MXDispatchAsync("discoverer_Finalize", "FigRouteDiscoverer.m", 192, 0, 0, DiscoveryQueue, &__block_literal_global_21);
  v10 = *MEMORY[0x1E69E9840];
}

CFTypeRef discoveryManager_copyHighestDiscoveryModeForDiscovererType(uint64_t a1, unsigned int a2, void *a3)
{
  v4 = *(a1 + 24 * a2 + 24);
  if (*MEMORY[0x1E6961878])
  {
    v5 = CFRetain(*MEMORY[0x1E6961878]);
  }

  else
  {
    v5 = 0;
  }

  Count = CFArrayGetCount(v4);
  if (Count >= 1)
  {
    v7 = Count;
    v22 = a3;
    v24 = 0;
    v8 = 0;
    v9 = *MEMORY[0x1E695E480];
    v10 = *MEMORY[0x1E695E4C0];
    v23 = *MEMORY[0x1E6961868];
    v21 = *MEMORY[0x1E6961880];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v8);
      v12 = discoveryManager_copyDiscovererFromWeakRef(ValueAtIndex);
      if (v12)
      {
        break;
      }

      v18 = v5;
LABEL_25:
      if (v7 == ++v8)
      {
        goto LABEL_53;
      }
    }

    v13 = v12;
    v26 = 0;
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v15 = v14(v13, @"DiscoveryMode", v9, &v26) == 0;
    }

    else
    {
      v15 = 0;
    }

    cf = v10;
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v16(v13, @"BluetoothRoutesOnly", v9, &cf);
    }

    if (!v15 || !FigCFEqual())
    {
      goto LABEL_18;
    }

    if (FigCFEqual())
    {
      v18 = *MEMORY[0x1E6961870];
      if (*MEMORY[0x1E6961870])
      {
        CFRetain(*MEMORY[0x1E6961870]);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (ValueAtIndex)
      {
        v24 = CFRetain(ValueAtIndex);
      }

      else
      {
        v24 = 0;
      }

      if (v26)
      {
        CFRelease(v26);
        v26 = 0;
      }

      CFRelease(v13);
LABEL_53:
      a3 = v22;
      if (v22)
      {
        v19 = v24;
LABEL_55:
        *a3 = v19;
      }

      else if (v24)
      {
        CFRelease(v24);
      }

      return v18;
    }

    DiscoveryModeAsInt = discovererManager_getDiscoveryModeAsInt();
    if (DiscoveryModeAsInt >= discovererManager_getDiscoveryModeAsInt())
    {
LABEL_18:
      v18 = v5;
LABEL_19:
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v26)
      {
        CFRelease(v26);
      }

      CFRelease(v13);
      v5 = v18;
      goto LABEL_25;
    }

    if (FigCFEqual())
    {
      v18 = v23;
    }

    else
    {
      v18 = v21;
      if (!FigCFEqual())
      {
        v18 = v5;
LABEL_33:
        if (v24)
        {
          CFRelease(v24);
        }

        if (ValueAtIndex)
        {
          v24 = CFRetain(ValueAtIndex);
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_19;
      }
    }

    if (v18)
    {
      CFRetain(v18);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    goto LABEL_33;
  }

  if (a3)
  {
    v19 = 0;
    v18 = v5;
    goto LABEL_55;
  }

  return v5;
}

uint64_t discoveryManager_doesSwitchRequireDelay(const void *a1)
{
  if (CFEqual(a1, *MEMORY[0x1E6961870]))
  {
    return 1;
  }

  result = CFEqual(a1, *MEMORY[0x1E6961868]);
  if (result)
  {
    return 1;
  }

  return result;
}

const __CFArray *__discoveryManager_updateDiscoveryModeForType_block_invoke(uint64_t a1)
{
  v2 = 0;
  v61[16] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 48);
  v43 = (a1 + 64);
  v44 = (a1 + 56);
  v42 = (a1 + 72);
  allocator = *MEMORY[0x1E695E480];
  v37 = *MEMORY[0x1E69618B8];
  v38 = *MEMORY[0x1E69618D0];
  v36 = *MEMORY[0x1E6961878];
  v39 = *MEMORY[0x1E69618D8];
  v40 = (a1 + 48);
  while (1)
  {
    result = *(*(a1 + 32) + 240);
    if (result)
    {
      result = CFArrayGetCount(result);
    }

    if (v2 >= result)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 240), v2);
    v6 = CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_RefKey");
    v7 = CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_TypeKey");
    CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_SupportedEndpointFeaturesKey");
    if ((*(a1 + 40) & FigCFNumberGetUInt64()) != 0)
    {
      v8 = FigCFEqual();
      v9 = v3;
      v10 = v44;
      if (v8)
      {
        v11 = *v3;
        v12 = *v43;
        DiscoveryModeAsInt = discovererManager_getDiscoveryModeAsInt();
        v14 = discovererManager_getDiscoveryModeAsInt();
        v9 = v3;
        v10 = v44;
        if (DiscoveryModeAsInt < v14)
        {
          v15 = *(a1 + 32) + 24 * *(a1 + 80);
          v16 = *(v15 + 32);
          v17 = *(a1 + 64);
          *(v15 + 32) = v17;
          if (v17)
          {
            CFRetain(v17);
          }

          v10 = v42;
          v9 = v43;
          if (v16)
          {
            CFRelease(v16);
            v10 = v42;
            v9 = v43;
          }
        }
      }

      discoveryManager_saveRequestedDiscoveryModeForEndpointManager(ValueAtIndex, *(a1 + 40), *v9, *v10);
      v51 = 0;
      v18 = discoveryManager_copyHighestRequestedDiscoveryModeForEndpointManager(ValueAtIndex, &v51);
      CFDictionaryGetValue(ValueAtIndex, @"EndpointFeature_CurrentDiscoveryModeKey");
      if (!FigCFEqual())
      {
        value = 0;
        v50 = 0;
        v19 = discoveryManager_copyDiscovererFromWeakRef(v51);
        if (v19)
        {
          v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v20)
          {
            v20(v19, @"clientName", allocator, &v50);
          }

          v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v21)
          {
            v21(v19, @"discovererUUID", allocator, &value);
          }
        }

        if (dword_1EB75DF60)
        {
          v48 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v23 = v48;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v24 = v23;
          }

          else
          {
            v24 = v23 & 0xFFFFFFFE;
          }

          if (v24)
          {
            *cf = 136316162;
            *&cf[4] = "discoveryManager_updateDiscoveryModeForType_block_invoke";
            v53 = 2114;
            v54 = v7;
            v55 = 2114;
            v56 = v18;
            v57 = 2114;
            v58 = value;
            v59 = 2114;
            v60 = v50;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v61[0] = 0;
        CMBaseObject = FigEndpointManagerGetCMBaseObject();
        v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v26)
        {
          v26(CMBaseObject, v37, allocator, v61);
        }

        v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v27)
        {
          v28 = v27(v6, v18, 0);
          if (v28 == -16155)
          {
            if (v7)
            {
              v31 = CFRetain(v7);
            }

            else
            {
              v31 = 0;
            }

            v33 = dispatch_time(0, 1000000000);
            DiscoveryQueue = FigRouteDiscoveryManagerGetDiscoveryQueue();
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __discoveryManager_updateDiscoveryModeForType_block_invoke_35;
            block[3] = &__block_descriptor_44_e5_v8__0l;
            v29 = -16155;
            v46 = -16155;
            block[4] = v31;
            dispatch_after(v33, DiscoveryQueue, block);
          }

          else
          {
            v29 = v28;
            if (!v28)
            {
              CFDictionarySetValue(ValueAtIndex, @"EndpointFeature_CurrentDiscoveryModeKey", v18);
            }
          }
        }

        else
        {
          v29 = -16155;
        }

        if (v61[0])
        {
          CFRelease(v61[0]);
          v61[0] = 0;
        }

        if (!v29 && v18 && FigCFEqual())
        {
          Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (FigCFEqual())
          {
            FigRouteDiscoveryManagerPowerLogDiscoveryLevelChange(v18, Mutable);
          }

          else
          {
            *cf = 0;
            if (v19)
            {
              v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v32)
              {
                v32(v19, @"OnBehalfOf", allocator, cf);
              }
            }

            if (value)
            {
              CFDictionarySetValue(Mutable, @"ObjectHash", value);
            }

            if (v50)
            {
              CFDictionarySetValue(Mutable, @"Client", v50);
            }

            if (*cf)
            {
              CFDictionarySetValue(Mutable, @"OnBehalfOf", *cf);
            }

            FigRouteDiscoveryManagerPowerLogDiscoveryLevelChange(v18, Mutable);
            if (*cf)
            {
              CFRelease(*cf);
            }
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }

        if (v19)
        {
          CFRelease(v19);
        }

        if (v50)
        {
          CFRelease(v50);
          v50 = 0;
        }

        v3 = v40;
        if (value)
        {
          CFRelease(value);
        }
      }

      if (v18)
      {
        CFRelease(v18);
      }

      if (v51)
      {
        CFRelease(v51);
      }
    }

    ++v2;
  }

  v35 = *MEMORY[0x1E69E9840];
  return result;
}

void discoveryManager_saveRequestedDiscoveryModeForEndpointManager(const __CFDictionary *a1, uint64_t a2, const void *a3, const void *a4)
{
  CFDictionaryGetValue(a1, @"EndpointManager_SupportedEndpointFeaturesKey");
  UInt64 = FigCFNumberGetUInt64();
  Value = CFDictionaryGetValue(a1, @"EndpointManager_RequestedDiscoveryModesKey");
  v10 = 0;
  v11 = *MEMORY[0x1E695E480];
  do
  {
    if (((1 << v10) & a2) != 0 && ((1 << v10) & UInt64) != 0)
    {
      Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"Requestor_DiscoveryMode", a3);
      if (a4)
      {
        CFDictionarySetValue(Mutable, @"Requestor_DiscovererWeakRef", a4);
      }

      CFArraySetValueAtIndex(Value, v10, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    ++v10;
  }

  while (v10 != 7);
}

id FigRouteDiscovererCopyAvailableRouteDescriptors(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled() && (v2 = *MEMORY[0x1E695E4D0], !FigCFEqual()))
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(a2);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          FigCFDictionaryGetBooleanIfPresent();
          [v5 addObject:v10];
        }

        v7 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = *MEMORY[0x1E69E9840];
    return v5;
  }

  else
  {
    v3 = *MEMORY[0x1E69E9840];

    return a2;
  }
}

uint64_t FigRouteDiscoveryManagerRemoveCachedDiscoverers()
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  v0 = 0;
  if (qword_1EB75D478)
  {
    v1 = &qword_1EB75D588;
  }

  else
  {
    v1 = 280;
  }

  while (1)
  {
    Count = *v1;
    if (*v1)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v0 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*v1, v0);
    v4 = discoveryManager_copyDiscovererFromWeakRef(ValueAtIndex);
    if (FigCFEqual())
    {
      CFArrayRemoveValueAtIndex(*v1, v0);
      if (v4)
      {
        CFRelease(v4);
      }

      break;
    }

    if (v4)
    {
      CFRelease(v4);
    }

    ++v0;
  }

  v5 = *v1;

  return discoveryManager_removeFreedWeakRefs(v5);
}

uint64_t discoveryManager_removeFreedWeakRefs(const __CFArray *a1)
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  if (qword_1EB75D478)
  {
    v2 = &qword_1EB75D570;
  }

  else
  {
    v2 = 256;
  }

  v3 = *v2;
  FigSimpleMutexLock();
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      v8 = discoveryManager_copyDiscovererFromWeakRef(ValueAtIndex);
      if (v8)
      {
        ++v6;
        CFRelease(v8);
      }

      else
      {
        CFArrayRemoveValueAtIndex(a1, v6);
        --v5;
      }
    }

    while (v6 < v5);
  }

  v9 = *v2;

  return FigSimpleMutexUnlock();
}

void remoteXPCRouteDiscoverer_DisposeCaches(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __remoteXPCRouteDiscoverer_DisposeCaches_block_invoke;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = a1;
  MXDispatchSync("remoteXPCRouteDiscoverer_DisposeCaches", "FigRouteDiscovererRemoteXPC.m", 80, 0, 0, v1, v2);
}

void DisposeDiscovererServerState(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    FigEndpointRPCCacheDispose();

    free(a1);
  }
}

uint64_t FigRouteDiscoveryManagerUpdateDiscoveryMode()
{
  if (discoverManager_getSharedManager_onceToken != -1)
  {
    FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation_cold_1();
  }

  v0 = 0;
  if (qword_1EB75D478)
  {
    v1 = &discoverManager_getSharedManager_discoveryState;
  }

  else
  {
    v1 = 0;
  }

  v2 = &unk_1EB75D488;
  if (!qword_1EB75D478)
  {
    v2 = 24;
  }

  v21 = *MEMORY[0x1E695E4C0];
  v3 = *MEMORY[0x1E695E4D0];
  if (qword_1EB75D478)
  {
    v4 = &qword_1EB75D478;
  }

  else
  {
    v4 = 8;
  }

  v20 = v4;
  v5 = (v2 + 16);
  do
  {
    if (v0 <= 8 && ((1 << v0) & 0x148) != 0)
    {
      goto LABEL_53;
    }

    v6 = *(v5 - 2);
    v22 = discoveryManager_mapDiscovererTypeToEndpointFeatures(v0);
    v26[0] = 0;
    v7 = discoveryManager_copyHighestDiscoveryModeForDiscovererType(v1, v0, v26);
    cf = 0;
    v8 = discoveryManager_copyHighestDiscoveryModeForDiscovererType(v1, v0, &cf);
    v9 = discoveryManager_copyHighestDiscoveryModeForDiscovererType(v1, v0, 0);
    v10 = discoveryManager_copyHighestDiscoveryModeForDiscovererType(v1, v0, 0);
    DiscoveryModeAsInt = discovererManager_getDiscoveryModeAsInt();
    if (DiscoveryModeAsInt < discovererManager_getDiscoveryModeAsInt())
    {
      if (!v9)
      {
        v12 = 0;
        goto LABEL_23;
      }

      v12 = CFRetain(v9);
LABEL_22:
      CFRelease(v9);
      goto LABEL_23;
    }

    if (!v10)
    {
      v12 = 0;
      if (!v9)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v12 = CFRetain(v10);
    if (v9)
    {
      goto LABEL_22;
    }

LABEL_23:
    if (v10)
    {
      CFRelease(v10);
    }

    if (discoveryManager_doesSwitchRequireDelay(*(v5 - 1)))
    {
      if (!discoveryManager_doesSwitchRequireDelay(v12))
      {
        v16 = mach_absolute_time();
        if (!*v5)
        {
          *v5 = FigNanosecondsToHostTime() + v16;
          v18 = dispatch_time(0, 5000000000);
          dispatch_after(v18, *v20, &__block_literal_global_39);
          goto LABEL_56;
        }

        if (v16 <= *v5)
        {
          goto LABEL_56;
        }

LABEL_35:
        *v5 = 0;
        goto LABEL_36;
      }

      v13 = FigCFEqual();
      v14 = *v5;
      if (v13)
      {
        if (v14)
        {
          v15 = 0;
          *v5 = 0;
          if (!v12)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

LABEL_56:
        v15 = 0;
        if (!v12)
        {
          goto LABEL_38;
        }

LABEL_37:
        CFRelease(v12);
        goto LABEL_38;
      }

      if (v14)
      {
        goto LABEL_35;
      }
    }

LABEL_36:
    v15 = 1;
    if (v12)
    {
      goto LABEL_37;
    }

LABEL_38:
    if (v15)
    {
      v17 = *(v5 - 1);
      *(v5 - 1) = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __discoveryManager_updateDiscoveryModeForType_block_invoke;
      v23[3] = &__block_descriptor_84_e5_v8__0l;
      v23[4] = v1;
      v23[5] = v22;
      v23[6] = v7;
      v23[7] = v26[0];
      v24 = v0;
      v23[8] = v8;
      v23[9] = cf;
      FigRouteDiscoveryManagerRunBlockWhileEndpointManagerInfoLockIsLocked(v23);
    }

    if (v26[0])
    {
      CFRelease(v26[0]);
      v26[0] = 0;
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v8)
    {
      CFRelease(v8);
    }

    discoveryManager_removeFreedWeakRefs(v6);
LABEL_53:
    ++v0;
    v5 += 3;
  }

  while (v0 != 9);
  return 0;
}

uint64_t discovererManager_getDiscoveryModeAsInt()
{
  if (FigCFEqual())
  {
    return 0;
  }

  v0 = *MEMORY[0x1E6961878];
  if (FigCFEqual())
  {
    return 0;
  }

  if (FigCFEqual())
  {
    return 10;
  }

  v2 = *MEMORY[0x1E6961880];
  if (FigCFEqual())
  {
    return 10;
  }

  if (FigCFEqual())
  {
    return 20;
  }

  v3 = *MEMORY[0x1E6961868];
  if (FigCFEqual())
  {
    return 20;
  }

  if (FigCFEqual())
  {
    return 30;
  }

  v4 = *MEMORY[0x1E6961870];
  result = FigCFEqual();
  if (result)
  {
    return 30;
  }

  return result;
}

CFTypeRef discoveryManager_copyHighestRequestedDiscoveryModeForEndpointManager(const __CFDictionary *a1, void *a2)
{
  v3 = CFRetain(*MEMORY[0x1E6961878]);
  CFDictionaryGetValue(a1, @"EndpointManager_SupportedEndpointFeaturesKey");
  UInt64 = FigCFNumberGetUInt64();
  Value = CFDictionaryGetValue(a1, @"EndpointManager_RequestedDiscoveryModesKey");
  cf = 0;
  v6 = 0;
  v7 = *MEMORY[0x1E6961880];
  v17 = *MEMORY[0x1E6961868];
  v16 = *MEMORY[0x1E6961870];
  do
  {
    if ((UInt64 >> v6))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, v6);
      v9 = CFDictionaryGetValue(ValueAtIndex, @"Requestor_DiscoveryMode");
      DiscoveryModeAsInt = discovererManager_getDiscoveryModeAsInt();
      if (DiscoveryModeAsInt < discovererManager_getDiscoveryModeAsInt())
      {
        CFDictionaryGetValue(a1, @"EndpointManager_SupportedDiscoveryModesKey");
        v11 = FigCFNumberGetUInt64();
        if (FigCFEqual())
        {
          v12 = 4;
        }

        else if (FigCFEqual())
        {
          v12 = 2;
        }

        else
        {
          if (!FigCFEqual())
          {
            goto LABEL_16;
          }

          v12 = 1;
        }

        if ((v11 & v12) != 0)
        {
          if (v9)
          {
            CFRetain(v9);
          }

          if (v3)
          {
            CFRelease(v3);
          }

          cf = CFDictionaryGetValue(ValueAtIndex, @"Requestor_DiscovererWeakRef");
          v3 = v9;
        }
      }
    }

LABEL_16:
    ++v6;
  }

  while (v6 != 7);
  if (a2)
  {
    v13 = cf;
    if (cf)
    {
      v13 = CFRetain(cf);
    }

    *a2 = v13;
  }

  return v3;
}

uint64_t MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled()
{
  if (MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled_isWHAInstantDiscoveryCachingEnabled;
}

void FigRouteDiscoveryManagerPowerLogDiscoveryLevelChange(CFTypeRef cf, CFTypeRef a2)
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
  v5[2] = __FigRouteDiscoveryManagerPowerLogDiscoveryLevelChange_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = cf;
  v5[5] = a2;
  MXDispatchAsync("FigRouteDiscoveryManagerPowerLogDiscoveryLevelChange", "FigRouteDiscoveryManager.m", 2641, 0, 0, global_queue, v5);
}

void __FigRouteDiscoveryManagerPowerLogDiscoveryLevelChange_block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = *(a1 + 32);
  valuePtr = discovererManager_getDiscoveryModeAsInt();
  v5 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"Level", v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    if (CFDictionaryContainsKey(v6, @"ObjectHash"))
    {
      Value = CFDictionaryGetValue(*(a1 + 40), @"ObjectHash");
      CFDictionarySetValue(Mutable, @"ObjectHash", Value);
    }

    if (CFDictionaryContainsKey(*(a1 + 40), @"Client"))
    {
      v8 = CFDictionaryGetValue(*(a1 + 40), @"Client");
      CFDictionarySetValue(Mutable, @"Client", v8);
    }

    if (CFDictionaryContainsKey(*(a1 + 40), @"OnBehalfOf"))
    {
      v9 = CFDictionaryGetValue(*(a1 + 40), @"OnBehalfOf");
      CFDictionarySetValue(Mutable, @"OnBehalfOf", v9);
    }
  }

  PLLogRegisteredEvent();
  if (v5)
  {
    CFRelease(v5);
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

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void MXEndpointDescriptorAvailableEndpointsDidChangeHandler(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF00]);
    [a2 _getCacheMutex];
    FigSimpleMutexLock();
    cf = 0;
    CMBaseObject = FigEndpointManagerGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v13 = *(*(VTable + 8) + 48);
    if (v13)
    {
      v14 = *(VTable + 8) + 48;
      v13(CMBaseObject, *MEMORY[0x1E69618B8], *MEMORY[0x1E695E480], &cf);
    }

    v15 = *MEMORY[0x1E69618F8];
    if (!FigCFEqual())
    {
      [a2 _availableEndpointsDidChangeForEndpointManager:a4 atDate:v10];
    }

    [a2 _getCacheMutex];
    FigSimpleMutexUnlock();
    FigRouteDiscoveryManagerNotificationHandler(a1, a2, a3, a4, a5);

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t FigRouteDiscovererRemoteXPC_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v7 = 0;
  v8 = 0;
  if (a4)
  {
    if (CFEqual(@"availableRoutes", a2))
    {
      result = remoteXPCRouteDiscoverer_CopyAvailableEndpoints(a1, &v7);
    }

    else
    {
      result = remoteXPCRouteDiscoverer_GetObjectID(a1, &v8);
      if (!result)
      {
        result = FigXPCSendStdCopyPropertyMessage();
      }
    }

    *a4 = v7;
  }

  else
  {
    FigRouteDiscovererRemoteXPC_CopyProperty_cold_1(&v9);
    return v9;
  }

  return result;
}

__CFString *CMSMUtility_GetDefaultBuiltInRouteSettingForMode(int a1)
{
  result = 0;
  if (a1 > 1768781425)
  {
    if (a1 > 1936749156)
    {
      if (a1 == 1936749157 || a1 == 1986884455)
      {
        return @"Speaker";
      }

      v3 = 1987208039;
    }

    else
    {
      if (a1 == 1768781426 || a1 == 1835229549)
      {
        return @"Speaker";
      }

      v3 = 1919776355;
    }

LABEL_17:
    if (a1 != v3)
    {
      return result;
    }

    return @"Receiver";
  }

  if (a1 <= 1768778863)
  {
    if (a1 != 1735222132 && a1 != 1751212899)
    {
      v3 = 1768057203;
      goto LABEL_17;
    }

    return @"Speaker";
  }

  if (a1 == 1768778864)
  {
    return @"Speaker";
  }

  if (a1 != 1768779619)
  {
    if (a1 != 1768781411)
    {
      return result;
    }

    return @"Speaker";
  }

  return @"Receiver";
}

uint64_t CMSUtility_HasPhoneCallBehaviour(void *a1)
{
  v2 = [a1 audioCategory];
  [a1 audioMode];
  if (CMSMUtility_DoCategoryAndModeHavePhoneCallBehaviour(v2))
  {
    return 1;
  }

  result = CMSMUtility_IsPlayAndRecordCategory([a1 audioCategory]);
  if (result)
  {
    return [a1 clientPriority] > 9;
  }

  return result;
}

uint64_t CMSMUtility_DoCategoryAndModeHavePhoneCallBehaviour(uint64_t a1)
{
  if (FigCFEqual() || FigCFEqual())
  {
    goto LABEL_3;
  }

  if (CMSMUtility_IsPlayAndRecordCategory(a1))
  {
    if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
LABEL_3:
      LOBYTE(v2) = 1;
      return v2 & 1;
    }

    v4 = FigCFEqual() != 0;
  }

  else
  {
    v4 = 0;
  }

  v2 = v4 | ((dword_1EB75E11C & 2) >> 1);
  if ((dword_1EB75E11C & 2) != 0 && !v4)
  {
    LOBYTE(v2) = FigCFEqual() != 0;
  }

  return v2 & 1;
}

uint64_t MX_FeatureFlags_IsSessionBasedMutingEnabled()
{
  if (MX_FeatureFlags_IsSessionBasedMutingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsSessionBasedMutingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsSessionBasedMutingEnabled_isSessionBasedMutingEnabled;
}

void __cmsSetAudioCategory_block_invoke(uint64_t a1)
{
  CMSUtility_UpdateRoutingContextForSession(*(a1 + 32));
  v2 = *(a1 + 32);
}

uint64_t CMSMDeviceState_IsHomePodHub()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CMSMDeviceState_IsHomePodHub_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v2 = 0;
  if (CMSMDeviceState_IsHomePodHub_sOnce != -1)
  {
    dispatch_once(&CMSMDeviceState_IsHomePodHub_sOnce, block);
  }

  return 0;
}

uint64_t CMSNP_IsCurrentNowPlayingSessionAirPlayingLongFormMedia()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
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
    v5 = *MEMORY[0x1E69626A8];
    v6 = *MEMORY[0x1E69626B0];
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        if ([v8 isActive] && (objc_msgSend(v8, "isPlaying") & 1) != 0)
        {
          v9 = 1;
        }

        else if ([v8 isActive] && objc_msgSend(v8, "isActiveOverAirPlayVideo"))
        {
          v9 = [v8 isAudioOnlyAirPlayVideoActive] ^ 1;
        }

        else
        {
          v9 = 0;
        }

        v10 = [objc_msgSend(v8 "clientPID")] != v0 || v9 == 0;
        if (!v10 && CMSUtility_IsSessionAllowedToInterruptCurrentlyAirPlayingNowPlayingSession(v8))
        {
          cf = 0;
          FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex([v8 routingContextUUID], 0, &cf);
          if (FigRoutingManagerIsEndpointOfType(cf) || FigRoutingManagerIsEndpointOfType(cf))
          {
            if (cf)
            {
              CFRelease(cf);
            }

            v11 = 1;
            goto LABEL_28;
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_28:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void *CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(void *result)
{
  if (result)
  {
    v1 = result;
    result = [result isEligibleForNowPlayingAppConsideration];
    if (result)
    {
      result = [v1 allowedToBeNowPlayingApp];
      if (result)
      {
        return +[MXSystemController getCanBeNowPlayingAppForPID:](MXSystemController, "getCanBeNowPlayingAppForPID:", [objc_msgSend(v1 "clientPID")]);
      }
    }
  }

  return result;
}

uint64_t CMSUtility_UpdateRoutingContextForSession(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (CMSMDeviceState_IsHomePodHub())
  {
    goto LABEL_3;
  }

  if ([a1 routeSharingPolicy])
  {
    goto LABEL_3;
  }

  if ([a1 routingContextSetByClient])
  {
    [a1 routingContextUUID];
    if (FigCFEqual())
    {
      goto LABEL_3;
    }
  }

  [a1 routingContextUUID];
  if (FigCFEqual())
  {
    if ([a1 isLongFormVideo])
    {
      goto LABEL_3;
    }
  }

  if (CMSNP_IsCurrentNowPlayingSessionAirPlayingLongFormMedia() && !CMSUtility_IsSessionAllowedToInterruptCurrentlyAirPlayingNowPlayingSession(a1))
  {
    [a1 routingContextUUID];
    result = FigCFEqual();
    if (!result)
    {
      goto LABEL_4;
    }

    if (CMSMDeviceState_ItsAHomePod())
    {
      goto LABEL_3;
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_24:
    [a1 setRoutingContextUUID:{qword_1EB75E190, v7, v8}];
    [a1 updateRouteSharingPolicy:0 setByClient:0];
LABEL_25:
    cmsutility_handleRoutingContextChanged(a1);
    result = 1;
    goto LABEL_4;
  }

  if (!CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(a1))
  {
    [a1 routingContextUUID];
    if (FigCFEqual())
    {
      goto LABEL_3;
    }

    goto LABEL_24;
  }

  if (FigGetCFPreferenceNumberWithDefault())
  {
    if (dword_1EB75DE40)
    {
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_3;
  }

  [a1 routingContextUUID];
  if (!FigCFEqual())
  {
    [a1 setRoutingContextUUID:qword_1EB75E1A8];
    [a1 updateRouteSharingPolicy:1 setByClient:0];
    if (dword_1EB75DE40)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_25;
  }

LABEL_3:
  result = 0;
LABEL_4:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void MX_RunningBoardServices_StartMonitoringForPID(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1 >= 1)
  {
    v2 = [MEMORY[0x1E69C75E0] identifierWithPid:a1];
    if (v2 && (v3 = [MEMORY[0x1E69C7610] predicateMatchingIdentifier:v2]) != 0)
    {
      v4 = v3;
      if (dword_1EB75DE60)
      {
        LODWORD(v25) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (mx_runningBoardServices_initializeMonitoring_onceToken != -1)
      {
        MX_RunningBoardServices_StartMonitoringForPID_cold_1();
      }

      [gProcessPredicatesSetLock lock];
      v7 = [gProcessPredicatesSet copy];
      [gProcessPredicatesSet addObject:v4];
      v8 = [gProcessPredicatesSet copy];
      [gProcessPredicatesSetLock unlock];
      if ([v7 isEqualToSet:v8])
      {
      }

      else
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __MX_RunningBoardServices_StartMonitoringForPID_block_invoke;
        v22[3] = &unk_1E7AEC550;
        v22[4] = v8;
        [gProcessMonitor updateConfiguration:v22];
        v9 = [MEMORY[0x1E696AD98] numberWithInt:a1];
        if ([v9 unsignedIntValue])
        {
          [gApplicationStateCacheLock lock];
          if (![gApplicationStateCache objectForKey:v9])
          {
            v25 = 0;
            v10 = [MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E69C75E0] error:{"identifierWithPid:", objc_msgSend(v9, "unsignedIntValue")), &v25}];
            if (!v10 || v25)
            {
              *type = 0;
              v23 = OS_LOG_TYPE_DEFAULT;
              v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v15 = *type;
              if (os_log_type_enabled(v14, v23))
              {
                v16 = v15;
              }

              else
              {
                v16 = v15 & 0xFFFFFFFE;
              }

              if (v16)
              {
                v26 = 136315394;
                v27 = "mx_runningBoardServices_addPIDToApplicationStateCache";
                v28 = 2114;
                v29 = v9;
                LODWORD(v21) = 22;
                v19 = &v26;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            else
            {
              [gApplicationStateCache setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", mx_runningBoardServices_getMXApplicationStateForProcessState(objc_msgSend(v10, "currentState"))), v9}];
            }
          }

          [gApplicationStateCacheLock unlock];
        }

        else
        {
          LODWORD(v25) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v12 = v25;
          if (os_log_type_enabled(v11, type[0]))
          {
            v13 = v12;
          }

          else
          {
            v13 = v12 & 0xFFFFFFFE;
          }

          if (v13)
          {
            v26 = 136315394;
            v27 = "mx_runningBoardServices_addPIDToApplicationStateCache";
            v28 = 2114;
            v29 = v9;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    else
    {
      LODWORD(v25) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled()
{
  if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled_cold_1();
  }

  return MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled_isInputAudioCoexistenceSupportEnabled;
}

uint64_t mx_runningBoardServices_getMXApplicationStateForProcessState(void *a1)
{
  v2 = [a1 taskState];
  result = 0;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return 2;
    }

    else if (v2 == 4)
    {
      if ([objc_msgSend(a1 "endowmentNamespaces")])
      {
        return 8;
      }

      else
      {
        return 4;
      }
    }
  }

  else if (v2 == 1)
  {
    return 1;
  }

  else if (v2 == 2)
  {
    if ([objc_msgSend(a1 "endowmentNamespaces")])
    {
      return 8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MX_RunningBoardServices_CopyBundleExtensionPointID(void *a1)
{
  v1 = [objc_msgSend(mx_runningBoardServices_getProcessHandleForPID(objc_msgSend(objc_msgSend(a1 "clientPID")];

  return [v1 copy];
}

uint64_t cmsSetClientPID(void *a1, CFTypeRef cf)
{
  valuePtr = 0;
  if (!cf)
  {
    return 4294954316;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFNumberGetTypeID())
  {
    return 4294954315;
  }

  CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
  v5 = valuePtr;
  if (valuePtr < 1)
  {
    return 4294954315;
  }

  if (v5 == [objc_msgSend(a1 "clientPID")])
  {
    return 0;
  }

  [a1 setClientPID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", valuePtr)}];
  [a1 updateCameraExtensionFlagsIfNeeded];
  if ([a1 idleSleepPreventorAllocated])
  {
    PowerLogDataForSession = CMSMPowerLogCreatePowerLogDataForSession(a1);
    CMSMPowerLogPostPowerLogData(@"CoreMedia_AudioPlayback", PowerLogDataForSession);
    if (PowerLogDataForSession)
    {
      CFRelease(PowerLogDataForSession);
    }
  }

  MX_RunningBoardServices_StartMonitoringForPID(valuePtr);
  [+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager refreshAssertions];
  [a1 setHasFetchedBackgroundPrivileges:0];
  [a1 updateApplicationStateAndPIDToInheritAppStateFrom];
  cmsUpdatePiPIsPossible(a1);
  v9 = [objc_msgSend(a1 "clientPID")];
  if (v9 == getpid() || (CMSessionMgrCopyDisplayIdentifierToSession(a1), ![a1 isActive]))
  {
    v6 = 0;
  }

  else
  {
    v6 = [a1 sendSessionConfigurationInfoToVA];
  }

  if ([a1 hasEntitlementToShowMicrophoneIndicatorWhileNotRecording] && objc_msgSend(a1, "wantsToShowMicrophoneIndicatorWhenNotRecording"))
  {
    MX_SystemStatus_PublishRecordingClientsInfo();
    [a1 setHasEntitlementToShowMicrophoneIndicatorWhileNotRecording:0];
    [a1 setWantsToShowMicrophoneIndicatorWhenNotRecording:0];
  }

  return v6;
}

uint64_t MX_RunningBoardServices_CopyBundleInfoValueForKeyAndPID(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_8:
    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }

  ProcessHandleForPID = mx_runningBoardServices_getProcessHandleForPID(a2);
  if (!ProcessHandleForPID)
  {
    goto LABEL_8;
  }

  v4 = [ProcessHandleForPID bundle];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [v4 bundleInfoValueForKey:a1];
  v6 = *MEMORY[0x1E69E9840];

  return [v5 copy];
}

uint64_t MXSessionSetProperty(void *a1, uint64_t a2, uint64_t a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (a1 && a2)
  {
    v6 = objc_autoreleasePoolPush();
    if ([a1 isMemberOfClass:objc_opt_class()])
    {
      v7 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __MXSessionSetProperty_block_invoke;
      v12[3] = &unk_1E7AE7A48;
      v12[4] = &v13;
      v12[5] = a1;
      v12[6] = a2;
      v12[7] = a3;
      MXDispatchAsyncAndWait("MXSessionSetProperty", "MXSession_CInterfaceCommon.m", 393, 0, 0, v7, v12);
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      if (![a1 isMemberOfClass:objc_opt_class()] || MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled())
      {
        v9 = [a1 setPropertyForKey:a2 value:a3];
        *(v14 + 6) = v9;
      }

      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"MXSessionSetProperty" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, a2];
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

void sub_1B17C8C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B17D9D98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x310]);
  _Unwind_Resume(a1);
}

void CMSessionMgrSystemSoundActivateForPID(int a1, char a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v7 = MXGetSerialQueue();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CMSessionMgrSystemSoundActivateForPID_block_invoke;
  v8[3] = &unk_1E7AECB50;
  v11 = a2;
  v8[4] = v12;
  v9 = a1;
  v10 = a3;
  MXDispatchAsyncAndWait("CMSessionMgrSystemSoundActivateForPID", "CMSessionManager_SystemSounds.m", 4657, 0, 0, v7, v8);
  _Block_object_dispose(v12, 8);
  objc_autoreleasePoolPop(v6);
}

void sub_1B17D9EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t cmsmGetUpdatedSystemSoundPlayFlags(void *key, unsigned int a2, int a3, int a4, int a5, float *a6, int a7, unsigned int *a8, unsigned __int8 a9)
{
  v10 = key;
  v220 = *MEMORY[0x1E69E9840];
  v11 = key;
  Value = CFDictionaryGetValue(gSystemSoundIDToCategory, key);
  if (Value)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10 > 0x1000;
  }

  if (v13)
  {
    Value = @"ThirdPartySystemSound";
  }

  if (Value)
  {
    MappedBehaviorCategory = CMSystemsoundMgr_GetMappedBehaviorCategory(Value);
    v15 = MappedBehaviorCategory;
    if (MappedBehaviorCategory)
    {
      v16 = CFStringHasSuffix(MappedBehaviorCategory, @"AlwaysHeard") != 0;
    }

    else
    {
      v16 = 0;
    }

    CurrentVADForSystemSoundAudioCategory = cmsmGetCurrentVADForSystemSoundAudioCategory(v15, a9);
  }

  else
  {
    v16 = 0;
    CurrentVADForSystemSoundAudioCategory = 0;
    v15 = 0;
  }

  v189 = 1;
  v190 = 1.0;
  if (FigCFEqual())
  {
    v18 = 0;
LABEL_14:
    v19 = CMSMDeviceState_VibrateOnRing(v18);
    v20 = CMSMDeviceState_VibrateOnSilent(1);
    goto LABEL_17;
  }

  if (!FigCFEqual())
  {
    v18 = 1;
    goto LABEL_14;
  }

  v20 = CMSMDeviceState_VibrateOnSilent(0);
  v19 = CMSMDeviceState_VibrateOnRing(1);
LABEL_17:
  v21 = FigCFEqual() == 0;
  v22 = CMSMDeviceState_RingerIsOn(v21);
  if (byte_1EB75E150 | HIBYTE(word_1EB75E0E0))
  {
    v23 = 1;
  }

  else
  {
    v23 = v22 == 0;
  }

  if (v23)
  {
    v24 = (2 * v20) | (4 * v19);
  }

  else
  {
    v24 = ((2 * v20) | (4 * v19)) + 1;
  }

  if (v15 && (v25 = CFDictionaryGetValue(gSystemSoundRingerSettings, v15)) != 0 || (v25 = CFDictionaryGetValue(gSystemSoundRingerSettings, @"Default")) != 0)
  {
    v26 = CFDataGetBytePtr(v25)[v24];
    v189 = v26;
  }

  else
  {
    v26 = 1;
  }

  active = cmsmCopyCurrentActiveRouteTypesForSystemSound();
  keya = v15;
  if (CMSMDeviceState_IsVibrationDisabled())
  {
    if ([gSystemSoundsDoNotObeyAccessibilityVibrationSetting containsObject:v15])
    {
      if (dword_1EB75DE40)
      {
        LODWORD(v191) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      if (dword_1EB75DE40)
      {
        LODWORD(v191) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v26 = v189;
      }

      v189 = v26 & 0xFFFFFFFD;
    }
  }

  if (!CMSystemSoundMgr_DeviceIsAllowedToVibrateIfConnectedToStark())
  {
    if (dword_1EB75DE40)
    {
      LODWORD(v191) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v189 &= ~2u;
  }

  if (CMSMUtility_IsCameraBeingUsed() && cmsmVibrationForSystemSoundCanBeAlteredBasedOnSystemState(v10))
  {
    if (dword_1EB75DE40)
    {
      LODWORD(v191) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v189 &= ~2u;
  }

  if (HIBYTE(word_1EB75E0E0))
  {
    if (dword_1EB75DE40)
    {
      LODWORD(v191) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v189 &= ~1u;
  }

  if (v10 - 1200 <= 0xB && CMSMUtility_IsPhoneCallActive())
  {
    v33 = v189;
    if ((v189 & 1) == 0)
    {
      if (dword_1EB75DE40)
      {
        LODWORD(v191) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v33 = v189;
      }

      v189 = v33 | 1;
    }
  }

  if (a3)
  {
    v35 = v189;
    if ((v189 & 1) == 0)
    {
      if (dword_1EB75DE40)
      {
        LODWORD(v191) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v35 = v189;
      }

      v189 = v35 | 1;
    }
  }

  if (active)
  {
    CFRelease(active);
  }

  if (a4 == 0 || v16)
  {
    v37 = v189;
    if ((v189 & 2) == 0)
    {
      goto LABEL_78;
    }
  }

  else
  {
    if (dword_1EB75DE40)
    {
      LODWORD(v191) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v37 = v189 & 0xFFFFFFFE;
    v189 = v37;
    if ((v37 & 2) == 0)
    {
      goto LABEL_78;
    }
  }

  if (a5)
  {
    if (dword_1EB75DE40)
    {
      LODWORD(v191) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v37 = v189;
    }

LABEL_77:
    v37 &= ~2u;
    v189 = v37;
    goto LABEL_78;
  }

  IsOnenessEnabled = MX_FeatureFlags_IsOnenessEnabled();
  LOBYTE(v37) = v189;
  if (!IsOnenessEnabled || a9 || (v189 & 1) == 0)
  {
LABEL_78:
    if ((v37 & 1) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  if ([+[MXSessionManager isVADIDRoutedToOutputPortType:"isVADIDRoutedToOutputPortType:portType:"]
  {
    if (dword_1EB75DE40)
    {
      LODWORD(v191) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v37 = v189;
    goto LABEL_77;
  }

  if (v189)
  {
LABEL_79:
    cmsmUpdateDuckVolume(v15, &v190, &v189, a9);
  }

LABEL_80:
  v172 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v173 = *MEMORY[0x1E69626C0];
  theArraya = Mutable;
  if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1))
  {
    v43 = cmsmCopySystemSoundAudioBehaviorDictionaryForAudioCategory(v15, a9);
    CurrentSystemSoundVADForAudioBehaviour = cmsGetCurrentSystemSoundVADForAudioBehaviour();
    if (v43)
    {
      CFRelease(v43);
    }

    if (CurrentSystemSoundVADForAudioBehaviour == [+[MXSessionManager systemSoundRemoteVADID:v170]&& qword_1EB75E170 && !CMSMUtility_IsPhoneCallActive() sharedInstance]
    {
      if (CMSMUtility_SomeClientIsPlaying() || !CMSMUtility_DoesiOSHaveCarPlayMainAudio())
      {
        CFArrayAppendValue(Mutable, qword_1EB75E170);
      }

      else if (dword_1EB75DE40)
      {
        LODWORD(v191) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v91 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v92 = v191;
        if (os_log_type_enabled(v91, type[0]))
        {
          v93 = v92;
        }

        else
        {
          v93 = v92 & 0xFFFFFFFE;
        }

        if (v93)
        {
          LODWORD(v202[0]) = 136315138;
          *(v202 + 4) = "cmsmSystemSoundCopySessionsToDuck";
          LODWORD(v171) = 12;
          v170 = v202;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  else
  {
    v45 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    memset(v202, 0, sizeof(v202));
    v203 = 0u;
    v204 = 0u;
    v46 = [v45 countByEnumeratingWithState:v202 objects:&cf count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v202[2];
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v202[2] != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(v202[1] + 8 * i);
          if ([v50 isActive] && objc_msgSend(v50, "isPlaying") && !-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", objc_msgSend(v50, "audioCategory")))
          {
            CFArrayAppendValue(Mutable, v50);
          }
        }

        v47 = [v45 countByEnumeratingWithState:v202 objects:&cf count:16];
      }

      while (v47);
    }

    v15 = keya;
  }

  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
  }

  else
  {
    Count = 0;
  }

  v52 = v189;
  if ((v189 & 0x80) == 0 || !a7 && Count >= 1 && v190 != 1.0)
  {
    if (v16)
    {
      goto LABEL_108;
    }

LABEL_111:
    v184 = 1;
    if ((v52 & 0x80) == 0)
    {
      goto LABEL_134;
    }

    v53 = 0.5;
    if (v190 == 1.0)
    {
      goto LABEL_134;
    }

    goto LABEL_113;
  }

  v52 = v189 & 0xFFFFFF7F;
  v189 &= ~0x80u;
  if (!v16)
  {
    goto LABEL_111;
  }

LABEL_108:
  v189 = v52 & 0xFFFFFF77 | 8;
  v53 = 0.0;
  if (v190 == 1.0)
  {
    v184 = 0;
    goto LABEL_134;
  }

LABEL_113:
  v184 = !v16;
  cmsmGetSystemSoundMaxVolume(v15);
  if (v54 <= 0.0)
  {
    if (dword_1EB75DE40)
    {
      LODWORD(v191) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v66 = v191;
      if (os_log_type_enabled(v65, type[0]))
      {
        v67 = v66;
      }

      else
      {
        v67 = v66 & 0xFFFFFFFE;
      }

      if (v67)
      {
        LODWORD(v202[0]) = 136315138;
        *(v202 + 4) = "cmsmGetUpdatedSystemSoundPlayFlags";
        LODWORD(v171) = 12;
        v170 = v202;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v189 &= ~1u;
  }

  else if (Count >= 1)
  {
    for (j = 0; j != Count; ++j)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, j);
      ShouldSkipDuckingForSystemSounds = CMSUtility_ShouldSkipDuckingForSystemSounds(ValueAtIndex, CurrentVADForSystemSoundAudioCategory);
      if (v16 && (CurrentAudioDestination = CMSUtility_GetCurrentAudioDestination(ValueAtIndex), VADNameForVADID = CMSMUtility_GetVADNameForVADID(CurrentVADForSystemSoundAudioCategory), CMSMUtility_AreVADsRoutedToTheSamePhysicalDevice(CurrentAudioDestination, VADNameForVADID)) || !ShouldSkipDuckingForSystemSounds)
      {
        v60 = [ValueAtIndex isDucked];
        v61 = [MXDuckingSource alloc];
        *&v62 = v190;
        *&v63 = v53;
        v64 = [(MXDuckingSource *)v61 initWithType:0 ID:v11 duckVolume:v62 duckFadeDuration:v63];
        [+[MXSessionManager sharedInstance](MXSessionManager duckVolume:"duckVolume:duckerSession:duckingSource:" duckerSession:ValueAtIndex duckingSource:0, v64];
        if (MX_FeatureFlags_IsAsyncDuckingEnabled() && (v60 & 1) == 0 && [ValueAtIndex isPlayingOutput])
        {
          v189 |= 0x100u;
        }
      }
    }

    v15 = keya;
  }

LABEL_134:
  if ((v189 & 1) == 0)
  {
    LOBYTE(v68) = 0;
    v69 = a6;
    goto LABEL_254;
  }

  v70 = cmsmGetCurrentVADForSystemSoundAudioCategory(v15, a9);
  v183 = CMSMUtility_GetVADNameForVADID(v70);
  v181 = FigEndpointCentralEntityHoldsResource(qword_1EB75E178, 0x1F288E5F0, 0x1F2899C50);
  IsVoiceOverOn = CMSMDeviceState_IsVoiceOverOn();
  v72 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v73 = [v72 countByEnumeratingWithState:&v191 objects:&cf count:16];
  if (v73)
  {
    v74 = v73;
    HIDWORD(v171) = IsVoiceOverOn;
    v177 = 0;
    v75 = 0;
    v182 = 0;
    v76 = 0;
    v77 = 0;
    v186 = 0;
    v180 = 0;
    v78 = *v192;
    v79 = 1;
    while (1)
    {
      v80 = 0;
      do
      {
        if (*v192 != v78)
        {
          objc_enumerationMutation(v72);
        }

        v81 = *(*(&v191 + 1) + 8 * v80);
        if ([v81 isActive] && !-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", objc_msgSend(v81, "audioCategory")) && (!CMSMVAUtility_IsAdditiveRoutingEnabled() || (objc_msgSend(v81, "isRoutedToOnDemandVAD") & 1) == 0))
        {
          if ([v81 prefersToTakeHWControlFlagsFromAnotherSession])
          {
            CMSUtility_GetCurrentAudioDestination(v81);
            v75 |= FigCFEqual();
            [v81 currentlyControllingFlags];
            if (v79)
            {
              if (([v81 isPlaying] & (v75 != 0)) != 0)
              {
                v79 = 0;
              }
            }

            else
            {
              v79 = 0;
            }

            if (([v81 isPlaying] & 1) != 0 || objc_msgSend(v81, "isCarSession") && v181)
            {
              if (v186)
              {
                v82 = 1;
              }

              else
              {
                v82 = v184;
              }

              if ((v82 & 1) == 0)
              {
                v186 = ([v81 currentlyControllingFlags] >> 1) & 1;
              }

              v182 = 1;
              goto LABEL_160;
            }

            if (v180)
            {
              v83 = 1;
            }

            else
            {
              v83 = v184;
            }

            if ((v83 & 1) == 0 && ([v81 currentlyControllingFlags] & 2) != 0)
            {
              v76 = 1;
              v180 = v81;
            }

            else
            {
              if (([v81 currentlyControllingFlags] & 2) != 0 && (objc_msgSend(v81, "applicationState") == 2 || objc_msgSend(v81, "applicationState") == 4))
              {
                v177 = 1;
              }

LABEL_160:
              v76 = 1;
            }
          }

          v77 |= [v81 hasPhoneCallBehavior];
        }

        ++v80;
      }

      while (v74 != v80);
      v84 = [v72 countByEnumeratingWithState:&v191 objects:&cf count:16];
      v74 = v84;
      if (!v84)
      {
        v85 = v77 == 0;
        v86 = v177 != 0;
        v87 = v75 == 0;
        IsVoiceOverOn = HIDWORD(v171);
        goto LABEL_177;
      }
    }
  }

  v86 = 0;
  v182 = 0;
  v76 = 0;
  v79 = 1;
  v87 = 1;
  v85 = 1;
LABEL_177:

  v69 = a6;
  if (!(FigCFEqual() | IsVoiceOverOn))
  {
    if (!v76)
    {
      goto LABEL_210;
    }

    if ((CMSMDeviceState_ItsAnAppleTV() || FigCFArrayContainsValue()) && CMSMUtility_SomeClientIsPlaying())
    {
      goto LABEL_193;
    }

    if (v182)
    {
      if (CMSMDeviceState_ItsAHomePod() && !CMSMUtility_IsAnyActiveSessionRoutedToDestination())
      {
        v90 = 2;
        goto LABEL_211;
      }

LABEL_197:
      v90 = 2 * (v79 != 0);
      goto LABEL_211;
    }

    [+[MXSessionManager sharedInstance](MXSessionManager currentAudioCategory];
    if (FigCFEqual() || ([+[MXSessionManager sharedInstance](MXSessionManager currentAudioCategory], FigCFEqual()) || ([+[MXSessionManager currentAudioCategory] sharedInstance])
    {
LABEL_210:
      v90 = 3;
      goto LABEL_211;
    }

    if (!CMSMUtility_ActiveVideoConferenceExists() && (v85 || !FigCFEqual() && !FigCFEqual()))
    {
      if (CMSMUtility_IsAnyVoicePromptSessionThatDoesNotControlHardwareActive())
      {
        v90 = v86;
      }

      else
      {
        v90 = v86 | 2;
      }

      goto LABEL_211;
    }

LABEL_193:
    v90 = 0;
    goto LABEL_211;
  }

  if (!IsVoiceOverOn)
  {
    goto LABEL_193;
  }

  if (FigCFEqual())
  {
    CMSMUtility_GetCurrentAudioDestinationForVoiceOverSession();
    if (!FigCFEqual())
    {
      goto LABEL_197;
    }
  }

  if (!CMSMVAUtility_IsAdditiveRoutingEnabled())
  {
    goto LABEL_193;
  }

  v88 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyActiveVoiceOverSessionPlayingToOnDemandVAD];
  if (v79)
  {
    v89 = v88 == 0;
  }

  else
  {
    v89 = 1;
  }

  if (v89)
  {
    v90 = 0;
  }

  else
  {
    v90 = 2;
  }

LABEL_211:
  if (vaemSystemSoundLocalVADExists())
  {
    IsConnected = vaemContinuityScreenOutputIsConnected();
    if (a6 && IsConnected)
    {
      goto LABEL_214;
    }

LABEL_218:
    v95 = v90 & 1;
    goto LABEL_219;
  }

  if (!a6)
  {
    goto LABEL_218;
  }

LABEL_214:
  if (CMSMVAUtility_IsBluetoothSharingSessionEnabled(0))
  {
    v95 = v90 & 1;
  }

  else
  {
    v95 = v90;
  }

LABEL_219:
  if (v184)
  {
    if (!v95)
    {
      LOBYTE(v68) = 0;
      v15 = keya;
      goto LABEL_254;
    }

    goto LABEL_225;
  }

  if (vaemSpeakerAlertVADExists() || vaemSystemSoundLocalVADExists())
  {
    v95 = 2;
LABEL_225:
    v96 = 1;
    goto LABEL_226;
  }

  v95 = 2;
  if (!FigCFArrayContainsValue())
  {
    if (FigCFArrayContainsValue())
    {
      v95 = 2;
    }

    else
    {
      v95 = 3;
    }
  }

  FigAtomicIncrement32();
  v96 = 0;
LABEL_226:
  if (FigCFEqual() && !MX_FeatureFlags_IsKeyboardCHAudioEnabled() && !vaemSystemSoundLocalVADExists())
  {
    FigSimpleMutexLock();
    v122 = gCMSS_7;
    v123 = 0;
    if ([+[MXSessionManager defaultVADID]&& v122 sharedInstance]
    {
      v123 = [objc_msgSend(v122 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)), "countForObject:", keya}] != 0;
    }

    FigSimpleMutexUnlock();
    if (v182)
    {
      v68 = v95;
      goto LABEL_303;
    }

    if (v76 == 0 || v87 || v123)
    {
      v15 = keya;
      if (!v123)
      {
LABEL_413:
        v68 = v95;
        goto LABEL_230;
      }
    }

    else
    {
      v15 = keya;
      cmsmAddPrewarmedAudioCategoriesThatMixIn(a2, keya);
    }

    if (dword_1EB75DE40)
    {
      v196 = 0;
      v195 = OS_LOG_TYPE_DEFAULT;
      v124 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v125 = v196;
      if (os_log_type_enabled(v124, v195))
      {
        v126 = v125;
      }

      else
      {
        v126 = v125 & 0xFFFFFFFE;
      }

      if (v126)
      {
        *type = 136315906;
        v198 = "cmsmGetAudioHardwareControlFlagsForSystemSound";
        v199 = 2114;
        *v200 = v183;
        *&v200[8] = 1024;
        v201[0] = 0;
        LOWORD(v201[1]) = 1024;
        *(&v201[1] + 2) = v76;
        LODWORD(v171) = 34;
        v170 = type;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v15 = keya;
    }

    if (v95)
    {
      if (dword_1EB75DE40)
      {
        v196 = 0;
        v195 = OS_LOG_TYPE_DEFAULT;
        v157 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v158 = v196;
        if (os_log_type_enabled(v157, v195))
        {
          v159 = v158;
        }

        else
        {
          v159 = v158 & 0xFFFFFFFE;
        }

        if (v159)
        {
          *type = 136315906;
          v198 = "cmsmGetAudioHardwareControlFlagsForSystemSound";
          v199 = 2114;
          *v200 = v183;
          *&v200[8] = 1024;
          v201[0] = 0;
          LOWORD(v201[1]) = 1024;
          *(&v201[1] + 2) = v76;
          LODWORD(v171) = 34;
          v170 = type;
          _os_log_send_and_compose_impl();
        }

        v123 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v68 = 0;
LABEL_303:
        v15 = keya;
        if (v76)
        {
          goto LABEL_230;
        }

LABEL_404:
        if (!v123)
        {
          goto LABEL_230;
        }

        VADIDForVADName = CMSMUtility_GetVADIDForVADName(v183);
        if (vaemGetDeviceVolume(VADIDForVADName, 0) != 0.0)
        {
          goto LABEL_230;
        }

        if (dword_1EB75DE40)
        {
          v196 = 0;
          v195 = OS_LOG_TYPE_DEFAULT;
          v167 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v168 = v196;
          if (os_log_type_enabled(v167, v195))
          {
            v169 = v168;
          }

          else
          {
            v169 = v168 & 0xFFFFFFFE;
          }

          if (v169)
          {
            *type = 136315906;
            v198 = "cmsmGetAudioHardwareControlFlagsForSystemSound";
            v199 = 1024;
            *v200 = v182;
            *&v200[4] = 1024;
            *&v200[6] = 0;
            LOWORD(v201[0]) = 2114;
            *(v201 + 2) = v183;
            LODWORD(v171) = 34;
            v170 = type;
            _os_log_send_and_compose_impl();
          }

          v15 = keya;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_413;
      }

      v68 = 0;
    }

    else
    {
      v68 = v95 & 0xFFFFFFFD;
    }

    v123 = 1;
    if (v76)
    {
      goto LABEL_230;
    }

    goto LABEL_404;
  }

  v68 = v95;
  v15 = keya;
LABEL_230:
  if ((v96 & 1) == 0)
  {
    v189 |= 8u;
  }

  if (v68)
  {
    if (!a7)
    {
      if (v68)
      {
        v97 = -3;
      }

      else
      {
        v97 = -1;
      }

      if ((v68 & 2) != 0)
      {
        v98 = v97 & 0xFFFFFFEF;
      }

      else
      {
        v98 = v97;
      }

      v99 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList:v170];
      memset(v202, 0, sizeof(v202));
      v203 = 0u;
      v204 = 0u;
      v100 = [v99 countByEnumeratingWithState:v202 objects:&cf count:16];
      if (v100)
      {
        v101 = v100;
        v102 = *v202[2];
        do
        {
          for (k = 0; k != v101; ++k)
          {
            if (*v202[2] != v102)
            {
              objc_enumerationMutation(v99);
            }

            v104 = *(v202[1] + 8 * k);
            if ([v104 isActive])
            {
              if (!-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [v104 audioCategory]))
              {
                v105 = [v104 currentlyControllingFlags];
                [v104 setCurrentlyControllingFlags:{objc_msgSend(v104, "currentlyControllingFlags") & v98}];
                if (v105 != [v104 currentlyControllingFlags])
                {
                  [v104 setSystemSoundHasModifiedCurrentlyControllingFlags:1];
                }
              }
            }
          }

          v101 = [v99 countByEnumeratingWithState:v202 objects:&cf count:16];
        }

        while (v101);
      }

      v15 = keya;
    }

    if (a8)
    {
      *a8 = v68;
    }
  }

LABEL_254:
  if (a7)
  {
    goto LABEL_255;
  }

  if (dword_1EB75DE40)
  {
    LODWORD(v191) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v108 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v109 = v191;
    if (os_log_type_enabled(v108, type[0]))
    {
      v110 = v109;
    }

    else
    {
      v110 = v109 & 0xFFFFFFFE;
    }

    if (v110)
    {
      v111 = "YES";
      *(v202 + 4) = "cmsmApplyAudioHardwareControlFlagsForSystemSound";
      WORD2(v202[1]) = 2114;
      if (v68)
      {
        v112 = "YES";
      }

      else
      {
        v112 = "NO";
      }

      LODWORD(v202[0]) = 136315906;
      *(&v202[1] + 6) = v15;
      if ((v68 & 2) == 0)
      {
        v111 = "NO";
      }

      HIWORD(v202[2]) = 2082;
      v202[3] = v112;
      LOWORD(v203) = 2082;
      *(&v203 + 2) = v111;
      LODWORD(v171) = 42;
      v170 = v202;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ((v189 & 1) == 0)
  {
    if (v69)
    {
      cmsmGetSystemSoundMaxVolume(@"TouchTone");
      *v69 = v113;
    }

    goto LABEL_255;
  }

  if (v68)
  {
    if (v15 && (v114 = CFDictionaryGetValue(gSystemSoundRoutingForCategories, v15)) != 0)
    {
      v115 = v114;
      VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v114);
      *type = FigVAEndpointManagerGetPropertyUInt32();
      *&v191 = *MEMORY[0x1E695E4C0];
      v117 = qword_1EB75E090;
      v118 = *(*(CMBaseObjectGetVTable() + 24) + 8);
      if (v118)
      {
        v118(v117, 0x1F289B990, v172, type, &v191);
      }

      if (FigCFEqual() && (FigCFArrayContainsValue() || FigCFArrayContainsValue()) && v191 == *MEMORY[0x1E695E4D0])
      {
        PVMSetEnabled(0);
      }

      else if (dword_1EB75E09C != VADCategoryFromFigCategoryName || CFStringHasSuffix(v15, @"AlwaysHeard"))
      {
        [+[MXSessionManager setCurrentAudioCategory:v170], "setCurrentAudioCategory:", v115];
        [+[MXSessionManager sharedInstance](MXSessionManager setCurrentAudioMode:"setCurrentAudioMode:", @"Default"];
        PVMSetEnabled(0);
        if (dword_1EB75DE40)
        {
          v196 = 0;
          v195 = OS_LOG_TYPE_DEFAULT;
          v119 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v120 = v196;
          if (os_log_type_enabled(v119, v195))
          {
            v121 = v120;
          }

          else
          {
            v121 = v120 & 0xFFFFFFFE;
          }

          if (v121)
          {
            LODWORD(v202[0]) = 136315138;
            *(v202 + 4) = "cmsmSetRouteConfigurationForSystemSound";
            LODWORD(v171) = 12;
            v170 = v202;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v15 = keya;
        }

        cf = (VADCategoryFromFigCategoryName | 0x696D646600000000);
        v206 = 0u;
        v207 = 0u;
        v208 = 0u;
        v209 = 0u;
        v210 = 0u;
        v211 = 0u;
        v212 = 0u;
        v213 = 0u;
        v214 = 0u;
        v215 = 0u;
        v216 = 0u;
        v217 = 0u;
        v218 = 0u;
        v219 = 0u;
        cmsmSetVADRouteConfiguration(&cf, 0, qword_1EB75E190);
      }
    }

    else
    {
      PVMSetEnabled(0);
      if (dword_1EB75E09C != 1667524212 && dword_1EB75E09C != 1668505974 && (!qword_1EB75E0B0 || FigCFArrayContainsValue() || FigCFArrayContainsValue() || FigCFArrayContainsValue()))
      {
        vaemResetVADCategoryToStandardAVAndDefaultMode();
      }
    }

    cmsmUpdateDuckVolume(v15, 0, &v189, a9);
    IsCategoryInputOnly = CMSMUtility_IsCategoryInputOnly(0);
    cmsSetDeviceSampleRateAndBufferSize(0, 0, IsCategoryInputOnly, 44100.0, 0.0);
  }

  else
  {
    cmsmUpdateDuckVolume(v15, 0, &v189, a9);
  }

  if (CMSMDeviceState_ItsAHomePod() && (v128 = cmsmGetCurrentVADForSystemSoundAudioCategory(v15, a9), v128 == [+[MXSessionManager systemSoundLocalVADID] sharedInstance])
  {
    if ((v68 & 2) == 0)
    {
      v129 = 0;
      goto LABEL_336;
    }
  }

  else
  {
    v130 = CMSMDeviceState_ItsAHomePod();
    v129 = 0;
    if ((v68 & 2) == 0 || v130)
    {
      goto LABEL_336;
    }
  }

  v131 = cmsmCopyCurrentActiveRouteTypesForSystemSound();
  if (FigCFArrayContainsValue())
  {
    v129 = 0;
    if (!v131)
    {
      goto LABEL_336;
    }

LABEL_335:
    CFRelease(v131);
    goto LABEL_336;
  }

  v142 = cmsmGetCurrentVADForSystemSoundAudioCategory(v15, a9);
  CurrentRouteTypeForSystemSoundAtIndex = CMSMUtility_GetCurrentRouteTypeForSystemSoundAtIndex(0);
  if (dword_1EB75DE40)
  {
    LODWORD(v191) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v144 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v145 = v191;
    if (os_log_type_enabled(v144, type[0]))
    {
      v146 = v145;
    }

    else
    {
      v146 = v145 & 0xFFFFFFFE;
    }

    if (v146)
    {
      v147 = CMSMUtility_GetVADNameForVADID(v142);
      LODWORD(v202[0]) = 136315906;
      *(v202 + 4) = "cmsmSetVolumeForSystemSound";
      WORD2(v202[1]) = 2114;
      *(&v202[1] + 6) = v147;
      HIWORD(v202[2]) = 2114;
      v202[3] = CurrentRouteTypeForSystemSoundAtIndex;
      LOWORD(v203) = 2114;
      *(&v203 + 2) = keya;
      LODWORD(v171) = 42;
      v170 = v202;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v15 = keya;
  }

  cmsmGetSystemSoundMaxVolume(v15);
  vaemSetDeviceVolumeIfNotSet(v142, 0, CurrentRouteTypeForSystemSoundAtIndex, 0, v156, 0.0, 0.0);
  v129 = 1;
  if (v131)
  {
    goto LABEL_335;
  }

LABEL_336:
  if (!v69)
  {
    goto LABEL_255;
  }

  *v69 = 1.0;
  if (v15)
  {
    v132 = CMSystemsoundMgr_GetMappedBehaviorCategory(v15);
    if (v132)
    {
      if (CFStringHasSuffix(v132, @"AlwaysHeard"))
      {
        goto LABEL_255;
      }
    }

    if (FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
      goto LABEL_255;
    }
  }

  v133 = cmsmCopyCurrentActiveRouteTypesForSystemSound();
  v134 = cmsmCopySystemSoundAudioBehaviorDictionaryForAudioCategory(v15, a9);
  v135 = cmsGetCurrentSystemSoundVADForAudioBehaviour();
  if (v134)
  {
    CFRelease(v134);
  }

  v136 = [+[MXSessionManager sharedInstance](MXSessionManager systemSoundLocalVADID:v170];
  if (FigCFArrayContainsValue())
  {
    cmsmGetSystemSoundMaxVolume(v15);
LABEL_347:
    v138 = SystemSoundVolumeScalarForCurrentRoute;
    goto LABEL_348;
  }

  if (!FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1) || !FigCFEqual())
  {
    if (FigVAEndpointManagerGetPropertyBoolean(qword_1EB75E090, 0x1F289B410) && v135 == v136)
    {
      v148 = cmsmCopySystemSoundAudioBehaviorDictionaryForAudioCategory(keya, a9);
      v149 = cmsGetCurrentSystemSoundVADForAudioBehaviour();
      if (v148)
      {
        CFRelease(v148);
      }

      v150 = 1.0;
      v151 = 1.0;
      if (FigVAEndpointManagerGetPropertyBoolean(qword_1EB75E090, 0x1F289B410))
      {
        v152 = [+[MXSessionManager sharedInstance](MXSessionManager systemSoundLocalVADID];
        cf = 0;
        v153 = qword_1EB75E090;
        v154 = *(*(CMBaseObjectGetVTable() + 24) + 40);
        if (v154)
        {
          v154(v153, 0x1F289BA30, v172, v152, 0, &cf);
          v155 = cf;
        }

        else
        {
          v155 = 0;
        }

        ValueFloat32 = MXCFNumberGetValueFloat32(v155);
        v151 = *&ValueFloat32;
        if (cf)
        {
          CFRelease(cf);
        }
      }

      cmsmGetSystemSoundVolumeScalarForRawVolume(keya, v149, v151);
      v138 = v161;
      if (keya)
      {
        if (CFStringHasPrefix(keya, @"JBL"))
        {
          goto LABEL_348;
        }

        if (!FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(qword_1EB75E190, 1))
        {
          if (gCMSS_4)
          {
            if (qword_1EB75E0B0)
            {
              LODWORD(cf) = 1065353216;
              v162 = CFDictionaryGetValue(gCMSS_4, keya);
              if (v162 || (v162 = CFDictionaryGetValue(gCMSS_4, @"Default")) != 0)
              {
                v163 = v162;
                v164 = CMSMUtility_GetCurrentRouteTypeForSystemSoundAtIndex(0);
                v165 = CFDictionaryGetValue(v163, v164);
                if (v165)
                {
                  CFNumberGetValue(v165, kCFNumberFloatType, &cf);
                  v150 = *&cf;
                }
              }
            }
          }
        }
      }

      v138 = v138 * v150;
LABEL_348:
      *v69 = v138;
      if (v138 == 0.0)
      {
        if (dword_1EB75DE40)
        {
          LODWORD(v191) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v139 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v140 = v191;
          if (os_log_type_enabled(v139, type[0]))
          {
            v141 = v140;
          }

          else
          {
            v141 = v140 & 0xFFFFFFFE;
          }

          if (v141)
          {
            LODWORD(v202[0]) = 136315138;
            *(v202 + 4) = "cmsmUpdateSystemSoundVolume";
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v189 &= ~1u;
      }

      goto LABEL_377;
    }

    if (!v129)
    {
      SystemSoundVolumeScalarForCurrentRoute = cmsmGetSystemSoundVolumeScalarForCurrentRoute(keya, a9);
      goto LABEL_347;
    }
  }

  *v69 = 1.0;
LABEL_377:
  if (v133)
  {
    CFRelease(v133);
  }

LABEL_255:
  if (theArraya)
  {
    CFRelease(theArraya);
  }

  result = v189;
  v107 = *MEMORY[0x1E69E9840];
  return result;
}